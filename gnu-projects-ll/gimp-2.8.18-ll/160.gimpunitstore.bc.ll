; ModuleID = './libgimpwidgets/gimpunitstore.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpUnitStoreClass = type { %struct._GObjectClass, void ()*, void ()*, void ()*, void ()* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpUnitStore = type { %struct._GObject }
%struct.GimpUnitStorePrivate = type { i32, i32, i32, i8*, i8*, double*, double*, i32 }
%struct._GtkTreeModelIface = type { %struct._GTypeInterface, void (%struct._GtkTreeModel*, %struct._GtkTreePath*, %struct._GtkTreeIter*)*, void (%struct._GtkTreeModel*, %struct._GtkTreePath*, %struct._GtkTreeIter*)*, void (%struct._GtkTreeModel*, %struct._GtkTreePath*, %struct._GtkTreeIter*)*, void (%struct._GtkTreeModel*, %struct._GtkTreePath*)*, void (%struct._GtkTreeModel*, %struct._GtkTreePath*, %struct._GtkTreeIter*, i32*)*, i32 (%struct._GtkTreeModel*)*, i32 (%struct._GtkTreeModel*)*, i64 (%struct._GtkTreeModel*, i32)*, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreePath*)*, %struct._GtkTreePath* (%struct._GtkTreeModel*, %struct._GtkTreeIter*)*, void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, i32, %struct._GValue*)*, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*)*, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*)*, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*)*, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*)*, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i32)*, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*)*, void (%struct._GtkTreeModel*, %struct._GtkTreeIter*)*, void (%struct._GtkTreeModel*, %struct._GtkTreeIter*)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GtkTreeModel = type opaque
%struct._GtkTreePath = type opaque
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_unit_store_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"GimpUnitStore\00", align 1
@gimp_unit_store_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GtkTreeModelIface*)* @gimp_unit_store_tree_model_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"num-values\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"LibGimpWidgets\00", align 1
@__func__.gimp_unit_store_set_has_pixels = private unnamed_addr constant [31 x i8] c"gimp_unit_store_set_has_pixels\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"GIMP_IS_UNIT_STORE (store)\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"has-pixels\00", align 1
@__func__.gimp_unit_store_get_has_pixels = private unnamed_addr constant [31 x i8] c"gimp_unit_store_get_has_pixels\00", align 1
@__func__.gimp_unit_store_set_has_percent = private unnamed_addr constant [32 x i8] c"gimp_unit_store_set_has_percent\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"has-percent\00", align 1
@__func__.gimp_unit_store_get_has_percent = private unnamed_addr constant [32 x i8] c"gimp_unit_store_get_has_percent\00", align 1
@__func__.gimp_unit_store_set_pixel_value = private unnamed_addr constant [32 x i8] c"gimp_unit_store_set_pixel_value\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"index > 0 && index < private->num_values\00", align 1
@__func__.gimp_unit_store_set_pixel_values = private unnamed_addr constant [33 x i8] c"gimp_unit_store_set_pixel_values\00", align 1
@__func__.gimp_unit_store_set_resolution = private unnamed_addr constant [31 x i8] c"gimp_unit_store_set_resolution\00", align 1
@__func__.gimp_unit_store_set_resolutions = private unnamed_addr constant [32 x i8] c"gimp_unit_store_set_resolutions\00", align 1
@__func__.gimp_unit_store_get_value = private unnamed_addr constant [26 x i8] c"gimp_unit_store_get_value\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"index >= 0 && index < private->num_values\00", align 1
@__func__.gimp_unit_store_get_values = private unnamed_addr constant [27 x i8] c"gimp_unit_store_get_values\00", align 1
@__func__._gimp_unit_store_sync_units = private unnamed_addr constant [28 x i8] c"_gimp_unit_store_sync_units\00", align 1
@gimp_unit_store_parent_class = internal global i8* null, align 8
@GimpUnitStore_private_offset = internal global i32 0, align 4
@column_types = internal global [10 x i64] [i64 0, i64 60, i64 24, i64 64, i64 64, i64 64, i64 64, i64 64, i64 64, i64 64], align 16
@.str.8 = private unnamed_addr constant [13 x i8] c"short-format\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%a\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"long-format\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@__func__.gimp_unit_store_set_property = private unnamed_addr constant [29 x i8] c"gimp_unit_store_set_property\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"private->num_values == 0\00", align 1
@.str.13 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"gimpunitstore.c\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@__func__.gimp_unit_store_get_column_type = private unnamed_addr constant [32 x i8] c"gimp_unit_store_get_column_type\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"index >= 0\00", align 1
@__func__.gimp_unit_store_get_iter = private unnamed_addr constant [25 x i8] c"gimp_unit_store_get_iter\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"gtk_tree_path_get_depth (path) > 0\00", align 1
@__func__.gimp_unit_store_tree_model_get_value = private unnamed_addr constant [37 x i8] c"gimp_unit_store_tree_model_get_value\00", align 1
@.str.18 = private unnamed_addr constant [75 x i8] c"column >= 0 && column < GIMP_UNIT_STORE_UNIT_COLUMNS + private->num_values\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_unit_store_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_unit_store_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_unit_store_get_type.g_define_type_id__volatile to i8*))
  %tobool2 = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %3 to i32
  store i32 %land.ext, i32* %tmp
  %4 = load i32, i32* %tmp
  %tobool3 = icmp ne i32 %4, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  %call5 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  %call6 = call i64 @g_type_register_static_simple(i64 80, i8* %call5, i32 168, void (i8*, i8*)* bitcast (void (i8*)* @gimp_unit_store_class_intern_init to void (i8*, i8*)*), i32 24, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpUnitStore*)* @gimp_unit_store_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call6, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call7 = call i64 @gtk_tree_model_get_type() #6
  call void @g_type_add_interface_static(i64 %5, i64 %call7, %struct._GInterfaceInfo* @gimp_unit_store_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_unit_store_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_unit_store_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_unit_store_class_intern_init(i8* %klass) #2 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_unit_store_parent_class, align 8
  %1 = load i32, i32* @GimpUnitStore_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpUnitStore_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpUnitStoreClass*
  call void @gimp_unit_store_class_init(%struct._GimpUnitStoreClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_unit_store_init(%struct._GimpUnitStore* %store) #2 {
entry:
  %store.addr = alloca %struct._GimpUnitStore*, align 8
  %private = alloca %struct.GimpUnitStorePrivate*, align 8
  store %struct._GimpUnitStore* %store, %struct._GimpUnitStore** %store.addr, align 8
  %0 = load %struct._GimpUnitStore*, %struct._GimpUnitStore** %store.addr, align 8
  %1 = bitcast %struct._GimpUnitStore* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_unit_store_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct.GimpUnitStorePrivate*
  store %struct.GimpUnitStorePrivate* %2, %struct.GimpUnitStorePrivate** %private, align 8
  %3 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %has_pixels = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %3, i32 0, i32 1
  store i32 1, i32* %has_pixels, align 4
  %4 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %has_percent = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %4, i32 0, i32 2
  store i32 0, i32* %has_percent, align 4
  %call2 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0))
  %5 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %short_format = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %5, i32 0, i32 3
  store i8* %call2, i8** %short_format, align 8
  %call3 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0))
  %6 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %long_format = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %6, i32 0, i32 4
  store i8* %call3, i8** %long_format, align 8
  %call4 = call i32 @gimp_unit_get_number_of_units()
  %sub = sub nsw i32 %call4, 1
  %7 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %synced_unit = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %7, i32 0, i32 7
  store i32 %sub, i32* %synced_unit, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_unit_store_tree_model_init(%struct._GtkTreeModelIface* %iface) #2 {
