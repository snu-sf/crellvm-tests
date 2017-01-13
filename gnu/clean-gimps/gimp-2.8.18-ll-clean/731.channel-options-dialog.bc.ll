; ModuleID = './app/dialogs/channel-options-dialog.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._ChannelOptionsDialog = type { %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpImage*, %struct._GimpContext*, %struct._GimpChannel* }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type opaque
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GeglNode = type opaque
%struct._BoundSeg = type opaque
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
%struct._GimpColorPanel = type { %struct._GimpColorButton, %struct._GimpContext*, %struct._GtkWidget* }
%struct._GimpColorButton = type { %struct._GimpButton, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, i8* }
%struct._GimpButton = type { %struct._GtkButton, i32 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Dialogs\00", align 1
@__func__.channel_options_dialog_new = private unnamed_addr constant [27 x i8] c"channel_options_dialog_new\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"channel == NULL || GIMP_IS_CHANNEL (channel)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"GTK_IS_WIDGET (parent)\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"channel_color != NULL\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"title != NULL\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"role != NULL\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"stock_id != NULL\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"desc != NULL\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"help_id != NULL\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"color_label != NULL\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"opacity_label != NULL\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"Channel _name:\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"color-changed\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"Initialize from _selection\00", align 1

; Function Attrs: nounwind uwtable
define %struct._ChannelOptionsDialog* @channel_options_dialog_new(%struct._GimpImage* %image, %struct._GimpChannel* %channel, %struct._GimpContext* %context, %struct._GtkWidget* %parent, %struct._GimpRGB* %channel_color, i8* %channel_name, i8* %title, i8* %role, i8* %stock_id, i8* %desc, i8* %help_id, i8* %color_label, i8* %opacity_label, i32 %show_from_sel) #0 {
entry:
  %retval = alloca %struct._ChannelOptionsDialog*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %parent.addr = alloca %struct._GtkWidget*, align 8
  %channel_color.addr = alloca %struct._GimpRGB*, align 8
  %channel_name.addr = alloca i8*, align 8
  %title.addr = alloca i8*, align 8
  %role.addr = alloca i8*, align 8
  %stock_id.addr = alloca i8*, align 8
  %desc.addr = alloca i8*, align 8
  %help_id.addr = alloca i8*, align 8
  %color_label.addr = alloca i8*, align 8
  %opacity_label.addr = alloca i8*, align 8
  %show_from_sel.addr = alloca i32, align 4
  %options = alloca %struct._ChannelOptionsDialog*, align 8
  %viewable = alloca %struct._GimpViewable*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %opacity_adj = alloca %struct._GtkObject*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  %__inst42 = alloca %struct._GTypeInstance*, align 8
  %__t44 = alloca i64, align 8
  %__r47 = alloca i32, align 4
  %tmp62 = alloca i32, align 4
  %__inst70 = alloca %struct._GTypeInstance*, align 8
  %__t72 = alloca i64, align 8
  %__r75 = alloca i32, align 4
  %tmp90 = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
  store %struct._GimpRGB* %channel_color, %struct._GimpRGB** %channel_color.addr, align 8
  store i8* %channel_name, i8** %channel_name.addr, align 8
  store i8* %title, i8** %title.addr, align 8
  store i8* %role, i8** %role.addr, align 8
  store i8* %stock_id, i8** %stock_id.addr, align 8
  store i8* %desc, i8** %desc.addr, align 8
  store i8* %help_id, i8** %help_id.addr, align 8
  store i8* %color_label, i8** %color_label.addr, align 8
  store i8* %opacity_label, i8** %opacity_label.addr, align 8
  store i32 %show_from_sel, i32* %show_from_sel.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.channel_options_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store %struct._ChannelOptionsDialog* null, %struct._ChannelOptionsDialog** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %cmp12 = icmp eq %struct._GimpChannel* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %15 = bitcast %struct._GimpChannel* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_channel_get_type() #5
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
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.channel_options_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0))
  store %struct._ChannelOptionsDialog* null, %struct._ChannelOptionsDialog** %retval
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %do.body.40

do.body.40:                                       ; preds = %do.end.39
  %27 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %28 = bitcast %struct._GimpContext* %27 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %28, %struct._GTypeInstance** %__inst42, align 8
  %call45 = call i64 @gimp_context_get_type() #5
  store i64 %call45, i64* %__t44, align 8
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %tobool48 = icmp ne %struct._GTypeInstance* %29, null
  br i1 %tobool48, label %if.else.50, label %if.then.49

