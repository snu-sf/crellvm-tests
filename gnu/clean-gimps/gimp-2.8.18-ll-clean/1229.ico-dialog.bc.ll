; ModuleID = './plug-ins/file-ico/ico-dialog.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GtkSizeGroup = type { %struct._GObject, %struct._GSList*, i8, i8, %struct._GtkRequisition }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GtkRequisition = type { i32, i32 }
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
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._IcoSaveInfo = type { i32*, i32*, i32*, i32*, i32 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkScrolledWindow = type { %struct._GtkBin, %struct._GtkWidget*, %struct._GtkWidget*, i16, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GdkPixbuf = type opaque
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GtkImage = type { %struct._GtkMisc, i32, %union.anon.0, %struct._GdkDrawable*, i32 }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%union.anon.0 = type { %struct._GtkImageAnimationData }
%struct._GtkImageAnimationData = type { %struct._GdkPixbufAnimation*, %struct._GdkPixbufAnimationIter*, i32 }
%struct._GdkPixbufAnimation = type opaque
%struct._GdkPixbufAnimationIter = type opaque

@.str = private unnamed_addr constant [13 x i8] c"Windows Icon\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"file-ico\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"plug-in-winicon\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"save_info\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Icon Details\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"icons_vbox\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"stock-id\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"gimp-warning\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"hint\00", align 1
@.str.9 = private unnamed_addr constant [116 x i8] c"Large icons and compression are not supported by all programs. Older applications may not open this file correctly.\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"warning\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"layer_%i_hbox\00", align 1
@ico_create_icon_hbox.size = internal global %struct._GtkSizeGroup* null, align 8
@.str.12 = private unnamed_addr constant [11 x i8] c"icon_layer\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"icon_layer_num\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"icon_preview\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"1 bpp, 1-bit alpha, 2-slot palette\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"4 bpp, 1-bit alpha, 16-slot palette\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"8 bpp, 1-bit alpha, 256-slot palette\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"24 bpp, 1-bit alpha, no palette\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"32 bpp, 8-bit alpha, no palette\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"icon_menu\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"Compressed (PNG)\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"ico-dialog.c\00", align 1
@__func__.ico_dialog_bpp_changed = private unnamed_addr constant [23 x i8] c"ico_dialog_bpp_changed\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@__func__.ico_dialog_toggle_compress = private unnamed_addr constant [27 x i8] c"ico_dialog_toggle_compress\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"temporary\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"plug-in-threshold-alpha\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @ico_dialog_new(%struct._IcoSaveInfo* %info) #0 {
entry:
  %info.addr = alloca %struct._IcoSaveInfo*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %scrolledwindow = alloca %struct._GtkWidget*, align 8
  %warning = alloca %struct._GtkWidget*, align 8
  store %struct._IcoSaveInfo* %info, %struct._IcoSaveInfo** %info.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)) #5
  %call1 = call %struct._GtkWidget* @gimp_export_dialog_new(i8* %call, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %dialog, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GObject*
  %3 = load %struct._IcoSaveInfo*, %struct._IcoSaveInfo** %info.addr, align 8
  %4 = bitcast %struct._IcoSaveInfo* %3 to i8*
  call void @g_object_set_data(%struct._GObject* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* %4)
  %call3 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %main_vbox, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_container_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call4)
  %7 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %7, i32 12)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %call6 = call %struct._GtkWidget* @gimp_export_dialog_get_content_area(%struct._GtkWidget* %8)
  %9 = bitcast %struct._GtkWidget* %call6 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_box_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkBox*
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %10, %struct._GtkWidget* %11, i32 1, i32 1, i32 0)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %12)
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0)) #5
  %call10 = call %struct._GtkWidget* @gimp_frame_new(i8* %call9)
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %frame, align 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_box_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkBox*
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %15, %struct._GtkWidget* %16, i32 1, i32 1, i32 0)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %17)
  %call13 = call %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment* null, %struct._GtkAdjustment* null)
  store %struct._GtkWidget* %call13, %struct._GtkWidget** %scrolledwindow, align 8
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolledwindow, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_scrolled_window_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call14)
  %20 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow* %20, i32 2, i32 1)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_container_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call16)
  %23 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkContainer*
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolledwindow, align 8
  call void @gtk_container_add(%struct._GtkContainer* %23, %struct._GtkWidget* %24)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolledwindow, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %25)
  %call18 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %vbox, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_container_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call19)
  %28 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %28, i32 6)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 80)
  %31 = bitcast %struct._GTypeInstance* %call21 to %struct._GObject*
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %33 = bitcast %struct._GtkWidget* %32 to i8*
  call void @g_object_set_data(%struct._GObject* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* %33)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolledwindow, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_scrolled_window_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call22)
  %36 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkScrolledWindow*
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_scrolled_window_add_with_viewport(%struct._GtkScrolledWindow* %36, %struct._GtkWidget* %37)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %38)
  %call24 = call i64 @gimp_hint_box_get_type() #6
  %call25 = call i8* @gettext(i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.9, i32 0, i32 0)) #5
  %call26 = call i8* (i64, i8*, ...) @g_object_new(i64 %call24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* %call25, i8* null)
  %39 = bitcast i8* %call26 to %struct._GtkWidget*
  store %struct._GtkWidget* %39, %struct._GtkWidget** %warning, align 8
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_box_get_type() #6
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call27)
  %42 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkBox*
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %warning, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %42, %struct._GtkWidget* %43, i32 0, i32 0, i32 0)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 80)
  %46 = bitcast %struct._GTypeInstance* %call29 to %struct._GObject*
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %warning, align 8
  %48 = bitcast %struct._GtkWidget* %47 to i8*
  call void @g_object_set_data(%struct._GObject* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* %48)
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  ret %struct._GtkWidget* %49
}

