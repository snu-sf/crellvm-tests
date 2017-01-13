; ModuleID = './plug-ins/color-rotate/color-rotate-dialog.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RcmParams = type { i32, i32, i32, i32, %struct._GimpDrawable*, %struct._GimpDrawable*, %struct.ReducedImage*, %struct.RcmCircle*, %struct.RcmCircle*, %struct.RcmGray*, %struct.RcmBna* }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct.ReducedImage = type { i32, i32, i8*, double*, i8* }
%struct.RcmCircle = type { %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, float*, i32, %struct.RcmAngle*, float }
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
%struct.RcmAngle = type { float, float, i32 }
%struct.RcmGray = type { %struct._GtkWidget*, %struct._GtkWidget*, float, float, float, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i32 }
%struct.RcmBna = type { %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkNotebook = type { %struct._GtkContainer, i8*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GtkWidget*, %struct._GdkDrawable*, i32, i16, i16, i24 }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._GtkSpinButton = type { %struct._GtkEntry, %struct._GtkAdjustment*, %struct._GdkDrawable*, i32, double, double, i32, i24 }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GtkRadioButton = type { %struct._GtkCheckButton, %struct._GSList* }
%struct._GtkCheckButton = type { %struct._GtkToggleButton }
%struct._GdkEventExpose = type { i32, %struct._GdkDrawable*, i8, %struct._GdkRectangle, %struct._GdkRegion*, i32 }
%struct._GdkRegion = type opaque
%struct._GdkEventButton = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i32, %struct._GdkDevice*, double, double }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GdkEventMotion = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i16, %struct._GdkDevice*, double, double }

@Current = external global %struct.RcmParams, align 8
@.str = private unnamed_addr constant [4 x i8] c"rcm\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Rotate Colors\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"gimp-rcm\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"plug-in-rotate-colormap\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Main Options\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Gray Options\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Units\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"Original\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"size-allocate\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"Rotated\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"Continuous update\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"Area:\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"Entire Layer\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"Selection\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"Context\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"color-rotate\04From:\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"color-rotate\04To:\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"expose-event\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"button-press-event\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"button-release-event\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"motion-notify-event\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"color_rotate_cw\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"color_rotate_ccw\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"color_rotate_a_b\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"color_rotate_360\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"color-range\04From:\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"color-range\04To:\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"Gray\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"Hue:\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"Saturation:\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"Gray Mode\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"Treat as this\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"Change to this\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"Gray Threshold\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"Radians\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"Radians/Pi\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"Degrees\00", align 1

; Function Attrs: nounwind uwtable
define i32 @color_rotate_dialog() #0 {
entry:
  %dialog = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %notebook = alloca %struct._GtkWidget*, align 8
  %previews = alloca %struct._GtkWidget*, align 8
  %run = alloca i32, align 4
  %call = call noalias i8* @g_malloc_n(i64 1, i64 32)
  %0 = bitcast i8* %call to %struct.RcmBna*
  store %struct.RcmBna* %0, %struct.RcmBna** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 10), align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 1)
  call void @color_rotate_stock_init()
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0)) #4
  %call2 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %dialog, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_dialog_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call3)
  %3 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %3, i32 -5, i32 -6, i32 -1)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_window_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call5)
  %6 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %6)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %8 = load %struct.RcmBna*, %struct.RcmBna** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 10), align 8
  %dlg = getelementptr inbounds %struct.RcmBna, %struct.RcmBna* %8, i32 0, i32 0
  store %struct._GtkWidget* %7, %struct._GtkWidget** %dlg, align 8
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 4), align 8
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 5), align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 0), align 4
  %call7 = call %struct.ReducedImage* @rcm_reduce_image(%struct._GimpDrawable* %9, %struct._GimpDrawable* %10, i32 150, i32 %11)
  store %struct.ReducedImage* %call7, %struct.ReducedImage** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 6), align 8
  %call8 = call %struct._GtkWidget* @rcm_create_previews()
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %previews, align 8
  %12 = load %struct.RcmBna*, %struct.RcmBna** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 10), align 8
  %bna_frame = getelementptr inbounds %struct.RcmBna, %struct.RcmBna* %12, i32 0, i32 1
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %bna_frame, align 8
  %call9 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %hbox, align 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_container_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call10)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %15, i32 12)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_dialog_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call12)
  %18 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkDialog*
  %call14 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %18)
  %19 = bitcast %struct._GtkWidget* %call14 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_box_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call15)
  %20 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkBox*
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %20, %struct._GtkWidget* %21, i32 1, i32 1, i32 0)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %22)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_box_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call17)
  %25 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkBox*
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %previews, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %25, %struct._GtkWidget* %26, i32 1, i32 1, i32 0)
  %call19 = call %struct._GtkWidget* @gtk_notebook_new()
  store %struct._GtkWidget* %call19, %struct._GtkWidget** %notebook, align 8
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_notebook_get_type() #5
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call20)
  %29 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkNotebook*
  call void @gtk_notebook_set_tab_pos(%struct._GtkNotebook* %29, i32 2)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_box_get_type() #5
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call22)
  %32 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkBox*
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %32, %struct._GtkWidget* %33, i32 1, i32 1, i32 0)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %34)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_notebook_get_type() #5
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call24)
  %37 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkNotebook*
  %call26 = call %struct._GtkWidget* @rcm_create_main()
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0)) #4
  %call28 = call %struct._GtkWidget* @gtk_label_new(i8* %call27)
  %call29 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %37, %struct._GtkWidget* %call26, %struct._GtkWidget* %call28)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_notebook_get_type() #5
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call30)
  %40 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkNotebook*
  %call32 = call %struct._GtkWidget* @rcm_create_gray()
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0)) #4
  %call34 = call %struct._GtkWidget* @gtk_label_new(i8* %call33)
  %call35 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %40, %struct._GtkWidget* %call32, %struct._GtkWidget* %call34)
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_notebook_get_type() #5
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call36)
  %43 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkNotebook*
  %call38 = call %struct._GtkWidget* @rcm_create_units()
  %call39 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0)) #4
  %call40 = call %struct._GtkWidget* @gtk_label_new(i8* %call39)
  %call41 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %43, %struct._GtkWidget* %call38, %struct._GtkWidget* %call40)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %44)
  %45 = load %struct.RcmCircle*, %struct.RcmCircle** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 8), align 8
  %preview = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %45, i32 0, i32 0
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @rcm_render_circle(%struct._GtkWidget* %46, i32 128, i32 4)
  %47 = load %struct.RcmCircle*, %struct.RcmCircle** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 7), align 8
  %preview42 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %47, i32 0, i32 0
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %preview42, align 8
  call void @rcm_render_circle(%struct._GtkWidget* %48, i32 128, i32 4)
  %49 = load %struct.RcmGray*, %struct.RcmGray** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 9), align 8
  %preview43 = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %49, i32 0, i32 0
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %preview43, align 8
  call void @rcm_render_circle(%struct._GtkWidget* %50, i32 126, i32 3)
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %52 = bitcast %struct._GtkWidget* %51 to %struct._GTypeInstance*
  %call44 = call i64 @gimp_dialog_get_type() #5
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call44)
  %53 = bitcast %struct._GTypeInstance* %call45 to %struct._GimpDialog*
  %call46 = call i32 @gimp_dialog_run(%struct._GimpDialog* %53)
  %cmp = icmp eq i32 %call46, -5
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %run, align 4
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %54)
  %55 = load i32, i32* %run, align 4
  ret i32 %55
}

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_ui_init(i8*, i32) #1

declare void @color_rotate_stock_init() #1

declare %struct._GtkWidget* @gimp_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare void @gimp_standard_help_func(i8*, i8*) #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #3