if.then.49:                                       ; preds = %do.body.40
  store i32 0, i32* %__r47, align 4
  br label %if.end.61

if.else.50:                                       ; preds = %do.body.40
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %g_class51 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class51, align 8
  %tobool52 = icmp ne %struct._GTypeClass* %31, null
  br i1 %tobool52, label %land.lhs.true.53, label %if.else.58

land.lhs.true.53:                                 ; preds = %if.else.50
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %g_class54 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class54, align 8
  %g_type55 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %33, i32 0, i32 0
  %34 = load i64, i64* %g_type55, align 8
  %35 = load i64, i64* %__t44, align 8
  %cmp56 = icmp eq i64 %34, %35
  br i1 %cmp56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %land.lhs.true.53
  store i32 1, i32* %__r47, align 4
  br label %if.end.60

if.else.58:                                       ; preds = %land.lhs.true.53, %if.else.50
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %37 = load i64, i64* %__t44, align 8
  %call59 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %36, i64 %37) #6
  store i32 %call59, i32* %__r47, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.58, %if.then.57
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.49
  %38 = load i32, i32* %__r47, align 4
  store i32 %38, i32* %tmp62
  %39 = load i32, i32* %tmp62
  %tobool63 = icmp ne i32 %39, 0
  br i1 %tobool63, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %if.end.61
  br label %if.end.66

if.else.65:                                       ; preds = %if.end.61
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.channel_options_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  store %struct._ChannelOptionsDialog* null, %struct._ChannelOptionsDialog** %retval
  br label %return

if.end.66:                                        ; preds = %if.then.64
  br label %do.end.67

do.end.67:                                        ; preds = %if.end.66
  br label %do.body.68

do.body.68:                                       ; preds = %do.end.67
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %41, %struct._GTypeInstance** %__inst70, align 8
  %call73 = call i64 @gtk_widget_get_type() #5
  store i64 %call73, i64* %__t72, align 8
  %42 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst70, align 8
  %tobool76 = icmp ne %struct._GTypeInstance* %42, null
  br i1 %tobool76, label %if.else.78, label %if.then.77

if.then.77:                                       ; preds = %do.body.68
  store i32 0, i32* %__r75, align 4
  br label %if.end.89

if.else.78:                                       ; preds = %do.body.68
  %43 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst70, align 8
  %g_class79 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %43, i32 0, i32 0
  %44 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class79, align 8
  %tobool80 = icmp ne %struct._GTypeClass* %44, null
  br i1 %tobool80, label %land.lhs.true.81, label %if.else.86

land.lhs.true.81:                                 ; preds = %if.else.78
  %45 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst70, align 8
  %g_class82 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %45, i32 0, i32 0
  %46 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class82, align 8
  %g_type83 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %46, i32 0, i32 0
  %47 = load i64, i64* %g_type83, align 8
  %48 = load i64, i64* %__t72, align 8
  %cmp84 = icmp eq i64 %47, %48
  br i1 %cmp84, label %if.then.85, label %if.else.86

if.then.85:                                       ; preds = %land.lhs.true.81
  store i32 1, i32* %__r75, align 4
  br label %if.end.88

if.else.86:                                       ; preds = %land.lhs.true.81, %if.else.78
  %49 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst70, align 8
  %50 = load i64, i64* %__t72, align 8
  %call87 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %49, i64 %50) #6
  store i32 %call87, i32* %__r75, align 4
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.86, %if.then.85
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.then.77
  %51 = load i32, i32* %__r75, align 4
  store i32 %51, i32* %tmp90
  %52 = load i32, i32* %tmp90
  %tobool91 = icmp ne i32 %52, 0
  br i1 %tobool91, label %if.then.92, label %if.else.93

if.then.92:                                       ; preds = %if.end.89
  br label %if.end.94

if.else.93:                                       ; preds = %if.end.89
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.channel_options_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0))
  store %struct._ChannelOptionsDialog* null, %struct._ChannelOptionsDialog** %retval
  br label %return

if.end.94:                                        ; preds = %if.then.92
  br label %do.end.95

do.end.95:                                        ; preds = %if.end.94
  br label %do.body.96

