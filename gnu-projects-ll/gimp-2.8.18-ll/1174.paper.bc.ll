; ModuleID = './plug-ins/gimpressionist/paper.bc'
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
%struct.gimpressionist_vals_t = type { i32, double, double, i32, double, double, double, double, i32, double, double, double, i32, i32, [200 x i8], [200 x i8], %struct._GimpRGB, i32, i32, [50 x %struct.vector], i32, i32, double, double, double, i32, i32, i32, i32, i32, double, i32, double, double, i32, double, [50 x %struct.smvector], i32, double, i32, i32, i32, i32, double }
%struct._GimpRGB = type { double, double, double, double }
%struct.vector = type { double, double, double, double, double, double, i32 }
%struct.smvector = type { double, double, double, double }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkNotebook = type { %struct._GtkContainer, i8*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GtkWidget*, %struct._GdkDrawable*, i32, i16, i16, i24 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkTreeSelection = type { %struct._GObject, %struct._GtkTreeView*, i32, i32 (%struct._GtkTreeSelection*, %struct._GtkTreeModel*, %struct._GtkTreePath*, i32, i8*)*, i8*, void (i8*)* }
%struct._GtkTreeView = type { %struct._GtkContainer, %struct._GtkTreeViewPrivate* }
%struct._GtkTreeViewPrivate = type opaque
%struct._GtkTreeModel = type opaque
%struct._GtkTreePath = type opaque
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GtkListStore = type { %struct._GObject, i32, i8*, i8*, %struct._GList*, i32, i32, i32, i64*, i32, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct.ppm = type { i32, i32, i8* }
%struct._GimpPreviewArea = type { %struct._GtkDrawingArea, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }

@paper_list = internal global %struct._GtkWidget* null, align 8
@pcvals = external global %struct.gimpressionist_vals_t, align 8
@paper_relief_adjust = internal global %struct._GtkObject* null, align 8
@paper_scale_adjust = internal global %struct._GtkObject* null, align 8
@paper_invert = internal global %struct._GtkWidget* null, align 8
@paper_overlay = internal global %struct._GtkWidget* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"P_aper\00", align 1
@paper_preview = internal global %struct._GtkWidget* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"_Invert\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Inverts the Papers texture\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"O_verlay\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"Applies the paper as it is (without embossing it)\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Scale:\00", align 1
@.str.7 = private unnamed_addr constant [65 x i8] c"Specifies the scale of the texture (in percent of original file)\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Relief:\00", align 1
@.str.10 = private unnamed_addr constant [69 x i8] c"Specifies the amount of embossing to apply to the image (in percent)\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"Paper\00", align 1

; Function Attrs: nounwind uwtable
define void @paper_restore() #0 {
entry:
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @paper_list, align 8
  call void @reselect(%struct._GtkWidget* %0, i8* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 15, i32 0))
  %1 = load %struct._GtkObject*, %struct._GtkObject** @paper_relief_adjust, align 8
  %2 = bitcast %struct._GtkObject* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_adjustment_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkAdjustment*
  %4 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 10), align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %3, double %4)
  %5 = load %struct._GtkObject*, %struct._GtkObject** @paper_scale_adjust, align 8
  %6 = bitcast %struct._GtkObject* %5 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_adjustment_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call2)
  %7 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkAdjustment*
  %8 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 11), align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %7, double %8)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** @paper_invert, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_toggle_button_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call4)
  %11 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkToggleButton*
  %12 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 12), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %11, i32 %12)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** @paper_overlay, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_toggle_button_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call6)
  %15 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkToggleButton*
  %16 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 26), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %15, i32 %16)
  ret void
}

declare void @reselect(%struct._GtkWidget*, i8*) #1

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #2

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #2

; Function Attrs: nounwind uwtable
define void @paper_store() #0 {
entry:
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @paper_invert, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %2)
  store i32 %call2, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 12), align 4
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** @paper_invert, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_toggle_button_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkToggleButton*
  %call5 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %5)
  store i32 %call5, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 12), align 4
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** @paper_overlay, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_toggle_button_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call6)
  %8 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkToggleButton*
  %call8 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %8)
  store i32 %call8, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 26), align 4
  ret void
}

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #1