declare void @gimp_window_set_transient(%struct._GtkWindow*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #3

declare %struct.ReducedImage* @rcm_reduce_image(%struct._GimpDrawable*, %struct._GimpDrawable*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @rcm_create_previews() #0 {
entry:
  %top_vbox = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  %call = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %top_vbox, align 8
  %call1 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %vbox, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %top_vbox, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_box_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call2)
  %2 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkBox*
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %2, %struct._GtkWidget* %3, i32 1, i32 1, i32 0)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %4)
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0)) #4
  %call5 = call %struct._GtkWidget* @gtk_label_new(i8* %call4)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %label, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_box_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call6)
  %7 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkBox*
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %7, %struct._GtkWidget* %8, i32 0, i32 0, i32 0)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %9)
  %10 = load %struct.RcmBna*, %struct.RcmBna** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 10), align 8
  %before = getelementptr inbounds %struct.RcmBna, %struct.RcmBna* %10, i32 0, i32 2
  %11 = load %struct.ReducedImage*, %struct.ReducedImage** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 6), align 8
  %width = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %11, i32 0, i32 0
  %12 = load i32, i32* %width, align 4
  %13 = load %struct.ReducedImage*, %struct.ReducedImage** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 6), align 8
  %height = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %13, i32 0, i32 1
  %14 = load i32, i32* %height, align 4
  %call8 = call %struct._GtkWidget* @rcm_create_one_preview(%struct._GtkWidget** %before, i32 8, i32 %12, i32 %14)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %frame, align 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_box_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call9)
  %17 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkBox*
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %17, %struct._GtkWidget* %18, i32 0, i32 0, i32 0)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %19)
  %20 = load %struct.RcmBna*, %struct.RcmBna** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 10), align 8
  %before11 = getelementptr inbounds %struct.RcmBna, %struct.RcmBna* %20, i32 0, i32 2
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %before11, align 8
  %22 = bitcast %struct._GtkWidget* %21 to i8*
  %call12 = call i64 @g_signal_connect_data(i8* %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @rcm_render_preview to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 1)
  %call13 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call13, %struct._GtkWidget** %vbox, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %top_vbox, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_box_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call14)
  %25 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkBox*
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %25, %struct._GtkWidget* %26, i32 1, i32 1, i32 0)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %27)
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0)) #4
  %call17 = call %struct._GtkWidget* @gtk_label_new(i8* %call16)
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %label, align 8
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_box_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call18)
  %30 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkBox*
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %30, %struct._GtkWidget* %31, i32 0, i32 0, i32 0)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %32)
  %33 = load %struct.RcmBna*, %struct.RcmBna** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 10), align 8
  %after = getelementptr inbounds %struct.RcmBna, %struct.RcmBna* %33, i32 0, i32 3
  %34 = load %struct.ReducedImage*, %struct.ReducedImage** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 6), align 8
  %width20 = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %34, i32 0, i32 0
  %35 = load i32, i32* %width20, align 4
  %36 = load %struct.ReducedImage*, %struct.ReducedImage** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 6), align 8
  %height21 = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %36, i32 0, i32 1
  %37 = load i32, i32* %height21, align 4
  %call22 = call %struct._GtkWidget* @rcm_create_one_preview(%struct._GtkWidget** %after, i32 7, i32 %35, i32 %37)
  store %struct._GtkWidget* %call22, %struct._GtkWidget** %frame, align 8
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_box_get_type() #5
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call23)
  %40 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkBox*
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %40, %struct._GtkWidget* %41, i32 0, i32 0, i32 0)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %42)
  %43 = load %struct.RcmBna*, %struct.RcmBna** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 10), align 8
  %after25 = getelementptr inbounds %struct.RcmBna, %struct.RcmBna* %43, i32 0, i32 3
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %after25, align 8
  %45 = bitcast %struct._GtkWidget* %44 to i8*
  %call26 = call i64 @g_signal_connect_data(i8* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @rcm_render_preview to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 1)
  %call27 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %vbox, align 8
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %top_vbox, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_box_get_type() #5
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call28)
  %48 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkBox*
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %48, %struct._GtkWidget* %49, i32 0, i32 0, i32 0)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %50)
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0)) #4
  %call31 = call %struct._GtkWidget* @gtk_check_button_new_with_label(i8* %call30)
  store %struct._GtkWidget* %call31, %struct._GtkWidget** %button, align 8
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %52 = bitcast %struct._GtkWidget* %51 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_box_get_type() #5
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call32)
  %53 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkBox*
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %53, %struct._GtkWidget* %54, i32 0, i32 0, i32 0)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_toggle_button_get_type() #5
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call34)
  %57 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkToggleButton*
  %58 = load i32, i32* getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 1), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %57, i32 %58)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %59)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %61 = bitcast %struct._GtkWidget* %60 to i8*
  %call36 = call i64 @g_signal_connect_data(i8* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8**)* @rcm_preview_as_you_drag to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call37 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call37, %struct._GtkWidget** %hbox, align 8
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %63 = bitcast %struct._GtkWidget* %62 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_box_get_type() #5
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call38)
  %64 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkBox*
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %64, %struct._GtkWidget* %65, i32 0, i32 0, i32 0)
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %66)
  %call40 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0)) #4
  %call41 = call %struct._GtkWidget* @gtk_label_new(i8* %call40)
  store %struct._GtkWidget* %call41, %struct._GtkWidget** %label, align 8
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %68 = bitcast %struct._GtkWidget* %67 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_box_get_type() #5
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call42)
  %69 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkBox*
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %69, %struct._GtkWidget* %70, i32 0, i32 0, i32 0)
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %71)
  %call44 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0)) #4
  %call45 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0)) #4
  %call46 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0)) #4
  %call47 = call %struct._GtkWidget* (i8*, i32, ...) @gimp_int_combo_box_new(i8* %call44, i32 0, i8* %call45, i32 1, i8* %call46, i32 2, i8* null)
  store %struct._GtkWidget* %call47, %struct._GtkWidget** %combo, align 8
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %73 = bitcast %struct._GtkWidget* %72 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_int_combo_box_get_type() #5
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call48)
  %74 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpIntComboBox*
  %75 = load i32, i32* getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 0), align 4
  %call50 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %74, i32 %75)
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %77 = bitcast %struct._GtkWidget* %76 to %struct._GTypeInstance*
  %call51 = call i64 @gtk_box_get_type() #5
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call51)
  %78 = bitcast %struct._GTypeInstance* %call52 to %struct._GtkBox*
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %78, %struct._GtkWidget* %79, i32 1, i32 1, i32 0)
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %80)
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %82 = bitcast %struct._GtkWidget* %81 to i8*
  %call53 = call i64 @g_signal_connect_data(i8* %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @rcm_combo_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %top_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %83)
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %top_vbox, align 8
  ret %struct._GtkWidget* %84
}

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_notebook_new() #1