do.body.96:                                       ; preds = %do.end.95
  %53 = load %struct._GimpRGB*, %struct._GimpRGB** %channel_color.addr, align 8
  %cmp97 = icmp ne %struct._GimpRGB* %53, null
  br i1 %cmp97, label %if.then.98, label %if.else.99

if.then.98:                                       ; preds = %do.body.96
  br label %if.end.100

if.else.99:                                       ; preds = %do.body.96
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.channel_options_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0))
  store %struct._ChannelOptionsDialog* null, %struct._ChannelOptionsDialog** %retval
  br label %return

if.end.100:                                       ; preds = %if.then.98
  br label %do.end.101

do.end.101:                                       ; preds = %if.end.100
  br label %do.body.102

do.body.102:                                      ; preds = %do.end.101
  %54 = load i8*, i8** %title.addr, align 8
  %cmp103 = icmp ne i8* %54, null
  br i1 %cmp103, label %if.then.104, label %if.else.105

if.then.104:                                      ; preds = %do.body.102
  br label %if.end.106

if.else.105:                                      ; preds = %do.body.102
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.channel_options_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0))
  store %struct._ChannelOptionsDialog* null, %struct._ChannelOptionsDialog** %retval
  br label %return

if.end.106:                                       ; preds = %if.then.104
  br label %do.end.107

do.end.107:                                       ; preds = %if.end.106
  br label %do.body.108

do.body.108:                                      ; preds = %do.end.107
  %55 = load i8*, i8** %role.addr, align 8
  %cmp109 = icmp ne i8* %55, null
  br i1 %cmp109, label %if.then.110, label %if.else.111

if.then.110:                                      ; preds = %do.body.108
  br label %if.end.112

if.else.111:                                      ; preds = %do.body.108
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.channel_options_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0))
  store %struct._ChannelOptionsDialog* null, %struct._ChannelOptionsDialog** %retval
  br label %return

if.end.112:                                       ; preds = %if.then.110
  br label %do.end.113

do.end.113:                                       ; preds = %if.end.112
  br label %do.body.114

do.body.114:                                      ; preds = %do.end.113
  %56 = load i8*, i8** %stock_id.addr, align 8
  %cmp115 = icmp ne i8* %56, null
  br i1 %cmp115, label %if.then.116, label %if.else.117

if.then.116:                                      ; preds = %do.body.114
  br label %if.end.118

if.else.117:                                      ; preds = %do.body.114
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.channel_options_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0))
  store %struct._ChannelOptionsDialog* null, %struct._ChannelOptionsDialog** %retval
  br label %return

if.end.118:                                       ; preds = %if.then.116
  br label %do.end.119

do.end.119:                                       ; preds = %if.end.118
  br label %do.body.120

do.body.120:                                      ; preds = %do.end.119
  %57 = load i8*, i8** %desc.addr, align 8
  %cmp121 = icmp ne i8* %57, null
  br i1 %cmp121, label %if.then.122, label %if.else.123

if.then.122:                                      ; preds = %do.body.120
  br label %if.end.124

if.else.123:                                      ; preds = %do.body.120
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.channel_options_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0))
  store %struct._ChannelOptionsDialog* null, %struct._ChannelOptionsDialog** %retval
  br label %return

if.end.124:                                       ; preds = %if.then.122
  br label %do.end.125

do.end.125:                                       ; preds = %if.end.124
  br label %do.body.126

do.body.126:                                      ; preds = %do.end.125
  %58 = load i8*, i8** %help_id.addr, align 8
  %cmp127 = icmp ne i8* %58, null
  br i1 %cmp127, label %if.then.128, label %if.else.129

if.then.128:                                      ; preds = %do.body.126
  br label %if.end.130

if.else.129:                                      ; preds = %do.body.126
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.channel_options_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0))
  store %struct._ChannelOptionsDialog* null, %struct._ChannelOptionsDialog** %retval
  br label %return

if.end.130:                                       ; preds = %if.then.128
  br label %do.end.131

do.end.131:                                       ; preds = %if.end.130
  br label %do.body.132

do.body.132:                                      ; preds = %do.end.131
  %59 = load i8*, i8** %color_label.addr, align 8
  %cmp133 = icmp ne i8* %59, null
  br i1 %cmp133, label %if.then.134, label %if.else.135

if.then.134:                                      ; preds = %do.body.132
  br label %if.end.136

if.else.135:                                      ; preds = %do.body.132
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.channel_options_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0))
  store %struct._ChannelOptionsDialog* null, %struct._ChannelOptionsDialog** %retval
  br label %return

