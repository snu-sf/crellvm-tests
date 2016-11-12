; ModuleID = './app/actions/channels-commands.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpRGB = type { double, double, double, double }
%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkActionPrivate = type opaque
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
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpToolInfo = type opaque
%struct._GimpPaintInfo = type opaque
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
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GeglNode = type opaque
%struct._BoundSeg = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GimpColorButton = type { %struct._GimpButton, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, i8* }
%struct._GimpButton = type { %struct._GtkButton, i32 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GError = type { i32, i32, i8* }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GimpAction = type { %struct._GtkAction, %struct._GimpContext*, %struct._GimpRGB*, %struct._GimpViewable*, i32, i32 }
%struct._GimpComponentEditor = type { %struct._GimpImageEditor, i32, %struct._GtkTreeModel*, %struct._GtkTreeView*, %struct._GtkTreeSelection*, %struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, %struct._GtkCellRenderer*, i32 }
%struct._GimpImageEditor = type { %struct._GimpEditor, %struct._GimpContext*, %struct._GimpImage* }
%struct._GimpEditor = type { %struct._GtkBox, %struct._GimpEditorPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpEditorPrivate = type opaque
%struct._GtkTreeModel = type opaque
%struct._GtkTreeView = type { %struct._GtkContainer, %struct._GtkTreeViewPrivate* }
%struct._GtkTreeViewPrivate = type opaque
%struct._GtkTreeSelection = type { %struct._GObject, %struct._GtkTreeView*, i32, i32 (%struct._GtkTreeSelection*, %struct._GtkTreeModel*, %struct._GtkTreePath*, i32, i8*)*, i8*, void (i8*)* }
%struct._GtkTreePath = type opaque
%struct._GtkTreeViewColumn = type { %struct._GtkObject, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkDrawable*, %struct._GtkCellEditable*, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct._GList*, i32, i32, i32, i32, i16 }
%struct._GtkCellEditable = type opaque
%struct._GtkCellRenderer = type { %struct._GtkObject, float, float, i32, i32, i16, i16, i8 }

@.str = private unnamed_addr constant [19 x i8] c"Channel Attributes\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"gimp-channel-edit\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"gtk-edit\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Edit Channel Attributes\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Edit Channel Color\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"_Fill opacity:\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@channel_color = internal global %struct._GimpRGB { double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 5.000000e-01 }, align 8
@channel_name = internal global i8* null, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"Channel\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"New Channel\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"gimp-channel-new\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"gimp-channel\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"New Channel Options\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"New Channel Color\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"%s Channel Copy\00", align 1

; Function Attrs: nounwind uwtable
define void @channels_edit_attributes_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %options = alloca %struct._ChannelOptionsDialog*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %channel = alloca %struct._GimpChannel*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
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
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpChannel* @gimp_image_get_active_channel(%struct._GimpImage* %2)
  store %struct._GimpChannel* %call1, %struct._GimpChannel** %channel, align 8
  %3 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %tobool2 = icmp ne %struct._GimpChannel* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load i8*, i8** %data.addr, align 8
  %call5 = call %struct._GtkWidget* @action_data_get_widget(i8* %4)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %widget, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool6 = icmp ne %struct._GtkWidget* %5, null
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %7 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %8 = load i8*, i8** %data.addr, align 8
  %call9 = call %struct._GimpContext* @action_data_get_context(i8* %8)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %10 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %color = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %10, i32 0, i32 1
  %11 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %12 = bitcast %struct._GimpChannel* %11 to i8*
  %call10 = call i8* @gimp_object_get_name(i8* %12)
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0)) #5
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0)) #5
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0)) #5
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0)) #5
  %call15 = call %struct._ChannelOptionsDialog* @channel_options_dialog_new(%struct._GimpImage* %6, %struct._GimpChannel* %7, %struct._GimpContext* %call9, %struct._GtkWidget* %9, %struct._GimpRGB* %color, i8* %call10, i8* %call11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* %call12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i8* %call13, i8* %call14, i32 0)
  store %struct._ChannelOptionsDialog* %call15, %struct._ChannelOptionsDialog** %options, align 8
  %13 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options, align 8
  %dialog = getelementptr inbounds %struct._ChannelOptionsDialog, %struct._ChannelOptionsDialog* %13, i32 0, i32 0
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %15 = bitcast %struct._GtkWidget* %14 to i8*
  %16 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options, align 8
  %17 = bitcast %struct._ChannelOptionsDialog* %16 to i8*
  %call16 = call i64 @g_signal_connect_data(i8* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._ChannelOptionsDialog*)* @channels_edit_channel_response to void ()*), i8* %17, void (i8*, %struct._GClosure*)* null, i32 0)
  %18 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options, align 8
  %dialog17 = getelementptr inbounds %struct._ChannelOptionsDialog, %struct._ChannelOptionsDialog* %18, i32 0, i32 0
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog17, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %19)
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7, %if.then.3, %if.then
  ret void
}

