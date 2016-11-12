; ModuleID = './libgimpwidgets/gimpintstore.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GtkTreeModelIface = type { %struct._GTypeInterface, void (%struct._GtkTreeModel*, %struct._GtkTreePath*, %struct._GtkTreeIter*)*, void (%struct._GtkTreeModel*, %struct._GtkTreePath*, %struct._GtkTreeIter*)*, void (%struct._GtkTreeModel*, %struct._GtkTreePath*, %struct._GtkTreeIter*)*, void (%struct._GtkTreeModel*, %struct._GtkTreePath*)*, void (%struct._GtkTreeModel*, %struct._GtkTreePath*, %struct._GtkTreeIter*, i32*)*, i32 (%struct._GtkTreeModel*)*, i32 (%struct._GtkTreeModel*)*, i64 (%struct._GtkTreeModel*, i32)*, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreePath*)*, %struct._GtkTreePath* (%struct._GtkTreeModel*, %struct._GtkTreeIter*)*, void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, i32, %struct._GValue*)*, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*)*, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*)*, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*)*, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*)*, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i32)*, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*)*, void (%struct._GtkTreeModel*, %struct._GtkTreeIter*)*, void (%struct._GtkTreeModel*, %struct._GtkTreeIter*)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GtkTreeModel = type opaque
%struct._GtkTreePath = type opaque
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpIntStoreClass = type { %struct._GtkListStoreClass, void ()*, void ()*, void ()*, void ()* }
%struct._GtkListStoreClass = type { %struct._GObjectClass, void ()*, void ()*, void ()*, void ()* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GimpIntStore = type { %struct._GtkListStore, %struct._GtkTreeIter* }
%struct._GtkListStore = type { %struct._GObject, i32, i8*, i8*, %struct._GList*, i32, i32, i32, i64*, i32, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.GimpIntStorePrivate = type { i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_int_store_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"GimpIntStore\00", align 1
@gimp_int_store_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GtkTreeModelIface*)* @gimp_int_store_tree_model_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"LibGimpWidgets\00", align 1
@__func__.gimp_int_store_lookup_by_value = private unnamed_addr constant [31 x i8] c"gimp_int_store_lookup_by_value\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"GTK_IS_TREE_MODEL (model)\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"iter != NULL\00", align 1
@gimp_int_store_parent_class = internal global i8* null, align 8
@GimpIntStore_private_offset = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"user-data-type\00", align 1
@__func__.gimp_int_store_add_empty = private unnamed_addr constant [25 x i8] c"gimp_int_store_add_empty\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"store->empty_iter == NULL\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"gimp20-libgimp\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"(Empty)\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"gimpintstore.c\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@parent_iface = internal global %struct._GtkTreeModelIface* null, align 8

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_int_store_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_int_store_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_int_store_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_list_store_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 200, void (i8*, i8*)* bitcast (void (i8*)* @gimp_int_store_class_intern_init to void (i8*, i8*)*), i32 128, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpIntStore*)* @gimp_int_store_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gtk_tree_model_get_type() #7
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_int_store_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_int_store_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_int_store_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_list_store_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_int_store_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_int_store_parent_class, align 8
  %1 = load i32, i32* @GimpIntStore_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpIntStore_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpIntStoreClass*
  call void @gimp_int_store_class_init(%struct._GimpIntStoreClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_int_store_init(%struct._GimpIntStore* %store) #3 {
entry:
  %store.addr = alloca %struct._GimpIntStore*, align 8
  store %struct._GimpIntStore* %store, %struct._GimpIntStore** %store.addr, align 8
  %0 = load %struct._GimpIntStore*, %struct._GimpIntStore** %store.addr, align 8
  %empty_iter = getelementptr inbounds %struct._GimpIntStore, %struct._GimpIntStore* %0, i32 0, i32 1
  store %struct._GtkTreeIter* null, %struct._GtkTreeIter** %empty_iter, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_int_store_tree_model_init(%struct._GtkTreeModelIface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GtkTreeModelIface*, align 8
  store %struct._GtkTreeModelIface* %iface, %struct._GtkTreeModelIface** %iface.addr, align 8
  %0 = load %struct._GtkTreeModelIface*, %struct._GtkTreeModelIface** %iface.addr, align 8
  %1 = bitcast %struct._GtkTreeModelIface* %0 to i8*
  %call = call i8* @g_type_interface_peek_parent(i8* %1)
  %2 = bitcast i8* %call to %struct._GtkTreeModelIface*
  store %struct._GtkTreeModelIface* %2, %struct._GtkTreeModelIface** @parent_iface, align 8
  %3 = load %struct._GtkTreeModelIface*, %struct._GtkTreeModelIface** %iface.addr, align 8
  %row_inserted = getelementptr inbounds %struct._GtkTreeModelIface, %struct._GtkTreeModelIface* %3, i32 0, i32 2
  store void (%struct._GtkTreeModel*, %struct._GtkTreePath*, %struct._GtkTreeIter*)* @gimp_int_store_row_inserted, void (%struct._GtkTreeModel*, %struct._GtkTreePath*, %struct._GtkTreeIter*)** %row_inserted, align 8
  %4 = load %struct._GtkTreeModelIface*, %struct._GtkTreeModelIface** %iface.addr, align 8
  %row_deleted = getelementptr inbounds %struct._GtkTreeModelIface, %struct._GtkTreeModelIface* %4, i32 0, i32 4
  store void (%struct._GtkTreeModel*, %struct._GtkTreePath*)* @gimp_int_store_row_deleted, void (%struct._GtkTreeModel*, %struct._GtkTreePath*)** %row_deleted, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_model_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkListStore* @gimp_int_store_new() #3 {
entry:
  %call = call i64 @gimp_int_store_get_type() #7
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %0 = bitcast i8* %call1 to %struct._GtkListStore*
  ret %struct._GtkListStore* %0
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_int_store_lookup_by_value(%struct._GtkTreeModel* %model, i32 %value, %struct._GtkTreeIter* %iter) #3 {
entry:
  %retval = alloca i32, align 4
  %model.addr = alloca %struct._GtkTreeModel*, align 8
  %value.addr = alloca i32, align 4
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %iter_valid = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %this = alloca i32, align 4
  store %struct._GtkTreeModel* %model, %struct._GtkTreeModel** %model.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model.addr, align 8
  %1 = bitcast %struct._GtkTreeModel* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_tree_model_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_int_store_lookup_by_value, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %cmp12 = icmp ne %struct._GtkTreeIter* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_int_store_lookup_by_value, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model.addr, align 8
  %15 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %call17 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %14, %struct._GtkTreeIter* %15)
  store i32 %call17, i32* %iter_valid, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.16
  %16 = load i32, i32* %iter_valid, align 4
  %tobool18 = icmp ne i32 %16, 0
  br i1 %tobool18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model.addr, align 8
  %18 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %17, %struct._GtkTreeIter* %18, i32 0, i32* %this, i32 -1)
  %19 = load i32, i32* %this, align 4
  %20 = load i32, i32* %value.addr, align 4
  %cmp20 = icmp eq i32 %19, %20
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %for.body
  br label %for.end

if.end.22:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %21 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model.addr, align 8
  %22 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %call23 = call i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel* %21, %struct._GtkTreeIter* %22)
  store i32 %call23, i32* %iter_valid, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.21, %for.cond
  %23 = load i32, i32* %iter_valid, align 4
  store i32 %23, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.else.14, %if.else.9
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #1