; Function Attrs: nounwind uwtable
define void @create_paperpage(%struct._GtkNotebook* %notebook) #0 {
entry:
  %notebook.addr = alloca %struct._GtkNotebook*, align 8
  %box1 = alloca %struct._GtkWidget*, align 8
  %thispage = alloca %struct._GtkWidget*, align 8
  %box2 = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %tmpw = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %view = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %selection = alloca %struct._GtkTreeSelection*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %paper_store_list = alloca %struct._GtkListStore*, align 8
  store %struct._GtkNotebook* %notebook, %struct._GtkNotebook** %notebook.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %label, align 8
  %call2 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %thispage, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %thispage, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_container_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call3)
  %2 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %2, i32 12)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %thispage, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %3)
  %call5 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %box1, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %thispage, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_box_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call6)
  %6 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkBox*
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %box1, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %6, %struct._GtkWidget* %7, i32 1, i32 1, i32 0)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %box1, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %8)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %box1, align 8
  %call8 = call %struct._GtkWidget* @create_one_column_list(%struct._GtkWidget* %9, void (%struct._GtkTreeSelection*, i8*)* @paper_select)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %view, align 8
  store %struct._GtkWidget* %call8, %struct._GtkWidget** @paper_list, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_tree_view_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call9)
  %12 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkTreeView*
  %call11 = call %struct._GtkTreeModel* @gtk_tree_view_get_model(%struct._GtkTreeView* %12)
  %13 = bitcast %struct._GtkTreeModel* %call11 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_list_store_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call12)
  %14 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkListStore*
  store %struct._GtkListStore* %14, %struct._GtkListStore** %paper_store_list, align 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_tree_view_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call14)
  %17 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkTreeView*
  %call16 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %17)
  store %struct._GtkTreeSelection* %call16, %struct._GtkTreeSelection** %selection, align 8
  %call17 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %box2, align 8
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %box1, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_box_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call18)
  %20 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkBox*
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %box2, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %20, %struct._GtkWidget* %21, i32 0, i32 0, i32 0)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %box2, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %22)
  %call20 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %frame, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_frame_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call21)
  %25 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %25, i32 1)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %box2, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_box_get_type() #5
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call23)
  %28 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkBox*
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %28, %struct._GtkWidget* %29, i32 0, i32 0, i32 0)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %30)
  %call25 = call %struct._GtkWidget* @gimp_preview_area_new()
  store %struct._GtkWidget* %call25, %struct._GtkWidget** %tmpw, align 8
  store %struct._GtkWidget* %call25, %struct._GtkWidget** @paper_preview, align 8
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %31, i32 100, i32 100)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_container_get_type() #5
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call26)
  %34 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkContainer*
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_container_add(%struct._GtkContainer* %34, %struct._GtkWidget* %35)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %36)
  %call28 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0)) #4
  %call29 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call28)
  store %struct._GtkWidget* %call29, %struct._GtkWidget** %tmpw, align 8
  store %struct._GtkWidget* %call29, %struct._GtkWidget** @paper_invert, align 8
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %box2, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_box_get_type() #5
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call30)
  %39 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkBox*
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %39, %struct._GtkWidget* %40, i32 0, i32 0, i32 0)
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_toggle_button_get_type() #5
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call32)
  %43 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %43, i32 0)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %44)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %46 = bitcast %struct._GtkWidget* %45 to i8*
  %47 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection, align 8
  %48 = bitcast %struct._GtkTreeSelection* %47 to i8*
  %call34 = call i64 @g_signal_connect_data(i8* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), void ()* bitcast (void (%struct._GtkTreeSelection*, i8*)* @paper_select to void ()*), i8* %48, void (i8*, %struct._GClosure*)* null, i32 2)
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %call35 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %49, i8* %call35, i8* null)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_toggle_button_get_type() #5
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call36)
  %52 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkToggleButton*
  %53 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 12), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %52, i32 %53)
  %call38 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0)) #4
  %call39 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call38)
  store %struct._GtkWidget* %call39, %struct._GtkWidget** %tmpw, align 8
  store %struct._GtkWidget* %call39, %struct._GtkWidget** @paper_overlay, align 8
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %box2, align 8
  %55 = bitcast %struct._GtkWidget* %54 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_box_get_type() #5
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call40)
  %56 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkBox*
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %56, %struct._GtkWidget* %57, i32 0, i32 0, i32 0)
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %59 = bitcast %struct._GtkWidget* %58 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_toggle_button_get_type() #5
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call42)
  %60 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %60, i32 0)
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %61)
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %call44 = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %62, i8* %call44, i8* null)
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %64 = bitcast %struct._GtkWidget* %63 to %struct._GTypeInstance*
  %call45 = call i64 @gtk_toggle_button_get_type() #5
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call45)
  %65 = bitcast %struct._GTypeInstance* %call46 to %struct._GtkToggleButton*
  %66 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 26), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %65, i32 %66)
  %call47 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 3, i32 0)
  store %struct._GtkWidget* %call47, %struct._GtkWidget** %table, align 8
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %68 = bitcast %struct._GtkWidget* %67 to %struct._GTypeInstance*
  %call48 = call i64 @gtk_table_get_type() #5
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call48)
  %69 = bitcast %struct._GTypeInstance* %call49 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %69, i32 6)
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %71 = bitcast %struct._GtkWidget* %70 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_table_get_type() #5
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call50)
  %72 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %72, i32 6)
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %thispage, align 8
  %74 = bitcast %struct._GtkWidget* %73 to %struct._GTypeInstance*
  %call52 = call i64 @gtk_box_get_type() #5
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call52)
  %75 = bitcast %struct._GTypeInstance* %call53 to %struct._GtkBox*
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %75, %struct._GtkWidget* %76, i32 0, i32 0, i32 0)
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %77)
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %79 = bitcast %struct._GtkWidget* %78 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_table_get_type() #5
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call54)
  %80 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkTable*
  %call56 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0)) #4
  %81 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 11), align 8
  %call57 = call i8* @gettext(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.7, i32 0, i32 0)) #4
  %call58 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %80, i32 0, i32 0, i8* %call56, i32 150, i32 -1, double %81, double 3.000000e+00, double 1.500000e+02, double 1.000000e+00, double 1.000000e+01, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call57, i8* null)
  store %struct._GtkObject* %call58, %struct._GtkObject** @paper_scale_adjust, align 8
  %82 = load %struct._GtkObject*, %struct._GtkObject** @paper_scale_adjust, align 8
  %83 = bitcast %struct._GtkObject* %82 to i8*
  %call59 = call i64 @g_signal_connect_data(i8* %83, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 11) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %85 = bitcast %struct._GtkWidget* %84 to %struct._GTypeInstance*
  %call60 = call i64 @gtk_table_get_type() #5
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %85, i64 %call60)
  %86 = bitcast %struct._GTypeInstance* %call61 to %struct._GtkTable*
  %call62 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0)) #4
  %87 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 10), align 8
  %call63 = call i8* @gettext(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.10, i32 0, i32 0)) #4
  %call64 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %86, i32 0, i32 1, i8* %call62, i32 150, i32 -1, double %87, double 0.000000e+00, double 1.000000e+02, double 1.000000e+00, double 1.000000e+01, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call63, i8* null)
  store %struct._GtkObject* %call64, %struct._GtkObject** @paper_relief_adjust, align 8
  %88 = load %struct._GtkObject*, %struct._GtkObject** @paper_relief_adjust, align 8
  %89 = bitcast %struct._GtkObject* %88 to i8*
  %call65 = call i64 @g_signal_connect_data(i8* %89, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 10) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %90 = load %struct._GtkListStore*, %struct._GtkListStore** %paper_store_list, align 8
  %91 = bitcast %struct._GtkListStore* %90 to %struct._GTypeInstance*
  %call66 = call i64 @gtk_tree_model_get_type() #5
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %91, i64 %call66)
  %92 = bitcast %struct._GTypeInstance* %call67 to %struct._GtkTreeModel*
  %call68 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %92, %struct._GtkTreeIter* %iter)
  %tobool = icmp ne i32 %call68, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %93 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection, align 8
  call void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection* %93, %struct._GtkTreeIter* %iter)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %94 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection, align 8
  call void @paper_select(%struct._GtkTreeSelection* %94, i8* null)
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @readdirintolist(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), %struct._GtkWidget* %95, i8* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 15, i32 0))
  %96 = load %struct._GtkNotebook*, %struct._GtkNotebook** %notebook.addr, align 8
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %thispage, align 8
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %call69 = call i32 @gtk_notebook_append_page_menu(%struct._GtkNotebook* %96, %struct._GtkWidget* %97, %struct._GtkWidget* %98, %struct._GtkWidget* null)
  ret void
}

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare %struct._GtkWidget* @create_one_column_list(%struct._GtkWidget*, void (%struct._GtkTreeSelection*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal void @paper_select(%struct._GtkTreeSelection* %selection, i8* %data) #0 {
entry:
  %selection.addr = alloca %struct._GtkTreeSelection*, align 8
  %data.addr = alloca i8*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %paper = alloca i8*, align 8
  %fname = alloca i8*, align 8
  store %struct._GtkTreeSelection* %selection, %struct._GtkTreeSelection** %selection.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection.addr, align 8
  %call = call i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection* %0, %struct._GtkTreeModel** %model, %struct._GtkTreeIter* %iter)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %1, %struct._GtkTreeIter* %iter, i32 0, i8** %paper, i32 -1)
  %2 = load i8*, i8** %paper, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %3 = load i8*, i8** %paper, align 8
  %call3 = call noalias i8* (i8*, ...) @g_build_filename(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8* %3, i8* null)
  store i8* %call3, i8** %fname, align 8
  %4 = load i8*, i8** %fname, align 8
  %call4 = call i64 @g_strlcpy(i8* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 15, i32 0), i8* %4, i64 200)
  call void @paper_update_preview()
  %5 = load i8*, i8** %fname, align 8
  call void @g_free(i8* %5)
  %6 = load i8*, i8** %paper, align 8
  call void @g_free(i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  ret void
}

