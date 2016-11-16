; ModuleID = './plug-ins/gimpressionist/sizemap.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppm = type { i32, i32, i8* }
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
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct.gimpressionist_vals_t = type { i32, double, double, i32, double, double, double, double, i32, double, double, double, i32, i32, [200 x i8], [200 x i8], %struct._GimpRGB, i32, i32, [50 x %struct.vector], i32, i32, double, double, double, i32, i32, i32, i32, i32, double, i32, double, double, i32, double, [50 x %struct.smvector], i32, double, i32, i32, i32, i32, double }
%struct._GimpRGB = type { double, double, double, double }
%struct.vector = type { double, double, double, double, double, double, i32 }
%struct.smvector = type { double, double, double, double }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkScale = type { %struct._GtkRange, i32, i8 }
%struct._GtkRange = type { %struct._GtkWidget, %struct._GtkAdjustment*, i32, i8, i32, i32, %struct._GdkRectangle, i32, i32, i32, i8, %struct._GtkRangeLayout*, %struct._GtkRangeStepTimer*, i32, i32, i32, %struct._GdkDrawable* }
%struct._GtkRangeLayout = type opaque
%struct._GtkRangeStepTimer = type opaque
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GimpPreviewArea = type { %struct._GtkDrawingArea, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }
%struct._GdkEventButton = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i32, %struct._GdkDevice*, double, double }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }

@update_vector_preview_backup = internal global %struct.ppm zeroinitializer, align 8
@update_vector_preview_sbuffer = internal global %struct.ppm zeroinitializer, align 8
@smwindow = internal global %struct._GtkWidget* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"Size Map Editor\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"gimp-gimpressionist\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"plug-in-gimpressionist\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"gtk-apply\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Smvectors\00", align 1
@.str.9 = private unnamed_addr constant [133 x i8] c"The smvector-field. Left-click to move selected smvector, Right-click to point it towards mouse, Middle-click to add a new smvector.\00", align 1
@smvectorprev = internal global %struct._GtkWidget* null, align 8
@.str.10 = private unnamed_addr constant [19 x i8] c"button-press-event\00", align 1
@smvectprevbrightadjust = internal global %struct._GtkAdjustment* null, align 8
@.str.11 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"Adjust the preview's brightness\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"Preview\00", align 1
@smpreviewprev = internal global %struct._GtkWidget* null, align 8
@.str.14 = private unnamed_addr constant [4 x i8] c"_<<\00", align 1
@prev_button = internal global %struct._GtkWidget* null, align 8
@.str.15 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"Select previous smvector\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"_>>\00", align 1
@next_button = internal global %struct._GtkWidget* null, align 8
@.str.18 = private unnamed_addr constant [21 x i8] c"Select next smvector\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"A_dd\00", align 1
@add_button = internal global %struct._GtkWidget* null, align 8
@.str.20 = private unnamed_addr constant [17 x i8] c"Add new smvector\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"_Kill\00", align 1
@kill_button = internal global %struct._GtkWidget* null, align 8
@.str.22 = private unnamed_addr constant [25 x i8] c"Delete selected smvector\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"_Size:\00", align 1
@.str.24 = private unnamed_addr constant [42 x i8] c"Change the angle of the selected smvector\00", align 1
@sizadjust = internal global %struct._GtkAdjustment* null, align 8
@.str.25 = private unnamed_addr constant [11 x i8] c"S_trength:\00", align 1
@.str.26 = private unnamed_addr constant [45 x i8] c"Change the strength of the selected smvector\00", align 1
@smstradjust = internal global %struct._GtkAdjustment* null, align 8
@.str.27 = private unnamed_addr constant [16 x i8] c"St_rength exp.:\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"Change the exponent of the strength\00", align 1
@smstrexpadjust = internal global %struct._GtkAdjustment* null, align 8
@.str.29 = private unnamed_addr constant [9 x i8] c"_Voronoi\00", align 1
@size_voronoi = internal global %struct._GtkWidget* null, align 8
@pcvals = external global %struct.gimpressionist_vals_t, align 8
@.str.30 = private unnamed_addr constant [83 x i8] c"Voronoi-mode makes only the smvector closest to the given point have any influence\00", align 1
@numsmvect = internal global i32 0, align 4
@smvector = internal global [50 x %struct.smvector] zeroinitializer, align 16
@selectedsmvector = internal global i32 0, align 4
@updatesmvectorprev.ok = internal global i32 0, align 4
@updatesmvectorprev.last_val = internal global double 0.000000e+00, align 8
@updatesmvectorprev.gray = private unnamed_addr constant [3 x i8] c"xxx", align 1
@updatesmvectorprev.red = private unnamed_addr constant [3 x i8] c"\FF\00\00", align 1
@updatesmvectorprev.white = private unnamed_addr constant [3 x i8] c"\FF\FF\FF", align 1
@updatesmpreviewprev.nsbuffer = internal global %struct.ppm zeroinitializer, align 8
@updatesmpreviewprev.gray = private unnamed_addr constant [3 x i8] c"xxx", align 1
@smadjignore = internal global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @size_map_free_resources() #0 {
entry:
  call void @ppm_kill(%struct.ppm* @update_vector_preview_backup)
  call void @ppm_kill(%struct.ppm* @update_vector_preview_sbuffer)
  ret void
}

declare void @ppm_kill(%struct.ppm*) #1

