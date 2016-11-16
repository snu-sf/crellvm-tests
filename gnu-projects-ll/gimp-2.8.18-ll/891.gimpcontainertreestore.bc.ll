; ModuleID = './app/widgets/gimpcontainertreestore.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpContainerTreeStoreClass = type { %struct._GtkTreeStoreClass }
%struct._GtkTreeStoreClass = type { %struct._GObjectClass, void ()*, void ()*, void ()*, void ()* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpContainerTreeStore = type { %struct._GtkTreeStore }
%struct._GtkTreeStore = type { %struct._GObject, i32, i8*, i8*, i32, i32, %struct._GList*, i32, i64*, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkTreeModel = type opaque
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GimpContainerView = type opaque
%struct._GtkCellRenderer = type { %struct._GtkObject, float, float, i32, i32, i16, i16, i8 }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GimpContainerTreeStorePrivate = type { %struct._GimpContainerView*, %struct._GList*, i32 }
%struct._GimpContext = type opaque
%struct._GtkTreePath = type opaque
%struct._GimpViewRenderer = type { %struct._GObject, %struct._GimpContext*, i64, %struct._GimpViewable*, i32, i32, i32, i8, i32, %struct._GimpRGB, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GdkPixbuf*, i8*, i32, i32, i32 }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GdkPixbuf = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct.SetSizeForeachData = type { i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_container_tree_store_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"GimpContainerTreeStore\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_container_tree_store_new = private unnamed_addr constant [30 x i8] c"gimp_container_tree_store_new\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"GIMP_IS_CONTAINER_VIEW (container_view)\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"n_columns >= GIMP_CONTAINER_TREE_STORE_N_COLUMNS\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"types != NULL\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"container-view\00", align 1
@__func__.gimp_container_tree_store_add_renderer_cell = private unnamed_addr constant [44 x i8] c"gimp_container_tree_store_add_renderer_cell\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"GIMP_IS_CONTAINER_TREE_STORE (store)\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"GIMP_IS_CELL_RENDERER_VIEWABLE (cell)\00", align 1
@__func__.gimp_container_tree_store_set_use_name = private unnamed_addr constant [39 x i8] c"gimp_container_tree_store_set_use_name\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"use-name\00", align 1
@__func__.gimp_container_tree_store_get_use_name = private unnamed_addr constant [39 x i8] c"gimp_container_tree_store_get_use_name\00", align 1
@__func__.gimp_container_tree_store_set_context = private unnamed_addr constant [38 x i8] c"gimp_container_tree_store_set_context\00", align 1
@__func__.gimp_container_tree_store_insert_item = private unnamed_addr constant [38 x i8] c"gimp_container_tree_store_insert_item\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"renderer\00", align 1
@__func__.gimp_container_tree_store_reorder_item = private unnamed_addr constant [39 x i8] c"gimp_container_tree_store_reorder_item\00", align 1
@__func__.gimp_container_tree_store_rename_item = private unnamed_addr constant [38 x i8] c"gimp_container_tree_store_rename_item\00", align 1
@__func__.gimp_container_tree_store_clear_items = private unnamed_addr constant [38 x i8] c"gimp_container_tree_store_clear_items\00", align 1
@__func__.gimp_container_tree_store_set_view_size = private unnamed_addr constant [40 x i8] c"gimp_container_tree_store_set_view_size\00", align 1
@__func__.gimp_container_tree_store_columns_init = private unnamed_addr constant [39 x i8] c"gimp_container_tree_store_columns_init\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"n_types != NULL\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"*n_types == 0\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"gimpcontainertreestore.c\00", align 1
@.str.13 = private unnamed_addr constant [125 x i8] c"GIMP_CONTAINER_TREE_STORE_COLUMN_RENDERER == gimp_container_tree_store_columns_add (types, n_types, GIMP_TYPE_VIEW_RENDERER)\00", align 1
@.str.14 = private unnamed_addr constant [111 x i8] c"GIMP_CONTAINER_TREE_STORE_COLUMN_NAME == gimp_container_tree_store_columns_add (types, n_types, G_TYPE_STRING)\00", align 1
@.str.15 = private unnamed_addr constant [129 x i8] c"GIMP_CONTAINER_TREE_STORE_COLUMN_NAME_ATTRIBUTES == gimp_container_tree_store_columns_add (types, n_types, PANGO_TYPE_ATTR_LIST)\00", align 1
@.str.16 = private unnamed_addr constant [122 x i8] c"GIMP_CONTAINER_TREE_STORE_COLUMN_NAME_SENSITIVE == gimp_container_tree_store_columns_add (types, n_types, G_TYPE_BOOLEAN)\00", align 1
@.str.17 = private unnamed_addr constant [117 x i8] c"GIMP_CONTAINER_TREE_STORE_COLUMN_USER_DATA == gimp_container_tree_store_columns_add (types, n_types, G_TYPE_POINTER)\00", align 1
@__func__.gimp_container_tree_store_columns_add = private unnamed_addr constant [38 x i8] c"gimp_container_tree_store_columns_add\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"*n_types >= 0\00", align 1
@gimp_container_tree_store_parent_class = internal global i8* null, align 8
@GimpContainerTreeStore_private_offset = internal global i32 0, align 4
@.str.19 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"update\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_container_tree_store_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_container_tree_store_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_container_tree_store_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_tree_store_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 168, void (i8*, i8*)* bitcast (void (i8*)* @gimp_container_tree_store_class_intern_init to void (i8*, i8*)*), i32 112, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpContainerTreeStore*)* @gimp_container_tree_store_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_container_tree_store_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_container_tree_store_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_store_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_container_tree_store_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_container_tree_store_parent_class, align 8
  %1 = load i32, i32* @GimpContainerTreeStore_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpContainerTreeStore_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpContainerTreeStoreClass*
  call void @gimp_container_tree_store_class_init(%struct._GimpContainerTreeStoreClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_tree_store_init(%struct._GimpContainerTreeStore* %store) #3 {
entry:
  %store.addr = alloca %struct._GimpContainerTreeStore*, align 8
  store %struct._GimpContainerTreeStore* %store, %struct._GimpContainerTreeStore** %store.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkTreeModel* @gimp_container_tree_store_new(%struct._GimpContainerView* %container_view, i32 %n_columns, i64* %types) #3 {
entry:
  %retval = alloca %struct._GtkTreeModel*, align 8
  %container_view.addr = alloca %struct._GimpContainerView*, align 8
  %n_columns.addr = alloca i32, align 4
  %types.addr = alloca i64*, align 8
  %store = alloca %struct._GimpContainerTreeStore*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContainerView* %container_view, %struct._GimpContainerView** %container_view.addr, align 8
  store i32 %n_columns, i32* %n_columns.addr, align 4
  store i64* %types, i64** %types.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %container_view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_view_interface_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_container_tree_store_new, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkTreeModel* null, %struct._GtkTreeModel** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %n_columns.addr, align 4
  %cmp12 = icmp sge i32 %13, 5
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_container_tree_store_new, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkTreeModel* null, %struct._GtkTreeModel** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load i64*, i64** %types.addr, align 8
  %cmp18 = icmp ne i64* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_container_tree_store_new, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GtkTreeModel* null, %struct._GtkTreeModel** %retval
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %call23 = call i64 @gimp_container_tree_store_get_type() #7
  %15 = load %struct._GimpContainerView*, %struct._GimpContainerView** %container_view.addr, align 8
  %call24 = call i8* (i64, i8*, ...) @g_object_new(i64 %call23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), %struct._GimpContainerView* %15, i8* null)
  %16 = bitcast i8* %call24 to %struct._GimpContainerTreeStore*
  store %struct._GimpContainerTreeStore* %16, %struct._GimpContainerTreeStore** %store, align 8
  %17 = load %struct._GimpContainerTreeStore*, %struct._GimpContainerTreeStore** %store, align 8
  %18 = bitcast %struct._GimpContainerTreeStore* %17 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_tree_store_get_type() #7
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call25)
  %19 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkTreeStore*
  %20 = load i32, i32* %n_columns.addr, align 4
  %21 = load i64*, i64** %types.addr, align 8
  call void @gtk_tree_store_set_column_types(%struct._GtkTreeStore* %19, i32 %20, i64* %21)
  %22 = load %struct._GimpContainerTreeStore*, %struct._GimpContainerTreeStore** %store, align 8
  %23 = bitcast %struct._GimpContainerTreeStore* %22 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_tree_model_get_type() #7
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call27)
  %24 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkTreeModel*
  store %struct._GtkTreeModel* %24, %struct._GtkTreeModel** %retval
  br label %return

return:                                           ; preds = %do.end.22, %if.else.20, %if.else.14, %if.else.9
  %25 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %retval
  ret %struct._GtkTreeModel* %25
}