declare %struct._GimpImage* @action_data_get_image(i8*) #1

declare %struct._GimpChannel* @gimp_image_get_active_channel(%struct._GimpImage*) #1

declare %struct._GtkWidget* @action_data_get_widget(i8*) #1

declare %struct._ChannelOptionsDialog* @channel_options_dialog_new(%struct._GimpImage*, %struct._GimpChannel*, %struct._GimpContext*, %struct._GtkWidget*, %struct._GimpRGB*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32) #1

declare %struct._GimpContext* @action_data_get_context(i8*) #1

declare i8* @gimp_object_get_name(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @channels_edit_channel_response(%struct._GtkWidget* %widget, i32 %response_id, %struct._ChannelOptionsDialog* %options) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %options.addr = alloca %struct._ChannelOptionsDialog*, align 8
  %channel = alloca %struct._GimpChannel*, align 8
  %new_name = alloca i8*, align 8
  %color = alloca %struct._GimpRGB, align 8
  %name_changed = alloca i32, align 4
  %color_changed = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct._ChannelOptionsDialog* %options, %struct._ChannelOptionsDialog** %options.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %0, -5
  br i1 %cmp, label %if.then, label %if.end.41

if.then:                                          ; preds = %entry
  %1 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options.addr, align 8
  %channel1 = getelementptr inbounds %struct._ChannelOptionsDialog, %struct._ChannelOptionsDialog* %1, i32 0, i32 6
  %2 = load %struct._GimpChannel*, %struct._GimpChannel** %channel1, align 8
  store %struct._GimpChannel* %2, %struct._GimpChannel** %channel, align 8
  store i32 0, i32* %name_changed, align 4
  store i32 0, i32* %color_changed, align 4
  %3 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options.addr, align 8
  %name_entry = getelementptr inbounds %struct._ChannelOptionsDialog, %struct._ChannelOptionsDialog* %3, i32 0, i32 1
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %name_entry, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call = call i64 @gtk_entry_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkEntry*
  %call3 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %6)
  store i8* %call3, i8** %new_name, align 8
  %7 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options.addr, align 8
  %color_panel = getelementptr inbounds %struct._ChannelOptionsDialog, %struct._ChannelOptionsDialog* %7, i32 0, i32 2
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %color_panel, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_color_button_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call4)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpColorButton*
  call void @gimp_color_button_get_color(%struct._GimpColorButton* %10, %struct._GimpRGB* %color)
  %11 = load i8*, i8** %new_name, align 8
  %12 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %13 = bitcast %struct._GimpChannel* %12 to i8*
  %call6 = call i8* @gimp_object_get_name(i8* %13)
  %call7 = call i32 @strcmp(i8* %11, i8* %call6) #7
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  store i32 1, i32* %name_changed, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  %14 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %color9 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %14, i32 0, i32 1
  %call10 = call double @gimp_rgba_distance(%struct._GimpRGB* %color, %struct._GimpRGB* %color9)
  %cmp11 = fcmp ogt double %call10, 1.000000e-04
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end
  store i32 1, i32* %color_changed, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end
  %15 = load i32, i32* %name_changed, align 4
  %tobool14 = icmp ne i32 %15, 0
  br i1 %tobool14, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %if.end.13
  %16 = load i32, i32* %color_changed, align 4
  %tobool15 = icmp ne i32 %16, 0
  br i1 %tobool15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %land.lhs.true
  %17 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options.addr, align 8
  %image = getelementptr inbounds %struct._ChannelOptionsDialog, %struct._ChannelOptionsDialog* %17, i32 0, i32 4
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call17 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0)) #5
  %call18 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %18, i32 19, i8* %call17)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %land.lhs.true, %if.end.13
  %19 = load i32, i32* %name_changed, align 4
  %tobool20 = icmp ne i32 %19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.25

if.then.21:                                       ; preds = %if.end.19
  %20 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %21 = bitcast %struct._GimpChannel* %20 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_item_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call22)
  %22 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpItem*
  %23 = load i8*, i8** %new_name, align 8
  %call24 = call i32 @gimp_item_rename(%struct._GimpItem* %22, i8* %23, %struct._GError** null)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.21, %if.end.19
  %24 = load i32, i32* %color_changed, align 4
  %tobool26 = icmp ne i32 %24, 0
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.25
  %25 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  call void @gimp_channel_set_color(%struct._GimpChannel* %25, %struct._GimpRGB* %color, i32 1)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.end.25
  %26 = load i32, i32* %name_changed, align 4
  %tobool29 = icmp ne i32 %26, 0
  br i1 %tobool29, label %land.lhs.true.30, label %if.end.35