entry:
  %iface.addr = alloca %struct._GtkTreeModelIface*, align 8
  store %struct._GtkTreeModelIface* %iface, %struct._GtkTreeModelIface** %iface.addr, align 8
  %0 = load %struct._GtkTreeModelIface*, %struct._GtkTreeModelIface** %iface.addr, align 8
  %get_flags = getelementptr inbounds %struct._GtkTreeModelIface, %struct._GtkTreeModelIface* %0, i32 0, i32 6
  store i32 (%struct._GtkTreeModel*)* @gimp_unit_store_get_flags, i32 (%struct._GtkTreeModel*)** %get_flags, align 8
  %1 = load %struct._GtkTreeModelIface*, %struct._GtkTreeModelIface** %iface.addr, align 8
  %get_n_columns = getelementptr inbounds %struct._GtkTreeModelIface, %struct._GtkTreeModelIface* %1, i32 0, i32 7
  store i32 (%struct._GtkTreeModel*)* @gimp_unit_store_get_n_columns, i32 (%struct._GtkTreeModel*)** %get_n_columns, align 8
  %2 = load %struct._GtkTreeModelIface*, %struct._GtkTreeModelIface** %iface.addr, align 8
  %get_column_type = getelementptr inbounds %struct._GtkTreeModelIface, %struct._GtkTreeModelIface* %2, i32 0, i32 8
  store i64 (%struct._GtkTreeModel*, i32)* @gimp_unit_store_get_column_type, i64 (%struct._GtkTreeModel*, i32)** %get_column_type, align 8
  %3 = load %struct._GtkTreeModelIface*, %struct._GtkTreeModelIface** %iface.addr, align 8
  %get_iter = getelementptr inbounds %struct._GtkTreeModelIface, %struct._GtkTreeModelIface* %3, i32 0, i32 9
  store i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreePath*)* @gimp_unit_store_get_iter, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreePath*)** %get_iter, align 8
  %4 = load %struct._GtkTreeModelIface*, %struct._GtkTreeModelIface** %iface.addr, align 8
  %get_path = getelementptr inbounds %struct._GtkTreeModelIface, %struct._GtkTreeModelIface* %4, i32 0, i32 10
  store %struct._GtkTreePath* (%struct._GtkTreeModel*, %struct._GtkTreeIter*)* @gimp_unit_store_get_path, %struct._GtkTreePath* (%struct._GtkTreeModel*, %struct._GtkTreeIter*)** %get_path, align 8
  %5 = load %struct._GtkTreeModelIface*, %struct._GtkTreeModelIface** %iface.addr, align 8
  %get_value = getelementptr inbounds %struct._GtkTreeModelIface, %struct._GtkTreeModelIface* %5, i32 0, i32 11
  store void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, i32, %struct._GValue*)* @gimp_unit_store_tree_model_get_value, void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, i32, %struct._GValue*)** %get_value, align 8
  %6 = load %struct._GtkTreeModelIface*, %struct._GtkTreeModelIface** %iface.addr, align 8
  %iter_next = getelementptr inbounds %struct._GtkTreeModelIface, %struct._GtkTreeModelIface* %6, i32 0, i32 12
  store i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*)* @gimp_unit_store_iter_next, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*)** %iter_next, align 8
  %7 = load %struct._GtkTreeModelIface*, %struct._GtkTreeModelIface** %iface.addr, align 8
  %iter_children = getelementptr inbounds %struct._GtkTreeModelIface, %struct._GtkTreeModelIface* %7, i32 0, i32 13
  store i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*)* @gimp_unit_store_iter_children, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*)** %iter_children, align 8
  %8 = load %struct._GtkTreeModelIface*, %struct._GtkTreeModelIface** %iface.addr, align 8
  %iter_has_child = getelementptr inbounds %struct._GtkTreeModelIface, %struct._GtkTreeModelIface* %8, i32 0, i32 14
  store i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*)* @gimp_unit_store_iter_has_child, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*)** %iter_has_child, align 8
  %9 = load %struct._GtkTreeModelIface*, %struct._GtkTreeModelIface** %iface.addr, align 8
  %iter_n_children = getelementptr inbounds %struct._GtkTreeModelIface, %struct._GtkTreeModelIface* %9, i32 0, i32 15
  store i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*)* @gimp_unit_store_iter_n_children, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*)** %iter_n_children, align 8
  %10 = load %struct._GtkTreeModelIface*, %struct._GtkTreeModelIface** %iface.addr, align 8
  %iter_nth_child = getelementptr inbounds %struct._GtkTreeModelIface, %struct._GtkTreeModelIface* %10, i32 0, i32 16
  store i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i32)* @gimp_unit_store_iter_nth_child, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i32)** %iter_nth_child, align 8
  %11 = load %struct._GtkTreeModelIface*, %struct._GtkTreeModelIface** %iface.addr, align 8
  %iter_parent = getelementptr inbounds %struct._GtkTreeModelIface, %struct._GtkTreeModelIface* %11, i32 0, i32 17
  store i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*)* @gimp_unit_store_iter_parent, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*)** %iter_parent, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_model_get_type() #3

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpUnitStore* @gimp_unit_store_new(i32 %num_values) #2 {
entry:
  %num_values.addr = alloca i32, align 4
  store i32 %num_values, i32* %num_values.addr, align 4
  %call = call i64 @gimp_unit_store_get_type() #6
  %0 = load i32, i32* %num_values.addr, align 4
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 %0, i8* null)
  %1 = bitcast i8* %call1 to %struct._GimpUnitStore*
  ret %struct._GimpUnitStore* %1
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_unit_store_set_has_pixels(%struct._GimpUnitStore* %store, i32 %has_pixels) #2 {
entry:
  %store.addr = alloca %struct._GimpUnitStore*, align 8
  %has_pixels.addr = alloca i32, align 4
  %private = alloca %struct.GimpUnitStorePrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %model = alloca %struct._GtkTreeModel*, align 8
  %deleted_path = alloca %struct._GtkTreePath*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  %iter32 = alloca %struct._GtkTreeIter, align 8
  store %struct._GimpUnitStore* %store, %struct._GimpUnitStore** %store.addr, align 8
  store i32 %has_pixels, i32* %has_pixels.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpUnitStore*, %struct._GimpUnitStore** %store.addr, align 8
  %1 = bitcast %struct._GimpUnitStore* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_unit_store_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_unit_store_set_has_pixels, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.41

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpUnitStore*, %struct._GimpUnitStore** %store.addr, align 8
  %14 = bitcast %struct._GimpUnitStore* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_unit_store_get_type() #6
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct.GimpUnitStorePrivate*
  store %struct.GimpUnitStorePrivate* %15, %struct.GimpUnitStorePrivate** %private, align 8
  %16 = load i32, i32* %has_pixels.addr, align 4
  %tobool13 = icmp ne i32 %16, 0
  %cond = select i1 %tobool13, i32 1, i32 0
  store i32 %cond, i32* %has_pixels.addr, align 4
  %17 = load i32, i32* %has_pixels.addr, align 4
  %18 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %has_pixels14 = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %18, i32 0, i32 1
  %19 = load i32, i32* %has_pixels14, align 4
  %cmp15 = icmp ne i32 %17, %19
  br i1 %cmp15, label %if.then.16, label %if.end.41

if.then.16:                                       ; preds = %do.end
  %20 = load %struct._GimpUnitStore*, %struct._GimpUnitStore** %store.addr, align 8
  %21 = bitcast %struct._GimpUnitStore* %20 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_tree_model_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call18)
  %22 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkTreeModel*
  store %struct._GtkTreeModel* %22, %struct._GtkTreeModel** %model, align 8
  store %struct._GtkTreePath* null, %struct._GtkTreePath** %deleted_path, align 8
  %23 = load i32, i32* %has_pixels.addr, align 4
  %tobool21 = icmp ne i32 %23, 0
  br i1 %tobool21, label %if.end.26, label %if.then.22

if.then.22:                                       ; preds = %if.then.16
  %24 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call24 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %24, %struct._GtkTreeIter* %iter)
  %25 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call25 = call %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel* %25, %struct._GtkTreeIter* %iter)
  store %struct._GtkTreePath* %call25, %struct._GtkTreePath** %deleted_path, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.22, %if.then.16
  %26 = load i32, i32* %has_pixels.addr, align 4
  %27 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %has_pixels27 = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %27, i32 0, i32 1
  store i32 %26, i32* %has_pixels27, align 4
  %28 = load i32, i32* %has_pixels.addr, align 4
  %tobool28 = icmp ne i32 %28, 0
  br i1 %tobool28, label %if.then.29, label %if.else.35

if.then.29:                                       ; preds = %if.end.26
  %29 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call33 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %29, %struct._GtkTreeIter* %iter32)
  %30 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call34 = call %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel* %30, %struct._GtkTreeIter* %iter32)
  store %struct._GtkTreePath* %call34, %struct._GtkTreePath** %path, align 8
  %31 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %32 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_model_row_inserted(%struct._GtkTreeModel* %31, %struct._GtkTreePath* %32, %struct._GtkTreeIter* %iter32)
  %33 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %33)
  br label %if.end.39

if.else.35:                                       ; preds = %if.end.26
  %34 = load %struct._GtkTreePath*, %struct._GtkTreePath** %deleted_path, align 8
  %tobool36 = icmp ne %struct._GtkTreePath* %34, null
  br i1 %tobool36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.else.35
  %35 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %36 = load %struct._GtkTreePath*, %struct._GtkTreePath** %deleted_path, align 8
  call void @gtk_tree_model_row_deleted(%struct._GtkTreeModel* %35, %struct._GtkTreePath* %36)
  %37 = load %struct._GtkTreePath*, %struct._GtkTreePath** %deleted_path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %37)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.else.35
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.29
  %38 = load %struct._GimpUnitStore*, %struct._GimpUnitStore** %store.addr, align 8
  %39 = bitcast %struct._GimpUnitStore* %38 to %struct._GTypeInstance*
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 80)
  %40 = bitcast %struct._GTypeInstance* %call40 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.9, %if.end.39, %do.end
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare void @gtk_tree_model_row_inserted(%struct._GtkTreeModel*, %struct._GtkTreePath*, %struct._GtkTreeIter*) #1

declare void @gtk_tree_path_free(%struct._GtkTreePath*) #1

declare void @gtk_tree_model_row_deleted(%struct._GtkTreeModel*, %struct._GtkTreePath*) #1

declare void @g_object_notify(%struct._GObject*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_unit_store_get_has_pixels(%struct._GimpUnitStore* %store) #2 {
entry:
  %retval = alloca i32, align 4
  %store.addr = alloca %struct._GimpUnitStore*, align 8
  %private = alloca %struct.GimpUnitStorePrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpUnitStore* %store, %struct._GimpUnitStore** %store.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpUnitStore*, %struct._GimpUnitStore** %store.addr, align 8
  %1 = bitcast %struct._GimpUnitStore* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_unit_store_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_unit_store_get_has_pixels, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpUnitStore*, %struct._GimpUnitStore** %store.addr, align 8
  %14 = bitcast %struct._GimpUnitStore* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_unit_store_get_type() #6
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct.GimpUnitStorePrivate*
  store %struct.GimpUnitStorePrivate* %15, %struct.GimpUnitStorePrivate** %private, align 8
  %16 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %has_pixels = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %16, i32 0, i32 1
  %17 = load i32, i32* %has_pixels, align 4
  store i32 %17, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define void @gimp_unit_store_set_has_percent(%struct._GimpUnitStore* %store, i32 %has_percent) #2 {
entry:
  %store.addr = alloca %struct._GimpUnitStore*, align 8
  %has_percent.addr = alloca i32, align 4
  %private = alloca %struct.GimpUnitStorePrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %model = alloca %struct._GtkTreeModel*, align 8
  %deleted_path = alloca %struct._GtkTreePath*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  %iter36 = alloca %struct._GtkTreeIter, align 8
  store %struct._GimpUnitStore* %store, %struct._GimpUnitStore** %store.addr, align 8
  store i32 %has_percent, i32* %has_percent.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpUnitStore*, %struct._GimpUnitStore** %store.addr, align 8
  %1 = bitcast %struct._GimpUnitStore* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_unit_store_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_unit_store_set_has_percent, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.50

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpUnitStore*, %struct._GimpUnitStore** %store.addr, align 8
  %14 = bitcast %struct._GimpUnitStore* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_unit_store_get_type() #6
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct.GimpUnitStorePrivate*
  store %struct.GimpUnitStorePrivate* %15, %struct.GimpUnitStorePrivate** %private, align 8
  %16 = load i32, i32* %has_percent.addr, align 4
  %tobool13 = icmp ne i32 %16, 0
  %cond = select i1 %tobool13, i32 1, i32 0
  store i32 %cond, i32* %has_percent.addr, align 4
  %17 = load i32, i32* %has_percent.addr, align 4
  %18 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %has_percent14 = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %18, i32 0, i32 2
  %19 = load i32, i32* %has_percent14, align 4
  %cmp15 = icmp ne i32 %17, %19
  br i1 %cmp15, label %if.then.16, label %if.end.50

if.then.16:                                       ; preds = %do.end
  %20 = load %struct._GimpUnitStore*, %struct._GimpUnitStore** %store.addr, align 8
  %21 = bitcast %struct._GimpUnitStore* %20 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_tree_model_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call18)
  %22 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkTreeModel*
  store %struct._GtkTreeModel* %22, %struct._GtkTreeModel** %model, align 8
  store %struct._GtkTreePath* null, %struct._GtkTreePath** %deleted_path, align 8
  %23 = load i32, i32* %has_percent.addr, align 4
  %tobool21 = icmp ne i32 %23, 0
  br i1 %tobool21, label %if.end.30, label %if.then.22

