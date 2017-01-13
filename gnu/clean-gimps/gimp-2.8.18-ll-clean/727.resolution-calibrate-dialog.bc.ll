; ModuleID = './app/dialogs/resolution-calibrate-dialog.bc'
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
%struct._GdkPixbuf = type opaque
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GimpRuler = type { %struct._GtkWidget }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GimpSizeEntry = type { %struct._GtkTable, %struct._GSList*, i32, %struct._GtkWidget*, i32, i32, i32, i32, i32 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpChainButton = type { %struct._GtkTable, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Dialogs\00", align 1
@__func__.resolution_calibrate_dialog = private unnamed_addr constant [28 x i8] c"resolution_calibrate_dialog\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"GIMP_IS_SIZE_ENTRY (resolution_entry)\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"gtk_widget_get_realized (resolution_entry)\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"pixbuf == NULL || GDK_IS_PIXBUF (pixbuf)\00", align 1
@calibrate_entry = internal global %struct._GtkWidget* null, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"Calibrate Monitor Resolution\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"gimp-resolution-calibration\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@ruler_width = internal global i32 1, align 4
@ruler_height = internal global i32 1, align 4
@.str.8 = private unnamed_addr constant [44 x i8] c"Measure the rulers and enter their lengths:\00", align 1
@calibrate_xres = internal global double 1.000000e+00, align 8
@calibrate_yres = internal global double 1.000000e+00, align 8
@.str.9 = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"_Horizontal:\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"_Vertical:\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"chainbutton\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1

; Function Attrs: nounwind uwtable
define void @resolution_calibrate_dialog(%struct._GtkWidget* %resolution_entry, %struct._GdkPixbuf* %pixbuf) #0 {
entry:
  %resolution_entry.addr = alloca %struct._GtkWidget*, align 8
  %pixbuf.addr = alloca %struct._GdkPixbuf*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %ruler = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %screen = alloca %struct._GdkScreen*, align 8
  %rect = alloca %struct._GdkRectangle, align 4
  %monitor = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst21 = alloca %struct._GTypeInstance*, align 8
  %__t23 = alloca i64, align 8
  %__r26 = alloca i32, align 4
  %tmp41 = alloca i32, align 4
  %image = alloca %struct._GtkWidget*, align 8
  %chain_button = alloca %struct._GtkWidget*, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  store %struct._GtkWidget* %resolution_entry, %struct._GtkWidget** %resolution_entry.addr, align 8
  store %struct._GdkPixbuf* %pixbuf, %struct._GdkPixbuf** %pixbuf.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %resolution_entry.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_size_entry_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.resolution_calibrate_dialog, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %resolution_entry.addr, align 8
  %call12 = call i32 @gtk_widget_get_realized(%struct._GtkWidget* %13)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.resolution_calibrate_dialog, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %14 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %cmp19 = icmp eq %struct._GdkPixbuf* %14, null
  br i1 %cmp19, label %if.then.43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.18
  %15 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %16 = bitcast %struct._GdkPixbuf* %15 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %16, %struct._GTypeInstance** %__inst21, align 8
  %call24 = call i64 @gdk_pixbuf_get_type() #5
  store i64 %call24, i64* %__t23, align 8
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst21, align 8
  %tobool27 = icmp ne %struct._GTypeInstance* %17, null
  br i1 %tobool27, label %if.else.29, label %if.then.28

if.then.28:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r26, align 4
  br label %if.end.40

if.else.29:                                       ; preds = %lor.lhs.false
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst21, align 8
  %g_class30 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class30, align 8
  %tobool31 = icmp ne %struct._GTypeClass* %19, null
  br i1 %tobool31, label %land.lhs.true.32, label %if.else.37

land.lhs.true.32:                                 ; preds = %if.else.29
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst21, align 8
  %g_class33 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class33, align 8
  %g_type34 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type34, align 8
  %23 = load i64, i64* %__t23, align 8
  %cmp35 = icmp eq i64 %22, %23
  br i1 %cmp35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %land.lhs.true.32
  store i32 1, i32* %__r26, align 4
  br label %if.end.39

if.else.37:                                       ; preds = %land.lhs.true.32, %if.else.29
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst21, align 8
  %25 = load i64, i64* %__t23, align 8
  %call38 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %24, i64 %25) #6
  store i32 %call38, i32* %__r26, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.37, %if.then.36
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.28
  %26 = load i32, i32* %__r26, align 4
  store i32 %26, i32* %tmp41
  %27 = load i32, i32* %tmp41
  %tobool42 = icmp ne i32 %27, 0
  br i1 %tobool42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %if.end.40, %do.body.18
  br label %if.end.45

if.else.44:                                       ; preds = %if.end.40
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.resolution_calibrate_dialog, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.45:                                        ; preds = %if.then.43
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** @calibrate_entry, align 8
  %tobool47 = icmp ne %struct._GtkWidget* %28, null
  br i1 %tobool47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %do.end.46
  br label %return

if.end.49:                                        ; preds = %do.end.46
  %call50 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0)) #7
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %resolution_entry.addr, align 8
  %call51 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %29)
  %call52 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0), %struct._GtkWidget* %call51, i32 2, void (i8*, i8*)* null, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call52, %struct._GtkWidget** %dialog, align 8
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call53 = call i64 @gtk_dialog_get_type() #5
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call53)
  %32 = bitcast %struct._GTypeInstance* %call54 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %32, i32 -5, i32 -6, i32 -1)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %call55 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %33)
  store %struct._GdkScreen* %call55, %struct._GdkScreen** %screen, align 8
  %34 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %resolution_entry.addr, align 8
  %call56 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %35)
  %call57 = call i32 @gdk_screen_get_monitor_at_window(%struct._GdkScreen* %34, %struct._GdkDrawable* %call56)
  store i32 %call57, i32* %monitor, align 4
  %36 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %37 = load i32, i32* %monitor, align 4
  call void @gdk_screen_get_monitor_geometry(%struct._GdkScreen* %36, i32 %37, %struct._GdkRectangle* %rect)
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 2
  %38 = load i32, i32* %width, align 4
  %sub = sub nsw i32 %38, 300
  %width58 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 2
  %39 = load i32, i32* %width58, align 4
  %rem = srem i32 %39, 100
  %sub59 = sub nsw i32 %sub, %rem
  store i32 %sub59, i32* @ruler_width, align 4
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 3
  %40 = load i32, i32* %height, align 4
  %sub60 = sub nsw i32 %40, 300
  %height61 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 3
  %41 = load i32, i32* %height61, align 4
  %rem62 = srem i32 %41, 100
  %sub63 = sub nsw i32 %sub60, %rem62
  store i32 %sub63, i32* @ruler_height, align 4
  %call64 = call %struct._GtkWidget* @gtk_table_new(i32 4, i32 4, i32 0)
  store %struct._GtkWidget* %call64, %struct._GtkWidget** %table, align 8
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call65 = call i64 @gtk_container_get_type() #5
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call65)
  %44 = bitcast %struct._GTypeInstance* %call66 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %44, i32 12)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call67 = call i64 @gtk_dialog_get_type() #5
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call67)
  %47 = bitcast %struct._GTypeInstance* %call68 to %struct._GtkDialog*
  %call69 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %47)
  %48 = bitcast %struct._GtkWidget* %call69 to %struct._GTypeInstance*
  %call70 = call i64 @gtk_box_get_type() #5
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call70)
  %49 = bitcast %struct._GTypeInstance* %call71 to %struct._GtkBox*
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %49, %struct._GtkWidget* %50, i32 1, i32 1, i32 0)
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %51)
  %52 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %tobool72 = icmp ne %struct._GdkPixbuf* %52, null
  br i1 %tobool72, label %if.then.73, label %if.end.78

