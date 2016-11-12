; ModuleID = './plug-ins/print/print-page-layout.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PrintSizeInfo = type { %struct.PrintData*, i32, i32, %struct._GimpSizeEntry*, %struct._GimpSizeEntry*, %struct._GimpChainButton*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkObject*, %struct._GtkObject*, %struct._GtkObject*, %struct._GtkObject* }
%struct.PrintData = type { i32, i32, i32, double, double, i32, double, double, i32, i32, i32, %struct._GtkPrintOperation* }
%struct._GtkPrintOperation = type { %struct._GObject, %struct._GtkPrintOperationPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkPrintOperationPrivate = type opaque
%struct._GimpSizeEntry = type { %struct._GtkTable, %struct._GSList*, i32, %struct._GtkWidget*, i32, i32, i32, i32, i32 }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
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
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GimpChainButton = type { %struct._GtkTable, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkPageSetup = type opaque
%struct._GtkSizeGroup = type { %struct._GObject, %struct._GSList*, i8, i8, %struct._GtkRequisition }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._PrintPreview = type opaque
%struct._GtkSpinButton = type { %struct._GtkEntry, %struct._GtkAdjustment*, %struct._GdkDrawable*, i32, double, double, i32, i24 }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GtkPrintSettings = type opaque

@info = internal global %struct.PrintSizeInfo zeroinitializer, align 8
@.str = private unnamed_addr constant [21 x i8] c"Ignore Page _Margins\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"_Draw Crop Marks\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Preview\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"offsets-changed\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"notify::default-page-setup\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"update-custom-widget\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"Size\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"_Width:\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"_Height:\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"pixels/%a\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"_X resolution:\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"_Y resolution:\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"unit-changed\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"Position\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"_Left:\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"_Right:\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"_Top:\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"_Bottom:\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"C_enter:\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"center-mode\04None\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"Horizontally\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"Vertically\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"Both\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"%%.%df x %%.%df %s\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @print_page_layout_gui(%struct.PrintData* %data, i8* %help_id) #0 {
entry:
  %data.addr = alloca %struct.PrintData*, align 8
  %help_id.addr = alloca i8*, align 8
  %main_hbox = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %setup = alloca %struct._GtkPageSetup*, align 8
  %label_group = alloca %struct._GtkSizeGroup*, align 8
  %entry_group = alloca %struct._GtkSizeGroup*, align 8
  store %struct.PrintData* %data, %struct.PrintData** %data.addr, align 8
  store i8* %help_id, i8** %help_id.addr, align 8
  call void @llvm.memset.p0i8.i64(i8* bitcast (%struct.PrintSizeInfo* @info to i8*), i8 0, i64 96, i32 8, i1 false)
  %0 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  store %struct.PrintData* %0, %struct.PrintData** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 0), align 8
  %1 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %drawable_id = getelementptr inbounds %struct.PrintData, %struct.PrintData* %1, i32 0, i32 1
  %2 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_width(i32 %2)
  store i32 %call, i32* getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 1), align 4
  %3 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %drawable_id1 = getelementptr inbounds %struct.PrintData, %struct.PrintData* %3, i32 0, i32 1
  %4 = load i32, i32* %drawable_id1, align 4
  %call2 = call i32 @gimp_drawable_height(i32 %4)
  store i32 %call2, i32* getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 2), align 4
  %5 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %operation = getelementptr inbounds %struct.PrintData, %struct.PrintData* %5, i32 0, i32 11
  %6 = load %struct._GtkPrintOperation*, %struct._GtkPrintOperation** %operation, align 8
  %call3 = call %struct._GtkPageSetup* @gtk_print_operation_get_default_page_setup(%struct._GtkPrintOperation* %6)
  store %struct._GtkPageSetup* %call3, %struct._GtkPageSetup** %setup, align 8
  %7 = load %struct._GtkPageSetup*, %struct._GtkPageSetup** %setup, align 8
  %tobool = icmp ne %struct._GtkPageSetup* %7, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call4 = call %struct._GtkPageSetup* @gtk_page_setup_new()
  store %struct._GtkPageSetup* %call4, %struct._GtkPageSetup** %setup, align 8
  %8 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %operation5 = getelementptr inbounds %struct.PrintData, %struct.PrintData* %8, i32 0, i32 11
  %9 = load %struct._GtkPrintOperation*, %struct._GtkPrintOperation** %operation5, align 8
  %10 = load %struct._GtkPageSetup*, %struct._GtkPageSetup** %setup, align 8
  call void @gtk_print_operation_set_default_page_setup(%struct._GtkPrintOperation* %9, %struct._GtkPageSetup* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call6 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %main_hbox, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_container_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call7)
  %13 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %13, i32 12)
  %call9 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %main_vbox, align 8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_box_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call10)
  %16 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkBox*
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %16, %struct._GtkWidget* %17, i32 0, i32 0, i32 0)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %18)
  %call12 = call %struct._GtkSizeGroup* @gtk_size_group_new(i32 1)
  store %struct._GtkSizeGroup* %call12, %struct._GtkSizeGroup** %label_group, align 8
  %call13 = call %struct._GtkSizeGroup* @gtk_size_group_new(i32 1)
  store %struct._GtkSizeGroup* %call13, %struct._GtkSizeGroup** %entry_group, align 8
  %19 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %20 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %label_group, align 8
  %21 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %entry_group, align 8
  %call14 = call %struct._GtkWidget* @print_size_frame(%struct.PrintData* %19, %struct._GtkSizeGroup* %20, %struct._GtkSizeGroup* %21)
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %frame, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_box_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call15)
  %24 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkBox*
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %24, %struct._GtkWidget* %25, i32 0, i32 0, i32 0)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %26)
  %27 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %28 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %label_group, align 8
  %29 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %entry_group, align 8
  %call17 = call %struct._GtkWidget* @print_offset_frame(%struct.PrintData* %27, %struct._GtkSizeGroup* %28, %struct._GtkSizeGroup* %29)
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %frame, align 8
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_box_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call18)
  %32 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkBox*
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %32, %struct._GtkWidget* %33, i32 0, i32 0, i32 0)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %34)
  %35 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %label_group, align 8
  %36 = bitcast %struct._GtkSizeGroup* %35 to i8*
  call void @g_object_unref(i8* %36)
  %37 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %entry_group, align 8
  %38 = bitcast %struct._GtkSizeGroup* %37 to i8*
  call void @g_object_unref(i8* %38)
  %call20 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0)) #1
  %call21 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call20)
  store %struct._GtkWidget* %call21, %struct._GtkWidget** %button, align 8
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_toggle_button_get_type() #5
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call22)
  %41 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkToggleButton*
  %42 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %use_full_page = getelementptr inbounds %struct.PrintData, %struct.PrintData* %42, i32 0, i32 9
  %43 = load i32, i32* %use_full_page, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %41, i32 %43)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_box_get_type() #5
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call24)
  %46 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkBox*
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %46, %struct._GtkWidget* %47, i32 0, i32 0, i32 0)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %49 = bitcast %struct._GtkWidget* %48 to i8*
  %call26 = call i64 @g_signal_connect_data(i8* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @print_size_info_use_full_page_toggled to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %50)
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0)) #1
  %call28 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call27)
  store %struct._GtkWidget* %call28, %struct._GtkWidget** %button, align 8
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %52 = bitcast %struct._GtkWidget* %51 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_toggle_button_get_type() #5
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call29)
  %53 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkToggleButton*
  %54 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %draw_crop_marks = getelementptr inbounds %struct.PrintData, %struct.PrintData* %54, i32 0, i32 10
  %55 = load i32, i32* %draw_crop_marks, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %53, i32 %55)
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %57 = bitcast %struct._GtkWidget* %56 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_box_get_type() #5
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call31)
  %58 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkBox*
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %58, %struct._GtkWidget* %59, i32 0, i32 0, i32 0)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %61 = bitcast %struct._GtkWidget* %60 to i8*
  %call33 = call i64 @g_signal_connect_data(i8* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @print_draw_crop_marks_toggled to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %62)
  %call34 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0)) #1
  %call35 = call %struct._GtkWidget* @gimp_frame_new(i8* %call34)
  store %struct._GtkWidget* %call35, %struct._GtkWidget** %frame, align 8
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  %64 = bitcast %struct._GtkWidget* %63 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_box_get_type() #5
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call36)
  %65 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkBox*
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %65, %struct._GtkWidget* %66, i32 1, i32 1, i32 0)
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %67)
  %68 = load %struct._GtkPageSetup*, %struct._GtkPageSetup** %setup, align 8
  %69 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %drawable_id38 = getelementptr inbounds %struct.PrintData, %struct.PrintData* %69, i32 0, i32 1
  %70 = load i32, i32* %drawable_id38, align 4
  %call39 = call %struct._GtkWidget* @print_preview_new(%struct._GtkPageSetup* %68, i32 %70)
  store %struct._GtkWidget* %call39, %struct._GtkWidget** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 8), align 8
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 8), align 8
  %72 = bitcast %struct._GtkWidget* %71 to %struct._GTypeInstance*
  %call40 = call i64 @print_preview_get_type() #5
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call40)
  %73 = bitcast %struct._GTypeInstance* %call41 to %struct._PrintPreview*
  %74 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %use_full_page42 = getelementptr inbounds %struct.PrintData, %struct.PrintData* %74, i32 0, i32 9
  %75 = load i32, i32* %use_full_page42, align 4
  call void @print_preview_set_use_full_page(%struct._PrintPreview* %73, i32 %75)
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %77 = bitcast %struct._GtkWidget* %76 to %struct._GTypeInstance*
  %call43 = call i64 @gtk_container_get_type() #5
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call43)
  %78 = bitcast %struct._GTypeInstance* %call44 to %struct._GtkContainer*
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 8), align 8
  call void @gtk_container_add(%struct._GtkContainer* %78, %struct._GtkWidget* %79)
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 8), align 8
  call void @gtk_widget_show(%struct._GtkWidget* %80)
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 8), align 8
  %82 = bitcast %struct._GtkWidget* %81 to i8*
  %call45 = call i64 @g_signal_connect_data(i8* %82, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, double, double)* @print_size_info_preview_offset_changed to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  call void @print_size_info_set_page_setup(%struct.PrintSizeInfo* @info)
  %83 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %operation46 = getelementptr inbounds %struct.PrintData, %struct.PrintData* %83, i32 0, i32 11
  %84 = load %struct._GtkPrintOperation*, %struct._GtkPrintOperation** %operation46, align 8
  %85 = bitcast %struct._GtkPrintOperation* %84 to i8*
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  %87 = bitcast %struct._GtkWidget* %86 to i8*
  %call47 = call i64 @g_signal_connect_object(i8* %85, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GtkPrintOperation*)* @print_page_setup_notify to void ()*), i8* %87, i32 0)
  %88 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %operation48 = getelementptr inbounds %struct.PrintData, %struct.PrintData* %88, i32 0, i32 11
  %89 = load %struct._GtkPrintOperation*, %struct._GtkPrintOperation** %operation48, align 8
  %90 = bitcast %struct._GtkPrintOperation* %89 to i8*
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  %92 = bitcast %struct._GtkWidget* %91 to i8*
  %call49 = call i64 @g_signal_connect_object(i8* %90, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GtkPrintOperation*, %struct._GtkWidget*, %struct._GtkPageSetup*, %struct._GtkPrintSettings*)* @update_custom_widget to void ()*), i8* %92, i32 0)
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  %94 = load i8*, i8** %help_id.addr, align 8
  call void @gimp_help_connect(%struct._GtkWidget* %93, void (i8*, i8*)* @gimp_standard_help_func, i8* %94, i8* null)
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  ret %struct._GtkWidget* %95
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare i32 @gimp_drawable_width(i32) #2

declare i32 @gimp_drawable_height(i32) #2

declare %struct._GtkPageSetup* @gtk_print_operation_get_default_page_setup(%struct._GtkPrintOperation*) #2

declare %struct._GtkPageSetup* @gtk_page_setup_new() #2

declare void @gtk_print_operation_set_default_page_setup(%struct._GtkPrintOperation*, %struct._GtkPageSetup*) #2

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #2

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare void @gtk_widget_show(%struct._GtkWidget*) #2

