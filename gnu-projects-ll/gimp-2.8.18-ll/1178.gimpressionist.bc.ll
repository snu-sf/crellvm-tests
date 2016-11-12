; ModuleID = './plug-ins/gimpressionist/gimpressionist.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gimpressionist_vals_t = type { i32, double, double, i32, double, double, double, double, i32, double, double, double, i32, i32, [200 x i8], [200 x i8], %struct._GimpRGB, i32, i32, [50 x %struct.vector], i32, i32, double, double, double, i32, i32, i32, i32, i32, double, i32, double, double, i32, double, [50 x %struct.smvector], i32, double, i32, i32, i32, i32, double }
%struct._GimpRGB = type { double, double, double, double }
%struct.vector = type { double, double, double, double, double, double, i32 }
%struct.smvector = type { double, double, double, double }
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
%struct._GtkTreeSelection = type { %struct._GObject, %struct._GtkTreeView*, i32, i32 (%struct._GtkTreeSelection*, %struct._GtkTreeModel*, %struct._GtkTreePath*, i32, i8*)*, i8*, void (i8*)* }
%struct._GtkTreeView = type { %struct._GtkContainer, %struct._GtkTreeViewPrivate* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkTreeViewPrivate = type opaque
%struct._GtkTreeModel = type opaque
%struct._GtkTreePath = type opaque
%struct._GtkListStore = type { %struct._GObject, i32, i8*, i8*, %struct._GList*, i32, i32, i32, i64*, i32, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GtkCellRenderer = type { %struct._GtkObject, float, float, i32, i32, i16, i16, i8 }
%struct._GtkTreeViewColumn = type { %struct._GtkObject, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkDrawable*, %struct._GtkCellEditable*, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct._GList*, i32, i32, i32, i32, i16 }
%struct._GtkCellEditable = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkScrolledWindow = type { %struct._GtkBin, %struct._GtkWidget*, %struct._GtkWidget*, i16, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkNotebook = type { %struct._GtkContainer, i8*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GtkWidget*, %struct._GdkDrawable*, i32, i16, i16, i24 }

@.str = private unnamed_addr constant [7 x i8] c"Preset\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@pcvals = external global %struct.gimpressionist_vals_t, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"gimpressionist\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"GIMPressionist\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"gimp-gimpressionist\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"plug-in-gimpressionist\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@dialog = internal global %struct._GtkWidget* null, align 8
@.str.9 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1

; Function Attrs: nounwind uwtable
define void @store_values() #0 {
entry:
  call void @paper_store()
  call void @brush_store()
  call void @general_store()
  ret void
}

declare void @paper_store() #1

declare void @brush_store() #1

declare void @general_store() #1

; Function Attrs: nounwind uwtable
define void @restore_values() #0 {
entry:
  call void @brush_restore()
  call void @paper_restore()
  call void @orientation_restore()
  call void @size_restore()
  call void @place_restore()
  call void @general_restore()
  call void @color_restore()
  call void @update_orientmap_dialog()
  ret void
}

declare void @brush_restore() #1

declare void @paper_restore() #1

declare void @orientation_restore() #1

declare void @size_restore() #1

declare void @place_restore() #1

declare void @general_restore() #1

declare void @color_restore() #1

declare void @update_orientmap_dialog() #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @create_one_column_list(%struct._GtkWidget* %parent, void (%struct._GtkTreeSelection*, i8*)* %changed_cb) #0 {
entry:
  %parent.addr = alloca %struct._GtkWidget*, align 8
  %changed_cb.addr = alloca void (%struct._GtkTreeSelection*, i8*)*, align 8
  %store = alloca %struct._GtkListStore*, align 8
  %selection = alloca %struct._GtkTreeSelection*, align 8
  %renderer = alloca %struct._GtkCellRenderer*, align 8
  %column = alloca %struct._GtkTreeViewColumn*, align 8
  %swin = alloca %struct._GtkWidget*, align 8
  %view = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
  store void (%struct._GtkTreeSelection*, i8*)* %changed_cb, void (%struct._GtkTreeSelection*, i8*)** %changed_cb.addr, align 8
  %call = call %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment* null, %struct._GtkAdjustment* null)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %swin, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %swin, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_scrolled_window_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow* %2, i32 1, i32 1)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %swin, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_scrolled_window_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow* %5, i32 1)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_box_get_type() #4
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call5)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkBox*
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %swin, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %8, %struct._GtkWidget* %9, i32 0, i32 0, i32 0)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %swin, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %10)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %swin, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %11, i32 150, i32 -1)
  %call7 = call %struct._GtkListStore* (i32, ...) @gtk_list_store_new(i32 1, i64 64)
  store %struct._GtkListStore* %call7, %struct._GtkListStore** %store, align 8
  %12 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %13 = bitcast %struct._GtkListStore* %12 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_tree_model_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call8)
  %14 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkTreeModel*
  %call10 = call %struct._GtkWidget* @gtk_tree_view_new_with_model(%struct._GtkTreeModel* %14)
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %view, align 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_tree_view_get_type() #4
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call11)
  %17 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkTreeView*
  call void @gtk_tree_view_set_headers_visible(%struct._GtkTreeView* %17, i32 0)
  %18 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %19 = bitcast %struct._GtkListStore* %18 to i8*
  call void @g_object_unref(i8* %19)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %20)
  %call13 = call %struct._GtkCellRenderer* @gtk_cell_renderer_text_new()
  store %struct._GtkCellRenderer* %call13, %struct._GtkCellRenderer** %renderer, align 8
  %21 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer, align 8
  %call14 = call %struct._GtkTreeViewColumn* (i8*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_column_new_with_attributes(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), %struct._GtkCellRenderer* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 0, i8* null)
  store %struct._GtkTreeViewColumn* %call14, %struct._GtkTreeViewColumn** %column, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_tree_view_get_type() #4
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call15)
  %24 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkTreeView*
  %25 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %call17 = call i32 @gtk_tree_view_append_column(%struct._GtkTreeView* %24, %struct._GtkTreeViewColumn* %25)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %swin, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_container_get_type() #4
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call18)
  %28 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkContainer*
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @gtk_container_add(%struct._GtkContainer* %28, %struct._GtkWidget* %29)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_tree_view_get_type() #4
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call20)
  %32 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkTreeView*
  %call22 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %32)
  store %struct._GtkTreeSelection* %call22, %struct._GtkTreeSelection** %selection, align 8
  %33 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection, align 8
  call void @gtk_tree_selection_set_mode(%struct._GtkTreeSelection* %33, i32 2)
  %34 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection, align 8
  %35 = bitcast %struct._GtkTreeSelection* %34 to i8*
  %36 = load void (%struct._GtkTreeSelection*, i8*)*, void (%struct._GtkTreeSelection*, i8*)** %changed_cb.addr, align 8
  %37 = bitcast void (%struct._GtkTreeSelection*, i8*)* %36 to void ()*
  %call23 = call i64 @g_signal_connect_data(i8* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), void ()* %37, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  ret %struct._GtkWidget* %38
}

