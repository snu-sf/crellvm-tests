; ModuleID = './plug-ins/maze/maze-dialog.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MazeValues = type { i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct._GtkSizeGroup = type { %struct._GObject, %struct._GSList*, i8, i8, %struct._GtkRequisition }
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
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GimpDialog = type { %struct._GtkDialog }
%struct.EntscaleIntData = type { %struct._GtkAdjustment*, %struct._GtkWidget*, i32, void (i32, i8*)*, i8* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkScale = type { %struct._GtkRange, i32, i8 }
%struct._GtkRange = type { %struct._GtkWidget, %struct._GtkAdjustment*, i32, i8, i32, i32, %struct._GdkRectangle, i32, i32, i32, i8, %struct._GtkRangeLayout*, %struct._GtkRangeStepTimer*, i32, i32, i32, %struct._GdkDrawable* }
%struct._GtkRangeLayout = type opaque
%struct._GtkRangeStepTimer = type opaque

@.str = private unnamed_addr constant [5 x i8] c"maze\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Maze\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"gimp-maze\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"plug-in-maze\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"Maze Size\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Width (pixels):\00", align 1
@mvals = external global %struct.MazeValues, align 4
@sel_w = external global i32, align 4
@buffer = internal global [128 x i8] zeroinitializer, align 16
@.str.8 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Pieces:\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"Height (pixels):\00", align 1
@sel_h = external global i32, align 4
@.str.11 = private unnamed_addr constant [10 x i8] c"Algorithm\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"Seed:\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"Depth first\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"Prim's algorithm\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"Tileable\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@msg_label = internal global %struct._GtkWidget* null, align 8
@.str.17 = private unnamed_addr constant [10 x i8] c"direction\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"friend\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.21 = private unnamed_addr constant [64 x i8] c"Selection size is not even.\0ATileable maze won't work perfectly.\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"userdata\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1

; Function Attrs: nounwind uwtable
define i32 @maze_dialog() #0 {
entry:
  %dialog = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %vbox2 = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %table2 = alloca %struct._GtkWidget*, align 8
  %tilecheck = alloca %struct._GtkWidget*, align 8
  %width_entry = alloca %struct._GtkWidget*, align 8
  %height_entry = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %group = alloca %struct._GtkSizeGroup*, align 8
  %run = alloca i32, align 4
  %trow = alloca i32, align 4
  store i32 0, i32* %trow, align 4
  call void @gimp_ui_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 0)
  %call = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)) #5
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %dialog, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_dialog_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call2)
  %2 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %2, i32 -5, i32 -6, i32 -1)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_window_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call4)
  %5 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %5)
  %call6 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %vbox, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_container_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call7)
  %8 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %8, i32 12)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_dialog_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call9)
  %11 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkDialog*
  %call11 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %11)
  %12 = bitcast %struct._GtkWidget* %call11 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_box_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call12)
  %13 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkBox*
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %13, %struct._GtkWidget* %14, i32 0, i32 0, i32 0)
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0)) #5
  %call15 = call %struct._GtkWidget* @gimp_frame_new(i8* %call14)
  store %struct._GtkWidget* %call15, %struct._GtkWidget** %frame, align 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_box_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call16)
  %17 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkBox*
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %17, %struct._GtkWidget* %18, i32 1, i32 1, i32 0)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %19)
  %call18 = call %struct._GtkWidget* @gtk_table_new(i32 6, i32 3, i32 0)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %table, align 8
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_table_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call19)
  %22 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %22, i32 6)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_table_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call21)
  %25 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %25, i32 6)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_container_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call23)
  %28 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkContainer*
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %28, %struct._GtkWidget* %29)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %30)
  %call25 = call %struct._GtkSizeGroup* @gtk_size_group_new(i32 1)
  store %struct._GtkSizeGroup* %call25, %struct._GtkSizeGroup** %group, align 8
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %32 = load i32, i32* %trow, align 4
  %call26 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0)) #5
  %33 = load i32, i32* @sel_w, align 4
  %div = sdiv i32 %33, 4
  %34 = bitcast %struct._GtkWidget** %width_entry to i8*
  %call27 = call %struct._GtkWidget* @entscale_int_new(%struct._GtkWidget* %31, i32 0, i32 %32, i8* %call26, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 0), i32 1, i32 %div, i32 1, void (i32, i8*)* bitcast (void (i32, %struct._GtkWidget**)* @height_width_callback to void (i32, i8*)*), i8* %34)
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %width_entry, align 8
  %35 = load i32, i32* %trow, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %trow, align 4
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %width_entry, align 8
  %call28 = call %struct._GtkWidget* @divbox_new(i32* @sel_w, %struct._GtkWidget* %36, %struct._GtkWidget** %width_entry)
  store %struct._GtkWidget* %call28, %struct._GtkWidget** %hbox, align 8
  %37 = load i32, i32* @sel_w, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 0), align 4
  %div29 = sdiv i32 %37, %38
  %call30 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @buffer, i32 0, i32 0), i64 128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i32 %div29)
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %width_entry, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_entry_get_type() #6
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call31)
  %41 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkEntry*
  call void @gtk_entry_set_text(%struct._GtkEntry* %41, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @buffer, i32 0, i32 0))
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_table_get_type() #6
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call33)
  %44 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkTable*
  %45 = load i32, i32* %trow, align 4
  %call35 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0)) #5
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %call36 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %44, i32 0, i32 %45, i8* %call35, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %46, i32 1, i32 1)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %48 = bitcast %struct._GtkWidget* %47 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_table_get_type() #6
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call37)
  %49 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkTable*
  %50 = load i32, i32* %trow, align 4
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %49, i32 %50, i32 12)
  %51 = load i32, i32* %trow, align 4
  %inc39 = add nsw i32 %51, 1
  store i32 %inc39, i32* %trow, align 4
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %53 = load i32, i32* %trow, align 4
  %call40 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0)) #5
  %54 = load i32, i32* @sel_h, align 4
  %div41 = sdiv i32 %54, 4
  %55 = bitcast %struct._GtkWidget** %height_entry to i8*
  %call42 = call %struct._GtkWidget* @entscale_int_new(%struct._GtkWidget* %52, i32 0, i32 %53, i8* %call40, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 1), i32 1, i32 %div41, i32 1, void (i32, i8*)* bitcast (void (i32, %struct._GtkWidget**)* @height_width_callback to void (i32, i8*)*), i8* %55)
  store %struct._GtkWidget* %call42, %struct._GtkWidget** %height_entry, align 8
  %56 = load i32, i32* %trow, align 4
  %inc43 = add nsw i32 %56, 1
  store i32 %inc43, i32* %trow, align 4
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %height_entry, align 8
  %call44 = call %struct._GtkWidget* @divbox_new(i32* @sel_h, %struct._GtkWidget* %57, %struct._GtkWidget** %height_entry)
  store %struct._GtkWidget* %call44, %struct._GtkWidget** %hbox, align 8
  %58 = load i32, i32* @sel_h, align 4
  %59 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 1), align 4
  %div45 = sdiv i32 %58, %59
  %call46 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @buffer, i32 0, i32 0), i64 128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i32 %div45)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %height_entry, align 8
  %61 = bitcast %struct._GtkWidget* %60 to %struct._GTypeInstance*
  %call47 = call i64 @gtk_entry_get_type() #6
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call47)
  %62 = bitcast %struct._GTypeInstance* %call48 to %struct._GtkEntry*
  call void @gtk_entry_set_text(%struct._GtkEntry* %62, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @buffer, i32 0, i32 0))
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %64 = bitcast %struct._GtkWidget* %63 to %struct._GTypeInstance*
  %call49 = call i64 @gtk_table_get_type() #6
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call49)
  %65 = bitcast %struct._GTypeInstance* %call50 to %struct._GtkTable*
  %66 = load i32, i32* %trow, align 4
  %call51 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0)) #5
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %call52 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %65, i32 0, i32 %66, i8* %call51, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %67, i32 1, i32 1)
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %69 = bitcast %struct._GtkWidget* %68 to %struct._GTypeInstance*
  %call53 = call i64 @gtk_table_get_type() #6
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call53)
  %70 = bitcast %struct._GTypeInstance* %call54 to %struct._GtkTable*
  %71 = load i32, i32* %trow, align 4
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %70, i32 %71, i32 12)
  %72 = load i32, i32* %trow, align 4
  %inc55 = add nsw i32 %72, 1
  store i32 %inc55, i32* %trow, align 4
  %73 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %74 = bitcast %struct._GtkSizeGroup* %73 to i8*
  call void @g_object_unref(i8* %74)
  %call56 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0)) #5
  %call57 = call %struct._GtkWidget* @gimp_frame_new(i8* %call56)
  store %struct._GtkWidget* %call57, %struct._GtkWidget** %frame, align 8
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %76 = bitcast %struct._GtkWidget* %75 to %struct._GTypeInstance*
  %call58 = call i64 @gtk_box_get_type() #6
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call58)
  %77 = bitcast %struct._GTypeInstance* %call59 to %struct._GtkBox*
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %77, %struct._GtkWidget* %78, i32 1, i32 1, i32 0)
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %79)
  %call60 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call60, %struct._GtkWidget** %vbox2, align 8
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %81 = bitcast %struct._GtkWidget* %80 to %struct._GTypeInstance*
  %call61 = call i64 @gtk_container_get_type() #6
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call61)
  %82 = bitcast %struct._GTypeInstance* %call62 to %struct._GtkContainer*
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  call void @gtk_container_add(%struct._GtkContainer* %82, %struct._GtkWidget* %83)
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %84)
  %call63 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 3, i32 0)
  store %struct._GtkWidget* %call63, %struct._GtkWidget** %table2, align 8
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %table2, align 8
  %86 = bitcast %struct._GtkWidget* %85 to %struct._GTypeInstance*
  %call64 = call i64 @gtk_table_get_type() #6
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %86, i64 %call64)
  %87 = bitcast %struct._GTypeInstance* %call65 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %87, i32 6)
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %table2, align 8
  %89 = bitcast %struct._GtkWidget* %88 to %struct._GTypeInstance*
  %call66 = call i64 @gtk_table_get_type() #6
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %89, i64 %call66)
  %90 = bitcast %struct._GTypeInstance* %call67 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %90, i32 6)
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %92 = bitcast %struct._GtkWidget* %91 to %struct._GTypeInstance*
  %call68 = call i64 @gtk_box_get_type() #6
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %92, i64 %call68)
  %93 = bitcast %struct._GTypeInstance* %call69 to %struct._GtkBox*
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %table2, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %93, %struct._GtkWidget* %94, i32 0, i32 0, i32 0)
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %table2, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %95)
  %call70 = call %struct._GtkWidget* @gimp_random_seed_new(i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 2), i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 7))
  store %struct._GtkWidget* %call70, %struct._GtkWidget** %hbox, align 8
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %table2, align 8
  %97 = bitcast %struct._GtkWidget* %96 to %struct._GTypeInstance*
  %call71 = call i64 @gtk_table_get_type() #6
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %97, i64 %call71)
  %98 = bitcast %struct._GTypeInstance* %call72 to %struct._GtkTable*
  %call73 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0)) #5
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %call74 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %98, i32 0, i32 0, i8* %call73, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %99, i32 1, i32 1)
  %100 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 6), align 4
  %call75 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0)) #5
  %call76 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0)) #5
  %call77 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 0, i8* null, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_radio_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 6) to i8*), i32 %100, i8* %call75, i32 0, i8* null, i8* %call76, i32 1, i8* null, i8* null)
  store %struct._GtkWidget* %call77, %struct._GtkWidget** %frame, align 8
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %102 = bitcast %struct._GtkWidget* %101 to %struct._GTypeInstance*
  %call78 = call i64 @gtk_box_get_type() #6
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %102, i64 %call78)
  %103 = bitcast %struct._GTypeInstance* %call79 to %struct._GtkBox*
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %103, %struct._GtkWidget* %104, i32 0, i32 0, i32 0)
  %call80 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0)) #5
  %call81 = call %struct._GtkWidget* @gtk_check_button_new_with_label(i8* %call80)
  store %struct._GtkWidget* %call81, %struct._GtkWidget** %tilecheck, align 8
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %tilecheck, align 8
  %106 = bitcast %struct._GtkWidget* %105 to %struct._GTypeInstance*
  %call82 = call i64 @gtk_toggle_button_get_type() #6
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %106, i64 %call82)
  %107 = bitcast %struct._GTypeInstance* %call83 to %struct._GtkToggleButton*
  %108 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 3), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %107, i32 %108)
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %tilecheck, align 8
  %110 = bitcast %struct._GtkWidget* %109 to i8*
  %call84 = call i64 @g_signal_connect_data(i8* %110, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 3) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %112 = bitcast %struct._GtkWidget* %111 to %struct._GTypeInstance*
  %call85 = call i64 @gtk_box_get_type() #6
  %call86 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %112, i64 %call85)
  %113 = bitcast %struct._GTypeInstance* %call86 to %struct._GtkBox*
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %tilecheck, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %113, %struct._GtkWidget* %114, i32 0, i32 0, i32 0)
  %call87 = call %struct._GtkWidget* @gtk_label_new(i8* null)
  store %struct._GtkWidget* %call87, %struct._GtkWidget** @msg_label, align 8
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** @msg_label, align 8
  %116 = bitcast %struct._GtkWidget* %115 to %struct._GTypeInstance*
  %call88 = call i64 @gtk_label_get_type() #6
  %call89 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %116, i64 %call88)
  %117 = bitcast %struct._GTypeInstance* %call89 to %struct._GtkLabel*
  call void (%struct._GtkLabel*, ...) @gimp_label_set_attributes(%struct._GtkLabel* %117, i32 3, i32 2, i32 -1)
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %119 = bitcast %struct._GtkWidget* %118 to %struct._GTypeInstance*
  %call90 = call i64 @gtk_box_get_type() #6
  %call91 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %119, i64 %call90)
  %120 = bitcast %struct._GTypeInstance* %call91 to %struct._GtkBox*
  %121 = load %struct._GtkWidget*, %struct._GtkWidget** @msg_label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %120, %struct._GtkWidget* %121, i32 0, i32 0, i32 0)
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show_all(%struct._GtkWidget* %122)
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %124 = bitcast %struct._GtkWidget* %123 to %struct._GTypeInstance*
  %call92 = call i64 @gimp_dialog_get_type() #6
  %call93 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %124, i64 %call92)
  %125 = bitcast %struct._GTypeInstance* %call93 to %struct._GimpDialog*
  %call94 = call i32 @gimp_dialog_run(%struct._GimpDialog* %125)
  %cmp = icmp eq i32 %call94, -5
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %run, align 4
  %126 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %126)
  %127 = load i32, i32* %run, align 4
  ret i32 %127
}