declare %struct._GtkSizeGroup* @gtk_size_group_new(i32) #2

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @print_size_frame(%struct.PrintData* %data, %struct._GtkSizeGroup* %label_group, %struct._GtkSizeGroup* %entry_group) #0 {
entry:
  %data.addr = alloca %struct.PrintData*, align 8
  %label_group.addr = alloca %struct._GtkSizeGroup*, align 8
  %entry_group.addr = alloca %struct._GtkSizeGroup*, align 8
  %entry1 = alloca %struct._GtkWidget*, align 8
  %height = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %chain = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %image_width = alloca double, align 8
  %image_height = alloca double, align 8
  store %struct.PrintData* %data, %struct.PrintData** %data.addr, align 8
  store %struct._GtkSizeGroup* %label_group, %struct._GtkSizeGroup** %label_group.addr, align 8
  store %struct._GtkSizeGroup* %entry_group, %struct._GtkSizeGroup** %entry_group.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 1), align 4
  %conv = sitofp i32 %0 to double
  %1 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %unit = getelementptr inbounds %struct.PrintData, %struct.PrintData* %1, i32 0, i32 2
  %2 = load i32, i32* %unit, align 4
  %call = call double @gimp_unit_get_factor(i32 %2)
  %mul = fmul double %conv, %call
  %3 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %xres = getelementptr inbounds %struct.PrintData, %struct.PrintData* %3, i32 0, i32 3
  %4 = load double, double* %xres, align 8
  %div = fdiv double %mul, %4
  store double %div, double* %image_width, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 2), align 4
  %conv2 = sitofp i32 %5 to double
  %6 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %unit3 = getelementptr inbounds %struct.PrintData, %struct.PrintData* %6, i32 0, i32 2
  %7 = load i32, i32* %unit3, align 4
  %call4 = call double @gimp_unit_get_factor(i32 %7)
  %mul5 = fmul double %conv2, %call4
  %8 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %yres = getelementptr inbounds %struct.PrintData, %struct.PrintData* %8, i32 0, i32 4
  %9 = load double, double* %yres, align 8
  %div6 = fdiv double %mul5, %9
  store double %div6, double* %image_height, align 8
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0)) #1
  %call8 = call %struct._GtkWidget* @gimp_frame_new(i8* %call7)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %frame, align 8
  %call9 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %vbox, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_container_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call10)
  %12 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkContainer*
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %12, %struct._GtkWidget* %13)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %14)
  %call12 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 0)
  store %struct._GtkWidget* %call12, %struct._GtkWidget** %hbox, align 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_box_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call13)
  %17 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkBox*
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %17, %struct._GtkWidget* %18, i32 0, i32 0, i32 0)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %19)
  %20 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %unit15 = getelementptr inbounds %struct.PrintData, %struct.PrintData* %20, i32 0, i32 2
  %21 = load i32, i32* %unit15, align 4
  %call16 = call %struct._GtkWidget* @gimp_size_entry_new(i32 1, i32 %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i32 0, i32 0, i32 0, i32 8, i32 1)
  store %struct._GtkWidget* %call16, %struct._GtkWidget** %entry1, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_box_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call17)
  %24 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkBox*
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %24, %struct._GtkWidget* %25, i32 0, i32 0, i32 0)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %26)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_size_entry_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call19)
  %29 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpSizeEntry*
  store %struct._GimpSizeEntry* %29, %struct._GimpSizeEntry** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 3), align 8
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_table_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call21)
  %32 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %32, i32 2)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_table_get_type() #5
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call23)
  %35 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %35, i32 0, i32 6)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_table_get_type() #5
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call25)
  %38 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %38, i32 2, i32 6)
  %call27 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 1.000000e+00, i32 2)
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %height, align 8
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_size_entry_get_type() #5
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call28)
  %41 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpSizeEntry*
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %height, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_spin_button_get_type() #5
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call30)
  %44 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkSpinButton*
  call void @gimp_size_entry_add_field(%struct._GimpSizeEntry* %41, %struct._GtkSpinButton* %44, %struct._GtkSpinButton* null)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_table_get_type() #5
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call32)
  %47 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkTable*
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %height, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %47, %struct._GtkWidget* %48, i32 1, i32 2, i32 0, i32 1)
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %height, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %49)
  %50 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %entry_group.addr, align 8
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %height, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %50, %struct._GtkWidget* %51)
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call34 = call i64 @gimp_size_entry_get_type() #5
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call34)
  %54 = bitcast %struct._GTypeInstance* %call35 to %struct._GimpSizeEntry*
  %call36 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0)) #1
  %call37 = call %struct._GtkWidget* @gimp_size_entry_attach_label(%struct._GimpSizeEntry* %54, i8* %call36, i32 0, i32 0, float 0.000000e+00)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call38 = call i64 @gimp_size_entry_get_type() #5
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call38)
  %57 = bitcast %struct._GTypeInstance* %call39 to %struct._GimpSizeEntry*
  %call40 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0)) #1
  %call41 = call %struct._GtkWidget* @gimp_size_entry_attach_label(%struct._GimpSizeEntry* %57, i8* %call40, i32 1, i32 0, float 0.000000e+00)
  store %struct._GtkWidget* %call41, %struct._GtkWidget** %label, align 8
  %58 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %label_group.addr, align 8
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %58, %struct._GtkWidget* %59)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %61 = bitcast %struct._GtkWidget* %60 to %struct._GTypeInstance*
  %call42 = call i64 @gimp_size_entry_get_type() #5
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call42)
  %62 = bitcast %struct._GTypeInstance* %call43 to %struct._GimpSizeEntry*
  %63 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %xres44 = getelementptr inbounds %struct.PrintData, %struct.PrintData* %63, i32 0, i32 3
  %64 = load double, double* %xres44, align 8
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %62, i32 0, double %64, i32 0)
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %66 = bitcast %struct._GtkWidget* %65 to %struct._GTypeInstance*
  %call45 = call i64 @gimp_size_entry_get_type() #5
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call45)
  %67 = bitcast %struct._GTypeInstance* %call46 to %struct._GimpSizeEntry*
  %68 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %yres47 = getelementptr inbounds %struct.PrintData, %struct.PrintData* %68, i32 0, i32 4
  %69 = load double, double* %yres47, align 8
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %67, i32 1, double %69, i32 0)
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %71 = bitcast %struct._GtkWidget* %70 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_size_entry_get_type() #5
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call48)
  %72 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpSizeEntry*
  %73 = load double, double* %image_width, align 8
  call void @gimp_size_entry_set_value(%struct._GimpSizeEntry* %72, i32 0, double %73)
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %75 = bitcast %struct._GtkWidget* %74 to %struct._GTypeInstance*
  %call50 = call i64 @gimp_size_entry_get_type() #5
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call50)
  %76 = bitcast %struct._GTypeInstance* %call51 to %struct._GimpSizeEntry*
  %77 = load double, double* %image_height, align 8
  call void @gimp_size_entry_set_value(%struct._GimpSizeEntry* %76, i32 1, double %77)
  %call52 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 0)
  store %struct._GtkWidget* %call52, %struct._GtkWidget** %hbox, align 8
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %79 = bitcast %struct._GtkWidget* %78 to %struct._GTypeInstance*
  %call53 = call i64 @gtk_box_get_type() #5
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call53)
  %80 = bitcast %struct._GTypeInstance* %call54 to %struct._GtkBox*
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %80, %struct._GtkWidget* %81, i32 0, i32 0, i32 0)
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %82)
  %83 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %image_unit = getelementptr inbounds %struct.PrintData, %struct.PrintData* %83, i32 0, i32 5
  %84 = load i32, i32* %image_unit, align 4
  %call55 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0)) #1
  %call56 = call %struct._GtkWidget* @gimp_size_entry_new(i32 1, i32 %84, i8* %call55, i32 0, i32 0, i32 0, i32 8, i32 2)
  store %struct._GtkWidget* %call56, %struct._GtkWidget** %entry1, align 8
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %86 = bitcast %struct._GtkWidget* %85 to %struct._GTypeInstance*
  %call57 = call i64 @gtk_box_get_type() #5
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %86, i64 %call57)
  %87 = bitcast %struct._GTypeInstance* %call58 to %struct._GtkBox*
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %87, %struct._GtkWidget* %88, i32 0, i32 0, i32 0)
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %89)
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %91 = bitcast %struct._GtkWidget* %90 to %struct._GTypeInstance*
  %call59 = call i64 @gimp_size_entry_get_type() #5
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %91, i64 %call59)
  %92 = bitcast %struct._GTypeInstance* %call60 to %struct._GimpSizeEntry*
  store %struct._GimpSizeEntry* %92, %struct._GimpSizeEntry** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 4), align 8
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %94 = bitcast %struct._GtkWidget* %93 to %struct._GTypeInstance*
  %call61 = call i64 @gtk_table_get_type() #5
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %94, i64 %call61)
  %95 = bitcast %struct._GTypeInstance* %call62 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %95, i32 2)
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %97 = bitcast %struct._GtkWidget* %96 to %struct._GTypeInstance*
  %call63 = call i64 @gtk_table_get_type() #5
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %97, i64 %call63)
  %98 = bitcast %struct._GTypeInstance* %call64 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %98, i32 0, i32 6)
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %100 = bitcast %struct._GtkWidget* %99 to %struct._GTypeInstance*
  %call65 = call i64 @gtk_table_get_type() #5
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %100, i64 %call65)
  %101 = bitcast %struct._GTypeInstance* %call66 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %101, i32 2, i32 6)
  %call67 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 1.000000e+00, i32 2)
  store %struct._GtkWidget* %call67, %struct._GtkWidget** %height, align 8
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %103 = bitcast %struct._GtkWidget* %102 to %struct._GTypeInstance*
  %call68 = call i64 @gimp_size_entry_get_type() #5
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %103, i64 %call68)
  %104 = bitcast %struct._GTypeInstance* %call69 to %struct._GimpSizeEntry*
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %height, align 8
  %106 = bitcast %struct._GtkWidget* %105 to %struct._GTypeInstance*
  %call70 = call i64 @gtk_spin_button_get_type() #5
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %106, i64 %call70)
  %107 = bitcast %struct._GTypeInstance* %call71 to %struct._GtkSpinButton*
  call void @gimp_size_entry_add_field(%struct._GimpSizeEntry* %104, %struct._GtkSpinButton* %107, %struct._GtkSpinButton* null)
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %109 = bitcast %struct._GtkWidget* %108 to %struct._GTypeInstance*
  %call72 = call i64 @gtk_table_get_type() #5
  %call73 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %109, i64 %call72)
  %110 = bitcast %struct._GTypeInstance* %call73 to %struct._GtkTable*
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %height, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %110, %struct._GtkWidget* %111, i32 1, i32 2, i32 0, i32 1)
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %height, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %112)
  %113 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %entry_group.addr, align 8
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %height, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %113, %struct._GtkWidget* %114)
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %116 = bitcast %struct._GtkWidget* %115 to %struct._GTypeInstance*
  %call74 = call i64 @gimp_size_entry_get_type() #5
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %116, i64 %call74)
  %117 = bitcast %struct._GTypeInstance* %call75 to %struct._GimpSizeEntry*
  %call76 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0)) #1
  %call77 = call %struct._GtkWidget* @gimp_size_entry_attach_label(%struct._GimpSizeEntry* %117, i8* %call76, i32 0, i32 0, float 0.000000e+00)
  store %struct._GtkWidget* %call77, %struct._GtkWidget** %label, align 8
  %118 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %label_group.addr, align 8
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %118, %struct._GtkWidget* %119)
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %121 = bitcast %struct._GtkWidget* %120 to %struct._GTypeInstance*
  %call78 = call i64 @gimp_size_entry_get_type() #5
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %121, i64 %call78)
  %122 = bitcast %struct._GTypeInstance* %call79 to %struct._GimpSizeEntry*
  %call80 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0)) #1
  %call81 = call %struct._GtkWidget* @gimp_size_entry_attach_label(%struct._GimpSizeEntry* %122, i8* %call80, i32 1, i32 0, float 0.000000e+00)
  store %struct._GtkWidget* %call81, %struct._GtkWidget** %label, align 8
  %123 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %label_group.addr, align 8
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %123, %struct._GtkWidget* %124)
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %126 = bitcast %struct._GtkWidget* %125 to %struct._GTypeInstance*
  %call82 = call i64 @gimp_size_entry_get_type() #5
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %126, i64 %call82)
  %127 = bitcast %struct._GTypeInstance* %call83 to %struct._GimpSizeEntry*
  call void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry* %127, i32 0, double 5.000000e-03, double 6.553600e+04)
  %128 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %129 = bitcast %struct._GtkWidget* %128 to %struct._GTypeInstance*
  %call84 = call i64 @gimp_size_entry_get_type() #5
  %call85 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %129, i64 %call84)
  %130 = bitcast %struct._GTypeInstance* %call85 to %struct._GimpSizeEntry*
  call void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry* %130, i32 1, double 5.000000e-03, double 6.553600e+04)
  %131 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %132 = bitcast %struct._GtkWidget* %131 to %struct._GTypeInstance*
  %call86 = call i64 @gimp_size_entry_get_type() #5
  %call87 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %132, i64 %call86)
  %133 = bitcast %struct._GTypeInstance* %call87 to %struct._GimpSizeEntry*
  %134 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %xres88 = getelementptr inbounds %struct.PrintData, %struct.PrintData* %134, i32 0, i32 3
  %135 = load double, double* %xres88, align 8
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %133, i32 0, double %135)
  %136 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %137 = bitcast %struct._GtkWidget* %136 to %struct._GTypeInstance*
  %call89 = call i64 @gimp_size_entry_get_type() #5
  %call90 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %137, i64 %call89)
  %138 = bitcast %struct._GTypeInstance* %call90 to %struct._GimpSizeEntry*
  %139 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %yres91 = getelementptr inbounds %struct.PrintData, %struct.PrintData* %139, i32 0, i32 4
  %140 = load double, double* %yres91, align 8
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %138, i32 1, double %140)
  %call92 = call %struct._GtkWidget* @gimp_chain_button_new(i32 3)
  store %struct._GtkWidget* %call92, %struct._GtkWidget** %chain, align 8
  %141 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %xres93 = getelementptr inbounds %struct.PrintData, %struct.PrintData* %141, i32 0, i32 3
  %142 = load double, double* %xres93, align 8
  %143 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %yres94 = getelementptr inbounds %struct.PrintData, %struct.PrintData* %143, i32 0, i32 4
  %144 = load double, double* %yres94, align 8
  %sub = fsub double %142, %144
  %cmp = fcmp olt double %sub, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %145 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %xres96 = getelementptr inbounds %struct.PrintData, %struct.PrintData* %145, i32 0, i32 3
  %146 = load double, double* %xres96, align 8
  %147 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %yres97 = getelementptr inbounds %struct.PrintData, %struct.PrintData* %147, i32 0, i32 4
  %148 = load double, double* %yres97, align 8
  %sub98 = fsub double %146, %148
  %sub99 = fsub double -0.000000e+00, %sub98
  br label %cond.end