declare %struct._GtkWidget* @gimp_export_dialog_new(i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gimp_export_dialog_get_content_area(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment*, %struct._GtkAdjustment*) #1

declare void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scrolled_window_get_type() #3

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare void @gtk_scrolled_window_add_with_viewport(%struct._GtkScrolledWindow*, %struct._GtkWidget*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_hint_box_get_type() #3

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @ico_dialog_add_icon(%struct._GtkWidget* %dialog, i32 %layer, i32 %layer_num) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %layer.addr = alloca i32, align 4
  %layer_num.addr = alloca i32, align 4
  %vbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %key = alloca [4096 x i8], align 16
  %info = alloca %struct._IcoSaveInfo*, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store i32 %layer, i32* %layer.addr, align 4
  store i32 %layer_num, i32* %layer_num.addr, align 4
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0))
  %3 = bitcast i8* %call1 to %struct._GtkWidget*
  store %struct._GtkWidget* %3, %struct._GtkWidget** %vbox, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 80)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GObject*
  %call3 = call i8* @g_object_get_data(%struct._GObject* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0))
  %7 = bitcast i8* %call3 to %struct._IcoSaveInfo*
  store %struct._IcoSaveInfo* %7, %struct._IcoSaveInfo** %info, align 8
  %8 = load i32, i32* %layer.addr, align 4
  %call4 = call %struct._GtkWidget* @ico_preview_new(i32 %8)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %preview, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %10 = load i32, i32* %layer.addr, align 4
  %11 = load i32, i32* %layer_num.addr, align 4
  %12 = load %struct._IcoSaveInfo*, %struct._IcoSaveInfo** %info, align 8
  %call5 = call %struct._GtkWidget* @ico_create_icon_hbox(%struct._GtkWidget* %9, i32 %10, i32 %11, %struct._IcoSaveInfo* %12)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %hbox, align 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_box_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call6)
  %15 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkBox*
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %15, %struct._GtkWidget* %16, i32 0, i32 0, i32 0)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %17)
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %key, i32 0, i32 0
  %18 = load i32, i32* %layer.addr, align 4
  %call8 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay, i64 4096, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i32 %18)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 80)
  %21 = bitcast %struct._GTypeInstance* %call9 to %struct._GObject*
  %arraydecay10 = getelementptr inbounds [4096 x i8], [4096 x i8]* %key, i32 0, i32 0
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %23 = bitcast %struct._GtkWidget* %22 to i8*
  call void @g_object_set_data(%struct._GObject* %21, i8* %arraydecay10, i8* %23)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %25 = load i32, i32* %layer.addr, align 4
  %26 = load i32, i32* %layer_num.addr, align 4
  %idxprom = sext i32 %26 to i64
  %27 = load %struct._IcoSaveInfo*, %struct._IcoSaveInfo** %info, align 8
  %depths = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %27, i32 0, i32 0
  %28 = load i32*, i32** %depths, align 8
  %arrayidx = getelementptr inbounds i32, i32* %28, i64 %idxprom
  %29 = load i32, i32* %arrayidx, align 4
  call void @ico_dialog_update_icon_preview(%struct._GtkWidget* %24, i32 %25, i32 %29)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %31 = load %struct._IcoSaveInfo*, %struct._IcoSaveInfo** %info, align 8
  call void @ico_dialog_check_compat(%struct._GtkWidget* %30, %struct._IcoSaveInfo* %31)
  ret void
}

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @ico_preview_new(i32 %layer) #0 {
entry:
  %layer.addr = alloca i32, align 4
  %image = alloca %struct._GtkWidget*, align 8
  %pixbuf = alloca %struct._GdkPixbuf*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store i32 %layer, i32* %layer.addr, align 4
  %0 = load i32, i32* %layer.addr, align 4
  %call = call i32 @gimp_drawable_width(i32 %0)
  store i32 %call, i32* %width, align 4
  %1 = load i32, i32* %layer.addr, align 4
  %call1 = call i32 @gimp_drawable_height(i32 %1)
  store i32 %call1, i32* %height, align 4
  %2 = load i32, i32* %layer.addr, align 4
  %3 = load i32, i32* %width, align 4
  %cmp = icmp slt i32 %3, 128
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load i32, i32* %width, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 128, %cond.false ]
  %5 = load i32, i32* %height, align 4
  %cmp2 = icmp slt i32 %5, 128
  br i1 %cmp2, label %cond.true.3, label %cond.false.4

cond.true.3:                                      ; preds = %cond.end
  %6 = load i32, i32* %height, align 4
  br label %cond.end.5

cond.false.4:                                     ; preds = %cond.end
  br label %cond.end.5

