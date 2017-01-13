; ModuleID = './libgimpwidgets/gimpenumstore.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpEnumStoreClass = type { %struct._GimpIntStoreClass, void ()*, void ()*, void ()*, void ()* }
%struct._GimpIntStoreClass = type { %struct._GtkListStoreClass, void ()*, void ()*, void ()*, void ()* }
%struct._GtkListStoreClass = type { %struct._GObjectClass, void ()*, void ()*, void ()*, void ()* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpEnumStore = type { %struct._GimpIntStore, %struct._GEnumClass* }
%struct._GimpIntStore = type { %struct._GtkListStore, %struct._GtkTreeIter* }
%struct._GtkListStore = type { %struct._GObject, i32, i8*, i8*, %struct._GList*, i32, i32, i32, i64*, i32, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkTreeModel = type opaque
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GEnumClass = type { %struct._GTypeClass, i32, i32, i32, %struct._GEnumValue* }
%struct._GEnumValue = type { i32, i8*, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_enum_store_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"GimpEnumStore\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"LibGimpWidgets\00", align 1
@__func__.gimp_enum_store_new = private unnamed_addr constant [20 x i8] c"gimp_enum_store_new\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"G_TYPE_IS_ENUM (enum_type)\00", align 1
@__func__.gimp_enum_store_new_with_range = private unnamed_addr constant [31 x i8] c"gimp_enum_store_new_with_range\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"enum-type\00", align 1
@__func__.gimp_enum_store_new_with_values_valist = private unnamed_addr constant [39 x i8] c"gimp_enum_store_new_with_values_valist\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"n_values > 1\00", align 1
@__func__.gimp_enum_store_set_stock_prefix = private unnamed_addr constant [33 x i8] c"gimp_enum_store_set_stock_prefix\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"GIMP_IS_ENUM_STORE (store)\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@gimp_enum_store_parent_class = internal global i8* null, align 8
@GimpEnumStore_private_offset = internal global i32 0, align 4
@__func__.gimp_enum_store_set_property = private unnamed_addr constant [29 x i8] c"gimp_enum_store_set_property\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"store->enum_class == NULL\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"gimpenumstore.c\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"property\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_enum_store_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_enum_store_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_enum_store_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_int_store_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 232, void (i8*, i8*)* bitcast (void (i8*)* @gimp_enum_store_class_intern_init to void (i8*, i8*)*), i32 136, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpEnumStore*)* @gimp_enum_store_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_enum_store_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_enum_store_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int_store_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_enum_store_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_enum_store_parent_class, align 8
  %1 = load i32, i32* @GimpEnumStore_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpEnumStore_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpEnumStoreClass*
  call void @gimp_enum_store_class_init(%struct._GimpEnumStoreClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_enum_store_init(%struct._GimpEnumStore* %store) #3 {
entry:
  %store.addr = alloca %struct._GimpEnumStore*, align 8
  store %struct._GimpEnumStore* %store, %struct._GimpEnumStore** %store.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkListStore* @gimp_enum_store_new(i64 %enum_type) #3 {
entry:
  %retval = alloca %struct._GtkListStore*, align 8
  %enum_type.addr = alloca i64, align 8
  %store = alloca %struct._GtkListStore*, align 8
  %enum_class = alloca %struct._GEnumClass*, align 8
  store i64 %enum_type, i64* %enum_type.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %enum_type.addr, align 8
  %call = call i64 @g_type_fundamental(i64 %0)
  %cmp = icmp eq i64 %call, 48
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_enum_store_new, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkListStore* null, %struct._GtkListStore** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i64, i64* %enum_type.addr, align 8
  %call1 = call i8* @g_type_class_ref(i64 %1)
  %2 = bitcast i8* %call1 to %struct._GEnumClass*
  store %struct._GEnumClass* %2, %struct._GEnumClass** %enum_class, align 8
  %3 = load i64, i64* %enum_type.addr, align 8
  %4 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %minimum = getelementptr inbounds %struct._GEnumClass, %struct._GEnumClass* %4, i32 0, i32 1
  %5 = load i32, i32* %minimum, align 4
  %6 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %maximum = getelementptr inbounds %struct._GEnumClass, %struct._GEnumClass* %6, i32 0, i32 2
  %7 = load i32, i32* %maximum, align 4
  %call2 = call %struct._GtkListStore* @gimp_enum_store_new_with_range(i64 %3, i32 %5, i32 %7)
  store %struct._GtkListStore* %call2, %struct._GtkListStore** %store, align 8
  %8 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %9 = bitcast %struct._GEnumClass* %8 to i8*
  call void @g_type_class_unref(i8* %9)
  %10 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  store %struct._GtkListStore* %10, %struct._GtkListStore** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %11 = load %struct._GtkListStore*, %struct._GtkListStore** %retval
  ret %struct._GtkListStore* %11
}

declare i64 @g_type_fundamental(i64) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_type_class_ref(i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkListStore* @gimp_enum_store_new_with_range(i64 %enum_type, i32 %minimum, i32 %maximum) #3 {
entry:
  %retval = alloca %struct._GtkListStore*, align 8
  %enum_type.addr = alloca i64, align 8
  %minimum.addr = alloca i32, align 4
  %maximum.addr = alloca i32, align 4
  %store = alloca %struct._GtkListStore*, align 8
  %value = alloca %struct._GEnumValue*, align 8
  store i64 %enum_type, i64* %enum_type.addr, align 8
  store i32 %minimum, i32* %minimum.addr, align 4
  store i32 %maximum, i32* %maximum.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %enum_type.addr, align 8
  %call = call i64 @g_type_fundamental(i64 %0)
  %cmp = icmp eq i64 %call, 48
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_enum_store_new_with_range, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkListStore* null, %struct._GtkListStore** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call1 = call i64 @gimp_enum_store_get_type() #6
  %1 = load i64, i64* %enum_type.addr, align 8
  %call2 = call i8* (i64, i8*, ...) @g_object_new(i64 %call1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i64 %1, i8* null)
  %2 = bitcast i8* %call2 to %struct._GtkListStore*
  store %struct._GtkListStore* %2, %struct._GtkListStore** %store, align 8
  %3 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %4 = bitcast %struct._GtkListStore* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_enum_store_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpEnumStore*
  %enum_class = getelementptr inbounds %struct._GimpEnumStore, %struct._GimpEnumStore* %5, i32 0, i32 1
  %6 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %values = getelementptr inbounds %struct._GEnumClass, %struct._GEnumClass* %6, i32 0, i32 4
  %7 = load %struct._GEnumValue*, %struct._GEnumValue** %values, align 8
  store %struct._GEnumValue* %7, %struct._GEnumValue** %value, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %8 = load %struct._GEnumValue*, %struct._GEnumValue** %value, align 8
  %value_name = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %8, i32 0, i32 1
  %9 = load i8*, i8** %value_name, align 8
  %tobool = icmp ne i8* %9, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct._GEnumValue*, %struct._GEnumValue** %value, align 8
  %value5 = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %10, i32 0, i32 0
  %11 = load i32, i32* %value5, align 4
  %12 = load i32, i32* %minimum.addr, align 4
  %cmp6 = icmp slt i32 %11, %12
  br i1 %cmp6, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %13 = load %struct._GEnumValue*, %struct._GEnumValue** %value, align 8
  %value7 = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %13, i32 0, i32 0
  %14 = load i32, i32* %value7, align 4
  %15 = load i32, i32* %maximum.addr, align 4
  %cmp8 = icmp sgt i32 %14, %15
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %lor.lhs.false, %for.body
  br label %for.inc

if.end.10:                                        ; preds = %lor.lhs.false
  %16 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %17 = load %struct._GEnumValue*, %struct._GEnumValue** %value, align 8
  call void @gimp_enum_store_add_value(%struct._GtkListStore* %16, %struct._GEnumValue* %17)
  br label %for.inc

for.inc:                                          ; preds = %if.end.10, %if.then.9
  %18 = load %struct._GEnumValue*, %struct._GEnumValue** %value, align 8
  %incdec.ptr = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %18, i32 1
  store %struct._GEnumValue* %incdec.ptr, %struct._GEnumValue** %value, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  store %struct._GtkListStore* %19, %struct._GtkListStore** %retval
  br label %return

return:                                           ; preds = %for.end, %if.else
  %20 = load %struct._GtkListStore*, %struct._GtkListStore** %retval
  ret %struct._GtkListStore* %20
}

declare void @g_type_class_unref(i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_enum_store_add_value(%struct._GtkListStore* %store, %struct._GEnumValue* %value) #3 {
entry:
  %store.addr = alloca %struct._GtkListStore*, align 8
  %value.addr = alloca %struct._GEnumValue*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %desc = alloca i8*, align 8
  store %struct._GtkListStore* %store, %struct._GtkListStore** %store.addr, align 8
  store %struct._GEnumValue* %value, %struct._GEnumValue** %value.addr, align 8
  %0 = bitcast %struct._GtkTreeIter* %iter to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 32, i32 8, i1 false)
  %1 = load %struct._GtkListStore*, %struct._GtkListStore** %store.addr, align 8
  %2 = bitcast %struct._GtkListStore* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_enum_store_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpEnumStore*
  %enum_class = getelementptr inbounds %struct._GimpEnumStore, %struct._GimpEnumStore* %3, i32 0, i32 1
  %4 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %5 = load %struct._GEnumValue*, %struct._GEnumValue** %value.addr, align 8
  %call2 = call i8* @gimp_enum_value_get_desc(%struct._GEnumClass* %4, %struct._GEnumValue* %5)
  store i8* %call2, i8** %desc, align 8
  %6 = load %struct._GtkListStore*, %struct._GtkListStore** %store.addr, align 8
  call void @gtk_list_store_append(%struct._GtkListStore* %6, %struct._GtkTreeIter* %iter)
  %7 = load %struct._GtkListStore*, %struct._GtkListStore** %store.addr, align 8
  %8 = load %struct._GEnumValue*, %struct._GEnumValue** %value.addr, align 8
  %value3 = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %8, i32 0, i32 0
  %9 = load i32, i32* %value3, align 4
  %10 = load i8*, i8** %desc, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %7, %struct._GtkTreeIter* %iter, i32 0, i32 %9, i32 1, i8* %10, i32 -1)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GtkListStore* @gimp_enum_store_new_with_values(i64 %enum_type, i32 %n_values, ...) #3 {
entry:
  %enum_type.addr = alloca i64, align 8
  %n_values.addr = alloca i32, align 4
  %store = alloca %struct._GtkListStore*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i64 %enum_type, i64* %enum_type.addr, align 8
  store i32 %n_values, i32* %n_values.addr, align 4
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i64, i64* %enum_type.addr, align 8
  %1 = load i32, i32* %n_values.addr, align 4
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call = call %struct._GtkListStore* @gimp_enum_store_new_with_values_valist(i64 %0, i32 %1, %struct.__va_list_tag* %arraydecay2)
  store %struct._GtkListStore* %call, %struct._GtkListStore** %store, align 8
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %2 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  ret %struct._GtkListStore* %2
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: nounwind uwtable
define %struct._GtkListStore* @gimp_enum_store_new_with_values_valist(i64 %enum_type, i32 %n_values, %struct.__va_list_tag* %args) #3 {
entry:
  %retval = alloca %struct._GtkListStore*, align 8
  %enum_type.addr = alloca i64, align 8
  %n_values.addr = alloca i32, align 4
  %args.addr = alloca %struct.__va_list_tag*, align 8
  %store = alloca %struct._GtkListStore*, align 8
  %value = alloca %struct._GEnumValue*, align 8
  %i = alloca i32, align 4
  store i64 %enum_type, i64* %enum_type.addr, align 8
  store i32 %n_values, i32* %n_values.addr, align 4
  store %struct.__va_list_tag* %args, %struct.__va_list_tag** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %enum_type.addr, align 8
  %call = call i64 @g_type_fundamental(i64 %0)
  %cmp = icmp eq i64 %call, 48
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_enum_store_new_with_values_valist, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkListStore* null, %struct._GtkListStore** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i32, i32* %n_values.addr, align 4
  %cmp2 = icmp sgt i32 %1, 1
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_enum_store_new_with_values_valist, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GtkListStore* null, %struct._GtkListStore** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %call7 = call i64 @gimp_enum_store_get_type() #6
  %2 = load i64, i64* %enum_type.addr, align 8
  %call8 = call i8* (i64, i8*, ...) @g_object_new(i64 %call7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i64 %2, i8* null)
  %3 = bitcast i8* %call8 to %struct._GtkListStore*
  store %struct._GtkListStore* %3, %struct._GtkListStore** %store, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.6
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %n_values.addr, align 4
  %cmp9 = icmp slt i32 %4, %5
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %7 = bitcast %struct._GtkListStore* %6 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_enum_store_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call10)
  %8 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpEnumStore*
  %enum_class = getelementptr inbounds %struct._GimpEnumStore, %struct._GimpEnumStore* %8, i32 0, i32 1
  %9 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %10 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %10, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %for.body
  %11 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %10, i32 0, i32 3
  %reg_save_area = load i8*, i8** %11
  %12 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %13 = bitcast i8* %12 to i32*
  %14 = add i32 %gp_offset, 8
  store i32 %14, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %for.body
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %10, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %15 = bitcast i8* %overflow_arg_area to i32*
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i32* [ %13, %vaarg.in_reg ], [ %15, %vaarg.in_mem ]
  %16 = load i32, i32* %vaarg.addr
  %call12 = call %struct._GEnumValue* @g_enum_get_value(%struct._GEnumClass* %9, i32 %16)
  store %struct._GEnumValue* %call12, %struct._GEnumValue** %value, align 8
  %17 = load %struct._GEnumValue*, %struct._GEnumValue** %value, align 8
  %tobool = icmp ne %struct._GEnumValue* %17, null
  br i1 %tobool, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %vaarg.end
  %18 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %19 = load %struct._GEnumValue*, %struct._GEnumValue** %value, align 8
  call void @gimp_enum_store_add_value(%struct._GtkListStore* %18, %struct._GEnumValue* %19)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %vaarg.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  store %struct._GtkListStore* %21, %struct._GtkListStore** %retval
  br label %return