land.lhs.true.30:                                 ; preds = %if.end.28
  %27 = load i32, i32* %color_changed, align 4
  %tobool31 = icmp ne i32 %27, 0
  br i1 %tobool31, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %land.lhs.true.30
  %28 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options.addr, align 8
  %image33 = getelementptr inbounds %struct._ChannelOptionsDialog, %struct._ChannelOptionsDialog* %28, i32 0, i32 4
  %29 = load %struct._GimpImage*, %struct._GimpImage** %image33, align 8
  %call34 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %29)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.32, %land.lhs.true.30, %if.end.28
  %30 = load i32, i32* %name_changed, align 4
  %tobool36 = icmp ne i32 %30, 0
  br i1 %tobool36, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.35
  %31 = load i32, i32* %color_changed, align 4
  %tobool37 = icmp ne i32 %31, 0
  br i1 %tobool37, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %lor.lhs.false, %if.end.35
  %32 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options.addr, align 8
  %image39 = getelementptr inbounds %struct._ChannelOptionsDialog, %struct._ChannelOptionsDialog* %32, i32 0, i32 4
  %33 = load %struct._GimpImage*, %struct._GimpImage** %image39, align 8
  call void @gimp_image_flush(%struct._GimpImage* %33)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %lor.lhs.false
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %entry
  %34 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options.addr, align 8
  %dialog = getelementptr inbounds %struct._ChannelOptionsDialog, %struct._ChannelOptionsDialog* %34, i32 0, i32 0
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %35)
  ret void
}

declare void @gtk_widget_show(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define void @channels_new_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %options = alloca %struct._ChannelOptionsDialog*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
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
  %5 = load i8*, i8** %data.addr, align 8
  %call5 = call %struct._GimpContext* @action_data_get_context(i8* %5)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %7 = load i8*, i8** @channel_name, align 8
  %tobool6 = icmp ne i8* %7, null
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.4
  %8 = load i8*, i8** @channel_name, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.4
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0)) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %8, %cond.true ], [ %call7, %cond.false ]
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0)) #5
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0)) #5
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0)) #5
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0)) #5
  %call12 = call %struct._ChannelOptionsDialog* @channel_options_dialog_new(%struct._GimpImage* %4, %struct._GimpChannel* null, %struct._GimpContext* %call5, %struct._GtkWidget* %6, %struct._GimpRGB* @channel_color, i8* %cond, i8* %call8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* %call9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i8* %call10, i8* %call11, i32 1)
  store %struct._ChannelOptionsDialog* %call12, %struct._ChannelOptionsDialog** %options, align 8
  %9 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options, align 8
  %dialog = getelementptr inbounds %struct._ChannelOptionsDialog, %struct._ChannelOptionsDialog* %9, i32 0, i32 0
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %11 = bitcast %struct._GtkWidget* %10 to i8*
  %12 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options, align 8
  %13 = bitcast %struct._ChannelOptionsDialog* %12 to i8*
  %call13 = call i64 @g_signal_connect_data(i8* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._ChannelOptionsDialog*)* @channels_new_channel_response to void ()*), i8* %13, void (i8*, %struct._GClosure*)* null, i32 0)
  %14 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options, align 8
  %dialog14 = getelementptr inbounds %struct._ChannelOptionsDialog, %struct._ChannelOptionsDialog* %14, i32 0, i32 0
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog14, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %15)
  br label %return

return:                                           ; preds = %cond.end, %if.then.3, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @channels_new_channel_response(%struct._GtkWidget* %widget, i32 %response_id, %struct._ChannelOptionsDialog* %options) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %options.addr = alloca %struct._ChannelOptionsDialog*, align 8
  %new_channel = alloca %struct._GimpChannel*, align 8
  %selection = alloca %struct._GimpChannel*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct._ChannelOptionsDialog* %options, %struct._ChannelOptionsDialog** %options.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %0, -5
  br i1 %cmp, label %if.then, label %if.end.33

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @channel_name, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %2 = load i8*, i8** @channel_name, align 8
  call void @g_free(i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  %3 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options.addr, align 8
  %name_entry = getelementptr inbounds %struct._ChannelOptionsDialog, %struct._ChannelOptionsDialog* %3, i32 0, i32 1
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %name_entry, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call = call i64 @gtk_entry_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkEntry*
  %call3 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %6)
  %call4 = call noalias i8* @g_strdup(i8* %call3)
  store i8* %call4, i8** @channel_name, align 8
  %7 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options.addr, align 8
  %color_panel = getelementptr inbounds %struct._ChannelOptionsDialog, %struct._ChannelOptionsDialog* %7, i32 0, i32 2
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %color_panel, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_color_button_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpColorButton*
  call void @gimp_color_button_get_color(%struct._GimpColorButton* %10, %struct._GimpRGB* @channel_color)
  %11 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options.addr, align 8
  %save_sel_checkbutton = getelementptr inbounds %struct._ChannelOptionsDialog, %struct._ChannelOptionsDialog* %11, i32 0, i32 3
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %save_sel_checkbutton, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_toggle_button_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call7)
  %14 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkToggleButton*
  %call9 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %14)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end
  %15 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options.addr, align 8
  %image = getelementptr inbounds %struct._ChannelOptionsDialog, %struct._ChannelOptionsDialog* %15, i32 0, i32 4
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call12 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %16)
  store %struct._GimpChannel* %call12, %struct._GimpChannel** %selection, align 8
  %17 = load %struct._GimpChannel*, %struct._GimpChannel** %selection, align 8
  %18 = bitcast %struct._GimpChannel* %17 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_item_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call13)
  %19 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpItem*
  %call15 = call i64 @gimp_channel_get_type() #6
  %call16 = call %struct._GimpItem* @gimp_item_duplicate(%struct._GimpItem* %19, i64 %call15)
  %20 = bitcast %struct._GimpItem* %call16 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_channel_get_type() #6
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call17)
  %21 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpChannel*
  store %struct._GimpChannel* %21, %struct._GimpChannel** %new_channel, align 8
  %22 = load %struct._GimpChannel*, %struct._GimpChannel** %new_channel, align 8
  %23 = bitcast %struct._GimpChannel* %22 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_object_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call19)
  %24 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpObject*
  %25 = load i8*, i8** @channel_name, align 8
  call void @gimp_object_set_name(%struct._GimpObject* %24, i8* %25)
  %26 = load %struct._GimpChannel*, %struct._GimpChannel** %new_channel, align 8
  call void @gimp_channel_set_color(%struct._GimpChannel* %26, %struct._GimpRGB* @channel_color, i32 0)
  br label %if.end.29