declare void @gtk_notebook_set_tab_pos(%struct._GtkNotebook*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_notebook_get_type() #3

declare i32 @gtk_notebook_append_page(%struct._GtkNotebook*, %struct._GtkWidget*, %struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @rcm_create_main() #0 {
entry:
  %vbox = alloca %struct._GtkWidget*, align 8
  %call = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i32 0, i32 0), i64 13)
  %call1 = call %struct.RcmCircle* @rcm_create_one_circle(i32 128, i8* %call)
  store %struct.RcmCircle* %call1, %struct.RcmCircle** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 8), align 8
  %call2 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0), i64 13)
  %call3 = call %struct.RcmCircle* @rcm_create_one_circle(i32 128, i8* %call2)
  store %struct.RcmCircle* %call3, %struct.RcmCircle** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 7), align 8
  %call4 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %vbox, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_container_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call5)
  %2 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %2, i32 12)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %3)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_box_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call7)
  %6 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkBox*
  %7 = load %struct.RcmCircle*, %struct.RcmCircle** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 8), align 8
  %frame = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %7, i32 0, i32 1
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %6, %struct._GtkWidget* %8, i32 0, i32 0, i32 0)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_box_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call9)
  %11 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkBox*
  %12 = load %struct.RcmCircle*, %struct.RcmCircle** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 7), align 8
  %frame11 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %12, i32 0, i32 1
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %frame11, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %11, %struct._GtkWidget* %13, i32 0, i32 0, i32 0)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  ret %struct._GtkWidget* %14
}

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @rcm_create_gray() #0 {
entry:
  %top_vbox = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %entry1 = alloca %struct._GtkWidget*, align 8
  %radio_box = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %group = alloca %struct._GSList*, align 8
  %st = alloca %struct.RcmGray*, align 8
  %adj = alloca %struct._GtkAdjustment*, align 8
  store %struct._GSList* null, %struct._GSList** %group, align 8
  %call = call noalias i8* @g_malloc_n(i64 1, i64 64)
  %0 = bitcast i8* %call to %struct.RcmGray*
  store %struct.RcmGray* %0, %struct.RcmGray** %st, align 8
  store %struct.RcmGray* %0, %struct.RcmGray** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 9), align 8
  %1 = load %struct.RcmGray*, %struct.RcmGray** %st, align 8
  %hue = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %1, i32 0, i32 3
  store float 0.000000e+00, float* %hue, align 4
  %2 = load %struct.RcmGray*, %struct.RcmGray** %st, align 8
  %satur = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %2, i32 0, i32 4
  store float 0.000000e+00, float* %satur, align 4
  %call2 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %top_vbox, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %top_vbox, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_container_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %5, i32 12)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %top_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %6)
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0)) #4
  %call6 = call %struct._GtkWidget* @gimp_frame_new(i8* %call5)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %frame, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %top_vbox, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_box_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call7)
  %9 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkBox*
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %9, %struct._GtkWidget* %10, i32 0, i32 0, i32 0)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %11)
  %call9 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %vbox, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_container_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call10)
  %14 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkContainer*
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %14, %struct._GtkWidget* %15)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %16)
  %call12 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 0)
  store %struct._GtkWidget* %call12, %struct._GtkWidget** %hbox, align 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_box_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call13)
  %19 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkBox*
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %19, %struct._GtkWidget* %20, i32 0, i32 0, i32 0)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %21)
  %call15 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call15, %struct._GtkWidget** %frame, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_frame_get_type() #5
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call16)
  %24 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %24, i32 1)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_box_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call18)
  %27 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkBox*
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %27, %struct._GtkWidget* %28, i32 0, i32 0, i32 0)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %29)
  %call20 = call %struct._GtkWidget* @gimp_preview_area_new()
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %preview, align 8
  %30 = load %struct.RcmGray*, %struct.RcmGray** %st, align 8
  %preview21 = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %30, i32 0, i32 0
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %preview21, align 8
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %31, i32 126, i32 126)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_container_get_type() #5
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call22)
  %34 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkContainer*
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_container_add(%struct._GtkContainer* %34, %struct._GtkWidget* %35)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %36)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_add_events(%struct._GtkWidget* %37, i32 4906)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %39 = bitcast %struct._GtkWidget* %38 to i8*
  %40 = load %struct.RcmGray*, %struct.RcmGray** %st, align 8
  %41 = bitcast %struct.RcmGray* %40 to i8*
  %call24 = call i64 @g_signal_connect_data(i8* %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventExpose*, %struct.RcmGray*)* @rcm_gray_expose_event to void ()*), i8* %41, void (i8*, %struct._GClosure*)* null, i32 1)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %43 = bitcast %struct._GtkWidget* %42 to i8*
  %44 = load %struct.RcmGray*, %struct.RcmGray** %st, align 8
  %45 = bitcast %struct.RcmGray* %44 to i8*
  %call25 = call i64 @g_signal_connect_data(i8* %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventButton*, %struct.RcmGray*)* @rcm_gray_button_press_event to void ()*), i8* %45, void (i8*, %struct._GClosure*)* null, i32 0)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %47 = bitcast %struct._GtkWidget* %46 to i8*
  %48 = load %struct.RcmGray*, %struct.RcmGray** %st, align 8
  %49 = bitcast %struct.RcmGray* %48 to i8*
  %call26 = call i64 @g_signal_connect_data(i8* %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventButton*, %struct.RcmGray*)* @rcm_gray_release_event to void ()*), i8* %49, void (i8*, %struct._GClosure*)* null, i32 0)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %51 = bitcast %struct._GtkWidget* %50 to i8*
  %52 = load %struct.RcmGray*, %struct.RcmGray** %st, align 8
  %53 = bitcast %struct.RcmGray* %52 to i8*
  %call27 = call i64 @g_signal_connect_data(i8* %51, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventMotion*, %struct.RcmGray*)* @rcm_gray_motion_notify_event to void ()*), i8* %53, void (i8*, %struct._GClosure*)* null, i32 0)
  %call28 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 3, i32 0)
  store %struct._GtkWidget* %call28, %struct._GtkWidget** %table, align 8
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %55 = bitcast %struct._GtkWidget* %54 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_box_get_type() #5
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call29)
  %56 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkBox*
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %56, %struct._GtkWidget* %57, i32 0, i32 0, i32 0)
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %59 = bitcast %struct._GtkWidget* %58 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_table_get_type() #5
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call31)
  %60 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %60, i32 6)
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %62 = bitcast %struct._GtkWidget* %61 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_table_get_type() #5
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call33)
  %63 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %63, i32 6)
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %64)
  %call35 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0)) #4
  %call36 = call %struct._GtkWidget* @gtk_label_new(i8* %call35)
  store %struct._GtkWidget* %call36, %struct._GtkWidget** %label, align 8
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %66 = bitcast %struct._GtkWidget* %65 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_misc_get_type() #5
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call37)
  %67 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %67, float 0.000000e+00, float 5.000000e-01)
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %69 = bitcast %struct._GtkWidget* %68 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_table_get_type() #5
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call39)
  %70 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkTable*
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach(%struct._GtkTable* %70, %struct._GtkWidget* %71, i32 0, i32 1, i32 0, i32 1, i32 4, i32 4, i32 0, i32 0)
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %72)
  %73 = load %struct.RcmGray*, %struct.RcmGray** %st, align 8
  %hue41 = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %73, i32 0, i32 3
  store float 0.000000e+00, float* %hue41, align 4
  %74 = load %struct.RcmGray*, %struct.RcmGray** %st, align 8
  %hue42 = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %74, i32 0, i32 3
  %75 = load float, float* %hue42, align 4
  %conv = fpext float %75 to double
  %call43 = call %struct._GtkObject* @gtk_adjustment_new(double %conv, double 0.000000e+00, double 2.000000e+00, double 1.000000e-04, double 1.000000e-03, double 0.000000e+00)
  %76 = bitcast %struct._GtkObject* %call43 to %struct._GtkAdjustment*
  store %struct._GtkAdjustment* %76, %struct._GtkAdjustment** %adj, align 8
  %77 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call44 = call %struct._GtkWidget* @gtk_spin_button_new(%struct._GtkAdjustment* %77, double 1.000000e-02, i32 4)
  store %struct._GtkWidget* %call44, %struct._GtkWidget** %entry1, align 8
  %78 = load %struct.RcmGray*, %struct.RcmGray** %st, align 8
  %hue_entry = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %78, i32 0, i32 5
  store %struct._GtkWidget* %call44, %struct._GtkWidget** %hue_entry, align 8
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %80 = bitcast %struct._GtkWidget* %79 to %struct._GTypeInstance*
  %call45 = call i64 @gtk_spin_button_get_type() #5
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %80, i64 %call45)
  %81 = bitcast %struct._GTypeInstance* %call46 to %struct._GtkSpinButton*
  call void @gtk_spin_button_set_numeric(%struct._GtkSpinButton* %81, i32 1)
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %83 = bitcast %struct._GtkWidget* %82 to %struct._GTypeInstance*
  %call47 = call i64 @gtk_table_get_type() #5
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %83, i64 %call47)
  %84 = bitcast %struct._GTypeInstance* %call48 to %struct._GtkTable*
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_table_attach(%struct._GtkTable* %84, %struct._GtkWidget* %85, i32 1, i32 2, i32 0, i32 1, i32 4, i32 4, i32 0, i32 0)
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %86)
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %88 = bitcast %struct._GtkWidget* %87 to i8*
  %89 = load %struct.RcmGray*, %struct.RcmGray** %st, align 8
  %90 = bitcast %struct.RcmGray* %89 to i8*
  %call49 = call i64 @g_signal_connect_data(i8* %88, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct.RcmGray*)* @rcm_set_hue to void ()*), i8* %90, void (i8*, %struct._GClosure*)* null, i32 0)
  %91 = load i32, i32* getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 2), align 4
  %call50 = call i8* @rcm_units_string(i32 %91)
  %call51 = call %struct._GtkWidget* @gtk_label_new(i8* %call50)
  %92 = load %struct.RcmGray*, %struct.RcmGray** %st, align 8
  %hue_units_label = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %92, i32 0, i32 6
  store %struct._GtkWidget* %call51, %struct._GtkWidget** %hue_units_label, align 8
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %94 = bitcast %struct._GtkWidget* %93 to %struct._GTypeInstance*
  %call52 = call i64 @gtk_misc_get_type() #5
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %94, i64 %call52)
  %95 = bitcast %struct._GTypeInstance* %call53 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %95, float 0.000000e+00, float 5.000000e-01)
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %97 = bitcast %struct._GtkWidget* %96 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_table_get_type() #5
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %97, i64 %call54)
  %98 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkTable*
  %99 = load %struct.RcmGray*, %struct.RcmGray** %st, align 8
  %hue_units_label56 = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %99, i32 0, i32 6
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %hue_units_label56, align 8
  call void @gtk_table_attach(%struct._GtkTable* %98, %struct._GtkWidget* %100, i32 2, i32 3, i32 0, i32 1, i32 4, i32 4, i32 0, i32 0)
  %101 = load %struct.RcmGray*, %struct.RcmGray** %st, align 8
  %hue_units_label57 = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %101, i32 0, i32 6
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %hue_units_label57, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %102)
  %call58 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0)) #4
  %call59 = call %struct._GtkWidget* @gtk_label_new(i8* %call58)
  store %struct._GtkWidget* %call59, %struct._GtkWidget** %label, align 8
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %104 = bitcast %struct._GtkWidget* %103 to %struct._GTypeInstance*
  %call60 = call i64 @gtk_misc_get_type() #5
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %104, i64 %call60)
  %105 = bitcast %struct._GTypeInstance* %call61 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %105, float 1.000000e+00, float 5.000000e-01)
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %107 = bitcast %struct._GtkWidget* %106 to %struct._GTypeInstance*
  %call62 = call i64 @gtk_table_get_type() #5
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %107, i64 %call62)
  %108 = bitcast %struct._GTypeInstance* %call63 to %struct._GtkTable*
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach(%struct._GtkTable* %108, %struct._GtkWidget* %109, i32 0, i32 1, i32 1, i32 2, i32 4, i32 4, i32 0, i32 0)
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %110)
  %111 = load %struct.RcmGray*, %struct.RcmGray** %st, align 8
  %satur64 = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %111, i32 0, i32 4
  store float 0.000000e+00, float* %satur64, align 4
  %112 = load %struct.RcmGray*, %struct.RcmGray** %st, align 8
  %satur65 = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %112, i32 0, i32 4
  %113 = load float, float* %satur65, align 4
  %conv66 = fpext float %113 to double
  %call67 = call %struct._GtkObject* @gtk_adjustment_new(double %conv66, double 0.000000e+00, double 1.000000e+00, double 1.000000e-04, double 1.000000e-03, double 0.000000e+00)
  %114 = bitcast %struct._GtkObject* %call67 to %struct._GtkAdjustment*
  store %struct._GtkAdjustment* %114, %struct._GtkAdjustment** %adj, align 8
  %115 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call68 = call %struct._GtkWidget* @gtk_spin_button_new(%struct._GtkAdjustment* %115, double 1.000000e-02, i32 4)
  store %struct._GtkWidget* %call68, %struct._GtkWidget** %entry1, align 8
  %116 = load %struct.RcmGray*, %struct.RcmGray** %st, align 8
  %satur_entry = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %116, i32 0, i32 7
  store %struct._GtkWidget* %call68, %struct._GtkWidget** %satur_entry, align 8
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %118 = bitcast %struct._GtkWidget* %117 to %struct._GTypeInstance*
  %call69 = call i64 @gtk_spin_button_get_type() #5
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %118, i64 %call69)
  %119 = bitcast %struct._GTypeInstance* %call70 to %struct._GtkSpinButton*
  call void @gtk_spin_button_set_numeric(%struct._GtkSpinButton* %119, i32 1)
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %121 = bitcast %struct._GtkWidget* %120 to %struct._GTypeInstance*
  %call71 = call i64 @gtk_table_get_type() #5
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %121, i64 %call71)
  %122 = bitcast %struct._GTypeInstance* %call72 to %struct._GtkTable*
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_table_attach(%struct._GtkTable* %122, %struct._GtkWidget* %123, i32 1, i32 2, i32 1, i32 2, i32 4, i32 4, i32 0, i32 2)
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %124)
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %126 = bitcast %struct._GtkWidget* %125 to i8*
  %127 = load %struct.RcmGray*, %struct.RcmGray** %st, align 8
  %128 = bitcast %struct.RcmGray* %127 to i8*
  %call73 = call i64 @g_signal_connect_data(i8* %126, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct.RcmGray*)* @rcm_set_satur to void ()*), i8* %128, void (i8*, %struct._GClosure*)* null, i32 0)
  %call74 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0)) #4
  %call75 = call %struct._GtkWidget* @gimp_frame_new(i8* %call74)
  store %struct._GtkWidget* %call75, %struct._GtkWidget** %frame, align 8
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %top_vbox, align 8
  %130 = bitcast %struct._GtkWidget* %129 to %struct._GTypeInstance*
  %call76 = call i64 @gtk_box_get_type() #5
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %130, i64 %call76)
  %131 = bitcast %struct._GTypeInstance* %call77 to %struct._GtkBox*
  %132 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %131, %struct._GtkWidget* %132, i32 0, i32 0, i32 0)
  %133 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %133)
  %call78 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call78, %struct._GtkWidget** %radio_box, align 8
  %134 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %135 = bitcast %struct._GtkWidget* %134 to %struct._GTypeInstance*
  %call79 = call i64 @gtk_container_get_type() #5
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %135, i64 %call79)
  %136 = bitcast %struct._GTypeInstance* %call80 to %struct._GtkContainer*
  %137 = load %struct._GtkWidget*, %struct._GtkWidget** %radio_box, align 8
  call void @gtk_container_add(%struct._GtkContainer* %136, %struct._GtkWidget* %137)
  %138 = load %struct._GtkWidget*, %struct._GtkWidget** %radio_box, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %138)
  %139 = load %struct._GSList*, %struct._GSList** %group, align 8
  %call81 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0)) #4
  %call82 = call %struct._GtkWidget* @gtk_radio_button_new_with_label(%struct._GSList* %139, i8* %call81)
  store %struct._GtkWidget* %call82, %struct._GtkWidget** %button, align 8
  %140 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %141 = bitcast %struct._GtkWidget* %140 to %struct._GTypeInstance*
  %call83 = call i64 @gtk_radio_button_get_type() #5
  %call84 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %141, i64 %call83)
  %142 = bitcast %struct._GTypeInstance* %call84 to %struct._GtkRadioButton*
  %call85 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %142)
  store %struct._GSList* %call85, %struct._GSList** %group, align 8
  %143 = load %struct._GtkWidget*, %struct._GtkWidget** %radio_box, align 8
  %144 = bitcast %struct._GtkWidget* %143 to %struct._GTypeInstance*
  %call86 = call i64 @gtk_box_get_type() #5
  %call87 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %144, i64 %call86)
  %145 = bitcast %struct._GTypeInstance* %call87 to %struct._GtkBox*
  %146 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %145, %struct._GtkWidget* %146, i32 0, i32 0, i32 0)
  %147 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %147)
  %148 = load i32, i32* getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 3), align 4
  %cmp = icmp eq i32 %148, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %149 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %150 = bitcast %struct._GtkWidget* %149 to %struct._GTypeInstance*
  %call89 = call i64 @gtk_button_get_type() #5
  %call90 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %150, i64 %call89)
  %151 = bitcast %struct._GTypeInstance* %call90 to %struct._GtkButton*
  call void @gtk_button_clicked(%struct._GtkButton* %151)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %152 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %153 = bitcast %struct._GtkWidget* %152 to i8*
  %call91 = call i64 @g_signal_connect_data(i8* %153, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8**)* @rcm_switch_to_gray_from to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 3) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %154 = load %struct._GSList*, %struct._GSList** %group, align 8
  %call92 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i32 0, i32 0)) #4
  %call93 = call %struct._GtkWidget* @gtk_radio_button_new_with_label(%struct._GSList* %154, i8* %call92)
  store %struct._GtkWidget* %call93, %struct._GtkWidget** %button, align 8
  %155 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %156 = bitcast %struct._GtkWidget* %155 to %struct._GTypeInstance*
  %call94 = call i64 @gtk_radio_button_get_type() #5
  %call95 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %156, i64 %call94)
  %157 = bitcast %struct._GTypeInstance* %call95 to %struct._GtkRadioButton*
  %call96 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %157)
  store %struct._GSList* %call96, %struct._GSList** %group, align 8
  %158 = load %struct._GtkWidget*, %struct._GtkWidget** %radio_box, align 8
  %159 = bitcast %struct._GtkWidget* %158 to %struct._GTypeInstance*
  %call97 = call i64 @gtk_box_get_type() #5
  %call98 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %159, i64 %call97)
  %160 = bitcast %struct._GTypeInstance* %call98 to %struct._GtkBox*
  %161 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %160, %struct._GtkWidget* %161, i32 0, i32 0, i32 0)
  %162 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %162)
  %163 = load i32, i32* getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 3), align 4
  %cmp99 = icmp eq i32 %163, 6
  br i1 %cmp99, label %if.then.101, label %if.end.104