cond.end.5:                                       ; preds = %cond.false.4, %cond.true.3
  %cond6 = phi i32 [ %6, %cond.true.3 ], [ 128, %cond.false.4 ]
  %call7 = call %struct._GdkPixbuf* @gimp_drawable_get_thumbnail(i32 %2, i32 %cond, i32 %cond6, i32 1)
  store %struct._GdkPixbuf* %call7, %struct._GdkPixbuf** %pixbuf, align 8
  %7 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %call8 = call %struct._GtkWidget* @gtk_image_new_from_pixbuf(%struct._GdkPixbuf* %7)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %image, align 8
  %8 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %9 = bitcast %struct._GdkPixbuf* %8 to i8*
  call void @g_object_unref(i8* %9)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  ret %struct._GtkWidget* %10
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @ico_create_icon_hbox(%struct._GtkWidget* %icon_preview, i32 %layer, i32 %layer_num, %struct._IcoSaveInfo* %info) #0 {
entry:
  %icon_preview.addr = alloca %struct._GtkWidget*, align 8
  %layer.addr = alloca i32, align 4
  %layer_num.addr = alloca i32, align 4
  %info.addr = alloca %struct._IcoSaveInfo*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %alignment = alloca %struct._GtkWidget*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  %checkbox = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %icon_preview, %struct._GtkWidget** %icon_preview.addr, align 8
  store i32 %layer, i32* %layer.addr, align 4
  store i32 %layer_num, i32* %layer_num.addr, align 4
  store %struct._IcoSaveInfo* %info, %struct._IcoSaveInfo** %info.addr, align 8
  %call = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %hbox, align 8
  %call1 = call %struct._GtkWidget* @gtk_alignment_new(float 1.000000e+00, float 5.000000e-01, float 0.000000e+00, float 0.000000e+00)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %alignment, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_box_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call2)
  %2 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkBox*
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %alignment, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %2, %struct._GtkWidget* %3, i32 0, i32 0, i32 0)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %alignment, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %4)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 80)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GObject*
  %8 = load i32, i32* %layer.addr, align 4
  %conv = sext i32 %8 to i64
  %9 = inttoptr i64 %conv to i8*
  call void @g_object_set_data(%struct._GObject* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i8* %9)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 80)
  %12 = bitcast %struct._GTypeInstance* %call5 to %struct._GObject*
  %13 = load i32, i32* %layer_num.addr, align 4
  %conv6 = sext i32 %13 to i64
  %14 = inttoptr i64 %conv6 to i8*
  call void @g_object_set_data(%struct._GObject* %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i8* %14)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 80)
  %17 = bitcast %struct._GTypeInstance* %call7 to %struct._GObject*
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %icon_preview.addr, align 8
  %19 = bitcast %struct._GtkWidget* %18 to i8*
  call void @g_object_set_data(%struct._GObject* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i8* %19)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %alignment, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_container_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call8)
  %22 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkContainer*
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %icon_preview.addr, align 8
  call void @gtk_container_add(%struct._GtkContainer* %22, %struct._GtkWidget* %23)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %icon_preview.addr, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %24)
  %25 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** @ico_create_icon_hbox.size, align 8
  %tobool = icmp ne %struct._GtkSizeGroup* %25, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call10 = call %struct._GtkSizeGroup* @gtk_size_group_new(i32 1)
  store %struct._GtkSizeGroup* %call10, %struct._GtkSizeGroup** @ico_create_icon_hbox.size, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %26 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** @ico_create_icon_hbox.size, align 8
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %alignment, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %26, %struct._GtkWidget* %27)
  %call11 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 2)
  store %struct._GtkWidget* %call11, %struct._GtkWidget** %vbox, align 8
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_box_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call12)
  %30 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkBox*
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %30, %struct._GtkWidget* %31, i32 0, i32 0, i32 0)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %32)
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i32 0, i32 0)) #5
  %call15 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i32 0, i32 0)) #5
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i32 0, i32 0)) #5
  %call17 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i32 0, i32 0)) #5
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i32 0, i32 0)) #5
  %call19 = call %struct._GtkWidget* (i8*, i32, ...) @gimp_int_combo_box_new(i8* %call14, i32 1, i8* %call15, i32 4, i8* %call16, i32 8, i8* %call17, i32 24, i8* %call18, i32 32, i8* null)
  store %struct._GtkWidget* %call19, %struct._GtkWidget** %combo, align 8
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_int_combo_box_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call20)
  %35 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpIntComboBox*
  %36 = load i32, i32* %layer_num.addr, align 4
  %idxprom = sext i32 %36 to i64
  %37 = load %struct._IcoSaveInfo*, %struct._IcoSaveInfo** %info.addr, align 8
  %depths = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %37, i32 0, i32 0
  %38 = load i32*, i32** %depths, align 8
  %arrayidx = getelementptr inbounds i32, i32* %38, i64 %idxprom
  %39 = load i32, i32* %arrayidx, align 4
  %call22 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %35, i32 %39)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %41 = bitcast %struct._GtkWidget* %40 to i8*
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %43 = bitcast %struct._GtkWidget* %42 to i8*
  %call23 = call i64 @g_signal_connect_data(i8* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GObject*)* @ico_dialog_bpp_changed to void ()*), i8* %43, void (i8*, %struct._GClosure*)* null, i32 0)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 80)
  %46 = bitcast %struct._GTypeInstance* %call24 to %struct._GObject*
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %48 = bitcast %struct._GtkWidget* %47 to i8*
  call void @g_object_set_data(%struct._GObject* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* %48)
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %50 = bitcast %struct._GtkWidget* %49 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_box_get_type() #6
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call25)
  %51 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkBox*
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %51, %struct._GtkWidget* %52, i32 0, i32 0, i32 0)
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %53)
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0)) #5
  %call28 = call %struct._GtkWidget* @gtk_check_button_new_with_label(i8* %call27)
  store %struct._GtkWidget* %call28, %struct._GtkWidget** %checkbox, align 8
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %checkbox, align 8
  %55 = bitcast %struct._GtkWidget* %54 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_toggle_button_get_type() #6
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call29)
  %56 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkToggleButton*
  %57 = load i32, i32* %layer_num.addr, align 4
  %idxprom31 = sext i32 %57 to i64
  %58 = load %struct._IcoSaveInfo*, %struct._IcoSaveInfo** %info.addr, align 8
  %compress = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %58, i32 0, i32 2
  %59 = load i32*, i32** %compress, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %59, i64 %idxprom31
  %60 = load i32, i32* %arrayidx32, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %56, i32 %60)
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %checkbox, align 8
  %62 = bitcast %struct._GtkWidget* %61 to i8*
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %64 = bitcast %struct._GtkWidget* %63 to i8*
  %call33 = call i64 @g_signal_connect_data(i8* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GObject*)* @ico_dialog_toggle_compress to void ()*), i8* %64, void (i8*, %struct._GClosure*)* null, i32 0)
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %66 = bitcast %struct._GtkWidget* %65 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_box_get_type() #6
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call34)
  %67 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkBox*
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %checkbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %67, %struct._GtkWidget* %68, i32 0, i32 0, i32 0)
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %checkbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %69)
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  ret %struct._GtkWidget* %70
}