declare void @gimp_ui_init(i8*, i32) #1

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

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare %struct._GtkSizeGroup* @gtk_size_group_new(i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @entscale_int_new(%struct._GtkWidget* %table, i32 %x, i32 %y, i8* %caption, i32* %intvar, i32 %min, i32 %max, i32 %constraint, void (i32, i8*)* %callback, i8* %call_data) #0 {
entry:
  %table.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %caption.addr = alloca i8*, align 8
  %intvar.addr = alloca i32*, align 8
  %min.addr = alloca i32, align 4
  %max.addr = alloca i32, align 4
  %constraint.addr = alloca i32, align 4
  %callback.addr = alloca void (i32, i8*)*, align 8
  %call_data.addr = alloca i8*, align 8
  %userdata = alloca %struct.EntscaleIntData*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %entry1 = alloca %struct._GtkWidget*, align 8
  %scale = alloca %struct._GtkWidget*, align 8
  %adjustment = alloca %struct._GtkAdjustment*, align 8
  %constraint_val = alloca i32, align 4
  store %struct._GtkWidget* %table, %struct._GtkWidget** %table.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i8* %caption, i8** %caption.addr, align 8
  store i32* %intvar, i32** %intvar.addr, align 8
  store i32 %min, i32* %min.addr, align 4
  store i32 %max, i32* %max.addr, align 4
  store i32 %constraint, i32* %constraint.addr, align 4
  store void (i32, i8*)* %callback, void (i32, i8*)** %callback.addr, align 8
  store i8* %call_data, i8** %call_data.addr, align 8
  %call = call noalias i8* @g_malloc_n(i64 1, i64 40)
  %0 = bitcast i8* %call to %struct.EntscaleIntData*
  store %struct.EntscaleIntData* %0, %struct.EntscaleIntData** %userdata, align 8
  %1 = load i8*, i8** %caption.addr, align 8
  %call2 = call %struct._GtkWidget* @gtk_label_new(i8* %1)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %label, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_misc_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %4, float 0.000000e+00, float 5.000000e-01)
  %5 = load i32, i32* %constraint.addr, align 4
  %6 = load %struct.EntscaleIntData*, %struct.EntscaleIntData** %userdata, align 8
  %constraint5 = getelementptr inbounds %struct.EntscaleIntData, %struct.EntscaleIntData* %6, i32 0, i32 2
  store i32 %5, i32* %constraint5, align 4
  %7 = load i32, i32* %constraint.addr, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load i32*, i32** %intvar.addr, align 8
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %constraint_val, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load i32*, i32** %intvar.addr, align 8
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %min.addr, align 4
  %cmp = icmp slt i32 %11, %12
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %13 = load i32, i32* %min.addr, align 4
  br label %cond.end.9