declare %struct._GtkTreeModel* @gtk_tree_view_get_model(%struct._GtkTreeView*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_view_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gtk_list_store_get_type() #2

declare %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView*) #1

declare %struct._GtkWidget* @gtk_frame_new(i8*) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #2

declare %struct._GtkWidget* @gimp_preview_area_new() #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #2

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare void @gimp_double_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_model_get_type() #2

declare void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection*, %struct._GtkTreeIter*) #1

declare void @readdirintolist(i8*, %struct._GtkWidget*, i8*) #1

declare i32 @gtk_notebook_append_page_menu(%struct._GtkNotebook*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*) #1

declare i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection*, %struct._GtkTreeModel**, %struct._GtkTreeIter*) #1

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #1

declare noalias i8* @g_build_filename(i8*, ...) #1

declare i64 @g_strlcpy(i8*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @paper_update_preview() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %buf = alloca i8*, align 8
  %paper_preview_buffer = alloca i8*, align 8
  %sc = alloca double, align 8
  %p = alloca %struct.ppm, align 8
  %k = alloca i32, align 4
  %0 = bitcast %struct.ppm* %p to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 16, i32 8, i1 false)
  call void @ppm_load(i8* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 15, i32 0), %struct.ppm* %p)
  %width = getelementptr inbounds %struct.ppm, %struct.ppm* %p, i32 0, i32 0
  %1 = load i32, i32* %width, align 4
  %height = getelementptr inbounds %struct.ppm, %struct.ppm* %p, i32 0, i32 1
  %2 = load i32, i32* %height, align 4
  %cmp = icmp sgt i32 %1, %2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %width1 = getelementptr inbounds %struct.ppm, %struct.ppm* %p, i32 0, i32 0
  %3 = load i32, i32* %width1, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %height2 = getelementptr inbounds %struct.ppm, %struct.ppm* %p, i32 0, i32 1
  %4 = load i32, i32* %height2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ %4, %cond.false ]
  %conv = sitofp i32 %cond to double
  store double %conv, double* %sc, align 8
  %5 = load double, double* %sc, align 8
  %div = fdiv double 1.000000e+02, %5
  store double %div, double* %sc, align 8
  %width3 = getelementptr inbounds %struct.ppm, %struct.ppm* %p, i32 0, i32 0
  %6 = load i32, i32* %width3, align 4
  %conv4 = sitofp i32 %6 to double
  %7 = load double, double* %sc, align 8
  %mul = fmul double %conv4, %7
  %conv5 = fptosi double %mul to i32
  %height6 = getelementptr inbounds %struct.ppm, %struct.ppm* %p, i32 0, i32 1
  %8 = load i32, i32* %height6, align 4
  %conv7 = sitofp i32 %8 to double
  %9 = load double, double* %sc, align 8
  %mul8 = fmul double %conv7, %9
  %conv9 = fptosi double %mul8 to i32
  call void @resize(%struct.ppm* %p, i32 %conv5, i32 %conv9)
  %call = call noalias i8* @g_malloc0_n(i64 10000, i64 1)
  store i8* %call, i8** %paper_preview_buffer, align 8
  store i32 0, i32* %i, align 4
  %10 = load i8*, i8** %paper_preview_buffer, align 8
  store i8* %10, i8** %buf, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.45, %cond.end
  %11 = load i32, i32* %i, align 4
  %cmp10 = icmp slt i32 %11, 100
  br i1 %cmp10, label %for.body, label %for.end.47

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4
  %width12 = getelementptr inbounds %struct.ppm, %struct.ppm* %p, i32 0, i32 0
  %13 = load i32, i32* %width12, align 4
  %mul13 = mul nsw i32 %12, %13
  %mul14 = mul nsw i32 %mul13, 3
  store i32 %mul14, i32* %k, align 4
  %14 = load i32, i32* %i, align 4
  %height15 = getelementptr inbounds %struct.ppm, %struct.ppm* %p, i32 0, i32 1
  %15 = load i32, i32* %height15, align 4
  %cmp16 = icmp slt i32 %14, %15
  br i1 %cmp16, label %if.then, label %if.end.44