if.end.136:                                       ; preds = %if.then.134
  br label %do.end.137

do.end.137:                                       ; preds = %if.end.136
  br label %do.body.138

do.body.138:                                      ; preds = %do.end.137
  %60 = load i8*, i8** %opacity_label.addr, align 8
  %cmp139 = icmp ne i8* %60, null
  br i1 %cmp139, label %if.then.140, label %if.else.141

if.then.140:                                      ; preds = %do.body.138
  br label %if.end.142

if.else.141:                                      ; preds = %do.body.138
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.channel_options_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0))
  store %struct._ChannelOptionsDialog* null, %struct._ChannelOptionsDialog** %retval
  br label %return

if.end.142:                                       ; preds = %if.then.140
  br label %do.end.143

do.end.143:                                       ; preds = %if.end.142
  %call144 = call noalias i8* @g_slice_alloc0(i64 56)
  %61 = bitcast i8* %call144 to %struct._ChannelOptionsDialog*
  store %struct._ChannelOptionsDialog* %61, %struct._ChannelOptionsDialog** %options, align 8
  %62 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %63 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options, align 8
  %image145 = getelementptr inbounds %struct._ChannelOptionsDialog, %struct._ChannelOptionsDialog* %63, i32 0, i32 4
  store %struct._GimpImage* %62, %struct._GimpImage** %image145, align 8
  %64 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %65 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options, align 8
  %context146 = getelementptr inbounds %struct._ChannelOptionsDialog, %struct._ChannelOptionsDialog* %65, i32 0, i32 5
  store %struct._GimpContext* %64, %struct._GimpContext** %context146, align 8
  %66 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %67 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options, align 8
  %channel147 = getelementptr inbounds %struct._ChannelOptionsDialog, %struct._ChannelOptionsDialog* %67, i32 0, i32 6
  store %struct._GimpChannel* %66, %struct._GimpChannel** %channel147, align 8
  %68 = load i8*, i8** %color_label.addr, align 8
  %69 = load %struct._GimpRGB*, %struct._GimpRGB** %channel_color.addr, align 8
  %call148 = call %struct._GtkWidget* @gimp_color_panel_new(i8* %68, %struct._GimpRGB* %69, i32 2, i32 48, i32 64)
  %70 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options, align 8
  %color_panel = getelementptr inbounds %struct._ChannelOptionsDialog, %struct._ChannelOptionsDialog* %70, i32 0, i32 2
  store %struct._GtkWidget* %call148, %struct._GtkWidget** %color_panel, align 8
  %71 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options, align 8
  %color_panel149 = getelementptr inbounds %struct._ChannelOptionsDialog, %struct._ChannelOptionsDialog* %71, i32 0, i32 2
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %color_panel149, align 8
  %73 = bitcast %struct._GtkWidget* %72 to %struct._GTypeInstance*
  %call150 = call i64 @gimp_color_panel_get_type() #5
  %call151 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call150)
  %74 = bitcast %struct._GTypeInstance* %call151 to %struct._GimpColorPanel*
  %75 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_color_panel_set_context(%struct._GimpColorPanel* %74, %struct._GimpContext* %75)
  %76 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %tobool152 = icmp ne %struct._GimpChannel* %76, null
  br i1 %tobool152, label %if.then.153, label %if.else.156

if.then.153:                                      ; preds = %do.end.143
  %77 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %78 = bitcast %struct._GimpChannel* %77 to %struct._GTypeInstance*
  %call154 = call i64 @gimp_viewable_get_type() #5
  %call155 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call154)
  %79 = bitcast %struct._GTypeInstance* %call155 to %struct._GimpViewable*
  store %struct._GimpViewable* %79, %struct._GimpViewable** %viewable, align 8
  br label %if.end.159

if.else.156:                                      ; preds = %do.end.143
  %80 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %81 = bitcast %struct._GimpImage* %80 to %struct._GTypeInstance*
  %call157 = call i64 @gimp_viewable_get_type() #5
  %call158 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call157)
  %82 = bitcast %struct._GTypeInstance* %call158 to %struct._GimpViewable*
  store %struct._GimpViewable* %82, %struct._GimpViewable** %viewable, align 8
  br label %if.end.159