; Function Attrs: nounwind uwtable
define void @create_sizemap_dialog(%struct._GtkWidget* %parent) #0 {
entry:
  %parent.addr = alloca %struct._GtkWidget*, align 8
  %tmpw = alloca %struct._GtkWidget*, align 8
  %tmpw2 = alloca %struct._GtkWidget*, align 8
  %table1 = alloca %struct._GtkWidget*, align 8
  %table2 = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
  call void @initsmvectors()
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @smwindow, align 8
  %tobool = icmp ne %struct._GtkWidget* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @updatesmvectorprev()
  call void @updatesmpreviewprev()
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** @smwindow, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_window_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %3)
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0)) #4
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %call3 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %4)
  %call4 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), %struct._GtkWidget* %call3, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** @smwindow, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** @smwindow, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_dialog_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %7, i32 -5, i32 1, i32 -6, i32 -1)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** @smwindow, align 8
  %9 = bitcast %struct._GtkWidget* %8 to i8*
  %call7 = call i64 @g_signal_connect_data(i8* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, i8*)* @smresponse to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** @smwindow, align 8
  %11 = bitcast %struct._GtkWidget* %10 to i8*
  %call8 = call i64 @g_signal_connect_data(i8* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget**)* @gtk_widget_destroyed to void ()*), i8* bitcast (%struct._GtkWidget** @smwindow to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call9 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 5, i32 0)
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %table1, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %table1, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_container_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call10)
  %14 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %14, i32 6)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** @smwindow, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_dialog_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call12)
  %17 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkDialog*
  %call14 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %17)
  %18 = bitcast %struct._GtkWidget* %call14 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_box_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call15)
  %19 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkBox*
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %table1, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %19, %struct._GtkWidget* %20, i32 1, i32 1, i32 0)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %table1, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %21)
  %call17 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0)) #4
  %call18 = call %struct._GtkWidget* @gtk_frame_new(i8* %call17)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %tmpw, align 8
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %tmpw2, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_container_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call19)
  %24 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %24, i32 2)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %table1, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_table_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call21)
  %27 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkTable*
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_table_attach(%struct._GtkTable* %27, %struct._GtkWidget* %28, i32 0, i32 1, i32 0, i32 1, i32 1, i32 1, i32 0, i32 0)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %29)
  %call23 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 0)
  store %struct._GtkWidget* %call23, %struct._GtkWidget** %hbox, align 8
  store %struct._GtkWidget* %call23, %struct._GtkWidget** %tmpw, align 8
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw2, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_container_get_type() #5
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call24)
  %32 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkContainer*
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_container_add(%struct._GtkContainer* %32, %struct._GtkWidget* %33)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %34)
  %call26 = call %struct._GtkWidget* @gtk_event_box_new()
  store %struct._GtkWidget* %call26, %struct._GtkWidget** %tmpw, align 8
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.9, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %35, i8* %call27, i8* null)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_box_get_type() #5
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call28)
  %38 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkBox*
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %38, %struct._GtkWidget* %39, i32 0, i32 0, i32 0)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  store %struct._GtkWidget* %40, %struct._GtkWidget** %tmpw2, align 8
  %call30 = call %struct._GtkWidget* @gimp_preview_area_new()
  store %struct._GtkWidget* %call30, %struct._GtkWidget** @smvectorprev, align 8
  store %struct._GtkWidget* %call30, %struct._GtkWidget** %tmpw, align 8
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %41, i32 150, i32 150)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw2, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_container_get_type() #5
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call31)
  %44 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkContainer*
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_container_add(%struct._GtkContainer* %44, %struct._GtkWidget* %45)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %46)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw2, align 8
  call void @gtk_widget_add_events(%struct._GtkWidget* %47, i32 256)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw2, align 8
  %49 = bitcast %struct._GtkWidget* %48 to i8*
  %call33 = call i64 @g_signal_connect_data(i8* %49, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GdkEventButton*)* @smmapclick to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw2, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %50)
  %call34 = call %struct._GtkObject* @gtk_adjustment_new(double 5.000000e+01, double 0.000000e+00, double 1.000000e+02, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00)
  %51 = bitcast %struct._GtkObject* %call34 to %struct._GtkAdjustment*
  store %struct._GtkAdjustment* %51, %struct._GtkAdjustment** @smvectprevbrightadjust, align 8
  %52 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** @smvectprevbrightadjust, align 8
  %call35 = call %struct._GtkWidget* @gtk_scale_new(i32 1, %struct._GtkAdjustment* %52)
  store %struct._GtkWidget* %call35, %struct._GtkWidget** %tmpw, align 8
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %54 = bitcast %struct._GtkWidget* %53 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_scale_get_type() #5
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call36)
  %55 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkScale*
  call void @gtk_scale_set_draw_value(%struct._GtkScale* %55, i32 0)
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %57 = bitcast %struct._GtkWidget* %56 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_box_get_type() #5
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call38)
  %58 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkBox*
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %58, %struct._GtkWidget* %59, i32 0, i32 0, i32 0)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %60)
  %61 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** @smvectprevbrightadjust, align 8
  %62 = bitcast %struct._GtkAdjustment* %61 to i8*
  %call40 = call i64 @g_signal_connect_data(i8* %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), void ()* @updatesmvectorprev, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %call41 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %63, i8* %call41, i8* null)
  %call42 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0)) #4
  %call43 = call %struct._GtkWidget* @gtk_frame_new(i8* %call42)
  store %struct._GtkWidget* %call43, %struct._GtkWidget** %tmpw, align 8
  store %struct._GtkWidget* %call43, %struct._GtkWidget** %tmpw2, align 8
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %65 = bitcast %struct._GtkWidget* %64 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_container_get_type() #5
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call44)
  %66 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %66, i32 2)
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %table1, align 8
  %68 = bitcast %struct._GtkWidget* %67 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_table_get_type() #5
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call46)
  %69 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkTable*
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_table_attach(%struct._GtkTable* %69, %struct._GtkWidget* %70, i32 1, i32 2, i32 0, i32 1, i32 1, i32 1, i32 0, i32 0)
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %71)
  %call48 = call %struct._GtkWidget* @gimp_preview_area_new()
  store %struct._GtkWidget* %call48, %struct._GtkWidget** @smpreviewprev, align 8
  store %struct._GtkWidget* %call48, %struct._GtkWidget** %tmpw, align 8
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %72, i32 150, i32 150)
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw2, align 8
  %74 = bitcast %struct._GtkWidget* %73 to %struct._GTypeInstance*
  %call49 = call i64 @gtk_container_get_type() #5
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call49)
  %75 = bitcast %struct._GTypeInstance* %call50 to %struct._GtkContainer*
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_container_add(%struct._GtkContainer* %75, %struct._GtkWidget* %76)
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %77)
  %call51 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 0)
  store %struct._GtkWidget* %call51, %struct._GtkWidget** %hbox, align 8
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %79 = bitcast %struct._GtkWidget* %78 to %struct._GTypeInstance*
  %call52 = call i64 @gtk_box_get_type() #5
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call52)
  %80 = bitcast %struct._GTypeInstance* %call53 to %struct._GtkBox*
  call void @gtk_box_set_homogeneous(%struct._GtkBox* %80, i32 1)
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %82 = bitcast %struct._GtkWidget* %81 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_container_get_type() #5
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %82, i64 %call54)
  %83 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %83, i32 2)
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %table1, align 8
  %85 = bitcast %struct._GtkWidget* %84 to %struct._GTypeInstance*
  %call56 = call i64 @gtk_table_get_type() #5
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %85, i64 %call56)
  %86 = bitcast %struct._GTypeInstance* %call57 to %struct._GtkTable*
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %86, %struct._GtkWidget* %87, i32 0, i32 1, i32 1, i32 2)
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %88)
  %call58 = call %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0))
  store %struct._GtkWidget* %call58, %struct._GtkWidget** %tmpw, align 8
  store %struct._GtkWidget* %call58, %struct._GtkWidget** @prev_button, align 8
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %90 = bitcast %struct._GtkWidget* %89 to %struct._GTypeInstance*
  %call59 = call i64 @gtk_box_get_type() #5
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %90, i64 %call59)
  %91 = bitcast %struct._GTypeInstance* %call60 to %struct._GtkBox*
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %91, %struct._GtkWidget* %92, i32 0, i32 1, i32 0)
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %93)
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %95 = bitcast %struct._GtkWidget* %94 to i8*
  %call61 = call i64 @g_signal_connect_data(i8* %95, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @smprevclick to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %call62 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %96, i8* %call62, i8* null)
  %call63 = call %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0))
  store %struct._GtkWidget* %call63, %struct._GtkWidget** %tmpw, align 8
  store %struct._GtkWidget* %call63, %struct._GtkWidget** @next_button, align 8
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %98 = bitcast %struct._GtkWidget* %97 to %struct._GTypeInstance*
  %call64 = call i64 @gtk_box_get_type() #5
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %98, i64 %call64)
  %99 = bitcast %struct._GTypeInstance* %call65 to %struct._GtkBox*
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %99, %struct._GtkWidget* %100, i32 0, i32 1, i32 0)
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %101)
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %103 = bitcast %struct._GtkWidget* %102 to i8*
  %call66 = call i64 @g_signal_connect_data(i8* %103, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @smnextclick to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %call67 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %104, i8* %call67, i8* null)
  %call68 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0)) #4
  %call69 = call %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8* %call68)
  store %struct._GtkWidget* %call69, %struct._GtkWidget** %tmpw, align 8
  store %struct._GtkWidget* %call69, %struct._GtkWidget** @add_button, align 8
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %106 = bitcast %struct._GtkWidget* %105 to %struct._GTypeInstance*
  %call70 = call i64 @gtk_box_get_type() #5
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %106, i64 %call70)
  %107 = bitcast %struct._GTypeInstance* %call71 to %struct._GtkBox*
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %107, %struct._GtkWidget* %108, i32 0, i32 1, i32 0)
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %109)
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %111 = bitcast %struct._GtkWidget* %110 to i8*
  %call72 = call i64 @g_signal_connect_data(i8* %111, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @smaddclick to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %call73 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %112, i8* %call73, i8* null)
  %call74 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0)) #4
  %call75 = call %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8* %call74)
  store %struct._GtkWidget* %call75, %struct._GtkWidget** %tmpw, align 8
  store %struct._GtkWidget* %call75, %struct._GtkWidget** @kill_button, align 8
  %113 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %114 = bitcast %struct._GtkWidget* %113 to %struct._GTypeInstance*
  %call76 = call i64 @gtk_box_get_type() #5
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %114, i64 %call76)
  %115 = bitcast %struct._GTypeInstance* %call77 to %struct._GtkBox*
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %115, %struct._GtkWidget* %116, i32 0, i32 1, i32 0)
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %117)
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %119 = bitcast %struct._GtkWidget* %118 to i8*
  %call78 = call i64 @g_signal_connect_data(i8* %119, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @smdeleteclick to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %call79 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %120, i8* %call79, i8* null)
  %call80 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 4, i32 0)
  store %struct._GtkWidget* %call80, %struct._GtkWidget** %table2, align 8
  %121 = load %struct._GtkWidget*, %struct._GtkWidget** %table2, align 8
  %122 = bitcast %struct._GtkWidget* %121 to %struct._GTypeInstance*
  %call81 = call i64 @gtk_table_get_type() #5
  %call82 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %122, i64 %call81)
  %123 = bitcast %struct._GTypeInstance* %call82 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %123, i32 4)
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %table1, align 8
  %125 = bitcast %struct._GtkWidget* %124 to %struct._GTypeInstance*
  %call83 = call i64 @gtk_table_get_type() #5
  %call84 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %125, i64 %call83)
  %126 = bitcast %struct._GTypeInstance* %call84 to %struct._GtkTable*
  %127 = load %struct._GtkWidget*, %struct._GtkWidget** %table2, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %126, %struct._GtkWidget* %127, i32 0, i32 2, i32 2, i32 3)
  %128 = load %struct._GtkWidget*, %struct._GtkWidget** %table2, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %128)
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %table2, align 8
  %130 = bitcast %struct._GtkWidget* %129 to %struct._GTypeInstance*
  %call85 = call i64 @gtk_table_get_type() #5
  %call86 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %130, i64 %call85)
  %131 = bitcast %struct._GTypeInstance* %call86 to %struct._GtkTable*
  %call87 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0)) #4
  %call88 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.24, i32 0, i32 0)) #4
  %call89 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %131, i32 0, i32 0, i8* %call87, i32 150, i32 6, double 5.000000e+01, double 0.000000e+00, double 1.000000e+02, double 1.000000e+00, double 1.000000e+01, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call88, i8* null)
  %132 = bitcast %struct._GtkObject* %call89 to %struct._GtkAdjustment*
  store %struct._GtkAdjustment* %132, %struct._GtkAdjustment** @sizadjust, align 8
  %133 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** @sizadjust, align 8
  %134 = bitcast %struct._GtkAdjustment* %133 to i8*
  %call90 = call i64 @g_signal_connect_data(i8* %134, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @angsmadjmove to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %135 = load %struct._GtkWidget*, %struct._GtkWidget** %table2, align 8
  %136 = bitcast %struct._GtkWidget* %135 to %struct._GTypeInstance*
  %call91 = call i64 @gtk_table_get_type() #5
  %call92 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %136, i64 %call91)
  %137 = bitcast %struct._GTypeInstance* %call92 to %struct._GtkTable*
  %call93 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0)) #4
  %call94 = call i8* @gettext(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.26, i32 0, i32 0)) #4
  %call95 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %137, i32 0, i32 1, i8* %call93, i32 150, i32 6, double 1.000000e+00, double 1.000000e-01, double 5.000000e+00, double 1.000000e-01, double 5.000000e-01, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call94, i8* null)
  %138 = bitcast %struct._GtkObject* %call95 to %struct._GtkAdjustment*
  store %struct._GtkAdjustment* %138, %struct._GtkAdjustment** @smstradjust, align 8
  %139 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** @smstradjust, align 8
  %140 = bitcast %struct._GtkAdjustment* %139 to i8*
  %call96 = call i64 @g_signal_connect_data(i8* %140, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @strsmadjmove to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %141 = load %struct._GtkWidget*, %struct._GtkWidget** %table2, align 8
  %142 = bitcast %struct._GtkWidget* %141 to %struct._GTypeInstance*
  %call97 = call i64 @gtk_table_get_type() #5
  %call98 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %142, i64 %call97)
  %143 = bitcast %struct._GTypeInstance* %call98 to %struct._GtkTable*
  %call99 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i32 0, i32 0)) #4
  %call100 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.28, i32 0, i32 0)) #4
  %call101 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %143, i32 0, i32 2, i8* %call99, i32 150, i32 6, double 1.000000e+00, double 1.000000e-01, double 1.090000e+01, double 1.000000e-01, double 5.000000e-01, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call100, i8* null)
  %144 = bitcast %struct._GtkObject* %call101 to %struct._GtkAdjustment*
  store %struct._GtkAdjustment* %144, %struct._GtkAdjustment** @smstrexpadjust, align 8
  %145 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** @smstrexpadjust, align 8
  %146 = bitcast %struct._GtkAdjustment* %145 to i8*
  %call102 = call i64 @g_signal_connect_data(i8* %146, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @smstrexpsmadjmove to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call103 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0)) #4
  %call104 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call103)
  store %struct._GtkWidget* %call104, %struct._GtkWidget** %tmpw, align 8
  store %struct._GtkWidget* %call104, %struct._GtkWidget** @size_voronoi, align 8
  %147 = load %struct._GtkWidget*, %struct._GtkWidget** %table2, align 8
  %148 = bitcast %struct._GtkWidget* %147 to %struct._GTypeInstance*
  %call105 = call i64 @gtk_table_get_type() #5
  %call106 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %148, i64 %call105)
  %149 = bitcast %struct._GTypeInstance* %call106 to %struct._GtkTable*
  %150 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %149, %struct._GtkWidget* %150, i32 3, i32 4, i32 0, i32 1)
  %151 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %152 = bitcast %struct._GtkWidget* %151 to %struct._GTypeInstance*
  %call107 = call i64 @gtk_toggle_button_get_type() #5
  %call108 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %152, i64 %call107)
  %153 = bitcast %struct._GTypeInstance* %call108 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %153, i32 0)
  %154 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %154)
  %155 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %156 = bitcast %struct._GtkWidget* %155 to %struct._GTypeInstance*
  %call109 = call i64 @gtk_toggle_button_get_type() #5
  %call110 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %156, i64 %call109)
  %157 = bitcast %struct._GTypeInstance* %call110 to %struct._GtkToggleButton*
  %158 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 39), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %157, i32 %158)
  %159 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %160 = bitcast %struct._GtkWidget* %159 to i8*
  %call111 = call i64 @g_signal_connect_data(i8* %160, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @smstrexpsmadjmove to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %161 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %call112 = call i8* @gettext(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.30, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %161, i8* %call112, i8* null)
  %162 = load %struct._GtkWidget*, %struct._GtkWidget** @smwindow, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %162)
  call void @updatesmvectorprev()
  call void @updatesmpreviewprev()
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @initsmvectors() #0 {
entry:
  %i = alloca i32, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 37), align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 37), align 4
  store i32 %1, i32* @numsmvect, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* @numsmvect, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [50 x %struct.smvector], [50 x %struct.smvector]* @smvector, i32 0, i64 %idxprom
  %5 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [50 x %struct.smvector], [50 x %struct.smvector]* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 36), i32 0, i64 %idxprom1
  %6 = bitcast %struct.smvector* %arrayidx to i8*
  %7 = bitcast %struct.smvector* %arrayidx2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 32, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 1, i32* @numsmvect, align 4
  store double 5.000000e-01, double* getelementptr inbounds ([50 x %struct.smvector], [50 x %struct.smvector]* @smvector, i32 0, i64 0, i32 0), align 8
  store double 5.000000e-01, double* getelementptr inbounds ([50 x %struct.smvector], [50 x %struct.smvector]* @smvector, i32 0, i64 0, i32 1), align 8
  store double 0.000000e+00, double* getelementptr inbounds ([50 x %struct.smvector], [50 x %struct.smvector]* @smvector, i32 0, i64 0, i32 2), align 8
  store double 1.000000e+00, double* getelementptr inbounds ([50 x %struct.smvector], [50 x %struct.smvector]* @smvector, i32 0, i64 0, i32 3), align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %9 = load i32, i32* @selectedsmvector, align 4
  %10 = load i32, i32* @numsmvect, align 4
  %cmp3 = icmp sge i32 %9, %10
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %11 = load i32, i32* @numsmvect, align 4
  %sub = sub nsw i32 %11, 1
  store i32 %sub, i32* @selectedsmvector, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @updatesmvectorprev() #0 {