cond.false:                                       ; preds = %entry
  %149 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %xres100 = getelementptr inbounds %struct.PrintData, %struct.PrintData* %149, i32 0, i32 3
  %150 = load double, double* %xres100, align 8
  %151 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %yres101 = getelementptr inbounds %struct.PrintData, %struct.PrintData* %151, i32 0, i32 4
  %152 = load double, double* %yres101, align 8
  %sub102 = fsub double %150, %152
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub99, %cond.true ], [ %sub102, %cond.false ]
  %cmp103 = fcmp olt double %cond, 5.000000e-03
  br i1 %cmp103, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %153 = load %struct._GtkWidget*, %struct._GtkWidget** %chain, align 8
  %154 = bitcast %struct._GtkWidget* %153 to %struct._GTypeInstance*
  %call105 = call i64 @gimp_chain_button_get_type() #5
  %call106 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %154, i64 %call105)
  %155 = bitcast %struct._GTypeInstance* %call106 to %struct._GimpChainButton*
  call void @gimp_chain_button_set_active(%struct._GimpChainButton* %155, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %156 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %157 = bitcast %struct._GtkWidget* %156 to %struct._GTypeInstance*
  %call107 = call i64 @gtk_table_get_type() #5
  %call108 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %157, i64 %call107)
  %158 = bitcast %struct._GTypeInstance* %call108 to %struct._GtkTable*
  %159 = load %struct._GtkWidget*, %struct._GtkWidget** %chain, align 8
  call void @gtk_table_attach(%struct._GtkTable* %158, %struct._GtkWidget* %159, i32 2, i32 3, i32 0, i32 2, i32 6, i32 5, i32 0, i32 0)
  %160 = load %struct._GtkWidget*, %struct._GtkWidget** %chain, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %160)
  %161 = load %struct._GtkWidget*, %struct._GtkWidget** %chain, align 8
  %162 = bitcast %struct._GtkWidget* %161 to %struct._GTypeInstance*
  %call109 = call i64 @gimp_chain_button_get_type() #5
  %call110 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %162, i64 %call109)
  %163 = bitcast %struct._GTypeInstance* %call110 to %struct._GimpChainButton*
  store %struct._GimpChainButton* %163, %struct._GimpChainButton** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 5), align 8
  %164 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 4), align 8
  %165 = bitcast %struct._GimpSizeEntry* %164 to i8*
  %call111 = call i64 @g_signal_connect_data(i8* %165, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @print_size_info_resolution_changed to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %166 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 3), align 8
  %167 = bitcast %struct._GimpSizeEntry* %166 to i8*
  %call112 = call i64 @g_signal_connect_data(i8* %167, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @print_size_info_unit_changed to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %168 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  ret %struct._GtkWidget* %168
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @print_offset_frame(%struct.PrintData* %data, %struct._GtkSizeGroup* %label_group, %struct._GtkSizeGroup* %entry_group) #0 {
entry:
  %data.addr = alloca %struct.PrintData*, align 8
  %label_group.addr = alloca %struct._GtkSizeGroup*, align 8
  %entry_group.addr = alloca %struct._GtkSizeGroup*, align 8
  %entry1 = alloca %struct._GtkWidget*, align 8
  %spinner = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  store %struct.PrintData* %data, %struct.PrintData** %data.addr, align 8
  store %struct._GtkSizeGroup* %label_group, %struct._GtkSizeGroup** %label_group.addr, align 8
  store %struct._GtkSizeGroup* %entry_group, %struct._GtkSizeGroup** %entry_group.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0)) #1
  %call2 = call %struct._GtkWidget* @gimp_frame_new(i8* %call)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %frame, align 8
  %call3 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %vbox, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_container_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call4)
  %2 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkContainer*
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %2, %struct._GtkWidget* %3)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %4)
  %5 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 3), align 8
  %6 = bitcast %struct._GimpSizeEntry* %5 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_widget_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call6)
  %7 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkWidget*
  store %struct._GtkWidget* %7, %struct._GtkWidget** %entry1, align 8
  %call8 = call %struct._GtkWidget* @gtk_table_new(i32 4, i32 4, i32 0)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %table, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_table_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call9)
  %10 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %10, i32 2)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_table_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call11)
  %13 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %13, i32 6)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_table_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call13)
  %16 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %16, i32 0, i32 0)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_table_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call15)
  %19 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %19, i32 1, i32 12)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_box_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call17)
  %22 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkBox*
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %22, %struct._GtkWidget* %23, i32 0, i32 0, i32 0)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %24)
  %call19 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 9), double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 1.000000e+00, i32 2)
  store %struct._GtkWidget* %call19, %struct._GtkWidget** %spinner, align 8
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_size_entry_get_type() #5
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call20)
  %27 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpSizeEntry*
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %spinner, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_spin_button_get_type() #5
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call22)
  %30 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkSpinButton*
  call void @gimp_size_entry_add_field(%struct._GimpSizeEntry* %27, %struct._GtkSpinButton* %30, %struct._GtkSpinButton* null)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_table_get_type() #5
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call24)
  %33 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkTable*
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %spinner, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %33, %struct._GtkWidget* %34, i32 1, i32 2, i32 0, i32 1)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %spinner, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %35)
  %call26 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0)) #1
  %call27 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call26)
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %label, align 8
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_label_get_type() #5
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call28)
  %38 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkLabel*
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %spinner, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %38, %struct._GtkWidget* %39)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_misc_get_type() #5
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call30)
  %42 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %42, float 0.000000e+00, float 5.000000e-01)
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %44 = bitcast %struct._GtkWidget* %43 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_table_get_type() #5
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call32)
  %45 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkTable*
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %45, %struct._GtkWidget* %46, i32 0, i32 1, i32 0, i32 1)
  %47 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %label_group.addr, align 8
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %47, %struct._GtkWidget* %48)
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %49)
  %call34 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 10), double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 1.000000e+00, i32 2)
  store %struct._GtkWidget* %call34, %struct._GtkWidget** %spinner, align 8
  %50 = load %struct._GtkObject*, %struct._GtkObject** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 10), align 8
  %51 = bitcast %struct._GtkObject* %50 to i8*
  %call35 = call i64 @g_signal_connect_data(i8* %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @print_size_info_offset_max_changed to void ()*), i8* inttoptr (i64 3 to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call36 = call i64 @gimp_size_entry_get_type() #5
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call36)
  %54 = bitcast %struct._GTypeInstance* %call37 to %struct._GimpSizeEntry*
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %spinner, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_spin_button_get_type() #5
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call38)
  %57 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkSpinButton*
  call void @gimp_size_entry_add_field(%struct._GimpSizeEntry* %54, %struct._GtkSpinButton* %57, %struct._GtkSpinButton* null)
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %59 = bitcast %struct._GtkWidget* %58 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_table_get_type() #5
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call40)
  %60 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkTable*
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %spinner, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %60, %struct._GtkWidget* %61, i32 3, i32 4, i32 0, i32 1)
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %spinner, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %62)
  %call42 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0)) #1
  %call43 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call42)
  store %struct._GtkWidget* %call43, %struct._GtkWidget** %label, align 8
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %64 = bitcast %struct._GtkWidget* %63 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_label_get_type() #5
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call44)
  %65 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkLabel*
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %spinner, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %65, %struct._GtkWidget* %66)
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %68 = bitcast %struct._GtkWidget* %67 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_misc_get_type() #5
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call46)
  %69 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %69, float 0.000000e+00, float 5.000000e-01)
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %71 = bitcast %struct._GtkWidget* %70 to %struct._GTypeInstance*
  %call48 = call i64 @gtk_table_get_type() #5
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call48)
  %72 = bitcast %struct._GTypeInstance* %call49 to %struct._GtkTable*
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %72, %struct._GtkWidget* %73, i32 2, i32 3, i32 0, i32 1)
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %74)
  %call50 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 11), double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 1.000000e+00, i32 2)
  store %struct._GtkWidget* %call50, %struct._GtkWidget** %spinner, align 8
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %76 = bitcast %struct._GtkWidget* %75 to %struct._GTypeInstance*
  %call51 = call i64 @gimp_size_entry_get_type() #5
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call51)
  %77 = bitcast %struct._GTypeInstance* %call52 to %struct._GimpSizeEntry*
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %spinner, align 8
  %79 = bitcast %struct._GtkWidget* %78 to %struct._GTypeInstance*
  %call53 = call i64 @gtk_spin_button_get_type() #5
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call53)
  %80 = bitcast %struct._GTypeInstance* %call54 to %struct._GtkSpinButton*
  call void @gimp_size_entry_add_field(%struct._GimpSizeEntry* %77, %struct._GtkSpinButton* %80, %struct._GtkSpinButton* null)
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %82 = bitcast %struct._GtkWidget* %81 to %struct._GTypeInstance*
  %call55 = call i64 @gtk_table_get_type() #5
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %82, i64 %call55)
  %83 = bitcast %struct._GTypeInstance* %call56 to %struct._GtkTable*
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %spinner, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %83, %struct._GtkWidget* %84, i32 1, i32 2, i32 1, i32 2)
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %spinner, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %85)
  %call57 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0)) #1
  %call58 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call57)
  store %struct._GtkWidget* %call58, %struct._GtkWidget** %label, align 8
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %87 = bitcast %struct._GtkWidget* %86 to %struct._GTypeInstance*
  %call59 = call i64 @gtk_label_get_type() #5
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %87, i64 %call59)
  %88 = bitcast %struct._GTypeInstance* %call60 to %struct._GtkLabel*
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %spinner, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %88, %struct._GtkWidget* %89)
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %91 = bitcast %struct._GtkWidget* %90 to %struct._GTypeInstance*
  %call61 = call i64 @gtk_misc_get_type() #5
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %91, i64 %call61)
  %92 = bitcast %struct._GTypeInstance* %call62 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %92, float 0.000000e+00, float 5.000000e-01)
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %94 = bitcast %struct._GtkWidget* %93 to %struct._GTypeInstance*
  %call63 = call i64 @gtk_table_get_type() #5
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %94, i64 %call63)
  %95 = bitcast %struct._GTypeInstance* %call64 to %struct._GtkTable*
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %95, %struct._GtkWidget* %96, i32 0, i32 1, i32 1, i32 2)
  %97 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %label_group.addr, align 8
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %97, %struct._GtkWidget* %98)
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %99)
  %call65 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 12), double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 1.000000e+00, i32 2)
  store %struct._GtkWidget* %call65, %struct._GtkWidget** %spinner, align 8
  %100 = load %struct._GtkObject*, %struct._GtkObject** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 12), align 8
  %101 = bitcast %struct._GtkObject* %100 to i8*
  %call66 = call i64 @g_signal_connect_data(i8* %101, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @print_size_info_offset_max_changed to void ()*), i8* inttoptr (i64 1 to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %103 = bitcast %struct._GtkWidget* %102 to %struct._GTypeInstance*
  %call67 = call i64 @gimp_size_entry_get_type() #5
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %103, i64 %call67)
  %104 = bitcast %struct._GTypeInstance* %call68 to %struct._GimpSizeEntry*
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %spinner, align 8
  %106 = bitcast %struct._GtkWidget* %105 to %struct._GTypeInstance*
  %call69 = call i64 @gtk_spin_button_get_type() #5
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %106, i64 %call69)
  %107 = bitcast %struct._GTypeInstance* %call70 to %struct._GtkSpinButton*
  call void @gimp_size_entry_add_field(%struct._GimpSizeEntry* %104, %struct._GtkSpinButton* %107, %struct._GtkSpinButton* null)
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %109 = bitcast %struct._GtkWidget* %108 to %struct._GTypeInstance*
  %call71 = call i64 @gtk_table_get_type() #5
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %109, i64 %call71)
  %110 = bitcast %struct._GTypeInstance* %call72 to %struct._GtkTable*
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %spinner, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %110, %struct._GtkWidget* %111, i32 3, i32 4, i32 1, i32 2)
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %spinner, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %112)
  %call73 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0)) #1
  %call74 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call73)
  store %struct._GtkWidget* %call74, %struct._GtkWidget** %label, align 8
  %113 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %114 = bitcast %struct._GtkWidget* %113 to %struct._GTypeInstance*
  %call75 = call i64 @gtk_label_get_type() #5
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %114, i64 %call75)
  %115 = bitcast %struct._GTypeInstance* %call76 to %struct._GtkLabel*
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %spinner, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %115, %struct._GtkWidget* %116)
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %118 = bitcast %struct._GtkWidget* %117 to %struct._GTypeInstance*
  %call77 = call i64 @gtk_misc_get_type() #5
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %118, i64 %call77)
  %119 = bitcast %struct._GTypeInstance* %call78 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %119, float 0.000000e+00, float 5.000000e-01)
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %121 = bitcast %struct._GtkWidget* %120 to %struct._GTypeInstance*
  %call79 = call i64 @gtk_table_get_type() #5
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %121, i64 %call79)
  %122 = bitcast %struct._GTypeInstance* %call80 to %struct._GtkTable*
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %122, %struct._GtkWidget* %123, i32 2, i32 3, i32 1, i32 2)
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %124)
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %126 = bitcast %struct._GtkWidget* %125 to %struct._GTypeInstance*
  %call81 = call i64 @gimp_size_entry_get_type() #5
  %call82 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %126, i64 %call81)
  %127 = bitcast %struct._GTypeInstance* %call82 to %struct._GimpSizeEntry*
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %127, i32 3, double 7.200000e+01, i32 0)
  %128 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %129 = bitcast %struct._GtkWidget* %128 to %struct._GTypeInstance*
  %call83 = call i64 @gimp_size_entry_get_type() #5
  %call84 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %129, i64 %call83)
  %130 = bitcast %struct._GTypeInstance* %call84 to %struct._GimpSizeEntry*
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %130, i32 2, double 7.200000e+01, i32 0)
  %131 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %132 = bitcast %struct._GtkWidget* %131 to %struct._GTypeInstance*
  %call85 = call i64 @gimp_size_entry_get_type() #5
  %call86 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %132, i64 %call85)
  %133 = bitcast %struct._GTypeInstance* %call86 to %struct._GimpSizeEntry*
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %133, i32 1, double 7.200000e+01, i32 0)
  %134 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %135 = bitcast %struct._GtkWidget* %134 to %struct._GTypeInstance*
  %call87 = call i64 @gimp_size_entry_get_type() #5
  %call88 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %135, i64 %call87)
  %136 = bitcast %struct._GTypeInstance* %call88 to %struct._GimpSizeEntry*
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %136, i32 0, double 7.200000e+01, i32 0)
  call void @print_size_info_update_offsets()
  %137 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 3), align 8
  %138 = bitcast %struct._GimpSizeEntry* %137 to i8*
  %call89 = call i64 @g_signal_connect_data(i8* %138, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @print_size_info_size_changed to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call90 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call90, %struct._GtkWidget** %hbox, align 8
  %139 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %140 = bitcast %struct._GtkWidget* %139 to %struct._GTypeInstance*
  %call91 = call i64 @gtk_box_get_type() #5
  %call92 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %140, i64 %call91)
  %141 = bitcast %struct._GTypeInstance* %call92 to %struct._GtkBox*
  %142 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %141, %struct._GtkWidget* %142, i32 0, i32 0, i32 0)
  %143 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %143)
  %call93 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0)) #1
  %call94 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call93)
  store %struct._GtkWidget* %call94, %struct._GtkWidget** %label, align 8
  %144 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %145 = bitcast %struct._GtkWidget* %144 to %struct._GTypeInstance*
  %call95 = call i64 @gtk_misc_get_type() #5
  %call96 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %145, i64 %call95)
  %146 = bitcast %struct._GTypeInstance* %call96 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %146, float 0.000000e+00, float 5.000000e-01)
  %147 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %148 = bitcast %struct._GtkWidget* %147 to %struct._GTypeInstance*
  %call97 = call i64 @gtk_box_get_type() #5
  %call98 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %148, i64 %call97)
  %149 = bitcast %struct._GTypeInstance* %call98 to %struct._GtkBox*
  %150 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %149, %struct._GtkWidget* %150, i32 0, i32 0, i32 0)
  %151 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %label_group.addr, align 8
  %152 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %151, %struct._GtkWidget* %152)
  %153 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %153)
  %call99 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i64 12)
  %call100 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0)) #1
  %call101 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0)) #1
  %call102 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0)) #1
  %call103 = call %struct._GtkWidget* (i8*, i32, ...) @gimp_int_combo_box_new(i8* %call99, i32 0, i8* %call100, i32 1, i8* %call101, i32 2, i8* %call102, i32 3, i8* null)
  store %struct._GtkWidget* %call103, %struct._GtkWidget** %combo, align 8
  %154 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %155 = bitcast %struct._GtkWidget* %154 to %struct._GTypeInstance*
  %call104 = call i64 @gtk_box_get_type() #5
  %call105 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %155, i64 %call104)
  %156 = bitcast %struct._GTypeInstance* %call105 to %struct._GtkBox*
  %157 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %156, %struct._GtkWidget* %157, i32 1, i32 1, i32 0)
  %158 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %158)
  %159 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %160 = bitcast %struct._GtkWidget* %159 to %struct._GTypeInstance*
  %call106 = call i64 @gtk_label_get_type() #5
  %call107 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %160, i64 %call106)
  %161 = bitcast %struct._GTypeInstance* %call107 to %struct._GtkLabel*
  %162 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %161, %struct._GtkWidget* %162)
  %163 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %164 = bitcast %struct._GtkWidget* %163 to %struct._GTypeInstance*
  %call108 = call i64 @gimp_int_combo_box_get_type() #5
  %call109 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %164, i64 %call108)
  %165 = bitcast %struct._GTypeInstance* %call109 to %struct._GimpIntComboBox*
  %166 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %center = getelementptr inbounds %struct.PrintData, %struct.PrintData* %166, i32 0, i32 8
  %167 = load i32, i32* %center, align 4
  %call110 = call i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox* %165, i32 %167, void ()* bitcast (void (%struct._GtkWidget*)* @print_size_info_center_changed to void ()*), i8* null)
  %168 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  store %struct._GtkWidget* %168, %struct._GtkWidget** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 6), align 8
  %169 = load %struct._GtkObject*, %struct._GtkObject** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 9), align 8
  %170 = bitcast %struct._GtkObject* %169 to i8*
  %call111 = call i64 @g_signal_connect_data(i8* %170, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), void ()* @print_size_info_center_none, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %171 = load %struct._GtkObject*, %struct._GtkObject** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 10), align 8
  %172 = bitcast %struct._GtkObject* %171 to i8*
  %call112 = call i64 @g_signal_connect_data(i8* %172, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), void ()* @print_size_info_center_none, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %173 = load %struct._GtkObject*, %struct._GtkObject** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 11), align 8
  %174 = bitcast %struct._GtkObject* %173 to i8*
  %call113 = call i64 @g_signal_connect_data(i8* %174, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), void ()* @print_size_info_center_none, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %175 = load %struct._GtkObject*, %struct._GtkObject** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 12), align 8
  %176 = bitcast %struct._GtkObject* %175 to i8*
  %call114 = call i64 @g_signal_connect_data(i8* %176, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), void ()* @print_size_info_center_none, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %177 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  ret %struct._GtkWidget* %177
}

