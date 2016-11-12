; ModuleID = './app/widgets/gimpwidgets-constructors.bc'
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
%struct._GtkListStore = type { %struct._GObject, i32, i8*, i8*, %struct._GList*, i32, i32, i32, i64*, i32, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkTreeModel = type opaque
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GimpIntStore = type { %struct._GtkListStore, %struct._GtkTreeIter* }
%struct._GimpEnumStore = type { %struct._GimpIntStore, %struct._GEnumClass* }
%struct._GEnumClass = type { %struct._GTypeClass, i32, i32, i32, %struct._GEnumValue* }
%struct._GEnumValue = type { i32, i8*, i8* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkComboBoxPrivate = type opaque
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkLabelSelectionInfo = type opaque

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_int_store_insert_separator_after = private unnamed_addr constant [38 x i8] c"gimp_int_store_insert_separator_after\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"GIMP_IS_INT_STORE (store)\00", align 1
@__func__.gimp_enum_store_insert_value_after = private unnamed_addr constant [35 x i8] c"gimp_enum_store_insert_value_after\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"GIMP_IS_ENUM_STORE (store)\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_paint_mode_menu_new(i32 %with_behind_mode, i32 %with_replace_modes) #0 {
entry:
  %with_behind_mode.addr = alloca i32, align 4
  %with_replace_modes.addr = alloca i32, align 4
  %store = alloca %struct._GtkListStore*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  store i32 %with_behind_mode, i32* %with_behind_mode.addr, align 4
  store i32 %with_replace_modes, i32* %with_replace_modes.addr, align 4
  %call = call i64 @gimp_layer_mode_effects_get_type() #4
  %call1 = call %struct._GtkListStore* (i64, i32, ...) @gimp_enum_store_new_with_values(i64 %call, i32 21, i32 0, i32 1, i32 10, i32 4, i32 16, i32 7, i32 9, i32 3, i32 17, i32 5, i32 19, i32 18, i32 6, i32 8, i32 20, i32 21, i32 15, i32 11, i32 12, i32 13, i32 14)
  store %struct._GtkListStore* %call1, %struct._GtkListStore** %store, align 8
  %0 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %1 = bitcast %struct._GtkListStore* %0 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_int_store_get_type() #4
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call2)
  %2 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpIntStore*
  call void @gimp_int_store_insert_separator_after(%struct._GimpIntStore* %2, i32 1, i32 -1)
  %3 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %4 = bitcast %struct._GtkListStore* %3 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_int_store_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call4)
  %5 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpIntStore*
  call void @gimp_int_store_insert_separator_after(%struct._GimpIntStore* %5, i32 7, i32 -1)
  %6 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %7 = bitcast %struct._GtkListStore* %6 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_int_store_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call6)
  %8 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpIntStore*
  call void @gimp_int_store_insert_separator_after(%struct._GimpIntStore* %8, i32 17, i32 -1)
  %9 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %10 = bitcast %struct._GtkListStore* %9 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_int_store_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call8)
  %11 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpIntStore*
  call void @gimp_int_store_insert_separator_after(%struct._GimpIntStore* %11, i32 18, i32 -1)
  %12 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %13 = bitcast %struct._GtkListStore* %12 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_int_store_get_type() #4
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call10)
  %14 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpIntStore*
  call void @gimp_int_store_insert_separator_after(%struct._GimpIntStore* %14, i32 15, i32 -1)
  %15 = load i32, i32* %with_behind_mode.addr, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %16 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %17 = bitcast %struct._GtkListStore* %16 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_enum_store_get_type() #4
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call12)
  %18 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpEnumStore*
  call void @gimp_enum_store_insert_value_after(%struct._GimpEnumStore* %18, i32 1, i32 2)
  %19 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %20 = bitcast %struct._GtkListStore* %19 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_enum_store_get_type() #4
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call14)
  %21 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpEnumStore*
  call void @gimp_enum_store_insert_value_after(%struct._GimpEnumStore* %21, i32 2, i32 22)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %22 = load i32, i32* %with_replace_modes.addr, align 4
  %tobool16 = icmp ne i32 %22, 0
  br i1 %tobool16, label %if.then.17, label %if.end.24