; Function Attrs: nounwind readnone
declare i64 @gimp_container_view_interface_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare void @gtk_tree_store_set_column_types(%struct._GtkTreeStore*, i32, i64*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_model_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_container_tree_store_add_renderer_cell(%struct._GimpContainerTreeStore* %store, %struct._GtkCellRenderer* %cell) #3 {
entry:
  %store.addr = alloca %struct._GimpContainerTreeStore*, align 8
  %cell.addr = alloca %struct._GtkCellRenderer*, align 8
  %private = alloca %struct._GimpContainerTreeStorePrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpContainerTreeStore* %store, %struct._GimpContainerTreeStore** %store.addr, align 8
  store %struct._GtkCellRenderer* %cell, %struct._GtkCellRenderer** %cell.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainerTreeStore*, %struct._GimpContainerTreeStore** %store.addr, align 8
  %1 = bitcast %struct._GimpContainerTreeStore* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_tree_store_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__func__.gimp_container_tree_store_add_renderer_cell, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell.addr, align 8
  %14 = bitcast %struct._GtkCellRenderer* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_cell_renderer_viewable_get_type() #7
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #8
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__func__.gimp_container_tree_store_add_renderer_cell, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpContainerTreeStore*, %struct._GimpContainerTreeStore** %store.addr, align 8
  %27 = bitcast %struct._GimpContainerTreeStore* %26 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_container_tree_store_get_type() #7
  %call40 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %27, i64 %call39)
  %28 = bitcast i8* %call40 to %struct._GimpContainerTreeStorePrivate*
  store %struct._GimpContainerTreeStorePrivate* %28, %struct._GimpContainerTreeStorePrivate** %private, align 8
  %29 = load %struct._GimpContainerTreeStorePrivate*, %struct._GimpContainerTreeStorePrivate** %private, align 8
  %renderer_cells = getelementptr inbounds %struct._GimpContainerTreeStorePrivate, %struct._GimpContainerTreeStorePrivate* %29, i32 0, i32 1
  %30 = load %struct._GList*, %struct._GList** %renderer_cells, align 8
  %31 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell.addr, align 8
  %32 = bitcast %struct._GtkCellRenderer* %31 to i8*
  %call41 = call %struct._GList* @g_list_prepend(%struct._GList* %30, i8* %32)
  %33 = load %struct._GimpContainerTreeStorePrivate*, %struct._GimpContainerTreeStorePrivate** %private, align 8
  %renderer_cells42 = getelementptr inbounds %struct._GimpContainerTreeStorePrivate, %struct._GimpContainerTreeStorePrivate* %33, i32 0, i32 1
  store %struct._GList* %call41, %struct._GList** %renderer_cells42, align 8
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_cell_renderer_viewable_get_type() #2

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_container_tree_store_set_use_name(%struct._GimpContainerTreeStore* %store, i32 %use_name) #3 {
entry:
  %store.addr = alloca %struct._GimpContainerTreeStore*, align 8
  %use_name.addr = alloca i32, align 4
  %private = alloca %struct._GimpContainerTreeStorePrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContainerTreeStore* %store, %struct._GimpContainerTreeStore** %store.addr, align 8
  store i32 %use_name, i32* %use_name.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainerTreeStore*, %struct._GimpContainerTreeStore** %store.addr, align 8
  %1 = bitcast %struct._GimpContainerTreeStore* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_tree_store_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_container_tree_store_set_use_name, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.19

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContainerTreeStore*, %struct._GimpContainerTreeStore** %store.addr, align 8
  %14 = bitcast %struct._GimpContainerTreeStore* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_container_tree_store_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpContainerTreeStorePrivate*
  store %struct._GimpContainerTreeStorePrivate* %15, %struct._GimpContainerTreeStorePrivate** %private, align 8
  %16 = load %struct._GimpContainerTreeStorePrivate*, %struct._GimpContainerTreeStorePrivate** %private, align 8
  %use_name13 = getelementptr inbounds %struct._GimpContainerTreeStorePrivate, %struct._GimpContainerTreeStorePrivate* %16, i32 0, i32 2
  %17 = load i32, i32* %use_name13, align 4
  %18 = load i32, i32* %use_name.addr, align 4
  %cmp14 = icmp ne i32 %17, %18
  br i1 %cmp14, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %do.end
  %19 = load i32, i32* %use_name.addr, align 4
  %tobool16 = icmp ne i32 %19, 0
  %cond = select i1 %tobool16, i32 1, i32 0
  %20 = load %struct._GimpContainerTreeStorePrivate*, %struct._GimpContainerTreeStorePrivate** %private, align 8
  %use_name17 = getelementptr inbounds %struct._GimpContainerTreeStorePrivate, %struct._GimpContainerTreeStorePrivate* %20, i32 0, i32 2
  store i32 %cond, i32* %use_name17, align 4
  %21 = load %struct._GimpContainerTreeStore*, %struct._GimpContainerTreeStore** %store.addr, align 8
  %22 = bitcast %struct._GimpContainerTreeStore* %21 to %struct._GTypeInstance*
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 80)
  %23 = bitcast %struct._GTypeInstance* %call18 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.9, %if.then.15, %do.end
  ret void
}

declare void @g_object_notify(%struct._GObject*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_container_tree_store_get_use_name(%struct._GimpContainerTreeStore* %store) #3 {
entry:
  %retval = alloca i32, align 4
  %store.addr = alloca %struct._GimpContainerTreeStore*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContainerTreeStore* %store, %struct._GimpContainerTreeStore** %store.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainerTreeStore*, %struct._GimpContainerTreeStore** %store.addr, align 8
  %1 = bitcast %struct._GimpContainerTreeStore* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_tree_store_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_container_tree_store_get_use_name, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContainerTreeStore*, %struct._GimpContainerTreeStore** %store.addr, align 8
  %14 = bitcast %struct._GimpContainerTreeStore* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_container_tree_store_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpContainerTreeStorePrivate*
  %use_name = getelementptr inbounds %struct._GimpContainerTreeStorePrivate, %struct._GimpContainerTreeStorePrivate* %15, i32 0, i32 2
  %16 = load i32, i32* %use_name, align 4
  store i32 %16, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define void @gimp_container_tree_store_set_context(%struct._GimpContainerTreeStore* %store, %struct._GimpContext* %context) #3 {
entry:
  %store.addr = alloca %struct._GimpContainerTreeStore*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContainerTreeStore* %store, %struct._GimpContainerTreeStore** %store.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainerTreeStore*, %struct._GimpContainerTreeStore** %store.addr, align 8
  %1 = bitcast %struct._GimpContainerTreeStore* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_tree_store_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_container_tree_store_set_context, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContainerTreeStore*, %struct._GimpContainerTreeStore** %store.addr, align 8
  %14 = bitcast %struct._GimpContainerTreeStore* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_tree_model_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkTreeModel*
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %17 = bitcast %struct._GimpContext* %16 to i8*
  call void @gtk_tree_model_foreach(%struct._GtkTreeModel* %15, i32 (%struct._GtkTreeModel*, %struct._GtkTreePath*, %struct._GtkTreeIter*, i8*)* @gimp_container_tree_store_set_context_foreach, i8* %17)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare void @gtk_tree_model_foreach(%struct._GtkTreeModel*, i32 (%struct._GtkTreeModel*, %struct._GtkTreePath*, %struct._GtkTreeIter*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_container_tree_store_set_context_foreach(%struct._GtkTreeModel* %model, %struct._GtkTreePath* %path, %struct._GtkTreeIter* %iter, i8* %data) #3 {
entry:
  %model.addr = alloca %struct._GtkTreeModel*, align 8
  %path.addr = alloca %struct._GtkTreePath*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %renderer = alloca %struct._GimpViewRenderer*, align 8
  store %struct._GtkTreeModel* %model, %struct._GtkTreeModel** %model.addr, align 8
  store %struct._GtkTreePath* %path, %struct._GtkTreePath** %path.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GimpContext*
  store %struct._GimpContext* %1, %struct._GimpContext** %context, align 8
  %2 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model.addr, align 8
  %3 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %2, %struct._GtkTreeIter* %3, i32 0, %struct._GimpViewRenderer** %renderer, i32 -1)
  %4 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_view_renderer_set_context(%struct._GimpViewRenderer* %4, %struct._GimpContext* %5)
  %6 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %7 = bitcast %struct._GimpViewRenderer* %6 to i8*
  call void @g_object_unref(i8* %7)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define %struct._GtkTreeIter* @gimp_container_tree_store_insert_item(%struct._GimpContainerTreeStore* %store, %struct._GimpViewable* %viewable, %struct._GtkTreeIter* %parent, i32 %index) #3 {
entry:
  %retval = alloca %struct._GtkTreeIter*, align 8
  %store.addr = alloca %struct._GimpContainerTreeStore*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %parent.addr = alloca %struct._GtkTreeIter*, align 8
  %index.addr = alloca i32, align 4
  %iter = alloca %struct._GtkTreeIter, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContainerTreeStore* %store, %struct._GimpContainerTreeStore** %store.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store %struct._GtkTreeIter* %parent, %struct._GtkTreeIter** %parent.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainerTreeStore*, %struct._GimpContainerTreeStore** %store.addr, align 8
  %1 = bitcast %struct._GimpContainerTreeStore* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_tree_store_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_container_tree_store_insert_item, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GtkTreeIter* null, %struct._GtkTreeIter** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %index.addr, align 4
  %cmp11 = icmp eq i32 %13, -1
  br i1 %cmp11, label %if.then.12, label %if.else.15

if.then.12:                                       ; preds = %do.end
  %14 = load %struct._GimpContainerTreeStore*, %struct._GimpContainerTreeStore** %store.addr, align 8
  %15 = bitcast %struct._GimpContainerTreeStore* %14 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_tree_store_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call13)
  %16 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkTreeStore*
  %17 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %parent.addr, align 8
  call void @gtk_tree_store_append(%struct._GtkTreeStore* %16, %struct._GtkTreeIter* %iter, %struct._GtkTreeIter* %17)
  br label %if.end.18

if.else.15:                                       ; preds = %do.end
  %18 = load %struct._GimpContainerTreeStore*, %struct._GimpContainerTreeStore** %store.addr, align 8
  %19 = bitcast %struct._GimpContainerTreeStore* %18 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_tree_store_get_type() #7
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call16)
  %20 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkTreeStore*
  %21 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %parent.addr, align 8
  %22 = load i32, i32* %index.addr, align 4
  call void @gtk_tree_store_insert(%struct._GtkTreeStore* %20, %struct._GtkTreeIter* %iter, %struct._GtkTreeIter* %21, i32 %22)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.15, %if.then.12
  %23 = load %struct._GimpContainerTreeStore*, %struct._GimpContainerTreeStore** %store.addr, align 8
  %24 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  call void @gimp_container_tree_store_set(%struct._GimpContainerTreeStore* %23, %struct._GtkTreeIter* %iter, %struct._GimpViewable* %24)
  %call19 = call %struct._GtkTreeIter* @gtk_tree_iter_copy(%struct._GtkTreeIter* %iter)
  store %struct._GtkTreeIter* %call19, %struct._GtkTreeIter** %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.else.9
  %25 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %retval
  ret %struct._GtkTreeIter* %25
}