if.then:                                          ; preds = %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc, %if.then
  %16 = load i32, i32* %j, align 4
  %width19 = getelementptr inbounds %struct.ppm, %struct.ppm* %p, i32 0, i32 0
  %17 = load i32, i32* %width19, align 4
  %cmp20 = icmp slt i32 %16, %17
  br i1 %cmp20, label %for.body.22, label %for.end

for.body.22:                                      ; preds = %for.cond.18
  %18 = load i32, i32* %k, align 4
  %19 = load i32, i32* %j, align 4
  %mul23 = mul nsw i32 %19, 3
  %add = add nsw i32 %18, %mul23
  %idxprom = sext i32 %add to i64
  %col = getelementptr inbounds %struct.ppm, %struct.ppm* %p, i32 0, i32 2
  %20 = load i8*, i8** %col, align 8
  %arrayidx = getelementptr inbounds i8, i8* %20, i64 %idxprom
  %21 = load i8, i8* %arrayidx, align 1
  %22 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %22 to i64
  %23 = load i8*, i8** %buf, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %23, i64 %idxprom24
  store i8 %21, i8* %arrayidx25, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.22
  %24 = load i32, i32* %j, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.18

for.end:                                          ; preds = %for.cond.18
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** @paper_invert, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_toggle_button_get_type() #5
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call26)
  %27 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkToggleButton*
  %call28 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %27)
  %tobool = icmp ne i32 %call28, 0
  br i1 %tobool, label %if.then.29, label %if.end

