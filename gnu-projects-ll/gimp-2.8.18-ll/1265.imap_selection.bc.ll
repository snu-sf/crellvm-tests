; ModuleID = './plug-ins/imagemap/imap_selection.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GtkTargetEntry = type { i8*, i32, i32 }
%struct.Selection_t = type { %struct._GtkListStore*, %struct._GtkTreeSelection*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct.ObjectList_t*, i32, i32, i32, i32, i32, %struct.Command_t* ()*, %struct.Command_t* ()*, %struct.Command_t* ()*, %struct.Command_t* ()* }
%struct._GtkListStore = type { %struct._GObject, i32, i8*, i8*, %struct._GList*, i32, i32, i32, i64*, i32, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkTreeModel = type opaque
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GtkTreeSelection = type { %struct._GObject, %struct._GtkTreeView*, i32, i32 (%struct._GtkTreeSelection*, %struct._GtkTreeModel*, %struct._GtkTreePath*, i32, i8*)*, i8*, void (i8*)* }
%struct._GtkTreeView = type { %struct._GtkContainer, %struct._GtkTreeViewPrivate* }
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
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GtkTreeViewPrivate = type opaque
%struct._GtkTreePath = type opaque
%struct.Command_t = type { %struct.CommandClass_t*, %struct.CommandList_t*, i8*, i32 }
%struct.CommandClass_t = type { void (%struct.Command_t*)*, i32 (%struct.Command_t*)*, void (%struct.Command_t*)*, void (%struct.Command_t*)* }
%struct.CommandList_t = type { %struct.CommandList_t*, i32, %struct._GList*, %struct._GList*, %struct._GList*, %struct.CommandListCallback_t }
%struct.CommandListCallback_t = type { %struct._GList* }
%struct.ObjectList_t = type { %struct._GList*, i32, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t }
%struct.ObjectListCallback_t = type { %struct._GList* }
%struct._GtkCellRenderer = type { %struct._GtkObject, float, float, i32, i32, i16, i16, i8 }
%struct._GtkTreeViewColumn = type { %struct._GtkObject, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkDrawable*, %struct._GtkCellEditable*, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct._GList*, i32, i32, i32, i32, i16 }
%struct._GtkCellEditable = type opaque
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkScrolledWindow = type { %struct._GtkBin, %struct._GtkWidget*, %struct._GtkWidget*, i16, i16 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct.Object_t = type { %struct.ObjectClass_t*, %struct.ObjectList_t*, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.ObjectClass_t = type { i8*, %struct.AreaInfoDialog_t*, %struct._GdkDrawable*, %struct._GdkDrawable*, i32 (%struct.Object_t*)*, void (%struct.Object_t*)*, %struct.Object_t* (%struct.Object_t*)*, void (%struct.Object_t*, %struct.Object_t*)*, void (%struct.Object_t*)*, void (%struct.Object_t*, %struct._cairo*)*, void (%struct.Object_t*, %struct._cairo*)*, void (%struct.Object_t*, i32, i32)* (%struct.Object_t*, i32, i32)*, i32 (%struct.Object_t*, i32, i32)*, void (%struct.Object_t*, i32*, i32*, i32*, i32*)*, void (%struct.Object_t*, i32, i32)*, void (%struct.Object_t*, i32, i32)*, i8* (%struct._GtkWidget*)*, {}*, {}*, {}*, {}*, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)*, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)*, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)*, void (%struct.Object_t*, %struct._GdkEventButton*)*, i8* ()* }
%struct.AreaInfoDialog_t = type { %struct.DefaultDialog_t*, %struct.Object_t*, %struct.Object_t*, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i8*, i8* }
%struct.DefaultDialog_t = type { %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, void (i8*)*, i8*, void (i8*)*, i8*, void (i8*)*, i8* }
%struct._cairo = type opaque
%struct._GdkEventButton = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i32, %struct._GdkDevice*, double, double }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GdkDragContext = type { %struct._GObject, i32, i32, %struct._GdkDrawable*, %struct._GdkDrawable*, %struct._GList*, i32, i32, i32, i32, i8* }
%struct._GtkSelectionData = type { %struct._GdkAtom*, %struct._GdkAtom*, %struct._GdkAtom*, i32, i8*, i32, %struct._GdkDisplay* }
%struct._GdkAtom = type opaque
%struct._GdkDisplay = type { %struct._GObject, %struct._GList*, %struct._GList*, [2 x i32], [2 x %struct._GdkDrawable*], [2 x i32], i32, %struct._GdkDevice*, %struct._GdkDisplayPointerHooks*, i8, i32, [2 x i32], [2 x i32], %struct._GList*, %struct.GdkKeyboardGrabInfo, %struct.GdkPointerWindowInfo, i32 }
%struct._GdkDisplayPointerHooks = type { void (%struct._GdkDisplay*, %struct._GdkScreen**, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, %struct._GdkDrawable*, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, i32*, i32*)* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }

@.str = private unnamed_addr constant [10 x i8] c"Selection\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"URL\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"ALT Text\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Target\00", align 1
@target_table = internal constant [2 x %struct._GtkTargetEntry] [%struct._GtkTargetEntry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i32 0, i32 1 }, %struct._GtkTargetEntry { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i32 0, i32 2 }], align 16
@.str.5 = private unnamed_addr constant [19 x i8] c"drag-data-received\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"button-press-event\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"button-release-event\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"stock-id\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"STRING\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"text/plain\00", align 1