if.then.101:                                      ; preds = %if.end
  %164 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %165 = bitcast %struct._GtkWidget* %164 to %struct._GTypeInstance*
  %call102 = call i64 @gtk_button_get_type() #5
  %call103 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %165, i64 %call102)
  %166 = bitcast %struct._GTypeInstance* %call103 to %struct._GtkButton*
  call void @gtk_button_clicked(%struct._GtkButton* %166)
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.101, %if.end
  %167 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %168 = bitcast %struct._GtkWidget* %167 to i8*
  %call105 = call i64 @g_signal_connect_data(i8* %168, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8**)* @rcm_switch_to_gray_to to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 3) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call106 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0)) #4
  %call107 = call %struct._GtkWidget* @gimp_frame_new(i8* %call106)
  store %struct._GtkWidget* %call107, %struct._GtkWidget** %frame, align 8
  %169 = load %struct._GtkWidget*, %struct._GtkWidget** %top_vbox, align 8
  %170 = bitcast %struct._GtkWidget* %169 to %struct._GTypeInstance*
  %call108 = call i64 @gtk_box_get_type() #5
  %call109 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %170, i64 %call108)
  %171 = bitcast %struct._GTypeInstance* %call109 to %struct._GtkBox*
  %172 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %171, %struct._GtkWidget* %172, i32 0, i32 0, i32 0)
  %173 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %173)
  %call110 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call110, %struct._GtkWidget** %hbox, align 8
  %174 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %175 = bitcast %struct._GtkWidget* %174 to %struct._GTypeInstance*
  %call111 = call i64 @gtk_container_get_type() #5
  %call112 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %175, i64 %call111)
  %176 = bitcast %struct._GTypeInstance* %call112 to %struct._GtkContainer*
  %177 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %176, %struct._GtkWidget* %177)
  %178 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %178)
  %call113 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0)) #4
  %call114 = call %struct._GtkWidget* @gtk_label_new(i8* %call113)
  store %struct._GtkWidget* %call114, %struct._GtkWidget** %label, align 8
  %179 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %180 = bitcast %struct._GtkWidget* %179 to %struct._GTypeInstance*
  %call115 = call i64 @gtk_box_get_type() #5
  %call116 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %180, i64 %call115)
  %181 = bitcast %struct._GTypeInstance* %call116 to %struct._GtkBox*
  %182 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %181, %struct._GtkWidget* %182, i32 0, i32 0, i32 0)
  %183 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %183)
  %184 = load %struct.RcmGray*, %struct.RcmGray** %st, align 8
  %gray_sat = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %184, i32 0, i32 2
  store float 0.000000e+00, float* %gray_sat, align 4
  %185 = load %struct.RcmGray*, %struct.RcmGray** %st, align 8
  %gray_sat117 = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %185, i32 0, i32 2
  %186 = load float, float* %gray_sat117, align 4
  %conv118 = fpext float %186 to double
  %call119 = call %struct._GtkObject* @gtk_adjustment_new(double %conv118, double 0.000000e+00, double 1.000000e+00, double 1.000000e-04, double 1.000000e-03, double 0.000000e+00)
  %187 = bitcast %struct._GtkObject* %call119 to %struct._GtkAdjustment*
  store %struct._GtkAdjustment* %187, %struct._GtkAdjustment** %adj, align 8
  %188 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call120 = call %struct._GtkWidget* @gtk_spin_button_new(%struct._GtkAdjustment* %188, double 1.000000e-02, i32 4)
  store %struct._GtkWidget* %call120, %struct._GtkWidget** %entry1, align 8
  %189 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %190 = bitcast %struct._GtkWidget* %189 to %struct._GTypeInstance*
  %call121 = call i64 @gtk_spin_button_get_type() #5
  %call122 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %190, i64 %call121)
  %191 = bitcast %struct._GTypeInstance* %call122 to %struct._GtkSpinButton*
  call void @gtk_spin_button_set_numeric(%struct._GtkSpinButton* %191, i32 1)
  %192 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %193 = bitcast %struct._GtkWidget* %192 to %struct._GTypeInstance*
  %call123 = call i64 @gtk_box_get_type() #5
  %call124 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %193, i64 %call123)
  %194 = bitcast %struct._GTypeInstance* %call124 to %struct._GtkBox*
  %195 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %194, %struct._GtkWidget* %195, i32 0, i32 0, i32 0)
  %196 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %196)
  %197 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %198 = bitcast %struct._GtkWidget* %197 to i8*
  %199 = load %struct.RcmGray*, %struct.RcmGray** %st, align 8
  %200 = bitcast %struct.RcmGray* %199 to i8*
  %call125 = call i64 @g_signal_connect_data(i8* %198, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct.RcmGray*)* @rcm_set_gray_sat to void ()*), i8* %200, void (i8*, %struct._GClosure*)* null, i32 0)
  %201 = load %struct._GtkWidget*, %struct._GtkWidget** %top_vbox, align 8
  ret %struct._GtkWidget* %201
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @rcm_create_units() #0 {
entry:
  %frame = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %group = alloca %struct._GSList*, align 8
  store %struct._GSList* null, %struct._GSList** %group, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* @gimp_frame_new(i8* %call)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %frame, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_container_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call2)
  %2 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %2, i32 12)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %3)
  %call4 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %vbox, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_container_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call5)
  %6 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkContainer*
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %6, %struct._GtkWidget* %7)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %8)
  %9 = load %struct._GSList*, %struct._GSList** %group, align 8
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0)) #4
  %call8 = call %struct._GtkWidget* @gtk_radio_button_new_with_label(%struct._GSList* %9, i8* %call7)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %button, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_radio_button_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call9)
  %12 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkRadioButton*
  %call11 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %12)
  store %struct._GSList* %call11, %struct._GSList** %group, align 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_box_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkBox*
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %15, %struct._GtkWidget* %16, i32 0, i32 0, i32 0)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %17)
  %18 = load i32, i32* getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 2), align 4
  %cmp = icmp eq i32 %18, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_button_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call14)
  %21 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkButton*
  call void @gtk_button_clicked(%struct._GtkButton* %21)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %23 = bitcast %struct._GtkWidget* %22 to i8*
  %call16 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8**)* @rcm_switch_to_radians to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %24 = load %struct._GSList*, %struct._GSList** %group, align 8
  %call17 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0)) #4
  %call18 = call %struct._GtkWidget* @gtk_radio_button_new_with_label(%struct._GSList* %24, i8* %call17)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %button, align 8
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_radio_button_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call19)
  %27 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkRadioButton*
  %call21 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %27)
  store %struct._GSList* %call21, %struct._GSList** %group, align 8
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_box_get_type() #5
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call22)
  %30 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkBox*
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %30, %struct._GtkWidget* %31, i32 0, i32 0, i32 0)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %32)
  %33 = load i32, i32* getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 2), align 4
  %cmp24 = icmp eq i32 %33, 4
  br i1 %cmp24, label %if.then.25, label %if.end.28