cond.false:                                       ; preds = %if.else
  %14 = load i32*, i32** %intvar.addr, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %max.addr, align 4
  %cmp6 = icmp sgt i32 %15, %16
  br i1 %cmp6, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %cond.false
  %17 = load i32, i32* %max.addr, align 4
  br label %cond.end

cond.false.8:                                     ; preds = %cond.false
  %18 = load i32*, i32** %intvar.addr, align 8
  %19 = load i32, i32* %18, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.8, %cond.true.7
  %cond = phi i32 [ %17, %cond.true.7 ], [ %19, %cond.false.8 ]
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.end, %cond.true
  %cond10 = phi i32 [ %13, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond10, i32* %constraint_val, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.9, %if.then
  %20 = load i32, i32* %constraint_val, align 4
  %conv = sitofp i32 %20 to double
  %21 = load i32, i32* %min.addr, align 4
  %conv11 = sitofp i32 %21 to double
  %22 = load i32, i32* %max.addr, align 4
  %conv12 = sitofp i32 %22 to double
  %call13 = call %struct._GtkObject* @gtk_adjustment_new(double %conv, double %conv11, double %conv12, double 1.000000e+00, double 1.000000e+00, double 0.000000e+00)
  %23 = bitcast %struct._GtkObject* %call13 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_adjustment_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call14)
  %24 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkAdjustment*
  store %struct._GtkAdjustment* %24, %struct._GtkAdjustment** %adjustment, align 8
  %25 = load %struct.EntscaleIntData*, %struct.EntscaleIntData** %userdata, align 8
  %adjustment16 = getelementptr inbounds %struct.EntscaleIntData, %struct.EntscaleIntData* %25, i32 0, i32 0
  store %struct._GtkAdjustment* %24, %struct._GtkAdjustment** %adjustment16, align 8
  %26 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment, align 8
  %call17 = call %struct._GtkWidget* @gtk_scale_new(i32 0, %struct._GtkAdjustment* %26)
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %scale, align 8
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %27, i32 125, i32 -1)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_scale_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call18)
  %30 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkScale*
  call void @gtk_scale_set_draw_value(%struct._GtkScale* %30, i32 0)
  %call20 = call %struct._GtkWidget* @gtk_entry_new()
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %entry1, align 8
  %31 = load %struct.EntscaleIntData*, %struct.EntscaleIntData** %userdata, align 8
  %entry21 = getelementptr inbounds %struct.EntscaleIntData, %struct.EntscaleIntData* %31, i32 0, i32 1
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %entry21, align 8
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %32, i32 40, i32 -1)
  %33 = load i32*, i32** %intvar.addr, align 8
  %34 = load i32, i32* %33, align 4
  %call22 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @buffer, i32 0, i32 0), i64 128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i32 %34)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_entry_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call23)
  %37 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkEntry*
  call void @gtk_entry_set_text(%struct._GtkEntry* %37, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @buffer, i32 0, i32 0))
  %38 = load void (i32, i8*)*, void (i32, i8*)** %callback.addr, align 8
  %39 = load %struct.EntscaleIntData*, %struct.EntscaleIntData** %userdata, align 8
  %callback25 = getelementptr inbounds %struct.EntscaleIntData, %struct.EntscaleIntData* %39, i32 0, i32 3
  store void (i32, i8*)* %38, void (i32, i8*)** %callback25, align 8
  %40 = load i8*, i8** %call_data.addr, align 8
  %41 = load %struct.EntscaleIntData*, %struct.EntscaleIntData** %userdata, align 8
  %call_data26 = getelementptr inbounds %struct.EntscaleIntData, %struct.EntscaleIntData* %41, i32 0, i32 4
  store i8* %40, i8** %call_data26, align 8
  %42 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment, align 8
  %43 = bitcast %struct._GtkAdjustment* %42 to %struct._GTypeInstance*
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 80)
  %44 = bitcast %struct._GTypeInstance* %call27 to %struct._GObject*
  %45 = load %struct.EntscaleIntData*, %struct.EntscaleIntData** %userdata, align 8
  %46 = bitcast %struct.EntscaleIntData* %45 to i8*
  call void @g_object_set_data(%struct._GObject* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i8* %46)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %48 = bitcast %struct._GtkWidget* %47 to %struct._GTypeInstance*
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 80)
  %49 = bitcast %struct._GTypeInstance* %call28 to %struct._GObject*
  %50 = load %struct.EntscaleIntData*, %struct.EntscaleIntData** %userdata, align 8
  %51 = bitcast %struct.EntscaleIntData* %50 to i8*
  call void @g_object_set_data(%struct._GObject* %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i8* %51)
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %53 = bitcast %struct._GtkWidget* %52 to i8*
  %54 = load i32*, i32** %intvar.addr, align 8
  %55 = bitcast i32* %54 to i8*
  %call29 = call i64 @g_signal_connect_data(i8* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @entscale_int_entry_update to void ()*), i8* %55, void (i8*, %struct._GClosure*)* null, i32 0)
  %56 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment, align 8
  %57 = bitcast %struct._GtkAdjustment* %56 to i8*
  %58 = load i32*, i32** %intvar.addr, align 8
  %59 = bitcast i32* %58 to i8*
  %call30 = call i64 @g_signal_connect_data(i8* %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @entscale_int_scale_update to void ()*), i8* %59, void (i8*, %struct._GClosure*)* null, i32 0)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %61 = bitcast %struct._GtkWidget* %60 to i8*
  %62 = load %struct.EntscaleIntData*, %struct.EntscaleIntData** %userdata, align 8
  %63 = bitcast %struct.EntscaleIntData* %62 to i8*
  %call31 = call i64 @g_signal_connect_data(i8* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), void ()* bitcast (void (i8*)* @g_free to void ()*), i8* %63, void (i8*, %struct._GClosure*)* null, i32 2)
  %call32 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 5)
  store %struct._GtkWidget* %call32, %struct._GtkWidget** %hbox, align 8
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %65 = bitcast %struct._GtkWidget* %64 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_box_get_type() #6
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call33)
  %66 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkBox*
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %66, %struct._GtkWidget* %67, i32 1, i32 1, i32 0)
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %69 = bitcast %struct._GtkWidget* %68 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_box_get_type() #6
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call35)
  %70 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkBox*
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %70, %struct._GtkWidget* %71, i32 0, i32 1, i32 0)
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %table.addr, align 8
  %73 = bitcast %struct._GtkWidget* %72 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_table_get_type() #6
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call37)
  %74 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkTable*
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %76 = load i32, i32* %x.addr, align 4
  %77 = load i32, i32* %x.addr, align 4
  %add = add nsw i32 %77, 1
  %78 = load i32, i32* %y.addr, align 4
  %79 = load i32, i32* %y.addr, align 4
  %add39 = add nsw i32 %79, 1
  call void @gtk_table_attach(%struct._GtkTable* %74, %struct._GtkWidget* %75, i32 %76, i32 %add, i32 %78, i32 %add39, i32 4, i32 4, i32 0, i32 0)
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %table.addr, align 8
  %81 = bitcast %struct._GtkWidget* %80 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_table_get_type() #6
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call40)
  %82 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkTable*
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %84 = load i32, i32* %x.addr, align 4
  %add42 = add nsw i32 %84, 1
  %85 = load i32, i32* %x.addr, align 4
  %add43 = add nsw i32 %85, 2
  %86 = load i32, i32* %y.addr, align 4
  %87 = load i32, i32* %y.addr, align 4
  %add44 = add nsw i32 %87, 1
  call void @gtk_table_attach(%struct._GtkTable* %82, %struct._GtkWidget* %83, i32 %add42, i32 %add43, i32 %86, i32 %add44, i32 5, i32 4, i32 0, i32 0)
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %88)
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %89)
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %90)
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %91)
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  ret %struct._GtkWidget* %92
}