declare i32 @g_snprintf(i8*, i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @ico_dialog_update_icon_preview(%struct._GtkWidget* %dialog, i32 %layer, i32 %bpp) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %layer.addr = alloca i32, align 4
  %bpp.addr = alloca i32, align 4
  %preview = alloca %struct._GtkWidget*, align 8
  %pixbuf = alloca %struct._GdkPixbuf*, align 8
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %tmp = alloca %struct._GimpDrawable*, align 8
  %src_pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %dst_pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %image = alloca i32, align 4
  %tmp_image = alloca i32, align 4
  %tmp_layer = alloca i32, align 4
  %buffer = alloca i8*, align 8
  %cmap = alloca i8*, align 8
  %num_colors = alloca i32, align 4
  %drawable79 = alloca %struct._GimpDrawable*, align 8
  %tmp81 = alloca %struct._GimpDrawable*, align 8
  %src_pixel_rgn83 = alloca %struct._GimpPixelRgn, align 8
  %dst_pixel_rgn85 = alloca %struct._GimpPixelRgn, align 8
  %image87 = alloca i32, align 4
  %tmp_image89 = alloca i32, align 4
  %tmp_layer91 = alloca i32, align 4
  %buffer93 = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %n_return_vals = alloca i32, align 4
  %cmap104 = alloca i8*, align 8
  %num_colors106 = alloca i32, align 4
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store i32 %layer, i32* %layer.addr, align 4
  store i32 %bpp, i32* %bpp.addr, align 4
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %1 = load i32, i32* %layer.addr, align 4
  %call = call %struct._GtkWidget* @ico_dialog_get_layer_preview(%struct._GtkWidget* %0, i32 %1)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %preview, align 8
  %2 = load i32, i32* %layer.addr, align 4
  %call1 = call i32 @gimp_drawable_width(i32 %2)
  store i32 %call1, i32* %w, align 4
  %3 = load i32, i32* %layer.addr, align 4
  %call2 = call i32 @gimp_drawable_height(i32 %3)
  store i32 %call2, i32* %h, align 4
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %bpp.addr, align 4
  %cmp = icmp sle i32 %5, 8
  br i1 %cmp, label %if.then.3, label %if.else.74

if.then.3:                                        ; preds = %if.end
  %6 = load i32, i32* %layer.addr, align 4
  %call12 = call i32 @gimp_item_get_image(i32 %6)
  store i32 %call12, i32* %image, align 4
  %7 = load i32, i32* %w, align 4
  %8 = load i32, i32* %h, align 4
  %9 = load i32, i32* %image, align 4
  %call13 = call i32 @gimp_image_base_type(i32 %9)
  %call14 = call i32 @gimp_image_new(i32 %7, i32 %8, i32 %call13)
  store i32 %call14, i32* %tmp_image, align 4
  %10 = load i32, i32* %tmp_image, align 4
  %call15 = call i32 @gimp_image_undo_disable(i32 %10)
  %11 = load i32, i32* %layer.addr, align 4
  %call16 = call i32 @gimp_drawable_is_indexed(i32 %11)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %if.then.3
  %12 = load i32, i32* %image, align 4
  %call19 = call i8* @gimp_image_get_colormap(i32 %12, i32* %num_colors)
  store i8* %call19, i8** %cmap, align 8
  %13 = load i32, i32* %tmp_image, align 4
  %14 = load i8*, i8** %cmap, align 8
  %15 = load i32, i32* %num_colors, align 4
  %call20 = call i32 @gimp_image_set_colormap(i32 %13, i8* %14, i32 %15)
  %16 = load i8*, i8** %cmap, align 8
  call void @g_free(i8* %16)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %if.then.3
  %17 = load i32, i32* %tmp_image, align 4
  %18 = load i32, i32* %w, align 4
  %19 = load i32, i32* %h, align 4
  %20 = load i32, i32* %layer.addr, align 4
  %call22 = call i32 @gimp_drawable_type(i32 %20)
  %call23 = call i32 @gimp_layer_new(i32 %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i32 %18, i32 %19, i32 %call22, double 1.000000e+02, i32 0)
  store i32 %call23, i32* %tmp_layer, align 4
  %21 = load i32, i32* %tmp_image, align 4
  %22 = load i32, i32* %tmp_layer, align 4
  %call24 = call i32 @gimp_image_insert_layer(i32 %21, i32 %22, i32 -1, i32 0)
  %23 = load i32, i32* %layer.addr, align 4
  %call25 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %23)
  store %struct._GimpDrawable* %call25, %struct._GimpDrawable** %drawable, align 8
  %24 = load i32, i32* %tmp_layer, align 4
  %call26 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %24)
  store %struct._GimpDrawable* %call26, %struct._GimpDrawable** %tmp, align 8
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %26 = load i32, i32* %w, align 4
  %27 = load i32, i32* %h, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_pixel_rgn, %struct._GimpDrawable* %25, i32 0, i32 0, i32 %26, i32 %27, i32 0, i32 0)
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %tmp, align 8
  %29 = load i32, i32* %w, align 4
  %30 = load i32, i32* %h, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dst_pixel_rgn, %struct._GimpDrawable* %28, i32 0, i32 0, i32 %29, i32 %30, i32 1, i32 0)
  %31 = load i32, i32* %w, align 4
  %32 = load i32, i32* %h, align 4
  %mul = mul nsw i32 %31, %32
  %mul27 = mul nsw i32 %mul, 4
  %conv = sext i32 %mul27 to i64
  %call28 = call noalias i8* @g_malloc(i64 %conv)
  store i8* %call28, i8** %buffer, align 8
  %33 = load i8*, i8** %buffer, align 8
  %34 = load i32, i32* %w, align 4
  %35 = load i32, i32* %h, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %src_pixel_rgn, i8* %33, i32 0, i32 0, i32 %34, i32 %35)
  %36 = load i8*, i8** %buffer, align 8
  %37 = load i32, i32* %w, align 4
  %38 = load i32, i32* %h, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %dst_pixel_rgn, i8* %36, i32 0, i32 0, i32 %37, i32 %38)
  %39 = load %struct._GimpDrawable*, %struct._GimpDrawable** %tmp, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %39)
  %40 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %40)
  %41 = load i32, i32* %layer.addr, align 4
  %call29 = call i32 @gimp_drawable_is_indexed(i32 %41)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.end.21
  %42 = load i32, i32* %tmp_image, align 4
  %call32 = call i32 @gimp_image_convert_rgb(i32 %42)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %if.end.21
  %43 = load i32, i32* %tmp_image, align 4
  %44 = load i32, i32* %bpp.addr, align 4
  %shl = shl i32 1, %44
  %call34 = call i32 @gimp_image_convert_indexed(i32 %43, i32 1, i32 0, i32 %shl, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0))
  %45 = load i32, i32* %tmp_image, align 4
  %call35 = call i8* @gimp_image_get_colormap(i32 %45, i32* %num_colors)
  store i8* %call35, i8** %cmap, align 8
  %46 = load i32, i32* %num_colors, align 4
  %47 = load i32, i32* %bpp.addr, align 4
  %shl36 = shl i32 1, %47
  %cmp37 = icmp eq i32 %46, %shl36
  br i1 %cmp37, label %land.lhs.true, label %if.end.63

land.lhs.true:                                    ; preds = %if.end.33
  %48 = load i8*, i8** %cmap, align 8
  %49 = load i32, i32* %num_colors, align 4
  %call39 = call i32 @ico_cmap_contains_black(i8* %48, i32 %49)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.end.63, label %if.then.41