if.then.17:                                       ; preds = %if.end
  %23 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %24 = bitcast %struct._GtkListStore* %23 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_enum_store_get_type() #4
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call18)
  %25 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpEnumStore*
  call void @gimp_enum_store_insert_value_after(%struct._GimpEnumStore* %25, i32 0, i32 24)
  %26 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %27 = bitcast %struct._GtkListStore* %26 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_enum_store_get_type() #4
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call20)
  %28 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpEnumStore*
  call void @gimp_enum_store_insert_value_after(%struct._GimpEnumStore* %28, i32 22, i32 23)
  %29 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %30 = bitcast %struct._GtkListStore* %29 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_enum_store_get_type() #4
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call22)
  %31 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpEnumStore*
  call void @gimp_enum_store_insert_value_after(%struct._GimpEnumStore* %31, i32 23, i32 25)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.17, %if.end
  %32 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %33 = bitcast %struct._GtkListStore* %32 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_enum_store_get_type() #4
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call25)
  %34 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpEnumStore*
  %call27 = call %struct._GtkWidget* @gimp_enum_combo_box_new_with_model(%struct._GimpEnumStore* %34)
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %combo, align 8
  %35 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %36 = bitcast %struct._GtkListStore* %35 to i8*
  call void @g_object_unref(i8* %36)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_combo_box_get_type() #4
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call28)
  %39 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkComboBox*
  call void @gtk_combo_box_set_row_separator_func(%struct._GtkComboBox* %39, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, i8*)* @gimp_paint_mode_menu_separator_func, i8* inttoptr (i64 -1 to i8*), void (i8*)* null)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  ret %struct._GtkWidget* %40
}

declare %struct._GtkListStore* @gimp_enum_store_new_with_values(i64, i32, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_mode_effects_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_int_store_insert_separator_after(%struct._GimpIntStore* %store, i32 %after, i32 %separator_value) #0 {
entry:
  %store.addr = alloca %struct._GimpIntStore*, align 8
  %after.addr = alloca i32, align 4
  %separator_value.addr = alloca i32, align 4
  %iter = alloca %struct._GtkTreeIter, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %sep_iter = alloca %struct._GtkTreeIter, align 8
  store %struct._GimpIntStore* %store, %struct._GimpIntStore** %store.addr, align 8
  store i32 %after, i32* %after.addr, align 4
  store i32 %separator_value, i32* %separator_value.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpIntStore*, %struct._GimpIntStore** %store.addr, align 8
  %1 = bitcast %struct._GimpIntStore* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_int_store_get_type() #4
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_int_store_insert_separator_after, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.21

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpIntStore*, %struct._GimpIntStore** %store.addr, align 8
  %14 = bitcast %struct._GimpIntStore* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_tree_model_get_type() #4
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkTreeModel*
  %16 = load i32, i32* %after.addr, align 4
  %call13 = call i32 @gimp_int_store_lookup_by_value(%struct._GtkTreeModel* %15, i32 %16, %struct._GtkTreeIter* %iter)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.21

if.then.15:                                       ; preds = %do.end
  %17 = load %struct._GimpIntStore*, %struct._GimpIntStore** %store.addr, align 8
  %18 = bitcast %struct._GimpIntStore* %17 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_list_store_get_type() #4
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call17)
  %19 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkListStore*
  call void @gtk_list_store_insert_after(%struct._GtkListStore* %19, %struct._GtkTreeIter* %sep_iter, %struct._GtkTreeIter* %iter)
  %20 = load %struct._GimpIntStore*, %struct._GimpIntStore** %store.addr, align 8
  %21 = bitcast %struct._GimpIntStore* %20 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_list_store_get_type() #4
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call19)
  %22 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkListStore*
  %23 = load i32, i32* %separator_value.addr, align 4
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %22, %struct._GtkTreeIter* %sep_iter, i32 0, i32 %23, i32 -1)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.9, %if.then.15, %do.end
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int_store_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_enum_store_insert_value_after(%struct._GimpEnumStore* %store, i32 %after, i32 %insert_value) #0 {
entry:
  %store.addr = alloca %struct._GimpEnumStore*, align 8
  %after.addr = alloca i32, align 4
  %insert_value.addr = alloca i32, align 4
  %iter = alloca %struct._GtkTreeIter, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %enum_value = alloca %struct._GEnumValue*, align 8
  %value_iter = alloca %struct._GtkTreeIter, align 8
  %desc = alloca i8*, align 8
  store %struct._GimpEnumStore* %store, %struct._GimpEnumStore** %store.addr, align 8
  store i32 %after, i32* %after.addr, align 4
  store i32 %insert_value, i32* %insert_value.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpEnumStore*, %struct._GimpEnumStore** %store.addr, align 8
  %1 = bitcast %struct._GimpEnumStore* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_enum_store_get_type() #4
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_enum_store_insert_value_after, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.29

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpEnumStore*, %struct._GimpEnumStore** %store.addr, align 8
  %14 = bitcast %struct._GimpEnumStore* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_tree_model_get_type() #4
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkTreeModel*
  %16 = load i32, i32* %after.addr, align 4
  %call13 = call i32 @gimp_int_store_lookup_by_value(%struct._GtkTreeModel* %15, i32 %16, %struct._GtkTreeIter* %iter)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.29

