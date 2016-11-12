; ModuleID = './plug-ins/gimpressionist/brush.bc'
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
%struct.ppm = type { i32, i32, i8* }
%struct._GtkListStore = type { %struct._GObject, i32, i8*, i8*, %struct._GList*, i32, i32, i32, i64*, i32, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkTreeModel = type opaque
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GtkNotebook = type { %struct._GtkContainer, i8*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GtkWidget*, %struct._GdkDrawable*, i32, i16, i16, i24 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkSizeGroup = type { %struct._GObject, %struct._GSList*, i8, i8, %struct._GtkRequisition }
%struct._GtkTreeSelection = type { %struct._GObject, %struct._GtkTreeView*, i32, i32 (%struct._GtkTreeSelection*, %struct._GtkTreeModel*, %struct._GtkTreePath*, i32, i8*)*, i8*, void (i8*)* }
%struct._GtkTreeView = type { %struct._GtkContainer, %struct._GtkTreeViewPrivate* }
%struct._GtkTreeViewPrivate = type opaque
%struct._GtkTreePath = type opaque
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._GtkScale = type { %struct._GtkRange, i32, i8 }
%struct._GtkRange = type { %struct._GtkWidget, %struct._GtkAdjustment*, i32, i8, i32, i32, %struct._GdkRectangle, i32, i32, i32, i8, %struct._GtkRangeLayout*, %struct._GtkRangeStepTimer*, i32, i32, i32, %struct._GdkDrawable* }
%struct._GtkRangeLayout = type opaque
%struct._GtkRangeStepTimer = type opaque
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GimpPreviewArea = type { %struct._GtkDrawingArea, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkFileChooser = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@brush_list = internal global %struct._GtkWidget* null, align 8
@pcvals = external global %struct.gimpressionist_vals_t, align 8
@brush_gamma_adjust = internal global %struct._GtkAdjustment* null, align 8
@brush_relief_adjust = internal global %struct._GtkAdjustment* null, align 8
@brush_aspect_adjust = internal global %struct._GtkAdjustment* null, align 8
@last_selected_brush = internal global i8* null, align 8
@brush_from_file = internal global i32 2, align 4
@brushppm = internal global %struct.ppm zeroinitializer, align 8
@brush_reload.lastfn = internal global [256 x i8] zeroinitializer, align 16
@brush_reload.cache = internal global %struct.ppm zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c"_Brush\00", align 1
@brush_list_store = internal global %struct._GtkListStore* null, align 8
@brush_preview = internal global %struct._GtkWidget* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"size-allocate\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Gamma:\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"Changes the gamma (brightness) of the selected brush\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Select:\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"gtk-save-as\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"Aspect ratio:\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"Specifies the aspect ratio of the brush\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"Relief:\00", align 1
@.str.12 = private unnamed_addr constant [69 x i8] c"Specifies the amount of embossing to apply to the image (in percent)\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"Brushes\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c".ppm\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"Can only save drawables!\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"Save Brush\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"gtk-save\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@brush_dont_update = internal global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @brush_restore() #0 {
entry:
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @brush_list, align 8
  call void @reselect(%struct._GtkWidget* %0, i8* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 14, i32 0))
  %1 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** @brush_gamma_adjust, align 8
  %2 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 7), align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %1, double %2)
  %3 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** @brush_relief_adjust, align 8
  %4 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 4), align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %3, double %4)
  %5 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** @brush_aspect_adjust, align 8
  %6 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 22), align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %5, double %6)
  ret void
}

declare void @reselect(%struct._GtkWidget*, i8*) #1

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

; Function Attrs: nounwind uwtable
define void @brush_store() #0 {
entry:
  %0 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** @brush_gamma_adjust, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %0)
  store double %call, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 7), align 8
  ret void
}

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

; Function Attrs: nounwind uwtable
define void @brush_free() #0 {
entry:
  %0 = load i8*, i8** @last_selected_brush, align 8
  call void @g_free(i8* %0)
  ret void
}

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define void @brush_get_selected(%struct.ppm* %p) #0 {
entry:
  %p.addr = alloca %struct.ppm*, align 8
  store %struct.ppm* %p, %struct.ppm** %p.addr, align 8
  %0 = load i32, i32* @brush_from_file, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  call void @brush_reload(i8* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 14, i32 0), %struct.ppm* %1)
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  call void @ppm_copy(%struct.ppm* @brushppm, %struct.ppm* %2)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @brush_reload(i8* %fn, %struct.ppm* %p) #0 {
entry:
  %fn.addr = alloca i8*, align 8
  %p.addr = alloca %struct.ppm*, align 8
  store i8* %fn, i8** %fn.addr, align 8
  store %struct.ppm* %p, %struct.ppm** %p.addr, align 8
  %0 = load i8*, i8** %fn.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @ppm_kill(%struct.ppm* @brush_reload.cache)
  store i8 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @brush_reload.lastfn, i32 0, i64 0), align 1
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %fn.addr, align 8
  %call = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @brush_reload.lastfn, i32 0, i32 0)) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %if.end
  %2 = load i8*, i8** %fn.addr, align 8
  %call2 = call i64 @g_strlcpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @brush_reload.lastfn, i32 0, i32 0), i8* %2, i64 256)
  call void @ppm_kill(%struct.ppm* @brush_reload.cache)
  %3 = load i8*, i8** %fn.addr, align 8
  call void @ppm_load(i8* %3, %struct.ppm* @brush_reload.cache)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %if.end
  %4 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  call void @ppm_copy(%struct.ppm* @brush_reload.cache, %struct.ppm* %4)
  %5 = load i8*, i8** %fn.addr, align 8
  call void @set_colorbrushes(i8* %5)
  br label %return

return:                                           ; preds = %if.end.3, %if.then
  ret void
}

declare void @ppm_copy(%struct.ppm*, %struct.ppm*) #1

; Function Attrs: nounwind uwtable
define void @set_colorbrushes(i8* %fn) #0 {
entry:
  %fn.addr = alloca i8*, align 8
  store i8* %fn, i8** %fn.addr, align 8
  %0 = load i8*, i8** %fn.addr, align 8
  %call = call i32 @file_is_color(i8* %0)
  store i32 %call, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 28), align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @file_is_color(i8* %fn) #0 {
entry:
  %fn.addr = alloca i8*, align 8
  store i8* %fn, i8** %fn.addr, align 8
  %0 = load i8*, i8** %fn.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i8*, i8** %fn.addr, align 8
  %call = call i8* @strstr(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0)) #6
  %tobool1 = icmp ne i8* %call, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ]
  %land.ext = zext i1 %2 to i32
  ret i32 %land.ext
}