declare void @gtk_tree_store_append(%struct._GtkTreeStore*, %struct._GtkTreeIter*, %struct._GtkTreeIter*) #1

declare void @gtk_tree_store_insert(%struct._GtkTreeStore*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_container_tree_store_set(%struct._GimpContainerTreeStore* %store, %struct._GtkTreeIter* %iter, %struct._GimpViewable* %viewable) #3 {
entry:
  %store.addr = alloca %struct._GimpContainerTreeStore*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %private = alloca %struct._GimpContainerTreeStorePrivate*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %renderer = alloca %struct._GimpViewRenderer*, align 8
  %name = alloca i8*, align 8
  %view_size = alloca i32, align 4
  %border_width = alloca i32, align 4
  store %struct._GimpContainerTreeStore* %store, %struct._GimpContainerTreeStore** %store.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  %0 = load %struct._GimpContainerTreeStore*, %struct._GimpContainerTreeStore** %store.addr, align 8
  %1 = bitcast %struct._GimpContainerTreeStore* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_tree_store_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpContainerTreeStorePrivate*
  store %struct._GimpContainerTreeStorePrivate* %2, %struct._GimpContainerTreeStorePrivate** %private, align 8
  %3 = load %struct._GimpContainerTreeStorePrivate*, %struct._GimpContainerTreeStorePrivate** %private, align 8
  %container_view = getelementptr inbounds %struct._GimpContainerTreeStorePrivate, %struct._GimpContainerTreeStorePrivate* %3, i32 0, i32 0
  %4 = load %struct._GimpContainerView*, %struct._GimpContainerView** %container_view, align 8
  %call2 = call %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView* %4)
  store %struct._GimpContext* %call2, %struct._GimpContext** %context, align 8
  %5 = load %struct._GimpContainerTreeStorePrivate*, %struct._GimpContainerTreeStorePrivate** %private, align 8
  %container_view3 = getelementptr inbounds %struct._GimpContainerTreeStorePrivate, %struct._GimpContainerTreeStorePrivate* %5, i32 0, i32 0
  %6 = load %struct._GimpContainerView*, %struct._GimpContainerView** %container_view3, align 8
  %call4 = call i32 @gimp_container_view_get_view_size(%struct._GimpContainerView* %6, i32* %border_width)
  store i32 %call4, i32* %view_size, align 4
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %8 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %9 = bitcast %struct._GimpViewable* %8 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %9, i32 0, i32 0
  %10 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type, align 8
  %12 = load i32, i32* %view_size, align 4
  %13 = load i32, i32* %border_width, align 4
  %call5 = call %struct._GimpViewRenderer* @gimp_view_renderer_new(%struct._GimpContext* %7, i64 %11, i32 %12, i32 %13, i32 0)
  store %struct._GimpViewRenderer* %call5, %struct._GimpViewRenderer** %renderer, align 8
  %14 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %15 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  call void @gimp_view_renderer_set_viewable(%struct._GimpViewRenderer* %14, %struct._GimpViewable* %15)
  %16 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  call void @gimp_view_renderer_remove_idle(%struct._GimpViewRenderer* %16)
  %17 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %18 = bitcast %struct._GimpViewRenderer* %17 to i8*
  %19 = load %struct._GimpContainerTreeStore*, %struct._GimpContainerTreeStore** %store.addr, align 8
  %20 = bitcast %struct._GimpContainerTreeStore* %19 to i8*
  %call6 = call i64 @g_signal_connect_data(i8* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), void ()* bitcast (void (%struct._GimpViewRenderer*, %struct._GimpContainerTreeStore*)* @gimp_container_tree_store_renderer_update to void ()*), i8* %20, void (i8*, %struct._GClosure*)* null, i32 0)
  %21 = load %struct._GimpContainerTreeStorePrivate*, %struct._GimpContainerTreeStorePrivate** %private, align 8
  %use_name = getelementptr inbounds %struct._GimpContainerTreeStorePrivate, %struct._GimpContainerTreeStorePrivate* %21, i32 0, i32 2
  %22 = load i32, i32* %use_name, align 4
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %23 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %24 = bitcast %struct._GimpViewable* %23 to i8*
  %call7 = call i8* @gimp_object_get_name(i8* %24)
  store i8* %call7, i8** %name, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %25 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %call8 = call i8* @gimp_viewable_get_description(%struct._GimpViewable* %25, i8** null)
  store i8* %call8, i8** %name, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %26 = load %struct._GimpContainerTreeStore*, %struct._GimpContainerTreeStore** %store.addr, align 8
  %27 = bitcast %struct._GimpContainerTreeStore* %26 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_tree_store_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call9)
  %28 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkTreeStore*
  %29 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %30 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %31 = load i8*, i8** %name, align 8
  call void (%struct._GtkTreeStore*, %struct._GtkTreeIter*, ...) @gtk_tree_store_set(%struct._GtkTreeStore* %28, %struct._GtkTreeIter* %29, i32 0, %struct._GimpViewRenderer* %30, i32 1, i8* %31, i32 3, i32 1, i32 -1)
  %32 = load %struct._GimpContainerTreeStorePrivate*, %struct._GimpContainerTreeStorePrivate** %private, align 8
  %use_name11 = getelementptr inbounds %struct._GimpContainerTreeStorePrivate, %struct._GimpContainerTreeStorePrivate* %32, i32 0, i32 2
  %33 = load i32, i32* %use_name11, align 4
  %tobool12 = icmp ne i32 %33, 0
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end
  %34 = load i8*, i8** %name, align 8
  call void @g_free(i8* %34)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end
  %35 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %36 = bitcast %struct._GimpViewRenderer* %35 to i8*
  call void @g_object_unref(i8* %36)
  ret void
}