declare i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_int_store_class_init(%struct._GimpIntStoreClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpIntStoreClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpIntStoreClass* %klass, %struct._GimpIntStoreClass** %klass.addr, align 8
  %0 = load %struct._GimpIntStoreClass*, %struct._GimpIntStoreClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpIntStoreClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_int_store_constructed, void (%struct._GObject*)** %constructed, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_int_store_finalize, void (%struct._GObject*)** %finalize, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_int_store_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_int_store_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call1 = call %struct._GParamSpec* @g_param_spec_gtype(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null, i64 4, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %7, i32 1, %struct._GParamSpec* %call1)
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %9 = bitcast %struct._GObjectClass* %8 to i8*
  call void @g_type_class_add_private(i8* %9, i64 8)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_int_store_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %store = alloca %struct._GimpIntStore*, align 8
  %priv = alloca %struct.GimpIntStorePrivate*, align 8
  %types = alloca [5 x i64], align 16
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_int_store_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpIntStore*
  store %struct._GimpIntStore* %2, %struct._GimpIntStore** %store, align 8
  %3 = load %struct._GimpIntStore*, %struct._GimpIntStore** %store, align 8
  %4 = bitcast %struct._GimpIntStore* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_int_store_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct.GimpIntStorePrivate*
  store %struct.GimpIntStorePrivate* %5, %struct.GimpIntStorePrivate** %priv, align 8
  %6 = load i8*, i8** @gimp_int_store_parent_class, align 8
  %7 = bitcast i8* %6 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 80)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 9
  %9 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i8*, i8** @gimp_int_store_parent_class, align 8
  %11 = bitcast i8* %10 to %struct._GTypeClass*
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %11, i64 80)
  %12 = bitcast %struct._GTypeClass* %call5 to %struct._GObjectClass*
  %constructed6 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 9
  %13 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed6, align 8
  %14 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %13(%struct._GObject* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arrayidx = getelementptr inbounds [5 x i64], [5 x i64]* %types, i32 0, i64 0
  store i64 24, i64* %arrayidx, align 8
  %arrayidx7 = getelementptr inbounds [5 x i64], [5 x i64]* %types, i32 0, i64 1
  store i64 64, i64* %arrayidx7, align 8
  %arrayidx8 = getelementptr inbounds [5 x i64], [5 x i64]* %types, i32 0, i64 2
  store i64 64, i64* %arrayidx8, align 8
  %call9 = call i64 @gdk_pixbuf_get_type() #7
  %arrayidx10 = getelementptr inbounds [5 x i64], [5 x i64]* %types, i32 0, i64 3
  store i64 %call9, i64* %arrayidx10, align 8
  %15 = load %struct.GimpIntStorePrivate*, %struct.GimpIntStorePrivate** %priv, align 8
  %user_data_type = getelementptr inbounds %struct.GimpIntStorePrivate, %struct.GimpIntStorePrivate* %15, i32 0, i32 0
  %16 = load i64, i64* %user_data_type, align 8
  %cmp = icmp ne i64 %16, 4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %17 = load %struct.GimpIntStorePrivate*, %struct.GimpIntStorePrivate** %priv, align 8
  %user_data_type11 = getelementptr inbounds %struct.GimpIntStorePrivate, %struct.GimpIntStorePrivate* %17, i32 0, i32 0
  %18 = load i64, i64* %user_data_type11, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %18, %cond.true ], [ 68, %cond.false ]
  %arrayidx12 = getelementptr inbounds [5 x i64], [5 x i64]* %types, i32 0, i64 4
  store i64 %cond, i64* %arrayidx12, align 8
  %19 = load %struct._GimpIntStore*, %struct._GimpIntStore** %store, align 8
  %20 = bitcast %struct._GimpIntStore* %19 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_list_store_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call13)
  %21 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkListStore*
  %arraydecay = getelementptr inbounds [5 x i64], [5 x i64]* %types, i32 0, i32 0
  call void @gtk_list_store_set_column_types(%struct._GtkListStore* %21, i32 5, i64* %arraydecay)
  %22 = load %struct._GimpIntStore*, %struct._GimpIntStore** %store, align 8
  call void @gimp_int_store_add_empty(%struct._GimpIntStore* %22)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_int_store_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %store = alloca %struct._GimpIntStore*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_int_store_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpIntStore*
  store %struct._GimpIntStore* %2, %struct._GimpIntStore** %store, align 8
  %3 = load %struct._GimpIntStore*, %struct._GimpIntStore** %store, align 8
  %empty_iter = getelementptr inbounds %struct._GimpIntStore, %struct._GimpIntStore* %3, i32 0, i32 1
  %4 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %empty_iter, align 8
  %tobool = icmp ne %struct._GtkTreeIter* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpIntStore*, %struct._GimpIntStore** %store, align 8
  %empty_iter2 = getelementptr inbounds %struct._GimpIntStore, %struct._GimpIntStore* %5, i32 0, i32 1
  %6 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %empty_iter2, align 8
  call void @gtk_tree_iter_free(%struct._GtkTreeIter* %6)
  %7 = load %struct._GimpIntStore*, %struct._GimpIntStore** %store, align 8
  %empty_iter3 = getelementptr inbounds %struct._GimpIntStore, %struct._GimpIntStore* %7, i32 0, i32 1
  store %struct._GtkTreeIter* null, %struct._GtkTreeIter** %empty_iter3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** @gimp_int_store_parent_class, align 8
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
define internal void @gimp_int_store_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %priv = alloca %struct.GimpIntStorePrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_int_store_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct.GimpIntStorePrivate*
  store %struct.GimpIntStorePrivate* %2, %struct.GimpIntStorePrivate** %priv, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i64 @g_value_get_gtype(%struct._GValue* %4)
  %5 = load %struct.GimpIntStorePrivate*, %struct.GimpIntStorePrivate** %priv, align 8
  %user_data_type = getelementptr inbounds %struct.GimpIntStorePrivate, %struct.GimpIntStorePrivate* %5, i32 0, i32 0
  store i64 %call2, i64* %user_data_type, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %6 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %6, %struct._GObject** %_glib__object, align 8
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %7, %struct._GParamSpec** %_glib__pspec, align 8
  %8 = load i32, i32* %property_id.addr, align 4
  store i32 %8, i32* %_glib__property_id, align 4
  %9 = load i32, i32* %_glib__property_id, align 4
  %10 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %10, i32 0, i32 1
  %11 = load i8*, i8** %name, align 8
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %13 = bitcast %struct._GParamSpec* %12 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %13, i32 0, i32 0
  %14 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %14, i32 0, i32 0
  %15 = load i64, i64* %g_type, align 8
  %call3 = call i8* @g_type_name(i64 %15)
  %16 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %17 = bitcast %struct._GObject* %16 to %struct._GTypeInstance*
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %18, i32 0, i32 0
  %19 = load i64, i64* %g_type5, align 8
  %call6 = call i8* @g_type_name(i64 %19)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i32 188, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 %9, i8* %11, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_int_store_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %priv = alloca %struct.GimpIntStorePrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_int_store_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct.GimpIntStorePrivate*
  store %struct.GimpIntStorePrivate* %2, %struct.GimpIntStorePrivate** %priv, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct.GimpIntStorePrivate*, %struct.GimpIntStorePrivate** %priv, align 8
  %user_data_type = getelementptr inbounds %struct.GimpIntStorePrivate, %struct.GimpIntStorePrivate* %5, i32 0, i32 0
  %6 = load i64, i64* %user_data_type, align 8
  call void @g_value_set_gtype(%struct._GValue* %4, i64 %6)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %7 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %7, %struct._GObject** %_glib__object, align 8
  %8 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %8, %struct._GParamSpec** %_glib__pspec, align 8
  %9 = load i32, i32* %property_id.addr, align 4
  store i32 %9, i32* %_glib__property_id, align 4
  %10 = load i32, i32* %_glib__property_id, align 4
  %11 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %11, i32 0, i32 1
  %12 = load i8*, i8** %name, align 8
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %14 = bitcast %struct._GParamSpec* %13 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %15, i32 0, i32 0
  %16 = load i64, i64* %g_type, align 8
  %call2 = call i8* @g_type_name(i64 %16)
  %17 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %18 = bitcast %struct._GObject* %17 to %struct._GTypeInstance*
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type4 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type4, align 8
  %call5 = call i8* @g_type_name(i64 %20)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i32 207, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 %10, i8* %12, i8* %call2, i8* %call5)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_gtype(i8*, i8*, i8*, i64, i32) #1