; Function Attrs: nounwind uwtable
define %struct.Selection_t* @make_selection(%struct.ObjectList_t* %object_list) #0 {
entry:
  %object_list.addr = alloca %struct.ObjectList_t*, align 8
  %data = alloca %struct.Selection_t*, align 8
  %swin = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %toolbar = alloca %struct._GtkWidget*, align 8
  %list = alloca %struct._GtkWidget*, align 8
  %renderer = alloca %struct._GtkCellRenderer*, align 8
  %column = alloca %struct._GtkTreeViewColumn*, align 8
  store %struct.ObjectList_t* %object_list, %struct.ObjectList_t** %object_list.addr, align 8
  %call = call noalias i8* @g_malloc_n(i64 1, i64 104)
  %0 = bitcast i8* %call to %struct.Selection_t*
  store %struct.Selection_t* %0, %struct.Selection_t** %data, align 8
  %1 = load %struct.ObjectList_t*, %struct.ObjectList_t** %object_list.addr, align 8
  %2 = load %struct.Selection_t*, %struct.Selection_t** %data, align 8
  %object_list1 = getelementptr inbounds %struct.Selection_t, %struct.Selection_t* %2, i32 0, i32 5
  store %struct.ObjectList_t* %1, %struct.ObjectList_t** %object_list1, align 8
  %3 = load %struct.Selection_t*, %struct.Selection_t** %data, align 8
  %selected_child = getelementptr inbounds %struct.Selection_t, %struct.Selection_t* %3, i32 0, i32 4
  store %struct._GtkWidget* null, %struct._GtkWidget** %selected_child, align 8
  %4 = load %struct.Selection_t*, %struct.Selection_t** %data, align 8
  %is_visible = getelementptr inbounds %struct.Selection_t, %struct.Selection_t* %4, i32 0, i32 8
  store i32 1, i32* %is_visible, align 4
  %5 = load %struct.Selection_t*, %struct.Selection_t** %data, align 8
  %nr_rows = getelementptr inbounds %struct.Selection_t, %struct.Selection_t* %5, i32 0, i32 7
  store i32 0, i32* %nr_rows, align 4
  %6 = load %struct.Selection_t*, %struct.Selection_t** %data, align 8
  %select_lock = getelementptr inbounds %struct.Selection_t, %struct.Selection_t* %6, i32 0, i32 9
  store i32 0, i32* %select_lock, align 4
  %7 = load %struct.Selection_t*, %struct.Selection_t** %data, align 8
  %doubleclick = getelementptr inbounds %struct.Selection_t, %struct.Selection_t* %7, i32 0, i32 10
  store i32 0, i32* %doubleclick, align 4
  %call2 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %frame, align 8
  %8 = load %struct.Selection_t*, %struct.Selection_t** %data, align 8
  %container = getelementptr inbounds %struct.Selection_t, %struct.Selection_t* %8, i32 0, i32 2
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %container, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_frame_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call3)
  %11 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %11, i32 1)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %12)
  %call5 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %hbox, align 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_container_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call6)
  %15 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkContainer*
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %15, %struct._GtkWidget* %16)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %17)
  %call8 = call %struct._GtkWidget* @make_selection_toolbar()
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %toolbar, align 8
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_box_get_type() #4
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call9)
  %20 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkBox*
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %toolbar, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %20, %struct._GtkWidget* %21, i32 1, i32 1, i32 0)
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0)) #5
  %call12 = call %struct._GtkWidget* @gimp_frame_new(i8* %call11)
  store %struct._GtkWidget* %call12, %struct._GtkWidget** %frame, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_box_get_type() #4
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call13)
  %24 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkBox*
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %24, %struct._GtkWidget* %25, i32 1, i32 1, i32 0)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %26)
  %call15 = call %struct._GtkListStore* (i32, ...) @gtk_list_store_new(i32 1, i64 68)
  %27 = load %struct.Selection_t*, %struct.Selection_t** %data, align 8
  %store = getelementptr inbounds %struct.Selection_t, %struct.Selection_t* %27, i32 0, i32 0
  store %struct._GtkListStore* %call15, %struct._GtkListStore** %store, align 8
  %28 = load %struct.Selection_t*, %struct.Selection_t** %data, align 8
  %store16 = getelementptr inbounds %struct.Selection_t, %struct.Selection_t* %28, i32 0, i32 0
  %29 = load %struct._GtkListStore*, %struct._GtkListStore** %store16, align 8
  %30 = bitcast %struct._GtkListStore* %29 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_tree_model_get_type() #4
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call17)
  %31 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkTreeModel*
  %call19 = call %struct._GtkWidget* @gtk_tree_view_new_with_model(%struct._GtkTreeModel* %31)
  %32 = load %struct.Selection_t*, %struct.Selection_t** %data, align 8
  %list20 = getelementptr inbounds %struct.Selection_t, %struct.Selection_t* %32, i32 0, i32 3
  store %struct._GtkWidget* %call19, %struct._GtkWidget** %list20, align 8
  %33 = load %struct.Selection_t*, %struct.Selection_t** %data, align 8
  %list21 = getelementptr inbounds %struct.Selection_t, %struct.Selection_t* %33, i32 0, i32 3
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %list21, align 8
  store %struct._GtkWidget* %34, %struct._GtkWidget** %list, align 8
  %35 = load %struct.Selection_t*, %struct.Selection_t** %data, align 8
  %store22 = getelementptr inbounds %struct.Selection_t, %struct.Selection_t* %35, i32 0, i32 0
  %36 = load %struct._GtkListStore*, %struct._GtkListStore** %store22, align 8
  %37 = bitcast %struct._GtkListStore* %36 to i8*
  call void @g_object_unref(i8* %37)
  %call23 = call %struct._GtkCellRenderer* @gtk_cell_renderer_text_new()
  store %struct._GtkCellRenderer* %call23, %struct._GtkCellRenderer** %renderer, align 8
  %38 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer, align 8
  %call24 = call %struct._GtkTreeViewColumn* (i8*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_column_new_with_attributes(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), %struct._GtkCellRenderer* %38, i8* null)
  store %struct._GtkTreeViewColumn* %call24, %struct._GtkTreeViewColumn** %column, align 8
  %39 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %40 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer, align 8
  %41 = load %struct.Selection_t*, %struct.Selection_t** %data, align 8
  %42 = bitcast %struct.Selection_t* %41 to i8*
  call void @gtk_tree_view_column_set_cell_data_func(%struct._GtkTreeViewColumn* %39, %struct._GtkCellRenderer* %40, void (%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, %struct._GtkTreeModel*, %struct._GtkTreeIter*, i8*)* @render_nr, i8* %42, void (i8*)* null)
  %43 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  call void @gtk_tree_view_column_set_min_width(%struct._GtkTreeViewColumn* %43, i32 16)
  %44 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  call void @gtk_tree_view_column_set_sizing(%struct._GtkTreeViewColumn* %44, i32 1)
  %45 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  call void @gtk_tree_view_column_set_alignment(%struct._GtkTreeViewColumn* %45, float 5.000000e-01)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %list, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_tree_view_get_type() #4
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call25)
  %48 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkTreeView*
  %49 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %call27 = call i32 @gtk_tree_view_append_column(%struct._GtkTreeView* %48, %struct._GtkTreeViewColumn* %49)
  %call28 = call %struct._GtkTreeViewColumn* @gtk_tree_view_column_new()
  store %struct._GtkTreeViewColumn* %call28, %struct._GtkTreeViewColumn** %column, align 8
  %50 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %call29 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)) #5
  call void @gtk_tree_view_column_set_title(%struct._GtkTreeViewColumn* %50, i8* %call29)
  %call30 = call %struct._GtkCellRenderer* @gtk_cell_renderer_pixbuf_new()
  store %struct._GtkCellRenderer* %call30, %struct._GtkCellRenderer** %renderer, align 8
  %51 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %52 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer, align 8
  call void @gtk_tree_view_column_pack_start(%struct._GtkTreeViewColumn* %51, %struct._GtkCellRenderer* %52, i32 0)
  %53 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %54 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer, align 8
  %55 = load %struct.Selection_t*, %struct.Selection_t** %data, align 8
  %56 = bitcast %struct.Selection_t* %55 to i8*
  call void @gtk_tree_view_column_set_cell_data_func(%struct._GtkTreeViewColumn* %53, %struct._GtkCellRenderer* %54, void (%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, %struct._GtkTreeModel*, %struct._GtkTreeIter*, i8*)* @render_image, i8* %56, void (i8*)* null)
  %call31 = call %struct._GtkCellRenderer* @gtk_cell_renderer_text_new()
  store %struct._GtkCellRenderer* %call31, %struct._GtkCellRenderer** %renderer, align 8
  %57 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %58 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer, align 8
  call void @gtk_tree_view_column_pack_start(%struct._GtkTreeViewColumn* %57, %struct._GtkCellRenderer* %58, i32 1)
  %59 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %60 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer, align 8
  %61 = load %struct.Selection_t*, %struct.Selection_t** %data, align 8
  %62 = bitcast %struct.Selection_t* %61 to i8*
  call void @gtk_tree_view_column_set_cell_data_func(%struct._GtkTreeViewColumn* %59, %struct._GtkCellRenderer* %60, void (%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, %struct._GtkTreeModel*, %struct._GtkTreeIter*, i8*)* @render_url, i8* %62, void (i8*)* null)
  %63 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  call void @gtk_tree_view_column_set_min_width(%struct._GtkTreeViewColumn* %63, i32 80)
  %64 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  call void @gtk_tree_view_column_set_resizable(%struct._GtkTreeViewColumn* %64, i32 1)
  %65 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  call void @gtk_tree_view_column_set_alignment(%struct._GtkTreeViewColumn* %65, float 5.000000e-01)
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %list, align 8
  %67 = bitcast %struct._GtkWidget* %66 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_tree_view_get_type() #4
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call32)
  %68 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkTreeView*
  %69 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %call34 = call i32 @gtk_tree_view_append_column(%struct._GtkTreeView* %68, %struct._GtkTreeViewColumn* %69)
  %call35 = call %struct._GtkCellRenderer* @gtk_cell_renderer_text_new()
  store %struct._GtkCellRenderer* %call35, %struct._GtkCellRenderer** %renderer, align 8
  %call36 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0)) #5
  %70 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer, align 8
  %call37 = call %struct._GtkTreeViewColumn* (i8*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_column_new_with_attributes(i8* %call36, %struct._GtkCellRenderer* %70, i8* null)
  store %struct._GtkTreeViewColumn* %call37, %struct._GtkTreeViewColumn** %column, align 8
  %71 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %72 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer, align 8
  %73 = load %struct.Selection_t*, %struct.Selection_t** %data, align 8
  %74 = bitcast %struct.Selection_t* %73 to i8*
  call void @gtk_tree_view_column_set_cell_data_func(%struct._GtkTreeViewColumn* %71, %struct._GtkCellRenderer* %72, void (%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, %struct._GtkTreeModel*, %struct._GtkTreeIter*, i8*)* @render_comment, i8* %74, void (i8*)* null)
  %75 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  call void @gtk_tree_view_column_set_min_width(%struct._GtkTreeViewColumn* %75, i32 64)
  %76 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  call void @gtk_tree_view_column_set_resizable(%struct._GtkTreeViewColumn* %76, i32 1)
  %77 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  call void @gtk_tree_view_column_set_alignment(%struct._GtkTreeViewColumn* %77, float 5.000000e-01)
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %list, align 8
  %79 = bitcast %struct._GtkWidget* %78 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_tree_view_get_type() #4
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call38)
  %80 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkTreeView*
  %81 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %call40 = call i32 @gtk_tree_view_append_column(%struct._GtkTreeView* %80, %struct._GtkTreeViewColumn* %81)
  %call41 = call %struct._GtkCellRenderer* @gtk_cell_renderer_text_new()
  store %struct._GtkCellRenderer* %call41, %struct._GtkCellRenderer** %renderer, align 8
  %call42 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0)) #5
  %82 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer, align 8
  %call43 = call %struct._GtkTreeViewColumn* (i8*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_column_new_with_attributes(i8* %call42, %struct._GtkCellRenderer* %82, i8* null)
  store %struct._GtkTreeViewColumn* %call43, %struct._GtkTreeViewColumn** %column, align 8
  %83 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %84 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer, align 8
  %85 = load %struct.Selection_t*, %struct.Selection_t** %data, align 8
  %86 = bitcast %struct.Selection_t* %85 to i8*
  call void @gtk_tree_view_column_set_cell_data_func(%struct._GtkTreeViewColumn* %83, %struct._GtkCellRenderer* %84, void (%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, %struct._GtkTreeModel*, %struct._GtkTreeIter*, i8*)* @render_target, i8* %86, void (i8*)* null)
  %87 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  call void @gtk_tree_view_column_set_min_width(%struct._GtkTreeViewColumn* %87, i32 64)
  %88 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  call void @gtk_tree_view_column_set_resizable(%struct._GtkTreeViewColumn* %88, i32 1)
  %89 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  call void @gtk_tree_view_column_set_alignment(%struct._GtkTreeViewColumn* %89, float 5.000000e-01)
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %list, align 8
  %91 = bitcast %struct._GtkWidget* %90 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_tree_view_get_type() #4
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %91, i64 %call44)
  %92 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkTreeView*
  %93 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %call46 = call i32 @gtk_tree_view_append_column(%struct._GtkTreeView* %92, %struct._GtkTreeViewColumn* %93)
  %call47 = call %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment* null, %struct._GtkAdjustment* null)
  store %struct._GtkWidget* %call47, %struct._GtkWidget** %swin, align 8
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %swin, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %94, i32 240, i32 -1)
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %96 = bitcast %struct._GtkWidget* %95 to %struct._GTypeInstance*
  %call48 = call i64 @gtk_container_get_type() #4
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %96, i64 %call48)
  %97 = bitcast %struct._GTypeInstance* %call49 to %struct._GtkContainer*
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %swin, align 8
  call void @gtk_container_add(%struct._GtkContainer* %97, %struct._GtkWidget* %98)
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %swin, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %99)
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %swin, align 8
  %101 = bitcast %struct._GtkWidget* %100 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_scrolled_window_get_type() #4
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %101, i64 %call50)
  %102 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkScrolledWindow*
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %list, align 8
  call void @gtk_scrolled_window_add_with_viewport(%struct._GtkScrolledWindow* %102, %struct._GtkWidget* %103)
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %list, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %104)
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %list, align 8
  call void @gtk_drag_dest_set(%struct._GtkWidget* %105, i32 7, %struct._GtkTargetEntry* getelementptr inbounds ([2 x %struct._GtkTargetEntry], [2 x %struct._GtkTargetEntry]* @target_table, i32 0, i32 0), i32 2, i32 2)
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %list, align 8
  %107 = bitcast %struct._GtkWidget* %106 to i8*
  %call52 = call i64 @g_signal_connect_data(i8* %107, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, %struct._GtkSelectionData*, i32, i32)* @handle_drop to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %list, align 8
  %109 = bitcast %struct._GtkWidget* %108 to i8*
  %110 = load %struct.Selection_t*, %struct.Selection_t** %data, align 8
  %111 = bitcast %struct.Selection_t* %110 to i8*
  %call53 = call i64 @g_signal_connect_data(i8* %109, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventButton*, %struct.Selection_t*)* @button_press_cb to void ()*), i8* %111, void (i8*, %struct._GClosure*)* null, i32 0)
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %list, align 8
  %113 = bitcast %struct._GtkWidget* %112 to i8*
  %114 = load %struct.Selection_t*, %struct.Selection_t** %data, align 8
  %115 = bitcast %struct.Selection_t* %114 to i8*
  %call54 = call i64 @g_signal_connect_data(i8* %113, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventButton*, %struct.Selection_t*)* @button_release_cb to void ()*), i8* %115, void (i8*, %struct._GClosure*)* null, i32 0)
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %list, align 8
  %117 = bitcast %struct._GtkWidget* %116 to %struct._GTypeInstance*
  %call55 = call i64 @gtk_tree_view_get_type() #4
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %117, i64 %call55)
  %118 = bitcast %struct._GTypeInstance* %call56 to %struct._GtkTreeView*
  %call57 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %118)
  %119 = load %struct.Selection_t*, %struct.Selection_t** %data, align 8
  %selection = getelementptr inbounds %struct.Selection_t, %struct.Selection_t* %119, i32 0, i32 1
  store %struct._GtkTreeSelection* %call57, %struct._GtkTreeSelection** %selection, align 8
  %120 = load %struct.Selection_t*, %struct.Selection_t** %data, align 8
  %selection58 = getelementptr inbounds %struct.Selection_t, %struct.Selection_t* %120, i32 0, i32 1
  %121 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection58, align 8
  call void @gtk_tree_selection_set_mode(%struct._GtkTreeSelection* %121, i32 3)
  %122 = load %struct.Selection_t*, %struct.Selection_t** %data, align 8
  %selection59 = getelementptr inbounds %struct.Selection_t, %struct.Selection_t* %122, i32 0, i32 1
  %123 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection59, align 8
  %124 = bitcast %struct._GtkTreeSelection* %123 to i8*
  %125 = load %struct.Selection_t*, %struct.Selection_t** %data, align 8
  %126 = bitcast %struct.Selection_t* %125 to i8*
  %call60 = call i64 @g_signal_connect_data(i8* %124, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (void (%struct._GtkTreeSelection*, i8*)* @changed_cb to void ()*), i8* %126, void (i8*, %struct._GClosure*)* null, i32 0)
  %127 = load %struct.ObjectList_t*, %struct.ObjectList_t** %object_list.addr, align 8
  %128 = load %struct.Selection_t*, %struct.Selection_t** %data, align 8
  %129 = bitcast %struct.Selection_t* %128 to i8*
  %call61 = call i8* @object_list_add_add_cb(%struct.ObjectList_t* %127, void (%struct.Object_t*, i8*)* @object_added_cb, i8* %129)
  %130 = load %struct.ObjectList_t*, %struct.ObjectList_t** %object_list.addr, align 8
  %131 = load %struct.Selection_t*, %struct.Selection_t** %data, align 8
  %132 = bitcast %struct.Selection_t* %131 to i8*
  %call62 = call i8* @object_list_add_update_cb(%struct.ObjectList_t* %130, void (%struct.Object_t*, i8*)* @object_updated_cb, i8* %132)
  %133 = load %struct.ObjectList_t*, %struct.ObjectList_t** %object_list.addr, align 8
  %134 = load %struct.Selection_t*, %struct.Selection_t** %data, align 8
  %135 = bitcast %struct.Selection_t* %134 to i8*
  %call63 = call i8* @object_list_add_remove_cb(%struct.ObjectList_t* %133, void (%struct.Object_t*, i8*)* @object_removed_cb, i8* %135)
  %136 = load %struct.ObjectList_t*, %struct.ObjectList_t** %object_list.addr, align 8
  %137 = load %struct.Selection_t*, %struct.Selection_t** %data, align 8
  %138 = bitcast %struct.Selection_t* %137 to i8*
  %call64 = call i8* @object_list_add_select_cb(%struct.ObjectList_t* %136, void (%struct.Object_t*, i8*)* @object_selected_cb, i8* %138)
  %139 = load %struct.ObjectList_t*, %struct.ObjectList_t** %object_list.addr, align 8
  %140 = load %struct.Selection_t*, %struct.Selection_t** %data, align 8
  %141 = bitcast %struct.Selection_t* %140 to i8*
  %call65 = call i8* @object_list_add_move_cb(%struct.ObjectList_t* %139, void (%struct.Object_t*, i8*)* @object_moved_cb, i8* %141)
  %142 = load %struct.Selection_t*, %struct.Selection_t** %data, align 8
  ret %struct.Selection_t* %142
}