if.then.73:                                       ; preds = %if.end.49
  %53 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %call75 = call %struct._GtkWidget* @gtk_image_new_from_pixbuf(%struct._GdkPixbuf* %53)
  store %struct._GtkWidget* %call75, %struct._GtkWidget** %image, align 8
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %55 = bitcast %struct._GtkWidget* %54 to %struct._GTypeInstance*
  %call76 = call i64 @gtk_table_get_type() #5
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call76)
  %56 = bitcast %struct._GTypeInstance* %call77 to %struct._GtkTable*
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_table_attach(%struct._GtkTable* %56, %struct._GtkWidget* %57, i32 0, i32 1, i32 0, i32 1, i32 2, i32 2, i32 4, i32 4)
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %58)
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.73, %if.end.49
  %call79 = call %struct._GtkWidget* @gimp_ruler_new(i32 0)
  store %struct._GtkWidget* %call79, %struct._GtkWidget** %ruler, align 8
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %ruler, align 8
  %60 = load i32, i32* @ruler_width, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %59, i32 %60, i32 32)
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %ruler, align 8
  %62 = bitcast %struct._GtkWidget* %61 to %struct._GTypeInstance*
  %call80 = call i64 @gimp_ruler_get_type() #5
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call80)
  %63 = bitcast %struct._GTypeInstance* %call81 to %struct._GimpRuler*
  %64 = load i32, i32* @ruler_width, align 4
  %conv = sitofp i32 %64 to double
  %65 = load i32, i32* @ruler_width, align 4
  %conv82 = sitofp i32 %65 to double
  call void @gimp_ruler_set_range(%struct._GimpRuler* %63, double 0.000000e+00, double %conv, double %conv82)
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %67 = bitcast %struct._GtkWidget* %66 to %struct._GTypeInstance*
  %call83 = call i64 @gtk_table_get_type() #5
  %call84 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call83)
  %68 = bitcast %struct._GTypeInstance* %call84 to %struct._GtkTable*
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %ruler, align 8
  call void @gtk_table_attach(%struct._GtkTable* %68, %struct._GtkWidget* %69, i32 1, i32 3, i32 0, i32 1, i32 2, i32 2, i32 0, i32 0)
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %ruler, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %70)
  %call85 = call %struct._GtkWidget* @gimp_ruler_new(i32 1)
  store %struct._GtkWidget* %call85, %struct._GtkWidget** %ruler, align 8
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %ruler, align 8
  %72 = load i32, i32* @ruler_height, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %71, i32 32, i32 %72)
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %ruler, align 8
  %74 = bitcast %struct._GtkWidget* %73 to %struct._GTypeInstance*
  %call86 = call i64 @gimp_ruler_get_type() #5
  %call87 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call86)
  %75 = bitcast %struct._GTypeInstance* %call87 to %struct._GimpRuler*
  %76 = load i32, i32* @ruler_height, align 4
  %conv88 = sitofp i32 %76 to double
  %77 = load i32, i32* @ruler_height, align 4
  %conv89 = sitofp i32 %77 to double
  call void @gimp_ruler_set_range(%struct._GimpRuler* %75, double 0.000000e+00, double %conv88, double %conv89)
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %79 = bitcast %struct._GtkWidget* %78 to %struct._GTypeInstance*
  %call90 = call i64 @gtk_table_get_type() #5
  %call91 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call90)
  %80 = bitcast %struct._GTypeInstance* %call91 to %struct._GtkTable*
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %ruler, align 8
  call void @gtk_table_attach(%struct._GtkTable* %80, %struct._GtkWidget* %81, i32 0, i32 1, i32 1, i32 3, i32 2, i32 2, i32 0, i32 0)
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %ruler, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %82)
  %call92 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call92, %struct._GtkWidget** %vbox, align 8
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %84 = bitcast %struct._GtkWidget* %83 to %struct._GTypeInstance*
  %call93 = call i64 @gtk_table_get_type() #5
  %call94 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 %call93)
  %85 = bitcast %struct._GTypeInstance* %call94 to %struct._GtkTable*
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_table_attach(%struct._GtkTable* %85, %struct._GtkWidget* %86, i32 1, i32 2, i32 1, i32 2, i32 2, i32 2, i32 0, i32 0)
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %87)
  %call95 = call i8* @gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i32 0, i32 0)) #7
  %call96 = call %struct._GtkWidget* @gtk_label_new(i8* %call95)
  store %struct._GtkWidget* %call96, %struct._GtkWidget** %label, align 8
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %89 = bitcast %struct._GtkWidget* %88 to %struct._GTypeInstance*
  %call97 = call i64 @gtk_label_get_type() #5
  %call98 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %89, i64 %call97)
  %90 = bitcast %struct._GTypeInstance* %call98 to %struct._GtkLabel*
  call void @gtk_label_set_justify(%struct._GtkLabel* %90, i32 0)
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %92 = bitcast %struct._GtkWidget* %91 to %struct._GTypeInstance*
  %call99 = call i64 @gtk_misc_get_type() #5
  %call100 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %92, i64 %call99)
  %93 = bitcast %struct._GTypeInstance* %call100 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %93, float 0.000000e+00, float 5.000000e-01)
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %95 = bitcast %struct._GtkWidget* %94 to %struct._GTypeInstance*
  %call101 = call i64 @gtk_label_get_type() #5
  %call102 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %95, i64 %call101)
  %96 = bitcast %struct._GTypeInstance* %call102 to %struct._GtkLabel*
  call void (%struct._GtkLabel*, ...) @gimp_label_set_attributes(%struct._GtkLabel* %96, i32 15, double 1.200000e+00, i32 4, i32 700, i32 -1)
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %98 = bitcast %struct._GtkWidget* %97 to %struct._GTypeInstance*
  %call103 = call i64 @gtk_box_get_type() #5
  %call104 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %98, i64 %call103)
  %99 = bitcast %struct._GTypeInstance* %call104 to %struct._GtkBox*
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %99, %struct._GtkWidget* %100, i32 0, i32 0, i32 0)
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %101)
  %call105 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 0)
  store %struct._GtkWidget* %call105, %struct._GtkWidget** %hbox, align 8
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %103 = bitcast %struct._GtkWidget* %102 to %struct._GTypeInstance*
  %call106 = call i64 @gtk_box_get_type() #5
  %call107 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %103, i64 %call106)
  %104 = bitcast %struct._GTypeInstance* %call107 to %struct._GtkBox*
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %104, %struct._GtkWidget* %105, i32 0, i32 0, i32 0)
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %106)
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %resolution_entry.addr, align 8
  %108 = bitcast %struct._GtkWidget* %107 to %struct._GTypeInstance*
  %call108 = call i64 @gimp_size_entry_get_type() #5
  %call109 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %108, i64 %call108)
  %109 = bitcast %struct._GTypeInstance* %call109 to %struct._GimpSizeEntry*
  %call110 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %109, i32 0)
  store double %call110, double* @calibrate_xres, align 8
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %resolution_entry.addr, align 8
  %111 = bitcast %struct._GtkWidget* %110 to %struct._GTypeInstance*
  %call111 = call i64 @gimp_size_entry_get_type() #5
  %call112 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %111, i64 %call111)
  %112 = bitcast %struct._GTypeInstance* %call112 to %struct._GimpSizeEntry*
  %call113 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %112, i32 1)
  store double %call113, double* @calibrate_yres, align 8
  %call114 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0)) #7
  %113 = load i32, i32* @ruler_width, align 4
  %conv115 = sitofp i32 %113 to double
  %114 = load double, double* @calibrate_xres, align 8
  %call116 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0)) #7
  %115 = load i32, i32* @ruler_height, align 4
  %conv117 = sitofp i32 %115 to double
  %116 = load double, double* @calibrate_yres, align 8
  %call118 = call %struct._GtkWidget* @gimp_coordinates_new(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32 0, i32 0, i32 10, i32 1, i32 0, i32 0, i8* %call114, double %conv115, double %114, double 1.000000e+00, double 2.621440e+05, double 0.000000e+00, double 0.000000e+00, i8* %call116, double %conv117, double %116, double 1.000000e+00, double 2.621440e+05, double 0.000000e+00, double 0.000000e+00)
  store %struct._GtkWidget* %call118, %struct._GtkWidget** @calibrate_entry, align 8
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** @calibrate_entry, align 8
  %118 = bitcast %struct._GtkWidget* %117 to %struct._GTypeInstance*
  %call119 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %118, i64 80)
  %119 = bitcast %struct._GTypeInstance* %call119 to %struct._GObject*
  %call120 = call i8* @g_object_get_data(%struct._GObject* %119, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0))
  %120 = bitcast i8* %call120 to %struct._GTypeInstance*
  %call121 = call i64 @gtk_widget_get_type() #5
  %call122 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %120, i64 %call121)
  %121 = bitcast %struct._GTypeInstance* %call122 to %struct._GtkWidget*
  call void @gtk_widget_hide(%struct._GtkWidget* %121)
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %123 = bitcast %struct._GtkWidget* %122 to i8*
  %call123 = call i64 @g_signal_connect_data(i8* %123, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget**)* @gtk_widget_destroyed to void ()*), i8* bitcast (%struct._GtkWidget** @calibrate_entry to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %125 = bitcast %struct._GtkWidget* %124 to %struct._GTypeInstance*
  %call124 = call i64 @gtk_box_get_type() #5
  %call125 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %125, i64 %call124)
  %126 = bitcast %struct._GTypeInstance* %call125 to %struct._GtkBox*
  %127 = load %struct._GtkWidget*, %struct._GtkWidget** @calibrate_entry, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %126, %struct._GtkWidget* %127, i32 0, i32 0, i32 0)
  %128 = load %struct._GtkWidget*, %struct._GtkWidget** @calibrate_entry, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %128)
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %129)
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %131 = bitcast %struct._GtkWidget* %130 to %struct._GTypeInstance*
  %call126 = call i64 @gimp_dialog_get_type() #5
  %call127 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %131, i64 %call126)
  %132 = bitcast %struct._GTypeInstance* %call127 to %struct._GimpDialog*
  %call128 = call i32 @gimp_dialog_run(%struct._GimpDialog* %132)
  switch i32 %call128, label %sw.default [
    i32 -5, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end.78
  %133 = load %struct._GtkWidget*, %struct._GtkWidget** @calibrate_entry, align 8
  %134 = bitcast %struct._GtkWidget* %133 to %struct._GTypeInstance*
  %call132 = call i64 @gimp_size_entry_get_type() #5
  %call133 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %134, i64 %call132)
  %135 = bitcast %struct._GTypeInstance* %call133 to %struct._GimpSizeEntry*
  %call134 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %135, i32 0)
  store double %call134, double* %x, align 8
  %136 = load %struct._GtkWidget*, %struct._GtkWidget** @calibrate_entry, align 8
  %137 = bitcast %struct._GtkWidget* %136 to %struct._GTypeInstance*
  %call135 = call i64 @gimp_size_entry_get_type() #5
  %call136 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %137, i64 %call135)
  %138 = bitcast %struct._GTypeInstance* %call136 to %struct._GimpSizeEntry*
  %call137 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %138, i32 1)
  store double %call137, double* %y, align 8
  %139 = load i32, i32* @ruler_width, align 4
  %conv138 = sitofp i32 %139 to double
  %140 = load double, double* @calibrate_xres, align 8
  %mul = fmul double %conv138, %140
  %141 = load double, double* %x, align 8
  %div = fdiv double %mul, %141
  store double %div, double* @calibrate_xres, align 8
  %142 = load i32, i32* @ruler_height, align 4
  %conv139 = sitofp i32 %142 to double
  %143 = load double, double* @calibrate_yres, align 8
  %mul140 = fmul double %conv139, %143
  %144 = load double, double* %y, align 8
  %div141 = fdiv double %mul140, %144
  store double %div141, double* @calibrate_yres, align 8
  %145 = load %struct._GtkWidget*, %struct._GtkWidget** %resolution_entry.addr, align 8
  %146 = bitcast %struct._GtkWidget* %145 to %struct._GTypeInstance*
  %call142 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %146, i64 80)
  %147 = bitcast %struct._GTypeInstance* %call142 to %struct._GObject*
  %call143 = call i8* @g_object_get_data(%struct._GObject* %147, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0))
  %148 = bitcast i8* %call143 to %struct._GtkWidget*
  store %struct._GtkWidget* %148, %struct._GtkWidget** %chain_button, align 8
  %149 = load double, double* %x, align 8
  %150 = load double, double* %y, align 8
  %sub144 = fsub double %149, %150
  %cmp145 = fcmp olt double %sub144, 0.000000e+00
  br i1 %cmp145, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %151 = load double, double* %x, align 8
  %152 = load double, double* %y, align 8
  %sub147 = fsub double %151, %152
  %sub148 = fsub double -0.000000e+00, %sub147
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %153 = load double, double* %x, align 8
  %154 = load double, double* %y, align 8
  %sub149 = fsub double %153, %154
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub148, %cond.true ], [ %sub149, %cond.false ]
  %cmp150 = fcmp ogt double %cond, 5.000000e-03
  br i1 %cmp150, label %if.then.152, label %if.end.155