entry:
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %val = alloca double, align 8
  %gray = alloca [3 x i8], align 1
  %red = alloca [3 x i8], align 1
  %white = alloca [3 x i8], align 1
  %0 = bitcast [3 x i8]* %gray to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @updatesmvectorprev.gray, i32 0, i32 0), i64 3, i32 1, i1 false)
  %1 = bitcast [3 x i8]* %red to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @updatesmvectorprev.red, i32 0, i32 0), i64 3, i32 1, i1 false)
  %2 = bitcast [3 x i8]* %white to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @updatesmvectorprev.white, i32 0, i32 0), i64 3, i32 1, i1 false)
  %3 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** @smvectprevbrightadjust, align 8
  %tobool = icmp ne %struct._GtkAdjustment* %3, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** @smvectprevbrightadjust, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %4)
  %div = fdiv double %call, 1.000000e+02
  %sub = fsub double 1.000000e+00, %div
  store double %sub, double* %val, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store double 5.000000e-01, double* %val, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* @updatesmvectorprev.ok, align 4
  %tobool1 = icmp ne i32 %5, 0
  br i1 %tobool1, label %lor.lhs.false, label %if.then.2

lor.lhs.false:                                    ; preds = %if.end
  %6 = load double, double* %val, align 8
  %7 = load double, double* @updatesmvectorprev.last_val, align 8
  %cmp = fcmp une double %6, %7
  br i1 %cmp, label %if.then.2, label %if.end.10