declare void @ppm_kill(%struct.ppm*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare i64 @g_strlcpy(i8*, i8*, i64) #1

declare void @ppm_load(i8*, %struct.ppm*) #1

; Function Attrs: nounwind uwtable
define void @create_brushpage(%struct._GtkNotebook* %notebook) #0 {
entry:
  %notebook.addr = alloca %struct._GtkNotebook*, align 8
  %box1 = alloca %struct._GtkWidget*, align 8
  %box2 = alloca %struct._GtkWidget*, align 8
  %box3 = alloca %struct._GtkWidget*, align 8
  %thispage = alloca %struct._GtkWidget*, align 8
  %view = alloca %struct._GtkWidget*, align 8
  %tmpw = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %group = alloca %struct._GtkSizeGroup*, align 8
  %selection = alloca %struct._GtkTreeSelection*, align 8
  store %struct._GtkNotebook* %notebook, %struct._GtkNotebook** %notebook.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)) #5
  %call1 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %label, align 8
  %call2 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %thispage, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %thispage, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_container_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call3)
  %2 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %2, i32 12)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %thispage, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %3)
  %call5 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %box1, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %thispage, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_box_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call6)
  %6 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkBox*
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %box1, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %6, %struct._GtkWidget* %7, i32 1, i32 1, i32 0)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %box1, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %8)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %box1, align 8
  %call8 = call %struct._GtkWidget* @create_one_column_list(%struct._GtkWidget* %9, void (%struct._GtkTreeSelection*, i8*)* @brush_select_file)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %view, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  store %struct._GtkWidget* %10, %struct._GtkWidget** @brush_list, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_tree_view_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call9)
  %13 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkTreeView*
  %call11 = call %struct._GtkTreeModel* @gtk_tree_view_get_model(%struct._GtkTreeView* %13)
  %14 = bitcast %struct._GtkTreeModel* %call11 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_list_store_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkListStore*
  store %struct._GtkListStore* %15, %struct._GtkListStore** @brush_list_store, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_tree_view_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call14)
  %18 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkTreeView*
  %call16 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %18)
  store %struct._GtkTreeSelection* %call16, %struct._GtkTreeSelection** %selection, align 8
  %call17 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %box2, align 8
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %box1, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_box_get_type() #7
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call18)
  %21 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkBox*
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %box2, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %21, %struct._GtkWidget* %22, i32 0, i32 0, i32 0)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %box2, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %23)
  %call20 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %frame, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_frame_get_type() #7
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call21)
  %26 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %26, i32 1)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %box2, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_box_get_type() #7
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call23)
  %29 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkBox*
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %29, %struct._GtkWidget* %30, i32 0, i32 0, i32 0)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %31)
  %call25 = call %struct._GtkWidget* @gimp_preview_area_new()
  store %struct._GtkWidget* %call25, %struct._GtkWidget** %tmpw, align 8
  store %struct._GtkWidget* %call25, %struct._GtkWidget** @brush_preview, align 8
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** @brush_preview, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %32, i32 100, i32 100)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_container_get_type() #7
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call26)
  %35 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkContainer*
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_container_add(%struct._GtkContainer* %35, %struct._GtkWidget* %36)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %37)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** @brush_preview, align 8
  %39 = bitcast %struct._GtkWidget* %38 to i8*
  %call28 = call i64 @g_signal_connect_data(i8* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @brush_preview_size_allocate to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call29 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 2)
  store %struct._GtkWidget* %call29, %struct._GtkWidget** %box3, align 8
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %box2, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_box_get_type() #7
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call30)
  %42 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkBox*
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %box3, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %42, %struct._GtkWidget* %43, i32 0, i32 0, i32 0)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %box3, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %44)
  %call32 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)) #5
  %call33 = call %struct._GtkWidget* @gtk_label_new(i8* %call32)
  store %struct._GtkWidget* %call33, %struct._GtkWidget** %tmpw, align 8
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_misc_get_type() #7
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call34)
  %47 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %47, float 0.000000e+00, float 5.000000e-01)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %box3, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_box_get_type() #7
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call36)
  %50 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkBox*
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %50, %struct._GtkWidget* %51, i32 0, i32 0, i32 0)
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %52)
  %53 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 7), align 8
  %call38 = call %struct._GtkObject* @gtk_adjustment_new(double %53, double 5.000000e-01, double 3.000000e+00, double 1.000000e-01, double 1.000000e-01, double 1.000000e+00)
  %54 = bitcast %struct._GtkObject* %call38 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_adjustment_get_type() #7
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call39)
  %55 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkAdjustment*
  store %struct._GtkAdjustment* %55, %struct._GtkAdjustment** @brush_gamma_adjust, align 8
  %56 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** @brush_gamma_adjust, align 8
  %call41 = call %struct._GtkWidget* @gtk_scale_new(i32 0, %struct._GtkAdjustment* %56)
  store %struct._GtkWidget* %call41, %struct._GtkWidget** %tmpw, align 8
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %58 = bitcast %struct._GtkWidget* %57 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_widget_get_type() #7
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call42)
  %59 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkWidget*
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %59, i32 100, i32 30)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %61 = bitcast %struct._GtkWidget* %60 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_scale_get_type() #7
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call44)
  %62 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkScale*
  call void @gtk_scale_set_draw_value(%struct._GtkScale* %62, i32 0)
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %64 = bitcast %struct._GtkWidget* %63 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_scale_get_type() #7
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call46)
  %65 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkScale*
  call void @gtk_scale_set_digits(%struct._GtkScale* %65, i32 2)
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %box3, align 8
  %67 = bitcast %struct._GtkWidget* %66 to %struct._GTypeInstance*
  %call48 = call i64 @gtk_box_get_type() #7
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call48)
  %68 = bitcast %struct._GTypeInstance* %call49 to %struct._GtkBox*
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %68, %struct._GtkWidget* %69, i32 0, i32 0, i32 0)
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %70)
  %71 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** @brush_gamma_adjust, align 8
  %72 = bitcast %struct._GtkAdjustment* %71 to i8*
  %call50 = call i64 @g_signal_connect_data(i8* %72, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), void ()* bitcast (void (i8*)* @update_brush_preview to void ()*), i8* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 14, i32 0), void (i8*, %struct._GClosure*)* null, i32 2)
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %call51 = call i8* @gettext(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %73, i8* %call51, i8* null)
  %call52 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call52, %struct._GtkWidget** %box3, align 8
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %thispage, align 8
  %75 = bitcast %struct._GtkWidget* %74 to %struct._GTypeInstance*
  %call53 = call i64 @gtk_box_get_type() #7
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call53)
  %76 = bitcast %struct._GTypeInstance* %call54 to %struct._GtkBox*
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %box3, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %76, %struct._GtkWidget* %77, i32 0, i32 0, i32 0)
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %box3, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %78)
  %call55 = call %struct._GtkSizeGroup* @gtk_size_group_new(i32 1)
  store %struct._GtkSizeGroup* %call55, %struct._GtkSizeGroup** %group, align 8
  %call56 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0)) #5
  %call57 = call %struct._GtkWidget* @gtk_label_new(i8* %call56)
  store %struct._GtkWidget* %call57, %struct._GtkWidget** %tmpw, align 8
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %80 = bitcast %struct._GtkWidget* %79 to %struct._GTypeInstance*
  %call58 = call i64 @gtk_misc_get_type() #7
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %80, i64 %call58)
  %81 = bitcast %struct._GTypeInstance* %call59 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %81, float 0.000000e+00, float 5.000000e-01)
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %box3, align 8
  %83 = bitcast %struct._GtkWidget* %82 to %struct._GTypeInstance*
  %call60 = call i64 @gtk_box_get_type() #7
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %83, i64 %call60)
  %84 = bitcast %struct._GTypeInstance* %call61 to %struct._GtkBox*
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %84, %struct._GtkWidget* %85, i32 0, i32 0, i32 0)
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %86)
  %87 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %87, %struct._GtkWidget* %88)
  %89 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %90 = bitcast %struct._GtkSizeGroup* %89 to i8*
  call void @g_object_unref(i8* %90)
  %call62 = call %struct._GtkWidget* @gimp_drawable_combo_box_new(i32 (i32, i32, i8*)* @validdrawable, i8* null)
  store %struct._GtkWidget* %call62, %struct._GtkWidget** %combo, align 8
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %92 = bitcast %struct._GtkWidget* %91 to %struct._GTypeInstance*
  %call63 = call i64 @gimp_int_combo_box_get_type() #7
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %92, i64 %call63)
  %93 = bitcast %struct._GTypeInstance* %call64 to %struct._GimpIntComboBox*
  %call65 = call i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox* %93, i32 -1, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @brushdmenuselect to void ()*), i8* null)
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %box3, align 8
  %95 = bitcast %struct._GtkWidget* %94 to %struct._GTypeInstance*
  %call66 = call i64 @gtk_box_get_type() #7
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %95, i64 %call66)
  %96 = bitcast %struct._GTypeInstance* %call67 to %struct._GtkBox*
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %96, %struct._GtkWidget* %97, i32 1, i32 1, i32 0)
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %98)
  %call68 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GtkWidget* %call68, %struct._GtkWidget** %tmpw, align 8
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %box3, align 8
  %100 = bitcast %struct._GtkWidget* %99 to %struct._GTypeInstance*
  %call69 = call i64 @gtk_box_get_type() #7
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %100, i64 %call69)
  %101 = bitcast %struct._GTypeInstance* %call70 to %struct._GtkBox*
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %101, %struct._GtkWidget* %102, i32 0, i32 0, i32 0)
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %104 = bitcast %struct._GtkWidget* %103 to i8*
  %call71 = call i64 @g_signal_connect_data(i8* %104, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @savebrush to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %105)
  %call72 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 3, i32 0)
  store %struct._GtkWidget* %call72, %struct._GtkWidget** %table, align 8
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %107 = bitcast %struct._GtkWidget* %106 to %struct._GTypeInstance*
  %call73 = call i64 @gtk_table_get_type() #7
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %107, i64 %call73)
  %108 = bitcast %struct._GTypeInstance* %call74 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %108, i32 6)
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %110 = bitcast %struct._GtkWidget* %109 to %struct._GTypeInstance*
  %call75 = call i64 @gtk_table_get_type() #7
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %110, i64 %call75)
  %111 = bitcast %struct._GTypeInstance* %call76 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %111, i32 6)
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %thispage, align 8
  %113 = bitcast %struct._GtkWidget* %112 to %struct._GTypeInstance*
  %call77 = call i64 @gtk_box_get_type() #7
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %113, i64 %call77)
  %114 = bitcast %struct._GTypeInstance* %call78 to %struct._GtkBox*
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %114, %struct._GtkWidget* %115, i32 0, i32 0, i32 0)
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %116)
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %118 = bitcast %struct._GtkWidget* %117 to %struct._GTypeInstance*
  %call79 = call i64 @gtk_table_get_type() #7
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %118, i64 %call79)
  %119 = bitcast %struct._GTypeInstance* %call80 to %struct._GtkTable*
  %call81 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0)) #5
  %120 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 22), align 8
  %call82 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i32 0, i32 0)) #5
  %call83 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %119, i32 0, i32 0, i8* %call81, i32 150, i32 -1, double %120, double -1.000000e+00, double 1.000000e+00, double 1.000000e-01, double 1.000000e-01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call82, i8* null)
  %121 = bitcast %struct._GtkObject* %call83 to %struct._GtkAdjustment*
  store %struct._GtkAdjustment* %121, %struct._GtkAdjustment** @brush_aspect_adjust, align 8
  %122 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %123 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** @brush_aspect_adjust, align 8
  %124 = bitcast %struct._GtkAdjustment* %123 to %struct._GTypeInstance*
  %call84 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %124, i64 80)
  %125 = bitcast %struct._GTypeInstance* %call84 to %struct._GObject*
  %call85 = call i8* @g_object_get_data(%struct._GObject* %125, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0))
  %126 = bitcast i8* %call85 to %struct._GtkWidget*
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %122, %struct._GtkWidget* %126)
  %127 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** @brush_aspect_adjust, align 8
  %128 = bitcast %struct._GtkAdjustment* %127 to i8*
  %call86 = call i64 @g_signal_connect_data(i8* %128, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @brush_asepct_adjust_cb to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 22) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %130 = bitcast %struct._GtkWidget* %129 to %struct._GTypeInstance*
  %call87 = call i64 @gtk_table_get_type() #7
  %call88 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %130, i64 %call87)
  %131 = bitcast %struct._GTypeInstance* %call88 to %struct._GtkTable*
  %call89 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0)) #5
  %132 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 4), align 8
  %call90 = call i8* @gettext(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.12, i32 0, i32 0)) #5
  %call91 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %131, i32 0, i32 1, i8* %call89, i32 150, i32 -1, double %132, double 0.000000e+00, double 1.000000e+02, double 1.000000e+00, double 1.000000e+01, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call90, i8* null)
  %133 = bitcast %struct._GtkObject* %call91 to %struct._GtkAdjustment*
  store %struct._GtkAdjustment* %133, %struct._GtkAdjustment** @brush_relief_adjust, align 8
  %134 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %135 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** @brush_relief_adjust, align 8
  %136 = bitcast %struct._GtkAdjustment* %135 to %struct._GTypeInstance*
  %call92 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %136, i64 80)
  %137 = bitcast %struct._GTypeInstance* %call92 to %struct._GObject*
  %call93 = call i8* @g_object_get_data(%struct._GObject* %137, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0))
  %138 = bitcast i8* %call93 to %struct._GtkWidget*
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %134, %struct._GtkWidget* %138)
  %139 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** @brush_relief_adjust, align 8
  %140 = bitcast %struct._GtkAdjustment* %139 to i8*
  %call94 = call i64 @g_signal_connect_data(i8* %140, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 4) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %141 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection, align 8
  call void @brush_select(%struct._GtkTreeSelection* %141, i32 0)
  %142 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @readdirintolist(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), %struct._GtkWidget* %142, i8* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 14, i32 0))
  %143 = load %struct._GtkWidget*, %struct._GtkWidget** @brush_list, align 8
  call void @gtk_widget_grab_focus(%struct._GtkWidget* %143)
  %144 = load %struct._GtkNotebook*, %struct._GtkNotebook** %notebook.addr, align 8
  %145 = load %struct._GtkWidget*, %struct._GtkWidget** %thispage, align 8
  %146 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %call95 = call i32 @gtk_notebook_append_page_menu(%struct._GtkNotebook* %144, %struct._GtkWidget* %145, %struct._GtkWidget* %146, %struct._GtkWidget* null)
  ret void
}

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #4

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #4