declare noalias i8* @g_malloc_n(i64, i64) #1

declare %struct._GtkWidget* @gtk_frame_new(i8*) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare %struct._GtkWidget* @make_selection_toolbar() #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare %struct._GtkListStore* @gtk_list_store_new(i32, ...) #1

declare %struct._GtkWidget* @gtk_tree_view_new_with_model(%struct._GtkTreeModel*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_model_get_type() #2

declare void @g_object_unref(i8*) #1

declare %struct._GtkCellRenderer* @gtk_cell_renderer_text_new() #1

declare %struct._GtkTreeViewColumn* @gtk_tree_view_column_new_with_attributes(i8*, %struct._GtkCellRenderer*, ...) #1

declare void @gtk_tree_view_column_set_cell_data_func(%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, void (%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, %struct._GtkTreeModel*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal void @render_nr(%struct._GtkTreeViewColumn* %column, %struct._GtkCellRenderer* %cell, %struct._GtkTreeModel* %tree_model, %struct._GtkTreeIter* %iter, i8* %data) #0 {
entry:
  %column.addr = alloca %struct._GtkTreeViewColumn*, align 8
  %cell.addr = alloca %struct._GtkCellRenderer*, align 8
  %tree_model.addr = alloca %struct._GtkTreeModel*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %data.addr = alloca i8*, align 8
  %obj = alloca %struct.Object_t*, align 8
  %scratch = alloca i8*, align 8
  store %struct._GtkTreeViewColumn* %column, %struct._GtkTreeViewColumn** %column.addr, align 8
  store %struct._GtkCellRenderer* %cell, %struct._GtkCellRenderer** %cell.addr, align 8
  store %struct._GtkTreeModel* %tree_model, %struct._GtkTreeModel** %tree_model.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %tree_model.addr, align 8
  %1 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %call = call %struct.Object_t* @selection_get_object(%struct._GtkTreeModel* %0, %struct._GtkTreeIter* %1)
  store %struct.Object_t* %call, %struct.Object_t** %obj, align 8
  %2 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %call1 = call i32 @object_get_position_in_list(%struct.Object_t* %2)
  %add = add nsw i32 %call1, 1
  %call2 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32 %add)
  store i8* %call2, i8** %scratch, align 8
  %3 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell.addr, align 8
  %4 = bitcast %struct._GtkCellRenderer* %3 to i8*
  %5 = load i8*, i8** %scratch, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* %5, i8* null)
  %6 = load i8*, i8** %scratch, align 8
  call void @g_free(i8* %6)
  ret void
}