declare %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment*, %struct._GtkAdjustment*) #1

declare void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow*, i32, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scrolled_window_get_type() #2

declare void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow*, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare %struct._GtkListStore* @gtk_list_store_new(i32, ...) #1

declare %struct._GtkWidget* @gtk_tree_view_new_with_model(%struct._GtkTreeModel*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_model_get_type() #2

declare void @gtk_tree_view_set_headers_visible(%struct._GtkTreeView*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_view_get_type() #2

declare void @g_object_unref(i8*) #1

declare %struct._GtkCellRenderer* @gtk_cell_renderer_text_new() #1

declare %struct._GtkTreeViewColumn* @gtk_tree_view_column_new_with_attributes(i8*, %struct._GtkCellRenderer*, ...) #1

declare i32 @gtk_tree_view_append_column(%struct._GtkTreeView*, %struct._GtkTreeViewColumn*) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView*) #1

declare void @gtk_tree_selection_set_mode(%struct._GtkTreeSelection*, i32) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @create_gimpressionist() #0 {
entry:
  store i32 0, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 13), align 4
  %call = call %struct._GtkWidget* @create_dialog()
  call void @gtk_main()
  %0 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 13), align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @create_dialog() #0 {
entry:
  %notebook = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %preview_box = alloca %struct._GtkWidget*, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 1)
  %call = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0)) #5
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** @dialog, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @dialog, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_dialog_get_type() #4
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call2)
  %2 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %2, i32 -5, i32 -6, i32 -1)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** @dialog, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_window_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call4)
  %5 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %5)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** @dialog, align 8
  %7 = bitcast %struct._GtkWidget* %6 to i8*
  %call6 = call i64 @g_signal_connect_data(i8* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, i8*)* @dialog_response to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** @dialog, align 8
  %9 = bitcast %struct._GtkWidget* %8 to i8*
  %call7 = call i64 @g_signal_connect_data(i8* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), void ()* @gtk_main_quit, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call8 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %hbox, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_container_get_type() #4
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call9)
  %12 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %12, i32 12)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** @dialog, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_dialog_get_type() #4
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkDialog*
  %call13 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %15)
  %16 = bitcast %struct._GtkWidget* %call13 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_box_get_type() #4
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call14)
  %17 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkBox*
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %17, %struct._GtkWidget* %18, i32 1, i32 1, i32 0)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %19)
  %call16 = call %struct._GtkWidget* @create_preview()
  store %struct._GtkWidget* %call16, %struct._GtkWidget** %preview_box, align 8
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_box_get_type() #4
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call17)
  %22 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkBox*
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %preview_box, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %22, %struct._GtkWidget* %23, i32 0, i32 0, i32 0)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %preview_box, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %24)
  %call19 = call %struct._GtkWidget* @gtk_notebook_new()
  store %struct._GtkWidget* %call19, %struct._GtkWidget** %notebook, align 8
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_box_get_type() #4
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call20)
  %27 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkBox*
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %27, %struct._GtkWidget* %28, i32 1, i32 1, i32 5)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %29)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_notebook_get_type() #4
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call22)
  %32 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkNotebook*
  call void @create_presetpage(%struct._GtkNotebook* %32)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_notebook_get_type() #4
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call24)
  %35 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkNotebook*
  call void @create_paperpage(%struct._GtkNotebook* %35)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_notebook_get_type() #4
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call26)
  %38 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkNotebook*
  call void @create_brushpage(%struct._GtkNotebook* %38)
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_notebook_get_type() #4
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call28)
  %41 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkNotebook*
  call void @create_orientationpage(%struct._GtkNotebook* %41)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_notebook_get_type() #4
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call30)
  %44 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkNotebook*
  call void @create_sizepage(%struct._GtkNotebook* %44)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_notebook_get_type() #4
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call32)
  %47 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkNotebook*
  call void @create_placementpage(%struct._GtkNotebook* %47)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_notebook_get_type() #4
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call34)
  %50 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkNotebook*
  call void @create_colorpage(%struct._GtkNotebook* %50)
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %52 = bitcast %struct._GtkWidget* %51 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_notebook_get_type() #4
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call36)
  %53 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkNotebook*
  call void @create_generalpage(%struct._GtkNotebook* %53)
  call void @updatepreview(%struct._GtkWidget* null, i8* null)
  call void @restore_values()
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** @dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %54)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** @dialog, align 8
  ret %struct._GtkWidget* %55
}