if.then.2:                                        ; preds = %lor.lhs.false, %if.end
  call void @infile_copy_to_ppm(%struct.ppm* @update_vector_preview_backup)
  %8 = load double, double* %val, align 8
  %conv = fptrunc double %8 to float
  call void @ppm_apply_brightness(%struct.ppm* @update_vector_preview_backup, float %conv, i32 1, i32 1, i32 1)
  %9 = load i32, i32* getelementptr inbounds (%struct.ppm, %struct.ppm* @update_vector_preview_backup, i32 0, i32 0), align 4
  %cmp3 = icmp ne i32 %9, 150
  br i1 %cmp3, label %if.then.8, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %if.then.2
  %10 = load i32, i32* getelementptr inbounds (%struct.ppm, %struct.ppm* @update_vector_preview_backup, i32 0, i32 1), align 4
  %cmp6 = icmp ne i32 %10, 150
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.lhs.false.5, %if.then.2
  call void @resize_fast(%struct.ppm* @update_vector_preview_backup, i32 150, i32 150)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %lor.lhs.false.5
  store i32 1, i32* @updatesmvectorprev.ok, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %lor.lhs.false
  call void @ppm_copy(%struct.ppm* @update_vector_preview_backup, %struct.ppm* @update_vector_preview_sbuffer)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* @numsmvect, align 4
  %cmp11 = icmp slt i32 %11, %12
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds [50 x %struct.smvector], [50 x %struct.smvector]* @smvector, i32 0, i64 %idxprom
  %x13 = getelementptr inbounds %struct.smvector, %struct.smvector* %arrayidx, i32 0, i32 0
  %14 = load double, double* %x13, align 8
  %mul = fmul double %14, 1.500000e+02
  %conv14 = fptosi double %mul to i32
  store i32 %conv14, i32* %x, align 4
  %15 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %15 to i64
  %arrayidx16 = getelementptr inbounds [50 x %struct.smvector], [50 x %struct.smvector]* @smvector, i32 0, i64 %idxprom15
  %y17 = getelementptr inbounds %struct.smvector, %struct.smvector* %arrayidx16, i32 0, i32 1
  %16 = load double, double* %y17, align 8
  %mul18 = fmul double %16, 1.500000e+02
  %conv19 = fptosi double %mul18 to i32
  store i32 %conv19, i32* %y, align 4
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* @selectedsmvector, align 4
  %cmp20 = icmp eq i32 %17, %18
  br i1 %cmp20, label %if.then.22, label %if.else.35