return:                                           ; preds = %for.end, %if.else.4, %if.else
  %22 = load %struct._GtkListStore*, %struct._GtkListStore** %retval
  ret %struct._GtkListStore* %22
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

declare %struct._GEnumValue* @g_enum_get_value(%struct._GEnumClass*, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_enum_store_set_stock_prefix(%struct._GimpEnumStore* %store, i8* %stock_prefix) #3 {
entry:
  %store.addr = alloca %struct._GimpEnumStore*, align 8
  %stock_prefix.addr = alloca i8*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %iter_valid = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %stock_id = alloca i8*, align 8
  %enum_value = alloca %struct._GEnumValue*, align 8
  %value = alloca i32, align 4
  store %struct._GimpEnumStore* %store, %struct._GimpEnumStore** %store.addr, align 8
  store i8* %stock_prefix, i8** %stock_prefix.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpEnumStore*, %struct._GimpEnumStore** %store.addr, align 8
  %1 = bitcast %struct._GimpEnumStore* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_enum_store_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_enum_store_set_stock_prefix, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0))
  br label %for.end

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpEnumStore*, %struct._GimpEnumStore** %store.addr, align 8
  %14 = bitcast %struct._GimpEnumStore* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_tree_model_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkTreeModel*
  store %struct._GtkTreeModel* %15, %struct._GtkTreeModel** %model, align 8
  %16 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call13 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %16, %struct._GtkTreeIter* %iter)
  store i32 %call13, i32* %iter_valid, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %17 = load i32, i32* %iter_valid, align 4
  %tobool14 = icmp ne i32 %17, 0
  br i1 %tobool14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i8* null, i8** %stock_id, align 8
  %18 = load i8*, i8** %stock_prefix.addr, align 8
  %tobool16 = icmp ne i8* %18, null
  br i1 %tobool16, label %if.then.17, label %if.end.22