if.then.41:                                       ; preds = %land.lhs.true
  %50 = load i32, i32* %layer.addr, align 4
  %call42 = call i32 @gimp_drawable_is_indexed(i32 %50)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.else

if.then.44:                                       ; preds = %if.then.41
  %51 = load i8*, i8** %cmap, align 8
  call void @g_free(i8* %51)
  %52 = load i32, i32* %image, align 4
  %call45 = call i8* @gimp_image_get_colormap(i32 %52, i32* %num_colors)
  store i8* %call45, i8** %cmap, align 8
  %53 = load i32, i32* %tmp_image, align 4
  %54 = load i8*, i8** %cmap, align 8
  %55 = load i32, i32* %num_colors, align 4
  %call46 = call i32 @gimp_image_set_colormap(i32 %53, i8* %54, i32 %55)
  br label %if.end.54

if.else:                                          ; preds = %if.then.41
  %56 = load i32, i32* %layer.addr, align 4
  %call47 = call i32 @gimp_drawable_is_gray(i32 %56)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then.49, label %if.else.51

if.then.49:                                       ; preds = %if.else
  %57 = load i32, i32* %tmp_image, align 4
  %call50 = call i32 @gimp_image_convert_grayscale(i32 %57)
  br label %if.end.53

if.else.51:                                       ; preds = %if.else
  %58 = load i32, i32* %tmp_image, align 4
  %call52 = call i32 @gimp_image_convert_rgb(i32 %58)
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.51, %if.then.49
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.then.44
  %59 = load i32, i32* %tmp_layer, align 4
  %call55 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %59)
  store %struct._GimpDrawable* %call55, %struct._GimpDrawable** %tmp, align 8
  %60 = load %struct._GimpDrawable*, %struct._GimpDrawable** %tmp, align 8
  %61 = load i32, i32* %w, align 4
  %62 = load i32, i32* %h, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dst_pixel_rgn, %struct._GimpDrawable* %60, i32 0, i32 0, i32 %61, i32 %62, i32 1, i32 0)
  %63 = load i8*, i8** %buffer, align 8
  %64 = load i32, i32* %w, align 4
  %65 = load i32, i32* %h, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %dst_pixel_rgn, i8* %63, i32 0, i32 0, i32 %64, i32 %65)
  %66 = load %struct._GimpDrawable*, %struct._GimpDrawable** %tmp, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %66)
  %67 = load i32, i32* %layer.addr, align 4
  %call56 = call i32 @gimp_drawable_is_rgb(i32 %67)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.end.60, label %if.then.58

if.then.58:                                       ; preds = %if.end.54
  %68 = load i32, i32* %tmp_image, align 4
  %call59 = call i32 @gimp_image_convert_rgb(i32 %68)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.58, %if.end.54
  %69 = load i32, i32* %tmp_image, align 4
  %70 = load i32, i32* %bpp.addr, align 4
  %shl61 = shl i32 1, %70
  %sub = sub nsw i32 %shl61, 1
  %call62 = call i32 @gimp_image_convert_indexed(i32 %69, i32 1, i32 0, i32 %sub, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.60, %land.lhs.true, %if.end.33
  %71 = load i8*, i8** %cmap, align 8
  call void @g_free(i8* %71)
  %72 = load i8*, i8** %buffer, align 8
  call void @g_free(i8* %72)
  %73 = load i32, i32* %tmp_layer, align 4
  %74 = load i32, i32* %w, align 4
  %cmp64 = icmp slt i32 %74, 128
  br i1 %cmp64, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.63
  %75 = load i32, i32* %w, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.63
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %75, %cond.true ], [ 128, %cond.false ]
  %76 = load i32, i32* %h, align 4
  %cmp66 = icmp slt i32 %76, 128
  br i1 %cmp66, label %cond.true.68, label %cond.false.69

cond.true.68:                                     ; preds = %cond.end
  %77 = load i32, i32* %h, align 4
  br label %cond.end.70

cond.false.69:                                    ; preds = %cond.end
  br label %cond.end.70

cond.end.70:                                      ; preds = %cond.false.69, %cond.true.68
  %cond71 = phi i32 [ %77, %cond.true.68 ], [ 128, %cond.false.69 ]
  %call72 = call %struct._GdkPixbuf* @gimp_drawable_get_thumbnail(i32 %73, i32 %cond, i32 %cond71, i32 1)
  store %struct._GdkPixbuf* %call72, %struct._GdkPixbuf** %pixbuf, align 8
  %78 = load i32, i32* %tmp_image, align 4
  %call73 = call i32 @gimp_image_delete(i32 %78)
  br label %if.end.154

if.else.74:                                       ; preds = %if.end
  %79 = load i32, i32* %bpp.addr, align 4
  %cmp75 = icmp eq i32 %79, 24
  br i1 %cmp75, label %if.then.77, label %if.else.139

if.then.77:                                       ; preds = %if.else.74
  %80 = load i32, i32* %layer.addr, align 4
  %call96 = call i32 @gimp_item_get_image(i32 %80)
  store i32 %call96, i32* %image87, align 4
  %81 = load i32, i32* %w, align 4
  %82 = load i32, i32* %h, align 4
  %83 = load i32, i32* %image87, align 4
  %call97 = call i32 @gimp_image_base_type(i32 %83)
  %call98 = call i32 @gimp_image_new(i32 %81, i32 %82, i32 %call97)
  store i32 %call98, i32* %tmp_image89, align 4
  %84 = load i32, i32* %tmp_image89, align 4
  %call99 = call i32 @gimp_image_undo_disable(i32 %84)
  %85 = load i32, i32* %layer.addr, align 4
  %call100 = call i32 @gimp_drawable_is_indexed(i32 %85)
  %tobool101 = icmp ne i32 %call100, 0
  br i1 %tobool101, label %if.then.102, label %if.end.109