if.then.22:                                       ; preds = %for.body
  %19 = load i32, i32* %x, align 4
  %sub23 = sub nsw i32 %19, 5
  %conv24 = sitofp i32 %sub23 to float
  %20 = load i32, i32* %y, align 4
  %conv25 = sitofp i32 %20 to float
  %21 = load i32, i32* %x, align 4
  %add = add nsw i32 %21, 5
  %conv26 = sitofp i32 %add to float
  %22 = load i32, i32* %y, align 4
  %conv27 = sitofp i32 %22 to float
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %red, i32 0, i32 0
  call void @ppm_drawline(%struct.ppm* @update_vector_preview_sbuffer, float %conv24, float %conv25, float %conv26, float %conv27, i8* %arraydecay)
  %23 = load i32, i32* %x, align 4
  %conv28 = sitofp i32 %23 to float
  %24 = load i32, i32* %y, align 4
  %sub29 = sub nsw i32 %24, 5
  %conv30 = sitofp i32 %sub29 to float
  %25 = load i32, i32* %x, align 4
  %conv31 = sitofp i32 %25 to float
  %26 = load i32, i32* %y, align 4
  %add32 = add nsw i32 %26, 5
  %conv33 = sitofp i32 %add32 to float
  %arraydecay34 = getelementptr inbounds [3 x i8], [3 x i8]* %red, i32 0, i32 0
  call void @ppm_drawline(%struct.ppm* @update_vector_preview_sbuffer, float %conv28, float %conv30, float %conv31, float %conv33, i8* %arraydecay34)
  br label %if.end.50

if.else.35:                                       ; preds = %for.body
  %27 = load i32, i32* %x, align 4
  %sub36 = sub nsw i32 %27, 5
  %conv37 = sitofp i32 %sub36 to float
  %28 = load i32, i32* %y, align 4
  %conv38 = sitofp i32 %28 to float
  %29 = load i32, i32* %x, align 4
  %add39 = add nsw i32 %29, 5
  %conv40 = sitofp i32 %add39 to float
  %30 = load i32, i32* %y, align 4
  %conv41 = sitofp i32 %30 to float
  %arraydecay42 = getelementptr inbounds [3 x i8], [3 x i8]* %gray, i32 0, i32 0
  call void @ppm_drawline(%struct.ppm* @update_vector_preview_sbuffer, float %conv37, float %conv38, float %conv40, float %conv41, i8* %arraydecay42)
  %31 = load i32, i32* %x, align 4
  %conv43 = sitofp i32 %31 to float
  %32 = load i32, i32* %y, align 4
  %sub44 = sub nsw i32 %32, 5
  %conv45 = sitofp i32 %sub44 to float
  %33 = load i32, i32* %x, align 4
  %conv46 = sitofp i32 %33 to float
  %34 = load i32, i32* %y, align 4
  %add47 = add nsw i32 %34, 5
  %conv48 = sitofp i32 %add47 to float
  %arraydecay49 = getelementptr inbounds [3 x i8], [3 x i8]* %gray, i32 0, i32 0
  call void @ppm_drawline(%struct.ppm* @update_vector_preview_sbuffer, float %conv43, float %conv45, float %conv46, float %conv48, i8* %arraydecay49)
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.35, %if.then.22
  %35 = load i32, i32* %x, align 4
  %conv51 = sitofp i32 %35 to float
  %36 = load i32, i32* %y, align 4
  %conv52 = sitofp i32 %36 to float
  %arraydecay53 = getelementptr inbounds [3 x i8], [3 x i8]* %white, i32 0, i32 0
  call void @ppm_put_rgb(%struct.ppm* @update_vector_preview_sbuffer, float %conv51, float %conv52, i8* %arraydecay53)
  br label %for.inc

for.inc:                                          ; preds = %if.end.50
  %37 = load i32, i32* %i, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** @smvectorprev, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call54 = call i64 @gimp_preview_area_get_type() #5
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call54)
  %40 = bitcast %struct._GTypeInstance* %call55 to %struct._GimpPreviewArea*
  %41 = load i8*, i8** getelementptr inbounds (%struct.ppm, %struct.ppm* @update_vector_preview_sbuffer, i32 0, i32 2), align 8
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %40, i32 0, i32 0, i32 150, i32 150, i32 0, i8* %41, i32 450)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** @prev_button, align 8
  %43 = load i32, i32* @numsmvect, align 4
  %cmp56 = icmp sgt i32 %43, 1
  %conv57 = zext i1 %cmp56 to i32
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %42, i32 %conv57)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** @next_button, align 8
  %45 = load i32, i32* @numsmvect, align 4
  %cmp58 = icmp sgt i32 %45, 1
  %conv59 = zext i1 %cmp58 to i32
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %44, i32 %conv59)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** @add_button, align 8
  %47 = load i32, i32* @numsmvect, align 4
  %cmp60 = icmp slt i32 %47, 50
  %conv61 = zext i1 %cmp60 to i32
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %46, i32 %conv61)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** @kill_button, align 8
  %49 = load i32, i32* @numsmvect, align 4
  %cmp62 = icmp sgt i32 %49, 1
  %conv63 = zext i1 %cmp62 to i32
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %48, i32 %conv63)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @updatesmpreviewprev() #0 {
entry:
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %black = alloca [3 x i8], align 1
  %gray = alloca [3 x i8], align 1
  %siz = alloca double, align 8
  %0 = bitcast [3 x i8]* %black to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 3, i32 1, i1 false)
  %1 = bitcast [3 x i8]* %gray to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @updatesmpreviewprev.gray, i32 0, i32 0), i64 3, i32 1, i1 false)
  %2 = load i8*, i8** getelementptr inbounds (%struct.ppm, %struct.ppm* @updatesmpreviewprev.nsbuffer, i32 0, i32 2), align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @ppm_new(%struct.ppm* @updatesmpreviewprev.nsbuffer, i32 150, i32 150)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %black, i32 0, i32 0
  call void @fill(%struct.ppm* @updatesmpreviewprev.nsbuffer, i8* %arraydecay)
  store i32 6, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.58, %if.end
  %3 = load i32, i32* %y, align 4
  %cmp1 = icmp slt i32 %3, 146
  br i1 %cmp1, label %for.body, label %for.end.60