if.then.17:                                       ; preds = %for.body
  %19 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %19, %struct._GtkTreeIter* %iter, i32 0, i32* %value, i32 -1)
  %20 = load %struct._GimpEnumStore*, %struct._GimpEnumStore** %store.addr, align 8
  %enum_class = getelementptr inbounds %struct._GimpEnumStore, %struct._GimpEnumStore* %20, i32 0, i32 1
  %21 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %22 = load i32, i32* %value, align 4
  %call20 = call %struct._GEnumValue* @g_enum_get_value(%struct._GEnumClass* %21, i32 %22)
  store %struct._GEnumValue* %call20, %struct._GEnumValue** %enum_value, align 8
  %23 = load i8*, i8** %stock_prefix.addr, align 8
  %24 = load %struct._GEnumValue*, %struct._GEnumValue** %enum_value, align 8
  %value_nick = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %24, i32 0, i32 2
  %25 = load i8*, i8** %value_nick, align 8
  %call21 = call noalias i8* (i8*, ...) @g_strconcat(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* %25, i8* null)
  store i8* %call21, i8** %stock_id, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.17, %for.body
  %26 = load %struct._GimpEnumStore*, %struct._GimpEnumStore** %store.addr, align 8
  %27 = bitcast %struct._GimpEnumStore* %26 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_list_store_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call23)
  %28 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkListStore*
  %29 = load i8*, i8** %stock_id, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %28, %struct._GtkTreeIter* %iter, i32 2, i8* %29, i32 -1)
  %30 = load i8*, i8** %stock_id, align 8
  %tobool25 = icmp ne i8* %30, null
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.22
  %31 = load i8*, i8** %stock_id, align 8
  call void @g_free(i8* %31)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.end.22
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %32 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call28 = call i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel* %32, %struct._GtkTreeIter* %iter)
  store i32 %call28, i32* %iter_valid, align 4
  br label %for.cond