if.then.29:                                       ; preds = %for.end
  store i32 0, i32* %j, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.41, %if.then.29
  %28 = load i32, i32* %j, align 4
  %width31 = getelementptr inbounds %struct.ppm, %struct.ppm* %p, i32 0, i32 0
  %29 = load i32, i32* %width31, align 4
  %cmp32 = icmp slt i32 %28, %29
  br i1 %cmp32, label %for.body.34, label %for.end.43

for.body.34:                                      ; preds = %for.cond.30
  %30 = load i32, i32* %j, align 4
  %idxprom35 = sext i32 %30 to i64
  %31 = load i8*, i8** %buf, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %31, i64 %idxprom35
  %32 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %32 to i32
  %sub = sub nsw i32 255, %conv37
  %conv38 = trunc i32 %sub to i8
  %33 = load i32, i32* %j, align 4
  %idxprom39 = sext i32 %33 to i64
  %34 = load i8*, i8** %buf, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %34, i64 %idxprom39
  store i8 %conv38, i8* %arrayidx40, align 1
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.body.34
  %35 = load i32, i32* %j, align 4
  %inc42 = add nsw i32 %35, 1
  store i32 %inc42, i32* %j, align 4
  br label %for.cond.30

for.end.43:                                       ; preds = %for.cond.30
  br label %if.end

if.end:                                           ; preds = %for.end.43, %for.end
  br label %if.end.44

if.end.44:                                        ; preds = %if.end, %for.body
  br label %for.inc.45

for.inc.45:                                       ; preds = %if.end.44
  %36 = load i32, i32* %i, align 4
  %inc46 = add nsw i32 %36, 1
  store i32 %inc46, i32* %i, align 4
  %37 = load i8*, i8** %buf, align 8
  %add.ptr = getelementptr inbounds i8, i8* %37, i64 100
  store i8* %add.ptr, i8** %buf, align 8
  br label %for.cond

for.end.47:                                       ; preds = %for.cond
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** @paper_preview, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_preview_area_get_type() #5
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call48)
  %40 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpPreviewArea*
  %41 = load i8*, i8** %paper_preview_buffer, align 8
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %40, i32 0, i32 0, i32 100, i32 100, i32 2, i8* %41, i32 100)
  call void @ppm_kill(%struct.ppm* %p)
  %42 = load i8*, i8** %paper_preview_buffer, align 8
  call void @g_free(i8* %42)
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** @paper_preview, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %43)
  ret void
}

declare void @g_free(i8*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare void @ppm_load(i8*, %struct.ppm*) #1

declare void @resize(%struct.ppm*, i32, i32) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare void @gimp_preview_area_draw(%struct._GimpPreviewArea*, i32, i32, i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_area_get_type() #2

declare void @ppm_kill(%struct.ppm*) #1

declare void @gtk_widget_queue_draw(%struct._GtkWidget*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