if.then.25:                                       ; preds = %if.end
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_button_get_type() #5
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call26)
  %36 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkButton*
  call void @gtk_button_clicked(%struct._GtkButton* %36)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.25, %if.end
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %38 = bitcast %struct._GtkWidget* %37 to i8*
  %call29 = call i64 @g_signal_connect_data(i8* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8**)* @rcm_switch_to_radians_over_PI to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %39 = load %struct._GSList*, %struct._GSList** %group, align 8
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0)) #4
  %call31 = call %struct._GtkWidget* @gtk_radio_button_new_with_label(%struct._GSList* %39, i8* %call30)
  store %struct._GtkWidget* %call31, %struct._GtkWidget** %button, align 8
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_box_get_type() #5
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call32)
  %42 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkBox*
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %42, %struct._GtkWidget* %43, i32 0, i32 0, i32 0)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %44)
  %45 = load i32, i32* getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 2), align 4
  %cmp34 = icmp eq i32 %45, 2
  br i1 %cmp34, label %if.then.35, label %if.end.38

if.then.35:                                       ; preds = %if.end.28
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_button_get_type() #5
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call36)
  %48 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkButton*
  call void @gtk_button_clicked(%struct._GtkButton* %48)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.35, %if.end.28
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %50 = bitcast %struct._GtkWidget* %49 to i8*
  %call39 = call i64 @g_signal_connect_data(i8* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8**)* @rcm_switch_to_degrees to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  ret %struct._GtkWidget* %51
}