if.then.22:                                       ; preds = %if.then.16
  %24 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call24 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %24, %struct._GtkTreeIter* %iter)
  %25 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %has_pixels = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %25, i32 0, i32 1
  %26 = load i32, i32* %has_pixels, align 4
  %tobool25 = icmp ne i32 %26, 0
  br i1 %tobool25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.then.22
  %27 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call27 = call i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel* %27, %struct._GtkTreeIter* %iter)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.then.22
  %28 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call29 = call %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel* %28, %struct._GtkTreeIter* %iter)
  store %struct._GtkTreePath* %call29, %struct._GtkTreePath** %deleted_path, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.28, %if.then.16
  %29 = load i32, i32* %has_percent.addr, align 4
  %30 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %has_percent31 = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %30, i32 0, i32 2
  store i32 %29, i32* %has_percent31, align 4
  %31 = load i32, i32* %has_percent.addr, align 4
  %tobool32 = icmp ne i32 %31, 0
  br i1 %tobool32, label %if.then.33, label %if.else.44

if.then.33:                                       ; preds = %if.end.30
  %32 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call37 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %32, %struct._GtkTreeIter* %iter36)
  %33 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %has_pixels38 = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %33, i32 0, i32 1
  %34 = load i32, i32* %has_pixels38, align 4
  %tobool39 = icmp ne i32 %34, 0
  br i1 %tobool39, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %if.then.33
  %35 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call41 = call i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel* %35, %struct._GtkTreeIter* %iter36)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %if.then.33
  %36 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call43 = call %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel* %36, %struct._GtkTreeIter* %iter36)
  store %struct._GtkTreePath* %call43, %struct._GtkTreePath** %path, align 8
  %37 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %38 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_model_row_inserted(%struct._GtkTreeModel* %37, %struct._GtkTreePath* %38, %struct._GtkTreeIter* %iter36)
  %39 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %39)
  br label %if.end.48

if.else.44:                                       ; preds = %if.end.30
  %40 = load %struct._GtkTreePath*, %struct._GtkTreePath** %deleted_path, align 8
  %tobool45 = icmp ne %struct._GtkTreePath* %40, null
  br i1 %tobool45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.else.44
  %41 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %42 = load %struct._GtkTreePath*, %struct._GtkTreePath** %deleted_path, align 8
  call void @gtk_tree_model_row_deleted(%struct._GtkTreeModel* %41, %struct._GtkTreePath* %42)
  %43 = load %struct._GtkTreePath*, %struct._GtkTreePath** %deleted_path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %43)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %if.else.44
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.end.42
  %44 = load %struct._GimpUnitStore*, %struct._GimpUnitStore** %store.addr, align 8
  %45 = bitcast %struct._GimpUnitStore* %44 to %struct._GTypeInstance*
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 80)
  %46 = bitcast %struct._GTypeInstance* %call49 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.9, %if.end.48, %do.end
  ret void
}

declare i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_unit_store_get_has_percent(%struct._GimpUnitStore* %store) #2 {
entry:
  %retval = alloca i32, align 4
  %store.addr = alloca %struct._GimpUnitStore*, align 8
  %private = alloca %struct.GimpUnitStorePrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpUnitStore* %store, %struct._GimpUnitStore** %store.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpUnitStore*, %struct._GimpUnitStore** %store.addr, align 8
  %1 = bitcast %struct._GimpUnitStore* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_unit_store_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_unit_store_get_has_percent, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpUnitStore*, %struct._GimpUnitStore** %store.addr, align 8
  %14 = bitcast %struct._GimpUnitStore* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_unit_store_get_type() #6
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct.GimpUnitStorePrivate*
  store %struct.GimpUnitStorePrivate* %15, %struct.GimpUnitStorePrivate** %private, align 8
  %16 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %has_percent = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %16, i32 0, i32 2
  %17 = load i32, i32* %has_percent, align 4
  store i32 %17, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define void @gimp_unit_store_set_pixel_value(%struct._GimpUnitStore* %store, i32 %index, double %value) #2 {
entry:
  %store.addr = alloca %struct._GimpUnitStore*, align 8
  %index.addr = alloca i32, align 4
  %value.addr = alloca double, align 8
  %private = alloca %struct.GimpUnitStorePrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpUnitStore* %store, %struct._GimpUnitStore** %store.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  store double %value, double* %value.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpUnitStore*, %struct._GimpUnitStore** %store.addr, align 8
  %1 = bitcast %struct._GimpUnitStore* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_unit_store_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_unit_store_set_pixel_value, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpUnitStore*, %struct._GimpUnitStore** %store.addr, align 8
  %14 = bitcast %struct._GimpUnitStore* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_unit_store_get_type() #6
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct.GimpUnitStorePrivate*
  store %struct.GimpUnitStorePrivate* %15, %struct.GimpUnitStorePrivate** %private, align 8
  br label %do.body.13

do.body.13:                                       ; preds = %do.end
  %16 = load i32, i32* %index.addr, align 4
  %cmp14 = icmp sgt i32 %16, 0
  br i1 %cmp14, label %land.lhs.true.15, label %if.else.18

land.lhs.true.15:                                 ; preds = %do.body.13
  %17 = load i32, i32* %index.addr, align 4
  %18 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %num_values = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %18, i32 0, i32 0
  %19 = load i32, i32* %num_values, align 4
  %cmp16 = icmp slt i32 %17, %19
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %land.lhs.true.15
  br label %if.end.19

if.else.18:                                       ; preds = %land.lhs.true.15, %do.body.13
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_unit_store_set_pixel_value, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.19:                                        ; preds = %if.then.17
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  %20 = load double, double* %value.addr, align 8
  %21 = load i32, i32* %index.addr, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %values = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %22, i32 0, i32 5
  %23 = load double*, double** %values, align 8
  %arrayidx = getelementptr inbounds double, double* %23, i64 %idxprom
  store double %20, double* %arrayidx, align 8
  br label %return

return:                                           ; preds = %do.end.20, %if.else.18, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_unit_store_set_pixel_values(%struct._GimpUnitStore* %store, double %first_value, ...) #2 {
entry:
  %store.addr = alloca %struct._GimpUnitStore*, align 8
  %first_value.addr = alloca double, align 8
  %private = alloca %struct.GimpUnitStorePrivate*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpUnitStore* %store, %struct._GimpUnitStore** %store.addr, align 8
  store double %first_value, double* %first_value.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpUnitStore*, %struct._GimpUnitStore** %store.addr, align 8
  %1 = bitcast %struct._GimpUnitStore* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_unit_store_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_unit_store_set_pixel_values, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpUnitStore*, %struct._GimpUnitStore** %store.addr, align 8
  %14 = bitcast %struct._GimpUnitStore* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_unit_store_get_type() #6
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct.GimpUnitStorePrivate*
  store %struct.GimpUnitStorePrivate* %15, %struct.GimpUnitStorePrivate** %private, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay13 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay13)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.19, %do.end
  %16 = load i32, i32* %i, align 4
  %17 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %num_values = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %17, i32 0, i32 0
  %18 = load i32, i32* %num_values, align 4
  %cmp14 = icmp slt i32 %16, %18
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load double, double* %first_value.addr, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom = sext i32 %20 to i64
  %21 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %values = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %21, i32 0, i32 5
  %22 = load double*, double** %values, align 8
  %arrayidx = getelementptr inbounds double, double* %22, i64 %idxprom
  store double %19, double* %arrayidx, align 8
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  %24 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %num_values15 = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %24, i32 0, i32 0
  %25 = load i32, i32* %num_values15, align 4
  %cmp16 = icmp slt i32 %inc, %25
  br i1 %cmp16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %for.body
  %arraydecay18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %fp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay18, i32 0, i32 1
  %fp_offset = load i32, i32* %fp_offset_p
  %fits_in_fp = icmp ule i32 %fp_offset, 160
  br i1 %fits_in_fp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %if.then.17
  %26 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay18, i32 0, i32 3
  %reg_save_area = load i8*, i8** %26
  %27 = getelementptr i8, i8* %reg_save_area, i32 %fp_offset
  %28 = bitcast i8* %27 to double*
  %29 = add i32 %fp_offset, 16
  store i32 %29, i32* %fp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %if.then.17
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay18, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %30 = bitcast i8* %overflow_arg_area to double*
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi double* [ %28, %vaarg.in_reg ], [ %30, %vaarg.in_mem ]
  %31 = load double, double* %vaarg.addr
  store double %31, double* %first_value.addr, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %vaarg.end, %for.body
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay20 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay2021 = bitcast %struct.__va_list_tag* %arraydecay20 to i8*
  call void @llvm.va_end(i8* %arraydecay2021)
  br label %return

return:                                           ; preds = %for.end, %if.else.9
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: nounwind uwtable
define void @gimp_unit_store_set_resolution(%struct._GimpUnitStore* %store, i32 %index, double %resolution) #2 {
entry:
  %store.addr = alloca %struct._GimpUnitStore*, align 8
  %index.addr = alloca i32, align 4
  %resolution.addr = alloca double, align 8
  %private = alloca %struct.GimpUnitStorePrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpUnitStore* %store, %struct._GimpUnitStore** %store.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  store double %resolution, double* %resolution.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpUnitStore*, %struct._GimpUnitStore** %store.addr, align 8
  %1 = bitcast %struct._GimpUnitStore* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_unit_store_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_unit_store_set_resolution, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpUnitStore*, %struct._GimpUnitStore** %store.addr, align 8
  %14 = bitcast %struct._GimpUnitStore* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_unit_store_get_type() #6
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct.GimpUnitStorePrivate*
  store %struct.GimpUnitStorePrivate* %15, %struct.GimpUnitStorePrivate** %private, align 8
  br label %do.body.13

do.body.13:                                       ; preds = %do.end
  %16 = load i32, i32* %index.addr, align 4
  %cmp14 = icmp sgt i32 %16, 0
  br i1 %cmp14, label %land.lhs.true.15, label %if.else.18

land.lhs.true.15:                                 ; preds = %do.body.13
  %17 = load i32, i32* %index.addr, align 4
  %18 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %num_values = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %18, i32 0, i32 0
  %19 = load i32, i32* %num_values, align 4
  %cmp16 = icmp slt i32 %17, %19
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %land.lhs.true.15
  br label %if.end.19

if.else.18:                                       ; preds = %land.lhs.true.15, %do.body.13
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_unit_store_set_resolution, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.19:                                        ; preds = %if.then.17
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  %20 = load double, double* %resolution.addr, align 8
  %21 = load i32, i32* %index.addr, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %resolutions = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %22, i32 0, i32 6
  %23 = load double*, double** %resolutions, align 8
  %arrayidx = getelementptr inbounds double, double* %23, i64 %idxprom
  store double %20, double* %arrayidx, align 8
  br label %return

