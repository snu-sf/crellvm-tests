; ModuleID = './app/display/gimpdisplayshell-filter-dialog.bc'
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
%struct._GimpDisplayShell = type { %struct._GtkBox, %struct._GimpDisplay*, %struct._GimpUIManager*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct._GimpZoomModel*, double, i32, i32, i32, double, i32, i32, i32, %struct._Selection*, %struct._GList*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._cairo_surface*, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, i32, i8*, i8*, i32, i32, %struct._GdkPixbuf*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpColorDisplayStack*, i32, %struct._GtkWidget*, i32, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i8*, %struct._GimpDrawable*, %struct._GimpRGB, %struct._GimpMotionBuffer*, %struct._GQueue* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
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
%struct._GimpContext = type opaque
%struct._GimpDisplayConfig = type opaque
%struct._GimpUIManager = type opaque
%struct._GimpDisplayOptions = type opaque
%struct._GimpZoomModel = type { %struct._GObject, i8* }
%struct._Selection = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GimpCanvasItem = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpColorDisplayStack = type { %struct._GObject, %struct._GList* }
%struct._GimpTreeHandler = type opaque
%struct._GimpDrawable = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpMotionBuffer = type opaque
%struct._GQueue = type { %struct._GList*, %struct._GList*, i32 }
%struct.ColorDisplayDialog = type { %struct._GimpDisplayShell*, %struct._GtkWidget*, %struct._GimpColorDisplayStack* }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpColorManaged = type opaque

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Display\00", align 1
@__func__.gimp_display_shell_filter_dialog_new = private unnamed_addr constant [37 x i8] c"gimp_display_shell_filter_dialog_new\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"GIMP_IS_DISPLAY_SHELL (shell)\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Color Display Filters\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"gimp-display-filters\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"gimp-display-filter\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Configure Color Display Filters\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"gimp-display-filter-dialog\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"response\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_display_shell_filter_dialog_new(%struct._GimpDisplayShell* %shell) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %config = alloca %struct._GimpDisplayConfig*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %cdd = alloca %struct.ColorDisplayDialog*, align 8
  %editor = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %stack = alloca %struct._GimpColorDisplayStack*, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_display_shell_filter_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 1
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %config11 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %14, i32 0, i32 2
  %15 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config11, align 8
  store %struct._GimpDisplayConfig* %15, %struct._GimpDisplayConfig** %config, align 8
  %16 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display12 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %16, i32 0, i32 1
  %17 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display12, align 8
  %call13 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %17)
  store %struct._GimpImage* %call13, %struct._GimpImage** %image, align 8
  %call14 = call noalias i8* @g_slice_alloc0(i64 24)
  %18 = bitcast i8* %call14 to %struct.ColorDisplayDialog*
  store %struct.ColorDisplayDialog* %18, %struct.ColorDisplayDialog** %cdd, align 8
  %19 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %20 = load %struct.ColorDisplayDialog*, %struct.ColorDisplayDialog** %cdd, align 8
  %shell15 = getelementptr inbounds %struct.ColorDisplayDialog, %struct.ColorDisplayDialog* %20, i32 0, i32 0
  store %struct._GimpDisplayShell* %19, %struct._GimpDisplayShell** %shell15, align 8
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %22 = bitcast %struct._GimpImage* %21 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_viewable_get_type() #5
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call16)
  %23 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpViewable*
  %24 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display18 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %24, i32 0, i32 1
  %25 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display18, align 8
  %gimp = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %25, i32 0, i32 1
  %26 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call19 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %26)
  %call20 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0)) #7
  %call21 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0)) #7
  %27 = load %struct.ColorDisplayDialog*, %struct.ColorDisplayDialog** %cdd, align 8
  %shell22 = getelementptr inbounds %struct.ColorDisplayDialog, %struct.ColorDisplayDialog* %27, i32 0, i32 0
  %28 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell22, align 8
  %29 = bitcast %struct._GimpDisplayShell* %28 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_widget_get_type() #5
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call23)
  %30 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkWidget*
  %call25 = call %struct._GtkWidget* (%struct._GimpViewable*, %struct._GimpContext*, i8*, i8*, i8*, i8*, %struct._GtkWidget*, void (i8*, i8*)*, i8*, ...) @gimp_viewable_dialog_new(%struct._GimpViewable* %23, %struct._GimpContext* %call19, i8* %call20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i8* %call21, %struct._GtkWidget* %30, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 -5, i8* null)
  %31 = load %struct.ColorDisplayDialog*, %struct.ColorDisplayDialog** %cdd, align 8
  %dialog = getelementptr inbounds %struct.ColorDisplayDialog, %struct.ColorDisplayDialog* %31, i32 0, i32 1
  store %struct._GtkWidget* %call25, %struct._GtkWidget** %dialog, align 8
  %32 = load %struct.ColorDisplayDialog*, %struct.ColorDisplayDialog** %cdd, align 8
  %dialog26 = getelementptr inbounds %struct.ColorDisplayDialog, %struct.ColorDisplayDialog* %32, i32 0, i32 1
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog26, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_dialog_get_type() #5
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call27)
  %35 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %35, i32 -5, i32 -6, i32 -1)
  %36 = load %struct.ColorDisplayDialog*, %struct.ColorDisplayDialog** %cdd, align 8
  %dialog29 = getelementptr inbounds %struct.ColorDisplayDialog, %struct.ColorDisplayDialog* %36, i32 0, i32 1
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog29, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_window_get_type() #5
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call30)
  %39 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkWindow*
  call void @gtk_window_set_destroy_with_parent(%struct._GtkWindow* %39, i32 1)
  %40 = load %struct.ColorDisplayDialog*, %struct.ColorDisplayDialog** %cdd, align 8
  %dialog32 = getelementptr inbounds %struct.ColorDisplayDialog, %struct.ColorDisplayDialog* %40, i32 0, i32 1
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog32, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 80)
  %43 = bitcast %struct._GTypeInstance* %call33 to %struct._GObject*
  %44 = load %struct.ColorDisplayDialog*, %struct.ColorDisplayDialog** %cdd, align 8
  %45 = bitcast %struct.ColorDisplayDialog* %44 to i8*
  call void @g_object_weak_ref(%struct._GObject* %43, void (i8*, %struct._GObject*)* bitcast (void (%struct.ColorDisplayDialog*)* @gimp_display_shell_filter_dialog_free to void (i8*, %struct._GObject*)*), i8* %45)
  %46 = load %struct.ColorDisplayDialog*, %struct.ColorDisplayDialog** %cdd, align 8
  %dialog34 = getelementptr inbounds %struct.ColorDisplayDialog, %struct.ColorDisplayDialog* %46, i32 0, i32 1
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog34, align 8
  %48 = bitcast %struct._GtkWidget* %47 to i8*
  %49 = load %struct.ColorDisplayDialog*, %struct.ColorDisplayDialog** %cdd, align 8
  %50 = bitcast %struct.ColorDisplayDialog* %49 to i8*
  %call35 = call i64 @g_signal_connect_data(i8* %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct.ColorDisplayDialog*)* @gimp_display_shell_filter_dialog_response to void ()*), i8* %50, void (i8*, %struct._GClosure*)* null, i32 0)
  %51 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %filter_stack = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %51, i32 0, i32 77
  %52 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %filter_stack, align 8
  %tobool36 = icmp ne %struct._GimpColorDisplayStack* %52, null
  br i1 %tobool36, label %if.then.37, label %if.else.43