declare void @rcm_render_circle(%struct._GtkWidget*, i32, i32) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @rcm_create_one_preview(%struct._GtkWidget** %preview, i32 %mode, i32 %width, i32 %height) #0 {
entry:
  %preview.addr = alloca %struct._GtkWidget**, align 8
  %mode.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %align = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget** %preview, %struct._GtkWidget*** %preview.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %call = call %struct._GtkWidget* @gtk_alignment_new(float 5.000000e-01, float 5.000000e-01, float 0.000000e+00, float 0.000000e+00)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %align, align 8
  %call1 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %frame, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_frame_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call2)
  %2 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %2, i32 1)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %align, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_container_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call4)
  %5 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkContainer*
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_container_add(%struct._GtkContainer* %5, %struct._GtkWidget* %6)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %7)
  %call6 = call %struct._GtkWidget* @gimp_preview_area_new()
  %8 = load %struct._GtkWidget**, %struct._GtkWidget*** %preview.addr, align 8
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %8, align 8
  %9 = load %struct._GtkWidget**, %struct._GtkWidget*** %preview.addr, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %9, align 8
  %11 = load i32, i32* %width.addr, align 4
  %12 = load i32, i32* %height.addr, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %10, i32 %11, i32 %12)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_container_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call7)
  %15 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkContainer*
  %16 = load %struct._GtkWidget**, %struct._GtkWidget*** %preview.addr, align 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %16, align 8
  call void @gtk_container_add(%struct._GtkContainer* %15, %struct._GtkWidget* %17)
  %18 = load %struct._GtkWidget**, %struct._GtkWidget*** %preview.addr, align 8
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %18, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %19)
  %20 = load %struct._GtkWidget**, %struct._GtkWidget*** %preview.addr, align 8
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %20, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 80)
  %23 = bitcast %struct._GTypeInstance* %call9 to %struct._GObject*
  %24 = load i32, i32* %mode.addr, align 4
  %conv = sext i32 %24 to i64
  %25 = inttoptr i64 %conv to i8*
  call void @g_object_set_data(%struct._GObject* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* %25)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %align, align 8
  ret %struct._GtkWidget* %26
}

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @rcm_render_preview(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_check_button_new_with_label(i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare void @rcm_preview_as_you_drag(%struct._GtkWidget*, i8**) #1

declare %struct._GtkWidget* @gimp_int_combo_box_new(i8*, i32, ...) #1

declare i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int_combo_box_get_type() #3

declare void @rcm_combo_callback(%struct._GtkWidget*, i8*) #1

declare %struct._GtkWidget* @gtk_alignment_new(float, float, float, float) #1

declare %struct._GtkWidget* @gtk_frame_new(i8*) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #3

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_preview_area_new() #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct.RcmCircle* @rcm_create_one_circle(i32 %height, i8* %label_content) #0 {
entry:
  %height.addr = alloca i32, align 4
  %label_content.addr = alloca i8*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %button_table = alloca %struct._GtkWidget*, align 8
  %legend_table = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %entry1 = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkAdjustment*, align 8
  %st = alloca %struct.RcmCircle*, align 8
  store i32 %height, i32* %height.addr, align 4
  store i8* %label_content, i8** %label_content.addr, align 8
  %call = call noalias i8* @g_malloc_n(i64 1, i64 168)
  %0 = bitcast i8* %call to %struct.RcmCircle*
  store %struct.RcmCircle* %0, %struct.RcmCircle** %st, align 8
  %call2 = call noalias i8* @g_malloc_n(i64 1, i64 12)
  %1 = bitcast i8* %call2 to %struct.RcmAngle*
  %2 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %angle = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %2, i32 0, i32 19
  store %struct.RcmAngle* %1, %struct.RcmAngle** %angle, align 8
  %3 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %angle3 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %3, i32 0, i32 19
  %4 = load %struct.RcmAngle*, %struct.RcmAngle** %angle3, align 8
  %alpha = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %4, i32 0, i32 0
  store float 0.000000e+00, float* %alpha, align 4
  %5 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %angle4 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %5, i32 0, i32 19
  %6 = load %struct.RcmAngle*, %struct.RcmAngle** %angle4, align 8
  %beta = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %6, i32 0, i32 1
  store float 0x3FF921FB60000000, float* %beta, align 4
  %7 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %angle5 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %7, i32 0, i32 19
  %8 = load %struct.RcmAngle*, %struct.RcmAngle** %angle5, align 8
  %cw_ccw = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %8, i32 0, i32 2
  store i32 1, i32* %cw_ccw, align 4
  %9 = load i8*, i8** %label_content.addr, align 8
  %call6 = call %struct._GtkWidget* @gimp_frame_new(i8* %9)
  %10 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %frame7 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %10, i32 0, i32 1
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %frame7, align 8
  %11 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %frame8 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %11, i32 0, i32 1
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %frame8, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %12)
  %call9 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %frame, align 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_frame_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call10)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %15, i32 1)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %16)
  %call12 = call %struct._GtkWidget* @gimp_preview_area_new()
  %17 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %preview = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %17, i32 0, i32 0
  store %struct._GtkWidget* %call12, %struct._GtkWidget** %preview, align 8
  %18 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %preview13 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %18, i32 0, i32 0
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %preview13, align 8
  %20 = load i32, i32* %height.addr, align 4
  %21 = load i32, i32* %height.addr, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %19, i32 %20, i32 %21)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_container_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call14)
  %24 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkContainer*
  %25 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %preview16 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %25, i32 0, i32 0
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %preview16, align 8
  call void @gtk_container_add(%struct._GtkContainer* %24, %struct._GtkWidget* %26)
  %27 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %preview17 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %27, i32 0, i32 0
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %preview17, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %28)
  %29 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %preview18 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %29, i32 0, i32 0
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %preview18, align 8
  call void @gtk_widget_set_events(%struct._GtkWidget* %30, i32 4906)
  %31 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %preview19 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %31, i32 0, i32 0
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %preview19, align 8
  %33 = bitcast %struct._GtkWidget* %32 to i8*
  %34 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %35 = bitcast %struct.RcmCircle* %34 to i8*
  %call20 = call i64 @g_signal_connect_data(i8* %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventExpose*, %struct.RcmCircle*)* @rcm_expose_event to void ()*), i8* %35, void (i8*, %struct._GClosure*)* null, i32 1)
  %36 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %preview21 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %36, i32 0, i32 0
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %preview21, align 8
  %38 = bitcast %struct._GtkWidget* %37 to i8*
  %39 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %40 = bitcast %struct.RcmCircle* %39 to i8*
  %call22 = call i64 @g_signal_connect_data(i8* %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventButton*, %struct.RcmCircle*)* @rcm_button_press_event to void ()*), i8* %40, void (i8*, %struct._GClosure*)* null, i32 0)
  %41 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %preview23 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %41, i32 0, i32 0
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %preview23, align 8
  %43 = bitcast %struct._GtkWidget* %42 to i8*
  %44 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %45 = bitcast %struct.RcmCircle* %44 to i8*
  %call24 = call i64 @g_signal_connect_data(i8* %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventButton*, %struct.RcmCircle*)* @rcm_release_event to void ()*), i8* %45, void (i8*, %struct._GClosure*)* null, i32 0)
  %46 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %preview25 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %46, i32 0, i32 0
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %preview25, align 8
  %48 = bitcast %struct._GtkWidget* %47 to i8*
  %49 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %50 = bitcast %struct.RcmCircle* %49 to i8*
  %call26 = call i64 @g_signal_connect_data(i8* %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventMotion*, %struct.RcmCircle*)* @rcm_motion_notify_event to void ()*), i8* %50, void (i8*, %struct._GClosure*)* null, i32 0)
  %call27 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 1, i32 0)
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %button_table, align 8
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %button_table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %51)
  %52 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %angle28 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %52, i32 0, i32 19
  %53 = load %struct.RcmAngle*, %struct.RcmAngle** %angle28, align 8
  %cw_ccw29 = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %53, i32 0, i32 2
  %54 = load i32, i32* %cw_ccw29, align 4
  %cmp = icmp sgt i32 %54, 0
  %cond = select i1 %cmp, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i32 0, i32 0)
  %call30 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* %cond)
  store %struct._GtkWidget* %call30, %struct._GtkWidget** %button, align 8
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %56 = bitcast %struct._GtkWidget* %55 to i8*
  %57 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %58 = bitcast %struct.RcmCircle* %57 to i8*
  %call31 = call i64 @g_signal_connect_data(i8* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct.RcmCircle*)* @rcm_cw_ccw to void ()*), i8* %58, void (i8*, %struct._GClosure*)* null, i32 0)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %59)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %button_table, align 8
  %61 = bitcast %struct._GtkWidget* %60 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_table_get_type() #5
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call32)
  %62 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkTable*
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_table_attach(%struct._GtkTable* %62, %struct._GtkWidget* %63, i32 0, i32 1, i32 0, i32 1, i32 5, i32 4, i32 4, i32 2)
  %64 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %cw_ccw_pixmap = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %64, i32 0, i32 6
  store %struct._GtkWidget* null, %struct._GtkWidget** %cw_ccw_pixmap, align 8
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %66 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %cw_ccw_button = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %66, i32 0, i32 3
  store %struct._GtkWidget* %65, %struct._GtkWidget** %cw_ccw_button, align 8
  %67 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %cw_ccw_box = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %67, i32 0, i32 4
  store %struct._GtkWidget* null, %struct._GtkWidget** %cw_ccw_box, align 8
  %68 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %cw_ccw_label = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %68, i32 0, i32 5
  store %struct._GtkWidget* null, %struct._GtkWidget** %cw_ccw_label, align 8
  %call34 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0))
  store %struct._GtkWidget* %call34, %struct._GtkWidget** %button, align 8
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %70 = bitcast %struct._GtkWidget* %69 to i8*
  %71 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %72 = bitcast %struct.RcmCircle* %71 to i8*
  %call35 = call i64 @g_signal_connect_data(i8* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct.RcmCircle*)* @rcm_a_to_b to void ()*), i8* %72, void (i8*, %struct._GClosure*)* null, i32 0)
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %73)
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %button_table, align 8
  %75 = bitcast %struct._GtkWidget* %74 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_table_get_type() #5
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call36)
  %76 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkTable*
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_table_attach(%struct._GtkTable* %76, %struct._GtkWidget* %77, i32 0, i32 1, i32 1, i32 2, i32 5, i32 4, i32 4, i32 2)
  %78 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %a_b_pixmap = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %78, i32 0, i32 9
  store %struct._GtkWidget* null, %struct._GtkWidget** %a_b_pixmap, align 8
  %79 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %a_b_box = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %79, i32 0, i32 8
  store %struct._GtkWidget* null, %struct._GtkWidget** %a_b_box, align 8
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %81 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %a_b_button = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %81, i32 0, i32 7
  store %struct._GtkWidget* %80, %struct._GtkWidget** %a_b_button, align 8
  %call38 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i32 0, i32 0))
  store %struct._GtkWidget* %call38, %struct._GtkWidget** %button, align 8
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %83 = bitcast %struct._GtkWidget* %82 to i8*
  %84 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %85 = bitcast %struct.RcmCircle* %84 to i8*
  %call39 = call i64 @g_signal_connect_data(i8* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct.RcmCircle*)* @rcm_360_degrees to void ()*), i8* %85, void (i8*, %struct._GClosure*)* null, i32 0)
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %86)
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %button_table, align 8
  %88 = bitcast %struct._GtkWidget* %87 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_table_get_type() #5
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %88, i64 %call40)
  %89 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkTable*
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_table_attach(%struct._GtkTable* %89, %struct._GtkWidget* %90, i32 0, i32 1, i32 2, i32 3, i32 5, i32 4, i32 4, i32 2)
  %91 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %f360_pixmap = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %91, i32 0, i32 12
  store %struct._GtkWidget* null, %struct._GtkWidget** %f360_pixmap, align 8
  %92 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %f360_box = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %92, i32 0, i32 11
  store %struct._GtkWidget* null, %struct._GtkWidget** %f360_box, align 8
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %94 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %f360_button = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %94, i32 0, i32 10
  store %struct._GtkWidget* %93, %struct._GtkWidget** %f360_button, align 8
  %call42 = call %struct._GtkWidget* @gtk_table_new(i32 1, i32 6, i32 0)
  store %struct._GtkWidget* %call42, %struct._GtkWidget** %legend_table, align 8
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %legend_table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %95)
  %call43 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i32 0, i32 0), i64 12)
  %call44 = call %struct._GtkWidget* @gtk_label_new(i8* %call43)
  store %struct._GtkWidget* %call44, %struct._GtkWidget** %label, align 8
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %96)
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %legend_table, align 8
  %98 = bitcast %struct._GtkWidget* %97 to %struct._GTypeInstance*
  %call45 = call i64 @gtk_table_get_type() #5
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %98, i64 %call45)
  %99 = bitcast %struct._GTypeInstance* %call46 to %struct._GtkTable*
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach(%struct._GtkTable* %99, %struct._GtkWidget* %100, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 5, i32 5)
  %101 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %angle47 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %101, i32 0, i32 19
  %102 = load %struct.RcmAngle*, %struct.RcmAngle** %angle47, align 8
  %alpha48 = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %102, i32 0, i32 0
  store float 0.000000e+00, float* %alpha48, align 4
  %103 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %angle49 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %103, i32 0, i32 19
  %104 = load %struct.RcmAngle*, %struct.RcmAngle** %angle49, align 8
  %alpha50 = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %104, i32 0, i32 0
  %105 = load float, float* %alpha50, align 4
  %conv = fpext float %105 to double
  %call51 = call %struct._GtkObject* @gtk_adjustment_new(double %conv, double 0.000000e+00, double 3.600000e+02, double 1.000000e-02, double 1.000000e+00, double 0.000000e+00)
  %106 = bitcast %struct._GtkObject* %call51 to %struct._GtkAdjustment*
  store %struct._GtkAdjustment* %106, %struct._GtkAdjustment** %adj, align 8
  %107 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call52 = call %struct._GtkWidget* @gtk_spin_button_new(%struct._GtkAdjustment* %107, double 1.000000e-02, i32 2)
  store %struct._GtkWidget* %call52, %struct._GtkWidget** %entry1, align 8
  %108 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %alpha_entry = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %108, i32 0, i32 13
  store %struct._GtkWidget* %call52, %struct._GtkWidget** %alpha_entry, align 8
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %110 = bitcast %struct._GtkWidget* %109 to %struct._GTypeInstance*
  %call53 = call i64 @gtk_spin_button_get_type() #5
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %110, i64 %call53)
  %111 = bitcast %struct._GTypeInstance* %call54 to %struct._GtkSpinButton*
  call void @gtk_spin_button_set_numeric(%struct._GtkSpinButton* %111, i32 1)
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %legend_table, align 8
  %113 = bitcast %struct._GtkWidget* %112 to %struct._GTypeInstance*
  %call55 = call i64 @gtk_table_get_type() #5
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %113, i64 %call55)
  %114 = bitcast %struct._GTypeInstance* %call56 to %struct._GtkTable*
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_table_attach(%struct._GtkTable* %114, %struct._GtkWidget* %115, i32 1, i32 2, i32 0, i32 1, i32 5, i32 1, i32 2, i32 4)
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %116)
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %118 = bitcast %struct._GtkWidget* %117 to i8*
  %119 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %120 = bitcast %struct.RcmCircle* %119 to i8*
  %call57 = call i64 @g_signal_connect_data(i8* %118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct.RcmCircle*)* @rcm_set_alpha to void ()*), i8* %120, void (i8*, %struct._GClosure*)* null, i32 0)
  %121 = load i32, i32* getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 2), align 4
  %call58 = call i8* @rcm_units_string(i32 %121)
  %call59 = call %struct._GtkWidget* @gtk_label_new(i8* %call58)
  %122 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %alpha_units_label = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %122, i32 0, i32 14
  store %struct._GtkWidget* %call59, %struct._GtkWidget** %alpha_units_label, align 8
  %123 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %alpha_units_label60 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %123, i32 0, i32 14
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %alpha_units_label60, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %124)
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %legend_table, align 8
  %126 = bitcast %struct._GtkWidget* %125 to %struct._GTypeInstance*
  %call61 = call i64 @gtk_table_get_type() #5
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %126, i64 %call61)
  %127 = bitcast %struct._GTypeInstance* %call62 to %struct._GtkTable*
  %128 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %alpha_units_label63 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %128, i32 0, i32 14
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %alpha_units_label63, align 8
  call void @gtk_table_attach(%struct._GtkTable* %127, %struct._GtkWidget* %129, i32 2, i32 3, i32 0, i32 1, i32 0, i32 1, i32 4, i32 4)
  %call64 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i32 0, i32 0), i64 12)
  %call65 = call %struct._GtkWidget* @gtk_label_new(i8* %call64)
  store %struct._GtkWidget* %call65, %struct._GtkWidget** %label, align 8
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %130)
  %131 = load %struct._GtkWidget*, %struct._GtkWidget** %legend_table, align 8
  %132 = bitcast %struct._GtkWidget* %131 to %struct._GTypeInstance*
  %call66 = call i64 @gtk_table_get_type() #5
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %132, i64 %call66)
  %133 = bitcast %struct._GTypeInstance* %call67 to %struct._GtkTable*
  %134 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach(%struct._GtkTable* %133, %struct._GtkWidget* %134, i32 3, i32 4, i32 0, i32 1, i32 0, i32 1, i32 4, i32 4)
  %135 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %angle68 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %135, i32 0, i32 19
  %136 = load %struct.RcmAngle*, %struct.RcmAngle** %angle68, align 8
  %beta69 = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %136, i32 0, i32 1
  store float 0x3FF921FB60000000, float* %beta69, align 4
  %call70 = call %struct._GtkObject* @gtk_adjustment_new(double 9.000000e+01, double 0.000000e+00, double 3.600000e+02, double 1.000000e-02, double 1.000000e+00, double 0.000000e+00)
  %137 = bitcast %struct._GtkObject* %call70 to %struct._GtkAdjustment*
  store %struct._GtkAdjustment* %137, %struct._GtkAdjustment** %adj, align 8
  %138 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call71 = call %struct._GtkWidget* @gtk_spin_button_new(%struct._GtkAdjustment* %138, double 1.000000e-02, i32 2)
  store %struct._GtkWidget* %call71, %struct._GtkWidget** %entry1, align 8
  %139 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %beta_entry = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %139, i32 0, i32 15
  store %struct._GtkWidget* %call71, %struct._GtkWidget** %beta_entry, align 8
  %140 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %141 = bitcast %struct._GtkWidget* %140 to %struct._GTypeInstance*
  %call72 = call i64 @gtk_spin_button_get_type() #5
  %call73 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %141, i64 %call72)
  %142 = bitcast %struct._GTypeInstance* %call73 to %struct._GtkSpinButton*
  call void @gtk_spin_button_set_numeric(%struct._GtkSpinButton* %142, i32 1)
  %143 = load %struct._GtkWidget*, %struct._GtkWidget** %legend_table, align 8
  %144 = bitcast %struct._GtkWidget* %143 to %struct._GTypeInstance*
  %call74 = call i64 @gtk_table_get_type() #5
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %144, i64 %call74)
  %145 = bitcast %struct._GTypeInstance* %call75 to %struct._GtkTable*
  %146 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_table_attach(%struct._GtkTable* %145, %struct._GtkWidget* %146, i32 4, i32 5, i32 0, i32 1, i32 5, i32 1, i32 2, i32 4)
  %147 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %147)
  %148 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %149 = bitcast %struct._GtkWidget* %148 to i8*
  %150 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %151 = bitcast %struct.RcmCircle* %150 to i8*
  %call76 = call i64 @g_signal_connect_data(i8* %149, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct.RcmCircle*)* @rcm_set_beta to void ()*), i8* %151, void (i8*, %struct._GClosure*)* null, i32 0)
  %152 = load i32, i32* getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 2), align 4
  %call77 = call i8* @rcm_units_string(i32 %152)
  %call78 = call %struct._GtkWidget* @gtk_label_new(i8* %call77)
  %153 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %beta_units_label = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %153, i32 0, i32 16
  store %struct._GtkWidget* %call78, %struct._GtkWidget** %beta_units_label, align 8
  %154 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %beta_units_label79 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %154, i32 0, i32 16
  %155 = load %struct._GtkWidget*, %struct._GtkWidget** %beta_units_label79, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %155)
  %156 = load %struct._GtkWidget*, %struct._GtkWidget** %legend_table, align 8
  %157 = bitcast %struct._GtkWidget* %156 to %struct._GTypeInstance*
  %call80 = call i64 @gtk_table_get_type() #5
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %157, i64 %call80)
  %158 = bitcast %struct._GTypeInstance* %call81 to %struct._GtkTable*
  %159 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %beta_units_label82 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %159, i32 0, i32 16
  %160 = load %struct._GtkWidget*, %struct._GtkWidget** %beta_units_label82, align 8
  call void @gtk_table_attach(%struct._GtkTable* %158, %struct._GtkWidget* %160, i32 5, i32 6, i32 0, i32 1, i32 0, i32 1, i32 4, i32 4)
  %call83 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 2, i32 0)
  %161 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %table = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %161, i32 0, i32 2
  store %struct._GtkWidget* %call83, %struct._GtkWidget** %table, align 8
  %162 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %table84 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %162, i32 0, i32 2
  %163 = load %struct._GtkWidget*, %struct._GtkWidget** %table84, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %163)
  %164 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %table85 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %164, i32 0, i32 2
  %165 = load %struct._GtkWidget*, %struct._GtkWidget** %table85, align 8
  %166 = bitcast %struct._GtkWidget* %165 to %struct._GTypeInstance*
  %call86 = call i64 @gtk_table_get_type() #5
  %call87 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %166, i64 %call86)
  %167 = bitcast %struct._GTypeInstance* %call87 to %struct._GtkTable*
  %168 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_table_attach(%struct._GtkTable* %167, %struct._GtkWidget* %168, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 4, i32 0)
  %169 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %table88 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %169, i32 0, i32 2
  %170 = load %struct._GtkWidget*, %struct._GtkWidget** %table88, align 8
  %171 = bitcast %struct._GtkWidget* %170 to %struct._GTypeInstance*
  %call89 = call i64 @gtk_table_get_type() #5
  %call90 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %171, i64 %call89)
  %172 = bitcast %struct._GTypeInstance* %call90 to %struct._GtkTable*
  %173 = load %struct._GtkWidget*, %struct._GtkWidget** %button_table, align 8
  call void @gtk_table_attach(%struct._GtkTable* %172, %struct._GtkWidget* %173, i32 1, i32 2, i32 0, i32 1, i32 0, i32 1, i32 2, i32 0)
  %174 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %table91 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %174, i32 0, i32 2
  %175 = load %struct._GtkWidget*, %struct._GtkWidget** %table91, align 8
  %176 = bitcast %struct._GtkWidget* %175 to %struct._GTypeInstance*
  %call92 = call i64 @gtk_table_get_type() #5
  %call93 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %176, i64 %call92)
  %177 = bitcast %struct._GTypeInstance* %call93 to %struct._GtkTable*
  %178 = load %struct._GtkWidget*, %struct._GtkWidget** %legend_table, align 8
  call void @gtk_table_attach(%struct._GtkTable* %177, %struct._GtkWidget* %178, i32 0, i32 2, i32 1, i32 2, i32 5, i32 1, i32 0, i32 2)
  %179 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %frame94 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %179, i32 0, i32 1
  %180 = load %struct._GtkWidget*, %struct._GtkWidget** %frame94, align 8
  %181 = bitcast %struct._GtkWidget* %180 to %struct._GTypeInstance*
  %call95 = call i64 @gtk_container_get_type() #5
  %call96 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %181, i64 %call95)
  %182 = bitcast %struct._GTypeInstance* %call96 to %struct._GtkContainer*
  %183 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  %table97 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %183, i32 0, i32 2
  %184 = load %struct._GtkWidget*, %struct._GtkWidget** %table97, align 8
  call void @gtk_container_add(%struct._GtkContainer* %182, %struct._GtkWidget* %184)
  %185 = load %struct.RcmCircle*, %struct.RcmCircle** %st, align 8
  ret %struct.RcmCircle* %185
}