; Function Attrs: nounwind uwtable
define internal void @height_width_callback(i32 %width, %struct._GtkWidget** %div_entry) #0 {
entry:
  %width.addr = alloca i32, align 4
  %div_entry.addr = alloca %struct._GtkWidget**, align 8
  %divs = alloca i32, align 4
  %max = alloca i32, align 4
  %data = alloca i8*, align 8
  store i32 %width, i32* %width.addr, align 4
  store %struct._GtkWidget** %div_entry, %struct._GtkWidget*** %div_entry.addr, align 8
  %0 = load %struct._GtkWidget**, %struct._GtkWidget*** %div_entry.addr, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %0, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 80)
  %3 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0))
  %4 = bitcast i8* %call1 to i32*
  %5 = load i32, i32* %4, align 4
  store i32 %5, i32* %max, align 4
  %6 = load i32, i32* %max, align 4
  %7 = load i32, i32* %width.addr, align 4
  %div = sdiv i32 %6, %7
  store i32 %div, i32* %divs, align 4
  %8 = load i32, i32* %divs, align 4
  %call2 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @buffer, i32 0, i32 0), i64 128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i32 %8)
  %9 = load %struct._GtkWidget**, %struct._GtkWidget*** %div_entry.addr, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %9, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 80)
  %12 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  %call4 = call i8* @g_object_get_data(%struct._GObject* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0))
  store i8* %call4, i8** %data, align 8
  %13 = load %struct._GtkWidget**, %struct._GtkWidget*** %div_entry.addr, align 8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %13, align 8
  %15 = bitcast %struct._GtkWidget* %14 to i8*
  %16 = load i8*, i8** %data, align 8
  %call5 = call i32 @g_signal_handlers_block_matched(i8* %15, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, i8*)* @entscale_int_entry_update to i8*), i8* %16)
  %17 = load %struct._GtkWidget**, %struct._GtkWidget*** %div_entry.addr, align 8
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %17, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_entry_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call6)
  %20 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkEntry*
  call void @gtk_entry_set_text(%struct._GtkEntry* %20, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @buffer, i32 0, i32 0))
  %21 = load %struct._GtkWidget**, %struct._GtkWidget*** %div_entry.addr, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %21, align 8
  %23 = bitcast %struct._GtkWidget* %22 to i8*
  %24 = load i8*, i8** %data, align 8
  %call8 = call i32 @g_signal_handlers_unblock_matched(i8* %23, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, i8*)* @entscale_int_entry_update to i8*), i8* %24)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @divbox_new(i32* %max, %struct._GtkWidget* %friend, %struct._GtkWidget** %div_entry) #0 {