for.body:                                         ; preds = %for.cond
  store i32 6, i32* %x, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %4 = load i32, i32* %x, align 4
  %cmp3 = icmp slt i32 %4, 146
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %5 = load i32, i32* %x, align 4
  %conv = sitofp i32 %5 to double
  %div = fdiv double %conv, 1.500000e+02
  %6 = load i32, i32* %y, align 4
  %conv5 = sitofp i32 %6 to double
  %div6 = fdiv double %conv5, 1.500000e+02
  %call = call double @getsiz_from_gui(double %div, double %div6)
  %mul = fmul double 5.000000e+00, %call
  store double %mul, double* %siz, align 8
  %7 = load i32, i32* %x, align 4
  %conv7 = sitofp i32 %7 to double
  %8 = load double, double* %siz, align 8
  %sub = fsub double %conv7, %8
  %conv8 = fptrunc double %sub to float
  %9 = load i32, i32* %y, align 4
  %conv9 = sitofp i32 %9 to double
  %10 = load double, double* %siz, align 8
  %sub10 = fsub double %conv9, %10
  %conv11 = fptrunc double %sub10 to float
  %11 = load i32, i32* %x, align 4
  %conv12 = sitofp i32 %11 to double
  %12 = load double, double* %siz, align 8
  %add = fadd double %conv12, %12
  %conv13 = fptrunc double %add to float
  %13 = load i32, i32* %y, align 4
  %conv14 = sitofp i32 %13 to double
  %14 = load double, double* %siz, align 8
  %sub15 = fsub double %conv14, %14
  %conv16 = fptrunc double %sub15 to float
  %arraydecay17 = getelementptr inbounds [3 x i8], [3 x i8]* %gray, i32 0, i32 0
  call void @ppm_drawline(%struct.ppm* @updatesmpreviewprev.nsbuffer, float %conv8, float %conv11, float %conv13, float %conv16, i8* %arraydecay17)
  %15 = load i32, i32* %x, align 4
  %conv18 = sitofp i32 %15 to double
  %16 = load double, double* %siz, align 8
  %add19 = fadd double %conv18, %16
  %conv20 = fptrunc double %add19 to float
  %17 = load i32, i32* %y, align 4
  %conv21 = sitofp i32 %17 to double
  %18 = load double, double* %siz, align 8
  %sub22 = fsub double %conv21, %18
  %conv23 = fptrunc double %sub22 to float
  %19 = load i32, i32* %x, align 4
  %conv24 = sitofp i32 %19 to double
  %20 = load double, double* %siz, align 8
  %add25 = fadd double %conv24, %20
  %conv26 = fptrunc double %add25 to float
  %21 = load i32, i32* %y, align 4
  %conv27 = sitofp i32 %21 to double
  %22 = load double, double* %siz, align 8
  %add28 = fadd double %conv27, %22
  %conv29 = fptrunc double %add28 to float
  %arraydecay30 = getelementptr inbounds [3 x i8], [3 x i8]* %gray, i32 0, i32 0
  call void @ppm_drawline(%struct.ppm* @updatesmpreviewprev.nsbuffer, float %conv20, float %conv23, float %conv26, float %conv29, i8* %arraydecay30)
  %23 = load i32, i32* %x, align 4
  %conv31 = sitofp i32 %23 to double
  %24 = load double, double* %siz, align 8
  %add32 = fadd double %conv31, %24
  %conv33 = fptrunc double %add32 to float
  %25 = load i32, i32* %y, align 4
  %conv34 = sitofp i32 %25 to double
  %26 = load double, double* %siz, align 8
  %add35 = fadd double %conv34, %26
  %conv36 = fptrunc double %add35 to float
  %27 = load i32, i32* %x, align 4
  %conv37 = sitofp i32 %27 to double
  %28 = load double, double* %siz, align 8
  %sub38 = fsub double %conv37, %28
  %conv39 = fptrunc double %sub38 to float
  %29 = load i32, i32* %y, align 4
  %conv40 = sitofp i32 %29 to double
  %30 = load double, double* %siz, align 8
  %add41 = fadd double %conv40, %30
  %conv42 = fptrunc double %add41 to float
  %arraydecay43 = getelementptr inbounds [3 x i8], [3 x i8]* %gray, i32 0, i32 0
  call void @ppm_drawline(%struct.ppm* @updatesmpreviewprev.nsbuffer, float %conv33, float %conv36, float %conv39, float %conv42, i8* %arraydecay43)
  %31 = load i32, i32* %x, align 4
  %conv44 = sitofp i32 %31 to double
  %32 = load double, double* %siz, align 8
  %sub45 = fsub double %conv44, %32
  %conv46 = fptrunc double %sub45 to float
  %33 = load i32, i32* %y, align 4
  %conv47 = sitofp i32 %33 to double
  %34 = load double, double* %siz, align 8
  %add48 = fadd double %conv47, %34
  %conv49 = fptrunc double %add48 to float
  %35 = load i32, i32* %x, align 4
  %conv50 = sitofp i32 %35 to double
  %36 = load double, double* %siz, align 8
  %sub51 = fsub double %conv50, %36
  %conv52 = fptrunc double %sub51 to float
  %37 = load i32, i32* %y, align 4
  %conv53 = sitofp i32 %37 to double
  %38 = load double, double* %siz, align 8
  %sub54 = fsub double %conv53, %38
  %conv55 = fptrunc double %sub54 to float
  %arraydecay56 = getelementptr inbounds [3 x i8], [3 x i8]* %gray, i32 0, i32 0
  call void @ppm_drawline(%struct.ppm* @updatesmpreviewprev.nsbuffer, float %conv46, float %conv49, float %conv52, float %conv55, i8* %arraydecay56)
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %39 = load i32, i32* %x, align 4
  %add57 = add nsw i32 %39, 10
  store i32 %add57, i32* %x, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.58

for.inc.58:                                       ; preds = %for.end
  %40 = load i32, i32* %y, align 4
  %add59 = add nsw i32 %40, 10
  store i32 %add59, i32* %y, align 4
  br label %for.cond

for.end.60:                                       ; preds = %for.cond
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** @smpreviewprev, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call61 = call i64 @gimp_preview_area_get_type() #5
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call61)
  %43 = bitcast %struct._GTypeInstance* %call62 to %struct._GimpPreviewArea*
  %44 = load i8*, i8** getelementptr inbounds (%struct.ppm, %struct.ppm* @updatesmpreviewprev.nsbuffer, i32 0, i32 2), align 8
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %43, i32 0, i32 0, i32 150, i32 150, i32 0, i8* %44, i32 450)
  ret void
}

declare void @gtk_window_present(%struct._GtkWindow*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

declare %struct._GtkWidget* @gimp_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #1

declare void @gimp_standard_help_func(i8*, i8*) #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #2

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @smresponse(%struct._GtkWidget* %widget, i32 %response_id, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 1, label %sw.bb
    i32 -5, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @numsmvect, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [50 x %struct.smvector], [50 x %struct.smvector]* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 36), i32 0, i64 %idxprom
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [50 x %struct.smvector], [50 x %struct.smvector]* @smvector, i32 0, i64 %idxprom1
  %5 = bitcast %struct.smvector* %arrayidx to i8*
  %6 = bitcast %struct.smvector* %arrayidx2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 32, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* @numsmvect, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 37), align 4
  %9 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** @smstrexpadjust, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %9)
  store double %call, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 38), align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** @size_voronoi, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_toggle_button_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call3)
  %12 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkToggleButton*
  %call5 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %12)
  store i32 %call5, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 39), align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %for.end
  %13 = load i32, i32* %response_id.addr, align 4
  %cmp6 = icmp ne i32 %13, 1
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog
  ret void
}