if.end.159:                                       ; preds = %if.else.156, %if.then.153
  %83 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %84 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %85 = load i8*, i8** %title.addr, align 8
  %86 = load i8*, i8** %role.addr, align 8
  %87 = load i8*, i8** %stock_id.addr, align 8
  %88 = load i8*, i8** %desc.addr, align 8
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %90 = load i8*, i8** %help_id.addr, align 8
  %call160 = call %struct._GtkWidget* (%struct._GimpViewable*, %struct._GimpContext*, i8*, i8*, i8*, i8*, %struct._GtkWidget*, void (i8*, i8*)*, i8*, ...) @gimp_viewable_dialog_new(%struct._GimpViewable* %83, %struct._GimpContext* %84, i8* %85, i8* %86, i8* %87, i8* %88, %struct._GtkWidget* %89, void (i8*, i8*)* @gimp_standard_help_func, i8* %90, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i32 -5, i8* null)
  %91 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options, align 8
  %dialog = getelementptr inbounds %struct._ChannelOptionsDialog, %struct._ChannelOptionsDialog* %91, i32 0, i32 0
  store %struct._GtkWidget* %call160, %struct._GtkWidget** %dialog, align 8
  %92 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options, align 8
  %dialog161 = getelementptr inbounds %struct._ChannelOptionsDialog, %struct._ChannelOptionsDialog* %92, i32 0, i32 0
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog161, align 8
  %94 = bitcast %struct._GtkWidget* %93 to %struct._GTypeInstance*
  %call162 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %94, i64 80)
  %95 = bitcast %struct._GTypeInstance* %call162 to %struct._GObject*
  %96 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options, align 8
  %97 = bitcast %struct._ChannelOptionsDialog* %96 to i8*
  call void @g_object_weak_ref(%struct._GObject* %95, void (i8*, %struct._GObject*)* bitcast (void (%struct._ChannelOptionsDialog*)* @channel_options_dialog_free to void (i8*, %struct._GObject*)*), i8* %97)
  %98 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options, align 8
  %dialog163 = getelementptr inbounds %struct._ChannelOptionsDialog, %struct._ChannelOptionsDialog* %98, i32 0, i32 0
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog163, align 8
  %100 = bitcast %struct._GtkWidget* %99 to %struct._GTypeInstance*
  %call164 = call i64 @gtk_dialog_get_type() #5
  %call165 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %100, i64 %call164)
  %101 = bitcast %struct._GTypeInstance* %call165 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %101, i32 -5, i32 -6, i32 -1)
  %call166 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call166, %struct._GtkWidget** %hbox, align 8
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %103 = bitcast %struct._GtkWidget* %102 to %struct._GTypeInstance*
  %call167 = call i64 @gtk_container_get_type() #5
  %call168 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %103, i64 %call167)
  %104 = bitcast %struct._GTypeInstance* %call168 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %104, i32 12)
  %105 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options, align 8
  %dialog169 = getelementptr inbounds %struct._ChannelOptionsDialog, %struct._ChannelOptionsDialog* %105, i32 0, i32 0
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog169, align 8
  %107 = bitcast %struct._GtkWidget* %106 to %struct._GTypeInstance*
  %call170 = call i64 @gtk_dialog_get_type() #5
  %call171 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %107, i64 %call170)
  %108 = bitcast %struct._GTypeInstance* %call171 to %struct._GtkDialog*
  %call172 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %108)
  %109 = bitcast %struct._GtkWidget* %call172 to %struct._GTypeInstance*
  %call173 = call i64 @gtk_box_get_type() #5
  %call174 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %109, i64 %call173)
  %110 = bitcast %struct._GTypeInstance* %call174 to %struct._GtkBox*
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %110, %struct._GtkWidget* %111, i32 1, i32 1, i32 0)
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %112)
  %call175 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call175, %struct._GtkWidget** %vbox, align 8
  %113 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %114 = bitcast %struct._GtkWidget* %113 to %struct._GTypeInstance*
  %call176 = call i64 @gtk_box_get_type() #5
  %call177 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %114, i64 %call176)
  %115 = bitcast %struct._GTypeInstance* %call177 to %struct._GtkBox*
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %115, %struct._GtkWidget* %116, i32 1, i32 1, i32 0)
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %117)
  %118 = load i8*, i8** %channel_name.addr, align 8
  %tobool178 = icmp ne i8* %118, null
  %cond = select i1 %tobool178, i32 2, i32 1
  %call179 = call %struct._GtkWidget* @gtk_table_new(i32 %cond, i32 3, i32 0)
  store %struct._GtkWidget* %call179, %struct._GtkWidget** %table, align 8
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %120 = bitcast %struct._GtkWidget* %119 to %struct._GTypeInstance*
  %call180 = call i64 @gtk_table_get_type() #5
  %call181 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %120, i64 %call180)
  %121 = bitcast %struct._GTypeInstance* %call181 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %121, i32 6)
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %123 = bitcast %struct._GtkWidget* %122 to %struct._GTypeInstance*
  %call182 = call i64 @gtk_table_get_type() #5
  %call183 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %123, i64 %call182)
  %124 = bitcast %struct._GTypeInstance* %call183 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %124, i32 6)
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %126 = bitcast %struct._GtkWidget* %125 to %struct._GTypeInstance*
  %call184 = call i64 @gtk_box_get_type() #5
  %call185 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %126, i64 %call184)
  %127 = bitcast %struct._GTypeInstance* %call185 to %struct._GtkBox*
  %128 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %127, %struct._GtkWidget* %128, i32 0, i32 0, i32 0)
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %129)
  %130 = load i8*, i8** %channel_name.addr, align 8
  %tobool186 = icmp ne i8* %130, null
  br i1 %tobool186, label %if.then.187, label %if.end.200