declare %struct._GtkTreeIter* @gtk_tree_iter_copy(%struct._GtkTreeIter*) #1

; Function Attrs: nounwind uwtable
define void @gimp_container_tree_store_remove_item(%struct._GimpContainerTreeStore* %store, %struct._GimpViewable* %viewable, %struct._GtkTreeIter* %iter) #3 {
entry:
  %store.addr = alloca %struct._GimpContainerTreeStore*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %private = alloca %struct._GimpContainerTreeStorePrivate*, align 8
  %list = alloca %struct._GList*, align 8
  store %struct._GimpContainerTreeStore* %store, %struct._GimpContainerTreeStore** %store.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  %0 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %tobool = icmp ne %struct._GtkTreeIter* %0, null
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpContainerTreeStore*, %struct._GimpContainerTreeStore** %store.addr, align 8
  %2 = bitcast %struct._GimpContainerTreeStore* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_tree_store_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkTreeStore*
  %4 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %call2 = call i32 @gtk_tree_store_remove(%struct._GtkTreeStore* %3, %struct._GtkTreeIter* %4)
  %5 = load %struct._GimpContainerTreeStore*, %struct._GimpContainerTreeStore** %store.addr, align 8
  %6 = bitcast %struct._GimpContainerTreeStore* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_tree_model_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkTreeModel*
  %call5 = call i32 @gtk_tree_model_iter_n_children(%struct._GtkTreeModel* %7, %struct._GtkTreeIter* null)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %if.then
  %8 = load %struct._GimpContainerTreeStore*, %struct._GimpContainerTreeStore** %store.addr, align 8
  %9 = bitcast %struct._GimpContainerTreeStore* %8 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_container_tree_store_get_type() #7
  %call9 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %9, i64 %call8)
  %10 = bitcast i8* %call9 to %struct._GimpContainerTreeStorePrivate*
  store %struct._GimpContainerTreeStorePrivate* %10, %struct._GimpContainerTreeStorePrivate** %private, align 8
  %11 = load %struct._GimpContainerTreeStorePrivate*, %struct._GimpContainerTreeStorePrivate** %private, align 8
  %renderer_cells = getelementptr inbounds %struct._GimpContainerTreeStorePrivate, %struct._GimpContainerTreeStorePrivate* %11, i32 0, i32 1
  %12 = load %struct._GList*, %struct._GList** %renderer_cells, align 8
  store %struct._GList* %12, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.7
  %13 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool10 = icmp ne %struct._GList* %13, null
  br i1 %tobool10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %14, i32 0, i32 0
  %15 = load i8*, i8** %data, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %16, i32 0, i32 1
  %17 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %17, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %entry
  ret void
}

declare i32 @gtk_tree_store_remove(%struct._GtkTreeStore*, %struct._GtkTreeIter*) #1

declare i32 @gtk_tree_model_iter_n_children(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare void @g_object_set(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_container_tree_store_reorder_item(%struct._GimpContainerTreeStore* %store, %struct._GimpViewable* %viewable, i32 %new_index, %struct._GtkTreeIter* %iter) #3 {
entry:
  %store.addr = alloca %struct._GimpContainerTreeStore*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %new_index.addr = alloca i32, align 4
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %private = alloca %struct._GimpContainerTreeStorePrivate*, align 8
  %parent = alloca %struct._GimpViewable*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %path = alloca %struct._GtkTreePath*, align 8
  %place_iter = alloca %struct._GtkTreeIter, align 8
  %depth = alloca i32, align 4
  %indices = alloca i32*, align 8
  %old_index = alloca i32, align 4
  store %struct._GimpContainerTreeStore* %store, %struct._GimpContainerTreeStore** %store.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i32 %new_index, i32* %new_index.addr, align 4
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainerTreeStore*, %struct._GimpContainerTreeStore** %store.addr, align 8
  %1 = bitcast %struct._GimpContainerTreeStore* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_tree_store_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_container_tree_store_reorder_item, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.64

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContainerTreeStore*, %struct._GimpContainerTreeStore** %store.addr, align 8
  %14 = bitcast %struct._GimpContainerTreeStore* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_container_tree_store_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpContainerTreeStorePrivate*
  store %struct._GimpContainerTreeStorePrivate* %15, %struct._GimpContainerTreeStorePrivate** %private, align 8
  %16 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %tobool13 = icmp ne %struct._GtkTreeIter* %16, null
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %do.end
  br label %if.end.64

if.end.15:                                        ; preds = %do.end
  %17 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %call16 = call %struct._GimpViewable* @gimp_viewable_get_parent(%struct._GimpViewable* %17)
  store %struct._GimpViewable* %call16, %struct._GimpViewable** %parent, align 8
  %18 = load %struct._GimpViewable*, %struct._GimpViewable** %parent, align 8
  %tobool17 = icmp ne %struct._GimpViewable* %18, null
  br i1 %tobool17, label %if.then.18, label %if.else.20

if.then.18:                                       ; preds = %if.end.15
  %19 = load %struct._GimpViewable*, %struct._GimpViewable** %parent, align 8
  %call19 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %19)
  store %struct._GimpContainer* %call19, %struct._GimpContainer** %container, align 8
  br label %if.end.22

if.else.20:                                       ; preds = %if.end.15
  %20 = load %struct._GimpContainerTreeStorePrivate*, %struct._GimpContainerTreeStorePrivate** %private, align 8
  %container_view = getelementptr inbounds %struct._GimpContainerTreeStorePrivate, %struct._GimpContainerTreeStorePrivate* %20, i32 0, i32 0
  %21 = load %struct._GimpContainerView*, %struct._GimpContainerView** %container_view, align 8
  %call21 = call %struct._GimpContainer* @gimp_container_view_get_container(%struct._GimpContainerView* %21)
  store %struct._GimpContainer* %call21, %struct._GimpContainer** %container, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.20, %if.then.18
  %22 = load i32, i32* %new_index.addr, align 4
  %cmp23 = icmp eq i32 %22, -1
  br i1 %cmp23, label %if.then.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.22
  %23 = load i32, i32* %new_index.addr, align 4
  %24 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %call24 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %24)
  %sub = sub nsw i32 %call24, 1
  %cmp25 = icmp eq i32 %23, %sub
  br i1 %cmp25, label %if.then.26, label %if.else.29

if.then.26:                                       ; preds = %lor.lhs.false, %if.end.22
  %25 = load %struct._GimpContainerTreeStore*, %struct._GimpContainerTreeStore** %store.addr, align 8
  %26 = bitcast %struct._GimpContainerTreeStore* %25 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_tree_store_get_type() #7
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call27)
  %27 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkTreeStore*
  %28 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  call void @gtk_tree_store_move_before(%struct._GtkTreeStore* %27, %struct._GtkTreeIter* %28, %struct._GtkTreeIter* null)
  br label %if.end.64

if.else.29:                                       ; preds = %lor.lhs.false
  %29 = load i32, i32* %new_index.addr, align 4
  %cmp30 = icmp eq i32 %29, 0
  br i1 %cmp30, label %if.then.31, label %if.else.34

if.then.31:                                       ; preds = %if.else.29
  %30 = load %struct._GimpContainerTreeStore*, %struct._GimpContainerTreeStore** %store.addr, align 8
  %31 = bitcast %struct._GimpContainerTreeStore* %30 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_tree_store_get_type() #7
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call32)
  %32 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkTreeStore*
  %33 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  call void @gtk_tree_store_move_after(%struct._GtkTreeStore* %32, %struct._GtkTreeIter* %33, %struct._GtkTreeIter* null)
  br label %if.end.63

if.else.34:                                       ; preds = %if.else.29
  %34 = load %struct._GimpContainerTreeStore*, %struct._GimpContainerTreeStore** %store.addr, align 8
  %35 = bitcast %struct._GimpContainerTreeStore* %34 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_tree_model_get_type() #7
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call40)
  %36 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkTreeModel*
  %37 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %call42 = call %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel* %36, %struct._GtkTreeIter* %37)
  store %struct._GtkTreePath* %call42, %struct._GtkTreePath** %path, align 8
  %38 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %call43 = call i32* @gtk_tree_path_get_indices(%struct._GtkTreePath* %38)
  store i32* %call43, i32** %indices, align 8
  %39 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %call44 = call i32 @gtk_tree_path_get_depth(%struct._GtkTreePath* %39)
  store i32 %call44, i32* %depth, align 4
  %40 = load i32, i32* %depth, align 4
  %sub45 = sub nsw i32 %40, 1
  %idxprom = sext i32 %sub45 to i64
  %41 = load i32*, i32** %indices, align 8
  %arrayidx = getelementptr inbounds i32, i32* %41, i64 %idxprom
  %42 = load i32, i32* %arrayidx, align 4
  store i32 %42, i32* %old_index, align 4
  %43 = load i32, i32* %new_index.addr, align 4
  %44 = load i32, i32* %old_index, align 4
  %cmp46 = icmp ne i32 %43, %44
  br i1 %cmp46, label %if.then.47, label %if.end.62