declare void @g_object_unref(i8*) #2

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @print_size_info_use_full_page_toggled(%struct._GtkWidget* %widget) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %active = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %2)
  store i32 %call2, i32* %active, align 4
  %3 = load i32, i32* %active, align 4
  %4 = load %struct.PrintData*, %struct.PrintData** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 0), align 8
  %use_full_page = getelementptr inbounds %struct.PrintData, %struct.PrintData* %4, i32 0, i32 9
  store i32 %3, i32* %use_full_page, align 4
  call void @print_size_info_set_page_setup(%struct.PrintSizeInfo* @info)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 8), align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call3 = call i64 @print_preview_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._PrintPreview*
  %8 = load i32, i32* %active, align 4
  call void @print_preview_set_use_full_page(%struct._PrintPreview* %7, i32 %8)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_draw_crop_marks_toggled(%struct._GtkWidget* %widget) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %active = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %2)
  store i32 %call2, i32* %active, align 4
  %3 = load i32, i32* %active, align 4
  %4 = load %struct.PrintData*, %struct.PrintData** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 0), align 8
  %draw_crop_marks = getelementptr inbounds %struct.PrintData, %struct.PrintData* %4, i32 0, i32 10
  store i32 %3, i32* %draw_crop_marks, align 4
  ret void
}

declare %struct._GtkWidget* @gimp_frame_new(i8*) #2

declare %struct._GtkWidget* @print_preview_new(%struct._GtkPageSetup*, i32) #2

declare void @print_preview_set_use_full_page(%struct._PrintPreview*, i32) #2

; Function Attrs: nounwind readnone
declare i64 @print_preview_get_type() #3

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #2

; Function Attrs: nounwind uwtable
define internal void @print_size_info_preview_offset_changed(%struct._GtkWidget* %widget, double %offset_x, double %offset_y) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %offset_x.addr = alloca double, align 8
  %offset_y.addr = alloca double, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store double %offset_x, double* %offset_x.addr, align 8
  store double %offset_y, double* %offset_y.addr, align 8
  call void @print_size_info_center_none()
  %0 = load double, double* %offset_x.addr, align 8
  %1 = load %struct.PrintData*, %struct.PrintData** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 0), align 8
  %offset_x1 = getelementptr inbounds %struct.PrintData, %struct.PrintData* %1, i32 0, i32 6
  store double %0, double* %offset_x1, align 8
  %2 = load double, double* %offset_y.addr, align 8
  %3 = load %struct.PrintData*, %struct.PrintData** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 0), align 8
  %offset_y2 = getelementptr inbounds %struct.PrintData, %struct.PrintData* %3, i32 0, i32 7
  store double %2, double* %offset_y2, align 8
  call void @print_size_info_update_offsets()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_size_info_set_page_setup(%struct.PrintSizeInfo* %info) #0 {
entry:
  %info.addr = alloca %struct.PrintSizeInfo*, align 8
  %data = alloca %struct.PrintData*, align 8
  %page_width = alloca double, align 8
  %page_height = alloca double, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %format = alloca i8*, align 8
  %text = alloca i8*, align 8
  %ratio_x = alloca double, align 8
  %ratio_y = alloca double, align 8
  %max = alloca double, align 8
  store %struct.PrintSizeInfo* %info, %struct.PrintSizeInfo** %info.addr, align 8
  %0 = load %struct.PrintSizeInfo*, %struct.PrintSizeInfo** %info.addr, align 8
  %data1 = getelementptr inbounds %struct.PrintSizeInfo, %struct.PrintSizeInfo* %0, i32 0, i32 0
  %1 = load %struct.PrintData*, %struct.PrintData** %data1, align 8
  store %struct.PrintData* %1, %struct.PrintData** %data, align 8
  %2 = load %struct.PrintSizeInfo*, %struct.PrintSizeInfo** %info.addr, align 8
  call void @print_size_info_get_page_dimensions(%struct.PrintSizeInfo* %2, double* %page_width, double* %page_height, i32 2)
  %3 = load %struct.PrintData*, %struct.PrintData** %data, align 8
  %unit = getelementptr inbounds %struct.PrintData, %struct.PrintData* %3, i32 0, i32 2
  %4 = load i32, i32* %unit, align 4
  %call = call double @gimp_unit_get_factor(i32 %4)
  %5 = load double, double* %page_width, align 8
  %mul = fmul double %5, %call
  store double %mul, double* %page_width, align 8
  %6 = load %struct.PrintData*, %struct.PrintData** %data, align 8
  %unit2 = getelementptr inbounds %struct.PrintData, %struct.PrintData* %6, i32 0, i32 2
  %7 = load i32, i32* %unit2, align 4
  %call3 = call double @gimp_unit_get_factor(i32 %7)
  %8 = load double, double* %page_height, align 8
  %mul4 = fmul double %8, %call3
  store double %mul4, double* %page_height, align 8
  %9 = load %struct.PrintSizeInfo*, %struct.PrintSizeInfo** %info.addr, align 8
  %area_label = getelementptr inbounds %struct.PrintSizeInfo, %struct.PrintSizeInfo* %9, i32 0, i32 7
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %area_label, align 8
  %tobool = icmp ne %struct._GtkWidget* %10, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct.PrintData*, %struct.PrintData** %data, align 8
  %unit5 = getelementptr inbounds %struct.PrintData, %struct.PrintData* %11, i32 0, i32 2
  %12 = load i32, i32* %unit5, align 4
  %call6 = call i32 @gimp_unit_get_digits(i32 %12)
  %13 = load %struct.PrintData*, %struct.PrintData** %data, align 8
  %unit7 = getelementptr inbounds %struct.PrintData, %struct.PrintData* %13, i32 0, i32 2
  %14 = load i32, i32* %unit7, align 4
  %call8 = call i32 @gimp_unit_get_digits(i32 %14)
  %15 = load %struct.PrintData*, %struct.PrintData** %data, align 8
  %unit9 = getelementptr inbounds %struct.PrintData, %struct.PrintData* %15, i32 0, i32 2
  %16 = load i32, i32* %unit9, align 4
  %call10 = call i8* @gimp_unit_get_plural(i32 %16)
  %call11 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i32 0, i32 0), i32 %call6, i32 %call8, i8* %call10)
  store i8* %call11, i8** %format, align 8
  %17 = load i8*, i8** %format, align 8
  %18 = load double, double* %page_width, align 8
  %19 = load double, double* %page_height, align 8
  %call12 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %17, double %18, double %19)
  store i8* %call12, i8** %text, align 8
  %20 = load i8*, i8** %format, align 8
  call void @g_free(i8* %20)
  %21 = load %struct.PrintSizeInfo*, %struct.PrintSizeInfo** %info.addr, align 8
  %area_label13 = getelementptr inbounds %struct.PrintSizeInfo, %struct.PrintSizeInfo* %21, i32 0, i32 7
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %area_label13, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_label_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call14)
  %24 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkLabel*
  %25 = load i8*, i8** %text, align 8
  call void @gtk_label_set_text(%struct._GtkLabel* %24, i8* %25)
  %26 = load i8*, i8** %text, align 8
  call void @g_free(i8* %26)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %27 = load double, double* %page_width, align 8
  store double %27, double* %x, align 8
  %28 = load double, double* %page_height, align 8
  store double %28, double* %y, align 8
  %29 = load %struct.PrintSizeInfo*, %struct.PrintSizeInfo** %info.addr, align 8
  %chain = getelementptr inbounds %struct.PrintSizeInfo, %struct.PrintSizeInfo* %29, i32 0, i32 5
  %30 = load %struct._GimpChainButton*, %struct._GimpChainButton** %chain, align 8
  %tobool16 = icmp ne %struct._GimpChainButton* %30, null
  br i1 %tobool16, label %land.lhs.true, label %if.end.32