declare void @gtk_main() #1

declare void @gimp_ui_init(i8*, i32) #1

declare %struct._GtkWidget* @gimp_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare void @gimp_standard_help_func(i8*, i8*) #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #2

declare void @gimp_window_set_transient(%struct._GtkWindow*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @dialog_response(%struct._GtkWidget* %widget, i32 %response_id, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  switch i32 %0, label %sw.default [
    i32 -5, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  call void @store_values()
  store i32 1, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 13), align 4
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %1)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %2)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  ret void
}

declare void @gtk_main_quit() #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

declare %struct._GtkWidget* @create_preview() #1

declare %struct._GtkWidget* @gtk_notebook_new() #1

declare void @create_presetpage(%struct._GtkNotebook*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_notebook_get_type() #2

declare void @create_paperpage(%struct._GtkNotebook*) #1

declare void @create_brushpage(%struct._GtkNotebook*) #1

declare void @create_orientationpage(%struct._GtkNotebook*) #1

declare void @create_sizepage(%struct._GtkNotebook*) #1

declare void @create_placementpage(%struct._GtkNotebook*) #1

declare void @create_colorpage(%struct._GtkNotebook*) #1

declare void @create_generalpage(%struct._GtkNotebook*) #1

declare void @updatepreview(%struct._GtkWidget*, i8*) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