if.then.187:                                      ; preds = %if.end.159
  %call188 = call %struct._GtkWidget* @gtk_entry_new()
  %131 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options, align 8
  %name_entry = getelementptr inbounds %struct._ChannelOptionsDialog, %struct._ChannelOptionsDialog* %131, i32 0, i32 1
  store %struct._GtkWidget* %call188, %struct._GtkWidget** %name_entry, align 8
  %132 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options, align 8
  %name_entry189 = getelementptr inbounds %struct._ChannelOptionsDialog, %struct._ChannelOptionsDialog* %132, i32 0, i32 1
  %133 = load %struct._GtkWidget*, %struct._GtkWidget** %name_entry189, align 8
  %134 = bitcast %struct._GtkWidget* %133 to %struct._GTypeInstance*
  %call190 = call i64 @gtk_entry_get_type() #5
  %call191 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %134, i64 %call190)
  %135 = bitcast %struct._GTypeInstance* %call191 to %struct._GtkEntry*
  call void @gtk_entry_set_activates_default(%struct._GtkEntry* %135, i32 1)
  %136 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %137 = bitcast %struct._GtkWidget* %136 to %struct._GTypeInstance*
  %call192 = call i64 @gtk_table_get_type() #5
  %call193 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %137, i64 %call192)
  %138 = bitcast %struct._GTypeInstance* %call193 to %struct._GtkTable*
  %call194 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0)) #7
  %139 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options, align 8
  %name_entry195 = getelementptr inbounds %struct._ChannelOptionsDialog, %struct._ChannelOptionsDialog* %139, i32 0, i32 1
  %140 = load %struct._GtkWidget*, %struct._GtkWidget** %name_entry195, align 8
  %call196 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %138, i32 0, i32 0, i8* %call194, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %140, i32 2, i32 0)
  %141 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options, align 8
  %name_entry197 = getelementptr inbounds %struct._ChannelOptionsDialog, %struct._ChannelOptionsDialog* %141, i32 0, i32 1
  %142 = load %struct._GtkWidget*, %struct._GtkWidget** %name_entry197, align 8
  %143 = bitcast %struct._GtkWidget* %142 to %struct._GTypeInstance*
  %call198 = call i64 @gtk_entry_get_type() #5
  %call199 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %143, i64 %call198)
  %144 = bitcast %struct._GTypeInstance* %call199 to %struct._GtkEntry*
  %145 = load i8*, i8** %channel_name.addr, align 8
  call void @gtk_entry_set_text(%struct._GtkEntry* %144, i8* %145)
  br label %if.end.200