land.lhs.true:                                    ; preds = %if.end
  %31 = load %struct.PrintSizeInfo*, %struct.PrintSizeInfo** %info.addr, align 8
  %chain17 = getelementptr inbounds %struct.PrintSizeInfo, %struct.PrintSizeInfo* %31, i32 0, i32 5
  %32 = load %struct._GimpChainButton*, %struct._GimpChainButton** %chain17, align 8
  %call18 = call i32 @gimp_chain_button_get_active(%struct._GimpChainButton* %32)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.32

if.then.20:                                       ; preds = %land.lhs.true
  %33 = load double, double* %page_width, align 8
  %34 = load %struct.PrintSizeInfo*, %struct.PrintSizeInfo** %info.addr, align 8
  %image_width = getelementptr inbounds %struct.PrintSizeInfo, %struct.PrintSizeInfo* %34, i32 0, i32 1
  %35 = load i32, i32* %image_width, align 4
  %conv = sitofp i32 %35 to double
  %div = fdiv double %33, %conv
  store double %div, double* %ratio_x, align 8
  %36 = load double, double* %page_height, align 8
  %37 = load %struct.PrintSizeInfo*, %struct.PrintSizeInfo** %info.addr, align 8
  %image_height = getelementptr inbounds %struct.PrintSizeInfo, %struct.PrintSizeInfo* %37, i32 0, i32 2
  %38 = load i32, i32* %image_height, align 4
  %conv21 = sitofp i32 %38 to double
  %div22 = fdiv double %36, %conv21
  store double %div22, double* %ratio_y, align 8
  %39 = load double, double* %ratio_x, align 8
  %40 = load double, double* %ratio_y, align 8
  %cmp = fcmp olt double %39, %40
  br i1 %cmp, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %if.then.20
  %41 = load %struct.PrintSizeInfo*, %struct.PrintSizeInfo** %info.addr, align 8
  %image_height25 = getelementptr inbounds %struct.PrintSizeInfo, %struct.PrintSizeInfo* %41, i32 0, i32 2
  %42 = load i32, i32* %image_height25, align 4
  %conv26 = sitofp i32 %42 to double
  %43 = load double, double* %ratio_x, align 8
  %mul27 = fmul double %conv26, %43
  store double %mul27, double* %y, align 8
  br label %if.end.31

if.else:                                          ; preds = %if.then.20
  %44 = load %struct.PrintSizeInfo*, %struct.PrintSizeInfo** %info.addr, align 8
  %image_width28 = getelementptr inbounds %struct.PrintSizeInfo, %struct.PrintSizeInfo* %44, i32 0, i32 1
  %45 = load i32, i32* %image_width28, align 4
  %conv29 = sitofp i32 %45 to double
  %46 = load double, double* %ratio_y, align 8
  %mul30 = fmul double %conv29, %46
  store double %mul30, double* %x, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.else, %if.then.24
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %land.lhs.true, %if.end
  %47 = load %struct.PrintSizeInfo*, %struct.PrintSizeInfo** %info.addr, align 8
  %size_entry = getelementptr inbounds %struct.PrintSizeInfo, %struct.PrintSizeInfo* %47, i32 0, i32 3
  %48 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %size_entry, align 8
  %49 = load double, double* %page_width, align 8
  %div33 = fdiv double %49, 1.000000e+02
  %50 = load double, double* %x, align 8
  call void @gimp_size_entry_set_value_boundaries(%struct._GimpSizeEntry* %48, i32 4, double %div33, double %50)
  %51 = load %struct.PrintSizeInfo*, %struct.PrintSizeInfo** %info.addr, align 8
  %size_entry34 = getelementptr inbounds %struct.PrintSizeInfo, %struct.PrintSizeInfo* %51, i32 0, i32 3
  %52 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %size_entry34, align 8
  %53 = load double, double* %page_height, align 8
  %div35 = fdiv double %53, 1.000000e+02
  %54 = load double, double* %y, align 8
  call void @gimp_size_entry_set_value_boundaries(%struct._GimpSizeEntry* %52, i32 5, double %div35, double %54)
  %55 = load %struct.PrintSizeInfo*, %struct.PrintSizeInfo** %info.addr, align 8
  call void @print_size_info_get_page_dimensions(%struct.PrintSizeInfo* %55, double* %page_width, double* %page_height, i32 1)
  %56 = load %struct.PrintSizeInfo*, %struct.PrintSizeInfo** %info.addr, align 8
  %image_width36 = getelementptr inbounds %struct.PrintSizeInfo, %struct.PrintSizeInfo* %56, i32 0, i32 1
  %57 = load i32, i32* %image_width36, align 4
  %conv37 = sitofp i32 %57 to double
  %58 = load double, double* %page_width, align 8
  %div38 = fdiv double %conv37, %58
  %mul39 = fmul double %div38, 7.200000e+01
  store double %mul39, double* %x, align 8
  %59 = load %struct.PrintSizeInfo*, %struct.PrintSizeInfo** %info.addr, align 8
  %image_height40 = getelementptr inbounds %struct.PrintSizeInfo, %struct.PrintSizeInfo* %59, i32 0, i32 2
  %60 = load i32, i32* %image_height40, align 4
  %conv41 = sitofp i32 %60 to double
  %61 = load double, double* %page_height, align 8
  %div42 = fdiv double %conv41, %61
  %mul43 = fmul double %div42, 7.200000e+01
  store double %mul43, double* %y, align 8
  %62 = load %struct.PrintSizeInfo*, %struct.PrintSizeInfo** %info.addr, align 8
  %chain44 = getelementptr inbounds %struct.PrintSizeInfo, %struct.PrintSizeInfo* %62, i32 0, i32 5
  %63 = load %struct._GimpChainButton*, %struct._GimpChainButton** %chain44, align 8
  %tobool45 = icmp ne %struct._GimpChainButton* %63, null
  br i1 %tobool45, label %land.lhs.true.46, label %if.end.53

land.lhs.true.46:                                 ; preds = %if.end.32
  %64 = load %struct.PrintSizeInfo*, %struct.PrintSizeInfo** %info.addr, align 8
  %chain47 = getelementptr inbounds %struct.PrintSizeInfo, %struct.PrintSizeInfo* %64, i32 0, i32 5
  %65 = load %struct._GimpChainButton*, %struct._GimpChainButton** %chain47, align 8
  %call48 = call i32 @gimp_chain_button_get_active(%struct._GimpChainButton* %65)
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.then.50, label %if.end.53

if.then.50:                                       ; preds = %land.lhs.true.46
  %66 = load double, double* %x, align 8
  %67 = load double, double* %y, align 8
  %cmp51 = fcmp ogt double %66, %67
  br i1 %cmp51, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.50
  %68 = load double, double* %x, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.50
  %69 = load double, double* %y, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %68, %cond.true ], [ %69, %cond.false ]
  store double %cond, double* %max, align 8
  %70 = load double, double* %max, align 8
  store double %70, double* %y, align 8
  store double %70, double* %x, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %cond.end, %land.lhs.true.46, %if.end.32
  %71 = load %struct.PrintSizeInfo*, %struct.PrintSizeInfo** %info.addr, align 8
  %resolution_entry = getelementptr inbounds %struct.PrintSizeInfo, %struct.PrintSizeInfo* %71, i32 0, i32 4
  %72 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %resolution_entry, align 8
  %73 = load double, double* %x, align 8
  call void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry* %72, i32 0, double %73, double 6.553600e+04)
  %74 = load %struct.PrintSizeInfo*, %struct.PrintSizeInfo** %info.addr, align 8
  %resolution_entry54 = getelementptr inbounds %struct.PrintSizeInfo, %struct.PrintSizeInfo* %74, i32 0, i32 4
  %75 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %resolution_entry54, align 8
  %76 = load double, double* %y, align 8
  call void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry* %75, i32 1, double %76, double 6.553600e+04)
  ret void
}

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @print_page_setup_notify(%struct._GtkPrintOperation* %operation) #0 {
entry:
  %operation.addr = alloca %struct._GtkPrintOperation*, align 8
  %setup = alloca %struct._GtkPageSetup*, align 8
  store %struct._GtkPrintOperation* %operation, %struct._GtkPrintOperation** %operation.addr, align 8
  %0 = load %struct._GtkPrintOperation*, %struct._GtkPrintOperation** %operation.addr, align 8
  %call = call %struct._GtkPageSetup* @gtk_print_operation_get_default_page_setup(%struct._GtkPrintOperation* %0)
  store %struct._GtkPageSetup* %call, %struct._GtkPageSetup** %setup, align 8
  call void @print_size_info_set_page_setup(%struct.PrintSizeInfo* @info)
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 8), align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call1 = call i64 @print_preview_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._PrintPreview*
  %4 = load %struct._GtkPageSetup*, %struct._GtkPageSetup** %setup, align 8
  call void @print_preview_set_page_setup(%struct._PrintPreview* %3, %struct._GtkPageSetup* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @update_custom_widget(%struct._GtkPrintOperation* %operation, %struct._GtkWidget* %custom_widget, %struct._GtkPageSetup* %page_setup, %struct._GtkPrintSettings* %print_settings) #0 {
entry:
  %operation.addr = alloca %struct._GtkPrintOperation*, align 8
  %custom_widget.addr = alloca %struct._GtkWidget*, align 8
  %page_setup.addr = alloca %struct._GtkPageSetup*, align 8
  %print_settings.addr = alloca %struct._GtkPrintSettings*, align 8
  store %struct._GtkPrintOperation* %operation, %struct._GtkPrintOperation** %operation.addr, align 8
  store %struct._GtkWidget* %custom_widget, %struct._GtkWidget** %custom_widget.addr, align 8
  store %struct._GtkPageSetup* %page_setup, %struct._GtkPageSetup** %page_setup.addr, align 8
  store %struct._GtkPrintSettings* %print_settings, %struct._GtkPrintSettings** %print_settings.addr, align 8
  %0 = load %struct._GtkPrintOperation*, %struct._GtkPrintOperation** %operation.addr, align 8
  %1 = load %struct._GtkPageSetup*, %struct._GtkPageSetup** %page_setup.addr, align 8
  call void @gtk_print_operation_set_default_page_setup(%struct._GtkPrintOperation* %0, %struct._GtkPageSetup* %1)
  ret void
}

declare void @gimp_help_connect(%struct._GtkWidget*, void (i8*, i8*)*, i8*, i8*) #2

declare void @gimp_standard_help_func(i8*, i8*) #2

declare void @print_preview_set_page_setup(%struct._PrintPreview*, %struct._GtkPageSetup*) #2

declare double @gimp_unit_get_factor(i32) #2

declare %struct._GtkWidget* @gimp_size_entry_new(i32, i32, i8*, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_size_entry_get_type() #3

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_col_spacing(%struct._GtkTable*, i32, i32) #2

declare %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject**, double, double, double, double, double, double, double, i32) #2

declare void @gimp_size_entry_add_field(%struct._GimpSizeEntry*, %struct._GtkSpinButton*, %struct._GtkSpinButton*) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_spin_button_get_type() #3

declare void @gtk_table_attach_defaults(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32) #2

declare void @gtk_size_group_add_widget(%struct._GtkSizeGroup*, %struct._GtkWidget*) #2

declare %struct._GtkWidget* @gimp_size_entry_attach_label(%struct._GimpSizeEntry*, i8*, i32, i32, float) #2

declare void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry*, i32, double, i32) #2

declare void @gimp_size_entry_set_value(%struct._GimpSizeEntry*, i32, double) #2

declare void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry*, i32, double, double) #2

declare void @gimp_size_entry_set_refval(%struct._GimpSizeEntry*, i32, double) #2

declare %struct._GtkWidget* @gimp_chain_button_new(i32) #2