declare void @gtk_tree_view_column_set_min_width(%struct._GtkTreeViewColumn*, i32) #1

declare void @gtk_tree_view_column_set_sizing(%struct._GtkTreeViewColumn*, i32) #1

declare void @gtk_tree_view_column_set_alignment(%struct._GtkTreeViewColumn*, float) #1

declare i32 @gtk_tree_view_append_column(%struct._GtkTreeView*, %struct._GtkTreeViewColumn*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_view_get_type() #2

declare %struct._GtkTreeViewColumn* @gtk_tree_view_column_new() #1

declare void @gtk_tree_view_column_set_title(%struct._GtkTreeViewColumn*, i8*) #1

declare %struct._GtkCellRenderer* @gtk_cell_renderer_pixbuf_new() #1

declare void @gtk_tree_view_column_pack_start(%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @render_image(%struct._GtkTreeViewColumn* %column, %struct._GtkCellRenderer* %cell, %struct._GtkTreeModel* %tree_model, %struct._GtkTreeIter* %iter, i8* %data) #0 {
entry:
  %column.addr = alloca %struct._GtkTreeViewColumn*, align 8
  %cell.addr = alloca %struct._GtkCellRenderer*, align 8
  %tree_model.addr = alloca %struct._GtkTreeModel*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %data.addr = alloca i8*, align 8
  %obj = alloca %struct.Object_t*, align 8
  store %struct._GtkTreeViewColumn* %column, %struct._GtkTreeViewColumn** %column.addr, align 8
  store %struct._GtkCellRenderer* %cell, %struct._GtkCellRenderer** %cell.addr, align 8
  store %struct._GtkTreeModel* %tree_model, %struct._GtkTreeModel** %tree_model.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %tree_model.addr, align 8
  %1 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %call = call %struct.Object_t* @selection_get_object(%struct._GtkTreeModel* %0, %struct._GtkTreeIter* %1)
  store %struct.Object_t* %call, %struct.Object_t** %obj, align 8
  %2 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell.addr, align 8
  %3 = bitcast %struct._GtkCellRenderer* %2 to i8*
  %4 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %class = getelementptr inbounds %struct.Object_t, %struct.Object_t* %4, i32 0, i32 0
  %5 = load %struct.ObjectClass_t*, %struct.ObjectClass_t** %class, align 8
  %get_stock_icon_name = getelementptr inbounds %struct.ObjectClass_t, %struct.ObjectClass_t* %5, i32 0, i32 25
  %6 = load i8* ()*, i8* ()** %get_stock_icon_name, align 8
  %call1 = call i8* %6()
  call void (i8*, i8*, ...) @g_object_set(i8* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8* %call1, i8* null)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @render_url(%struct._GtkTreeViewColumn* %column, %struct._GtkCellRenderer* %cell, %struct._GtkTreeModel* %tree_model, %struct._GtkTreeIter* %iter, i8* %data) #0 {
entry:
  %column.addr = alloca %struct._GtkTreeViewColumn*, align 8
  %cell.addr = alloca %struct._GtkCellRenderer*, align 8
  %tree_model.addr = alloca %struct._GtkTreeModel*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %data.addr = alloca i8*, align 8
  %obj = alloca %struct.Object_t*, align 8
  store %struct._GtkTreeViewColumn* %column, %struct._GtkTreeViewColumn** %column.addr, align 8
  store %struct._GtkCellRenderer* %cell, %struct._GtkCellRenderer** %cell.addr, align 8
  store %struct._GtkTreeModel* %tree_model, %struct._GtkTreeModel** %tree_model.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %tree_model.addr, align 8
  %1 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %call = call %struct.Object_t* @selection_get_object(%struct._GtkTreeModel* %0, %struct._GtkTreeIter* %1)
  store %struct.Object_t* %call, %struct.Object_t** %obj, align 8
  %2 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell.addr, align 8
  %3 = bitcast %struct._GtkCellRenderer* %2 to i8*
  %4 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %url = getelementptr inbounds %struct.Object_t, %struct.Object_t* %4, i32 0, i32 5
  %5 = load i8*, i8** %url, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* %5, i8* null)
  ret void
}