declare void @g_type_class_add_private(i8*, i64) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gdk_pixbuf_get_type() #2

declare void @gtk_list_store_set_column_types(%struct._GtkListStore*, i32, i64*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_int_store_add_empty(%struct._GimpIntStore* %store) #3 {
entry:
  %store.addr = alloca %struct._GimpIntStore*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  store %struct._GimpIntStore* %store, %struct._GimpIntStore** %store.addr, align 8
  %0 = bitcast %struct._GtkTreeIter* %iter to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 32, i32 8, i1 false)
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct._GimpIntStore*, %struct._GimpIntStore** %store.addr, align 8
  %empty_iter = getelementptr inbounds %struct._GimpIntStore, %struct._GimpIntStore* %1, i32 0, i32 1
  %2 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %empty_iter, align 8
  %cmp = icmp eq %struct._GtkTreeIter* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_int_store_add_empty, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct._GimpIntStore*, %struct._GimpIntStore** %store.addr, align 8
  %4 = bitcast %struct._GimpIntStore* %3 to %struct._GTypeInstance*
  %call = call i64 @gtk_list_store_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkListStore*
  call void @gtk_list_store_prepend(%struct._GtkListStore* %5, %struct._GtkTreeIter* %iter)
  %6 = load %struct._GimpIntStore*, %struct._GimpIntStore** %store.addr, align 8
  %7 = bitcast %struct._GimpIntStore* %6 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_list_store_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call2)
  %8 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkListStore*
  %call4 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0)) #5
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %8, %struct._GtkTreeIter* %iter, i32 0, i32 -1, i32 1, i8* %call4, i32 -1)
  %call5 = call %struct._GtkTreeIter* @gtk_tree_iter_copy(%struct._GtkTreeIter* %iter)
  %9 = load %struct._GimpIntStore*, %struct._GimpIntStore** %store.addr, align 8
  %empty_iter6 = getelementptr inbounds %struct._GimpIntStore, %struct._GimpIntStore* %9, i32 0, i32 1
  store %struct._GtkTreeIter* %call5, %struct._GtkTreeIter** %empty_iter6, align 8
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare void @gtk_list_store_prepend(%struct._GtkListStore*, %struct._GtkTreeIter*) #1