if.then.102:                                      ; preds = %if.then.77
  %86 = load i32, i32* %image87, align 4
  %call107 = call i8* @gimp_image_get_colormap(i32 %86, i32* %num_colors106)
  store i8* %call107, i8** %cmap104, align 8
  %87 = load i32, i32* %tmp_image89, align 4
  %88 = load i8*, i8** %cmap104, align 8
  %89 = load i32, i32* %num_colors106, align 4
  %call108 = call i32 @gimp_image_set_colormap(i32 %87, i8* %88, i32 %89)
  %90 = load i8*, i8** %cmap104, align 8
  call void @g_free(i8* %90)
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.102, %if.then.77
  %91 = load i32, i32* %tmp_image89, align 4
  %92 = load i32, i32* %w, align 4
  %93 = load i32, i32* %h, align 4
  %94 = load i32, i32* %layer.addr, align 4
  %call110 = call i32 @gimp_drawable_type(i32 %94)
  %call111 = call i32 @gimp_layer_new(i32 %91, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i32 %92, i32 %93, i32 %call110, double 1.000000e+02, i32 0)
  store i32 %call111, i32* %tmp_layer91, align 4
  %95 = load i32, i32* %tmp_image89, align 4
  %96 = load i32, i32* %tmp_layer91, align 4
  %call112 = call i32 @gimp_image_insert_layer(i32 %95, i32 %96, i32 -1, i32 0)
  %97 = load i32, i32* %layer.addr, align 4
  %call113 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %97)
  store %struct._GimpDrawable* %call113, %struct._GimpDrawable** %drawable79, align 8
  %98 = load i32, i32* %tmp_layer91, align 4
  %call114 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %98)
  store %struct._GimpDrawable* %call114, %struct._GimpDrawable** %tmp81, align 8
  %99 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable79, align 8
  %100 = load i32, i32* %w, align 4
  %101 = load i32, i32* %h, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_pixel_rgn83, %struct._GimpDrawable* %99, i32 0, i32 0, i32 %100, i32 %101, i32 0, i32 0)
  %102 = load %struct._GimpDrawable*, %struct._GimpDrawable** %tmp81, align 8
  %103 = load i32, i32* %w, align 4
  %104 = load i32, i32* %h, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dst_pixel_rgn85, %struct._GimpDrawable* %102, i32 0, i32 0, i32 %103, i32 %104, i32 1, i32 0)
  %105 = load i32, i32* %w, align 4
  %106 = load i32, i32* %h, align 4
  %mul115 = mul nsw i32 %105, %106
  %mul116 = mul nsw i32 %mul115, 4
  %conv117 = sext i32 %mul116 to i64
  %call118 = call noalias i8* @g_malloc(i64 %conv117)
  store i8* %call118, i8** %buffer93, align 8
  %107 = load i8*, i8** %buffer93, align 8
  %108 = load i32, i32* %w, align 4
  %109 = load i32, i32* %h, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %src_pixel_rgn83, i8* %107, i32 0, i32 0, i32 %108, i32 %109)
  %110 = load i8*, i8** %buffer93, align 8
  %111 = load i32, i32* %w, align 4
  %112 = load i32, i32* %h, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %dst_pixel_rgn85, i8* %110, i32 0, i32 0, i32 %111, i32 %112)
  %113 = load i8*, i8** %buffer93, align 8
  call void @g_free(i8* %113)
  %114 = load %struct._GimpDrawable*, %struct._GimpDrawable** %tmp81, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %114)
  %115 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable79, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %115)
  %116 = load i32, i32* %layer.addr, align 4
  %call119 = call i32 @gimp_drawable_is_indexed(i32 %116)
  %tobool120 = icmp ne i32 %call119, 0
  br i1 %tobool120, label %if.then.121, label %if.end.123

if.then.121:                                      ; preds = %if.end.109
  %117 = load i32, i32* %tmp_image89, align 4
  %call122 = call i32 @gimp_image_convert_rgb(i32 %117)
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.121, %if.end.109
  %118 = load i32, i32* %tmp_image89, align 4
  %119 = load i32, i32* %tmp_layer91, align 4
  %call124 = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i32 0, i32 0), i32* %n_return_vals, i32 0, i32 1, i32 13, i32 %118, i32 16, i32 %119, i32 0, i32 127, i32 22)
  store %struct._GimpParam* %call124, %struct._GimpParam** %return_vals, align 8
  %120 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %121 = load i32, i32* %n_return_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %120, i32 %121)
  %122 = load i32, i32* %tmp_layer91, align 4
  %123 = load i32, i32* %w, align 4
  %cmp125 = icmp slt i32 %123, 128
  br i1 %cmp125, label %cond.true.127, label %cond.false.128

cond.true.127:                                    ; preds = %if.end.123
  %124 = load i32, i32* %w, align 4
  br label %cond.end.129

cond.false.128:                                   ; preds = %if.end.123
  br label %cond.end.129

cond.end.129:                                     ; preds = %cond.false.128, %cond.true.127
  %cond130 = phi i32 [ %124, %cond.true.127 ], [ 128, %cond.false.128 ]
  %125 = load i32, i32* %h, align 4
  %cmp131 = icmp slt i32 %125, 128
  br i1 %cmp131, label %cond.true.133, label %cond.false.134

cond.true.133:                                    ; preds = %cond.end.129
  %126 = load i32, i32* %h, align 4
  br label %cond.end.135

cond.false.134:                                   ; preds = %cond.end.129
  br label %cond.end.135

cond.end.135:                                     ; preds = %cond.false.134, %cond.true.133
  %cond136 = phi i32 [ %126, %cond.true.133 ], [ 128, %cond.false.134 ]
  %call137 = call %struct._GdkPixbuf* @gimp_drawable_get_thumbnail(i32 %122, i32 %cond130, i32 %cond136, i32 1)
  store %struct._GdkPixbuf* %call137, %struct._GdkPixbuf** %pixbuf, align 8
  %127 = load i32, i32* %tmp_image89, align 4
  %call138 = call i32 @gimp_image_delete(i32 %127)
  br label %if.end.153

if.else.139:                                      ; preds = %if.else.74
  %128 = load i32, i32* %layer.addr, align 4
  %129 = load i32, i32* %w, align 4
  %cmp140 = icmp slt i32 %129, 128
  br i1 %cmp140, label %cond.true.142, label %cond.false.143

cond.true.142:                                    ; preds = %if.else.139
  %130 = load i32, i32* %w, align 4
  br label %cond.end.144

cond.false.143:                                   ; preds = %if.else.139
  br label %cond.end.144

cond.end.144:                                     ; preds = %cond.false.143, %cond.true.142
  %cond145 = phi i32 [ %130, %cond.true.142 ], [ 128, %cond.false.143 ]
  %131 = load i32, i32* %h, align 4
  %cmp146 = icmp slt i32 %131, 128
  br i1 %cmp146, label %cond.true.148, label %cond.false.149