return:                                           ; preds = %do.end.20, %if.else.18, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_unit_store_set_resolutions(%struct._GimpUnitStore* %store, double %first_resolution, ...) #2 {
entry:
  %store.addr = alloca %struct._GimpUnitStore*, align 8
  %first_resolution.addr = alloca double, align 8
  %private = alloca %struct.GimpUnitStorePrivate*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpUnitStore* %store, %struct._GimpUnitStore** %store.addr, align 8
  store double %first_resolution, double* %first_resolution.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpUnitStore*, %struct._GimpUnitStore** %store.addr, align 8
  %1 = bitcast %struct._GimpUnitStore* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_unit_store_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_unit_store_set_resolutions, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpUnitStore*, %struct._GimpUnitStore** %store.addr, align 8
  %14 = bitcast %struct._GimpUnitStore* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_unit_store_get_type() #6
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct.GimpUnitStorePrivate*
  store %struct.GimpUnitStorePrivate* %15, %struct.GimpUnitStorePrivate** %private, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay13 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay13)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.19, %do.end
  %16 = load i32, i32* %i, align 4
  %17 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %num_values = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %17, i32 0, i32 0
  %18 = load i32, i32* %num_values, align 4
  %cmp14 = icmp slt i32 %16, %18
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load double, double* %first_resolution.addr, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom = sext i32 %20 to i64
  %21 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %resolutions = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %21, i32 0, i32 6
  %22 = load double*, double** %resolutions, align 8
  %arrayidx = getelementptr inbounds double, double* %22, i64 %idxprom
  store double %19, double* %arrayidx, align 8
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  %24 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %num_values15 = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %24, i32 0, i32 0
  %25 = load i32, i32* %num_values15, align 4
  %cmp16 = icmp slt i32 %inc, %25
  br i1 %cmp16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %for.body
  %arraydecay18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %fp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay18, i32 0, i32 1
  %fp_offset = load i32, i32* %fp_offset_p
  %fits_in_fp = icmp ule i32 %fp_offset, 160
  br i1 %fits_in_fp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %if.then.17
  %26 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay18, i32 0, i32 3
  %reg_save_area = load i8*, i8** %26
  %27 = getelementptr i8, i8* %reg_save_area, i32 %fp_offset
  %28 = bitcast i8* %27 to double*
  %29 = add i32 %fp_offset, 16
  store i32 %29, i32* %fp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %if.then.17
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay18, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %30 = bitcast i8* %overflow_arg_area to double*
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi double* [ %28, %vaarg.in_reg ], [ %30, %vaarg.in_mem ]
  %31 = load double, double* %vaarg.addr
  store double %31, double* %first_resolution.addr, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %vaarg.end, %for.body
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay20 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay2021 = bitcast %struct.__va_list_tag* %arraydecay20 to i8*
  call void @llvm.va_end(i8* %arraydecay2021)
  br label %return

return:                                           ; preds = %for.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define double @gimp_unit_store_get_value(%struct._GimpUnitStore* %store, i32 %unit, i32 %index) #2 {
entry:
  %retval = alloca double, align 8
  %store.addr = alloca %struct._GimpUnitStore*, align 8
  %unit.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %private = alloca %struct.GimpUnitStorePrivate*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %value = alloca %struct._GValue, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpUnitStore* %store, %struct._GimpUnitStore** %store.addr, align 8
  store i32 %unit, i32* %unit.addr, align 4
  store i32 %index, i32* %index.addr, align 4
  %0 = bitcast %struct._GValue* %value to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 24, i32 8, i1 false)
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct._GimpUnitStore*, %struct._GimpUnitStore** %store.addr, align 8
  %2 = bitcast %struct._GimpUnitStore* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_unit_store_get_type() #6
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %8, %9
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #7
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_unit_store_get_value, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %14 = load %struct._GimpUnitStore*, %struct._GimpUnitStore** %store.addr, align 8
  %15 = bitcast %struct._GimpUnitStore* %14 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_unit_store_get_type() #6
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %15, i64 %call11)
  %16 = bitcast i8* %call12 to %struct.GimpUnitStorePrivate*
  store %struct.GimpUnitStorePrivate* %16, %struct.GimpUnitStorePrivate** %private, align 8
  br label %do.body.13

do.body.13:                                       ; preds = %do.end
  %17 = load i32, i32* %index.addr, align 4
  %cmp14 = icmp sge i32 %17, 0
  br i1 %cmp14, label %land.lhs.true.15, label %if.else.18

land.lhs.true.15:                                 ; preds = %do.body.13
  %18 = load i32, i32* %index.addr, align 4
  %19 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %num_values = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %19, i32 0, i32 0
  %20 = load i32, i32* %num_values, align 4
  %cmp16 = icmp slt i32 %18, %20
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %land.lhs.true.15
  br label %if.end.19

if.else.18:                                       ; preds = %land.lhs.true.15, %do.body.13
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_unit_store_get_value, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end.19:                                        ; preds = %if.then.17
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  %21 = load i32, i32* %unit.addr, align 4
  %conv = zext i32 %21 to i64
  %22 = inttoptr i64 %conv to i8*
  %user_data = getelementptr inbounds %struct._GtkTreeIter, %struct._GtkTreeIter* %iter, i32 0, i32 1
  store i8* %22, i8** %user_data, align 8
  %23 = load %struct._GimpUnitStore*, %struct._GimpUnitStore** %store.addr, align 8
  %24 = bitcast %struct._GimpUnitStore* %23 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_tree_model_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call21)
  %25 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkTreeModel*
  %26 = load i32, i32* %index.addr, align 4
  %add = add nsw i32 10, %26
  call void @gimp_unit_store_tree_model_get_value(%struct._GtkTreeModel* %25, %struct._GtkTreeIter* %iter, i32 %add, %struct._GValue* %value)
  %call23 = call double @g_value_get_double(%struct._GValue* %value)
  store double %call23, double* %retval
  br label %return

return:                                           ; preds = %do.end.20, %if.else.18, %if.else.9
  %27 = load double, double* %retval
  ret double %27
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define internal void @gimp_unit_store_tree_model_get_value(%struct._GtkTreeModel* %tree_model, %struct._GtkTreeIter* %iter, i32 %column, %struct._GValue* %value) #2 {
entry:
  %tree_model.addr = alloca %struct._GtkTreeModel*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %column.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %private = alloca %struct.GimpUnitStorePrivate*, align 8
  %unit = alloca i32, align 4
  store %struct._GtkTreeModel* %tree_model, %struct._GtkTreeModel** %tree_model.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  store i32 %column, i32* %column.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  %0 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %tree_model.addr, align 8
  %1 = bitcast %struct._GtkTreeModel* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_unit_store_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct.GimpUnitStorePrivate*
  store %struct.GimpUnitStorePrivate* %2, %struct.GimpUnitStorePrivate** %private, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load i32, i32* %column.addr, align 4
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %4 = load i32, i32* %column.addr, align 4
  %5 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %num_values = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %5, i32 0, i32 0
  %6 = load i32, i32* %num_values, align 4
  %add = add nsw i32 10, %6
  %cmp2 = icmp slt i32 %4, %add
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_unit_store_tree_model_get_value, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.52

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load i32, i32* %column.addr, align 4
  %cmp3 = icmp slt i32 %8, 10
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %9 = load i32, i32* %column.addr, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [10 x i64], [10 x i64]* @column_types, i32 0, i64 %idxprom
  %10 = load i64, i64* %arrayidx, align 8
  br label %cond.end

cond.false:                                       ; preds = %do.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %10, %cond.true ], [ 60, %cond.false ]
  %call4 = call %struct._GValue* @g_value_init(%struct._GValue* %7, i64 %cond)
  %11 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %user_data = getelementptr inbounds %struct._GtkTreeIter, %struct._GtkTreeIter* %11, i32 0, i32 1
  %12 = load i8*, i8** %user_data, align 8
  %13 = ptrtoint i8* %12 to i64
  %conv = trunc i64 %13 to i32
  store i32 %conv, i32* %unit, align 4
  %14 = load i32, i32* %unit, align 4
  %cmp5 = icmp uge i32 %14, 0
  br i1 %cmp5, label %land.lhs.true.7, label %lor.lhs.false

land.lhs.true.7:                                  ; preds = %cond.end
  %15 = load i32, i32* %unit, align 4
  %call8 = call i32 @gimp_unit_get_number_of_units()
  %cmp9 = icmp ult i32 %15, %call8
  br i1 %cmp9, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.7, %cond.end
  %16 = load i32, i32* %unit, align 4
  %cmp11 = icmp eq i32 %16, 65536
  br i1 %cmp11, label %land.lhs.true.13, label %if.end.52

land.lhs.true.13:                                 ; preds = %lor.lhs.false
  %17 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %has_percent = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %17, i32 0, i32 2
  %18 = load i32, i32* %has_percent, align 4
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.then.14, label %if.end.52

if.then.14:                                       ; preds = %land.lhs.true.13, %land.lhs.true.7
  %19 = load i32, i32* %column.addr, align 4
  switch i32 %19, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.15
    i32 2, label %sw.bb.17
    i32 3, label %sw.bb.19
    i32 4, label %sw.bb.21
    i32 5, label %sw.bb.23
    i32 6, label %sw.bb.25
    i32 7, label %sw.bb.27
    i32 8, label %sw.bb.29
    i32 9, label %sw.bb.31
  ]

sw.bb:                                            ; preds = %if.then.14
  %20 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %21 = load i32, i32* %unit, align 4
  call void @g_value_set_int(%struct._GValue* %20, i32 %21)
  br label %sw.epilog

sw.bb.15:                                         ; preds = %if.then.14
  %22 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %23 = load i32, i32* %unit, align 4
  %call16 = call double @gimp_unit_get_factor(i32 %23)
  call void @g_value_set_double(%struct._GValue* %22, double %call16)
  br label %sw.epilog

sw.bb.17:                                         ; preds = %if.then.14
  %24 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %25 = load i32, i32* %unit, align 4
  %call18 = call i32 @gimp_unit_get_digits(i32 %25)
  call void @g_value_set_int(%struct._GValue* %24, i32 %call18)
  br label %sw.epilog

sw.bb.19:                                         ; preds = %if.then.14
  %26 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %27 = load i32, i32* %unit, align 4
  %call20 = call i8* @gimp_unit_get_identifier(i32 %27)
  call void @g_value_set_static_string(%struct._GValue* %26, i8* %call20)
  br label %sw.epilog

sw.bb.21:                                         ; preds = %if.then.14
  %28 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %29 = load i32, i32* %unit, align 4
  %call22 = call i8* @gimp_unit_get_symbol(i32 %29)
  call void @g_value_set_static_string(%struct._GValue* %28, i8* %call22)
  br label %sw.epilog

sw.bb.23:                                         ; preds = %if.then.14
  %30 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %31 = load i32, i32* %unit, align 4
  %call24 = call i8* @gimp_unit_get_abbreviation(i32 %31)
  call void @g_value_set_static_string(%struct._GValue* %30, i8* %call24)
  br label %sw.epilog