if.else:                                          ; preds = %if.end
  %27 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options.addr, align 8
  %image21 = getelementptr inbounds %struct._ChannelOptionsDialog, %struct._ChannelOptionsDialog* %27, i32 0, i32 4
  %28 = load %struct._GimpImage*, %struct._GimpImage** %image21, align 8
  %29 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options.addr, align 8
  %image22 = getelementptr inbounds %struct._ChannelOptionsDialog, %struct._ChannelOptionsDialog* %29, i32 0, i32 4
  %30 = load %struct._GimpImage*, %struct._GimpImage** %image22, align 8
  %call23 = call i32 @gimp_image_get_width(%struct._GimpImage* %30)
  %31 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options.addr, align 8
  %image24 = getelementptr inbounds %struct._ChannelOptionsDialog, %struct._ChannelOptionsDialog* %31, i32 0, i32 4
  %32 = load %struct._GimpImage*, %struct._GimpImage** %image24, align 8
  %call25 = call i32 @gimp_image_get_height(%struct._GimpImage* %32)
  %33 = load i8*, i8** @channel_name, align 8
  %call26 = call %struct._GimpChannel* @gimp_channel_new(%struct._GimpImage* %28, i32 %call23, i32 %call25, i8* %33, %struct._GimpRGB* @channel_color)
  store %struct._GimpChannel* %call26, %struct._GimpChannel** %new_channel, align 8
  %34 = load %struct._GimpChannel*, %struct._GimpChannel** %new_channel, align 8
  %35 = bitcast %struct._GimpChannel* %34 to %struct._GTypeInstance*
  %call27 = call i64 @gimp_drawable_get_type() #6
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call27)
  %36 = bitcast %struct._GTypeInstance* %call28 to %struct._GimpDrawable*
  %37 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options.addr, align 8
  %context = getelementptr inbounds %struct._ChannelOptionsDialog, %struct._ChannelOptionsDialog* %37, i32 0, i32 5
  %38 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_drawable_fill_by_type(%struct._GimpDrawable* %36, %struct._GimpContext* %38, i32 3)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.11
  %39 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options.addr, align 8
  %image30 = getelementptr inbounds %struct._ChannelOptionsDialog, %struct._ChannelOptionsDialog* %39, i32 0, i32 4
  %40 = load %struct._GimpImage*, %struct._GimpImage** %image30, align 8
  %41 = load %struct._GimpChannel*, %struct._GimpChannel** %new_channel, align 8
  %call31 = call i32 @gimp_image_add_channel(%struct._GimpImage* %40, %struct._GimpChannel* %41, %struct._GimpChannel* inttoptr (i64 1 to %struct._GimpChannel*), i32 -1, i32 1)
  %42 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options.addr, align 8
  %image32 = getelementptr inbounds %struct._ChannelOptionsDialog, %struct._ChannelOptionsDialog* %42, i32 0, i32 4
  %43 = load %struct._GimpImage*, %struct._GimpImage** %image32, align 8
  call void @gimp_image_flush(%struct._GimpImage* %43)
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.29, %entry
  %44 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options.addr, align 8
  %dialog = getelementptr inbounds %struct._ChannelOptionsDialog, %struct._ChannelOptionsDialog* %44, i32 0, i32 0
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %45)
  ret void
}