declare %struct._GtkWidget* @create_one_column_list(%struct._GtkWidget*, void (%struct._GtkTreeSelection*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal void @brush_select_file(%struct._GtkTreeSelection* %selection, i8* %data) #0 {
entry:
  %selection.addr = alloca %struct._GtkTreeSelection*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkTreeSelection* %selection, %struct._GtkTreeSelection** %selection.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 1, i32* @brush_from_file, align 4
  call void @preset_save_button_set_sensitive(i32 1)
  %0 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection.addr, align 8
  call void @brush_select(%struct._GtkTreeSelection* %0, i32 0)
  ret void
}

declare %struct._GtkTreeModel* @gtk_tree_view_get_model(%struct._GtkTreeView*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_view_get_type() #4

; Function Attrs: nounwind readnone
declare i64 @gtk_list_store_get_type() #4

declare %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView*) #1

declare %struct._GtkWidget* @gtk_frame_new(i8*) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #4

declare %struct._GtkWidget* @gimp_preview_area_new() #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @brush_preview_size_allocate(%struct._GtkWidget* %preview) #0 {
entry:
  %preview.addr = alloca %struct._GtkWidget*, align 8
  %selection = alloca %struct._GtkTreeSelection*, align 8
  store %struct._GtkWidget* %preview, %struct._GtkWidget** %preview.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @brush_list, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_tree_view_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkTreeView*
  %call2 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %2)
  store %struct._GtkTreeSelection* %call2, %struct._GtkTreeSelection** %selection, align 8
  %3 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection, align 8
  call void @brush_select(%struct._GtkTreeSelection* %3, i32 1)
  ret void
}

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #4