for.end:                                          ; preds = %if.else.9, %for.cond
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #5

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_model_get_type() #2

declare i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #1

declare noalias i8* @g_strconcat(i8*, ...) #1

declare void @gtk_list_store_set(%struct._GtkListStore*, %struct._GtkTreeIter*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_list_store_get_type() #2

declare void @g_free(i8*) #1

declare i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_enum_store_class_init(%struct._GimpEnumStoreClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpEnumStoreClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpEnumStoreClass* %klass, %struct._GimpEnumStoreClass** %klass.addr, align 8
  %0 = load %struct._GimpEnumStoreClass*, %struct._GimpEnumStoreClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpEnumStoreClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_enum_store_finalize, void (%struct._GObject*)** %finalize, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_enum_store_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_enum_store_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call1 = call %struct._GParamSpec* @g_param_spec_gtype(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* null, i64 48, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %6, i32 1, %struct._GParamSpec* %call1)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_enum_store_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %store = alloca %struct._GimpEnumStore*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_enum_store_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpEnumStore*
  store %struct._GimpEnumStore* %2, %struct._GimpEnumStore** %store, align 8
  %3 = load %struct._GimpEnumStore*, %struct._GimpEnumStore** %store, align 8
  %enum_class = getelementptr inbounds %struct._GimpEnumStore, %struct._GimpEnumStore* %3, i32 0, i32 1
  %4 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %tobool = icmp ne %struct._GEnumClass* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpEnumStore*, %struct._GimpEnumStore** %store, align 8
  %enum_class2 = getelementptr inbounds %struct._GimpEnumStore, %struct._GimpEnumStore* %5, i32 0, i32 1
  %6 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class2, align 8
  %7 = bitcast %struct._GEnumClass* %6 to i8*
  call void @g_type_class_unref(i8* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** @gimp_enum_store_parent_class, align 8
  %9 = bitcast i8* %8 to %struct._GTypeClass*
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 80)
  %10 = bitcast %struct._GTypeClass* %call3 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 6
  %11 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %11(%struct._GObject* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_enum_store_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %store = alloca %struct._GimpEnumStore*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_enum_store_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpEnumStore*
  store %struct._GimpEnumStore* %2, %struct._GimpEnumStore** %store, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.bb
  %4 = load %struct._GimpEnumStore*, %struct._GimpEnumStore** %store, align 8
  %enum_class = getelementptr inbounds %struct._GimpEnumStore, %struct._GimpEnumStore* %4, i32 0, i32 1
  %5 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %cmp = icmp eq %struct._GEnumClass* %5, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_enum_store_set_property, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %sw.epilog

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %6 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i64 @g_value_get_gtype(%struct._GValue* %6)
  %call3 = call i8* @g_type_class_ref(i64 %call2)
  %7 = bitcast i8* %call3 to %struct._GEnumClass*
  %8 = load %struct._GimpEnumStore*, %struct._GimpEnumStore** %store, align 8
  %enum_class4 = getelementptr inbounds %struct._GimpEnumStore, %struct._GimpEnumStore* %8, i32 0, i32 1
  store %struct._GEnumClass* %7, %struct._GEnumClass** %enum_class4, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body.5

do.body.5:                                        ; preds = %sw.default
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
  %call6 = call i8* @g_type_name(i64 %18)
  %19 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %20 = bitcast %struct._GObject* %19 to %struct._GTypeInstance*
  %g_class7 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class7, align 8
  %g_type8 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type8, align 8
  %call9 = call i8* @g_type_name(i64 %22)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i32 124, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 %12, i8* %14, i8* %call6, i8* %call9)
  br label %do.end.10

do.end.10:                                        ; preds = %do.body.5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %do.end.10, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_enum_store_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %store = alloca %struct._GimpEnumStore*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_enum_store_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpEnumStore*
  store %struct._GimpEnumStore* %2, %struct._GimpEnumStore** %store, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpEnumStore*, %struct._GimpEnumStore** %store, align 8
  %enum_class = getelementptr inbounds %struct._GimpEnumStore, %struct._GimpEnumStore* %5, i32 0, i32 1
  %6 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %tobool = icmp ne %struct._GEnumClass* %6, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %7 = load %struct._GimpEnumStore*, %struct._GimpEnumStore** %store, align 8
  %enum_class2 = getelementptr inbounds %struct._GimpEnumStore, %struct._GimpEnumStore* %7, i32 0, i32 1
  %8 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class2, align 8
  %9 = bitcast %struct._GEnumClass* %8 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %9, i32 0, i32 0
  %10 = load i64, i64* %g_type, align 8
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %10, %cond.true ], [ 4, %cond.false ]
  call void @g_value_set_gtype(%struct._GValue* %4, i64 %cond)
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
  %g_type3 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type3, align 8
  %call4 = call i8* @g_type_name(i64 %20)
  %21 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %22 = bitcast %struct._GObject* %21 to %struct._GTypeInstance*
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type6 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type6, align 8
  %call7 = call i8* @g_type_name(i64 %24)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i32 145, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 %14, i8* %16, i8* %call4, i8* %call7)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %cond.end
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_gtype(i8*, i8*, i8*, i64, i32) #1

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

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

declare void @g_value_set_gtype(%struct._GValue*, i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare i8* @gimp_enum_value_get_desc(%struct._GEnumClass*, %struct._GEnumValue*) #1

declare void @gtk_list_store_append(%struct._GtkListStore*, %struct._GtkTreeIter*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