if.then.47:                                       ; preds = %if.else.34
  %45 = load i32, i32* %new_index.addr, align 4
  %46 = load i32, i32* %depth, align 4
  %sub48 = sub nsw i32 %46, 1
  %idxprom49 = sext i32 %sub48 to i64
  %47 = load i32*, i32** %indices, align 8
  %arrayidx50 = getelementptr inbounds i32, i32* %47, i64 %idxprom49
  store i32 %45, i32* %arrayidx50, align 4
  %48 = load %struct._GimpContainerTreeStore*, %struct._GimpContainerTreeStore** %store.addr, align 8
  %49 = bitcast %struct._GimpContainerTreeStore* %48 to %struct._GTypeInstance*
  %call51 = call i64 @gtk_tree_model_get_type() #7
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call51)
  %50 = bitcast %struct._GTypeInstance* %call52 to %struct._GtkTreeModel*
  %51 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %call53 = call i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel* %50, %struct._GtkTreeIter* %place_iter, %struct._GtkTreePath* %51)
  %52 = load i32, i32* %new_index.addr, align 4
  %53 = load i32, i32* %old_index, align 4
  %cmp54 = icmp sgt i32 %52, %53
  br i1 %cmp54, label %if.then.55, label %if.else.58

if.then.55:                                       ; preds = %if.then.47
  %54 = load %struct._GimpContainerTreeStore*, %struct._GimpContainerTreeStore** %store.addr, align 8
  %55 = bitcast %struct._GimpContainerTreeStore* %54 to %struct._GTypeInstance*
  %call56 = call i64 @gtk_tree_store_get_type() #7
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call56)
  %56 = bitcast %struct._GTypeInstance* %call57 to %struct._GtkTreeStore*
  %57 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  call void @gtk_tree_store_move_after(%struct._GtkTreeStore* %56, %struct._GtkTreeIter* %57, %struct._GtkTreeIter* %place_iter)
  br label %if.end.61

if.else.58:                                       ; preds = %if.then.47
  %58 = load %struct._GimpContainerTreeStore*, %struct._GimpContainerTreeStore** %store.addr, align 8
  %59 = bitcast %struct._GimpContainerTreeStore* %58 to %struct._GTypeInstance*
  %call59 = call i64 @gtk_tree_store_get_type() #7
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call59)
  %60 = bitcast %struct._GTypeInstance* %call60 to %struct._GtkTreeStore*
  %61 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  call void @gtk_tree_store_move_before(%struct._GtkTreeStore* %60, %struct._GtkTreeIter* %61, %struct._GtkTreeIter* %place_iter)
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.58, %if.then.55
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.else.34
  %62 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %62)
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.31
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.9, %if.then.14, %if.end.63, %if.then.26
  ret void
}

declare %struct._GimpViewable* @gimp_viewable_get_parent(%struct._GimpViewable*) #1

declare %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable*) #1

declare %struct._GimpContainer* @gimp_container_view_get_container(%struct._GimpContainerView*) #1

declare i32 @gimp_container_get_n_children(%struct._GimpContainer*) #1

declare void @gtk_tree_store_move_before(%struct._GtkTreeStore*, %struct._GtkTreeIter*, %struct._GtkTreeIter*) #1

declare void @gtk_tree_store_move_after(%struct._GtkTreeStore*, %struct._GtkTreeIter*, %struct._GtkTreeIter*) #1

declare %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare i32* @gtk_tree_path_get_indices(%struct._GtkTreePath*) #1

declare i32 @gtk_tree_path_get_depth(%struct._GtkTreePath*) #1

declare i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreePath*) #1

declare void @gtk_tree_path_free(%struct._GtkTreePath*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_container_tree_store_rename_item(%struct._GimpContainerTreeStore* %store, %struct._GimpViewable* %viewable, %struct._GtkTreeIter* %iter) #3 {
entry:
  %retval = alloca i32, align 4
  %store.addr = alloca %struct._GimpContainerTreeStore*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %new_name_shorter = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %private = alloca %struct._GimpContainerTreeStorePrivate*, align 8
  %name = alloca i8*, align 8
  %old_name = alloca i8*, align 8
  store %struct._GimpContainerTreeStore* %store, %struct._GimpContainerTreeStore** %store.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  store i32 0, i32* %new_name_shorter, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainerTreeStore*, %struct._GimpContainerTreeStore** %store.addr, align 8
  %1 = bitcast %struct._GimpContainerTreeStore* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_tree_store_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_container_tree_store_rename_item, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %tobool11 = icmp ne %struct._GtkTreeIter* %13, null
  br i1 %tobool11, label %if.then.12, label %if.end.41

if.then.12:                                       ; preds = %do.end
  %14 = load %struct._GimpContainerTreeStore*, %struct._GimpContainerTreeStore** %store.addr, align 8
  %15 = bitcast %struct._GimpContainerTreeStore* %14 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_container_tree_store_get_type() #7
  %call15 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %15, i64 %call14)
  %16 = bitcast i8* %call15 to %struct._GimpContainerTreeStorePrivate*
  store %struct._GimpContainerTreeStorePrivate* %16, %struct._GimpContainerTreeStorePrivate** %private, align 8
  %17 = load %struct._GimpContainerTreeStorePrivate*, %struct._GimpContainerTreeStorePrivate** %private, align 8
  %use_name = getelementptr inbounds %struct._GimpContainerTreeStorePrivate, %struct._GimpContainerTreeStorePrivate* %17, i32 0, i32 2
  %18 = load i32, i32* %use_name, align 4
  %tobool18 = icmp ne i32 %18, 0
  br i1 %tobool18, label %if.then.19, label %if.else.21

if.then.19:                                       ; preds = %if.then.12
  %19 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %20 = bitcast %struct._GimpViewable* %19 to i8*
  %call20 = call i8* @gimp_object_get_name(i8* %20)
  store i8* %call20, i8** %name, align 8
  br label %if.end.23

if.else.21:                                       ; preds = %if.then.12
  %21 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %call22 = call i8* @gimp_viewable_get_description(%struct._GimpViewable* %21, i8** null)
  store i8* %call22, i8** %name, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.21, %if.then.19
  %22 = load %struct._GimpContainerTreeStore*, %struct._GimpContainerTreeStore** %store.addr, align 8
  %23 = bitcast %struct._GimpContainerTreeStore* %22 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_tree_model_get_type() #7
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call24)
  %24 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkTreeModel*
  %25 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %24, %struct._GtkTreeIter* %25, i32 1, i8** %old_name, i32 -1)
  %26 = load %struct._GimpContainerTreeStore*, %struct._GimpContainerTreeStore** %store.addr, align 8
  %27 = bitcast %struct._GimpContainerTreeStore* %26 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_tree_store_get_type() #7
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call26)
  %28 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkTreeStore*
  %29 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %30 = load i8*, i8** %name, align 8
  call void (%struct._GtkTreeStore*, %struct._GtkTreeIter*, ...) @gtk_tree_store_set(%struct._GtkTreeStore* %28, %struct._GtkTreeIter* %29, i32 1, i8* %30, i32 -1)
  %31 = load i8*, i8** %name, align 8
  %tobool28 = icmp ne i8* %31, null
  br i1 %tobool28, label %land.lhs.true.29, label %if.end.36

land.lhs.true.29:                                 ; preds = %if.end.23
  %32 = load i8*, i8** %old_name, align 8
  %tobool30 = icmp ne i8* %32, null
  br i1 %tobool30, label %land.lhs.true.31, label %if.end.36

land.lhs.true.31:                                 ; preds = %land.lhs.true.29
  %33 = load i8*, i8** %name, align 8
  %call32 = call i64 @strlen(i8* %33) #8
  %34 = load i8*, i8** %old_name, align 8
  %call33 = call i64 @strlen(i8* %34) #8
  %cmp34 = icmp ult i64 %call32, %call33
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %land.lhs.true.31
  store i32 1, i32* %new_name_shorter, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %land.lhs.true.31, %land.lhs.true.29, %if.end.23
  %35 = load %struct._GimpContainerTreeStorePrivate*, %struct._GimpContainerTreeStorePrivate** %private, align 8
  %use_name37 = getelementptr inbounds %struct._GimpContainerTreeStorePrivate, %struct._GimpContainerTreeStorePrivate* %35, i32 0, i32 2
  %36 = load i32, i32* %use_name37, align 4
  %tobool38 = icmp ne i32 %36, 0
  br i1 %tobool38, label %if.end.40, label %if.then.39