declare void @gtk_widget_destroyed(%struct._GtkWidget*, %struct._GtkWidget**) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_frame_new(i8*) #1

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #2

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_event_box_new() #1

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

declare %struct._GtkWidget* @gimp_preview_area_new() #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_widget_add_events(%struct._GtkWidget*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @smmapclick(%struct._GtkWidget* %w, %struct._GdkEventButton* %event) #0 {
entry:
  %w.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventButton*, align 8
  store %struct._GtkWidget* %w, %struct._GtkWidget** %w.addr, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  %0 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %0, i32 0, i32 8
  %1 = load i32, i32* %button, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %x = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %2, i32 0, i32 4
  %3 = load double, double* %x, align 8
  %div = fdiv double %3, 1.500000e+02
  %4 = load i32, i32* @selectedsmvector, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [50 x %struct.smvector], [50 x %struct.smvector]* @smvector, i32 0, i64 %idxprom
  %x1 = getelementptr inbounds %struct.smvector, %struct.smvector* %arrayidx, i32 0, i32 0
  store double %div, double* %x1, align 8
  %5 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %y = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %5, i32 0, i32 5
  %6 = load double, double* %y, align 8
  %div2 = fdiv double %6, 1.500000e+02
  %7 = load i32, i32* @selectedsmvector, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds [50 x %struct.smvector], [50 x %struct.smvector]* @smvector, i32 0, i64 %idxprom3
  %y5 = getelementptr inbounds %struct.smvector, %struct.smvector* %arrayidx4, i32 0, i32 1
  store double %div2, double* %y5, align 8
  br label %if.end.26

if.else:                                          ; preds = %entry
  %8 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %button6 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %8, i32 0, i32 8
  %9 = load i32, i32* %button6, align 4
  %cmp7 = icmp eq i32 %9, 2
  br i1 %cmp7, label %if.then.8, label %if.end.25

if.then.8:                                        ; preds = %if.else
  %10 = load i32, i32* @numsmvect, align 4
  %add = add nsw i32 %10, 1
  %cmp9 = icmp eq i32 %add, 50
  br i1 %cmp9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then.8
  br label %return

if.end:                                           ; preds = %if.then.8
  %11 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %x11 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %11, i32 0, i32 4
  %12 = load double, double* %x11, align 8
  %div12 = fdiv double %12, 1.500000e+02
  %13 = load i32, i32* @numsmvect, align 4
  %idxprom13 = sext i32 %13 to i64
  %arrayidx14 = getelementptr inbounds [50 x %struct.smvector], [50 x %struct.smvector]* @smvector, i32 0, i64 %idxprom13
  %x15 = getelementptr inbounds %struct.smvector, %struct.smvector* %arrayidx14, i32 0, i32 0
  store double %div12, double* %x15, align 8
  %14 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %y16 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %14, i32 0, i32 5
  %15 = load double, double* %y16, align 8
  %div17 = fdiv double %15, 1.500000e+02
  %16 = load i32, i32* @numsmvect, align 4
  %idxprom18 = sext i32 %16 to i64
  %arrayidx19 = getelementptr inbounds [50 x %struct.smvector], [50 x %struct.smvector]* @smvector, i32 0, i64 %idxprom18
  %y20 = getelementptr inbounds %struct.smvector, %struct.smvector* %arrayidx19, i32 0, i32 1
  store double %div17, double* %y20, align 8
  %17 = load i32, i32* @numsmvect, align 4
  %idxprom21 = sext i32 %17 to i64
  %arrayidx22 = getelementptr inbounds [50 x %struct.smvector], [50 x %struct.smvector]* @smvector, i32 0, i64 %idxprom21
  %siz = getelementptr inbounds %struct.smvector, %struct.smvector* %arrayidx22, i32 0, i32 2
  store double 0.000000e+00, double* %siz, align 8
  %18 = load i32, i32* @numsmvect, align 4
  %idxprom23 = sext i32 %18 to i64
  %arrayidx24 = getelementptr inbounds [50 x %struct.smvector], [50 x %struct.smvector]* @smvector, i32 0, i64 %idxprom23
  %str = getelementptr inbounds %struct.smvector, %struct.smvector* %arrayidx24, i32 0, i32 3
  store double 1.000000e+00, double* %str, align 8
  %19 = load i32, i32* @numsmvect, align 4
  store i32 %19, i32* @selectedsmvector, align 4
  %20 = load i32, i32* @numsmvect, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* @numsmvect, align 4
  call void @updatesmsliders()
  br label %if.end.25

if.end.25:                                        ; preds = %if.end, %if.else
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then
  call void @updatesmvectorprev()
  call void @updatesmpreviewprev()
  br label %return

return:                                           ; preds = %if.end.26, %if.then.10
  ret void
}

declare %struct._GtkObject* @gtk_adjustment_new(double, double, double, double, double, double) #1

declare %struct._GtkWidget* @gtk_scale_new(i32, %struct._GtkAdjustment*) #1