cond.true.148:                                    ; preds = %cond.end.144
  %132 = load i32, i32* %h, align 4
  br label %cond.end.150

cond.false.149:                                   ; preds = %cond.end.144
  br label %cond.end.150

cond.end.150:                                     ; preds = %cond.false.149, %cond.true.148
  %cond151 = phi i32 [ %132, %cond.true.148 ], [ 128, %cond.false.149 ]
  %call152 = call %struct._GdkPixbuf* @gimp_drawable_get_thumbnail(i32 %128, i32 %cond145, i32 %cond151, i32 1)
  store %struct._GdkPixbuf* %call152, %struct._GdkPixbuf** %pixbuf, align 8
  br label %if.end.153

if.end.153:                                       ; preds = %cond.end.150, %cond.end.135
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.153, %cond.end.70
  %133 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %134 = bitcast %struct._GtkWidget* %133 to %struct._GTypeInstance*
  %call155 = call i64 @gtk_image_get_type() #6
  %call156 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %134, i64 %call155)
  %135 = bitcast %struct._GTypeInstance* %call156 to %struct._GtkImage*
  %136 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  call void @gtk_image_set_from_pixbuf(%struct._GtkImage* %135, %struct._GdkPixbuf* %136)
  %137 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %138 = bitcast %struct._GdkPixbuf* %137 to i8*
  call void @g_object_unref(i8* %138)
  br label %return

return:                                           ; preds = %if.end.154, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ico_dialog_check_compat(%struct._GtkWidget* %dialog, %struct._IcoSaveInfo* %info) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %info.addr = alloca %struct._IcoSaveInfo*, align 8
  %warning = alloca %struct._GtkWidget*, align 8
  %warn = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store %struct._IcoSaveInfo* %info, %struct._IcoSaveInfo** %info.addr, align 8
  store i32 0, i32* %warn, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct._IcoSaveInfo*, %struct._IcoSaveInfo** %info.addr, align 8
  %num_icons = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %1, i32 0, i32 4
  %2 = load i32, i32* %num_icons, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct._IcoSaveInfo*, %struct._IcoSaveInfo** %info.addr, align 8
  %layers = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %4, i32 0, i32 3
  %5 = load i32*, i32** %layers, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %call = call i32 @gimp_drawable_width(i32 %6)
  %cmp1 = icmp sgt i32 %call, 255
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %7 to i64
  %8 = load %struct._IcoSaveInfo*, %struct._IcoSaveInfo** %info.addr, align 8
  %layers3 = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %8, i32 0, i32 3
  %9 = load i32*, i32** %layers3, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %9, i64 %idxprom2
  %10 = load i32, i32* %arrayidx4, align 4
  %call5 = call i32 @gimp_drawable_height(i32 %10)
  %cmp6 = icmp sgt i32 %call5, 255
  br i1 %cmp6, label %if.then, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false
  %11 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %11 to i64
  %12 = load %struct._IcoSaveInfo*, %struct._IcoSaveInfo** %info.addr, align 8
  %compress = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %12, i32 0, i32 2
  %13 = load i32*, i32** %compress, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %13, i64 %idxprom8
  %14 = load i32, i32* %arrayidx9, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.7, %lor.lhs.false, %for.body
  store i32 1, i32* %warn, align 4
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false.7
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 80)
  %18 = bitcast %struct._GTypeInstance* %call10 to %struct._GObject*
  %call11 = call i8* @g_object_get_data(%struct._GObject* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0))
  %19 = bitcast i8* %call11 to %struct._GtkWidget*
  store %struct._GtkWidget* %19, %struct._GtkWidget** %warning, align 8
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %warning, align 8
  %21 = load i32, i32* %warn, align 4
  call void @gtk_widget_set_visible(%struct._GtkWidget* %20, i32 %21)
  ret void
}

declare i32 @gimp_drawable_width(i32) #1

declare i32 @gimp_drawable_height(i32) #1

declare %struct._GdkPixbuf* @gimp_drawable_get_thumbnail(i32, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_image_new_from_pixbuf(%struct._GdkPixbuf*) #1

declare void @g_object_unref(i8*) #1

declare %struct._GtkWidget* @gtk_alignment_new(float, float, float, float) #1

declare %struct._GtkSizeGroup* @gtk_size_group_new(i32) #1

declare void @gtk_size_group_add_widget(%struct._GtkSizeGroup*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_int_combo_box_new(i8*, i32, ...) #1

declare i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int_combo_box_get_type() #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @ico_dialog_bpp_changed(%struct._GtkWidget* %combo, %struct._GObject* %hbox) #0 {
entry:
  %combo.addr = alloca %struct._GtkWidget*, align 8
  %hbox.addr = alloca %struct._GObject*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %layer = alloca i32, align 4
  %layer_num = alloca i32, align 4
  %bpp = alloca i32, align 4
  %info = alloca %struct._IcoSaveInfo*, align 8
  store %struct._GtkWidget* %combo, %struct._GtkWidget** %combo.addr, align 8
  store %struct._GObject* %hbox, %struct._GObject** %hbox.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %combo.addr, align 8
  %call = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %dialog, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %combo.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_int_combo_box_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpIntComboBox*
  %call3 = call i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox* %3, i32* %bpp)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 80)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GObject*
  %call5 = call i8* @g_object_get_data(%struct._GObject* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0))
  %7 = bitcast i8* %call5 to %struct._IcoSaveInfo*
  store %struct._IcoSaveInfo* %7, %struct._IcoSaveInfo** %info, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %8 = load %struct._IcoSaveInfo*, %struct._IcoSaveInfo** %info, align 8
  %tobool = icmp ne %struct._IcoSaveInfo* %8, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0), i32 446, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.ico_dialog_bpp_changed, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0)) #7
  unreachable

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %9 = load %struct._GObject*, %struct._GObject** %hbox.addr, align 8
  %call6 = call i8* @g_object_get_data(%struct._GObject* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0))
  %10 = ptrtoint i8* %call6 to i64
  %conv = trunc i64 %10 to i32
  store i32 %conv, i32* %layer, align 4
  %11 = load %struct._GObject*, %struct._GObject** %hbox.addr, align 8
  %call7 = call i8* @g_object_get_data(%struct._GObject* %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0))
  %12 = ptrtoint i8* %call7 to i64
  %conv8 = trunc i64 %12 to i32
  store i32 %conv8, i32* %layer_num, align 4
  %13 = load i32, i32* %bpp, align 4
  %14 = load i32, i32* %layer_num, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load %struct._IcoSaveInfo*, %struct._IcoSaveInfo** %info, align 8
  %depths = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %15, i32 0, i32 0
  %16 = load i32*, i32** %depths, align 8
  %arrayidx = getelementptr inbounds i32, i32* %16, i64 %idxprom
  store i32 %13, i32* %arrayidx, align 4
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %18 = load i32, i32* %layer, align 4
  %19 = load i32, i32* %bpp, align 4
  call void @ico_dialog_update_icon_preview(%struct._GtkWidget* %17, i32 %18, i32 %19)
  ret void
}