declare void @gimp_chain_button_set_active(%struct._GimpChainButton*, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_chain_button_get_type() #3

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal void @print_size_info_resolution_changed(%struct._GtkWidget* %widget) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %entry1 = alloca %struct._GimpSizeEntry*, align 8
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 4), align 8
  store %struct._GimpSizeEntry* %0, %struct._GimpSizeEntry** %entry1, align 8
  %1 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry1, align 8
  %call = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %1, i32 0)
  store double %call, double* %xres, align 8
  %2 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry1, align 8
  %call2 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %2, i32 1)
  store double %call2, double* %yres, align 8
  %3 = load double, double* %xres, align 8
  %4 = load double, double* %yres, align 8
  call void @print_size_info_set_resolution(%struct.PrintSizeInfo* @info, double %3, double %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_size_info_unit_changed(%struct._GtkWidget* %widget) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_size_entry_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSizeEntry*
  %call2 = call i32 @gimp_size_entry_get_unit(%struct._GimpSizeEntry* %2)
  %3 = load %struct.PrintData*, %struct.PrintData** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 0), align 8
  %unit = getelementptr inbounds %struct.PrintData, %struct.PrintData* %3, i32 0, i32 2
  store i32 %call2, i32* %unit, align 4
  call void @print_size_info_set_page_setup(%struct.PrintSizeInfo* @info)
  ret void
}

declare double @gimp_size_entry_get_refval(%struct._GimpSizeEntry*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @print_size_info_set_resolution(%struct.PrintSizeInfo* %info, double %xres, double %yres) #0 {
entry:
  %info.addr = alloca %struct.PrintSizeInfo*, align 8
  %xres.addr = alloca double, align 8
  %yres.addr = alloca double, align 8
  %data = alloca %struct.PrintData*, align 8
  %offset_x = alloca double, align 8
  %offset_y = alloca double, align 8
  %offset_x_max = alloca double, align 8
  %offset_y_max = alloca double, align 8
  store %struct.PrintSizeInfo* %info, %struct.PrintSizeInfo** %info.addr, align 8
  store double %xres, double* %xres.addr, align 8
  store double %yres, double* %yres.addr, align 8
  %0 = load %struct.PrintSizeInfo*, %struct.PrintSizeInfo** %info.addr, align 8
  %data1 = getelementptr inbounds %struct.PrintSizeInfo, %struct.PrintSizeInfo* %0, i32 0, i32 0
  %1 = load %struct.PrintData*, %struct.PrintData** %data1, align 8
  store %struct.PrintData* %1, %struct.PrintData** %data, align 8
  %2 = load %struct.PrintSizeInfo*, %struct.PrintSizeInfo** %info.addr, align 8
  %chain = getelementptr inbounds %struct.PrintSizeInfo, %struct.PrintSizeInfo* %2, i32 0, i32 5
  %3 = load %struct._GimpChainButton*, %struct._GimpChainButton** %chain, align 8
  %tobool = icmp ne %struct._GimpChainButton* %3, null
  br i1 %tobool, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.PrintSizeInfo*, %struct.PrintSizeInfo** %info.addr, align 8
  %chain2 = getelementptr inbounds %struct.PrintSizeInfo, %struct.PrintSizeInfo* %4, i32 0, i32 5
  %5 = load %struct._GimpChainButton*, %struct._GimpChainButton** %chain2, align 8
  %call = call i32 @gimp_chain_button_get_active(%struct._GimpChainButton* %5)
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.then, label %if.end.6

if.then:                                          ; preds = %land.lhs.true
  %6 = load double, double* %xres.addr, align 8
  %7 = load %struct.PrintData*, %struct.PrintData** %data, align 8
  %xres4 = getelementptr inbounds %struct.PrintData, %struct.PrintData* %7, i32 0, i32 3
  %8 = load double, double* %xres4, align 8
  %cmp = fcmp une double %6, %8
  br i1 %cmp, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %9 = load double, double* %xres.addr, align 8
  store double %9, double* %yres.addr, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %10 = load double, double* %yres.addr, align 8
  store double %10, double* %xres.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %land.lhs.true, %entry
  %11 = load double, double* %xres.addr, align 8
  %12 = load %struct.PrintData*, %struct.PrintData** %data, align 8
  %xres7 = getelementptr inbounds %struct.PrintData, %struct.PrintData* %12, i32 0, i32 3
  store double %11, double* %xres7, align 8
  %13 = load double, double* %yres.addr, align 8
  %14 = load %struct.PrintData*, %struct.PrintData** %data, align 8
  %yres8 = getelementptr inbounds %struct.PrintData, %struct.PrintData* %14, i32 0, i32 4
  store double %13, double* %yres8, align 8
  %15 = load %struct.PrintSizeInfo*, %struct.PrintSizeInfo** %info.addr, align 8
  %resolution_entry = getelementptr inbounds %struct.PrintSizeInfo, %struct.PrintSizeInfo* %15, i32 0, i32 4
  %16 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %resolution_entry, align 8
  %17 = bitcast %struct._GimpSizeEntry* %16 to i8*
  %call9 = call i32 @g_signal_handlers_block_matched(i8* %17, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*)* @print_size_info_resolution_changed to i8*), i8* null)
  %18 = load %struct.PrintSizeInfo*, %struct.PrintSizeInfo** %info.addr, align 8
  %resolution_entry10 = getelementptr inbounds %struct.PrintSizeInfo, %struct.PrintSizeInfo* %18, i32 0, i32 4
  %19 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %resolution_entry10, align 8
  %20 = load double, double* %xres.addr, align 8
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %19, i32 0, double %20)
  %21 = load %struct.PrintSizeInfo*, %struct.PrintSizeInfo** %info.addr, align 8
  %resolution_entry11 = getelementptr inbounds %struct.PrintSizeInfo, %struct.PrintSizeInfo* %21, i32 0, i32 4
  %22 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %resolution_entry11, align 8
  %23 = load double, double* %yres.addr, align 8
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %22, i32 1, double %23)
  %24 = load %struct.PrintSizeInfo*, %struct.PrintSizeInfo** %info.addr, align 8
  %resolution_entry12 = getelementptr inbounds %struct.PrintSizeInfo, %struct.PrintSizeInfo* %24, i32 0, i32 4
  %25 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %resolution_entry12, align 8
  %26 = bitcast %struct._GimpSizeEntry* %25 to i8*
  %call13 = call i32 @g_signal_handlers_unblock_matched(i8* %26, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*)* @print_size_info_resolution_changed to i8*), i8* null)
  %27 = load %struct.PrintSizeInfo*, %struct.PrintSizeInfo** %info.addr, align 8
  %size_entry = getelementptr inbounds %struct.PrintSizeInfo, %struct.PrintSizeInfo* %27, i32 0, i32 3
  %28 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %size_entry, align 8
  %29 = bitcast %struct._GimpSizeEntry* %28 to i8*
  %call14 = call i32 @g_signal_handlers_block_matched(i8* %29, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*)* @print_size_info_size_changed to i8*), i8* null)
  %30 = load %struct.PrintSizeInfo*, %struct.PrintSizeInfo** %info.addr, align 8
  %size_entry15 = getelementptr inbounds %struct.PrintSizeInfo, %struct.PrintSizeInfo* %30, i32 0, i32 3
  %31 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %size_entry15, align 8
  %32 = load %struct.PrintSizeInfo*, %struct.PrintSizeInfo** %info.addr, align 8
  %image_width = getelementptr inbounds %struct.PrintSizeInfo, %struct.PrintSizeInfo* %32, i32 0, i32 1
  %33 = load i32, i32* %image_width, align 4
  %conv = sitofp i32 %33 to double
  %34 = load %struct.PrintData*, %struct.PrintData** %data, align 8
  %unit = getelementptr inbounds %struct.PrintData, %struct.PrintData* %34, i32 0, i32 2
  %35 = load i32, i32* %unit, align 4
  %call16 = call double @gimp_unit_get_factor(i32 %35)
  %mul = fmul double %conv, %call16
  %36 = load double, double* %xres.addr, align 8
  %div = fdiv double %mul, %36
  call void @gimp_size_entry_set_value(%struct._GimpSizeEntry* %31, i32 4, double %div)
  %37 = load %struct.PrintSizeInfo*, %struct.PrintSizeInfo** %info.addr, align 8
  %size_entry17 = getelementptr inbounds %struct.PrintSizeInfo, %struct.PrintSizeInfo* %37, i32 0, i32 3
  %38 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %size_entry17, align 8
  %39 = load %struct.PrintSizeInfo*, %struct.PrintSizeInfo** %info.addr, align 8
  %image_height = getelementptr inbounds %struct.PrintSizeInfo, %struct.PrintSizeInfo* %39, i32 0, i32 2
  %40 = load i32, i32* %image_height, align 4
  %conv18 = sitofp i32 %40 to double
  %41 = load %struct.PrintData*, %struct.PrintData** %data, align 8
  %unit19 = getelementptr inbounds %struct.PrintData, %struct.PrintData* %41, i32 0, i32 2
  %42 = load i32, i32* %unit19, align 4
  %call20 = call double @gimp_unit_get_factor(i32 %42)
  %mul21 = fmul double %conv18, %call20
  %43 = load double, double* %yres.addr, align 8
  %div22 = fdiv double %mul21, %43
  call void @gimp_size_entry_set_value(%struct._GimpSizeEntry* %38, i32 5, double %div22)
  %44 = load %struct.PrintSizeInfo*, %struct.PrintSizeInfo** %info.addr, align 8
  %size_entry23 = getelementptr inbounds %struct.PrintSizeInfo, %struct.PrintSizeInfo* %44, i32 0, i32 3
  %45 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %size_entry23, align 8
  %46 = bitcast %struct._GimpSizeEntry* %45 to i8*
  %call24 = call i32 @g_signal_handlers_unblock_matched(i8* %46, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*)* @print_size_info_size_changed to i8*), i8* null)
  call void @gimp_size_info_get_max_offsets(double* %offset_x_max, double* %offset_y_max)
  %47 = load %struct.PrintSizeInfo*, %struct.PrintSizeInfo** %info.addr, align 8
  %size_entry25 = getelementptr inbounds %struct.PrintSizeInfo, %struct.PrintSizeInfo* %47, i32 0, i32 3
  %48 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %size_entry25, align 8
  %call26 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %48, i32 3)
  store double %call26, double* %offset_x, align 8
  %49 = load %struct.PrintSizeInfo*, %struct.PrintSizeInfo** %info.addr, align 8
  %size_entry27 = getelementptr inbounds %struct.PrintSizeInfo, %struct.PrintSizeInfo* %49, i32 0, i32 3
  %50 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %size_entry27, align 8
  %call28 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %50, i32 1)
  store double %call28, double* %offset_y, align 8
  %51 = load double, double* %offset_x, align 8
  %52 = load double, double* %offset_x_max, align 8
  %cmp29 = fcmp ogt double %51, %52
  br i1 %cmp29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %53 = load double, double* %offset_x_max, align 8
  br label %cond.end.35

cond.false:                                       ; preds = %if.end.6
  %54 = load double, double* %offset_x, align 8
  %cmp31 = fcmp olt double %54, 0.000000e+00
  br i1 %cmp31, label %cond.true.33, label %cond.false.34

cond.true.33:                                     ; preds = %cond.false
  br label %cond.end

cond.false.34:                                    ; preds = %cond.false
  %55 = load double, double* %offset_x, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.34, %cond.true.33
  %cond = phi double [ 0.000000e+00, %cond.true.33 ], [ %55, %cond.false.34 ]
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.end, %cond.true
  %cond36 = phi double [ %53, %cond.true ], [ %cond, %cond.end ]
  store double %cond36, double* %offset_x, align 8
  %56 = load double, double* %offset_y, align 8
  %57 = load double, double* %offset_y_max, align 8
  %cmp37 = fcmp ogt double %56, %57
  br i1 %cmp37, label %cond.true.39, label %cond.false.40

cond.true.39:                                     ; preds = %cond.end.35
  %58 = load double, double* %offset_y_max, align 8
  br label %cond.end.47

cond.false.40:                                    ; preds = %cond.end.35
  %59 = load double, double* %offset_y, align 8
  %cmp41 = fcmp olt double %59, 0.000000e+00
  br i1 %cmp41, label %cond.true.43, label %cond.false.44

cond.true.43:                                     ; preds = %cond.false.40
  br label %cond.end.45