if.then.15:                                       ; preds = %do.end
  %17 = load %struct._GimpEnumStore*, %struct._GimpEnumStore** %store.addr, align 8
  %enum_class = getelementptr inbounds %struct._GimpEnumStore, %struct._GimpEnumStore* %17, i32 0, i32 1
  %18 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %19 = load i32, i32* %insert_value.addr, align 4
  %call17 = call %struct._GEnumValue* @g_enum_get_value(%struct._GEnumClass* %18, i32 %19)
  store %struct._GEnumValue* %call17, %struct._GEnumValue** %enum_value, align 8
  %20 = load %struct._GEnumValue*, %struct._GEnumValue** %enum_value, align 8
  %tobool18 = icmp ne %struct._GEnumValue* %20, null
  br i1 %tobool18, label %if.then.19, label %if.end.28

if.then.19:                                       ; preds = %if.then.15
  %21 = load %struct._GimpEnumStore*, %struct._GimpEnumStore** %store.addr, align 8
  %22 = bitcast %struct._GimpEnumStore* %21 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_list_store_get_type() #4
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call22)
  %23 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkListStore*
  call void @gtk_list_store_insert_after(%struct._GtkListStore* %23, %struct._GtkTreeIter* %value_iter, %struct._GtkTreeIter* %iter)
  %24 = load %struct._GimpEnumStore*, %struct._GimpEnumStore** %store.addr, align 8
  %enum_class24 = getelementptr inbounds %struct._GimpEnumStore, %struct._GimpEnumStore* %24, i32 0, i32 1
  %25 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class24, align 8
  %26 = load %struct._GEnumValue*, %struct._GEnumValue** %enum_value, align 8
  %call25 = call i8* @gimp_enum_value_get_desc(%struct._GEnumClass* %25, %struct._GEnumValue* %26)
  store i8* %call25, i8** %desc, align 8
  %27 = load %struct._GimpEnumStore*, %struct._GimpEnumStore** %store.addr, align 8
  %28 = bitcast %struct._GimpEnumStore* %27 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_list_store_get_type() #4
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call26)
  %29 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkListStore*
  %30 = load %struct._GEnumValue*, %struct._GEnumValue** %enum_value, align 8
  %value = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %30, i32 0, i32 0
  %31 = load i32, i32* %value, align 4
  %32 = load i8*, i8** %desc, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %29, %struct._GtkTreeIter* %value_iter, i32 0, i32 %31, i32 1, i8* %32, i32 -1)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.19, %if.then.15
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.9, %if.end.28, %do.end
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_enum_store_get_type() #2

