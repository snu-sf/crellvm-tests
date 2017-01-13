; ModuleID = './app/widgets/gimptoolbox-color-area.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
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
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpToolbox = type { %struct._GimpDock, %struct._GimpToolboxPrivate* }
%struct._GimpDock = type { %struct._GtkBox, %struct._GimpDockPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpDockPrivate = type opaque
%struct._GimpToolboxPrivate = type opaque
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
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpFgBgEditor = type { %struct._GtkDrawingArea, %struct._GimpContext*, i32, %struct._GdkPixbuf*, %struct._GdkPixbuf*, i32, i32, i32 }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }
%struct._GdkPixbuf = type opaque
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpDialogFactoryPrivate = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GimpColorDialog = type { %struct._GimpViewableDialog, i32, %struct._GtkWidget*, [12 x %struct._GtkWidget*] }
%struct._GimpViewableDialog = type { %struct._GimpDialog, %struct._GimpContext*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_toolbox_color_area_create = private unnamed_addr constant [31 x i8] c"gimp_toolbox_color_area_create\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"GIMP_IS_TOOLBOX (toolbox)\00", align 1
@color_area = internal global %struct._GtkWidget* null, align 8
@.str.2 = private unnamed_addr constant [140 x i8] c"Foreground & background colors.\0AThe black and white squares reset colors.\0AThe arrows swap colors.\0AClick to open the color selection dialog.\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"color-clicked\00", align 1
@color_dialog_active = internal global i32 0, align 4
@revert_fg = internal global %struct._GimpRGB zeroinitializer, align 8
@revert_bg = internal global %struct._GimpRGB zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"Change Foreground Color\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Change Background Color\00", align 1
@edit_color = internal global i32 0, align 4
@color_dialog = internal global %struct._GtkWidget* null, align 8
@.str.6 = private unnamed_addr constant [26 x i8] c"gimp-toolbox-color-dialog\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"update\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_toolbox_color_area_create(%struct._GimpToolbox* %toolbox, i32 %width, i32 %height) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %toolbox.addr = alloca %struct._GimpToolbox*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %context = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpToolbox* %toolbox, %struct._GimpToolbox** %toolbox.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox.addr, align 8
  %1 = bitcast %struct._GimpToolbox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_toolbox_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_toolbox_color_area_create, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox.addr, align 8
  %call11 = call %struct._GimpContext* @gimp_toolbox_get_context(%struct._GimpToolbox* %13)
  store %struct._GimpContext* %call11, %struct._GimpContext** %context, align 8
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call12 = call %struct._GtkWidget* @gimp_fg_bg_editor_new(%struct._GimpContext* %14)
  store %struct._GtkWidget* %call12, %struct._GtkWidget** @color_area, align 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** @color_area, align 8
  %16 = load i32, i32* %width.addr, align 4
  %17 = load i32, i32* %height.addr, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %15, i32 %16, i32 %17)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** @color_area, align 8
  call void @gtk_widget_add_events(%struct._GtkWidget* %18, i32 12288)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** @color_area, align 8
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([140 x i8], [140 x i8]* @.str.2, i32 0, i32 0)) #7
  call void @gimp_help_set_help_data(%struct._GtkWidget* %19, i8* %call13, i8* null)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** @color_area, align 8
  %21 = bitcast %struct._GtkWidget* %20 to i8*
  %22 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %23 = bitcast %struct._GimpContext* %22 to i8*
  %call14 = call i64 @g_signal_connect_data(i8* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), void ()* bitcast (void (%struct._GimpFgBgEditor*, i32, %struct._GimpContext*)* @color_area_color_clicked to void ()*), i8* %23, void (i8*, %struct._GClosure*)* null, i32 0)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** @color_area, align 8
  store %struct._GtkWidget* %24, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %25
}

; Function Attrs: nounwind readnone
declare i64 @gimp_toolbox_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare %struct._GimpContext* @gimp_toolbox_get_context(%struct._GimpToolbox*) #3

declare %struct._GtkWidget* @gimp_fg_bg_editor_new(%struct._GimpContext*) #3

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #3

declare void @gtk_widget_add_events(%struct._GtkWidget*, i32) #3

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @color_area_color_clicked(%struct._GimpFgBgEditor* %editor, i32 %active_color, %struct._GimpContext* %context) #0 {
entry:
  %editor.addr = alloca %struct._GimpFgBgEditor*, align 8
  %active_color.addr = alloca i32, align 4
  %context.addr = alloca %struct._GimpContext*, align 8
  %color = alloca %struct._GimpRGB, align 8
  %title = alloca i8*, align 8
  store %struct._GimpFgBgEditor* %editor, %struct._GimpFgBgEditor** %editor.addr, align 8
  store i32 %active_color, i32* %active_color.addr, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load i32, i32* @color_dialog_active, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_get_foreground(%struct._GimpContext* %1, %struct._GimpRGB* @revert_fg)
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_get_background(%struct._GimpContext* %2, %struct._GimpRGB* @revert_bg)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %active_color.addr, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_get_foreground(%struct._GimpContext* %4, %struct._GimpRGB* %color)
  %call = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0)) #7
  store i8* %call, i8** %title, align 8
  br label %if.end.3