entry:
  %max.addr = alloca i32*, align 8
  %friend.addr = alloca %struct._GtkWidget*, align 8
  %div_entry.addr = alloca %struct._GtkWidget**, align 8
  %align = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %arrowl = alloca %struct._GtkWidget*, align 8
  %arrowr = alloca %struct._GtkWidget*, align 8
  %buttonl = alloca %struct._GtkWidget*, align 8
  %buttonr = alloca %struct._GtkWidget*, align 8
  store i32* %max, i32** %max.addr, align 8
  store %struct._GtkWidget* %friend, %struct._GtkWidget** %friend.addr, align 8
  store %struct._GtkWidget** %div_entry, %struct._GtkWidget*** %div_entry.addr, align 8
  %call = call %struct._GtkWidget* @gtk_alignment_new(float 5.000000e-01, float 5.000000e-01, float 0.000000e+00, float 0.000000e+00)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %align, align 8
  %call1 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 0)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %hbox, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %align, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_container_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call2)
  %2 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkContainer*
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %2, %struct._GtkWidget* %3)
  %call4 = call %struct._GtkWidget* @gtk_arrow_new(i32 2, i32 1)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %arrowl, align 8
  %call5 = call %struct._GtkWidget* @gtk_arrow_new(i32 3, i32 1)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %arrowr, align 8
  %call6 = call %struct._GtkWidget* @gtk_button_new()
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %buttonl, align 8
  %call7 = call %struct._GtkWidget* @gtk_button_new()
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %buttonr, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %buttonl, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 80)
  %6 = bitcast %struct._GTypeInstance* %call8 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* inttoptr (i64 -1 to i8*))
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %buttonr, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 80)
  %9 = bitcast %struct._GTypeInstance* %call9 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* inttoptr (i64 1 to i8*))
  %call10 = call %struct._GtkWidget* @gtk_entry_new()
  %10 = load %struct._GtkWidget**, %struct._GtkWidget*** %div_entry.addr, align 8
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %10, align 8
  %11 = load %struct._GtkWidget**, %struct._GtkWidget*** %div_entry.addr, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %11, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 80)
  %14 = bitcast %struct._GTypeInstance* %call11 to %struct._GObject*
  %15 = load i32*, i32** %max.addr, align 8
  %16 = bitcast i32* %15 to i8*
  call void @g_object_set_data(%struct._GObject* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* %16)
  %17 = load %struct._GtkWidget**, %struct._GtkWidget*** %div_entry.addr, align 8
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %17, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 80)
  %20 = bitcast %struct._GTypeInstance* %call12 to %struct._GObject*
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %friend.addr, align 8
  %22 = bitcast %struct._GtkWidget* %21 to i8*
  call void @g_object_set_data(%struct._GObject* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i8* %22)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %buttonl, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_container_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call13)
  %25 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkContainer*
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %arrowl, align 8
  call void @gtk_container_add(%struct._GtkContainer* %25, %struct._GtkWidget* %26)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %buttonr, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_container_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call15)
  %29 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkContainer*
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %arrowr, align 8
  call void @gtk_container_add(%struct._GtkContainer* %29, %struct._GtkWidget* %30)
  %31 = load %struct._GtkWidget**, %struct._GtkWidget*** %div_entry.addr, align 8
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %31, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %32, i32 75, i32 -1)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_box_get_type() #6
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call17)
  %35 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkBox*
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %buttonl, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %35, %struct._GtkWidget* %36, i32 0, i32 0, i32 0)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_box_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call19)
  %39 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkBox*
  %40 = load %struct._GtkWidget**, %struct._GtkWidget*** %div_entry.addr, align 8
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %40, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %39, %struct._GtkWidget* %41, i32 0, i32 0, i32 2)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_box_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call21)
  %44 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkBox*
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %buttonr, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %44, %struct._GtkWidget* %45, i32 0, i32 0, i32 0)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show_all(%struct._GtkWidget* %46)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %buttonl, align 8
  %48 = bitcast %struct._GtkWidget* %47 to i8*
  %49 = load %struct._GtkWidget**, %struct._GtkWidget*** %div_entry.addr, align 8
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %49, align 8
  %51 = bitcast %struct._GtkWidget* %50 to i8*
  %call23 = call i64 @g_signal_connect_data(i8* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget*)* @div_button_callback to void ()*), i8* %51, void (i8*, %struct._GClosure*)* null, i32 0)
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %buttonr, align 8
  %53 = bitcast %struct._GtkWidget* %52 to i8*
  %54 = load %struct._GtkWidget**, %struct._GtkWidget*** %div_entry.addr, align 8
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %54, align 8
  %56 = bitcast %struct._GtkWidget* %55 to i8*
  %call24 = call i64 @g_signal_connect_data(i8* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget*)* @div_button_callback to void ()*), i8* %56, void (i8*, %struct._GClosure*)* null, i32 0)
  %57 = load %struct._GtkWidget**, %struct._GtkWidget*** %div_entry.addr, align 8
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %57, align 8
  %59 = bitcast %struct._GtkWidget* %58 to i8*
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %friend.addr, align 8
  %61 = bitcast %struct._GtkWidget* %60 to i8*
  %call25 = call i64 @g_signal_connect_data(i8* %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget*)* @div_entry_callback to void ()*), i8* %61, void (i8*, %struct._GClosure*)* null, i32 0)
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %align, align 8
  ret %struct._GtkWidget* %62
}

declare i32 @g_snprintf(i8*, i64, i8*, ...) #1

declare void @gtk_entry_set_text(%struct._GtkEntry*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #3

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #1

declare void @gtk_table_set_row_spacing(%struct._GtkTable*, i32, i32) #1

declare void @g_object_unref(i8*) #1

declare %struct._GtkWidget* @gimp_random_seed_new(i32*, i32*) #1

declare %struct._GtkWidget* @gimp_int_radio_group_new(i32, i8*, void ()*, i8*, i32, ...) #1

declare void @gimp_radio_button_update(%struct._GtkWidget*, i8*) #1

declare %struct._GtkWidget* @gtk_check_button_new_with_label(i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare void @gimp_label_set_attributes(%struct._GtkLabel*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #3

declare void @gtk_widget_show_all(%struct._GtkWidget*) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_alignment_new(float, float, float, float) #1

declare %struct._GtkWidget* @gtk_arrow_new(i32, i32) #1

declare %struct._GtkWidget* @gtk_button_new() #1

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

declare %struct._GtkWidget* @gtk_entry_new() #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @div_button_callback(%struct._GtkWidget* %button, %struct._GtkWidget* %entry1) #0 {
entry:
  %button.addr = alloca %struct._GtkWidget*, align 8
  %entry.addr = alloca %struct._GtkWidget*, align 8
  %text = alloca i8*, align 8
  %max = alloca i32, align 4
  %divs = alloca i32, align 4
  %direction = alloca i32, align 4
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  store %struct._GtkWidget* %entry1, %struct._GtkWidget** %entry.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call2 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0))
  %3 = ptrtoint i8* %call2 to i64
  %conv = trunc i64 %3 to i32
  store i32 %conv, i32* %direction, align 4
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 80)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  %call4 = call i8* @g_object_get_data(%struct._GObject* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0))
  %7 = bitcast i8* %call4 to i32*
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %max, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 3), align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %10 = load i32, i32* %max, align 4
  %and = and i32 %10, 1
  %tobool5 = icmp ne i32 %and, 0
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.21, i32 0, i32 0)) #5
  call void @maze_message(i8* %call6)
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_entry_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call7)
  %13 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkEntry*
  %call9 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %13)
  store i8* %call9, i8** %text, align 8
  %14 = load i8*, i8** %text, align 8
  %call10 = call i32 @atoi(i8* %14) #7
  store i32 %call10, i32* %divs, align 4
  %15 = load i32, i32* %divs, align 4
  %cmp = icmp sle i32 %15, 3
  br i1 %cmp, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end
  %16 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 3), align 4
  %tobool13 = icmp ne i32 %16, 0
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.12
  %17 = load i32, i32* %max, align 4
  %18 = load i32, i32* %max, align 4
  %and14 = and i32 %18, 1
  %tobool15 = icmp ne i32 %and14, 0
  %cond = select i1 %tobool15, i32 1, i32 0
  %sub = sub nsw i32 %17, %cond
  br label %cond.end

cond.false:                                       ; preds = %if.then.12
  %19 = load i32, i32* %max, align 4
  %20 = load i32, i32* %max, align 4
  %and16 = and i32 %20, 1
  %tobool17 = icmp ne i32 %and16, 0
  %cond18 = select i1 %tobool17, i32 0, i32 1
  %sub19 = sub nsw i32 %19, %cond18
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond20 = phi i32 [ %sub, %cond.true ], [ %sub19, %cond.false ]
  store i32 %cond20, i32* %divs, align 4
  br label %if.end.27