if.then.39:                                       ; preds = %if.end.36
  %37 = load i8*, i8** %name, align 8
  call void @g_free(i8* %37)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.end.36
  %38 = load i8*, i8** %old_name, align 8
  call void @g_free(i8* %38)
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %do.end
  %39 = load i32, i32* %new_name_shorter, align 4
  store i32 %39, i32* %retval
  br label %return

return:                                           ; preds = %if.end.41, %if.else.9
  %40 = load i32, i32* %retval
  ret i32 %40
}

declare i8* @gimp_object_get_name(i8*) #1

declare i8* @gimp_viewable_get_description(%struct._GimpViewable*, i8**) #1

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #1

declare void @gtk_tree_store_set(%struct._GtkTreeStore*, %struct._GtkTreeIter*, ...) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_container_tree_store_clear_items(%struct._GimpContainerTreeStore* %store) #3 {
entry:
  %store.addr = alloca %struct._GimpContainerTreeStore*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %private = alloca %struct._GimpContainerTreeStorePrivate*, align 8
  %list = alloca %struct._GList*, align 8
  store %struct._GimpContainerTreeStore* %store, %struct._GimpContainerTreeStore** %store.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainerTreeStore*, %struct._GimpContainerTreeStore** %store.addr, align 8
  %1 = bitcast %struct._GimpContainerTreeStore* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_tree_store_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_container_tree_store_clear_items, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.23

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContainerTreeStore*, %struct._GimpContainerTreeStore** %store.addr, align 8
  %14 = bitcast %struct._GimpContainerTreeStore* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_tree_store_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkTreeStore*
  call void @gtk_tree_store_clear(%struct._GtkTreeStore* %15)
  %16 = load %struct._GimpContainerTreeStore*, %struct._GimpContainerTreeStore** %store.addr, align 8
  %17 = bitcast %struct._GimpContainerTreeStore* %16 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_tree_model_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call13)
  %18 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkTreeModel*
  %call15 = call i32 @gtk_tree_model_iter_n_children(%struct._GtkTreeModel* %18, %struct._GtkTreeIter* null)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end.23, label %if.then.17

if.then.17:                                       ; preds = %do.end
  %19 = load %struct._GimpContainerTreeStore*, %struct._GimpContainerTreeStore** %store.addr, align 8
  %20 = bitcast %struct._GimpContainerTreeStore* %19 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_container_tree_store_get_type() #7
  %call20 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %20, i64 %call19)
  %21 = bitcast i8* %call20 to %struct._GimpContainerTreeStorePrivate*
  store %struct._GimpContainerTreeStorePrivate* %21, %struct._GimpContainerTreeStorePrivate** %private, align 8
  %22 = load %struct._GimpContainerTreeStorePrivate*, %struct._GimpContainerTreeStorePrivate** %private, align 8
  %renderer_cells = getelementptr inbounds %struct._GimpContainerTreeStorePrivate, %struct._GimpContainerTreeStorePrivate* %22, i32 0, i32 1
  %23 = load %struct._GList*, %struct._GList** %renderer_cells, align 8
  store %struct._GList* %23, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.17
  %24 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool22 = icmp ne %struct._GList* %24, null
  br i1 %tobool22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %25, i32 0, i32 0
  %26 = load i8*, i8** %data, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %27, i32 0, i32 1
  %28 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %28, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.9, %for.end, %do.end
  ret void
}

declare void @gtk_tree_store_clear(%struct._GtkTreeStore*) #1

; Function Attrs: nounwind uwtable
define void @gimp_container_tree_store_set_view_size(%struct._GimpContainerTreeStore* %store) #3 {
entry:
  %store.addr = alloca %struct._GimpContainerTreeStore*, align 8
  %private = alloca %struct._GimpContainerTreeStorePrivate*, align 8
  %size_data = alloca %struct.SetSizeForeachData, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContainerTreeStore* %store, %struct._GimpContainerTreeStore** %store.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainerTreeStore*, %struct._GimpContainerTreeStore** %store.addr, align 8
  %1 = bitcast %struct._GimpContainerTreeStore* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_tree_store_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_container_tree_store_set_view_size, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContainerTreeStore*, %struct._GimpContainerTreeStore** %store.addr, align 8
  %14 = bitcast %struct._GimpContainerTreeStore* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_container_tree_store_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpContainerTreeStorePrivate*
  store %struct._GimpContainerTreeStorePrivate* %15, %struct._GimpContainerTreeStorePrivate** %private, align 8
  %16 = load %struct._GimpContainerTreeStorePrivate*, %struct._GimpContainerTreeStorePrivate** %private, align 8
  %container_view = getelementptr inbounds %struct._GimpContainerTreeStorePrivate, %struct._GimpContainerTreeStorePrivate* %16, i32 0, i32 0
  %17 = load %struct._GimpContainerView*, %struct._GimpContainerView** %container_view, align 8
  %border_width = getelementptr inbounds %struct.SetSizeForeachData, %struct.SetSizeForeachData* %size_data, i32 0, i32 1
  %call13 = call i32 @gimp_container_view_get_view_size(%struct._GimpContainerView* %17, i32* %border_width)
  %view_size = getelementptr inbounds %struct.SetSizeForeachData, %struct.SetSizeForeachData* %size_data, i32 0, i32 0
  store i32 %call13, i32* %view_size, align 4
  %18 = load %struct._GimpContainerTreeStore*, %struct._GimpContainerTreeStore** %store.addr, align 8
  %19 = bitcast %struct._GimpContainerTreeStore* %18 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_tree_model_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call14)
  %20 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkTreeModel*
  %21 = bitcast %struct.SetSizeForeachData* %size_data to i8*
  call void @gtk_tree_model_foreach(%struct._GtkTreeModel* %20, i32 (%struct._GtkTreeModel*, %struct._GtkTreePath*, %struct._GtkTreeIter*, i8*)* @gimp_container_tree_store_set_view_size_foreach, i8* %21)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare i32 @gimp_container_view_get_view_size(%struct._GimpContainerView*, i32*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_container_tree_store_set_view_size_foreach(%struct._GtkTreeModel* %model, %struct._GtkTreePath* %path, %struct._GtkTreeIter* %iter, i8* %data) #3 {
entry:
  %model.addr = alloca %struct._GtkTreeModel*, align 8
  %path.addr = alloca %struct._GtkTreePath*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %data.addr = alloca i8*, align 8
  %size_data = alloca %struct.SetSizeForeachData*, align 8
  %renderer = alloca %struct._GimpViewRenderer*, align 8
  store %struct._GtkTreeModel* %model, %struct._GtkTreeModel** %model.addr, align 8
  store %struct._GtkTreePath* %path, %struct._GtkTreePath** %path.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.SetSizeForeachData*
  store %struct.SetSizeForeachData* %1, %struct.SetSizeForeachData** %size_data, align 8
  %2 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model.addr, align 8
  %3 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %2, %struct._GtkTreeIter* %3, i32 0, %struct._GimpViewRenderer** %renderer, i32 -1)
  %4 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %5 = load %struct.SetSizeForeachData*, %struct.SetSizeForeachData** %size_data, align 8
  %view_size = getelementptr inbounds %struct.SetSizeForeachData, %struct.SetSizeForeachData* %5, i32 0, i32 0
  %6 = load i32, i32* %view_size, align 4
  %7 = load %struct.SetSizeForeachData*, %struct.SetSizeForeachData** %size_data, align 8
  %border_width = getelementptr inbounds %struct.SetSizeForeachData, %struct.SetSizeForeachData* %7, i32 0, i32 1
  %8 = load i32, i32* %border_width, align 4
  call void @gimp_view_renderer_set_size(%struct._GimpViewRenderer* %4, i32 %6, i32 %8)
  %9 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %10 = bitcast %struct._GimpViewRenderer* %9 to i8*
  call void @g_object_unref(i8* %10)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @gimp_container_tree_store_columns_init(i64* %types, i32* %n_types) #3 {