sw.bb.25:                                         ; preds = %if.then.14
  %32 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %33 = load i32, i32* %unit, align 4
  %call26 = call i8* @gimp_unit_get_singular(i32 %33)
  call void @g_value_set_static_string(%struct._GValue* %32, i8* %call26)
  br label %sw.epilog

sw.bb.27:                                         ; preds = %if.then.14
  %34 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %35 = load i32, i32* %unit, align 4
  %call28 = call i8* @gimp_unit_get_plural(i32 %35)
  call void @g_value_set_static_string(%struct._GValue* %34, i8* %call28)
  br label %sw.epilog

sw.bb.29:                                         ; preds = %if.then.14
  %36 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %37 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %short_format = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %37, i32 0, i32 3
  %38 = load i8*, i8** %short_format, align 8
  %39 = load i32, i32* %unit, align 4
  %call30 = call i8* @gimp_unit_format_string(i8* %38, i32 %39)
  call void @g_value_take_string(%struct._GValue* %36, i8* %call30)
  br label %sw.epilog

sw.bb.31:                                         ; preds = %if.then.14
  %40 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %41 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %long_format = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %41, i32 0, i32 4
  %42 = load i8*, i8** %long_format, align 8
  %43 = load i32, i32* %unit, align 4
  %call32 = call i8* @gimp_unit_format_string(i8* %42, i32 %43)
  call void @g_value_take_string(%struct._GValue* %40, i8* %call32)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.14
  %44 = load i32, i32* %column.addr, align 4
  %sub = sub nsw i32 %44, 10
  store i32 %sub, i32* %column.addr, align 4
  %45 = load i32, i32* %unit, align 4
  %cmp33 = icmp eq i32 %45, 0
  br i1 %cmp33, label %if.then.35, label %if.else.38

if.then.35:                                       ; preds = %sw.default
  %46 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %47 = load i32, i32* %column.addr, align 4
  %idxprom36 = sext i32 %47 to i64
  %48 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %values = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %48, i32 0, i32 5
  %49 = load double*, double** %values, align 8
  %arrayidx37 = getelementptr inbounds double, double* %49, i64 %idxprom36
  %50 = load double, double* %arrayidx37, align 8
  call void @g_value_set_double(%struct._GValue* %46, double %50)
  br label %if.end.51

if.else.38:                                       ; preds = %sw.default
  %51 = load i32, i32* %column.addr, align 4
  %idxprom39 = sext i32 %51 to i64
  %52 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %resolutions = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %52, i32 0, i32 6
  %53 = load double*, double** %resolutions, align 8
  %arrayidx40 = getelementptr inbounds double, double* %53, i64 %idxprom39
  %54 = load double, double* %arrayidx40, align 8
  %tobool41 = fcmp une double %54, 0.000000e+00
  br i1 %tobool41, label %if.then.42, label %if.end.50

if.then.42:                                       ; preds = %if.else.38
  %55 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %56 = load i32, i32* %column.addr, align 4
  %idxprom43 = sext i32 %56 to i64
  %57 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %values44 = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %57, i32 0, i32 5
  %58 = load double*, double** %values44, align 8
  %arrayidx45 = getelementptr inbounds double, double* %58, i64 %idxprom43
  %59 = load double, double* %arrayidx45, align 8
  %60 = load i32, i32* %unit, align 4
  %call46 = call double @gimp_unit_get_factor(i32 %60)
  %mul = fmul double %59, %call46
  %61 = load i32, i32* %column.addr, align 4
  %idxprom47 = sext i32 %61 to i64
  %62 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %resolutions48 = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %62, i32 0, i32 6
  %63 = load double*, double** %resolutions48, align 8
  %arrayidx49 = getelementptr inbounds double, double* %63, i64 %idxprom47
  %64 = load double, double* %arrayidx49, align 8
  %div = fdiv double %mul, %64
  call void @g_value_set_double(%struct._GValue* %55, double %div)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.42, %if.else.38
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.then.35
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.51, %sw.bb.31, %sw.bb.29, %sw.bb.27, %sw.bb.25, %sw.bb.23, %sw.bb.21, %sw.bb.19, %sw.bb.17, %sw.bb.15, %sw.bb
  br label %if.end.52

if.end.52:                                        ; preds = %if.else, %sw.epilog, %land.lhs.true.13, %lor.lhs.false
  ret void
}

declare double @g_value_get_double(%struct._GValue*) #1

; Function Attrs: nounwind uwtable
define void @gimp_unit_store_get_values(%struct._GimpUnitStore* %store, i32 %unit, double* %first_value, ...) #2 {
entry:
  %store.addr = alloca %struct._GimpUnitStore*, align 8
  %unit.addr = alloca i32, align 4
  %first_value.addr = alloca double*, align 8
  %private = alloca %struct.GimpUnitStorePrivate*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpUnitStore* %store, %struct._GimpUnitStore** %store.addr, align 8
  store i32 %unit, i32* %unit.addr, align 4
  store double* %first_value, double** %first_value.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpUnitStore*, %struct._GimpUnitStore** %store.addr, align 8
  %1 = bitcast %struct._GimpUnitStore* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_unit_store_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_unit_store_get_values, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpUnitStore*, %struct._GimpUnitStore** %store.addr, align 8
  %14 = bitcast %struct._GimpUnitStore* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_unit_store_get_type() #6
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct.GimpUnitStorePrivate*
  store %struct.GimpUnitStorePrivate* %15, %struct.GimpUnitStorePrivate** %private, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay13 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay13)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.23, %do.end
  %16 = load i32, i32* %i, align 4
  %17 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %num_values = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %17, i32 0, i32 0
  %18 = load i32, i32* %num_values, align 4
  %cmp14 = icmp slt i32 %16, %18
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load double*, double** %first_value.addr, align 8
  %tobool15 = icmp ne double* %19, null
  br i1 %tobool15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %for.body
  %20 = load %struct._GimpUnitStore*, %struct._GimpUnitStore** %store.addr, align 8
  %21 = load i32, i32* %unit.addr, align 4
  %22 = load i32, i32* %i, align 4
  %call17 = call double @gimp_unit_store_get_value(%struct._GimpUnitStore* %20, i32 %21, i32 %22)
  %23 = load double*, double** %first_value.addr, align 8
  store double %call17, double* %23, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %for.body
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  %25 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %num_values19 = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %25, i32 0, i32 0
  %26 = load i32, i32* %num_values19, align 4
  %cmp20 = icmp slt i32 %inc, %26
  br i1 %cmp20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.end.18
  %arraydecay22 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay22, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %if.then.21
  %27 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay22, i32 0, i32 3
  %reg_save_area = load i8*, i8** %27
  %28 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %29 = bitcast i8* %28 to double**
  %30 = add i32 %gp_offset, 8
  store i32 %30, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %if.then.21
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay22, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %31 = bitcast i8* %overflow_arg_area to double**
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi double** [ %29, %vaarg.in_reg ], [ %31, %vaarg.in_mem ]
  %32 = load double*, double** %vaarg.addr
  store double* %32, double** %first_value.addr, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %vaarg.end, %if.end.18
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay24 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay2425 = bitcast %struct.__va_list_tag* %arraydecay24 to i8*
  call void @llvm.va_end(i8* %arraydecay2425)
  br label %return

return:                                           ; preds = %for.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @_gimp_unit_store_sync_units(%struct._GimpUnitStore* %store) #2 {
entry:
  %store.addr = alloca %struct._GimpUnitStore*, align 8
  %private = alloca %struct.GimpUnitStorePrivate*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %iter_valid = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %unit = alloca i32, align 4
  %path = alloca %struct._GtkTreePath*, align 8
  store %struct._GimpUnitStore* %store, %struct._GimpUnitStore** %store.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpUnitStore*, %struct._GimpUnitStore** %store.addr, align 8
  %1 = bitcast %struct._GimpUnitStore* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_unit_store_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__._gimp_unit_store_sync_units, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpUnitStore*, %struct._GimpUnitStore** %store.addr, align 8
  %14 = bitcast %struct._GimpUnitStore* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_unit_store_get_type() #6
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct.GimpUnitStorePrivate*
  store %struct.GimpUnitStorePrivate* %15, %struct.GimpUnitStorePrivate** %private, align 8
  %16 = load %struct._GimpUnitStore*, %struct._GimpUnitStore** %store.addr, align 8
  %17 = bitcast %struct._GimpUnitStore* %16 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_tree_model_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call13)
  %18 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkTreeModel*
  store %struct._GtkTreeModel* %18, %struct._GtkTreeModel** %model, align 8
  %19 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call15 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %19, %struct._GtkTreeIter* %iter)
  store i32 %call15, i32* %iter_valid, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %20 = load i32, i32* %iter_valid, align 4
  %tobool16 = icmp ne i32 %20, 0
  br i1 %tobool16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %21, %struct._GtkTreeIter* %iter, i32 0, i32* %unit, i32 -1)
  %22 = load i32, i32* %unit, align 4
  %cmp18 = icmp ne i32 %22, 65536
  br i1 %cmp18, label %land.lhs.true.19, label %if.end.24

land.lhs.true.19:                                 ; preds = %for.body
  %23 = load i32, i32* %unit, align 4
  %24 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %synced_unit = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %24, i32 0, i32 7
  %25 = load i32, i32* %synced_unit, align 4
  %cmp20 = icmp ugt i32 %23, %25
  br i1 %cmp20, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %land.lhs.true.19
  %26 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call23 = call %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel* %26, %struct._GtkTreeIter* %iter)
  store %struct._GtkTreePath* %call23, %struct._GtkTreePath** %path, align 8
  %27 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %28 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_model_row_inserted(%struct._GtkTreeModel* %27, %struct._GtkTreePath* %28, %struct._GtkTreeIter* %iter)
  %29 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %29)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.21, %land.lhs.true.19, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %30 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call25 = call i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel* %30, %struct._GtkTreeIter* %iter)
  store i32 %call25, i32* %iter_valid, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call26 = call i32 @gimp_unit_get_number_of_units()
  %sub = sub nsw i32 %call26, 1
  %31 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %synced_unit27 = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %31, i32 0, i32 7
  store i32 %sub, i32* %synced_unit27, align 4
  br label %return

return:                                           ; preds = %for.end, %if.else.9
  ret void
}

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #1