if.else:                                          ; preds = %if.end
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_get_background(%struct._GimpContext* %5, %struct._GimpRGB* %color)
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0)) #7
  store i8* %call2, i8** %title, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.1
  %6 = load i32, i32* %active_color.addr, align 4
  store i32 %6, i32* @edit_color, align 4
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** @color_dialog, align 8
  %tobool4 = icmp ne %struct._GtkWidget* %7, null
  br i1 %tobool4, label %if.end.11, label %if.then.5

if.then.5:                                        ; preds = %if.end.3
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %9 = load %struct._GimpFgBgEditor*, %struct._GimpFgBgEditor** %editor.addr, align 8
  %10 = bitcast %struct._GimpFgBgEditor* %9 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_widget_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call6)
  %11 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkWidget*
  %call8 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %call9 = call %struct._GtkWidget* @gimp_color_dialog_new(%struct._GimpViewable* null, %struct._GimpContext* %8, i8* null, i8* null, i8* null, %struct._GtkWidget* %11, %struct._GimpDialogFactory* %call8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0), %struct._GimpRGB* %color, i32 1, i32 0)
  store %struct._GtkWidget* %call9, %struct._GtkWidget** @color_dialog, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** @color_dialog, align 8
  %13 = bitcast %struct._GtkWidget* %12 to i8*
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %15 = bitcast %struct._GimpContext* %14 to i8*
  %call10 = call i64 @g_signal_connect_data(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GimpColorDialog*, %struct._GimpRGB*, i32, %struct._GimpContext*)* @color_area_dialog_update to void ()*), i8* %15, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.5, %if.end.3
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** @color_dialog, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_window_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call12)
  %18 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkWindow*
  %19 = load i8*, i8** %title, align 8
  call void @gtk_window_set_title(%struct._GtkWindow* %18, i8* %19)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** @color_dialog, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_color_dialog_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call14)
  %22 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpColorDialog*
  call void @gimp_color_dialog_set_color(%struct._GimpColorDialog* %22, %struct._GimpRGB* %color)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** @color_dialog, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_window_get_type() #5
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call16)
  %25 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %25)
  store i32 1, i32* @color_dialog_active, align 4
  ret void
}

declare void @gimp_context_get_foreground(%struct._GimpContext*, %struct._GimpRGB*) #3

declare void @gimp_context_get_background(%struct._GimpContext*, %struct._GimpRGB*) #3

declare %struct._GtkWidget* @gimp_color_dialog_new(%struct._GimpViewable*, %struct._GimpContext*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GimpDialogFactory*, i8*, %struct._GimpRGB*, i32, i32) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #1

declare %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton() #3

; Function Attrs: nounwind uwtable
define internal void @color_area_dialog_update(%struct._GimpColorDialog* %dialog, %struct._GimpRGB* %color, i32 %state, %struct._GimpContext* %context) #0 {
entry:
  %dialog.addr = alloca %struct._GimpColorDialog*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %state.addr = alloca i32, align 4
  %context.addr = alloca %struct._GimpContext*, align 8
  store %struct._GimpColorDialog* %dialog, %struct._GimpColorDialog** %dialog.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load i32, i32* %state.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.1
    i32 1, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** @color_dialog, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %1)
  store i32 0, i32* @color_dialog_active, align 4
  br label %sw.bb.1

sw.bb.1:                                          ; preds = %entry, %sw.bb
  %2 = load i32, i32* @edit_color, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.1
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void @gimp_context_set_foreground(%struct._GimpContext* %3, %struct._GimpRGB* %4)
  br label %if.end

if.else:                                          ; preds = %sw.bb.1
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %6 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void @gimp_context_set_background(%struct._GimpContext* %5, %struct._GimpRGB* %6)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** @color_dialog, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %7)
  store i32 0, i32* @color_dialog_active, align 4
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_set_foreground(%struct._GimpContext* %8, %struct._GimpRGB* @revert_fg)
  %9 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_set_background(%struct._GimpContext* %9, %struct._GimpRGB* @revert_bg)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.2, %if.end
  ret void
}

declare void @gtk_window_set_title(%struct._GtkWindow*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #1

declare void @gimp_color_dialog_set_color(%struct._GimpColorDialog*, %struct._GimpRGB*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_color_dialog_get_type() #1

declare void @gtk_window_present(%struct._GtkWindow*) #3

declare void @gtk_widget_hide(%struct._GtkWidget*) #3

declare void @gimp_context_set_foreground(%struct._GimpContext*, %struct._GimpRGB*) #3

declare void @gimp_context_set_background(%struct._GimpContext*, %struct._GimpRGB*) #3

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