declare void @gtk_scale_set_draw_value(%struct._GtkScale*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scale_get_type() #2

declare void @gtk_box_set_homogeneous(%struct._GtkBox*, i32) #1

declare void @gtk_table_attach_defaults(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @smprevclick(%struct._GtkWidget* %w, i8* %data) #0 {
entry:
  %w.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %w, %struct._GtkWidget** %w.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* @selectedsmvector, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* @selectedsmvector, align 4
  %1 = load i32, i32* @selectedsmvector, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @numsmvect, align 4
  %sub = sub nsw i32 %2, 1
  store i32 %sub, i32* @selectedsmvector, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @updatesmsliders()
  call void @updatesmvectorprev()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @smnextclick(%struct._GtkWidget* %w, i8* %data) #0 {
entry:
  %w.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %w, %struct._GtkWidget** %w.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* @selectedsmvector, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @selectedsmvector, align 4
  %1 = load i32, i32* @selectedsmvector, align 4
  %2 = load i32, i32* @numsmvect, align 4
  %cmp = icmp eq i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* @selectedsmvector, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @updatesmsliders()
  call void @updatesmvectorprev()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @smaddclick(%struct._GtkWidget* %w, i8* %data) #0 {
entry:
  %w.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %w, %struct._GtkWidget** %w.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* @numsmvect, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [50 x %struct.smvector], [50 x %struct.smvector]* @smvector, i32 0, i64 %idxprom
  %x = getelementptr inbounds %struct.smvector, %struct.smvector* %arrayidx, i32 0, i32 0
  store double 5.000000e-01, double* %x, align 8
  %1 = load i32, i32* @numsmvect, align 4
  %idxprom1 = sext i32 %1 to i64
  %arrayidx2 = getelementptr inbounds [50 x %struct.smvector], [50 x %struct.smvector]* @smvector, i32 0, i64 %idxprom1
  %y = getelementptr inbounds %struct.smvector, %struct.smvector* %arrayidx2, i32 0, i32 1
  store double 5.000000e-01, double* %y, align 8
  %2 = load i32, i32* @numsmvect, align 4
  %idxprom3 = sext i32 %2 to i64
  %arrayidx4 = getelementptr inbounds [50 x %struct.smvector], [50 x %struct.smvector]* @smvector, i32 0, i64 %idxprom3
  %siz = getelementptr inbounds %struct.smvector, %struct.smvector* %arrayidx4, i32 0, i32 2
  store double 5.000000e+01, double* %siz, align 8
  %3 = load i32, i32* @numsmvect, align 4
  %idxprom5 = sext i32 %3 to i64
  %arrayidx6 = getelementptr inbounds [50 x %struct.smvector], [50 x %struct.smvector]* @smvector, i32 0, i64 %idxprom5
  %str = getelementptr inbounds %struct.smvector, %struct.smvector* %arrayidx6, i32 0, i32 3
  store double 1.000000e+00, double* %str, align 8
  %4 = load i32, i32* @numsmvect, align 4
  store i32 %4, i32* @selectedsmvector, align 4
  %5 = load i32, i32* @numsmvect, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* @numsmvect, align 4
  call void @updatesmsliders()
  call void @updatesmvectorprev()
  call void @updatesmpreviewprev()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @smdeleteclick(%struct._GtkWidget* %w, i8* %data) #0 {
entry:
  %w.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct._GtkWidget* %w, %struct._GtkWidget** %w.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* @selectedsmvector, align 4
  store i32 %0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @numsmvect, align 4
  %sub = sub nsw i32 %2, 1
  %cmp = icmp slt i32 %1, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [50 x %struct.smvector], [50 x %struct.smvector]* @smvector, i32 0, i64 %idxprom
  %4 = load i32, i32* %i, align 4
  %add = add nsw i32 %4, 1
  %idxprom1 = sext i32 %add to i64
  %arrayidx2 = getelementptr inbounds [50 x %struct.smvector], [50 x %struct.smvector]* @smvector, i32 0, i64 %idxprom1
  %5 = bitcast %struct.smvector* %arrayidx to i8*
  %6 = bitcast %struct.smvector* %arrayidx2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 32, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* @numsmvect, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* @numsmvect, align 4
  %9 = load i32, i32* @selectedsmvector, align 4
  %10 = load i32, i32* @numsmvect, align 4
  %cmp3 = icmp sge i32 %9, %10
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store i32 0, i32* @selectedsmvector, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  call void @updatesmsliders()
  call void @updatesmvectorprev()
  call void @updatesmpreviewprev()
  ret void
}

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @angsmadjmove(%struct._GtkWidget* %w, i8* %data) #0 {
entry:
  %w.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %w, %struct._GtkWidget** %w.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* @smadjignore, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** @sizadjust, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %1)
  %2 = load i32, i32* @selectedsmvector, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [50 x %struct.smvector], [50 x %struct.smvector]* @smvector, i32 0, i64 %idxprom
  %siz = getelementptr inbounds %struct.smvector, %struct.smvector* %arrayidx, i32 0, i32 2
  store double %call, double* %siz, align 8
  call void @updatesmvectorprev()
  call void @updatesmpreviewprev()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @strsmadjmove(%struct._GtkWidget* %w, i8* %data) #0 {
entry:
  %w.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %w, %struct._GtkWidget** %w.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* @smadjignore, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** @smstradjust, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %1)
  %2 = load i32, i32* @selectedsmvector, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [50 x %struct.smvector], [50 x %struct.smvector]* @smvector, i32 0, i64 %idxprom
  %str = getelementptr inbounds %struct.smvector, %struct.smvector* %arrayidx, i32 0, i32 3
  store double %call, double* %str, align 8
  call void @updatesmvectorprev()
  call void @updatesmpreviewprev()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @smstrexpsmadjmove(%struct._GtkWidget* %w, i8* %data) #0 {
entry:
  %w.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %w, %struct._GtkWidget** %w.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* @smadjignore, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @updatesmvectorprev()
  call void @updatesmpreviewprev()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

declare void @infile_copy_to_ppm(%struct.ppm*) #1

declare void @ppm_apply_brightness(%struct.ppm*, float, i32, i32, i32) #1

declare void @resize_fast(%struct.ppm*, i32, i32) #1

declare void @ppm_copy(%struct.ppm*, %struct.ppm*) #1

declare void @ppm_drawline(%struct.ppm*, float, float, float, float, i8*) #1

declare void @ppm_put_rgb(%struct.ppm*, float, float, i8*) #1

declare void @gimp_preview_area_draw(%struct._GimpPreviewArea*, i32, i32, i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_area_get_type() #2

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare void @ppm_new(%struct.ppm*, i32, i32) #1

declare void @fill(%struct.ppm*, i8*) #1

; Function Attrs: nounwind uwtable
define internal double @getsiz_from_gui(double %x, double %y) #0 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %1 = load double, double* %y.addr, align 8
  %2 = load i32, i32* @numsmvect, align 4
  %3 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** @smstrexpadjust, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %3)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** @size_voronoi, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_toggle_button_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call1)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkToggleButton*
  %call3 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %6)
  %call4 = call double @getsiz_proto(double %0, double %1, i32 %2, %struct.smvector* getelementptr inbounds ([50 x %struct.smvector], [50 x %struct.smvector]* @smvector, i32 0, i32 0), double %call, i32 %call3)
  ret double %call4
}

declare double @getsiz_proto(double, double, i32, %struct.smvector*, double, i32) #1

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #1

declare void @gtk_widget_hide(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @updatesmsliders() #0 {
entry:
  store i32 1, i32* @smadjignore, align 4
  %0 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** @sizadjust, align 8
  %1 = load i32, i32* @selectedsmvector, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [50 x %struct.smvector], [50 x %struct.smvector]* @smvector, i32 0, i64 %idxprom
  %siz = getelementptr inbounds %struct.smvector, %struct.smvector* %arrayidx, i32 0, i32 2
  %2 = load double, double* %siz, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %0, double %2)
  %3 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** @smstradjust, align 8
  %4 = load i32, i32* @selectedsmvector, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [50 x %struct.smvector], [50 x %struct.smvector]* @smvector, i32 0, i64 %idxprom1
  %str = getelementptr inbounds %struct.smvector, %struct.smvector* %arrayidx2, i32 0, i32 3
  %5 = load double, double* %str, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %3, double %5)
  store i32 0, i32* @smadjignore, align 4
  ret void
}

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