declare void @gtk_list_store_set(%struct._GtkListStore*, %struct._GtkTreeIter*, ...) #1

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #6

declare %struct._GtkTreeIter* @gtk_tree_iter_copy(%struct._GtkTreeIter*) #1

declare void @gtk_tree_iter_free(%struct._GtkTreeIter*) #1

declare i64 @g_value_get_gtype(%struct._GValue*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare void @g_value_set_gtype(%struct._GValue*, i64) #1

declare i8* @g_type_interface_peek_parent(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_int_store_row_inserted(%struct._GtkTreeModel* %model, %struct._GtkTreePath* %path, %struct._GtkTreeIter* %iter) #3 {
entry:
  %model.addr = alloca %struct._GtkTreeModel*, align 8
  %path.addr = alloca %struct._GtkTreePath*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %store = alloca %struct._GimpIntStore*, align 8
  store %struct._GtkTreeModel* %model, %struct._GtkTreeModel** %model.addr, align 8
  store %struct._GtkTreePath* %path, %struct._GtkTreePath** %path.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  %0 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model.addr, align 8
  %1 = bitcast %struct._GtkTreeModel* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_int_store_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpIntStore*
  store %struct._GimpIntStore* %2, %struct._GimpIntStore** %store, align 8
  %3 = load %struct._GtkTreeModelIface*, %struct._GtkTreeModelIface** @parent_iface, align 8
  %row_inserted = getelementptr inbounds %struct._GtkTreeModelIface, %struct._GtkTreeModelIface* %3, i32 0, i32 2
  %4 = load void (%struct._GtkTreeModel*, %struct._GtkTreePath*, %struct._GtkTreeIter*)*, void (%struct._GtkTreeModel*, %struct._GtkTreePath*, %struct._GtkTreeIter*)** %row_inserted, align 8
  %tobool = icmp ne void (%struct._GtkTreeModel*, %struct._GtkTreePath*, %struct._GtkTreeIter*)* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GtkTreeModelIface*, %struct._GtkTreeModelIface** @parent_iface, align 8
  %row_inserted2 = getelementptr inbounds %struct._GtkTreeModelIface, %struct._GtkTreeModelIface* %5, i32 0, i32 2
  %6 = load void (%struct._GtkTreeModel*, %struct._GtkTreePath*, %struct._GtkTreeIter*)*, void (%struct._GtkTreeModel*, %struct._GtkTreePath*, %struct._GtkTreeIter*)** %row_inserted2, align 8
  %7 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model.addr, align 8
  %8 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path.addr, align 8
  %9 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  call void %6(%struct._GtkTreeModel* %7, %struct._GtkTreePath* %8, %struct._GtkTreeIter* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._GimpIntStore*, %struct._GimpIntStore** %store, align 8
  %empty_iter = getelementptr inbounds %struct._GimpIntStore, %struct._GimpIntStore* %10, i32 0, i32 1
  %11 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %empty_iter, align 8
  %tobool3 = icmp ne %struct._GtkTreeIter* %11, null
  br i1 %tobool3, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %if.end
  %12 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %13 = bitcast %struct._GtkTreeIter* %12 to i8*
  %14 = load %struct._GimpIntStore*, %struct._GimpIntStore** %store, align 8
  %empty_iter4 = getelementptr inbounds %struct._GimpIntStore, %struct._GimpIntStore* %14, i32 0, i32 1
  %15 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %empty_iter4, align 8
  %16 = bitcast %struct._GtkTreeIter* %15 to i8*
  %call5 = call i32 @memcmp(i8* %13, i8* %16, i64 32) #8
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %land.lhs.true
  %17 = load %struct._GimpIntStore*, %struct._GimpIntStore** %store, align 8
  %18 = bitcast %struct._GimpIntStore* %17 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_list_store_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call8)
  %19 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkListStore*
  %20 = load %struct._GimpIntStore*, %struct._GimpIntStore** %store, align 8
  %empty_iter10 = getelementptr inbounds %struct._GimpIntStore, %struct._GimpIntStore* %20, i32 0, i32 1
  %21 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %empty_iter10, align 8
  %call11 = call i32 @gtk_list_store_remove(%struct._GtkListStore* %19, %struct._GtkTreeIter* %21)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.7, %land.lhs.true, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_int_store_row_deleted(%struct._GtkTreeModel* %model, %struct._GtkTreePath* %path) #3 {
entry:
  %model.addr = alloca %struct._GtkTreeModel*, align 8
  %path.addr = alloca %struct._GtkTreePath*, align 8
  %store = alloca %struct._GimpIntStore*, align 8
  store %struct._GtkTreeModel* %model, %struct._GtkTreeModel** %model.addr, align 8
  store %struct._GtkTreePath* %path, %struct._GtkTreePath** %path.addr, align 8
  %0 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model.addr, align 8
  %1 = bitcast %struct._GtkTreeModel* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_int_store_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpIntStore*
  store %struct._GimpIntStore* %2, %struct._GimpIntStore** %store, align 8
  %3 = load %struct._GtkTreeModelIface*, %struct._GtkTreeModelIface** @parent_iface, align 8
  %row_deleted = getelementptr inbounds %struct._GtkTreeModelIface, %struct._GtkTreeModelIface* %3, i32 0, i32 4
  %4 = load void (%struct._GtkTreeModel*, %struct._GtkTreePath*)*, void (%struct._GtkTreeModel*, %struct._GtkTreePath*)** %row_deleted, align 8
  %tobool = icmp ne void (%struct._GtkTreeModel*, %struct._GtkTreePath*)* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GtkTreeModelIface*, %struct._GtkTreeModelIface** @parent_iface, align 8
  %row_deleted2 = getelementptr inbounds %struct._GtkTreeModelIface, %struct._GtkTreeModelIface* %5, i32 0, i32 4
  %6 = load void (%struct._GtkTreeModel*, %struct._GtkTreePath*)*, void (%struct._GtkTreeModel*, %struct._GtkTreePath*)** %row_deleted2, align 8
  %7 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model.addr, align 8
  %8 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path.addr, align 8
  call void %6(%struct._GtkTreeModel* %7, %struct._GtkTreePath* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpIntStore*, %struct._GimpIntStore** %store, align 8
  %empty_iter = getelementptr inbounds %struct._GimpIntStore, %struct._GimpIntStore* %9, i32 0, i32 1
  %10 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %empty_iter, align 8
  %tobool3 = icmp ne %struct._GtkTreeIter* %10, null
  br i1 %tobool3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %11 = load %struct._GimpIntStore*, %struct._GimpIntStore** %store, align 8
  %empty_iter5 = getelementptr inbounds %struct._GimpIntStore, %struct._GimpIntStore* %11, i32 0, i32 1
  store %struct._GtkTreeIter* null, %struct._GtkTreeIter** %empty_iter5, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

declare i32 @gtk_list_store_remove(%struct._GtkListStore*, %struct._GtkTreeIter*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