if.then.152:                                      ; preds = %cond.end
  %155 = load %struct._GtkWidget*, %struct._GtkWidget** %chain_button, align 8
  %156 = bitcast %struct._GtkWidget* %155 to %struct._GTypeInstance*
  %call153 = call i64 @gimp_chain_button_get_type() #5
  %call154 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %156, i64 %call153)
  %157 = bitcast %struct._GTypeInstance* %call154 to %struct._GimpChainButton*
  call void @gimp_chain_button_set_active(%struct._GimpChainButton* %157, i32 0)
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.152, %cond.end
  %158 = load %struct._GtkWidget*, %struct._GtkWidget** %resolution_entry.addr, align 8
  %159 = bitcast %struct._GtkWidget* %158 to %struct._GTypeInstance*
  %call156 = call i64 @gimp_size_entry_get_type() #5
  %call157 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %159, i64 %call156)
  %160 = bitcast %struct._GTypeInstance* %call157 to %struct._GimpSizeEntry*
  %161 = load double, double* @calibrate_xres, align 8
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %160, i32 0, double %161)
  %162 = load %struct._GtkWidget*, %struct._GtkWidget** %resolution_entry.addr, align 8
  %163 = bitcast %struct._GtkWidget* %162 to %struct._GTypeInstance*
  %call158 = call i64 @gimp_size_entry_get_type() #5
  %call159 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %163, i64 %call158)
  %164 = bitcast %struct._GTypeInstance* %call159 to %struct._GimpSizeEntry*
  %165 = load double, double* @calibrate_yres, align 8
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %164, i32 1, double %165)
  br label %sw.default