entry:
  %types.addr = alloca i64*, align 8
  %n_types.addr = alloca i32*, align 8
  store i64* %types, i64** %types.addr, align 8
  store i32* %n_types, i32** %n_types.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64*, i64** %types.addr, align 8
  %cmp = icmp ne i64* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_container_tree_store_columns_init, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0))
  br label %do.end.48

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i32*, i32** %n_types.addr, align 8
  %cmp2 = icmp ne i32* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_container_tree_store_columns_init, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0))
  br label %do.end.48

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %2 = load i32*, i32** %n_types.addr, align 8
  %3 = load i32, i32* %2, align 4
  %cmp8 = icmp eq i32 %3, 0
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %do.body.7
  br label %if.end.11

if.else.10:                                       ; preds = %do.body.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_container_tree_store_columns_init, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0))
  br label %do.end.48

if.end.11:                                        ; preds = %if.then.9
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  br label %do.body.13

do.body.13:                                       ; preds = %do.end.12
  %4 = load i64*, i64** %types.addr, align 8
  %5 = load i32*, i32** %n_types.addr, align 8
  %call = call i64 @gimp_view_renderer_get_type() #7
  %call14 = call i32 @gimp_container_tree_store_columns_add(i64* %4, i32* %5, i64 %call)
  %cmp15 = icmp eq i32 0, %call14
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.13
  br label %if.end.18

if.else.17:                                       ; preds = %do.body.13
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0), i32 507, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_container_tree_store_columns_init, i32 0, i32 0), i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str.13, i32 0, i32 0)) #9
  unreachable

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.19
  %6 = load i64*, i64** %types.addr, align 8
  %7 = load i32*, i32** %n_types.addr, align 8
  %call21 = call i32 @gimp_container_tree_store_columns_add(i64* %6, i32* %7, i64 64)
  %cmp22 = icmp eq i32 1, %call21
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %do.body.20
  br label %if.end.25

if.else.24:                                       ; preds = %do.body.20
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0), i32 511, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_container_tree_store_columns_init, i32 0, i32 0), i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.14, i32 0, i32 0)) #9
  unreachable

if.end.25:                                        ; preds = %if.then.23
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  br label %do.body.27

do.body.27:                                       ; preds = %do.end.26
  %8 = load i64*, i64** %types.addr, align 8
  %9 = load i32*, i32** %n_types.addr, align 8
  %call28 = call i64 @pango_attr_list_get_type() #7
  %call29 = call i32 @gimp_container_tree_store_columns_add(i64* %8, i32* %9, i64 %call28)
  %cmp30 = icmp eq i32 2, %call29
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %do.body.27
  br label %if.end.33

if.else.32:                                       ; preds = %do.body.27
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0), i32 515, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_container_tree_store_columns_init, i32 0, i32 0), i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.15, i32 0, i32 0)) #9
  unreachable

if.end.33:                                        ; preds = %if.then.31
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  br label %do.body.35

do.body.35:                                       ; preds = %do.end.34
  %10 = load i64*, i64** %types.addr, align 8
  %11 = load i32*, i32** %n_types.addr, align 8
  %call36 = call i32 @gimp_container_tree_store_columns_add(i64* %10, i32* %11, i64 20)
  %cmp37 = icmp eq i32 3, %call36
  br i1 %cmp37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %do.body.35
  br label %if.end.40

if.else.39:                                       ; preds = %do.body.35
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0), i32 519, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_container_tree_store_columns_init, i32 0, i32 0), i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.16, i32 0, i32 0)) #9
  unreachable

if.end.40:                                        ; preds = %if.then.38
  br label %do.end.41

do.end.41:                                        ; preds = %if.end.40
  br label %do.body.42

do.body.42:                                       ; preds = %do.end.41
  %12 = load i64*, i64** %types.addr, align 8
  %13 = load i32*, i32** %n_types.addr, align 8
  %call43 = call i32 @gimp_container_tree_store_columns_add(i64* %12, i32* %13, i64 68)
  %cmp44 = icmp eq i32 4, %call43
  br i1 %cmp44, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %do.body.42
  br label %if.end.47

if.else.46:                                       ; preds = %do.body.42
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0), i32 523, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_container_tree_store_columns_init, i32 0, i32 0), i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.17, i32 0, i32 0)) #9
  unreachable

if.end.47:                                        ; preds = %if.then.45
  br label %do.end.48

do.end.48:                                        ; preds = %if.else, %if.else.4, %if.else.10, %if.end.47
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_container_tree_store_columns_add(i64* %types, i32* %n_types, i64 %type) #3 {
entry:
  %retval = alloca i32, align 4
  %types.addr = alloca i64*, align 8
  %n_types.addr = alloca i32*, align 8
  %type.addr = alloca i64, align 8
  store i64* %types, i64** %types.addr, align 8
  store i32* %n_types, i32** %n_types.addr, align 8
  store i64 %type, i64* %type.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64*, i64** %types.addr, align 8
  %cmp = icmp ne i64* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_container_tree_store_columns_add, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i32*, i32** %n_types.addr, align 8
  %cmp2 = icmp ne i32* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_container_tree_store_columns_add, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %2 = load i32*, i32** %n_types.addr, align 8
  %3 = load i32, i32* %2, align 4
  %cmp8 = icmp sge i32 %3, 0
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %do.body.7
  br label %if.end.11

if.else.10:                                       ; preds = %do.body.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_container_tree_store_columns_add, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  %4 = load i64, i64* %type.addr, align 8
  %5 = load i32*, i32** %n_types.addr, align 8
  %6 = load i32, i32* %5, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i64*, i64** %types.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %7, i64 %idxprom
  store i64 %4, i64* %arrayidx, align 8
  %8 = load i32*, i32** %n_types.addr, align 8
  %9 = load i32, i32* %8, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %8, align 4
  %10 = load i32*, i32** %n_types.addr, align 8
  %11 = load i32, i32* %10, align 4
  %sub = sub nsw i32 %11, 1
  store i32 %sub, i32* %retval
  br label %return

return:                                           ; preds = %do.end.12, %if.else.10, %if.else.4, %if.else
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind readnone
declare i64 @gimp_view_renderer_get_type() #2

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