declare i32 @gimp_unit_get_number_of_units() #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_unit_store_class_init(%struct._GimpUnitStoreClass* %klass) #2 {
entry:
  %klass.addr = alloca %struct._GimpUnitStoreClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpUnitStoreClass* %klass, %struct._GimpUnitStoreClass** %klass.addr, align 8
  %0 = load %struct._GimpUnitStoreClass*, %struct._GimpUnitStoreClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpUnitStoreClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %call1 = call i64 @gimp_unit_get_type() #6
  store i64 %call1, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @column_types, i32 0, i64 0), align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_unit_store_finalize, void (%struct._GObject*)** %finalize, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_unit_store_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_unit_store_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call2 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* null, i32 0, i32 2147483647, i32 0, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %6, i32 1, %struct._GParamSpec* %call2)
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null, i32 1, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %7, i32 2, %struct._GParamSpec* %call3)
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call4 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %8, i32 3, %struct._GParamSpec* %call4)
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %9, i32 4, %struct._GParamSpec* %call5)
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %10, i32 5, %struct._GParamSpec* %call6)
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %12 = bitcast %struct._GObjectClass* %11 to i8*
  call void @g_type_class_add_private(i8* %12, i64 56)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_unit_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @gimp_unit_store_finalize(%struct._GObject* %object) #2 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %private = alloca %struct.GimpUnitStorePrivate*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_unit_store_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct.GimpUnitStorePrivate*
  store %struct.GimpUnitStorePrivate* %2, %struct.GimpUnitStorePrivate** %private, align 8
  %3 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %short_format = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %3, i32 0, i32 3
  %4 = load i8*, i8** %short_format, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %short_format2 = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %5, i32 0, i32 3
  %6 = load i8*, i8** %short_format2, align 8
  call void @g_free(i8* %6)
  %7 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %short_format3 = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %7, i32 0, i32 3
  store i8* null, i8** %short_format3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %long_format = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %8, i32 0, i32 4
  %9 = load i8*, i8** %long_format, align 8
  %tobool4 = icmp ne i8* %9, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %10 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %long_format6 = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %10, i32 0, i32 4
  %11 = load i8*, i8** %long_format6, align 8
  call void @g_free(i8* %11)
  %12 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %long_format7 = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %12, i32 0, i32 4
  store i8* null, i8** %long_format7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %13 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %num_values = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %13, i32 0, i32 0
  %14 = load i32, i32* %num_values, align 4
  %cmp = icmp sgt i32 %14, 0
  br i1 %cmp, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.8
  %15 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %values = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %15, i32 0, i32 5
  %16 = load double*, double** %values, align 8
  %17 = bitcast double* %16 to i8*
  call void @g_free(i8* %17)
  %18 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %resolutions = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %18, i32 0, i32 6
  %19 = load double*, double** %resolutions, align 8
  %20 = bitcast double* %19 to i8*
  call void @g_free(i8* %20)
  %21 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %num_values10 = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %21, i32 0, i32 0
  store i32 0, i32* %num_values10, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end.8
  %22 = load i8*, i8** @gimp_unit_store_parent_class, align 8
  %23 = bitcast i8* %22 to %struct._GTypeClass*
  %call12 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %23, i64 80)
  %24 = bitcast %struct._GTypeClass* %call12 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %24, i32 0, i32 6
  %25 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %26 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %25(%struct._GObject* %26)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_unit_store_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #2 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct.GimpUnitStorePrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_unit_store_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct.GimpUnitStorePrivate*
  store %struct.GimpUnitStorePrivate* %2, %struct.GimpUnitStorePrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.12
    i32 3, label %sw.bb.16
    i32 4, label %sw.bb.20
    i32 5, label %sw.bb.29
  ]

sw.bb:                                            ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.bb
  %4 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %num_values = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %4, i32 0, i32 0
  %5 = load i32, i32* %num_values, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_unit_store_set_property, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0))
  br label %sw.epilog

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %6 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i32 @g_value_get_int(%struct._GValue* %6)
  %7 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %num_values3 = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %7, i32 0, i32 0
  store i32 %call2, i32* %num_values3, align 4
  %8 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %num_values4 = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %8, i32 0, i32 0
  %9 = load i32, i32* %num_values4, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then.5, label %if.end.11

if.then.5:                                        ; preds = %do.end
  %10 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %num_values6 = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %10, i32 0, i32 0
  %11 = load i32, i32* %num_values6, align 4
  %conv = sext i32 %11 to i64
  %call7 = call noalias i8* @g_malloc0_n(i64 %conv, i64 8)
  %12 = bitcast i8* %call7 to double*
  %13 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %values = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %13, i32 0, i32 5
  store double* %12, double** %values, align 8
  %14 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %num_values8 = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %14, i32 0, i32 0
  %15 = load i32, i32* %num_values8, align 4
  %conv9 = sext i32 %15 to i64
  %call10 = call noalias i8* @g_malloc0_n(i64 %conv9, i64 8)
  %16 = bitcast i8* %call10 to double*
  %17 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %resolutions = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %17, i32 0, i32 6
  store double* %16, double** %resolutions, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.5, %do.end
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  %18 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %19 = bitcast %struct._GObject* %18 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_unit_store_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call13)
  %20 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpUnitStore*
  %21 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call15 = call i32 @g_value_get_boolean(%struct._GValue* %21)
  call void @gimp_unit_store_set_has_pixels(%struct._GimpUnitStore* %20, i32 %call15)
  br label %sw.epilog

sw.bb.16:                                         ; preds = %entry
  %22 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %23 = bitcast %struct._GObject* %22 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_unit_store_get_type() #6
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call17)
  %24 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpUnitStore*
  %25 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call19 = call i32 @g_value_get_boolean(%struct._GValue* %25)
  call void @gimp_unit_store_set_has_percent(%struct._GimpUnitStore* %24, i32 %call19)
  br label %sw.epilog

sw.bb.20:                                         ; preds = %entry
  %26 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %short_format = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %26, i32 0, i32 3
  %27 = load i8*, i8** %short_format, align 8
  call void @g_free(i8* %27)
  %28 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call21 = call i8* @g_value_dup_string(%struct._GValue* %28)
  %29 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %short_format22 = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %29, i32 0, i32 3
  store i8* %call21, i8** %short_format22, align 8
  %30 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %short_format23 = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %30, i32 0, i32 3
  %31 = load i8*, i8** %short_format23, align 8
  %tobool24 = icmp ne i8* %31, null
  br i1 %tobool24, label %if.end.28, label %if.then.25

if.then.25:                                       ; preds = %sw.bb.20
  %call26 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0))
  %32 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %short_format27 = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %32, i32 0, i32 3
  store i8* %call26, i8** %short_format27, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.25, %sw.bb.20
  br label %sw.epilog

sw.bb.29:                                         ; preds = %entry
  %33 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %long_format = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %33, i32 0, i32 4
  %34 = load i8*, i8** %long_format, align 8
  call void @g_free(i8* %34)
  %35 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call30 = call i8* @g_value_dup_string(%struct._GValue* %35)
  %36 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %long_format31 = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %36, i32 0, i32 4
  store i8* %call30, i8** %long_format31, align 8
  %37 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %long_format32 = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %37, i32 0, i32 4
  %38 = load i8*, i8** %long_format32, align 8
  %tobool33 = icmp ne i8* %38, null
  br i1 %tobool33, label %if.end.37, label %if.then.34

if.then.34:                                       ; preds = %sw.bb.29
  %call35 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0))
  %39 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %long_format36 = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %39, i32 0, i32 4
  store i8* %call35, i8** %long_format36, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.34, %sw.bb.29
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body.38

do.body.38:                                       ; preds = %sw.default
  %40 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %40, %struct._GObject** %_glib__object, align 8
  %41 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %41, %struct._GParamSpec** %_glib__pspec, align 8
  %42 = load i32, i32* %property_id.addr, align 4
  store i32 %42, i32* %_glib__property_id, align 4
  %43 = load i32, i32* %_glib__property_id, align 4
  %44 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %44, i32 0, i32 1
  %45 = load i8*, i8** %name, align 8
  %46 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %47 = bitcast %struct._GParamSpec* %46 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %47, i32 0, i32 0
  %48 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %48, i32 0, i32 0
  %49 = load i64, i64* %g_type, align 8
  %call39 = call i8* @g_type_name(i64 %49)
  %50 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %51 = bitcast %struct._GObject* %50 to %struct._GTypeInstance*
  %g_class40 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %51, i32 0, i32 0
  %52 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class40, align 8
  %g_type41 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %52, i32 0, i32 0
  %53 = load i64, i64* %g_type41, align 8
  %call42 = call i8* @g_type_name(i64 %53)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), i32 270, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 %43, i8* %45, i8* %call39, i8* %call42)
  br label %do.end.43

do.end.43:                                        ; preds = %do.body.38
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %do.end.43, %if.end.37, %if.end.28, %sw.bb.16, %sw.bb.12, %if.end.11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_unit_store_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #2 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct.GimpUnitStorePrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_unit_store_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct.GimpUnitStorePrivate*
  store %struct.GimpUnitStorePrivate* %2, %struct.GimpUnitStorePrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.4
    i32 5, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %num_values = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %5, i32 0, i32 0
  %6 = load i32, i32* %num_values, align 4
  call void @g_value_set_int(%struct._GValue* %4, i32 %6)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %has_pixels = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %8, i32 0, i32 1
  %9 = load i32, i32* %has_pixels, align 4
  call void @g_value_set_boolean(%struct._GValue* %7, i32 %9)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %11 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %has_percent = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %11, i32 0, i32 2
  %12 = load i32, i32* %has_percent, align 4
  call void @g_value_set_boolean(%struct._GValue* %10, i32 %12)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %14 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %short_format = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %14, i32 0, i32 3
  %15 = load i8*, i8** %short_format, align 8
  call void @g_value_set_string(%struct._GValue* %13, i8* %15)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %17 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %long_format = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %17, i32 0, i32 4
  %18 = load i8*, i8** %long_format, align 8
  call void @g_value_set_string(%struct._GValue* %16, i8* %18)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %19 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %19, %struct._GObject** %_glib__object, align 8
  %20 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %20, %struct._GParamSpec** %_glib__pspec, align 8
  %21 = load i32, i32* %property_id.addr, align 4
  store i32 %21, i32* %_glib__property_id, align 4
  %22 = load i32, i32* %_glib__property_id, align 4
  %23 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %23, i32 0, i32 1
  %24 = load i8*, i8** %name, align 8
  %25 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %26 = bitcast %struct._GParamSpec* %25 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %26, i32 0, i32 0
  %27 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %27, i32 0, i32 0
  %28 = load i64, i64* %g_type, align 8
  %call6 = call i8* @g_type_name(i64 %28)
  %29 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %30 = bitcast %struct._GObject* %29 to %struct._GTypeInstance*
  %g_class7 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class7, align 8
  %g_type8 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %31, i32 0, i32 0
  %32 = load i64, i64* %g_type8, align 8
  %call9 = call i8* @g_type_name(i64 %32)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), i32 302, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 %22, i8* %24, i8* %call6, i8* %call9)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_string(i8*, i8*, i8*, i8*, i32) #1

declare void @g_type_class_add_private(i8*, i64) #1

declare void @g_free(i8*) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