; Function Attrs: nounwind uwtable
define void @channels_new_last_vals_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %new_channel = alloca %struct._GimpChannel*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %color = alloca %struct._GimpRGB, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %template = alloca %struct._GimpChannel*, align 8
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
  %2 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %3 = bitcast %struct._GtkAction* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_action_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpAction*
  %viewable = getelementptr inbounds %struct._GimpAction, %struct._GimpAction* %4, i32 0, i32 3
  %5 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %6 = bitcast %struct._GimpViewable* %5 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %6, %struct._GTypeInstance** %__inst, align 8
  %call3 = call i64 @gimp_channel_get_type() #6
  store i64 %call3, i64* %__t, align 8
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool4 = icmp ne %struct._GTypeInstance* %7, null
  br i1 %tobool4, label %if.else, label %if.then.5

if.then.5:                                        ; preds = %if.end
  store i32 0, i32* %__r, align 4
  br label %if.end.12

if.else:                                          ; preds = %if.end
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool6 = icmp ne %struct._GTypeClass* %9, null
  br i1 %tobool6, label %land.lhs.true, label %if.else.9

land.lhs.true:                                    ; preds = %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class7 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class7, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %11, i32 0, i32 0
  %12 = load i64, i64* %g_type, align 8
  %13 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %12, %13
  br i1 %cmp, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.11

if.else.9:                                        ; preds = %land.lhs.true, %if.else
  %14 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %15 = load i64, i64* %__t, align 8
  %call10 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %14, i64 %15) #7
  store i32 %call10, i32* %__r, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.9, %if.then.8
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.then.5
  %16 = load i32, i32* %__r, align 4
  store i32 %16, i32* %tmp
  %17 = load i32, i32* %tmp
  %tobool13 = icmp ne i32 %17, 0
  br i1 %tobool13, label %if.then.14, label %if.else.28

if.then.14:                                       ; preds = %if.end.12
  %18 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %19 = bitcast %struct._GtkAction* %18 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_action_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call16)
  %20 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpAction*
  %viewable18 = getelementptr inbounds %struct._GimpAction, %struct._GimpAction* %20, i32 0, i32 3
  %21 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable18, align 8
  %22 = bitcast %struct._GimpViewable* %21 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_channel_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call19)
  %23 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpChannel*
  store %struct._GimpChannel* %23, %struct._GimpChannel** %template, align 8
  %24 = load %struct._GimpChannel*, %struct._GimpChannel** %template, align 8
  %25 = bitcast %struct._GimpChannel* %24 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_item_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call21)
  %26 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpItem*
  %call23 = call i32 @gimp_item_get_width(%struct._GimpItem* %26)
  store i32 %call23, i32* %width, align 4
  %27 = load %struct._GimpChannel*, %struct._GimpChannel** %template, align 8
  %28 = bitcast %struct._GimpChannel* %27 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_item_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call24)
  %29 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpItem*
  %call26 = call i32 @gimp_item_get_height(%struct._GimpItem* %29)
  store i32 %call26, i32* %height, align 4
  %30 = load %struct._GimpChannel*, %struct._GimpChannel** %template, align 8
  %color27 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %30, i32 0, i32 1
  %31 = bitcast %struct._GimpRGB* %color to i8*
  %32 = bitcast %struct._GimpRGB* %color27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 32, i32 8, i1 false)
  br label %if.end.31

if.else.28:                                       ; preds = %if.end.12
  %33 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call29 = call i32 @gimp_image_get_width(%struct._GimpImage* %33)
  store i32 %call29, i32* %width, align 4
  %34 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call30 = call i32 @gimp_image_get_height(%struct._GimpImage* %34)
  store i32 %call30, i32* %height, align 4
  %35 = bitcast %struct._GimpRGB* %color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* bitcast (%struct._GimpRGB* @channel_color to i8*), i64 32, i32 8, i1 false)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.28, %if.then.14
  %36 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call32 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0)) #5
  %call33 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %36, i32 29, i8* %call32)
  %37 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %38 = load i32, i32* %width, align 4
  %39 = load i32, i32* %height, align 4
  %40 = load i8*, i8** @channel_name, align 8
  %call34 = call %struct._GimpChannel* @gimp_channel_new(%struct._GimpImage* %37, i32 %38, i32 %39, i8* %40, %struct._GimpRGB* %color)
  store %struct._GimpChannel* %call34, %struct._GimpChannel** %new_channel, align 8
  %41 = load %struct._GimpChannel*, %struct._GimpChannel** %new_channel, align 8
  %42 = bitcast %struct._GimpChannel* %41 to %struct._GTypeInstance*
  %call35 = call i64 @gimp_drawable_get_type() #6
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call35)
  %43 = bitcast %struct._GTypeInstance* %call36 to %struct._GimpDrawable*
  %44 = load i8*, i8** %data.addr, align 8
  %call37 = call %struct._GimpContext* @action_data_get_context(i8* %44)
  call void @gimp_drawable_fill_by_type(%struct._GimpDrawable* %43, %struct._GimpContext* %call37, i32 3)
  %45 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %46 = load %struct._GimpChannel*, %struct._GimpChannel** %new_channel, align 8
  %call38 = call i32 @gimp_image_add_channel(%struct._GimpImage* %45, %struct._GimpChannel* %46, %struct._GimpChannel* inttoptr (i64 1 to %struct._GimpChannel*), i32 -1, i32 1)
  %47 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call39 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %47)
  %48 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %48)
  br label %return