if.then.37:                                       ; preds = %do.end
  %53 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %filter_stack38 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %53, i32 0, i32 77
  %54 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %filter_stack38, align 8
  %call39 = call %struct._GimpColorDisplayStack* @gimp_color_display_stack_clone(%struct._GimpColorDisplayStack* %54)
  %55 = load %struct.ColorDisplayDialog*, %struct.ColorDisplayDialog** %cdd, align 8
  %old_stack = getelementptr inbounds %struct.ColorDisplayDialog, %struct.ColorDisplayDialog* %55, i32 0, i32 2
  store %struct._GimpColorDisplayStack* %call39, %struct._GimpColorDisplayStack** %old_stack, align 8
  %56 = load %struct.ColorDisplayDialog*, %struct.ColorDisplayDialog** %cdd, align 8
  %dialog40 = getelementptr inbounds %struct.ColorDisplayDialog, %struct.ColorDisplayDialog* %56, i32 0, i32 1
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog40, align 8
  %58 = bitcast %struct._GtkWidget* %57 to %struct._GTypeInstance*
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 80)
  %59 = bitcast %struct._GTypeInstance* %call41 to %struct._GObject*
  %60 = load %struct.ColorDisplayDialog*, %struct.ColorDisplayDialog** %cdd, align 8
  %old_stack42 = getelementptr inbounds %struct.ColorDisplayDialog, %struct.ColorDisplayDialog* %60, i32 0, i32 2
  %61 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %old_stack42, align 8
  %62 = bitcast %struct._GimpColorDisplayStack* %61 to i8*
  call void @g_object_weak_ref(%struct._GObject* %59, void (i8*, %struct._GObject*)* bitcast (void (i8*)* @g_object_unref to void (i8*, %struct._GObject*)*), i8* %62)
  br label %if.end.46