declare void @gtk_tree_view_column_set_resizable(%struct._GtkTreeViewColumn*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @render_comment(%struct._GtkTreeViewColumn* %column, %struct._GtkCellRenderer* %cell, %struct._GtkTreeModel* %tree_model, %struct._GtkTreeIter* %iter, i8* %data) #0 {
entry:
  %column.addr = alloca %struct._GtkTreeViewColumn*, align 8
  %cell.addr = alloca %struct._GtkCellRenderer*, align 8
  %tree_model.addr = alloca %struct._GtkTreeModel*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %data.addr = alloca i8*, align 8
  %obj = alloca %struct.Object_t*, align 8
  store %struct._GtkTreeViewColumn* %column, %struct._GtkTreeViewColumn** %column.addr, align 8
  store %struct._GtkCellRenderer* %cell, %struct._GtkCellRenderer** %cell.addr, align 8
  store %struct._GtkTreeModel* %tree_model, %struct._GtkTreeModel** %tree_model.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %tree_model.addr, align 8
  %1 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %call = call %struct.Object_t* @selection_get_object(%struct._GtkTreeModel* %0, %struct._GtkTreeIter* %1)
  store %struct.Object_t* %call, %struct.Object_t** %obj, align 8
  %2 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell.addr, align 8
  %3 = bitcast %struct._GtkCellRenderer* %2 to i8*
  %4 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %comment = getelementptr inbounds %struct.Object_t, %struct.Object_t* %4, i32 0, i32 7
  %5 = load i8*, i8** %comment, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* %5, i8* null)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @render_target(%struct._GtkTreeViewColumn* %column, %struct._GtkCellRenderer* %cell, %struct._GtkTreeModel* %tree_model, %struct._GtkTreeIter* %iter, i8* %data) #0 {
entry:
  %column.addr = alloca %struct._GtkTreeViewColumn*, align 8
  %cell.addr = alloca %struct._GtkCellRenderer*, align 8
  %tree_model.addr = alloca %struct._GtkTreeModel*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %data.addr = alloca i8*, align 8
  %obj = alloca %struct.Object_t*, align 8
  store %struct._GtkTreeViewColumn* %column, %struct._GtkTreeViewColumn** %column.addr, align 8
  store %struct._GtkCellRenderer* %cell, %struct._GtkCellRenderer** %cell.addr, align 8
  store %struct._GtkTreeModel* %tree_model, %struct._GtkTreeModel** %tree_model.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %tree_model.addr, align 8
  %1 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %call = call %struct.Object_t* @selection_get_object(%struct._GtkTreeModel* %0, %struct._GtkTreeIter* %1)
  store %struct.Object_t* %call, %struct.Object_t** %obj, align 8
  %2 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell.addr, align 8
  %3 = bitcast %struct._GtkCellRenderer* %2 to i8*
  %4 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %target = getelementptr inbounds %struct.Object_t, %struct.Object_t* %4, i32 0, i32 6
  %5 = load i8*, i8** %target, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* %5, i8* null)
  ret void
}

declare %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment*, %struct._GtkAdjustment*) #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_scrolled_window_add_with_viewport(%struct._GtkScrolledWindow*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scrolled_window_get_type() #2

declare void @gtk_drag_dest_set(%struct._GtkWidget*, i32, %struct._GtkTargetEntry*, i32, i32) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @handle_drop(%struct._GtkWidget* %widget, %struct._GdkDragContext* %context, i32 %x, i32 %y, %struct._GtkSelectionData* %data, i32 %info, i32 %time) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %data.addr = alloca %struct._GtkSelectionData*, align 8
  %info.addr = alloca i32, align 4
  %time.addr = alloca i32, align 4
  %success = alloca i32, align 4
  %path = alloca %struct._GtkTreePath*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %obj = alloca %struct.Object_t*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct._GtkSelectionData* %data, %struct._GtkSelectionData** %data.addr, align 8
  store i32 %info, i32* %info.addr, align 4
  store i32 %time, i32* %time.addr, align 4
  store i32 0, i32* %success, align 4
  %0 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %data.addr, align 8
  %call = call i32 @gtk_selection_data_get_length(%struct._GtkSelectionData* %0)
  %cmp = icmp sge i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %data.addr, align 8
  %call1 = call i32 @gtk_selection_data_get_format(%struct._GtkSelectionData* %1)
  %cmp2 = icmp eq i32 %call1, 8
  br i1 %cmp2, label %if.then, label %if.end.20

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_tree_view_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkTreeView*
  %5 = load i32, i32* %x.addr, align 4
  %6 = load i32, i32* %y.addr, align 4
  %call5 = call i32 @gtk_tree_view_get_path_at_pos(%struct._GtkTreeView* %4, i32 %5, i32 %6, %struct._GtkTreePath** %path, %struct._GtkTreeViewColumn** null, i32* null, i32* null)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then.6, label %if.end.19

if.then.6:                                        ; preds = %if.then
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_tree_view_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call7)
  %9 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkTreeView*
  %call9 = call %struct._GtkTreeModel* @gtk_tree_view_get_model(%struct._GtkTreeView* %9)
  store %struct._GtkTreeModel* %call9, %struct._GtkTreeModel** %model, align 8
  %10 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %11 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %call10 = call i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel* %10, %struct._GtkTreeIter* %iter, %struct._GtkTreePath* %11)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.18

if.then.12:                                       ; preds = %if.then.6
  %12 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call13 = call %struct.Object_t* @selection_get_object(%struct._GtkTreeModel* %12, %struct._GtkTreeIter* %iter)
  store %struct.Object_t* %call13, %struct.Object_t** %obj, align 8
  %13 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %locked = getelementptr inbounds %struct.Object_t, %struct.Object_t* %13, i32 0, i32 4
  %14 = load i32, i32* %locked, align 4
  %tobool14 = icmp ne i32 %14, 0
  br i1 %tobool14, label %if.end, label %if.then.15

if.then.15:                                       ; preds = %if.then.12
  %15 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %call16 = call %struct.Command_t* @edit_object_command_new(%struct.Object_t* %15)
  call void @command_list_add(%struct.Command_t* %call16)
  %16 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %17 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %data.addr, align 8
  %call17 = call i8* @gtk_selection_data_get_data(%struct._GtkSelectionData* %17)
  call void @object_set_url(%struct.Object_t* %16, i8* %call17)
  %18 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  call void @object_emit_update_signal(%struct.Object_t* %18)
  store i32 1, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.15, %if.then.12
  br label %if.end.18

if.end.18:                                        ; preds = %if.end, %if.then.6
  %19 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %19)
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %land.lhs.true, %entry
  %20 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %21 = load i32, i32* %success, align 4
  %22 = load i32, i32* %time.addr, align 4
  call void @gtk_drag_finish(%struct._GdkDragContext* %20, i32 %21, i32 0, i32 %22)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @button_press_cb(%struct._GtkWidget* %widget, %struct._GdkEventButton* %event, %struct.Selection_t* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventButton*, align 8
  %data.addr = alloca %struct.Selection_t*, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %obj = alloca %struct.Object_t*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  store %struct.Selection_t* %data, %struct.Selection_t** %data.addr, align 8
  %0 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %0, i32 0, i32 8
  %1 = load i32, i32* %button, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end.19

if.then:                                          ; preds = %entry
  %2 = load %struct.Selection_t*, %struct.Selection_t** %data.addr, align 8
  %doubleclick = getelementptr inbounds %struct.Selection_t, %struct.Selection_t* %2, i32 0, i32 10
  %3 = load i32, i32* %doubleclick, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %4 = load %struct.Selection_t*, %struct.Selection_t** %data.addr, align 8
  %doubleclick2 = getelementptr inbounds %struct.Selection_t, %struct.Selection_t* %4, i32 0, i32 10
  store i32 0, i32* %doubleclick2, align 4
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call = call i64 @gtk_tree_view_get_type() #4
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call)
  %7 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkTreeView*
  %8 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %x = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %8, i32 0, i32 4
  %9 = load double, double* %x, align 8
  %conv = fptosi double %9 to i32
  %10 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %y = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %10, i32 0, i32 5
  %11 = load double, double* %y, align 8
  %conv4 = fptosi double %11 to i32
  %call5 = call i32 @gtk_tree_view_get_path_at_pos(%struct._GtkTreeView* %7, i32 %conv, i32 %conv4, %struct._GtkTreePath** %path, %struct._GtkTreeViewColumn** null, i32* null, i32* null)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.16