declare %struct._GtkObject* @gtk_adjustment_new(double, double, double, double, double, double) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #4

declare %struct._GtkWidget* @gtk_scale_new(i32, %struct._GtkAdjustment*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #4

declare void @gtk_scale_set_draw_value(%struct._GtkScale*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scale_get_type() #4

declare void @gtk_scale_set_digits(%struct._GtkScale*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @update_brush_preview(i8* %fn) #0 {
entry:
  %fn.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %preview_image = alloca i8*, align 8
  %sc = alloca double, align 8
  %p = alloca %struct.ppm, align 8
  %gammatable = alloca [256 x i8], align 16
  %newheight = alloca i32, align 4
  %k = alloca i32, align 4
  store i8* %fn, i8** %fn.addr, align 8
  %0 = load i8*, i8** %fn.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* @brush_from_file, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call noalias i8* @g_malloc0_n(i64 10000, i64 1)
  store i8* %call, i8** %preview_image, align 8
  %1 = load i8*, i8** %fn.addr, align 8
  %tobool1 = icmp ne i8* %1, null
  br i1 %tobool1, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %2 = load i32, i32* @brush_from_file, align 4
  %tobool2 = icmp ne i32 %2, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %land.lhs.true
  br label %if.end.77

if.else:                                          ; preds = %land.lhs.true, %if.end
  %3 = bitcast %struct.ppm* %p to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 16, i32 8, i1 false)
  %4 = load i32, i32* @brush_from_file, align 4
  %tobool4 = icmp ne i32 %4, 0
  br i1 %tobool4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else
  %5 = load i8*, i8** %fn.addr, align 8
  call void @brush_reload(i8* %5, %struct.ppm* %p)
  br label %if.end.9

if.else.6:                                        ; preds = %if.else
  %6 = load i8*, i8** getelementptr inbounds (%struct.ppm, %struct.ppm* @brushppm, i32 0, i32 2), align 8
  %cmp = icmp ne i8* %6, null
  br i1 %cmp, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.else.6
  call void @ppm_copy(%struct.ppm* @brushppm, %struct.ppm* %p)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.else.6
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.then.5
  %7 = load i8*, i8** %fn.addr, align 8
  call void @set_colorbrushes(i8* %7)
  %8 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** @brush_gamma_adjust, align 8
  %call10 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %8)
  store double %call10, double* %sc, align 8
  %9 = load double, double* %sc, align 8
  %cmp11 = fcmp une double %9, 1.000000e+00
  br i1 %cmp11, label %if.then.12, label %if.else.16

if.then.12:                                       ; preds = %if.end.9
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.12
  %10 = load i32, i32* %i, align 4
  %cmp13 = icmp slt i32 %10, 256
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %conv = sitofp i32 %11 to double
  %div = fdiv double %conv, 2.550000e+02
  %12 = load double, double* %sc, align 8
  %call14 = call double @pow(double %div, double %12) #5
  %mul = fmul double %call14, 2.550000e+02
  %conv15 = fptoui double %mul to i8
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %gammatable, i32 0, i64 %idxprom
  store i8 %conv15, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.27

if.else.16:                                       ; preds = %if.end.9
  store i32 0, i32* %i, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.24, %if.else.16
  %15 = load i32, i32* %i, align 4
  %cmp18 = icmp slt i32 %15, 256
  br i1 %cmp18, label %for.body.20, label %for.end.26

for.body.20:                                      ; preds = %for.cond.17
  %16 = load i32, i32* %i, align 4
  %conv21 = trunc i32 %16 to i8
  %17 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %17 to i64
  %arrayidx23 = getelementptr inbounds [256 x i8], [256 x i8]* %gammatable, i32 0, i64 %idxprom22
  store i8 %conv21, i8* %arrayidx23, align 1
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.body.20
  %18 = load i32, i32* %i, align 4
  %inc25 = add nsw i32 %18, 1
  store i32 %inc25, i32* %i, align 4
  br label %for.cond.17

for.end.26:                                       ; preds = %for.cond.17
  br label %if.end.27

if.end.27:                                        ; preds = %for.end.26, %for.end
  %height = getelementptr inbounds %struct.ppm, %struct.ppm* %p, i32 0, i32 1
  %19 = load i32, i32* %height, align 4
  %conv28 = sitofp i32 %19 to double
  %20 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** @brush_aspect_adjust, align 8
  %call29 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %20)
  %call30 = call double @pow(double 1.000000e+01, double %call29) #5
  %mul31 = fmul double %conv28, %call30
  %conv32 = fptosi double %mul31 to i32
  store i32 %conv32, i32* %newheight, align 4
  %width = getelementptr inbounds %struct.ppm, %struct.ppm* %p, i32 0, i32 0
  %21 = load i32, i32* %width, align 4
  %22 = load i32, i32* %newheight, align 4
  %cmp33 = icmp sgt i32 %21, %22
  br i1 %cmp33, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.27
  %width35 = getelementptr inbounds %struct.ppm, %struct.ppm* %p, i32 0, i32 0
  %23 = load i32, i32* %width35, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.27
  %24 = load i32, i32* %newheight, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %23, %cond.true ], [ %24, %cond.false ]
  %conv36 = sitofp i32 %cond to double
  store double %conv36, double* %sc, align 8
  %25 = load double, double* %sc, align 8
  %div37 = fdiv double 1.000000e+02, %25
  store double %div37, double* %sc, align 8
  %width38 = getelementptr inbounds %struct.ppm, %struct.ppm* %p, i32 0, i32 0
  %26 = load i32, i32* %width38, align 4
  %conv39 = sitofp i32 %26 to double
  %27 = load double, double* %sc, align 8
  %mul40 = fmul double %conv39, %27
  %conv41 = fptosi double %mul40 to i32
  %28 = load i32, i32* %newheight, align 4
  %conv42 = sitofp i32 %28 to double
  %29 = load double, double* %sc, align 8
  %mul43 = fmul double %conv42, %29
  %conv44 = fptosi double %mul43 to i32
  call void @resize_fast(%struct.ppm* %p, i32 %conv41, i32 %conv44)
  call void @padbrush(%struct.ppm* %p, i32 100, i32 100)
  store i32 0, i32* %i, align 4
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.74, %cond.end
  %30 = load i32, i32* %i, align 4
  %cmp46 = icmp slt i32 %30, 100
  br i1 %cmp46, label %for.body.48, label %for.end.76