cond.false.44:                                    ; preds = %cond.false.40
  %60 = load double, double* %offset_y, align 8
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.44, %cond.true.43
  %cond46 = phi double [ 0.000000e+00, %cond.true.43 ], [ %60, %cond.false.44 ]
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.end.45, %cond.true.39
  %cond48 = phi double [ %58, %cond.true.39 ], [ %cond46, %cond.end.45 ]
  store double %cond48, double* %offset_y, align 8
  %61 = load double, double* %offset_x, align 8
  %62 = load %struct.PrintData*, %struct.PrintData** %data, align 8
  %offset_x49 = getelementptr inbounds %struct.PrintData, %struct.PrintData* %62, i32 0, i32 6
  store double %61, double* %offset_x49, align 8
  %63 = load double, double* %offset_y, align 8
  %64 = load %struct.PrintData*, %struct.PrintData** %data, align 8
  %offset_y50 = getelementptr inbounds %struct.PrintData, %struct.PrintData* %64, i32 0, i32 7
  store double %63, double* %offset_y50, align 8
  call void @print_size_info_update_offsets()
  %65 = load %struct.PrintSizeInfo*, %struct.PrintSizeInfo** %info.addr, align 8
  %preview = getelementptr inbounds %struct.PrintSizeInfo, %struct.PrintSizeInfo* %65, i32 0, i32 8
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %67 = bitcast %struct._GtkWidget* %66 to %struct._GTypeInstance*
  %call51 = call i64 @print_preview_get_type() #5
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call51)
  %68 = bitcast %struct._GTypeInstance* %call52 to %struct._PrintPreview*
  %69 = load %struct.PrintData*, %struct.PrintData** %data, align 8
  %xres53 = getelementptr inbounds %struct.PrintData, %struct.PrintData* %69, i32 0, i32 3
  %70 = load double, double* %xres53, align 8
  %71 = load %struct.PrintData*, %struct.PrintData** %data, align 8
  %yres54 = getelementptr inbounds %struct.PrintData, %struct.PrintData* %71, i32 0, i32 4
  %72 = load double, double* %yres54, align 8
  call void @print_preview_set_image_dpi(%struct._PrintPreview* %68, double %70, double %72)
  %73 = load %struct.PrintSizeInfo*, %struct.PrintSizeInfo** %info.addr, align 8
  %preview55 = getelementptr inbounds %struct.PrintSizeInfo, %struct.PrintSizeInfo* %73, i32 0, i32 8
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %preview55, align 8
  %75 = bitcast %struct._GtkWidget* %74 to %struct._GTypeInstance*
  %call56 = call i64 @print_preview_get_type() #5
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call56)
  %76 = bitcast %struct._GTypeInstance* %call57 to %struct._PrintPreview*
  %77 = load %struct.PrintData*, %struct.PrintData** %data, align 8
  %offset_x58 = getelementptr inbounds %struct.PrintData, %struct.PrintData* %77, i32 0, i32 6
  %78 = load double, double* %offset_x58, align 8
  %79 = load %struct.PrintData*, %struct.PrintData** %data, align 8
  %offset_y59 = getelementptr inbounds %struct.PrintData, %struct.PrintData* %79, i32 0, i32 7
  %80 = load double, double* %offset_y59, align 8
  call void @print_preview_set_image_offsets(%struct._PrintPreview* %76, double %78, double %80)
  %81 = load %struct.PrintSizeInfo*, %struct.PrintSizeInfo** %info.addr, align 8
  %preview60 = getelementptr inbounds %struct.PrintSizeInfo, %struct.PrintSizeInfo* %81, i32 0, i32 8
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %preview60, align 8
  %83 = bitcast %struct._GtkWidget* %82 to %struct._GTypeInstance*
  %call61 = call i64 @print_preview_get_type() #5
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %83, i64 %call61)
  %84 = bitcast %struct._GTypeInstance* %call62 to %struct._PrintPreview*
  %85 = load double, double* %offset_x_max, align 8
  %86 = load double, double* %offset_y_max, align 8
  call void @print_preview_set_image_offsets_max(%struct._PrintPreview* %84, double %85, double %86)
  ret void
}

declare i32 @gimp_chain_button_get_active(%struct._GimpChainButton*) #2

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #2

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @print_size_info_size_changed(%struct._GtkWidget* %widget) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %width = alloca double, align 8
  %height = alloca double, align 8
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %scale = alloca double, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 3), align 8
  %call = call i32 @gimp_size_entry_get_unit(%struct._GimpSizeEntry* %0)
  %call1 = call double @gimp_unit_get_factor(i32 %call)
  store double %call1, double* %scale, align 8
  %1 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 3), align 8
  %call2 = call double @gimp_size_entry_get_value(%struct._GimpSizeEntry* %1, i32 4)
  store double %call2, double* %width, align 8
  %2 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 3), align 8
  %call3 = call double @gimp_size_entry_get_value(%struct._GimpSizeEntry* %2, i32 5)
  store double %call3, double* %height, align 8
  %3 = load double, double* %scale, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 1), align 4
  %conv = sitofp i32 %4 to double
  %mul = fmul double %3, %conv
  %5 = load double, double* %width, align 8
  %cmp = fcmp ogt double 1.000000e-04, %5
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load double, double* %width, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 1.000000e-04, %cond.true ], [ %6, %cond.false ]
  %div = fdiv double %mul, %cond
  store double %div, double* %xres, align 8
  %7 = load double, double* %scale, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 2), align 4
  %conv5 = sitofp i32 %8 to double
  %mul6 = fmul double %7, %conv5
  %9 = load double, double* %height, align 8
  %cmp7 = fcmp ogt double 1.000000e-04, %9
  br i1 %cmp7, label %cond.true.9, label %cond.false.10

cond.true.9:                                      ; preds = %cond.end
  br label %cond.end.11

cond.false.10:                                    ; preds = %cond.end
  %10 = load double, double* %height, align 8
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.false.10, %cond.true.9
  %cond12 = phi double [ 1.000000e-04, %cond.true.9 ], [ %10, %cond.false.10 ]
  %div13 = fdiv double %mul6, %cond12
  store double %div13, double* %yres, align 8
  %11 = load double, double* %xres, align 8
  %12 = load double, double* %yres, align 8
  call void @print_size_info_set_resolution(%struct.PrintSizeInfo* @info, double %11, double %12)
  %13 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 3), align 8
  %call14 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %13, i32 3)
  %14 = load %struct.PrintData*, %struct.PrintData** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 0), align 8
  %offset_x = getelementptr inbounds %struct.PrintData, %struct.PrintData* %14, i32 0, i32 6
  store double %call14, double* %offset_x, align 8
  %15 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 3), align 8
  %call15 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %15, i32 1)
  %16 = load %struct.PrintData*, %struct.PrintData** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 0), align 8
  %offset_y = getelementptr inbounds %struct.PrintData, %struct.PrintData* %16, i32 0, i32 7
  store double %call15, double* %offset_y, align 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 8), align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call16 = call i64 @print_preview_get_type() #5
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call16)
  %19 = bitcast %struct._GTypeInstance* %call17 to %struct._PrintPreview*
  %20 = load %struct.PrintData*, %struct.PrintData** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 0), align 8
  %offset_x18 = getelementptr inbounds %struct.PrintData, %struct.PrintData* %20, i32 0, i32 6
  %21 = load double, double* %offset_x18, align 8
  %22 = load %struct.PrintData*, %struct.PrintData** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 0), align 8
  %offset_y19 = getelementptr inbounds %struct.PrintData, %struct.PrintData* %22, i32 0, i32 7
  %23 = load double, double* %offset_y19, align 8
  call void @print_preview_set_image_offsets(%struct._PrintPreview* %19, double %21, double %23)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_size_info_get_max_offsets(double* %offset_x_max, double* %offset_y_max) #0 {
entry:
  %offset_x_max.addr = alloca double*, align 8
  %offset_y_max.addr = alloca double*, align 8
  %width = alloca double, align 8
  %height = alloca double, align 8
  store double* %offset_x_max, double** %offset_x_max.addr, align 8
  store double* %offset_y_max, double** %offset_y_max.addr, align 8
  call void @print_size_info_get_page_dimensions(%struct.PrintSizeInfo* @info, double* %width, double* %height, i32 1)
  %0 = load double, double* %width, align 8
  %1 = load i32, i32* getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 1), align 4
  %conv = sitofp i32 %1 to double
  %mul = fmul double 7.200000e+01, %conv
  %2 = load %struct.PrintData*, %struct.PrintData** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 0), align 8
  %xres = getelementptr inbounds %struct.PrintData, %struct.PrintData* %2, i32 0, i32 3
  %3 = load double, double* %xres, align 8
  %div = fdiv double %mul, %3
  %sub = fsub double %0, %div
  %4 = load double*, double** %offset_x_max.addr, align 8
  store double %sub, double* %4, align 8
  %5 = load double*, double** %offset_x_max.addr, align 8
  %6 = load double, double* %5, align 8
  %cmp = fcmp ogt double 0.000000e+00, %6
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load double*, double** %offset_x_max.addr, align 8
  %8 = load double, double* %7, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 0.000000e+00, %cond.true ], [ %8, %cond.false ]
  %9 = load double*, double** %offset_x_max.addr, align 8
  store double %cond, double* %9, align 8
  %10 = load double, double* %height, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 2), align 4
  %conv2 = sitofp i32 %11 to double
  %mul3 = fmul double 7.200000e+01, %conv2
  %12 = load %struct.PrintData*, %struct.PrintData** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 0), align 8
  %yres = getelementptr inbounds %struct.PrintData, %struct.PrintData* %12, i32 0, i32 4
  %13 = load double, double* %yres, align 8
  %div4 = fdiv double %mul3, %13
  %sub5 = fsub double %10, %div4
  %14 = load double*, double** %offset_y_max.addr, align 8
  store double %sub5, double* %14, align 8
  %15 = load double*, double** %offset_y_max.addr, align 8
  %16 = load double, double* %15, align 8
  %cmp6 = fcmp ogt double 0.000000e+00, %16
  br i1 %cmp6, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %cond.end
  br label %cond.end.10

cond.false.9:                                     ; preds = %cond.end
  %17 = load double*, double** %offset_y_max.addr, align 8
  %18 = load double, double* %17, align 8
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.9, %cond.true.8
  %cond11 = phi double [ 0.000000e+00, %cond.true.8 ], [ %18, %cond.false.9 ]
  %19 = load double*, double** %offset_y_max.addr, align 8
  store double %cond11, double* %19, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_size_info_update_offsets() #0 {
entry:
  %data = alloca %struct.PrintData*, align 8
  %offset_x_max = alloca double, align 8
  %offset_y_max = alloca double, align 8
  %0 = load %struct.PrintData*, %struct.PrintData** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 0), align 8
  store %struct.PrintData* %0, %struct.PrintData** %data, align 8
  call void @gimp_size_info_get_max_offsets(double* %offset_x_max, double* %offset_y_max)
  %1 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 3), align 8
  %2 = bitcast %struct._GimpSizeEntry* %1 to i8*
  %call = call i32 @g_signal_handlers_block_matched(i8* %2, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*)* @print_size_info_size_changed to i8*), i8* null)
  call void @print_size_info_center_none_block()
  %3 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 3), align 8
  %4 = load double, double* %offset_x_max, align 8
  call void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry* %3, i32 3, double 0.000000e+00, double %4)
  %5 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 3), align 8
  %6 = load double, double* %offset_x_max, align 8
  call void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry* %5, i32 2, double 0.000000e+00, double %6)
  %7 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 3), align 8
  %8 = load double, double* %offset_y_max, align 8
  call void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry* %7, i32 1, double 0.000000e+00, double %8)
  %9 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 3), align 8
  %10 = load double, double* %offset_y_max, align 8
  call void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry* %9, i32 0, double 0.000000e+00, double %10)
  %11 = load %struct.PrintData*, %struct.PrintData** %data, align 8
  %center = getelementptr inbounds %struct.PrintData, %struct.PrintData* %11, i32 0, i32 8
  %12 = load i32, i32* %center, align 4
  switch i32 %12, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %13 = load double, double* %offset_x_max, align 8
  %div = fdiv double %13, 2.000000e+00
  %14 = load %struct.PrintData*, %struct.PrintData** %data, align 8
  %offset_x = getelementptr inbounds %struct.PrintData, %struct.PrintData* %14, i32 0, i32 6
  store double %div, double* %offset_x, align 8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %15 = load double, double* %offset_y_max, align 8
  %div3 = fdiv double %15, 2.000000e+00
  %16 = load %struct.PrintData*, %struct.PrintData** %data, align 8
  %offset_y = getelementptr inbounds %struct.PrintData, %struct.PrintData* %16, i32 0, i32 7
  store double %div3, double* %offset_y, align 8
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %17 = load double, double* %offset_x_max, align 8
  %div5 = fdiv double %17, 2.000000e+00
  %18 = load %struct.PrintData*, %struct.PrintData** %data, align 8
  %offset_x6 = getelementptr inbounds %struct.PrintData, %struct.PrintData* %18, i32 0, i32 6
  store double %div5, double* %offset_x6, align 8
  %19 = load double, double* %offset_y_max, align 8
  %div7 = fdiv double %19, 2.000000e+00
  %20 = load %struct.PrintData*, %struct.PrintData** %data, align 8
  %offset_y8 = getelementptr inbounds %struct.PrintData, %struct.PrintData* %20, i32 0, i32 7
  store double %div7, double* %offset_y8, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.4, %sw.bb.2, %sw.bb.1, %sw.bb
  %21 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 3), align 8
  %22 = load %struct.PrintData*, %struct.PrintData** %data, align 8
  %offset_x9 = getelementptr inbounds %struct.PrintData, %struct.PrintData* %22, i32 0, i32 6
  %23 = load double, double* %offset_x9, align 8
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %21, i32 3, double %23)
  %24 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 3), align 8
  %25 = load double, double* %offset_x_max, align 8
  %26 = load %struct.PrintData*, %struct.PrintData** %data, align 8
  %offset_x10 = getelementptr inbounds %struct.PrintData, %struct.PrintData* %26, i32 0, i32 6
  %27 = load double, double* %offset_x10, align 8
  %sub = fsub double %25, %27
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %24, i32 2, double %sub)
  %28 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 3), align 8
  %29 = load %struct.PrintData*, %struct.PrintData** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 0), align 8
  %offset_y11 = getelementptr inbounds %struct.PrintData, %struct.PrintData* %29, i32 0, i32 7
  %30 = load double, double* %offset_y11, align 8
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %28, i32 1, double %30)
  %31 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 3), align 8
  %32 = load double, double* %offset_y_max, align 8
  %33 = load %struct.PrintData*, %struct.PrintData** %data, align 8
  %offset_y12 = getelementptr inbounds %struct.PrintData, %struct.PrintData* %33, i32 0, i32 7
  %34 = load double, double* %offset_y12, align 8
  %sub13 = fsub double %32, %34
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %31, i32 0, double %sub13)
  call void @print_size_info_center_none_unblock()
  %35 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 3), align 8
  %36 = bitcast %struct._GimpSizeEntry* %35 to i8*
  %call14 = call i32 @g_signal_handlers_unblock_matched(i8* %36, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*)* @print_size_info_size_changed to i8*), i8* null)
  ret void
}