if.then.7:                                        ; preds = %if.then.1
  %12 = load %struct.Selection_t*, %struct.Selection_t** %data.addr, align 8
  %store = getelementptr inbounds %struct.Selection_t, %struct.Selection_t* %12, i32 0, i32 0
  %13 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %14 = bitcast %struct._GtkListStore* %13 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_tree_model_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call8)
  %15 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkTreeModel*
  %16 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %call10 = call i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel* %15, %struct._GtkTreeIter* %iter, %struct._GtkTreePath* %16)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then.7
  %17 = load %struct.Selection_t*, %struct.Selection_t** %data.addr, align 8
  %store13 = getelementptr inbounds %struct.Selection_t, %struct.Selection_t* %17, i32 0, i32 0
  %18 = load %struct._GtkListStore*, %struct._GtkListStore** %store13, align 8
  %19 = bitcast %struct._GtkListStore* %18 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_tree_model_get_type() #4
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call14)
  %20 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkTreeModel*
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %20, %struct._GtkTreeIter* %iter, i32 0, %struct.Object_t** %obj, i32 -1)
  %21 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  call void @object_edit(%struct.Object_t* %21, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then.12, %if.then.7
  %22 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %22)
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %if.then.1
  br label %if.end.18

if.else:                                          ; preds = %if.then
  %23 = load %struct.Selection_t*, %struct.Selection_t** %data.addr, align 8
  %doubleclick17 = getelementptr inbounds %struct.Selection_t, %struct.Selection_t* %23, i32 0, i32 10
  store i32 1, i32* %doubleclick17, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.end.16
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %entry
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @button_release_cb(%struct._GtkWidget* %widget, %struct._GdkEventButton* %event, %struct.Selection_t* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventButton*, align 8
  %data.addr = alloca %struct.Selection_t*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  store %struct.Selection_t* %data, %struct.Selection_t** %data.addr, align 8
  %0 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %0, i32 0, i32 8
  %1 = load i32, i32* %button, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.Selection_t*, %struct.Selection_t** %data.addr, align 8
  %doubleclick = getelementptr inbounds %struct.Selection_t, %struct.Selection_t* %2, i32 0, i32 10
  store i32 0, i32* %doubleclick, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

declare %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView*) #1

declare void @gtk_tree_selection_set_mode(%struct._GtkTreeSelection*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @changed_cb(%struct._GtkTreeSelection* %selection, i8* %param) #0 {
entry:
  %selection.addr = alloca %struct._GtkTreeSelection*, align 8
  %param.addr = alloca i8*, align 8
  %data = alloca %struct.Selection_t*, align 8
  %command = alloca %struct.Command_t*, align 8
  %sub_command = alloca %struct.Command_t*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %list = alloca %struct._GList*, align 8
  %selected_rows = alloca %struct._GList*, align 8
  %obj = alloca %struct.Object_t*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  store %struct._GtkTreeSelection* %selection, %struct._GtkTreeSelection** %selection.addr, align 8
  store i8* %param, i8** %param.addr, align 8
  %0 = load i8*, i8** %param.addr, align 8
  %1 = bitcast i8* %0 to %struct.Selection_t*
  store %struct.Selection_t* %1, %struct.Selection_t** %data, align 8
  %2 = load %struct.Selection_t*, %struct.Selection_t** %data, align 8
  %select_lock = getelementptr inbounds %struct.Selection_t, %struct.Selection_t* %2, i32 0, i32 9
  %3 = load i32, i32* %select_lock, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.Selection_t*, %struct.Selection_t** %data, align 8
  %select_lock1 = getelementptr inbounds %struct.Selection_t, %struct.Selection_t* %4, i32 0, i32 9
  store i32 0, i32* %select_lock1, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection.addr, align 8
  %call = call %struct._GList* @gtk_tree_selection_get_selected_rows(%struct._GtkTreeSelection* %5, %struct._GtkTreeModel** %model)
  store %struct._GList* %call, %struct._GList** %selected_rows, align 8
  %call2 = call %struct.Command_t* @subcommand_start(i8* null)
  store %struct.Command_t* %call2, %struct.Command_t** %command, align 8
  %6 = load %struct.Selection_t*, %struct.Selection_t** %data, align 8
  %object_list = getelementptr inbounds %struct.Selection_t, %struct.Selection_t* %6, i32 0, i32 5
  %7 = load %struct.ObjectList_t*, %struct.ObjectList_t** %object_list, align 8
  %call3 = call %struct.Command_t* @unselect_all_command_new(%struct.ObjectList_t* %7, %struct.Object_t* null)
  store %struct.Command_t* %call3, %struct.Command_t** %sub_command, align 8
  %8 = load %struct.Command_t*, %struct.Command_t** %command, align 8
  %9 = load %struct.Command_t*, %struct.Command_t** %sub_command, align 8
  call void @command_add_subcommand(%struct.Command_t* %8, %struct.Command_t* %9)
  %10 = load %struct._GList*, %struct._GList** %selected_rows, align 8
  store %struct._GList* %10, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %11 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool4 = icmp ne %struct._GList* %11, null
  br i1 %tobool4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct._GList*, %struct._GList** %list, align 8
  %data5 = getelementptr inbounds %struct._GList, %struct._GList* %12, i32 0, i32 0
  %13 = load i8*, i8** %data5, align 8
  %14 = bitcast i8* %13 to %struct._GtkTreePath*
  store %struct._GtkTreePath* %14, %struct._GtkTreePath** %path, align 8
  %15 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %16 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %call6 = call i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel* %15, %struct._GtkTreeIter* %iter, %struct._GtkTreePath* %16)
  %17 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %17, %struct._GtkTreeIter* %iter, i32 0, %struct.Object_t** %obj, i32 -1)
  %18 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %call7 = call %struct.Command_t* @select_command_new(%struct.Object_t* %18)
  store %struct.Command_t* %call7, %struct.Command_t** %sub_command, align 8
  %19 = load %struct.Command_t*, %struct.Command_t** %command, align 8
  %20 = load %struct.Command_t*, %struct.Command_t** %sub_command, align 8
  call void @command_add_subcommand(%struct.Command_t* %19, %struct.Command_t* %20)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %21, i32 0, i32 1
  %22 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %22, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load %struct.Command_t*, %struct.Command_t** %command, align 8
  %24 = load %struct.Command_t*, %struct.Command_t** %sub_command, align 8
  %name = getelementptr inbounds %struct.Command_t, %struct.Command_t* %24, i32 0, i32 2
  %25 = load i8*, i8** %name, align 8
  call void @command_set_name(%struct.Command_t* %23, i8* %25)
  call void @subcommand_end()
  %26 = load %struct.Command_t*, %struct.Command_t** %command, align 8
  call void @command_execute(%struct.Command_t* %26)
  %27 = load %struct._GList*, %struct._GList** %selected_rows, align 8
  call void @g_list_free_full(%struct._GList* %27, void (i8*)* bitcast (void (%struct._GtkTreePath*)* @gtk_tree_path_free to void (i8*)*))
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  ret void
}