; Function Attrs: nounwind readnone
declare i64 @pango_attr_list_get_type() #2

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_container_tree_store_class_init(%struct._GimpContainerTreeStoreClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpContainerTreeStoreClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpContainerTreeStoreClass* %klass, %struct._GimpContainerTreeStoreClass** %klass.addr, align 8
  %0 = load %struct._GimpContainerTreeStoreClass*, %struct._GimpContainerTreeStoreClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpContainerTreeStoreClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_container_tree_store_constructed, void (%struct._GObject*)** %constructed, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_container_tree_store_finalize, void (%struct._GObject*)** %finalize, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_container_tree_store_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_container_tree_store_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call1 = call i64 @gimp_container_view_interface_get_type() #7
  %call2 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, i64 %call1, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %7, i32 1, %struct._GParamSpec* %call2)
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* null, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %8, i32 2, %struct._GParamSpec* %call3)
  %9 = load %struct._GimpContainerTreeStoreClass*, %struct._GimpContainerTreeStoreClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpContainerTreeStoreClass* %9 to i8*
  call void @g_type_class_add_private(i8* %10, i64 24)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_container_tree_store_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load i8*, i8** @gimp_container_tree_store_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %2, i32 0, i32 9
  %3 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** @gimp_container_tree_store_parent_class, align 8
  %5 = bitcast i8* %4 to %struct._GTypeClass*
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %5, i64 80)
  %6 = bitcast %struct._GTypeClass* %call1 to %struct._GObjectClass*
  %constructed2 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 9
  %7 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed2, align 8
  %8 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %7(%struct._GObject* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_tree_store_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %private = alloca %struct._GimpContainerTreeStorePrivate*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_tree_store_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpContainerTreeStorePrivate*
  store %struct._GimpContainerTreeStorePrivate* %2, %struct._GimpContainerTreeStorePrivate** %private, align 8
  %3 = load %struct._GimpContainerTreeStorePrivate*, %struct._GimpContainerTreeStorePrivate** %private, align 8
  %renderer_cells = getelementptr inbounds %struct._GimpContainerTreeStorePrivate, %struct._GimpContainerTreeStorePrivate* %3, i32 0, i32 1
  %4 = load %struct._GList*, %struct._GList** %renderer_cells, align 8
  %tobool = icmp ne %struct._GList* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpContainerTreeStorePrivate*, %struct._GimpContainerTreeStorePrivate** %private, align 8
  %renderer_cells2 = getelementptr inbounds %struct._GimpContainerTreeStorePrivate, %struct._GimpContainerTreeStorePrivate* %5, i32 0, i32 1
  %6 = load %struct._GList*, %struct._GList** %renderer_cells2, align 8
  call void @g_list_free(%struct._GList* %6)
  %7 = load %struct._GimpContainerTreeStorePrivate*, %struct._GimpContainerTreeStorePrivate** %private, align 8
  %renderer_cells3 = getelementptr inbounds %struct._GimpContainerTreeStorePrivate, %struct._GimpContainerTreeStorePrivate* %7, i32 0, i32 1
  store %struct._GList* null, %struct._GList** %renderer_cells3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** @gimp_container_tree_store_parent_class, align 8
  %9 = bitcast i8* %8 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 80)
  %10 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 6
  %11 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %11(%struct._GObject* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_tree_store_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpContainerTreeStorePrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_tree_store_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpContainerTreeStorePrivate*
  store %struct._GimpContainerTreeStorePrivate* %2, %struct._GimpContainerTreeStorePrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_get_object(%struct._GValue* %4)
  %5 = bitcast i8* %call2 to %struct._GimpContainerView*
  %6 = load %struct._GimpContainerTreeStorePrivate*, %struct._GimpContainerTreeStorePrivate** %private, align 8
  %container_view = getelementptr inbounds %struct._GimpContainerTreeStorePrivate, %struct._GimpContainerTreeStorePrivate* %6, i32 0, i32 0
  store %struct._GimpContainerView* %5, %struct._GimpContainerView** %container_view, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i32 @g_value_get_boolean(%struct._GValue* %7)
  %8 = load %struct._GimpContainerTreeStorePrivate*, %struct._GimpContainerTreeStorePrivate** %private, align 8
  %use_name = getelementptr inbounds %struct._GimpContainerTreeStorePrivate, %struct._GimpContainerTreeStorePrivate* %8, i32 0, i32 2
  store i32 %call4, i32* %use_name, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %9 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %9, %struct._GObject** %_glib__object, align 8
  %10 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %10, %struct._GParamSpec** %_glib__pspec, align 8
  %11 = load i32, i32* %property_id.addr, align 4
  store i32 %11, i32* %_glib__property_id, align 4
  %12 = load i32, i32* %_glib__property_id, align 4
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %13, i32 0, i32 1
  %14 = load i8*, i8** %name, align 8
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %16 = bitcast %struct._GParamSpec* %15 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %17, i32 0, i32 0
  %18 = load i64, i64* %g_type, align 8
  %call5 = call i8* @g_type_name(i64 %18)
  %19 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %20 = bitcast %struct._GObject* %19 to %struct._GTypeInstance*
  %g_class6 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class6, align 8
  %g_type7 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type7, align 8
  %call8 = call i8* @g_type_name(i64 %22)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0), i32 155, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i32 %12, i8* %14, i8* %call5, i8* %call8)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_tree_store_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpContainerTreeStorePrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_tree_store_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpContainerTreeStorePrivate*
  store %struct._GimpContainerTreeStorePrivate* %2, %struct._GimpContainerTreeStorePrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpContainerTreeStorePrivate*, %struct._GimpContainerTreeStorePrivate** %private, align 8
  %container_view = getelementptr inbounds %struct._GimpContainerTreeStorePrivate, %struct._GimpContainerTreeStorePrivate* %5, i32 0, i32 0
  %6 = load %struct._GimpContainerView*, %struct._GimpContainerView** %container_view, align 8
  %7 = bitcast %struct._GimpContainerView* %6 to i8*
  call void @g_value_set_object(%struct._GValue* %4, i8* %7)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %9 = load %struct._GimpContainerTreeStorePrivate*, %struct._GimpContainerTreeStorePrivate** %private, align 8
  %use_name = getelementptr inbounds %struct._GimpContainerTreeStorePrivate, %struct._GimpContainerTreeStorePrivate* %9, i32 0, i32 2
  %10 = load i32, i32* %use_name, align 4
  call void @g_value_set_boolean(%struct._GValue* %8, i32 %10)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %11, %struct._GObject** %_glib__object, align 8
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %12, %struct._GParamSpec** %_glib__pspec, align 8
  %13 = load i32, i32* %property_id.addr, align 4
  store i32 %13, i32* %_glib__property_id, align 4
  %14 = load i32, i32* %_glib__property_id, align 4
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %15, i32 0, i32 1
  %16 = load i8*, i8** %name, align 8
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %18 = bitcast %struct._GParamSpec* %17 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type, align 8
  %call3 = call i8* @g_type_name(i64 %20)
  %21 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %22 = bitcast %struct._GObject* %21 to %struct._GTypeInstance*
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type5, align 8
  %call6 = call i8* @g_type_name(i64 %24)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0), i32 178, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i32 %14, i8* %16, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.2, %sw.bb
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare void @g_type_class_add_private(i8*, i64) #1

declare void @g_list_free(%struct._GList*) #1

declare i8* @g_value_get_object(%struct._GValue*) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #3 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare void @g_value_set_object(%struct._GValue*, i8*) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare void @gimp_view_renderer_set_context(%struct._GimpViewRenderer*, %struct._GimpContext*) #1

declare void @g_object_unref(i8*) #1

declare void @gimp_view_renderer_set_size(%struct._GimpViewRenderer*, i32, i32) #1

declare %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView*) #1

declare %struct._GimpViewRenderer* @gimp_view_renderer_new(%struct._GimpContext*, i64, i32, i32, i32) #1

declare void @gimp_view_renderer_set_viewable(%struct._GimpViewRenderer*, %struct._GimpViewable*) #1

declare void @gimp_view_renderer_remove_idle(%struct._GimpViewRenderer*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_container_tree_store_renderer_update(%struct._GimpViewRenderer* %renderer, %struct._GimpContainerTreeStore* %store) #3 {
entry:
  %renderer.addr = alloca %struct._GimpViewRenderer*, align 8
  %store.addr = alloca %struct._GimpContainerTreeStore*, align 8
  %private = alloca %struct._GimpContainerTreeStorePrivate*, align 8
  %iter = alloca %struct._GtkTreeIter*, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  store %struct._GimpViewRenderer* %renderer, %struct._GimpViewRenderer** %renderer.addr, align 8
  store %struct._GimpContainerTreeStore* %store, %struct._GimpContainerTreeStore** %store.addr, align 8
  %0 = load %struct._GimpContainerTreeStore*, %struct._GimpContainerTreeStore** %store.addr, align 8
  %1 = bitcast %struct._GimpContainerTreeStore* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_tree_store_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpContainerTreeStorePrivate*
  store %struct._GimpContainerTreeStorePrivate* %2, %struct._GimpContainerTreeStorePrivate** %private, align 8
  %3 = load %struct._GimpContainerTreeStorePrivate*, %struct._GimpContainerTreeStorePrivate** %private, align 8
  %container_view = getelementptr inbounds %struct._GimpContainerTreeStorePrivate, %struct._GimpContainerTreeStorePrivate* %3, i32 0, i32 0
  %4 = load %struct._GimpContainerView*, %struct._GimpContainerView** %container_view, align 8
  %5 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer.addr, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %5, i32 0, i32 3
  %6 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %call2 = call i8* @gimp_container_view_lookup(%struct._GimpContainerView* %4, %struct._GimpViewable* %6)
  %7 = bitcast i8* %call2 to %struct._GtkTreeIter*
  store %struct._GtkTreeIter* %7, %struct._GtkTreeIter** %iter, align 8
  %8 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter, align 8
  %tobool = icmp ne %struct._GtkTreeIter* %8, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct._GimpContainerTreeStore*, %struct._GimpContainerTreeStore** %store.addr, align 8
  %10 = bitcast %struct._GimpContainerTreeStore* %9 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_tree_model_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call3)
  %11 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkTreeModel*
  %12 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter, align 8
  %call5 = call %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel* %11, %struct._GtkTreeIter* %12)
  store %struct._GtkTreePath* %call5, %struct._GtkTreePath** %path, align 8
  %13 = load %struct._GimpContainerTreeStore*, %struct._GimpContainerTreeStore** %store.addr, align 8
  %14 = bitcast %struct._GimpContainerTreeStore* %13 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_tree_model_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call6)
  %15 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkTreeModel*
  %16 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %17 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter, align 8
  call void @gtk_tree_model_row_changed(%struct._GtkTreeModel* %15, %struct._GtkTreePath* %16, %struct._GtkTreeIter* %17)
  %18 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %18)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i8* @gimp_container_view_lookup(%struct._GimpContainerView*, %struct._GimpViewable*) #1

declare void @gtk_tree_model_row_changed(%struct._GtkTreeModel*, %struct._GtkTreePath*, %struct._GtkTreeIter*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