if.else.43:                                       ; preds = %do.end
  %call45 = call %struct._GimpColorDisplayStack* @gimp_color_display_stack_new()
  store %struct._GimpColorDisplayStack* %call45, %struct._GimpColorDisplayStack** %stack, align 8
  %63 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %64 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack, align 8
  call void @gimp_display_shell_filter_set(%struct._GimpDisplayShell* %63, %struct._GimpColorDisplayStack* %64)
  %65 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %stack, align 8
  %66 = bitcast %struct._GimpColorDisplayStack* %65 to i8*
  call void @g_object_unref(i8* %66)
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.43, %if.then.37
  %67 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %filter_stack47 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %67, i32 0, i32 77
  %68 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %filter_stack47, align 8
  %69 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config, align 8
  %70 = bitcast %struct._GimpDisplayConfig* %69 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_core_config_get_type() #5
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 %call48)
  %71 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpCoreConfig*
  %color_management = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %71, i32 0, i32 46
  %72 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %color_management, align 8
  %73 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %74 = bitcast %struct._GimpDisplayShell* %73 to %struct._GTypeInstance*
  %call50 = call i64 @gimp_color_managed_interface_get_type() #5
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call50)
  %75 = bitcast %struct._GTypeInstance* %call51 to %struct._GimpColorManaged*
  %call52 = call %struct._GtkWidget* @gimp_color_display_editor_new(%struct._GimpColorDisplayStack* %68, %struct._GimpColorConfig* %72, %struct._GimpColorManaged* %75)
  store %struct._GtkWidget* %call52, %struct._GtkWidget** %editor, align 8
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %editor, align 8
  %77 = bitcast %struct._GtkWidget* %76 to %struct._GTypeInstance*
  %call53 = call i64 @gtk_container_get_type() #5
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call53)
  %78 = bitcast %struct._GTypeInstance* %call54 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %78, i32 12)
  %79 = load %struct.ColorDisplayDialog*, %struct.ColorDisplayDialog** %cdd, align 8
  %dialog55 = getelementptr inbounds %struct.ColorDisplayDialog, %struct.ColorDisplayDialog* %79, i32 0, i32 1
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog55, align 8
  %81 = bitcast %struct._GtkWidget* %80 to %struct._GTypeInstance*
  %call56 = call i64 @gtk_dialog_get_type() #5
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call56)
  %82 = bitcast %struct._GTypeInstance* %call57 to %struct._GtkDialog*
  %call58 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %82)
  %83 = bitcast %struct._GtkWidget* %call58 to %struct._GTypeInstance*
  %call59 = call i64 @gtk_box_get_type() #5
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %83, i64 %call59)
  %84 = bitcast %struct._GTypeInstance* %call60 to %struct._GtkBox*
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %editor, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %84, %struct._GtkWidget* %85, i32 1, i32 1, i32 0)
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %editor, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %86)
  %87 = load %struct.ColorDisplayDialog*, %struct.ColorDisplayDialog** %cdd, align 8
  %dialog61 = getelementptr inbounds %struct.ColorDisplayDialog, %struct.ColorDisplayDialog* %87, i32 0, i32 1
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog61, align 8
  store %struct._GtkWidget* %88, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.46, %if.else.9
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %89
}