declare %struct._GtkWidget* @gimp_enum_combo_box_new_with_model(%struct._GimpEnumStore*) #1

declare void @g_object_unref(i8*) #1

declare void @gtk_combo_box_set_row_separator_func(%struct._GtkComboBox*, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_combo_box_get_type() #2

; Function Attrs: nounwind uwtable
define internal i32 @gimp_paint_mode_menu_separator_func(%struct._GtkTreeModel* %model, %struct._GtkTreeIter* %iter, i8* %data) #0 {
entry:
  %model.addr = alloca %struct._GtkTreeModel*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %data.addr = alloca i8*, align 8
  %value = alloca i32, align 4
  store %struct._GtkTreeModel* %model, %struct._GtkTreeModel** %model.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model.addr, align 8
  %1 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %0, %struct._GtkTreeIter* %1, i32 0, i32* %value, i32 -1)
  %2 = load i32, i32* %value, align 4
  %3 = load i8*, i8** %data.addr, align 8
  %4 = ptrtoint i8* %3 to i64
  %conv = trunc i64 %4 to i32
  %cmp = icmp eq i32 %2, %conv
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_stock_button_new(i8* %stock_id, i8* %label) #0 {
entry:
  %stock_id.addr = alloca i8*, align 8
  %label.addr = alloca i8*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %image = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %lab = alloca %struct._GtkWidget*, align 8
  store i8* %stock_id, i8** %stock_id.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  %call = call %struct._GtkWidget* @gtk_button_new()
  store %struct._GtkWidget* %call, %struct._GtkWidget** %button, align 8
  %0 = load i8*, i8** %label.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %hbox, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_container_get_type() #4
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call2)
  %3 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkContainer*
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %3, %struct._GtkWidget* %4)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %5)
  %6 = load i8*, i8** %stock_id.addr, align 8
  %call4 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* %6, i32 4)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %image, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_box_get_type() #4
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkBox*
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %9, %struct._GtkWidget* %10, i32 0, i32 0, i32 0)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %11)
  %12 = load i8*, i8** %label.addr, align 8
  %call7 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %12)
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %lab, align 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %lab, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_label_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call8)
  %15 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkLabel*
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %15, %struct._GtkWidget* %16)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_box_get_type() #4
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call10)
  %19 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkBox*
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %lab, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %19, %struct._GtkWidget* %20, i32 1, i32 1, i32 0)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %lab, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %21)
  br label %if.end

if.else:                                          ; preds = %entry
  %22 = load i8*, i8** %stock_id.addr, align 8
  %call12 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* %22, i32 4)
  store %struct._GtkWidget* %call12, %struct._GtkWidget** %image, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_container_get_type() #4
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call13)
  %25 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkContainer*
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_container_add(%struct._GtkContainer* %25, %struct._GtkWidget* %26)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %27)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  ret %struct._GtkWidget* %28
}

declare %struct._GtkWidget* @gtk_button_new() #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_image_new_from_stock(i8*, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #1

declare void @gtk_label_set_mnemonic_widget(%struct._GtkLabel*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i32 @gimp_int_store_lookup_by_value(%struct._GtkTreeModel*, i32, %struct._GtkTreeIter*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_model_get_type() #2

declare void @gtk_list_store_insert_after(%struct._GtkListStore*, %struct._GtkTreeIter*, %struct._GtkTreeIter*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_list_store_get_type() #2

declare void @gtk_list_store_set(%struct._GtkListStore*, %struct._GtkTreeIter*, ...) #1

declare %struct._GEnumValue* @g_enum_get_value(%struct._GEnumClass*, i32) #1

declare i8* @gimp_enum_value_get_desc(%struct._GEnumClass*, %struct._GEnumValue*) #1

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