return:                                           ; preds = %if.end.31, %if.then
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_action_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_get_type() #3

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare i32 @gimp_item_get_width(%struct._GimpItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #3

declare i32 @gimp_item_get_height(%struct._GimpItem*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare i32 @gimp_image_get_width(%struct._GimpImage*) #1

declare i32 @gimp_image_get_height(%struct._GimpImage*) #1

declare i32 @gimp_image_undo_group_start(%struct._GimpImage*, i32, i8*) #1

declare %struct._GimpChannel* @gimp_channel_new(%struct._GimpImage*, i32, i32, i8*, %struct._GimpRGB*) #1

declare void @gimp_drawable_fill_by_type(%struct._GimpDrawable*, %struct._GimpContext*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #3

declare i32 @gimp_image_add_channel(%struct._GimpImage*, %struct._GimpChannel*, %struct._GimpChannel*, i32, i32) #1

declare i32 @gimp_image_undo_group_end(%struct._GimpImage*) #1

declare void @gimp_image_flush(%struct._GimpImage*) #1

; Function Attrs: nounwind uwtable
define void @channels_raise_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %channel = alloca %struct._GimpChannel*, align 8
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
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpChannel* @gimp_image_get_active_channel(%struct._GimpImage* %2)
  store %struct._GimpChannel* %call1, %struct._GimpChannel** %channel, align 8
  %3 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %tobool2 = icmp ne %struct._GimpChannel* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %5 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %6 = bitcast %struct._GimpChannel* %5 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_item_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpItem*
  %call7 = call i32 @gimp_image_raise_item(%struct._GimpImage* %4, %struct._GimpItem* %7, %struct._GError** null)
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %8)
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  ret void
}

declare i32 @gimp_image_raise_item(%struct._GimpImage*, %struct._GimpItem*, %struct._GError**) #1

; Function Attrs: nounwind uwtable
define void @channels_raise_to_top_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %channel = alloca %struct._GimpChannel*, align 8
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
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpChannel* @gimp_image_get_active_channel(%struct._GimpImage* %2)
  store %struct._GimpChannel* %call1, %struct._GimpChannel** %channel, align 8
  %3 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %tobool2 = icmp ne %struct._GimpChannel* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %5 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %6 = bitcast %struct._GimpChannel* %5 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_item_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpItem*
  %call7 = call i32 @gimp_image_raise_item_to_top(%struct._GimpImage* %4, %struct._GimpItem* %7)
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %8)
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  ret void
}

declare i32 @gimp_image_raise_item_to_top(%struct._GimpImage*, %struct._GimpItem*) #1

; Function Attrs: nounwind uwtable
define void @channels_lower_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %channel = alloca %struct._GimpChannel*, align 8
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
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpChannel* @gimp_image_get_active_channel(%struct._GimpImage* %2)
  store %struct._GimpChannel* %call1, %struct._GimpChannel** %channel, align 8
  %3 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %tobool2 = icmp ne %struct._GimpChannel* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %5 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %6 = bitcast %struct._GimpChannel* %5 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_item_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpItem*
  %call7 = call i32 @gimp_image_lower_item(%struct._GimpImage* %4, %struct._GimpItem* %7, %struct._GError** null)
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %8)
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  ret void
}

declare i32 @gimp_image_lower_item(%struct._GimpImage*, %struct._GimpItem*, %struct._GError**) #1

; Function Attrs: nounwind uwtable
define void @channels_lower_to_bottom_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %channel = alloca %struct._GimpChannel*, align 8
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
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpChannel* @gimp_image_get_active_channel(%struct._GimpImage* %2)
  store %struct._GimpChannel* %call1, %struct._GimpChannel** %channel, align 8
  %3 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %tobool2 = icmp ne %struct._GimpChannel* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %5 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %6 = bitcast %struct._GimpChannel* %5 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_item_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpItem*
  %call7 = call i32 @gimp_image_lower_item_to_bottom(%struct._GimpImage* %4, %struct._GimpItem* %7)
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %8)
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  ret void
}

declare i32 @gimp_image_lower_item_to_bottom(%struct._GimpImage*, %struct._GimpItem*) #1

; Function Attrs: nounwind uwtable
define void @channels_duplicate_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %new_channel = alloca %struct._GimpChannel*, align 8
  %parent = alloca %struct._GimpChannel*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %component = alloca i32, align 4
  %desc = alloca i8*, align 8
  %name = alloca i8*, align 8
  %channel = alloca %struct._GimpChannel*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store %struct._GimpChannel* inttoptr (i64 1 to %struct._GimpChannel*), %struct._GimpChannel** %parent, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_component_editor_get_type() #6
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %entry
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
  br i1 %tobool7, label %if.then.8, label %if.else.25