declare void @print_preview_set_image_dpi(%struct._PrintPreview*, double, double) #2

declare void @print_preview_set_image_offsets(%struct._PrintPreview*, double, double) #2

declare void @print_preview_set_image_offsets_max(%struct._PrintPreview*, double, double) #2

declare i32 @gimp_size_entry_get_unit(%struct._GimpSizeEntry*) #2

declare double @gimp_size_entry_get_value(%struct._GimpSizeEntry*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @print_size_info_get_page_dimensions(%struct.PrintSizeInfo* %info, double* %page_width, double* %page_height, i32 %unit) #0 {
entry:
  %info.addr = alloca %struct.PrintSizeInfo*, align 8
  %page_width.addr = alloca double*, align 8
  %page_height.addr = alloca double*, align 8
  %unit.addr = alloca i32, align 4
  %setup = alloca %struct._GtkPageSetup*, align 8
  store %struct.PrintSizeInfo* %info, %struct.PrintSizeInfo** %info.addr, align 8
  store double* %page_width, double** %page_width.addr, align 8
  store double* %page_height, double** %page_height.addr, align 8
  store i32 %unit, i32* %unit.addr, align 4
  %0 = load %struct.PrintSizeInfo*, %struct.PrintSizeInfo** %info.addr, align 8
  %data = getelementptr inbounds %struct.PrintSizeInfo, %struct.PrintSizeInfo* %0, i32 0, i32 0
  %1 = load %struct.PrintData*, %struct.PrintData** %data, align 8
  %operation = getelementptr inbounds %struct.PrintData, %struct.PrintData* %1, i32 0, i32 11
  %2 = load %struct._GtkPrintOperation*, %struct._GtkPrintOperation** %operation, align 8
  %call = call %struct._GtkPageSetup* @gtk_print_operation_get_default_page_setup(%struct._GtkPrintOperation* %2)
  store %struct._GtkPageSetup* %call, %struct._GtkPageSetup** %setup, align 8
  %3 = load %struct.PrintSizeInfo*, %struct.PrintSizeInfo** %info.addr, align 8
  %data1 = getelementptr inbounds %struct.PrintSizeInfo, %struct.PrintSizeInfo* %3, i32 0, i32 0
  %4 = load %struct.PrintData*, %struct.PrintData** %data1, align 8
  %use_full_page = getelementptr inbounds %struct.PrintData, %struct.PrintData* %4, i32 0, i32 9
  %5 = load i32, i32* %use_full_page, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct._GtkPageSetup*, %struct._GtkPageSetup** %setup, align 8
  %7 = load i32, i32* %unit.addr, align 4
  %call2 = call double @gtk_page_setup_get_paper_width(%struct._GtkPageSetup* %6, i32 %7)
  %8 = load double*, double** %page_width.addr, align 8
  store double %call2, double* %8, align 8
  %9 = load %struct._GtkPageSetup*, %struct._GtkPageSetup** %setup, align 8
  %10 = load i32, i32* %unit.addr, align 4
  %call3 = call double @gtk_page_setup_get_paper_height(%struct._GtkPageSetup* %9, i32 %10)
  %11 = load double*, double** %page_height.addr, align 8
  store double %call3, double* %11, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %12 = load %struct._GtkPageSetup*, %struct._GtkPageSetup** %setup, align 8
  %13 = load i32, i32* %unit.addr, align 4
  %call4 = call double @gtk_page_setup_get_page_width(%struct._GtkPageSetup* %12, i32 %13)
  %14 = load double*, double** %page_width.addr, align 8
  store double %call4, double* %14, align 8
  %15 = load %struct._GtkPageSetup*, %struct._GtkPageSetup** %setup, align 8
  %16 = load i32, i32* %unit.addr, align 4
  %call5 = call double @gtk_page_setup_get_page_height(%struct._GtkPageSetup* %15, i32 %16)
  %17 = load double*, double** %page_height.addr, align 8
  store double %call5, double* %17, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare double @gtk_page_setup_get_paper_width(%struct._GtkPageSetup*, i32) #2

declare double @gtk_page_setup_get_paper_height(%struct._GtkPageSetup*, i32) #2

declare double @gtk_page_setup_get_page_width(%struct._GtkPageSetup*, i32) #2

declare double @gtk_page_setup_get_page_height(%struct._GtkPageSetup*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @print_size_info_center_none_block() #0 {
entry:
  %0 = load %struct._GtkObject*, %struct._GtkObject** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 9), align 8
  %1 = bitcast %struct._GtkObject* %0 to i8*
  %call = call i32 @g_signal_handlers_block_matched(i8* %1, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void ()* @print_size_info_center_none to i8*), i8* null)
  %2 = load %struct._GtkObject*, %struct._GtkObject** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 10), align 8
  %3 = bitcast %struct._GtkObject* %2 to i8*
  %call1 = call i32 @g_signal_handlers_block_matched(i8* %3, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void ()* @print_size_info_center_none to i8*), i8* null)
  %4 = load %struct._GtkObject*, %struct._GtkObject** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 11), align 8
  %5 = bitcast %struct._GtkObject* %4 to i8*
  %call2 = call i32 @g_signal_handlers_block_matched(i8* %5, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void ()* @print_size_info_center_none to i8*), i8* null)
  %6 = load %struct._GtkObject*, %struct._GtkObject** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 12), align 8
  %7 = bitcast %struct._GtkObject* %6 to i8*
  %call3 = call i32 @g_signal_handlers_block_matched(i8* %7, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void ()* @print_size_info_center_none to i8*), i8* null)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_size_info_center_none_unblock() #0 {
entry:
  %0 = load %struct._GtkObject*, %struct._GtkObject** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 9), align 8
  %1 = bitcast %struct._GtkObject* %0 to i8*
  %call = call i32 @g_signal_handlers_unblock_matched(i8* %1, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void ()* @print_size_info_center_none to i8*), i8* null)
  %2 = load %struct._GtkObject*, %struct._GtkObject** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 10), align 8
  %3 = bitcast %struct._GtkObject* %2 to i8*
  %call1 = call i32 @g_signal_handlers_unblock_matched(i8* %3, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void ()* @print_size_info_center_none to i8*), i8* null)
  %4 = load %struct._GtkObject*, %struct._GtkObject** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 11), align 8
  %5 = bitcast %struct._GtkObject* %4 to i8*
  %call2 = call i32 @g_signal_handlers_unblock_matched(i8* %5, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void ()* @print_size_info_center_none to i8*), i8* null)
  %6 = load %struct._GtkObject*, %struct._GtkObject** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 12), align 8
  %7 = bitcast %struct._GtkObject* %6 to i8*
  %call3 = call i32 @g_signal_handlers_unblock_matched(i8* %7, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void ()* @print_size_info_center_none to i8*), i8* null)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_size_info_center_none() #0 {
entry:
  %0 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 3), align 8
  %call = call i32 @gimp_size_entry_get_unit(%struct._GimpSizeEntry* %0)
  %1 = load %struct.PrintData*, %struct.PrintData** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 0), align 8
  %unit = getelementptr inbounds %struct.PrintData, %struct.PrintData* %1, i32 0, i32 2
  %2 = load i32, i32* %unit, align 4
  %cmp = icmp ne i32 %call, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.9

if.end:                                           ; preds = %entry
  %3 = load %struct.PrintData*, %struct.PrintData** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 0), align 8
  %center = getelementptr inbounds %struct.PrintData, %struct.PrintData* %3, i32 0, i32 8
  store i32 0, i32* %center, align 4
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 6), align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.then.1, label %if.end.9

if.then.1:                                        ; preds = %if.end
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 6), align 8
  %6 = bitcast %struct._GtkWidget* %5 to i8*
  %call2 = call i32 @g_signal_handlers_block_matched(i8* %6, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*)* @print_size_info_center_changed to i8*), i8* null)
  %7 = load %struct.PrintData*, %struct.PrintData** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 0), align 8
  %center3 = getelementptr inbounds %struct.PrintData, %struct.PrintData* %7, i32 0, i32 8
  store i32 0, i32* %center3, align 4
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 6), align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_int_combo_box_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call4)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpIntComboBox*
  %11 = load %struct.PrintData*, %struct.PrintData** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 0), align 8
  %center6 = getelementptr inbounds %struct.PrintData, %struct.PrintData* %11, i32 0, i32 8
  %12 = load i32, i32* %center6, align 4
  %call7 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %10, i32 %12)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 6), align 8
  %14 = bitcast %struct._GtkWidget* %13 to i8*
  %call8 = call i32 @g_signal_handlers_unblock_matched(i8* %14, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*)* @print_size_info_center_changed to i8*), i8* null)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then, %if.then.1, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_size_info_center_changed(%struct._GtkWidget* %combo) #0 {
entry:
  %combo.addr = alloca %struct._GtkWidget*, align 8
  %value = alloca i32, align 4
  store %struct._GtkWidget* %combo, %struct._GtkWidget** %combo.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %combo.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_int_combo_box_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpIntComboBox*
  %call2 = call i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox* %2, i32* %value)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %value, align 4
  %4 = load %struct.PrintData*, %struct.PrintData** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 0), align 8
  %center = getelementptr inbounds %struct.PrintData, %struct.PrintData* %4, i32 0, i32 8
  store i32 %3, i32* %center, align 4
  call void @print_size_info_update_offsets()
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 8), align 8
  %tobool3 = icmp ne %struct._GtkWidget* %5, null
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 8), align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call5 = call i64 @print_preview_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call5)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._PrintPreview*
  %9 = load %struct.PrintData*, %struct.PrintData** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 0), align 8
  %offset_x = getelementptr inbounds %struct.PrintData, %struct.PrintData* %9, i32 0, i32 6
  %10 = load double, double* %offset_x, align 8
  %11 = load %struct.PrintData*, %struct.PrintData** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 0), align 8
  %offset_y = getelementptr inbounds %struct.PrintData, %struct.PrintData* %11, i32 0, i32 7
  %12 = load double, double* %offset_y, align 8
  call void @print_preview_set_image_offsets(%struct._PrintPreview* %8, double %10, double %12)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  ret void
}

declare i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox*, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_int_combo_box_get_type() #3

declare i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox*, i32*) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #3

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #2

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #2

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #2

declare void @gtk_label_set_mnemonic_widget(%struct._GtkLabel*, %struct._GtkWidget*) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #3

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @print_size_info_offset_max_changed(%struct._GtkAdjustment* %adj, i8* %data) #0 {
entry:
  %adj.addr = alloca %struct._GtkAdjustment*, align 8
  %data.addr = alloca i8*, align 8
  %index = alloca i32, align 4
  store %struct._GtkAdjustment* %adj, %struct._GtkAdjustment** %adj.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = ptrtoint i8* %0 to i64
  %conv = trunc i64 %1 to i32
  store i32 %conv, i32* %index, align 4
  %2 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 3), align 8
  %call = call i32 @gimp_size_entry_get_unit(%struct._GimpSizeEntry* %2)
  %3 = load %struct.PrintData*, %struct.PrintData** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 0), align 8
  %unit = getelementptr inbounds %struct.PrintData, %struct.PrintData* %3, i32 0, i32 2
  %4 = load i32, i32* %unit, align 4
  %cmp = icmp ne i32 %call, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 3), align 8
  %6 = bitcast %struct._GimpSizeEntry* %5 to i8*
  %call2 = call i32 @g_signal_handlers_block_matched(i8* %6, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*)* @print_size_info_size_changed to i8*), i8* null)
  %7 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 3), align 8
  %8 = load i32, i32* %index, align 4
  %9 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj.addr, align 8
  %call3 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %9)
  %10 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj.addr, align 8
  %call4 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %10)
  %sub = fsub double %call3, %call4
  call void @gimp_size_entry_set_value(%struct._GimpSizeEntry* %7, i32 %8, double %sub)
  %11 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** getelementptr inbounds (%struct.PrintSizeInfo, %struct.PrintSizeInfo* @info, i32 0, i32 3), align 8
  %12 = bitcast %struct._GimpSizeEntry* %11 to i8*
  %call5 = call i32 @g_signal_handlers_unblock_matched(i8* %12, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*)* @print_size_info_size_changed to i8*), i8* null)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare %struct._GtkWidget* @gimp_int_combo_box_new(i8*, i32, ...) #2

declare i8* @g_dpgettext(i8*, i8*, i64) #2

declare i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox*, i32, void ()*, i8*) #2

declare double @gtk_adjustment_get_upper(%struct._GtkAdjustment*) #2

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #2

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #2

declare noalias i8* @g_strdup_printf(i8*, ...) #2

declare i32 @gimp_unit_get_digits(i32) #2

declare i8* @gimp_unit_get_plural(i32) #2

declare void @g_free(i8*) #2

declare void @gtk_label_set_text(%struct._GtkLabel*, i8*) #2

declare void @gimp_size_entry_set_value_boundaries(%struct._GimpSizeEntry*, i32, double, double) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