if.else:                                          ; preds = %if.end
  %21 = load i32, i32* %divs, align 4
  %22 = load i32, i32* %max, align 4
  %cmp21 = icmp sgt i32 %21, %22
  br i1 %cmp21, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %if.else
  %23 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 3), align 4
  %tobool24 = icmp ne i32 %23, 0
  %cond25 = select i1 %tobool24, i32 6, i32 5
  store i32 %cond25, i32* %divs, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %if.else
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %cond.end
  %24 = load i32, i32* %direction, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 3), align 4
  %tobool28 = icmp ne i32 %25, 0
  br i1 %tobool28, label %cond.true.29, label %cond.false.33

cond.true.29:                                     ; preds = %if.end.27
  %26 = load i32, i32* %divs, align 4
  %and30 = and i32 %26, 1
  %tobool31 = icmp ne i32 %and30, 0
  %cond32 = select i1 %tobool31, i32 1, i32 0
  br label %cond.end.37

cond.false.33:                                    ; preds = %if.end.27
  %27 = load i32, i32* %divs, align 4
  %and34 = and i32 %27, 1
  %tobool35 = icmp ne i32 %and34, 0
  %cond36 = select i1 %tobool35, i32 0, i32 1
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.33, %cond.true.29
  %cond38 = phi i32 [ %cond32, %cond.true.29 ], [ %cond36, %cond.false.33 ]
  %mul = mul nsw i32 %24, %cond38
  %28 = load i32, i32* %divs, align 4
  %add = add nsw i32 %28, %mul
  store i32 %add, i32* %divs, align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 3), align 4
  %tobool39 = icmp ne i32 %29, 0
  br i1 %tobool39, label %if.then.40, label %if.else.64

if.then.40:                                       ; preds = %cond.end.37
  %30 = load i32, i32* %direction, align 4
  %cmp41 = icmp sgt i32 %30, 0
  br i1 %cmp41, label %if.then.43, label %if.else.50

if.then.43:                                       ; preds = %if.then.40
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.43
  %31 = load i32, i32* %divs, align 4
  %add44 = add nsw i32 %31, 2
  store i32 %add44, i32* %divs, align 4
  %32 = load i32, i32* %divs, align 4
  %33 = load i32, i32* %max, align 4
  %cmp45 = icmp sgt i32 %32, %33
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %do.body
  store i32 4, i32* %divs, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.48
  %34 = load i32, i32* %max, align 4
  %35 = load i32, i32* %divs, align 4
  %rem = srem i32 %34, %35
  %tobool49 = icmp ne i32 %rem, 0
  br i1 %tobool49, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.63

if.else.50:                                       ; preds = %if.then.40
  br label %do.body.51

do.body.51:                                       ; preds = %do.cond.59, %if.else.50
  %36 = load i32, i32* %divs, align 4
  %sub52 = sub nsw i32 %36, 2
  store i32 %sub52, i32* %divs, align 4
  %37 = load i32, i32* %divs, align 4
  %cmp53 = icmp slt i32 %37, 4
  br i1 %cmp53, label %if.then.55, label %if.end.58

if.then.55:                                       ; preds = %do.body.51
  %38 = load i32, i32* %max, align 4
  %39 = load i32, i32* %max, align 4
  %and56 = and i32 %39, 1
  %sub57 = sub nsw i32 %38, %and56
  store i32 %sub57, i32* %divs, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.55, %do.body.51
  br label %do.cond.59

do.cond.59:                                       ; preds = %if.end.58
  %40 = load i32, i32* %max, align 4
  %41 = load i32, i32* %divs, align 4
  %rem60 = srem i32 %40, %41
  %tobool61 = icmp ne i32 %rem60, 0
  br i1 %tobool61, label %do.body.51, label %do.end.62

do.end.62:                                        ; preds = %do.cond.59
  br label %if.end.63

if.end.63:                                        ; preds = %do.end.62, %do.end
  br label %if.end.97

if.else.64:                                       ; preds = %cond.end.37
  %42 = load i32, i32* %direction, align 4
  %cmp65 = icmp sgt i32 %42, 0
  br i1 %cmp65, label %if.then.67, label %if.else.80

if.then.67:                                       ; preds = %if.else.64
  br label %do.body.68

do.body.68:                                       ; preds = %land.end, %if.then.67
  %43 = load i32, i32* %divs, align 4
  %add69 = add nsw i32 %43, 2
  store i32 %add69, i32* %divs, align 4
  br label %do.cond.70

do.cond.70:                                       ; preds = %do.body.68
  %44 = load i32, i32* %max, align 4
  %45 = load i32, i32* %divs, align 4
  %rem71 = srem i32 %44, %45
  %conv72 = sitofp i32 %rem71 to double
  %46 = load i32, i32* %max, align 4
  %47 = load i32, i32* %divs, align 4
  %div = sdiv i32 %46, %47
  %conv73 = sitofp i32 %div to double
  %mul74 = fmul double %conv73, 1.000000e+00
  %cmp75 = fcmp ogt double %conv72, %mul74
  br i1 %cmp75, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond.70
  %48 = load i32, i32* %divs, align 4
  %49 = load i32, i32* %max, align 4
  %cmp77 = icmp slt i32 %48, %49
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond.70
  %50 = phi i1 [ false, %do.cond.70 ], [ %cmp77, %land.rhs ]
  br i1 %50, label %do.body.68, label %do.end.79

do.end.79:                                        ; preds = %land.end
  br label %if.end.96

if.else.80:                                       ; preds = %if.else.64
  br label %do.body.81

do.body.81:                                       ; preds = %land.end.94, %if.else.80
  %51 = load i32, i32* %divs, align 4
  %sub82 = sub nsw i32 %51, 2
  store i32 %sub82, i32* %divs, align 4
  br label %do.cond.83

do.cond.83:                                       ; preds = %do.body.81
  %52 = load i32, i32* %max, align 4
  %53 = load i32, i32* %divs, align 4
  %rem84 = srem i32 %52, %53
  %conv85 = sitofp i32 %rem84 to double
  %54 = load i32, i32* %max, align 4
  %55 = load i32, i32* %divs, align 4
  %div86 = sdiv i32 %54, %55
  %conv87 = sitofp i32 %div86 to double
  %mul88 = fmul double %conv87, 1.000000e+00
  %cmp89 = fcmp ogt double %conv85, %mul88
  br i1 %cmp89, label %land.rhs.91, label %land.end.94

land.rhs.91:                                      ; preds = %do.cond.83
  %56 = load i32, i32* %divs, align 4
  %cmp92 = icmp sgt i32 %56, 5
  br label %land.end.94

land.end.94:                                      ; preds = %land.rhs.91, %do.cond.83
  %57 = phi i1 [ false, %do.cond.83 ], [ %cmp92, %land.rhs.91 ]
  br i1 %57, label %do.body.81, label %do.end.95

do.end.95:                                        ; preds = %land.end.94
  br label %if.end.96

if.end.96:                                        ; preds = %do.end.95, %do.end.79
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.end.63
  %58 = load i32, i32* %divs, align 4
  %cmp98 = icmp sle i32 %58, 3
  br i1 %cmp98, label %if.then.100, label %if.else.114

if.then.100:                                      ; preds = %if.end.97
  %59 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 3), align 4
  %tobool101 = icmp ne i32 %59, 0
  br i1 %tobool101, label %cond.true.102, label %cond.false.107