declare i8* @g_dpgettext(i8*, i8*, i64) #1

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare void @gtk_widget_set_events(%struct._GtkWidget*, i32) #1

declare i32 @rcm_expose_event(%struct._GtkWidget*, %struct._GdkEventExpose*, %struct.RcmCircle*) #1

declare i32 @rcm_button_press_event(%struct._GtkWidget*, %struct._GdkEventButton*, %struct.RcmCircle*) #1

declare i32 @rcm_release_event(%struct._GtkWidget*, %struct._GdkEventButton*, %struct.RcmCircle*) #1

declare i32 @rcm_motion_notify_event(%struct._GtkWidget*, %struct._GdkEventMotion*, %struct.RcmCircle*) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_button_new_from_stock(i8*) #1

declare void @rcm_cw_ccw(%struct._GtkWidget*, %struct.RcmCircle*) #1

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @rcm_a_to_b(%struct._GtkWidget*, %struct.RcmCircle*) #1

declare void @rcm_360_degrees(%struct._GtkWidget*, %struct.RcmCircle*) #1

declare %struct._GtkObject* @gtk_adjustment_new(double, double, double, double, double, double) #1

declare %struct._GtkWidget* @gtk_spin_button_new(%struct._GtkAdjustment*, double, i32) #1

declare void @gtk_spin_button_set_numeric(%struct._GtkSpinButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_spin_button_get_type() #3

declare void @rcm_set_alpha(%struct._GtkWidget*, %struct.RcmCircle*) #1

declare i8* @rcm_units_string(i32) #1

declare void @rcm_set_beta(%struct._GtkWidget*, %struct.RcmCircle*) #1

declare void @gtk_widget_add_events(%struct._GtkWidget*, i32) #1

declare i32 @rcm_gray_expose_event(%struct._GtkWidget*, %struct._GdkEventExpose*, %struct.RcmGray*) #1

declare i32 @rcm_gray_button_press_event(%struct._GtkWidget*, %struct._GdkEventButton*, %struct.RcmGray*) #1

declare i32 @rcm_gray_release_event(%struct._GtkWidget*, %struct._GdkEventButton*, %struct.RcmGray*) #1

declare i32 @rcm_gray_motion_notify_event(%struct._GtkWidget*, %struct._GdkEventMotion*, %struct.RcmGray*) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #3

declare void @rcm_set_hue(%struct._GtkWidget*, %struct.RcmGray*) #1

declare void @rcm_set_satur(%struct._GtkWidget*, %struct.RcmGray*) #1

declare %struct._GtkWidget* @gtk_radio_button_new_with_label(%struct._GSList*, i8*) #1

declare %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_radio_button_get_type() #3

declare void @gtk_button_clicked(%struct._GtkButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_button_get_type() #3

declare void @rcm_switch_to_gray_from(%struct._GtkWidget*, i8**) #1

declare void @rcm_switch_to_gray_to(%struct._GtkWidget*, i8**) #1

declare void @rcm_set_gray_sat(%struct._GtkWidget*, %struct.RcmGray*) #1

declare void @rcm_switch_to_radians(%struct._GtkWidget*, i8**) #1

declare void @rcm_switch_to_radians_over_PI(%struct._GtkWidget*, i8**) #1

declare void @rcm_switch_to_degrees(%struct._GtkWidget*, i8**) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