declare i8* @g_value_dup_string(%struct._GValue*) #1

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #2 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #1

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare void @g_value_set_string(%struct._GValue*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_unit_store_get_flags(%struct._GtkTreeModel* %tree_model) #2 {
entry:
  %tree_model.addr = alloca %struct._GtkTreeModel*, align 8
  store %struct._GtkTreeModel* %tree_model, %struct._GtkTreeModel** %tree_model.addr, align 8
  ret i32 3
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_unit_store_get_n_columns(%struct._GtkTreeModel* %tree_model) #2 {
entry:
  %tree_model.addr = alloca %struct._GtkTreeModel*, align 8
  %private = alloca %struct.GimpUnitStorePrivate*, align 8
  store %struct._GtkTreeModel* %tree_model, %struct._GtkTreeModel** %tree_model.addr, align 8
  %0 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %tree_model.addr, align 8
  %1 = bitcast %struct._GtkTreeModel* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_unit_store_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct.GimpUnitStorePrivate*
  store %struct.GimpUnitStorePrivate* %2, %struct.GimpUnitStorePrivate** %private, align 8
  %3 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %num_values = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %3, i32 0, i32 0
  %4 = load i32, i32* %num_values, align 4
  %add = add nsw i32 10, %4
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define internal i64 @gimp_unit_store_get_column_type(%struct._GtkTreeModel* %tree_model, i32 %index) #2 {
entry:
  %retval = alloca i64, align 8
  %tree_model.addr = alloca %struct._GtkTreeModel*, align 8
  %index.addr = alloca i32, align 4
  store %struct._GtkTreeModel* %tree_model, %struct._GtkTreeModel** %tree_model.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %index.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_unit_store_get_column_type, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0))
  store i64 0, i64* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i32, i32* %index.addr, align 4
  %cmp1 = icmp slt i32 %1, 10
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %do.end
  %2 = load i32, i32* %index.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [10 x i64], [10 x i64]* @column_types, i32 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  store i64 %3, i64* %retval
  br label %return

if.end.3:                                         ; preds = %do.end
  store i64 60, i64* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.else
  %4 = load i64, i64* %retval
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_unit_store_get_iter(%struct._GtkTreeModel* %tree_model, %struct._GtkTreeIter* %iter, %struct._GtkTreePath* %path) #2 {
entry:
  %retval = alloca i32, align 4
  %tree_model.addr = alloca %struct._GtkTreeModel*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %path.addr = alloca %struct._GtkTreePath*, align 8
  %private = alloca %struct.GimpUnitStorePrivate*, align 8
  %index = alloca i32, align 4
  %unit = alloca i32, align 4
  store %struct._GtkTreeModel* %tree_model, %struct._GtkTreeModel** %tree_model.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  store %struct._GtkTreePath* %path, %struct._GtkTreePath** %path.addr, align 8
  %0 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %tree_model.addr, align 8
  %1 = bitcast %struct._GtkTreeModel* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_unit_store_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct.GimpUnitStorePrivate*
  store %struct.GimpUnitStorePrivate* %2, %struct.GimpUnitStorePrivate** %private, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path.addr, align 8
  %call2 = call i32 @gtk_tree_path_get_depth(%struct._GtkTreePath* %3)
  %cmp = icmp sgt i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_unit_store_get_iter, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %4 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path.addr, align 8
  %call3 = call i32* @gtk_tree_path_get_indices(%struct._GtkTreePath* %4)
  %arrayidx = getelementptr inbounds i32, i32* %call3, i64 0
  %5 = load i32, i32* %arrayidx, align 4
  store i32 %5, i32* %index, align 4
  %6 = load i32, i32* %index, align 4
  store i32 %6, i32* %unit, align 4
  %7 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %has_pixels = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %7, i32 0, i32 1
  %8 = load i32, i32* %has_pixels, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %do.end
  %9 = load i32, i32* %unit, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %unit, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %do.end
  %10 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %has_percent = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %10, i32 0, i32 2
  %11 = load i32, i32* %has_percent, align 4
  %tobool6 = icmp ne i32 %11, 0
  br i1 %tobool6, label %if.then.7, label %if.end.23

if.then.7:                                        ; preds = %if.end.5
  %12 = load i32, i32* %unit, align 4
  %dec = add i32 %12, -1
  store i32 %dec, i32* %unit, align 4
  %13 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %has_pixels8 = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %13, i32 0, i32 1
  %14 = load i32, i32* %has_pixels8, align 4
  %tobool9 = icmp ne i32 %14, 0
  br i1 %tobool9, label %if.then.10, label %if.else.18

if.then.10:                                       ; preds = %if.then.7
  %15 = load i32, i32* %index, align 4
  %cmp11 = icmp eq i32 %15, 0
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.then.10
  store i32 0, i32* %unit, align 4
  br label %if.end.17

if.else.13:                                       ; preds = %if.then.10
  %16 = load i32, i32* %index, align 4
  %cmp14 = icmp eq i32 %16, 1
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.else.13
  store i32 65536, i32* %unit, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.else.13
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then.12
  br label %if.end.22

if.else.18:                                       ; preds = %if.then.7
  %17 = load i32, i32* %index, align 4
  %cmp19 = icmp eq i32 %17, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.else.18
  store i32 65536, i32* %unit, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.else.18
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end.17
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end.5
  %18 = load i32, i32* %unit, align 4
  %cmp24 = icmp uge i32 %18, 0
  br i1 %cmp24, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end.23
  %19 = load i32, i32* %unit, align 4
  %call25 = call i32 @gimp_unit_get_number_of_units()
  %cmp26 = icmp ult i32 %19, %call25
  br i1 %cmp26, label %if.then.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end.23
  %20 = load i32, i32* %unit, align 4
  %cmp27 = icmp eq i32 %20, 65536
  br i1 %cmp27, label %land.lhs.true.28, label %if.end.32

land.lhs.true.28:                                 ; preds = %lor.lhs.false
  %21 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %has_percent29 = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %21, i32 0, i32 2
  %22 = load i32, i32* %has_percent29, align 4
  %tobool30 = icmp ne i32 %22, 0
  br i1 %tobool30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %land.lhs.true.28, %land.lhs.true
  %23 = load i32, i32* %unit, align 4
  %conv = zext i32 %23 to i64
  %24 = inttoptr i64 %conv to i8*
  %25 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %user_data = getelementptr inbounds %struct._GtkTreeIter, %struct._GtkTreeIter* %25, i32 0, i32 1
  store i8* %24, i8** %user_data, align 8
  store i32 1, i32* %retval
  br label %return

if.end.32:                                        ; preds = %land.lhs.true.28, %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.32, %if.then.31, %if.else
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkTreePath* @gimp_unit_store_get_path(%struct._GtkTreeModel* %tree_model, %struct._GtkTreeIter* %iter) #2 {
entry:
  %tree_model.addr = alloca %struct._GtkTreeModel*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %private = alloca %struct.GimpUnitStorePrivate*, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  %unit = alloca i32, align 4
  %index = alloca i32, align 4
  store %struct._GtkTreeModel* %tree_model, %struct._GtkTreeModel** %tree_model.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  %0 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %tree_model.addr, align 8
  %1 = bitcast %struct._GtkTreeModel* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_unit_store_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct.GimpUnitStorePrivate*
  store %struct.GimpUnitStorePrivate* %2, %struct.GimpUnitStorePrivate** %private, align 8
  %call2 = call %struct._GtkTreePath* @gtk_tree_path_new()
  store %struct._GtkTreePath* %call2, %struct._GtkTreePath** %path, align 8
  %3 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %user_data = getelementptr inbounds %struct._GtkTreeIter, %struct._GtkTreeIter* %3, i32 0, i32 1
  %4 = load i8*, i8** %user_data, align 8
  %5 = ptrtoint i8* %4 to i64
  %conv = trunc i64 %5 to i32
  store i32 %conv, i32* %unit, align 4
  %6 = load i32, i32* %unit, align 4
  store i32 %6, i32* %index, align 4
  %7 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %has_pixels = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %7, i32 0, i32 1
  %8 = load i32, i32* %has_pixels, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %index, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %index, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %has_percent = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %10, i32 0, i32 2
  %11 = load i32, i32* %has_percent, align 4
  %tobool3 = icmp ne i32 %11, 0
  br i1 %tobool3, label %if.then.4, label %if.end.21

if.then.4:                                        ; preds = %if.end
  %12 = load i32, i32* %index, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %index, align 4
  %13 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %has_pixels5 = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %13, i32 0, i32 1
  %14 = load i32, i32* %has_pixels5, align 4
  %tobool6 = icmp ne i32 %14, 0
  br i1 %tobool6, label %if.then.7, label %if.else.15

if.then.7:                                        ; preds = %if.then.4
  %15 = load i32, i32* %unit, align 4
  %cmp = icmp eq i32 %15, 0
  br i1 %cmp, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then.7
  store i32 0, i32* %index, align 4
  br label %if.end.14

if.else:                                          ; preds = %if.then.7
  %16 = load i32, i32* %unit, align 4
  %cmp10 = icmp eq i32 %16, 65536
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.else
  store i32 1, i32* %index, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.else
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.9
  br label %if.end.20

if.else.15:                                       ; preds = %if.then.4
  %17 = load i32, i32* %unit, align 4
  %cmp16 = icmp eq i32 %17, 65536
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.else.15
  store i32 0, i32* %index, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.else.15
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.end.14
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end
  %18 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %19 = load i32, i32* %index, align 4
  call void @gtk_tree_path_append_index(%struct._GtkTreePath* %18, i32 %19)
  %20 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  ret %struct._GtkTreePath* %20
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_unit_store_iter_next(%struct._GtkTreeModel* %tree_model, %struct._GtkTreeIter* %iter) #2 {
entry:
  %retval = alloca i32, align 4
  %tree_model.addr = alloca %struct._GtkTreeModel*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %private = alloca %struct.GimpUnitStorePrivate*, align 8
  %unit = alloca i32, align 4
  store %struct._GtkTreeModel* %tree_model, %struct._GtkTreeModel** %tree_model.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  %0 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %tree_model.addr, align 8
  %1 = bitcast %struct._GtkTreeModel* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_unit_store_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct.GimpUnitStorePrivate*
  store %struct.GimpUnitStorePrivate* %2, %struct.GimpUnitStorePrivate** %private, align 8
  %3 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %user_data = getelementptr inbounds %struct._GtkTreeIter, %struct._GtkTreeIter* %3, i32 0, i32 1
  %4 = load i8*, i8** %user_data, align 8
  %5 = ptrtoint i8* %4 to i64
  %conv = trunc i64 %5 to i32
  store i32 %conv, i32* %unit, align 4
  %6 = load i32, i32* %unit, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %has_percent = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %7, i32 0, i32 2
  %8 = load i32, i32* %has_percent, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i32 65536, i32* %unit, align 4
  br label %if.end.16

if.else:                                          ; preds = %land.lhs.true, %entry
  %9 = load i32, i32* %unit, align 4
  %cmp3 = icmp eq i32 %9, 65536
  br i1 %cmp3, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else
  store i32 1, i32* %unit, align 4
  br label %if.end.15