declare i8* @object_list_add_add_cb(%struct.ObjectList_t*, void (%struct.Object_t*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @object_added_cb(%struct.Object_t* %obj, i8* %data) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %data.addr = alloca i8*, align 8
  %selection = alloca %struct.Selection_t*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %position = alloca i32, align 4
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.Selection_t*
  store %struct.Selection_t* %1, %struct.Selection_t** %selection, align 8
  %2 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %call = call i32 @object_get_position_in_list(%struct.Object_t* %2)
  store i32 %call, i32* %position, align 4
  %3 = load %struct.Selection_t*, %struct.Selection_t** %selection, align 8
  %nr_rows = getelementptr inbounds %struct.Selection_t, %struct.Selection_t* %3, i32 0, i32 7
  %4 = load i32, i32* %nr_rows, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %nr_rows, align 4
  %5 = load i32, i32* %position, align 4
  %6 = load %struct.Selection_t*, %struct.Selection_t** %selection, align 8
  %nr_rows1 = getelementptr inbounds %struct.Selection_t, %struct.Selection_t* %6, i32 0, i32 7
  %7 = load i32, i32* %nr_rows1, align 4
  %sub = sub nsw i32 %7, 1
  %cmp = icmp slt i32 %5, %sub
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load %struct.Selection_t*, %struct.Selection_t** %selection, align 8
  %store = getelementptr inbounds %struct.Selection_t, %struct.Selection_t* %8, i32 0, i32 0
  %9 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %10 = load i32, i32* %position, align 4
  call void @gtk_list_store_insert(%struct._GtkListStore* %9, %struct._GtkTreeIter* %iter, i32 %10)
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load %struct.Selection_t*, %struct.Selection_t** %selection, align 8
  %store2 = getelementptr inbounds %struct.Selection_t, %struct.Selection_t* %11, i32 0, i32 0
  %12 = load %struct._GtkListStore*, %struct._GtkListStore** %store2, align 8
  call void @gtk_list_store_append(%struct._GtkListStore* %12, %struct._GtkTreeIter* %iter)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load %struct.Selection_t*, %struct.Selection_t** %selection, align 8
  %store3 = getelementptr inbounds %struct.Selection_t, %struct.Selection_t* %13, i32 0, i32 0
  %14 = load %struct._GtkListStore*, %struct._GtkListStore** %store3, align 8
  %15 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %14, %struct._GtkTreeIter* %iter, i32 0, %struct.Object_t* %15, i32 -1)
  ret void
}

declare i8* @object_list_add_update_cb(%struct.ObjectList_t*, void (%struct.Object_t*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @object_updated_cb(%struct.Object_t* %obj, i8* %data) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %data.addr = alloca i8*, align 8
  %selection = alloca %struct.Selection_t*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.Selection_t*
  store %struct.Selection_t* %1, %struct.Selection_t** %selection, align 8
  %2 = load %struct.Selection_t*, %struct.Selection_t** %selection, align 8
  %3 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %call = call i32 @selection_find_object(%struct.Selection_t* %2, %struct.Object_t* %3, %struct._GtkTreeIter* %iter)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.Selection_t*, %struct.Selection_t** %selection, align 8
  %store = getelementptr inbounds %struct.Selection_t, %struct.Selection_t* %4, i32 0, i32 0
  %5 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %6 = bitcast %struct._GtkListStore* %5 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_tree_model_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call1)
  %7 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkTreeModel*
  %call3 = call %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel* %7, %struct._GtkTreeIter* %iter)
  store %struct._GtkTreePath* %call3, %struct._GtkTreePath** %path, align 8
  %8 = load %struct.Selection_t*, %struct.Selection_t** %selection, align 8
  %store4 = getelementptr inbounds %struct.Selection_t, %struct.Selection_t* %8, i32 0, i32 0
  %9 = load %struct._GtkListStore*, %struct._GtkListStore** %store4, align 8
  %10 = bitcast %struct._GtkListStore* %9 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_tree_model_get_type() #4
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call5)
  %11 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkTreeModel*
  %12 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_model_row_changed(%struct._GtkTreeModel* %11, %struct._GtkTreePath* %12, %struct._GtkTreeIter* %iter)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i8* @object_list_add_remove_cb(%struct.ObjectList_t*, void (%struct.Object_t*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @object_removed_cb(%struct.Object_t* %obj, i8* %data) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %data.addr = alloca i8*, align 8
  %selection = alloca %struct.Selection_t*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.Selection_t*
  store %struct.Selection_t* %1, %struct.Selection_t** %selection, align 8
  %2 = load %struct.Selection_t*, %struct.Selection_t** %selection, align 8
  %3 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %call = call i32 @selection_find_object(%struct.Selection_t* %2, %struct.Object_t* %3, %struct._GtkTreeIter* %iter)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.Selection_t*, %struct.Selection_t** %selection, align 8
  %store = getelementptr inbounds %struct.Selection_t, %struct.Selection_t* %4, i32 0, i32 0
  %5 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %6 = bitcast %struct._GtkListStore* %5 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_list_store_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call1)
  %7 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkListStore*
  %call3 = call i32 @gtk_list_store_remove(%struct._GtkListStore* %7, %struct._GtkTreeIter* %iter)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i8* @object_list_add_select_cb(%struct.ObjectList_t*, void (%struct.Object_t*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @object_selected_cb(%struct.Object_t* %obj, i8* %data) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %data.addr = alloca i8*, align 8
  %selection = alloca %struct.Selection_t*, align 8
  %position = alloca i32, align 4
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.Selection_t*
  store %struct.Selection_t* %1, %struct.Selection_t** %selection, align 8
  %2 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %call = call i32 @object_get_position_in_list(%struct.Object_t* %2)
  store i32 %call, i32* %position, align 4
  %3 = load %struct.Selection_t*, %struct.Selection_t** %selection, align 8
  %4 = load i32, i32* %position, align 4
  call void @selection_set_selected(%struct.Selection_t* %3, i32 %4)
  ret void
}

declare i8* @object_list_add_move_cb(%struct.ObjectList_t*, void (%struct.Object_t*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @object_moved_cb(%struct.Object_t* %obj, i8* %data) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %data.addr = alloca i8*, align 8
  %selection = alloca %struct.Selection_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.Selection_t*
  store %struct.Selection_t* %1, %struct.Selection_t** %selection, align 8
  %2 = load %struct.Selection_t*, %struct.Selection_t** %selection, align 8
  %select_lock = getelementptr inbounds %struct.Selection_t, %struct.Selection_t* %2, i32 0, i32 9
  store i32 1, i32* %select_lock, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @selection_toggle_visibility(%struct.Selection_t* %selection) #0 {
entry:
  %selection.addr = alloca %struct.Selection_t*, align 8
  store %struct.Selection_t* %selection, %struct.Selection_t** %selection.addr, align 8
  %0 = load %struct.Selection_t*, %struct.Selection_t** %selection.addr, align 8
  %is_visible = getelementptr inbounds %struct.Selection_t, %struct.Selection_t* %0, i32 0, i32 8
  %1 = load i32, i32* %is_visible, align 4
  %tobool = icmp ne i32 %1, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %2 = load %struct.Selection_t*, %struct.Selection_t** %selection.addr, align 8
  %is_visible1 = getelementptr inbounds %struct.Selection_t, %struct.Selection_t* %2, i32 0, i32 8
  store i32 %lnot.ext, i32* %is_visible1, align 4
  %3 = load %struct.Selection_t*, %struct.Selection_t** %selection.addr, align 8
  %container = getelementptr inbounds %struct.Selection_t, %struct.Selection_t* %3, i32 0, i32 2
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %container, align 8
  %5 = load %struct.Selection_t*, %struct.Selection_t** %selection.addr, align 8
  %is_visible2 = getelementptr inbounds %struct.Selection_t, %struct.Selection_t* %5, i32 0, i32 8
  %6 = load i32, i32* %is_visible2, align 4
  call void @gtk_widget_set_visible(%struct._GtkWidget* %4, i32 %6)
  ret void
}

declare void @gtk_widget_set_visible(%struct._GtkWidget*, i32) #1

; Function Attrs: nounwind uwtable
define void @selection_freeze(%struct.Selection_t* %selection) #0 {
entry:
  %selection.addr = alloca %struct.Selection_t*, align 8
  store %struct.Selection_t* %selection, %struct.Selection_t** %selection.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @selection_thaw(%struct.Selection_t* %selection) #0 {
entry:
  %selection.addr = alloca %struct.Selection_t*, align 8
  store %struct.Selection_t* %selection, %struct.Selection_t** %selection.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.Object_t* @selection_get_object(%struct._GtkTreeModel* %tree_model, %struct._GtkTreeIter* %iter) #0 {
entry:
  %tree_model.addr = alloca %struct._GtkTreeModel*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %obj = alloca %struct.Object_t*, align 8
  store %struct._GtkTreeModel* %tree_model, %struct._GtkTreeModel** %tree_model.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  %0 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %tree_model.addr, align 8
  %1 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %0, %struct._GtkTreeIter* %1, i32 0, %struct.Object_t** %obj, i32 -1)
  %2 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  ret %struct.Object_t* %2
}

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare i32 @object_get_position_in_list(%struct.Object_t*) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare void @g_free(i8*) #1

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #1

declare i32 @gtk_selection_data_get_length(%struct._GtkSelectionData*) #1

declare i32 @gtk_selection_data_get_format(%struct._GtkSelectionData*) #1

declare i32 @gtk_tree_view_get_path_at_pos(%struct._GtkTreeView*, i32, i32, %struct._GtkTreePath**, %struct._GtkTreeViewColumn**, i32*, i32*) #1

declare %struct._GtkTreeModel* @gtk_tree_view_get_model(%struct._GtkTreeView*) #1

declare i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreePath*) #1