for.body.48:                                      ; preds = %for.cond.45
  %31 = load i32, i32* %i, align 4
  %width49 = getelementptr inbounds %struct.ppm, %struct.ppm* %p, i32 0, i32 0
  %32 = load i32, i32* %width49, align 4
  %mul50 = mul nsw i32 %31, %32
  %mul51 = mul nsw i32 %mul50, 3
  store i32 %mul51, i32* %k, align 4
  %33 = load i32, i32* %i, align 4
  %height52 = getelementptr inbounds %struct.ppm, %struct.ppm* %p, i32 0, i32 1
  %34 = load i32, i32* %height52, align 4
  %cmp53 = icmp slt i32 %33, %34
  br i1 %cmp53, label %if.then.55, label %if.end.73

if.then.55:                                       ; preds = %for.body.48
  store i32 0, i32* %j, align 4
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.70, %if.then.55
  %35 = load i32, i32* %j, align 4
  %width57 = getelementptr inbounds %struct.ppm, %struct.ppm* %p, i32 0, i32 0
  %36 = load i32, i32* %width57, align 4
  %cmp58 = icmp slt i32 %35, %36
  br i1 %cmp58, label %for.body.60, label %for.end.72

for.body.60:                                      ; preds = %for.cond.56
  %37 = load i32, i32* %k, align 4
  %38 = load i32, i32* %j, align 4
  %mul61 = mul nsw i32 %38, 3
  %add = add nsw i32 %37, %mul61
  %idxprom62 = sext i32 %add to i64
  %col = getelementptr inbounds %struct.ppm, %struct.ppm* %p, i32 0, i32 2
  %39 = load i8*, i8** %col, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %39, i64 %idxprom62
  %40 = load i8, i8* %arrayidx63, align 1
  %idxprom64 = zext i8 %40 to i64
  %arrayidx65 = getelementptr inbounds [256 x i8], [256 x i8]* %gammatable, i32 0, i64 %idxprom64
  %41 = load i8, i8* %arrayidx65, align 1
  %42 = load i32, i32* %i, align 4
  %mul66 = mul nsw i32 %42, 100
  %43 = load i32, i32* %j, align 4
  %add67 = add nsw i32 %mul66, %43
  %idxprom68 = sext i32 %add67 to i64
  %44 = load i8*, i8** %preview_image, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %44, i64 %idxprom68
  store i8 %41, i8* %arrayidx69, align 1
  br label %for.inc.70

for.inc.70:                                       ; preds = %for.body.60
  %45 = load i32, i32* %j, align 4
  %inc71 = add nsw i32 %45, 1
  store i32 %inc71, i32* %j, align 4
  br label %for.cond.56

for.end.72:                                       ; preds = %for.cond.56
  br label %if.end.73

if.end.73:                                        ; preds = %for.end.72, %for.body.48
  br label %for.inc.74

for.inc.74:                                       ; preds = %if.end.73
  %46 = load i32, i32* %i, align 4
  %inc75 = add nsw i32 %46, 1
  store i32 %inc75, i32* %i, align 4
  br label %for.cond.45

for.end.76:                                       ; preds = %for.cond.45
  call void @ppm_kill(%struct.ppm* %p)
  br label %if.end.77

if.end.77:                                        ; preds = %for.end.76, %if.then.3
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** @brush_preview, align 8
  %48 = bitcast %struct._GtkWidget* %47 to %struct._GTypeInstance*
  %call78 = call i64 @gimp_preview_area_get_type() #7
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call78)
  %49 = bitcast %struct._GTypeInstance* %call79 to %struct._GimpPreviewArea*
  %50 = load i8*, i8** %preview_image, align 8
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %49, i32 0, i32 0, i32 100, i32 100, i32 2, i8* %50, i32 100)
  %51 = load i8*, i8** %preview_image, align 8
  call void @g_free(i8* %51)
  ret void
}

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

declare %struct._GtkSizeGroup* @gtk_size_group_new(i32) #1

declare void @gtk_size_group_add_widget(%struct._GtkSizeGroup*, %struct._GtkWidget*) #1

declare void @g_object_unref(i8*) #1