declare %struct._GtkWidget* @gtk_check_button_new_with_label(i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @ico_dialog_toggle_compress(%struct._GtkWidget* %checkbox, %struct._GObject* %hbox) #0 {
entry:
  %checkbox.addr = alloca %struct._GtkWidget*, align 8
  %hbox.addr = alloca %struct._GObject*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %layer_num = alloca i32, align 4
  %info = alloca %struct._IcoSaveInfo*, align 8
  store %struct._GtkWidget* %checkbox, %struct._GtkWidget** %checkbox.addr, align 8
  store %struct._GObject* %hbox, %struct._GObject** %hbox.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %checkbox.addr, align 8
  %call = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %dialog, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 80)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GObject*
  %call2 = call i8* @g_object_get_data(%struct._GObject* %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0))
  %4 = bitcast i8* %call2 to %struct._IcoSaveInfo*
  store %struct._IcoSaveInfo* %4, %struct._IcoSaveInfo** %info, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %5 = load %struct._IcoSaveInfo*, %struct._IcoSaveInfo** %info, align 8
  %tobool = icmp ne %struct._IcoSaveInfo* %5, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0), i32 468, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.ico_dialog_toggle_compress, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0)) #7
  unreachable

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %6 = load %struct._GObject*, %struct._GObject** %hbox.addr, align 8
  %call3 = call i8* @g_object_get_data(%struct._GObject* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0))
  %7 = ptrtoint i8* %call3 to i64
  %conv = trunc i64 %7 to i32
  store i32 %conv, i32* %layer_num, align 4
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %checkbox.addr, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_toggle_button_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call4)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkToggleButton*
  %call6 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %10)
  %11 = load i32, i32* %layer_num, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct._IcoSaveInfo*, %struct._IcoSaveInfo** %info, align 8
  %compress = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %12, i32 0, i32 2
  %13 = load i32*, i32** %compress, align 8
  %arrayidx = getelementptr inbounds i32, i32* %13, i64 %idxprom
  store i32 %call6, i32* %arrayidx, align 4
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %15 = load %struct._IcoSaveInfo*, %struct._IcoSaveInfo** %info, align 8
  call void @ico_dialog_check_compat(%struct._GtkWidget* %14, %struct._IcoSaveInfo* %15)
  ret void
}

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #1

declare i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox*, i32*) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #4

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @ico_dialog_get_layer_preview(%struct._GtkWidget* %dialog, i32 %layer) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %layer.addr = alloca i32, align 4
  %preview = alloca %struct._GtkWidget*, align 8
  %icon_hbox = alloca %struct._GtkWidget*, align 8
  %key = alloca [4096 x i8], align 16
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store i32 %layer, i32* %layer.addr, align 4
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %key, i32 0, i32 0
  %0 = load i32, i32* %layer.addr, align 4
  %call = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay, i64 4096, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i32 %0)
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 80)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GObject*
  %arraydecay2 = getelementptr inbounds [4096 x i8], [4096 x i8]* %key, i32 0, i32 0
  %call3 = call i8* @g_object_get_data(%struct._GObject* %3, i8* %arraydecay2)
  %4 = bitcast i8* %call3 to %struct._GtkWidget*
  store %struct._GtkWidget* %4, %struct._GtkWidget** %icon_hbox, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %icon_hbox, align 8
  %tobool = icmp ne %struct._GtkWidget* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %icon_hbox, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 80)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GObject*
  %call5 = call i8* @g_object_get_data(%struct._GObject* %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0))
  %9 = bitcast i8* %call5 to %struct._GtkWidget*
  store %struct._GtkWidget* %9, %struct._GtkWidget** %preview, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %icon_hbox, align 8
  %tobool6 = icmp ne %struct._GtkWidget* %10, null
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  store %struct._GtkWidget* %11, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7, %if.then
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %12
}

declare i32 @gimp_item_get_image(i32) #1

declare i32 @gimp_image_new(i32, i32, i32) #1

declare i32 @gimp_image_base_type(i32) #1

declare i32 @gimp_image_undo_disable(i32) #1

declare i32 @gimp_drawable_is_indexed(i32) #1

declare i8* @gimp_image_get_colormap(i32, i32*) #1

declare i32 @gimp_image_set_colormap(i32, i8*, i32) #1

declare void @g_free(i8*) #1

declare i32 @gimp_layer_new(i32, i8*, i32, i32, i32, double, i32) #1

declare i32 @gimp_drawable_type(i32) #1

declare i32 @gimp_image_insert_layer(i32, i32, i32, i32) #1

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare noalias i8* @g_malloc(i64) #1

declare void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare i32 @gimp_image_convert_rgb(i32) #1

declare i32 @gimp_image_convert_indexed(i32, i32, i32, i32, i32, i32, i8*) #1

declare i32 @ico_cmap_contains_black(i8*, i32) #1

declare i32 @gimp_drawable_is_gray(i32) #1

declare i32 @gimp_image_convert_grayscale(i32) #1

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_image_delete(i32) #1

declare %struct._GimpParam* @gimp_run_procedure(i8*, i32*, ...) #1

declare void @gimp_destroy_params(%struct._GimpParam*, i32) #1

declare void @gtk_image_set_from_pixbuf(%struct._GtkImage*, %struct._GdkPixbuf*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_image_get_type() #3

declare void @gtk_widget_set_visible(%struct._GtkWidget*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