if.then.8:                                        ; preds = %if.end.6
  %13 = load i8*, i8** %data.addr, align 8
  %call12 = call %struct._GimpImage* @action_data_get_image(i8* %13)
  store %struct._GimpImage* %call12, %struct._GimpImage** %image, align 8
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool13 = icmp ne %struct._GimpImage* %14, null
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.then.8
  br label %return

if.end.15:                                        ; preds = %if.then.8
  %15 = load i8*, i8** %data.addr, align 8
  %16 = bitcast i8* %15 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_component_editor_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call16)
  %17 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpComponentEditor*
  %clicked_component = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %17, i32 0, i32 8
  %18 = load i32, i32* %clicked_component, align 4
  store i32 %18, i32* %component, align 4
  %call18 = call i64 @gimp_channel_type_get_type() #6
  %19 = load i32, i32* %component, align 4
  %call19 = call i32 @gimp_enum_get_value(i64 %call18, i32 %19, i8** null, i8** null, i8** %desc, i8** null)
  %call20 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0)) #5
  %20 = load i8*, i8** %desc, align 8
  %call21 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call20, i8* %20)
  store i8* %call21, i8** %name, align 8
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %22 = load i32, i32* %component, align 4
  %23 = load i8*, i8** %name, align 8
  %call22 = call %struct._GimpChannel* @gimp_channel_new_from_component(%struct._GimpImage* %21, i32 %22, i8* %23, %struct._GimpRGB* null)
  store %struct._GimpChannel* %call22, %struct._GimpChannel** %new_channel, align 8
  %24 = load %struct._GimpChannel*, %struct._GimpChannel** %new_channel, align 8
  %25 = bitcast %struct._GimpChannel* %24 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_item_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call23)
  %26 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpItem*
  call void @gimp_item_set_visible(%struct._GimpItem* %26, i32 0, i32 0)
  %27 = load i8*, i8** %name, align 8
  call void @g_free(i8* %27)
  br label %if.end.43

if.else.25:                                       ; preds = %if.end.6
  %28 = load i8*, i8** %data.addr, align 8
  %call27 = call %struct._GimpImage* @action_data_get_image(i8* %28)
  store %struct._GimpImage* %call27, %struct._GimpImage** %image, align 8
  %29 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool28 = icmp ne %struct._GimpImage* %29, null
  br i1 %tobool28, label %if.end.30, label %if.then.29

if.then.29:                                       ; preds = %if.else.25
  br label %return

if.end.30:                                        ; preds = %if.else.25
  %30 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call31 = call %struct._GimpChannel* @gimp_image_get_active_channel(%struct._GimpImage* %30)
  store %struct._GimpChannel* %call31, %struct._GimpChannel** %channel, align 8
  %31 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %tobool32 = icmp ne %struct._GimpChannel* %31, null
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %if.end.30
  br label %return

if.end.34:                                        ; preds = %if.end.30
  %32 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %33 = bitcast %struct._GimpChannel* %32 to %struct._GTypeInstance*
  %call35 = call i64 @gimp_item_get_type() #6
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call35)
  %34 = bitcast %struct._GTypeInstance* %call36 to %struct._GimpItem*
  %35 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %36 = bitcast %struct._GimpChannel* %35 to %struct._GTypeInstance*
  %g_class37 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %36, i32 0, i32 0
  %37 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class37, align 8
  %g_type38 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %37, i32 0, i32 0
  %38 = load i64, i64* %g_type38, align 8
  %call39 = call %struct._GimpItem* @gimp_item_duplicate(%struct._GimpItem* %34, i64 %38)
  %39 = bitcast %struct._GimpItem* %call39 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_channel_get_type() #6
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call40)
  %40 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpChannel*
  store %struct._GimpChannel* %40, %struct._GimpChannel** %new_channel, align 8
  %41 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %call42 = call %struct._GimpChannel* @gimp_channel_get_parent(%struct._GimpChannel* %41)
  store %struct._GimpChannel* %call42, %struct._GimpChannel** %parent, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.34, %if.end.15
  %42 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %43 = load %struct._GimpChannel*, %struct._GimpChannel** %new_channel, align 8
  %44 = load %struct._GimpChannel*, %struct._GimpChannel** %parent, align 8
  %call44 = call i32 @gimp_image_add_channel(%struct._GimpImage* %42, %struct._GimpChannel* %43, %struct._GimpChannel* %44, i32 -1, i32 1)
  %45 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %45)
  br label %return

return:                                           ; preds = %if.end.43, %if.then.33, %if.then.29, %if.then.14
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_component_editor_get_type() #3

declare i32 @gimp_enum_get_value(i64, i32, i8**, i8**, i8**, i8**) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_type_get_type() #3

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare %struct._GimpChannel* @gimp_channel_new_from_component(%struct._GimpImage*, i32, i8*, %struct._GimpRGB*) #1

declare void @gimp_item_set_visible(%struct._GimpItem*, i32, i32) #1