declare %struct._GtkWidget* @gimp_drawable_combo_box_new(i32 (i32, i32, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @validdrawable(i32 %imageid, i32 %drawableid, i8* %data) #0 {
entry:
  %imageid.addr = alloca i32, align 4
  %drawableid.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  store i32 %imageid, i32* %imageid.addr, align 4
  store i32 %drawableid, i32* %drawableid.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* %drawableid.addr, align 4
  %call = call i32 @gimp_drawable_is_rgb(i32 %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load i32, i32* %drawableid.addr, align 4
  %call1 = call i32 @gimp_drawable_is_gray(i32 %1)
  %tobool2 = icmp ne i32 %call1, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %tobool2, %lor.rhs ]
  %lor.ext = zext i1 %2 to i32
  ret i32 %lor.ext
}

declare i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox*, i32, void ()*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int_combo_box_get_type() #4

; Function Attrs: nounwind uwtable
define internal void @brushdmenuselect(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %src_rgn = alloca %struct._GimpPixelRgn, align 8
  %src_row = alloca i8*, align 8
  %src = alloca i8*, align 8
  %id = alloca i32, align 4
  %bpp = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %p = alloca %struct.ppm*, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %row = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %rowstride = alloca i32, align 4
  %bpr = alloca i32, align 4
  %is_gray = alloca i32, align 4
  %tmprow = alloca i8*, align 8
  %tmprow_ptr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_int_combo_box_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpIntComboBox*
  %call2 = call i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox* %2, i32* %id)
  %3 = load i32, i32* %id, align 4
  %cmp = icmp eq i32 %3, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, i32* @brush_from_file, align 4
  %cmp3 = icmp eq i32 %4, 2
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  br label %return

if.end.5:                                         ; preds = %if.end
  %5 = load i32, i32* @brush_from_file, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.5
  call void @preset_save_button_set_sensitive(i32 0)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end.5
  %6 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** @brush_gamma_adjust, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %6, double 1.000000e+00)
  %7 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** @brush_aspect_adjust, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %7, double 0.000000e+00)
  %8 = load i32, i32* %id, align 4
  %call8 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %8)
  store %struct._GimpDrawable* %call8, %struct._GimpDrawable** %drawable, align 8
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %9, i32 0, i32 0
  %10 = load i32, i32* %drawable_id, align 4
  %call9 = call i32 @gimp_drawable_mask_bounds(i32 %10, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id10 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %11, i32 0, i32 0
  %12 = load i32, i32* %drawable_id10, align 4
  %call11 = call i32 @gimp_drawable_bpp(i32 %12)
  store i32 %call11, i32* %bpp, align 4
  call void @ppm_kill(%struct.ppm* @brushppm)
  %13 = load i32, i32* %x2, align 4
  %14 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %13, %14
  %15 = load i32, i32* %y2, align 4
  %16 = load i32, i32* %y1, align 4
  %sub12 = sub nsw i32 %15, %16
  call void @ppm_new(%struct.ppm* @brushppm, i32 %sub, i32 %sub12)
  store %struct.ppm* @brushppm, %struct.ppm** %p, align 8
  %17 = load %struct.ppm*, %struct.ppm** %p, align 8
  %width = getelementptr inbounds %struct.ppm, %struct.ppm* %17, i32 0, i32 0
  %18 = load i32, i32* %width, align 4
  %mul = mul nsw i32 %18, 3
  store i32 %mul, i32* %rowstride, align 4
  %19 = load i32, i32* %x2, align 4
  %20 = load i32, i32* %x1, align 4
  %sub13 = sub nsw i32 %19, %20
  %21 = load i32, i32* %bpp, align 4
  %mul14 = mul nsw i32 %sub13, %21
  %conv = sext i32 %mul14 to i64
  %call15 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call15, i8** %src_row, align 8
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %23 = load i32, i32* %x2, align 4
  %24 = load i32, i32* %x1, align 4
  %sub16 = sub nsw i32 %23, %24
  %25 = load i32, i32* %y2, align 4
  %26 = load i32, i32* %y1, align 4
  %sub17 = sub nsw i32 %25, %26
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %22, i32 0, i32 0, i32 %sub16, i32 %sub17, i32 0, i32 0)
  %27 = load i32, i32* %bpp, align 4
  %cmp18 = icmp eq i32 %27, 3
  br i1 %cmp18, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.end.7
  %28 = load i32, i32* %x2, align 4
  %29 = load i32, i32* %x1, align 4
  %sub21 = sub nsw i32 %28, %29
  %mul22 = mul nsw i32 %sub21, 3
  store i32 %mul22, i32* %bpr, align 4
  store i32 0, i32* %row, align 4
  %30 = load i32, i32* %y1, align 4
  store i32 %30, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.20
  %31 = load i32, i32* %y, align 4
  %32 = load i32, i32* %y2, align 4
  %cmp23 = icmp slt i32 %31, %32
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load i8*, i8** %src_row, align 8
  %34 = load i32, i32* %x1, align 4
  %35 = load i32, i32* %y, align 4
  %36 = load i32, i32* %x2, align 4
  %37 = load i32, i32* %x1, align 4
  %sub25 = sub nsw i32 %36, %37
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %src_rgn, i8* %33, i32 %34, i32 %35, i32 %sub25)
  %38 = load %struct.ppm*, %struct.ppm** %p, align 8
  %col = getelementptr inbounds %struct.ppm, %struct.ppm* %38, i32 0, i32 2
  %39 = load i8*, i8** %col, align 8
  %40 = load i32, i32* %row, align 4
  %41 = load i32, i32* %rowstride, align 4
  %mul26 = mul nsw i32 %40, %41
  %idx.ext = sext i32 %mul26 to i64
  %add.ptr = getelementptr inbounds i8, i8* %39, i64 %idx.ext
  %42 = load i8*, i8** %src_row, align 8
  %43 = load i32, i32* %bpr, align 4
  %conv27 = sext i32 %43 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %42, i64 %conv27, i32 1, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %44 = load i32, i32* %row, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %row, align 4
  %45 = load i32, i32* %y, align 4
  %inc28 = add nsw i32 %45, 1
  store i32 %inc28, i32* %y, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.63

if.else:                                          ; preds = %if.end.7
  %46 = load i32, i32* %bpp, align 4
  %cmp29 = icmp sgt i32 %46, 3
  %cond = select i1 %cmp29, i32 1, i32 0
  store i32 %cond, i32* %is_gray, align 4
  store i32 0, i32* %row, align 4
  %47 = load i32, i32* %y1, align 4
  store i32 %47, i32* %y, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.59, %if.else
  %48 = load i32, i32* %y, align 4
  %49 = load i32, i32* %y2, align 4
  %cmp32 = icmp slt i32 %48, %49
  br i1 %cmp32, label %for.body.34, label %for.end.62

for.body.34:                                      ; preds = %for.cond.31
  %50 = load %struct.ppm*, %struct.ppm** %p, align 8
  %col35 = getelementptr inbounds %struct.ppm, %struct.ppm* %50, i32 0, i32 2
  %51 = load i8*, i8** %col35, align 8
  %52 = load i32, i32* %row, align 4
  %53 = load i32, i32* %rowstride, align 4
  %mul36 = mul nsw i32 %52, %53
  %idx.ext37 = sext i32 %mul36 to i64
  %add.ptr38 = getelementptr inbounds i8, i8* %51, i64 %idx.ext37
  store i8* %add.ptr38, i8** %tmprow, align 8
  %54 = load i8*, i8** %src_row, align 8
  %55 = load i32, i32* %x1, align 4
  %56 = load i32, i32* %y, align 4
  %57 = load i32, i32* %x2, align 4
  %58 = load i32, i32* %x1, align 4
  %sub39 = sub nsw i32 %57, %58
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %src_rgn, i8* %54, i32 %55, i32 %56, i32 %sub39)
  %59 = load i8*, i8** %src_row, align 8
  store i8* %59, i8** %src, align 8
  %60 = load i8*, i8** %tmprow, align 8
  store i8* %60, i8** %tmprow_ptr, align 8
  %61 = load i32, i32* %x1, align 4
  store i32 %61, i32* %x, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.56, %for.body.34
  %62 = load i32, i32* %x, align 4
  %63 = load i32, i32* %x2, align 4
  %cmp41 = icmp slt i32 %62, %63
  br i1 %cmp41, label %for.body.43, label %for.end.58

for.body.43:                                      ; preds = %for.cond.40
  %64 = load i8*, i8** %src, align 8
  %arrayidx = getelementptr inbounds i8, i8* %64, i64 0
  %65 = load i8, i8* %arrayidx, align 1
  %66 = load i8*, i8** %tmprow_ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %incdec.ptr, i8** %tmprow_ptr, align 8
  store i8 %65, i8* %66, align 1
  %67 = load i32, i32* %is_gray, align 4
  %tobool44 = icmp ne i32 %67, 0
  %cond45 = select i1 %tobool44, i32 1, i32 0
  %idxprom = sext i32 %cond45 to i64
  %68 = load i8*, i8** %src, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %68, i64 %idxprom
  %69 = load i8, i8* %arrayidx46, align 1
  %70 = load i8*, i8** %tmprow_ptr, align 8
  %incdec.ptr47 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %incdec.ptr47, i8** %tmprow_ptr, align 8
  store i8 %69, i8* %70, align 1
  %71 = load i32, i32* %is_gray, align 4
  %tobool48 = icmp ne i32 %71, 0
  %cond49 = select i1 %tobool48, i32 2, i32 0
  %idxprom50 = sext i32 %cond49 to i64
  %72 = load i8*, i8** %src, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %72, i64 %idxprom50
  %73 = load i8, i8* %arrayidx51, align 1
  %74 = load i8*, i8** %tmprow_ptr, align 8
  %incdec.ptr52 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %incdec.ptr52, i8** %tmprow_ptr, align 8
  store i8 %73, i8* %74, align 1
  %bpp53 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 2
  %75 = load i32, i32* %bpp53, align 4
  %76 = load i8*, i8** %src, align 8
  %idx.ext54 = sext i32 %75 to i64
  %add.ptr55 = getelementptr inbounds i8, i8* %76, i64 %idx.ext54
  store i8* %add.ptr55, i8** %src, align 8
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.body.43
  %77 = load i32, i32* %x, align 4
  %inc57 = add nsw i32 %77, 1
  store i32 %inc57, i32* %x, align 4
  br label %for.cond.40