if.else.6:                                        ; preds = %if.else
  %10 = load i32, i32* %unit, align 4
  %cmp7 = icmp uge i32 %10, 0
  br i1 %cmp7, label %land.lhs.true.9, label %if.else.14

land.lhs.true.9:                                  ; preds = %if.else.6
  %11 = load i32, i32* %unit, align 4
  %call10 = call i32 @gimp_unit_get_number_of_units()
  %sub = sub nsw i32 %call10, 1
  %cmp11 = icmp ult i32 %11, %sub
  br i1 %cmp11, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %land.lhs.true.9
  %12 = load i32, i32* %unit, align 4
  %inc = add i32 %12, 1
  store i32 %inc, i32* %unit, align 4
  br label %if.end

if.else.14:                                       ; preds = %land.lhs.true.9, %if.else.6
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.13
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %if.then.5
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then
  %13 = load i32, i32* %unit, align 4
  %conv17 = zext i32 %13 to i64
  %14 = inttoptr i64 %conv17 to i8*
  %15 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %user_data18 = getelementptr inbounds %struct._GtkTreeIter, %struct._GtkTreeIter* %15, i32 0, i32 1
  store i8* %14, i8** %user_data18, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.else.14
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_unit_store_iter_children(%struct._GtkTreeModel* %tree_model, %struct._GtkTreeIter* %iter, %struct._GtkTreeIter* %parent) #2 {
entry:
  %retval = alloca i32, align 4
  %tree_model.addr = alloca %struct._GtkTreeModel*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %parent.addr = alloca %struct._GtkTreeIter*, align 8
  %private = alloca %struct.GimpUnitStorePrivate*, align 8
  %unit = alloca i32, align 4
  store %struct._GtkTreeModel* %tree_model, %struct._GtkTreeModel** %tree_model.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  store %struct._GtkTreeIter* %parent, %struct._GtkTreeIter** %parent.addr, align 8
  %0 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %tree_model.addr, align 8
  %1 = bitcast %struct._GtkTreeModel* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_unit_store_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct.GimpUnitStorePrivate*
  store %struct.GimpUnitStorePrivate* %2, %struct.GimpUnitStorePrivate** %private, align 8
  %3 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %parent.addr, align 8
  %tobool = icmp ne %struct._GtkTreeIter* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %has_pixels = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %4, i32 0, i32 1
  %5 = load i32, i32* %has_pixels, align 4
  %tobool2 = icmp ne i32 %5, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %unit, align 4
  br label %if.end.8

if.else:                                          ; preds = %if.end
  %6 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %has_percent = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %6, i32 0, i32 2
  %7 = load i32, i32* %has_percent, align 4
  %tobool4 = icmp ne i32 %7, 0
  br i1 %tobool4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else
  store i32 65536, i32* %unit, align 4
  br label %if.end.7

if.else.6:                                        ; preds = %if.else
  store i32 1, i32* %unit, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.else.6, %if.then.5
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.then.3
  %8 = load i32, i32* %unit, align 4
  %conv = zext i32 %8 to i64
  %9 = inttoptr i64 %conv to i8*
  %10 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %user_data = getelementptr inbounds %struct._GtkTreeIter, %struct._GtkTreeIter* %10, i32 0, i32 1
  store i8* %9, i8** %user_data, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_unit_store_iter_has_child(%struct._GtkTreeModel* %tree_model, %struct._GtkTreeIter* %iter) #2 {
entry:
  %tree_model.addr = alloca %struct._GtkTreeModel*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  store %struct._GtkTreeModel* %tree_model, %struct._GtkTreeModel** %tree_model.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_unit_store_iter_n_children(%struct._GtkTreeModel* %tree_model, %struct._GtkTreeIter* %iter) #2 {
entry:
  %retval = alloca i32, align 4
  %tree_model.addr = alloca %struct._GtkTreeModel*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %private = alloca %struct.GimpUnitStorePrivate*, align 8
  %n_children = alloca i32, align 4
  store %struct._GtkTreeModel* %tree_model, %struct._GtkTreeModel** %tree_model.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  %0 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %tree_model.addr, align 8
  %1 = bitcast %struct._GtkTreeModel* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_unit_store_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct.GimpUnitStorePrivate*
  store %struct.GimpUnitStorePrivate* %2, %struct.GimpUnitStorePrivate** %private, align 8
  %3 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %tobool = icmp ne %struct._GtkTreeIter* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i32 @gimp_unit_get_number_of_units()
  store i32 %call2, i32* %n_children, align 4
  %4 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %has_pixels = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %4, i32 0, i32 1
  %5 = load i32, i32* %has_pixels, align 4
  %tobool3 = icmp ne i32 %5, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %6 = load i32, i32* %n_children, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %n_children, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %7 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %has_percent = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %7, i32 0, i32 2
  %8 = load i32, i32* %has_percent, align 4
  %tobool6 = icmp ne i32 %8, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  %9 = load i32, i32* %n_children, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %n_children, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.5
  %10 = load i32, i32* %n_children, align 4
  store i32 %10, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_unit_store_iter_nth_child(%struct._GtkTreeModel* %tree_model, %struct._GtkTreeIter* %iter, %struct._GtkTreeIter* %parent, i32 %n) #2 {
entry:
  %retval = alloca i32, align 4
  %tree_model.addr = alloca %struct._GtkTreeModel*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %parent.addr = alloca %struct._GtkTreeIter*, align 8
  %n.addr = alloca i32, align 4
  %private = alloca %struct.GimpUnitStorePrivate*, align 8
  %n_children = alloca i32, align 4
  %unit = alloca i32, align 4
  store %struct._GtkTreeModel* %tree_model, %struct._GtkTreeModel** %tree_model.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  store %struct._GtkTreeIter* %parent, %struct._GtkTreeIter** %parent.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %tree_model.addr, align 8
  %1 = bitcast %struct._GtkTreeModel* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_unit_store_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct.GimpUnitStorePrivate*
  store %struct.GimpUnitStorePrivate* %2, %struct.GimpUnitStorePrivate** %private, align 8
  %3 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %parent.addr, align 8
  %tobool = icmp ne %struct._GtkTreeIter* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %tree_model.addr, align 8
  %call2 = call i32 @gimp_unit_store_iter_n_children(%struct._GtkTreeModel* %4, %struct._GtkTreeIter* null)
  store i32 %call2, i32* %n_children, align 4
  %5 = load i32, i32* %n.addr, align 4
  %cmp = icmp sge i32 %5, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.25

land.lhs.true:                                    ; preds = %if.end
  %6 = load i32, i32* %n.addr, align 4
  %7 = load i32, i32* %n_children, align 4
  %cmp3 = icmp slt i32 %6, %7
  br i1 %cmp3, label %if.then.4, label %if.end.25

if.then.4:                                        ; preds = %land.lhs.true
  %8 = load i32, i32* %n.addr, align 4
  store i32 %8, i32* %unit, align 4
  %9 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %has_pixels = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %9, i32 0, i32 1
  %10 = load i32, i32* %has_pixels, align 4
  %tobool5 = icmp ne i32 %10, 0
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.then.4
  %11 = load i32, i32* %unit, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %unit, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.then.4
  %12 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %has_percent = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %12, i32 0, i32 2
  %13 = load i32, i32* %has_percent, align 4
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %if.then.9, label %if.end.24

if.then.9:                                        ; preds = %if.end.7
  %14 = load i32, i32* %unit, align 4
  %dec = add i32 %14, -1
  store i32 %dec, i32* %unit, align 4
  %15 = load %struct.GimpUnitStorePrivate*, %struct.GimpUnitStorePrivate** %private, align 8
  %has_pixels10 = getelementptr inbounds %struct.GimpUnitStorePrivate, %struct.GimpUnitStorePrivate* %15, i32 0, i32 1
  %16 = load i32, i32* %has_pixels10, align 4
  %tobool11 = icmp ne i32 %16, 0
  br i1 %tobool11, label %if.then.12, label %if.else.19

if.then.12:                                       ; preds = %if.then.9
  %17 = load i32, i32* %n.addr, align 4
  %cmp13 = icmp eq i32 %17, 0
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.then.12
  store i32 0, i32* %unit, align 4
  br label %if.end.18

if.else:                                          ; preds = %if.then.12
  %18 = load i32, i32* %n.addr, align 4
  %cmp15 = icmp eq i32 %18, 1
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.else
  store i32 65536, i32* %unit, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.else
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.14
  br label %if.end.23

if.else.19:                                       ; preds = %if.then.9
  %19 = load i32, i32* %n.addr, align 4
  %cmp20 = icmp eq i32 %19, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.else.19
  store i32 65536, i32* %unit, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.else.19
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end.18
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end.7
  %20 = load i32, i32* %unit, align 4
  %conv = zext i32 %20 to i64
  %21 = inttoptr i64 %conv to i8*
  %22 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %user_data = getelementptr inbounds %struct._GtkTreeIter, %struct._GtkTreeIter* %22, i32 0, i32 1
  store i8* %21, i8** %user_data, align 8
  store i32 1, i32* %retval
  br label %return

if.end.25:                                        ; preds = %land.lhs.true, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.end.24, %if.then
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_unit_store_iter_parent(%struct._GtkTreeModel* %tree_model, %struct._GtkTreeIter* %iter, %struct._GtkTreeIter* %child) #2 {
entry:
  %tree_model.addr = alloca %struct._GtkTreeModel*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %child.addr = alloca %struct._GtkTreeIter*, align 8
  store %struct._GtkTreeModel* %tree_model, %struct._GtkTreeModel** %tree_model.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  store %struct._GtkTreeIter* %child, %struct._GtkTreeIter** %child.addr, align 8
  ret i32 0
}

declare i32 @gtk_tree_path_get_depth(%struct._GtkTreePath*) #1

declare i32* @gtk_tree_path_get_indices(%struct._GtkTreePath*) #1

declare %struct._GtkTreePath* @gtk_tree_path_new() #1

declare void @gtk_tree_path_append_index(%struct._GtkTreePath*, i32) #1

declare %struct._GValue* @g_value_init(%struct._GValue*, i64) #1

declare void @g_value_set_double(%struct._GValue*, double) #1

declare double @gimp_unit_get_factor(i32) #1

declare i32 @gimp_unit_get_digits(i32) #1

declare void @g_value_set_static_string(%struct._GValue*, i8*) #1

declare i8* @gimp_unit_get_identifier(i32) #1

declare i8* @gimp_unit_get_symbol(i32) #1

declare i8* @gimp_unit_get_abbreviation(i32) #1

declare i8* @gimp_unit_get_singular(i32) #1

declare i8* @gimp_unit_get_plural(i32) #1

declare void @g_value_take_string(%struct._GValue*, i8*) #1

declare i8* @gimp_unit_format_string(i8*, i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