cond.true.102:                                    ; preds = %if.then.100
  %60 = load i32, i32* %max, align 4
  %61 = load i32, i32* %max, align 4
  %and103 = and i32 %61, 1
  %tobool104 = icmp ne i32 %and103, 0
  %cond105 = select i1 %tobool104, i32 1, i32 0
  %sub106 = sub nsw i32 %60, %cond105
  br label %cond.end.112

cond.false.107:                                   ; preds = %if.then.100
  %62 = load i32, i32* %max, align 4
  %63 = load i32, i32* %max, align 4
  %and108 = and i32 %63, 1
  %tobool109 = icmp ne i32 %and108, 0
  %cond110 = select i1 %tobool109, i32 0, i32 1
  %sub111 = sub nsw i32 %62, %cond110
  br label %cond.end.112

cond.end.112:                                     ; preds = %cond.false.107, %cond.true.102
  %cond113 = phi i32 [ %sub106, %cond.true.102 ], [ %sub111, %cond.false.107 ]
  store i32 %cond113, i32* %divs, align 4
  br label %if.end.121

if.else.114:                                      ; preds = %if.end.97
  %64 = load i32, i32* %divs, align 4
  %65 = load i32, i32* %max, align 4
  %cmp115 = icmp sgt i32 %64, %65
  br i1 %cmp115, label %if.then.117, label %if.end.120

if.then.117:                                      ; preds = %if.else.114
  %66 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 3), align 4
  %tobool118 = icmp ne i32 %66, 0
  %cond119 = select i1 %tobool118, i32 4, i32 5
  store i32 %cond119, i32* %divs, align 4
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.117, %if.else.114
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %cond.end.112
  %67 = load i32, i32* %divs, align 4
  %call122 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @buffer, i32 0, i32 0), i64 128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i32 %67)
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %69 = bitcast %struct._GtkWidget* %68 to %struct._GTypeInstance*
  %call123 = call i64 @gtk_entry_get_type() #6
  %call124 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call123)
  %70 = bitcast %struct._GTypeInstance* %call124 to %struct._GtkEntry*
  call void @gtk_entry_set_text(%struct._GtkEntry* %70, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @buffer, i32 0, i32 0))
  br label %return

return:                                           ; preds = %if.end.121, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @div_entry_callback(%struct._GtkWidget* %entry1, %struct._GtkWidget* %friend) #0 {
entry:
  %entry.addr = alloca %struct._GtkWidget*, align 8
  %friend.addr = alloca %struct._GtkWidget*, align 8
  %divs = alloca i32, align 4
  %width = alloca i32, align 4
  %max = alloca i32, align 4
  %userdata = alloca %struct.EntscaleIntData*, align 8
  %friend_callback = alloca void (i32, i8*)*, align 8
  store %struct._GtkWidget* %entry1, %struct._GtkWidget** %entry.addr, align 8
  store %struct._GtkWidget* %friend, %struct._GtkWidget** %friend.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_entry_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkEntry*
  %call3 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %2)
  %call4 = call i32 @atoi(i8* %call3) #7
  store i32 %call4, i32* %divs, align 4
  %3 = load i32, i32* %divs, align 4
  %cmp = icmp slt i32 %3, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 80)
  %6 = bitcast %struct._GTypeInstance* %call5 to %struct._GObject*
  %call6 = call i8* @g_object_get_data(%struct._GObject* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0))
  %7 = bitcast i8* %call6 to i32*
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %max, align 4
  %9 = load i32, i32* %max, align 4
  %10 = load i32, i32* %divs, align 4
  %div = sdiv i32 %9, %10
  store i32 %div, i32* %width, align 4
  %11 = load i32, i32* %width, align 4
  %call7 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @buffer, i32 0, i32 0), i64 128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i32 %11)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %friend.addr, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 80)
  %14 = bitcast %struct._GTypeInstance* %call8 to %struct._GObject*
  %call9 = call i8* @g_object_get_data(%struct._GObject* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0))
  %15 = bitcast i8* %call9 to %struct.EntscaleIntData*
  store %struct.EntscaleIntData* %15, %struct.EntscaleIntData** %userdata, align 8
  %16 = load %struct.EntscaleIntData*, %struct.EntscaleIntData** %userdata, align 8
  %callback = getelementptr inbounds %struct.EntscaleIntData, %struct.EntscaleIntData* %16, i32 0, i32 3
  %17 = load void (i32, i8*)*, void (i32, i8*)** %callback, align 8
  store void (i32, i8*)* %17, void (i32, i8*)** %friend_callback, align 8
  %18 = load %struct.EntscaleIntData*, %struct.EntscaleIntData** %userdata, align 8
  %callback10 = getelementptr inbounds %struct.EntscaleIntData, %struct.EntscaleIntData* %18, i32 0, i32 3
  store void (i32, i8*)* null, void (i32, i8*)** %callback10, align 8
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %friend.addr, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_entry_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call11)
  %21 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkEntry*
  call void @gtk_entry_set_text(%struct._GtkEntry* %21, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @buffer, i32 0, i32 0))
  %22 = load void (i32, i8*)*, void (i32, i8*)** %friend_callback, align 8
  %23 = load %struct.EntscaleIntData*, %struct.EntscaleIntData** %userdata, align 8
  %callback13 = getelementptr inbounds %struct.EntscaleIntData, %struct.EntscaleIntData* %23, i32 0, i32 3
  store void (i32, i8*)* %22, void (i32, i8*)** %callback13, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @maze_message(i8* %message) #0 {
entry:
  %message.addr = alloca i8*, align 8
  store i8* %message, i8** %message.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @msg_label, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_label_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkLabel*
  %3 = load i8*, i8** %message.addr, align 8
  call void @gtk_label_set_text(%struct._GtkLabel* %2, i8* %3)
  ret void
}

declare i8* @gtk_entry_get_text(%struct._GtkEntry*) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #4

declare void @gtk_label_set_text(%struct._GtkLabel*, i8*) #1

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @entscale_int_entry_update(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %userdata = alloca %struct.EntscaleIntData*, align 8
  %adjustment = alloca %struct._GtkAdjustment*, align 8
  %new_val = alloca i32, align 4
  %constraint_val = alloca i32, align 4
  %intvar = alloca i32*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to i32*
  store i32* %1, i32** %intvar, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 80)
  %4 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0))
  %5 = bitcast i8* %call1 to %struct.EntscaleIntData*
  store %struct.EntscaleIntData* %5, %struct.EntscaleIntData** %userdata, align 8
  %6 = load %struct.EntscaleIntData*, %struct.EntscaleIntData** %userdata, align 8
  %adjustment2 = getelementptr inbounds %struct.EntscaleIntData, %struct.EntscaleIntData* %6, i32 0, i32 0
  %7 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment2, align 8
  store %struct._GtkAdjustment* %7, %struct._GtkAdjustment** %adjustment, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_entry_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call3)
  %10 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkEntry*
  %call5 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %10)
  %call6 = call i32 @atoi(i8* %call5) #7
  store i32 %call6, i32* %new_val, align 4
  %11 = load i32, i32* %new_val, align 4
  store i32 %11, i32* %constraint_val, align 4
  %12 = load i32, i32* %constraint_val, align 4
  %conv = sitofp i32 %12 to double
  %13 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment, align 8
  %call7 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %13)
  %cmp = fcmp olt double %conv, %call7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment, align 8
  %call9 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %14)
  %conv10 = fptosi double %call9 to i32
  store i32 %conv10, i32* %constraint_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load i32, i32* %constraint_val, align 4
  %conv11 = sitofp i32 %15 to double
  %16 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment, align 8
  %call12 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %16)
  %cmp13 = fcmp ogt double %conv11, %call12
  br i1 %cmp13, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end
  %17 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment, align 8
  %call16 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %17)
  %conv17 = fptosi double %call16 to i32
  store i32 %conv17, i32* %constraint_val, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.end
  %18 = load %struct.EntscaleIntData*, %struct.EntscaleIntData** %userdata, align 8
  %constraint = getelementptr inbounds %struct.EntscaleIntData, %struct.EntscaleIntData* %18, i32 0, i32 2
  %19 = load i32, i32* %constraint, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.end.18
  %20 = load i32, i32* %constraint_val, align 4
  %21 = load i32*, i32** %intvar, align 8
  store i32 %20, i32* %21, align 4
  br label %if.end.20