for.end.58:                                       ; preds = %for.cond.40
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.end.58
  %78 = load i32, i32* %row, align 4
  %inc60 = add nsw i32 %78, 1
  store i32 %inc60, i32* %row, align 4
  %79 = load i32, i32* %y, align 4
  %inc61 = add nsw i32 %79, 1
  store i32 %inc61, i32* %y, align 4
  br label %for.cond.31

for.end.62:                                       ; preds = %for.cond.31
  br label %if.end.63

if.end.63:                                        ; preds = %for.end.62, %for.end
  %80 = load i8*, i8** %src_row, align 8
  call void @g_free(i8* %80)
  %81 = load i32, i32* %bpp, align 4
  %cmp64 = icmp sge i32 %81, 3
  br i1 %cmp64, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %if.end.63
  store i32 1, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 28), align 4
  br label %if.end.68

if.else.67:                                       ; preds = %if.end.63
  store i32 0, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 28), align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.67, %if.then.66
  store i32 0, i32* @brush_from_file, align 4
  call void @update_brush_preview(i8* null)
  br label %return

return:                                           ; preds = %if.end.68, %if.then.4, %if.then
  ret void
}

declare %struct._GtkWidget* @gtk_button_new_from_stock(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @savebrush(%struct._GtkWidget* %wg, i8* %data) #0 {
entry:
  %wg.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %thispath = alloca %struct._GList*, align 8
  %path = alloca i8*, align 8
  store %struct._GtkWidget* %wg, %struct._GtkWidget** %wg.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store %struct._GtkWidget* null, %struct._GtkWidget** %dialog, align 8
  %call = call %struct._GList* @parsepath()
  store %struct._GList* %call, %struct._GList** %thispath, align 8
  %0 = load i8*, i8** getelementptr inbounds (%struct.ppm, %struct.ppm* @brushppm, i32 0, i32 2), align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i32 0, i32 0)) #5
  call void (i8*, ...) @g_message(i8* %call1)
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0)) #5
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %wg.addr, align 8
  %call3 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %1)
  %2 = bitcast %struct._GtkWidget* %call3 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_window_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call4)
  %3 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWindow*
  %call6 = call %struct._GtkWidget* (i8*, %struct._GtkWindow*, i32, i8*, ...) @gtk_file_chooser_dialog_new(i8* %call2, %struct._GtkWindow* %3, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %dialog, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_dialog_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call7)
  %6 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %6, i32 -5, i32 -6, i32 -1)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_dialog_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call9)
  %9 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkDialog*
  call void @gtk_dialog_set_default_response(%struct._GtkDialog* %9, i32 -5)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_file_chooser_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call11)
  %12 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkFileChooser*
  call void @gtk_file_chooser_set_do_overwrite_confirmation(%struct._GtkFileChooser* %12, i32 1)
  %13 = load %struct._GList*, %struct._GList** %thispath, align 8
  %data13 = getelementptr inbounds %struct._GList, %struct._GList* %13, i32 0, i32 0
  %14 = load i8*, i8** %data13, align 8
  %call14 = call noalias i8* (i8*, ...) @g_build_filename(i8* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* null)
  store i8* %call14, i8** %path, align 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_file_chooser_get_type() #7
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call15)
  %17 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkFileChooser*
  %18 = load i8*, i8** %path, align 8
  %call17 = call i32 @gtk_file_chooser_set_current_folder(%struct._GtkFileChooser* %17, i8* %18)
  %19 = load i8*, i8** %path, align 8
  call void @g_free(i8* %19)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %21 = bitcast %struct._GtkWidget* %20 to i8*
  %22 = bitcast %struct._GtkWidget** %dialog to i8*
  %call18 = call i64 @g_signal_connect_data(i8* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget**)* @gtk_widget_destroyed to void ()*), i8* %22, void (i8*, %struct._GClosure*)* null, i32 0)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %24 = bitcast %struct._GtkWidget* %23 to i8*
  %call19 = call i64 @g_signal_connect_data(i8* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, i8*)* @savebrush_response to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %25)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #4

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @brush_asepct_adjust_cb(%struct._GtkWidget* %w, i8* %data) #0 {
entry:
  %w.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %w, %struct._GtkWidget** %w.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %w.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_adjustment_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkAdjustment*
  %3 = load i8*, i8** %data.addr, align 8
  call void @gimp_double_adjustment_update(%struct._GtkAdjustment* %2, i8* %3)
  call void @update_brush_preview(i8* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 14, i32 0))
  ret void
}

declare void @gimp_double_adjustment_update(%struct._GtkAdjustment*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @brush_select(%struct._GtkTreeSelection* %selection, i32 %force) #0 {
entry:
  %selection.addr = alloca %struct._GtkTreeSelection*, align 8
  %force.addr = alloca i32, align 4
  %iter = alloca %struct._GtkTreeIter, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %fname = alloca i8*, align 8
  %brush = alloca i8*, align 8
  store %struct._GtkTreeSelection* %selection, %struct._GtkTreeSelection** %selection.addr, align 8
  store i32 %force, i32* %force.addr, align 4
  store i8* null, i8** %fname, align 8
  store i8* null, i8** %brush, align 8
  %0 = load i32, i32* @brush_dont_update, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @brush_from_file, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  call void @update_brush_preview(i8* null)
  br label %cleanup

if.end.2:                                         ; preds = %if.end
  %2 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection.addr, align 8
  %call = call i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection* %2, %struct._GtkTreeModel** %model, %struct._GtkTreeIter* %iter)
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.then.4, label %if.end.23

if.then.4:                                        ; preds = %if.end.2
  %3 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %3, %struct._GtkTreeIter* %iter, i32 0, i8** %brush, i32 -1)
  %4 = load i8*, i8** @last_selected_brush, align 8
  %cmp5 = icmp eq i8* %4, null
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then.4
  %5 = load i8*, i8** %brush, align 8
  %call7 = call noalias i8* @g_strdup(i8* %5)
  store i8* %call7, i8** @last_selected_brush, align 8
  br label %if.end.17

if.else:                                          ; preds = %if.then.4
  %6 = load i8*, i8** @last_selected_brush, align 8
  %7 = load i8*, i8** %brush, align 8
  %call8 = call i32 @strcmp(i8* %6, i8* %7) #6
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.else.14, label %if.then.10