declare void @g_free(i8*) #1

declare %struct._GimpItem* @gimp_item_duplicate(%struct._GimpItem*, i64) #1

declare %struct._GimpChannel* @gimp_channel_get_parent(%struct._GimpChannel*) #1

; Function Attrs: nounwind uwtable
define void @channels_delete_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %channel = alloca %struct._GimpChannel*, align 8
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
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpChannel* @gimp_image_get_active_channel(%struct._GimpImage* %2)
  store %struct._GimpChannel* %call1, %struct._GimpChannel** %channel, align 8
  %3 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %tobool2 = icmp ne %struct._GimpChannel* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %5 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  call void @gimp_image_remove_channel(%struct._GimpImage* %4, %struct._GimpChannel* %5, i32 1, %struct._GimpChannel* null)
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %6)
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  ret void
}

declare void @gimp_image_remove_channel(%struct._GimpImage*, %struct._GimpChannel*, i32, %struct._GimpChannel*) #1

; Function Attrs: nounwind uwtable
define void @channels_to_selection_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %op = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %component = alloca i32, align 4
  %channel = alloca %struct._GimpChannel*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* %value.addr, align 4
  store i32 %0, i32* %op, align 4
  %1 = load i8*, i8** %data.addr, align 8
  %2 = bitcast i8* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_component_editor_get_type() #6
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %entry
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %8, %9
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #7
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %if.then.8, label %if.else.17

if.then.8:                                        ; preds = %if.end.6
  %14 = load i8*, i8** %data.addr, align 8
  %call10 = call %struct._GimpImage* @action_data_get_image(i8* %14)
  store %struct._GimpImage* %call10, %struct._GimpImage** %image, align 8
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool11 = icmp ne %struct._GimpImage* %15, null
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.then.8
  br label %return

if.end.13:                                        ; preds = %if.then.8
  %16 = load i8*, i8** %data.addr, align 8
  %17 = bitcast i8* %16 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_component_editor_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call14)
  %18 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpComponentEditor*
  %clicked_component = getelementptr inbounds %struct._GimpComponentEditor, %struct._GimpComponentEditor* %18, i32 0, i32 8
  %19 = load i32, i32* %clicked_component, align 4
  store i32 %19, i32* %component, align 4
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call16 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %20)
  %21 = load i32, i32* %component, align 4
  %22 = load i32, i32* %op, align 4
  call void @gimp_channel_select_component(%struct._GimpChannel* %call16, i32 %21, i32 %22, i32 0, double 0.000000e+00, double 0.000000e+00)
  br label %if.end.29

if.else.17:                                       ; preds = %if.end.6
  %23 = load i8*, i8** %data.addr, align 8
  %call19 = call %struct._GimpImage* @action_data_get_image(i8* %23)
  store %struct._GimpImage* %call19, %struct._GimpImage** %image, align 8
  %24 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool20 = icmp ne %struct._GimpImage* %24, null
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %if.else.17
  br label %return

if.end.22:                                        ; preds = %if.else.17
  %25 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call23 = call %struct._GimpChannel* @gimp_image_get_active_channel(%struct._GimpImage* %25)
  store %struct._GimpChannel* %call23, %struct._GimpChannel** %channel, align 8
  %26 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %tobool24 = icmp ne %struct._GimpChannel* %26, null
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %if.end.22
  br label %return

if.end.26:                                        ; preds = %if.end.22
  %27 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %28 = bitcast %struct._GimpChannel* %27 to %struct._GTypeInstance*
  %call27 = call i64 @gimp_item_get_type() #6
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call27)
  %29 = bitcast %struct._GTypeInstance* %call28 to %struct._GimpItem*
  %30 = load i32, i32* %op, align 4
  call void @gimp_item_to_selection(%struct._GimpItem* %29, i32 %30, i32 1, i32 0, double 0.000000e+00, double 0.000000e+00)
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.26, %if.end.13
  %31 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %31)
  br label %return

return:                                           ; preds = %if.end.29, %if.then.25, %if.then.21, %if.then.12
  ret void
}

declare void @gimp_channel_select_component(%struct._GimpChannel*, i32, i32, i32, double, double) #1

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #1

declare void @gimp_item_to_selection(%struct._GimpItem*, i32, i32, i32, double, double) #1

declare noalias i8* @g_strdup(i8*) #1

declare i8* @gtk_entry_get_text(%struct._GtkEntry*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #3

declare void @gimp_color_button_get_color(%struct._GimpColorButton*, %struct._GimpRGB*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_button_get_type() #3

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare void @gimp_object_set_name(%struct._GimpObject*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #3

declare void @gimp_channel_set_color(%struct._GimpChannel*, %struct._GimpRGB*, i32) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare double @gimp_rgba_distance(%struct._GimpRGB*, %struct._GimpRGB*) #1

declare i32 @gimp_item_rename(%struct._GimpItem*, i8*, %struct._GError**) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