if.end.200:                                       ; preds = %if.then.187, %if.end.159
  %146 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %147 = bitcast %struct._GtkWidget* %146 to %struct._GTypeInstance*
  %call201 = call i64 @gtk_table_get_type() #5
  %call202 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %147, i64 %call201)
  %148 = bitcast %struct._GTypeInstance* %call202 to %struct._GtkTable*
  %149 = load i8*, i8** %channel_name.addr, align 8
  %tobool203 = icmp ne i8* %149, null
  %cond204 = select i1 %tobool203, i32 1, i32 0
  %150 = load i8*, i8** %opacity_label.addr, align 8
  %151 = load %struct._GimpRGB*, %struct._GimpRGB** %channel_color.addr, align 8
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %151, i32 0, i32 3
  %152 = load double, double* %a, align 8
  %mul = fmul double %152, 1.000000e+02
  %call205 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %148, i32 0, i32 %cond204, i8* %150, i32 100, i32 -1, double %mul, double 0.000000e+00, double 1.000000e+02, double 1.000000e+00, double 1.000000e+01, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call205, %struct._GtkObject** %opacity_adj, align 8
  %153 = load %struct._GtkObject*, %struct._GtkObject** %opacity_adj, align 8
  %154 = bitcast %struct._GtkObject* %153 to i8*
  %155 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options, align 8
  %color_panel206 = getelementptr inbounds %struct._ChannelOptionsDialog, %struct._ChannelOptionsDialog* %155, i32 0, i32 2
  %156 = load %struct._GtkWidget*, %struct._GtkWidget** %color_panel206, align 8
  %157 = bitcast %struct._GtkWidget* %156 to i8*
  %call207 = call i64 @g_signal_connect_data(i8* %154, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @channel_options_opacity_update to void ()*), i8* %157, void (i8*, %struct._GClosure*)* null, i32 0)
  %158 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %159 = bitcast %struct._GtkWidget* %158 to %struct._GTypeInstance*
  %call208 = call i64 @gtk_box_get_type() #5
  %call209 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %159, i64 %call208)
  %160 = bitcast %struct._GTypeInstance* %call209 to %struct._GtkBox*
  %161 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options, align 8
  %color_panel210 = getelementptr inbounds %struct._ChannelOptionsDialog, %struct._ChannelOptionsDialog* %161, i32 0, i32 2
  %162 = load %struct._GtkWidget*, %struct._GtkWidget** %color_panel210, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %160, %struct._GtkWidget* %162, i32 1, i32 1, i32 0)
  %163 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options, align 8
  %color_panel211 = getelementptr inbounds %struct._ChannelOptionsDialog, %struct._ChannelOptionsDialog* %163, i32 0, i32 2
  %164 = load %struct._GtkWidget*, %struct._GtkWidget** %color_panel211, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %164)
  %165 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options, align 8
  %color_panel212 = getelementptr inbounds %struct._ChannelOptionsDialog, %struct._ChannelOptionsDialog* %165, i32 0, i32 2
  %166 = load %struct._GtkWidget*, %struct._GtkWidget** %color_panel212, align 8
  %167 = bitcast %struct._GtkWidget* %166 to i8*
  %168 = load %struct._GtkObject*, %struct._GtkObject** %opacity_adj, align 8
  %169 = bitcast %struct._GtkObject* %168 to i8*
  %call213 = call i64 @g_signal_connect_data(i8* %167, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), void ()* bitcast (void (%struct._GimpColorButton*, i8*)* @channel_options_color_changed to void ()*), i8* %169, void (i8*, %struct._GClosure*)* null, i32 0)
  %170 = load i32, i32* %show_from_sel.addr, align 4
  %tobool214 = icmp ne i32 %170, 0
  br i1 %tobool214, label %if.then.215, label %if.end.222

if.then.215:                                      ; preds = %if.end.200
  %call216 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i32 0, i32 0)) #7
  %call217 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call216)
  %171 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options, align 8
  %save_sel_checkbutton = getelementptr inbounds %struct._ChannelOptionsDialog, %struct._ChannelOptionsDialog* %171, i32 0, i32 3
  store %struct._GtkWidget* %call217, %struct._GtkWidget** %save_sel_checkbutton, align 8
  %172 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %173 = bitcast %struct._GtkWidget* %172 to %struct._GTypeInstance*
  %call218 = call i64 @gtk_box_get_type() #5
  %call219 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %173, i64 %call218)
  %174 = bitcast %struct._GTypeInstance* %call219 to %struct._GtkBox*
  %175 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options, align 8
  %save_sel_checkbutton220 = getelementptr inbounds %struct._ChannelOptionsDialog, %struct._ChannelOptionsDialog* %175, i32 0, i32 3
  %176 = load %struct._GtkWidget*, %struct._GtkWidget** %save_sel_checkbutton220, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %174, %struct._GtkWidget* %176, i32 0, i32 0, i32 0)
  %177 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options, align 8
  %save_sel_checkbutton221 = getelementptr inbounds %struct._ChannelOptionsDialog, %struct._ChannelOptionsDialog* %177, i32 0, i32 3
  %178 = load %struct._GtkWidget*, %struct._GtkWidget** %save_sel_checkbutton221, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %178)
  br label %if.end.222