if.else:                                          ; preds = %if.end.18
  %22 = load i32, i32* %new_val, align 4
  %23 = load i32*, i32** %intvar, align 8
  store i32 %22, i32* %23, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.19
  %24 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment, align 8
  %25 = bitcast %struct._GtkAdjustment* %24 to i8*
  %26 = load i8*, i8** %data.addr, align 8
  %call21 = call i32 @g_signal_handlers_block_matched(i8* %25, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, i8*)* @entscale_int_scale_update to i8*), i8* %26)
  %27 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment, align 8
  %28 = load i32, i32* %constraint_val, align 4
  %conv22 = sitofp i32 %28 to double
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %27, double %conv22)
  %29 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment, align 8
  %30 = bitcast %struct._GtkAdjustment* %29 to i8*
  %31 = load i8*, i8** %data.addr, align 8
  %call23 = call i32 @g_signal_handlers_unblock_matched(i8* %30, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, i8*)* @entscale_int_scale_update to i8*), i8* %31)
  %32 = load %struct.EntscaleIntData*, %struct.EntscaleIntData** %userdata, align 8
  %callback = getelementptr inbounds %struct.EntscaleIntData, %struct.EntscaleIntData* %32, i32 0, i32 3
  %33 = load void (i32, i8*)*, void (i32, i8*)** %callback, align 8
  %tobool24 = icmp ne void (i32, i8*)* %33, null
  br i1 %tobool24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.end.20
  %34 = load %struct.EntscaleIntData*, %struct.EntscaleIntData** %userdata, align 8
  %callback26 = getelementptr inbounds %struct.EntscaleIntData, %struct.EntscaleIntData* %34, i32 0, i32 3
  %35 = load void (i32, i8*)*, void (i32, i8*)** %callback26, align 8
  %36 = load i32*, i32** %intvar, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.EntscaleIntData*, %struct.EntscaleIntData** %userdata, align 8
  %call_data = getelementptr inbounds %struct.EntscaleIntData, %struct.EntscaleIntData* %38, i32 0, i32 4
  %39 = load i8*, i8** %call_data, align 8
  call void %35(i32 %37, i8* %39)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.end.20
  ret void
}

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare double @gtk_adjustment_get_lower(%struct._GtkAdjustment*) #1

declare double @gtk_adjustment_get_upper(%struct._GtkAdjustment*) #1

; Function Attrs: nounwind uwtable
define internal void @entscale_int_scale_update(%struct._GtkAdjustment* %adjustment, i8* %data) #0 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %data.addr = alloca i8*, align 8
  %userdata = alloca %struct.EntscaleIntData*, align 8
  %entry1 = alloca %struct._GtkEntry*, align 8
  %intvar = alloca i32*, align 8
  %new_val = alloca i32, align 4
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to i32*
  store i32* %1, i32** %intvar, align 8
  %2 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %3 = bitcast %struct._GtkAdjustment* %2 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 80)
  %4 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call2 = call i8* @g_object_get_data(%struct._GObject* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0))
  %5 = bitcast i8* %call2 to %struct.EntscaleIntData*
  store %struct.EntscaleIntData* %5, %struct.EntscaleIntData** %userdata, align 8
  %6 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call3 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %6)
  %conv = fptosi double %call3 to i32
  store i32 %conv, i32* %new_val, align 4
  %7 = load i32, i32* %new_val, align 4
  %8 = load i32*, i32** %intvar, align 8
  store i32 %7, i32* %8, align 4
  %9 = load %struct.EntscaleIntData*, %struct.EntscaleIntData** %userdata, align 8
  %entry4 = getelementptr inbounds %struct.EntscaleIntData, %struct.EntscaleIntData* %9, i32 0, i32 1
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %entry4, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_entry_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call5)
  %12 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkEntry*
  store %struct._GtkEntry* %12, %struct._GtkEntry** %entry1, align 8
  %13 = load i32, i32* %new_val, align 4
  %call7 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @buffer, i32 0, i32 0), i64 128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i32 %13)
  %14 = load %struct._GtkEntry*, %struct._GtkEntry** %entry1, align 8
  %15 = bitcast %struct._GtkEntry* %14 to i8*
  %16 = load i8*, i8** %data.addr, align 8
  %call8 = call i32 @g_signal_handlers_block_matched(i8* %15, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, i8*)* @entscale_int_entry_update to i8*), i8* %16)
  %17 = load %struct._GtkEntry*, %struct._GtkEntry** %entry1, align 8
  call void @gtk_entry_set_text(%struct._GtkEntry* %17, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @buffer, i32 0, i32 0))
  %18 = load %struct._GtkEntry*, %struct._GtkEntry** %entry1, align 8
  %19 = bitcast %struct._GtkEntry* %18 to i8*
  %20 = load i8*, i8** %data.addr, align 8
  %call9 = call i32 @g_signal_handlers_unblock_matched(i8* %19, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, i8*)* @entscale_int_entry_update to i8*), i8* %20)
  %21 = load %struct.EntscaleIntData*, %struct.EntscaleIntData** %userdata, align 8
  %callback = getelementptr inbounds %struct.EntscaleIntData, %struct.EntscaleIntData* %21, i32 0, i32 3
  %22 = load void (i32, i8*)*, void (i32, i8*)** %callback, align 8
  %tobool = icmp ne void (i32, i8*)* %22, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %23 = load %struct.EntscaleIntData*, %struct.EntscaleIntData** %userdata, align 8
  %callback10 = getelementptr inbounds %struct.EntscaleIntData, %struct.EntscaleIntData* %23, i32 0, i32 3
  %24 = load void (i32, i8*)*, void (i32, i8*)** %callback10, align 8
  %25 = load i32*, i32** %intvar, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.EntscaleIntData*, %struct.EntscaleIntData** %userdata, align 8
  %call_data = getelementptr inbounds %struct.EntscaleIntData, %struct.EntscaleIntData* %27, i32 0, i32 4
  %28 = load i8*, i8** %call_data, align 8
  call void %24(i32 %26, i8* %28)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #3

declare %struct._GtkObject* @gtk_adjustment_new(double, double, double, double, double, double) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #3

declare %struct._GtkWidget* @gtk_scale_new(i32, %struct._GtkAdjustment*) #1

declare void @gtk_scale_set_draw_value(%struct._GtkScale*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scale_get_type() #3

declare void @g_free(i8*) #1

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

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