; Function Attrs: nounwind readnone
declare i64 @gimp_display_shell_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #3

declare noalias i8* @g_slice_alloc0(i64) #3

declare %struct._GtkWidget* @gimp_viewable_dialog_new(%struct._GimpViewable*, %struct._GimpContext*, i8*, i8*, i8*, i8*, %struct._GtkWidget*, void (i8*, i8*)*, i8*, ...) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #1

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #1

declare void @gimp_standard_help_func(i8*, i8*) #3

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #1

declare void @gtk_window_set_destroy_with_parent(%struct._GtkWindow*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #1

declare void @g_object_weak_ref(%struct._GObject*, void (i8*, %struct._GObject*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_filter_dialog_free(%struct.ColorDisplayDialog* %cdd) #0 {
entry:
  %cdd.addr = alloca %struct.ColorDisplayDialog*, align 8
  store %struct.ColorDisplayDialog* %cdd, %struct.ColorDisplayDialog** %cdd.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.ColorDisplayDialog*, %struct.ColorDisplayDialog** %cdd.addr, align 8
  %1 = bitcast %struct.ColorDisplayDialog* %0 to i8*
  call void @g_slice_free1(i64 24, i8* %1)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_filter_dialog_response(%struct._GtkWidget* %widget, i32 %response_id, %struct.ColorDisplayDialog* %cdd) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %cdd.addr = alloca %struct.ColorDisplayDialog*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct.ColorDisplayDialog* %cdd, %struct.ColorDisplayDialog** %cdd.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp ne i32 %0, -5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.ColorDisplayDialog*, %struct.ColorDisplayDialog** %cdd.addr, align 8
  %shell = getelementptr inbounds %struct.ColorDisplayDialog, %struct.ColorDisplayDialog* %1, i32 0, i32 0
  %2 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %3 = load %struct.ColorDisplayDialog*, %struct.ColorDisplayDialog** %cdd.addr, align 8
  %old_stack = getelementptr inbounds %struct.ColorDisplayDialog, %struct.ColorDisplayDialog* %3, i32 0, i32 2
  %4 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %old_stack, align 8
  call void @gimp_display_shell_filter_set(%struct._GimpDisplayShell* %2, %struct._GimpColorDisplayStack* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.ColorDisplayDialog*, %struct.ColorDisplayDialog** %cdd.addr, align 8
  %dialog = getelementptr inbounds %struct.ColorDisplayDialog, %struct.ColorDisplayDialog* %5, i32 0, i32 1
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call)
  %8 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  call void @gtk_widget_destroy(%struct._GtkWidget* %8)
  ret void
}

declare %struct._GimpColorDisplayStack* @gimp_color_display_stack_clone(%struct._GimpColorDisplayStack*) #3

declare void @g_object_unref(i8*) #3

declare %struct._GimpColorDisplayStack* @gimp_color_display_stack_new() #3

declare void @gimp_display_shell_filter_set(%struct._GimpDisplayShell*, %struct._GimpColorDisplayStack*) #3

declare %struct._GtkWidget* @gimp_color_display_editor_new(%struct._GimpColorDisplayStack*, %struct._GimpColorConfig*, %struct._GimpColorManaged*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_core_config_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_managed_interface_get_type() #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #3

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #1

declare void @gtk_widget_show(%struct._GtkWidget*) #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #3

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