if.then.10:                                       ; preds = %if.else
  %8 = load i32, i32* %force.addr, align 4
  %tobool11 = icmp ne i32 %8, 0
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.then.10
  br label %cleanup

if.end.13:                                        ; preds = %if.then.10
  br label %if.end.16

if.else.14:                                       ; preds = %if.else
  %9 = load i8*, i8** @last_selected_brush, align 8
  call void @g_free(i8* %9)
  %10 = load i8*, i8** %brush, align 8
  %call15 = call noalias i8* @g_strdup(i8* %10)
  store i8* %call15, i8** @last_selected_brush, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.14, %if.end.13
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then.6
  store i32 1, i32* @brush_dont_update, align 4
  %11 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** @brush_gamma_adjust, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %11, double 1.000000e+00)
  %12 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** @brush_aspect_adjust, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %12, double 0.000000e+00)
  store i32 0, i32* @brush_dont_update, align 4
  %13 = load i8*, i8** %brush, align 8
  %tobool18 = icmp ne i8* %13, null
  br i1 %tobool18, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %if.end.17
  %14 = load i8*, i8** %brush, align 8
  %call20 = call noalias i8* (i8*, ...) @g_build_filename(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* %14, i8* null)
  store i8* %call20, i8** %fname, align 8
  %15 = load i8*, i8** %fname, align 8
  %call21 = call i64 @g_strlcpy(i8* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 14, i32 0), i8* %15, i64 200)
  %16 = load i8*, i8** %fname, align 8
  call void @update_brush_preview(i8* %16)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %if.end.17
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end.2
  br label %cleanup

cleanup:                                          ; preds = %if.end.23, %if.then.12, %if.then.1, %if.then
  %17 = load i8*, i8** %fname, align 8
  call void @g_free(i8* %17)
  %18 = load i8*, i8** %brush, align 8
  call void @g_free(i8* %18)
  ret void
}

declare void @readdirintolist(i8*, %struct._GtkWidget*, i8*) #1

declare void @gtk_widget_grab_focus(%struct._GtkWidget*) #1

declare i32 @gtk_notebook_append_page_menu(%struct._GtkNotebook*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #2

declare void @preset_save_button_set_sensitive(i32) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

; Function Attrs: nounwind
declare double @pow(double, double) #3

declare void @resize_fast(%struct.ppm*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @padbrush(%struct.ppm* %p, i32 %width, i32 %height) #0 {
entry:
  %p.addr = alloca %struct.ppm*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %black = alloca [3 x i8], align 1
  %left = alloca i32, align 4
  %right = alloca i32, align 4
  %top = alloca i32, align 4
  %bottom = alloca i32, align 4
  store %struct.ppm* %p, %struct.ppm** %p.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = bitcast [3 x i8]* %black to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 3, i32 1, i1 false)
  %1 = load i32, i32* %width.addr, align 4
  %2 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width1 = getelementptr inbounds %struct.ppm, %struct.ppm* %2, i32 0, i32 0
  %3 = load i32, i32* %width1, align 4
  %sub = sub nsw i32 %1, %3
  %div = sdiv i32 %sub, 2
  store i32 %div, i32* %left, align 4
  %4 = load i32, i32* %width.addr, align 4
  %5 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width2 = getelementptr inbounds %struct.ppm, %struct.ppm* %5, i32 0, i32 0
  %6 = load i32, i32* %width2, align 4
  %sub3 = sub nsw i32 %4, %6
  %7 = load i32, i32* %left, align 4
  %sub4 = sub nsw i32 %sub3, %7
  store i32 %sub4, i32* %right, align 4
  %8 = load i32, i32* %height.addr, align 4
  %9 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height5 = getelementptr inbounds %struct.ppm, %struct.ppm* %9, i32 0, i32 1
  %10 = load i32, i32* %height5, align 4
  %sub6 = sub nsw i32 %8, %10
  %div7 = sdiv i32 %sub6, 2
  store i32 %div7, i32* %top, align 4
  %11 = load i32, i32* %height.addr, align 4
  %12 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height8 = getelementptr inbounds %struct.ppm, %struct.ppm* %12, i32 0, i32 1
  %13 = load i32, i32* %height8, align 4
  %sub9 = sub nsw i32 %11, %13
  %14 = load i32, i32* %top, align 4
  %sub10 = sub nsw i32 %sub9, %14
  store i32 %sub10, i32* %bottom, align 4
  %15 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %16 = load i32, i32* %left, align 4
  %17 = load i32, i32* %right, align 4
  %18 = load i32, i32* %top, align 4
  %19 = load i32, i32* %bottom, align 4
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %black, i32 0, i32 0
  call void @ppm_pad(%struct.ppm* %15, i32 %16, i32 %17, i32 %18, i32 %19, i8* %arraydecay)
  ret void
}

declare void @gimp_preview_area_draw(%struct._GimpPreviewArea*, i32, i32, i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_area_get_type() #4

declare void @ppm_pad(%struct.ppm*, i32, i32, i32, i32, i8*) #1

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_drawable_is_gray(i32) #1

declare i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox*, i32*) #1

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare i32 @gimp_drawable_mask_bounds(i32, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_drawable_bpp(i32) #1

declare void @ppm_new(%struct.ppm*, i32, i32) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare %struct._GList* @parsepath() #1

; Function Attrs: nounwind uwtable
define internal void @g_message(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* null, i32 32, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare %struct._GtkWidget* @gtk_file_chooser_dialog_new(i8*, %struct._GtkWindow*, i32, i8*, ...) #1

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #4

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #4

declare void @gtk_dialog_set_default_response(%struct._GtkDialog*, i32) #1

declare void @gtk_file_chooser_set_do_overwrite_confirmation(%struct._GtkFileChooser*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_file_chooser_get_type() #4

declare noalias i8* @g_build_filename(i8*, ...) #1

declare i32 @gtk_file_chooser_set_current_folder(%struct._GtkFileChooser*, i8*) #1

declare void @gtk_widget_destroyed(%struct._GtkWidget*, %struct._GtkWidget**) #1

; Function Attrs: nounwind uwtable
define internal void @savebrush_response(%struct._GtkWidget* %dialog, i32 %response_id, i8* %data) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %name = alloca i8*, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %0, -5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_file_chooser_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkFileChooser*
  %call2 = call i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser* %3)
  store i8* %call2, i8** %name, align 8
  %4 = load i8*, i8** %name, align 8
  call void @ppm_save(%struct.ppm* @brushppm, i8* %4)
  call void @brushlistrefresh()
  %5 = load i8*, i8** %name, align 8
  call void @g_free(i8* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %6)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser*) #1

declare void @ppm_save(%struct.ppm*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @brushlistrefresh() #0 {
entry:
  %0 = load %struct._GtkListStore*, %struct._GtkListStore** @brush_list_store, align 8
  call void @gtk_list_store_clear(%struct._GtkListStore* %0)
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** @brush_list, align 8
  call void @readdirintolist(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), %struct._GtkWidget* %1, i8* null)
  ret void
}

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare void @gtk_list_store_clear(%struct._GtkListStore*) #1

declare i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection*, %struct._GtkTreeModel**, %struct._GtkTreeIter*) #1

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #1

declare noalias i8* @g_strdup(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