if.end.222:                                       ; preds = %if.then.215, %if.end.200
  %179 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options, align 8
  store %struct._ChannelOptionsDialog* %179, %struct._ChannelOptionsDialog** %retval
  br label %return

return:                                           ; preds = %if.end.222, %if.else.141, %if.else.135, %if.else.129, %if.else.123, %if.else.117, %if.else.111, %if.else.105, %if.else.99, %if.else.93, %if.else.65, %if.else.37, %if.else.9
  %180 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %retval
  ret %struct._ChannelOptionsDialog* %180
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #1

declare noalias i8* @g_slice_alloc0(i64) #3

declare %struct._GtkWidget* @gimp_color_panel_new(i8*, %struct._GimpRGB*, i32, i32, i32) #3

declare void @gimp_color_panel_set_context(%struct._GimpColorPanel*, %struct._GimpContext*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_color_panel_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #1

declare %struct._GtkWidget* @gimp_viewable_dialog_new(%struct._GimpViewable*, %struct._GimpContext*, i8*, i8*, i8*, i8*, %struct._GtkWidget*, void (i8*, i8*)*, i8*, ...) #3

declare void @gimp_standard_help_func(i8*, i8*) #3

declare void @g_object_weak_ref(%struct._GObject*, void (i8*, %struct._GObject*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @channel_options_dialog_free(%struct._ChannelOptionsDialog* %options) #0 {
entry:
  %options.addr = alloca %struct._ChannelOptionsDialog*, align 8
  store %struct._ChannelOptionsDialog* %options, %struct._ChannelOptionsDialog** %options.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._ChannelOptionsDialog*, %struct._ChannelOptionsDialog** %options.addr, align 8
  %1 = bitcast %struct._ChannelOptionsDialog* %0 to i8*
  call void @g_slice_free1(i64 56, i8* %1)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #3

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #3

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #1

declare void @gtk_widget_show(%struct._GtkWidget*) #3

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #3

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #1

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #3

declare %struct._GtkWidget* @gtk_entry_new() #3

declare void @gtk_entry_set_activates_default(%struct._GtkEntry*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #1

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare void @gtk_entry_set_text(%struct._GtkEntry*, i8*) #3

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @channel_options_opacity_update(%struct._GtkAdjustment* %adjustment, i8* %data) #0 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %data.addr = alloca i8*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_button_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorButton*
  call void @gimp_color_button_get_color(%struct._GimpColorButton* %2, %struct._GimpRGB* %color)
  %3 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call2 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %3)
  %div = fdiv double %call2, 1.000000e+02
  call void @gimp_rgb_set_alpha(%struct._GimpRGB* %color, double %div)
  %4 = load i8*, i8** %data.addr, align 8
  %5 = bitcast i8* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_color_button_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpColorButton*
  call void @gimp_color_button_set_color(%struct._GimpColorButton* %6, %struct._GimpRGB* %color)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @channel_options_color_changed(%struct._GimpColorButton* %button, i8* %data) #0 {
entry:
  %button.addr = alloca %struct._GimpColorButton*, align 8
  %data.addr = alloca i8*, align 8
  %adj = alloca %struct._GtkAdjustment*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GimpColorButton* %button, %struct._GimpColorButton** %button.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_adjustment_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkAdjustment*
  store %struct._GtkAdjustment* %2, %struct._GtkAdjustment** %adj, align 8
  %3 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  call void @gimp_color_button_get_color(%struct._GimpColorButton* %3, %struct._GimpRGB* %color)
  %4 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 3
  %5 = load double, double* %a, align 8
  %mul = fmul double %5, 1.000000e+02
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %4, double %mul)
  ret void
}

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #3

declare void @gimp_color_button_get_color(%struct._GimpColorButton*, %struct._GimpRGB*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_color_button_get_type() #1

declare void @gimp_rgb_set_alpha(%struct._GimpRGB*, double) #3

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #3

declare void @gimp_color_button_set_color(%struct._GimpColorButton*, %struct._GimpRGB*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #1

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #3

declare void @g_slice_free1(i64, i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