declare void @command_list_add(%struct.Command_t*) #1

declare %struct.Command_t* @edit_object_command_new(%struct.Object_t*) #1

declare void @object_set_url(%struct.Object_t*, i8*) #1

declare i8* @gtk_selection_data_get_data(%struct._GtkSelectionData*) #1

declare void @object_emit_update_signal(%struct.Object_t*) #1

declare void @gtk_tree_path_free(%struct._GtkTreePath*) #1

declare void @gtk_drag_finish(%struct._GdkDragContext*, i32, i32, i32) #1

declare void @object_edit(%struct.Object_t*, i32) #1

declare %struct._GList* @gtk_tree_selection_get_selected_rows(%struct._GtkTreeSelection*, %struct._GtkTreeModel**) #1

declare %struct.Command_t* @subcommand_start(i8*) #1

declare %struct.Command_t* @unselect_all_command_new(%struct.ObjectList_t*, %struct.Object_t*) #1

declare void @command_add_subcommand(%struct.Command_t*, %struct.Command_t*) #1

declare %struct.Command_t* @select_command_new(%struct.Object_t*) #1

declare void @command_set_name(%struct.Command_t*, i8*) #1

declare void @subcommand_end() #1

declare void @command_execute(%struct.Command_t*) #1

declare void @g_list_free_full(%struct._GList*, void (i8*)*) #1

declare void @gtk_list_store_insert(%struct._GtkListStore*, %struct._GtkTreeIter*, i32) #1

declare void @gtk_list_store_append(%struct._GtkListStore*, %struct._GtkTreeIter*) #1

declare void @gtk_list_store_set(%struct._GtkListStore*, %struct._GtkTreeIter*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @selection_find_object(%struct.Selection_t* %selection, %struct.Object_t* %lookup, %struct._GtkTreeIter* %iter) #0 {
entry:
  %retval = alloca i32, align 4
  %selection.addr = alloca %struct.Selection_t*, align 8
  %lookup.addr = alloca %struct.Object_t*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %obj = alloca %struct.Object_t*, align 8
  store %struct.Selection_t* %selection, %struct.Selection_t** %selection.addr, align 8
  store %struct.Object_t* %lookup, %struct.Object_t** %lookup.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  %0 = load %struct.Selection_t*, %struct.Selection_t** %selection.addr, align 8
  %store = getelementptr inbounds %struct.Selection_t, %struct.Selection_t* %0, i32 0, i32 0
  %1 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %2 = bitcast %struct._GtkListStore* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_tree_model_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkTreeModel*
  %4 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %call2 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %3, %struct._GtkTreeIter* %4)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %5 = load %struct.Selection_t*, %struct.Selection_t** %selection.addr, align 8
  %store3 = getelementptr inbounds %struct.Selection_t, %struct.Selection_t* %5, i32 0, i32 0
  %6 = load %struct._GtkListStore*, %struct._GtkListStore** %store3, align 8
  %7 = bitcast %struct._GtkListStore* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_tree_model_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkTreeModel*
  %9 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %8, %struct._GtkTreeIter* %9, i32 0, %struct.Object_t** %obj, i32 -1)
  %10 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %11 = load %struct.Object_t*, %struct.Object_t** %lookup.addr, align 8
  %cmp = icmp eq %struct.Object_t* %10, %11
  br i1 %cmp, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %do.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %12 = load %struct.Selection_t*, %struct.Selection_t** %selection.addr, align 8
  %store7 = getelementptr inbounds %struct.Selection_t, %struct.Selection_t* %12, i32 0, i32 0
  %13 = load %struct._GtkListStore*, %struct._GtkListStore** %store7, align 8
  %14 = bitcast %struct._GtkListStore* %13 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_tree_model_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call8)
  %15 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkTreeModel*
  %16 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %call10 = call i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel* %15, %struct._GtkTreeIter* %16)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.12

if.end.12:                                        ; preds = %do.end, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.6
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare void @gtk_tree_model_row_changed(%struct._GtkTreeModel*, %struct._GtkTreePath*, %struct._GtkTreeIter*) #1

declare i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare i32 @gtk_list_store_remove(%struct._GtkListStore*, %struct._GtkTreeIter*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_list_store_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @selection_set_selected(%struct.Selection_t* %selection, i32 %row) #0 {
entry:
  %selection.addr = alloca %struct.Selection_t*, align 8
  %row.addr = alloca i32, align 4
  %iter = alloca %struct._GtkTreeIter, align 8
  %obj = alloca %struct.Object_t*, align 8
  store %struct.Selection_t* %selection, %struct.Selection_t** %selection.addr, align 8
  store i32 %row, i32* %row.addr, align 4
  %0 = load %struct.Selection_t*, %struct.Selection_t** %selection.addr, align 8
  %store = getelementptr inbounds %struct.Selection_t, %struct.Selection_t* %0, i32 0, i32 0
  %1 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %2 = bitcast %struct._GtkListStore* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_tree_model_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkTreeModel*
  %4 = load i32, i32* %row.addr, align 4
  %call2 = call i32 @gtk_tree_model_iter_nth_child(%struct._GtkTreeModel* %3, %struct._GtkTreeIter* %iter, %struct._GtkTreeIter* null, i32 %4)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %5 = load %struct.Selection_t*, %struct.Selection_t** %selection.addr, align 8
  %store3 = getelementptr inbounds %struct.Selection_t, %struct.Selection_t* %5, i32 0, i32 0
  %6 = load %struct._GtkListStore*, %struct._GtkListStore** %store3, align 8
  %7 = bitcast %struct._GtkListStore* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_tree_model_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkTreeModel*
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %8, %struct._GtkTreeIter* %iter, i32 0, %struct.Object_t** %obj, i32 -1)
  %9 = load %struct.Selection_t*, %struct.Selection_t** %selection.addr, align 8
  %select_lock = getelementptr inbounds %struct.Selection_t, %struct.Selection_t* %9, i32 0, i32 9
  store i32 1, i32* %select_lock, align 4
  %10 = load %struct.Object_t*, %struct.Object_t** %obj, align 8
  %selected = getelementptr inbounds %struct.Object_t, %struct.Object_t* %10, i32 0, i32 3
  %11 = load i32, i32* %selected, align 4
  %tobool6 = icmp ne i32 %11, 0
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then
  %12 = load %struct.Selection_t*, %struct.Selection_t** %selection.addr, align 8
  %selection8 = getelementptr inbounds %struct.Selection_t, %struct.Selection_t* %12, i32 0, i32 1
  %13 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection8, align 8
  call void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection* %13, %struct._GtkTreeIter* %iter)
  br label %if.end

if.else:                                          ; preds = %if.then
  %14 = load %struct.Selection_t*, %struct.Selection_t** %selection.addr, align 8
  %selection9 = getelementptr inbounds %struct.Selection_t, %struct.Selection_t* %14, i32 0, i32 1
  %15 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection9, align 8
  call void @gtk_tree_selection_unselect_iter(%struct._GtkTreeSelection* %15, %struct._GtkTreeIter* %iter)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.7
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  ret void
}

declare i32 @gtk_tree_model_iter_nth_child(%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i32) #1

declare void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection*, %struct._GtkTreeIter*) #1

declare void @gtk_tree_selection_unselect_iter(%struct._GtkTreeSelection*, %struct._GtkTreeIter*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