sw.default:                                       ; preds = %if.end.78, %if.end.155
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %166 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %166)
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.48, %if.else.44, %if.else.15, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_size_entry_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare i32 @gtk_widget_get_realized(%struct._GtkWidget*) #3

; Function Attrs: nounwind readnone
declare i64 @gdk_pixbuf_get_type() #1

declare %struct._GtkWidget* @gimp_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #3

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #1

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #3

declare i32 @gdk_screen_get_monitor_at_window(%struct._GdkScreen*, %struct._GdkDrawable*) #3

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #3

declare void @gdk_screen_get_monitor_geometry(%struct._GdkScreen*, i32, %struct._GdkRectangle*) #3

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #3

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #3

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #1

declare void @gtk_widget_show(%struct._GtkWidget*) #3

declare %struct._GtkWidget* @gtk_image_new_from_pixbuf(%struct._GdkPixbuf*) #3

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #1

declare %struct._GtkWidget* @gimp_ruler_new(i32) #3

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #3

declare void @gimp_ruler_set_range(%struct._GimpRuler*, double, double, double) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_ruler_get_type() #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #3

declare %struct._GtkWidget* @gtk_label_new(i8*) #3

declare void @gtk_label_set_justify(%struct._GtkLabel*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #1

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #1

declare void @gimp_label_set_attributes(%struct._GtkLabel*, ...) #3

declare double @gimp_size_entry_get_refval(%struct._GimpSizeEntry*, i32) #3

declare %struct._GtkWidget* @gimp_coordinates_new(i32, i8*, i32, i32, i32, i32, i32, i32, i8*, double, double, double, double, double, double, i8*, double, double, double, double, double, double) #3

declare void @gtk_widget_hide(%struct._GtkWidget*) #3

declare i8* @g_object_get_data(%struct._GObject*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

declare void @gtk_widget_destroyed(%struct._GtkWidget*, %struct._GtkWidget**) #3

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #3

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #1

declare void @gimp_chain_button_set_active(%struct._GimpChainButton*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_chain_button_get_type() #1

declare void @gimp_size_entry_set_refval(%struct._GimpSizeEntry*, i32, double) #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #3

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
