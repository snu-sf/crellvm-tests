; ModuleID = './app/core/gimpparasitelist.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpParasiteListClass = type { %struct._GimpObjectClass, void (%struct._GimpParasiteList*, %struct._GimpParasite*)*, void (%struct._GimpParasiteList*, %struct._GimpParasite*)* }
%struct._GimpObjectClass = type { %struct._GObjectClass, void (%struct._GimpObject*)*, void (%struct._GimpObject*)*, i64 (%struct._GimpObject*, i64*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpParasiteList = type { %struct._GimpObject, %struct._GHashTable* }
%struct._GHashTable = type opaque
%struct._GimpParasite = type { i8*, i32, i32, i8* }
%struct._GimpConfigInterface = type { %struct._GTypeInterface, i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)*, i32 (%struct._GimpConfig*, %struct._GScanner*, i32, i8*)*, i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GimpConfigWriter*)*, i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GScanner*, i32*)*, %struct._GimpConfig* (%struct._GimpConfig*)*, i32 (%struct._GimpConfig*, %struct._GimpConfig*)*, void (%struct._GimpConfig*)*, i32 (%struct._GimpConfig*, %struct._GimpConfig*, i32)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpConfig = type opaque
%struct._GimpConfigWriter = type opaque
%struct._GScanner = type { i8*, i32, i32, i8*, %struct._GData*, %struct._GScannerConfig*, i32, %union._GTokenValue, i32, i32, i32, %union._GTokenValue, i32, i32, %struct._GHashTable*, i32, i8*, i8*, i8*, i32, void (%struct._GScanner*, i8*, i32)* }
%struct._GScannerConfig = type { i8*, i8*, i8*, i8*, i24, i32 }
%union._GTokenValue = type { i8* }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }

@gimp_parasite_list_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"GimpParasiteList\00", align 1
@gimp_parasite_list_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* @gimp_parasite_list_config_iface_init, void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_parasite_list_copy = private unnamed_addr constant [24 x i8] c"gimp_parasite_list_copy\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"GIMP_IS_PARASITE_LIST (list)\00", align 1
@__func__.gimp_parasite_list_add = private unnamed_addr constant [23 x i8] c"gimp_parasite_list_add\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"parasite != NULL\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"parasite->name != NULL\00", align 1
@parasite_list_signals = internal global [2 x i32] zeroinitializer, align 4
@__func__.gimp_parasite_list_remove = private unnamed_addr constant [26 x i8] c"gimp_parasite_list_remove\00", align 1
@__func__.gimp_parasite_list_length = private unnamed_addr constant [26 x i8] c"gimp_parasite_list_length\00", align 1
@__func__.gimp_parasite_list_persistent_length = private unnamed_addr constant [37 x i8] c"gimp_parasite_list_persistent_length\00", align 1
@__func__.gimp_parasite_list_foreach = private unnamed_addr constant [27 x i8] c"gimp_parasite_list_foreach\00", align 1
@__func__.gimp_parasite_list_find = private unnamed_addr constant [24 x i8] c"gimp_parasite_list_find\00", align 1
@gimp_parasite_list_parent_class = internal global i8* null, align 8
@GimpParasiteList_private_offset = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@parasite_symbol = internal constant [9 x i8] c"parasite\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"\22%s\22 %lu %lu\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_parasite_list_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_parasite_list_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_parasite_list_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_object_get_type() #5
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 176, void (i8*, i8*)* bitcast (void (i8*)* @gimp_parasite_list_class_intern_init to void (i8*, i8*)*), i32 40, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpParasiteList*)* @gimp_parasite_list_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_config_interface_get_type() #5
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_parasite_list_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_parasite_list_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_parasite_list_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_parasite_list_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_parasite_list_parent_class, align 8
  %1 = load i32, i32* @GimpParasiteList_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpParasiteList_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpParasiteListClass*
  call void @gimp_parasite_list_class_init(%struct._GimpParasiteListClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_parasite_list_init(%struct._GimpParasiteList* %list) #3 {
entry:
  %list.addr = alloca %struct._GimpParasiteList*, align 8
  store %struct._GimpParasiteList* %list, %struct._GimpParasiteList** %list.addr, align 8
  %0 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %list.addr, align 8
  %table = getelementptr inbounds %struct._GimpParasiteList, %struct._GimpParasiteList* %0, i32 0, i32 1
  store %struct._GHashTable* null, %struct._GHashTable** %table, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_parasite_list_config_iface_init(i8* %iface, i8* %iface_data) #3 {
entry:
  %iface.addr = alloca i8*, align 8
  %iface_data.addr = alloca i8*, align 8
  %config_iface = alloca %struct._GimpConfigInterface*, align 8
  store i8* %iface, i8** %iface.addr, align 8
  store i8* %iface_data, i8** %iface_data.addr, align 8
  %0 = load i8*, i8** %iface.addr, align 8
  %1 = bitcast i8* %0 to %struct._GimpConfigInterface*
  store %struct._GimpConfigInterface* %1, %struct._GimpConfigInterface** %config_iface, align 8
  %2 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %config_iface, align 8
  %serialize = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %2, i32 0, i32 1
  store i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)* @gimp_parasite_list_serialize, i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)** %serialize, align 8
  %3 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %config_iface, align 8
  %deserialize = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %3, i32 0, i32 2
  store i32 (%struct._GimpConfig*, %struct._GScanner*, i32, i8*)* @gimp_parasite_list_deserialize, i32 (%struct._GimpConfig*, %struct._GScanner*, i32, i8*)** %deserialize, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpParasiteList* @gimp_parasite_list_new() #3 {
entry:
  %list = alloca %struct._GimpParasiteList*, align 8
  %call = call i64 @gimp_parasite_list_get_type() #5
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %0 = bitcast i8* %call1 to %struct._GimpParasiteList*
  store %struct._GimpParasiteList* %0, %struct._GimpParasiteList** %list, align 8
  %1 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %list, align 8
  ret %struct._GimpParasiteList* %1
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct._GimpParasiteList* @gimp_parasite_list_copy(%struct._GimpParasiteList* %list) #3 {
entry:
  %retval = alloca %struct._GimpParasiteList*, align 8
  %list.addr = alloca %struct._GimpParasiteList*, align 8
  %newlist = alloca %struct._GimpParasiteList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpParasiteList* %list, %struct._GimpParasiteList** %list.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %list.addr, align 8
  %1 = bitcast %struct._GimpParasiteList* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_parasite_list_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_parasite_list_copy, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpParasiteList* null, %struct._GimpParasiteList** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call %struct._GimpParasiteList* @gimp_parasite_list_new()
  store %struct._GimpParasiteList* %call11, %struct._GimpParasiteList** %newlist, align 8
  %13 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %list.addr, align 8
  %table = getelementptr inbounds %struct._GimpParasiteList, %struct._GimpParasiteList* %13, i32 0, i32 1
  %14 = load %struct._GHashTable*, %struct._GHashTable** %table, align 8
  %tobool12 = icmp ne %struct._GHashTable* %14, null
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %do.end
  %15 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %list.addr, align 8
  %table14 = getelementptr inbounds %struct._GimpParasiteList, %struct._GimpParasiteList* %15, i32 0, i32 1
  %16 = load %struct._GHashTable*, %struct._GHashTable** %table14, align 8
  %17 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %newlist, align 8
  %18 = bitcast %struct._GimpParasiteList* %17 to i8*
  call void @g_hash_table_foreach(%struct._GHashTable* %16, void (i8*, i8*, i8*)* bitcast (void (i8*, %struct._GimpParasite*, %struct._GimpParasiteList*)* @parasite_copy to void (i8*, i8*, i8*)*), i8* %18)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %do.end
  %19 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %newlist, align 8
  store %struct._GimpParasiteList* %19, %struct._GimpParasiteList** %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.else.9
  %20 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %retval
  ret %struct._GimpParasiteList* %20
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare void @g_hash_table_foreach(%struct._GHashTable*, void (i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @parasite_copy(i8* %key, %struct._GimpParasite* %parasite, %struct._GimpParasiteList* %list) #3 {
entry:
  %key.addr = alloca i8*, align 8
  %parasite.addr = alloca %struct._GimpParasite*, align 8
  %list.addr = alloca %struct._GimpParasiteList*, align 8
  store i8* %key, i8** %key.addr, align 8
  store %struct._GimpParasite* %parasite, %struct._GimpParasite** %parasite.addr, align 8
  store %struct._GimpParasiteList* %list, %struct._GimpParasiteList** %list.addr, align 8
  %0 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %list.addr, align 8
  %1 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  call void @gimp_parasite_list_add(%struct._GimpParasiteList* %0, %struct._GimpParasite* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_parasite_list_add(%struct._GimpParasiteList* %list, %struct._GimpParasite* %parasite) #3 {
entry:
  %list.addr = alloca %struct._GimpParasiteList*, align 8
  %parasite.addr = alloca %struct._GimpParasite*, align 8
  %copy = alloca %struct._GimpParasite*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpParasiteList* %list, %struct._GimpParasiteList** %list.addr, align 8
  store %struct._GimpParasite* %parasite, %struct._GimpParasite** %parasite.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %list.addr, align 8
  %1 = bitcast %struct._GimpParasiteList* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_parasite_list_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_parasite_list_add, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %cmp12 = icmp ne %struct._GimpParasite* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_parasite_list_add, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %name = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %14, i32 0, i32 0
  %15 = load i8*, i8** %name, align 8
  %cmp18 = icmp ne i8* %15, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_parasite_list_add, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %16 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %list.addr, align 8
  %table = getelementptr inbounds %struct._GimpParasiteList, %struct._GimpParasiteList* %16, i32 0, i32 1
  %17 = load %struct._GHashTable*, %struct._GHashTable** %table, align 8
  %cmp23 = icmp eq %struct._GHashTable* %17, null
  br i1 %cmp23, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %do.end.22
  %call25 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal)
  %18 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %list.addr, align 8
  %table26 = getelementptr inbounds %struct._GimpParasiteList, %struct._GimpParasiteList* %18, i32 0, i32 1
  store %struct._GHashTable* %call25, %struct._GHashTable** %table26, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.24, %do.end.22
  %19 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %list.addr, align 8
  %20 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %name28 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %20, i32 0, i32 0
  %21 = load i8*, i8** %name28, align 8
  call void @gimp_parasite_list_remove(%struct._GimpParasiteList* %19, i8* %21)
  %22 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %call29 = call %struct._GimpParasite* @gimp_parasite_copy(%struct._GimpParasite* %22)
  store %struct._GimpParasite* %call29, %struct._GimpParasite** %copy, align 8
  %23 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %list.addr, align 8
  %table30 = getelementptr inbounds %struct._GimpParasiteList, %struct._GimpParasiteList* %23, i32 0, i32 1
  %24 = load %struct._GHashTable*, %struct._GHashTable** %table30, align 8
  %25 = load %struct._GimpParasite*, %struct._GimpParasite** %copy, align 8
  %name31 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %25, i32 0, i32 0
  %26 = load i8*, i8** %name31, align 8
  %27 = load %struct._GimpParasite*, %struct._GimpParasite** %copy, align 8
  %28 = bitcast %struct._GimpParasite* %27 to i8*
  %call32 = call i32 @g_hash_table_insert(%struct._GHashTable* %24, i8* %26, i8* %28)
  %29 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %list.addr, align 8
  %30 = bitcast %struct._GimpParasiteList* %29 to i8*
  %31 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @parasite_list_signals, i32 0, i64 0), align 4
  %32 = load %struct._GimpParasite*, %struct._GimpParasite** %copy, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %30, i32 %31, i32 0, %struct._GimpParasite* %32)
  br label %return

return:                                           ; preds = %if.end.27, %if.else.20, %if.else.14, %if.else.9
  ret void
}

declare %struct._GHashTable* @g_hash_table_new(i32 (i8*)*, i32 (i8*, i8*)*) #1

declare i32 @g_str_hash(i8*) #1

declare i32 @g_str_equal(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_parasite_list_remove(%struct._GimpParasiteList* %list, i8* %name) #3 {
entry:
  %list.addr = alloca %struct._GimpParasiteList*, align 8
  %name.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %parasite = alloca %struct._GimpParasite*, align 8
  store %struct._GimpParasiteList* %list, %struct._GimpParasiteList** %list.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %list.addr, align 8
  %1 = bitcast %struct._GimpParasiteList* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_parasite_list_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_parasite_list_remove, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.20

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %list.addr, align 8
  %table = getelementptr inbounds %struct._GimpParasiteList, %struct._GimpParasiteList* %13, i32 0, i32 1
  %14 = load %struct._GHashTable*, %struct._GHashTable** %table, align 8
  %tobool11 = icmp ne %struct._GHashTable* %14, null
  br i1 %tobool11, label %if.then.12, label %if.end.20

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %list.addr, align 8
  %16 = load i8*, i8** %name.addr, align 8
  %call14 = call %struct._GimpParasite* @gimp_parasite_list_find(%struct._GimpParasiteList* %15, i8* %16)
  store %struct._GimpParasite* %call14, %struct._GimpParasite** %parasite, align 8
  %17 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %tobool15 = icmp ne %struct._GimpParasite* %17, null
  br i1 %tobool15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.then.12
  %18 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %list.addr, align 8
  %table17 = getelementptr inbounds %struct._GimpParasiteList, %struct._GimpParasiteList* %18, i32 0, i32 1
  %19 = load %struct._GHashTable*, %struct._GHashTable** %table17, align 8
  %20 = load i8*, i8** %name.addr, align 8
  %call18 = call i32 @g_hash_table_remove(%struct._GHashTable* %19, i8* %20)
  %21 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %list.addr, align 8
  %22 = bitcast %struct._GimpParasiteList* %21 to i8*
  %23 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @parasite_list_signals, i32 0, i64 1), align 4
  %24 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %22, i32 %23, i32 0, %struct._GimpParasite* %24)
  %25 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %25)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %if.then.12
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.9, %if.end.19, %do.end
  ret void
}

declare %struct._GimpParasite* @gimp_parasite_copy(%struct._GimpParasite*) #1

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #1

declare void @g_signal_emit(i8*, i32, i32, ...) #1

; Function Attrs: nounwind uwtable
define %struct._GimpParasite* @gimp_parasite_list_find(%struct._GimpParasiteList* %list, i8* %name) #3 {
entry:
  %retval = alloca %struct._GimpParasite*, align 8
  %list.addr = alloca %struct._GimpParasiteList*, align 8
  %name.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpParasiteList* %list, %struct._GimpParasiteList** %list.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %list.addr, align 8
  %1 = bitcast %struct._GimpParasiteList* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_parasite_list_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_parasite_list_find, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpParasite* null, %struct._GimpParasite** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %list.addr, align 8
  %table = getelementptr inbounds %struct._GimpParasiteList, %struct._GimpParasiteList* %13, i32 0, i32 1
  %14 = load %struct._GHashTable*, %struct._GHashTable** %table, align 8
  %tobool11 = icmp ne %struct._GHashTable* %14, null
  br i1 %tobool11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %list.addr, align 8
  %table13 = getelementptr inbounds %struct._GimpParasiteList, %struct._GimpParasiteList* %15, i32 0, i32 1
  %16 = load %struct._GHashTable*, %struct._GHashTable** %table13, align 8
  %17 = load i8*, i8** %name.addr, align 8
  %call14 = call i8* @g_hash_table_lookup(%struct._GHashTable* %16, i8* %17)
  %18 = bitcast i8* %call14 to %struct._GimpParasite*
  store %struct._GimpParasite* %18, %struct._GimpParasite** %retval
  br label %return

if.end.15:                                        ; preds = %do.end
  store %struct._GimpParasite* null, %struct._GimpParasite** %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.12, %if.else.9
  %19 = load %struct._GimpParasite*, %struct._GimpParasite** %retval
  ret %struct._GimpParasite* %19
}

declare i32 @g_hash_table_remove(%struct._GHashTable*, i8*) #1

declare void @gimp_parasite_free(%struct._GimpParasite*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_parasite_list_length(%struct._GimpParasiteList* %list) #3 {
entry:
  %retval = alloca i32, align 4
  %list.addr = alloca %struct._GimpParasiteList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpParasiteList* %list, %struct._GimpParasiteList** %list.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %list.addr, align 8
  %1 = bitcast %struct._GimpParasiteList* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_parasite_list_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_parasite_list_length, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %list.addr, align 8
  %table = getelementptr inbounds %struct._GimpParasiteList, %struct._GimpParasiteList* %13, i32 0, i32 1
  %14 = load %struct._GHashTable*, %struct._GHashTable** %table, align 8
  %tobool11 = icmp ne %struct._GHashTable* %14, null
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %do.end
  %15 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %list.addr, align 8
  %table14 = getelementptr inbounds %struct._GimpParasiteList, %struct._GimpParasiteList* %15, i32 0, i32 1
  %16 = load %struct._GHashTable*, %struct._GHashTable** %table14, align 8
  %call15 = call i32 @g_hash_table_size(%struct._GHashTable* %16)
  store i32 %call15, i32* %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.12, %if.else.9
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare i32 @g_hash_table_size(%struct._GHashTable*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_parasite_list_persistent_length(%struct._GimpParasiteList* %list) #3 {
entry:
  %retval = alloca i32, align 4
  %list.addr = alloca %struct._GimpParasiteList*, align 8
  %len = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpParasiteList* %list, %struct._GimpParasiteList** %list.addr, align 8
  store i32 0, i32* %len, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %list.addr, align 8
  %1 = bitcast %struct._GimpParasiteList* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_parasite_list_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_parasite_list_persistent_length, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %list.addr, align 8
  %table = getelementptr inbounds %struct._GimpParasiteList, %struct._GimpParasiteList* %13, i32 0, i32 1
  %14 = load %struct._GHashTable*, %struct._GHashTable** %table, align 8
  %tobool11 = icmp ne %struct._GHashTable* %14, null
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %do.end
  %15 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %list.addr, align 8
  %16 = bitcast i32* %len to i8*
  call void @gimp_parasite_list_foreach(%struct._GimpParasiteList* %15, void (i8*, i8*, i8*)* bitcast (void (i8*, %struct._GimpParasite*, i32*)* @parasite_count_if_persistent to void (i8*, i8*, i8*)*), i8* %16)
  %17 = load i32, i32* %len, align 4
  store i32 %17, i32* %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.12, %if.else.9
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define void @gimp_parasite_list_foreach(%struct._GimpParasiteList* %list, void (i8*, i8*, i8*)* %function, i8* %user_data) #3 {
entry:
  %list.addr = alloca %struct._GimpParasiteList*, align 8
  %function.addr = alloca void (i8*, i8*, i8*)*, align 8
  %user_data.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpParasiteList* %list, %struct._GimpParasiteList** %list.addr, align 8
  store void (i8*, i8*, i8*)* %function, void (i8*, i8*, i8*)** %function.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %list.addr, align 8
  %1 = bitcast %struct._GimpParasiteList* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_parasite_list_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_parasite_list_foreach, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %list.addr, align 8
  %table = getelementptr inbounds %struct._GimpParasiteList, %struct._GimpParasiteList* %13, i32 0, i32 1
  %14 = load %struct._GHashTable*, %struct._GHashTable** %table, align 8
  %tobool11 = icmp ne %struct._GHashTable* %14, null
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %do.end
  br label %return

if.end.13:                                        ; preds = %do.end
  %15 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %list.addr, align 8
  %table14 = getelementptr inbounds %struct._GimpParasiteList, %struct._GimpParasiteList* %15, i32 0, i32 1
  %16 = load %struct._GHashTable*, %struct._GHashTable** %table14, align 8
  %17 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %function.addr, align 8
  %18 = load i8*, i8** %user_data.addr, align 8
  call void @g_hash_table_foreach(%struct._GHashTable* %16, void (i8*, i8*, i8*)* %17, i8* %18)
  br label %return

return:                                           ; preds = %if.end.13, %if.then.12, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @parasite_count_if_persistent(i8* %key, %struct._GimpParasite* %parasite, i32* %count) #3 {
entry:
  %key.addr = alloca i8*, align 8
  %parasite.addr = alloca %struct._GimpParasite*, align 8
  %count.addr = alloca i32*, align 8
  store i8* %key, i8** %key.addr, align 8
  store %struct._GimpParasite* %parasite, %struct._GimpParasite** %parasite.addr, align 8
  store i32* %count, i32** %count.addr, align 8
  %0 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %call = call i32 @gimp_parasite_is_persistent(%struct._GimpParasite* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %count.addr, align 8
  %2 = load i32, i32* %1, align 4
  %add = add nsw i32 %2, 1
  %3 = load i32*, i32** %count.addr, align 8
  store i32 %add, i32* %3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_parasite_list_class_init(%struct._GimpParasiteListClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpParasiteListClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %gimp_object_class = alloca %struct._GimpObjectClass*, align 8
  store %struct._GimpParasiteListClass* %klass, %struct._GimpParasiteListClass** %klass.addr, align 8
  %0 = load %struct._GimpParasiteListClass*, %struct._GimpParasiteListClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpParasiteListClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpParasiteListClass*, %struct._GimpParasiteListClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpParasiteListClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_object_get_type() #5
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpObjectClass*
  store %struct._GimpObjectClass* %5, %struct._GimpObjectClass** %gimp_object_class, align 8
  %6 = load %struct._GimpParasiteListClass*, %struct._GimpParasiteListClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpParasiteListClass* %6 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %call3 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i64 %8, i32 1, i32 160, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__POINTER, i64 4, i32 1, i64 68)
  store i32 %call3, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @parasite_list_signals, i32 0, i64 0), align 4
  %9 = load %struct._GimpParasiteListClass*, %struct._GimpParasiteListClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpParasiteListClass* %9 to %struct._GTypeClass*
  %g_type4 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type4, align 8
  %call5 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i64 %11, i32 1, i32 168, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__POINTER, i64 4, i32 1, i64 68)
  store i32 %call5, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @parasite_list_signals, i32 0, i64 1), align 4
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_parasite_list_finalize, void (%struct._GObject*)** %finalize, align 8
  %13 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %gimp_object_class, align 8
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %13, i32 0, i32 3
  store i64 (%struct._GimpObject*, i64*)* @gimp_parasite_list_get_memsize, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %14 = load %struct._GimpParasiteListClass*, %struct._GimpParasiteListClass** %klass.addr, align 8
  %add = getelementptr inbounds %struct._GimpParasiteListClass, %struct._GimpParasiteListClass* %14, i32 0, i32 1
  store void (%struct._GimpParasiteList*, %struct._GimpParasite*)* null, void (%struct._GimpParasiteList*, %struct._GimpParasite*)** %add, align 8
  %15 = load %struct._GimpParasiteListClass*, %struct._GimpParasiteListClass** %klass.addr, align 8
  %remove = getelementptr inbounds %struct._GimpParasiteListClass, %struct._GimpParasiteListClass* %15, i32 0, i32 2
  store void (%struct._GimpParasiteList*, %struct._GimpParasite*)* null, void (%struct._GimpParasiteList*, %struct._GimpParasite*)** %remove, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__POINTER(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_parasite_list_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %list = alloca %struct._GimpParasiteList*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_parasite_list_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpParasiteList*
  store %struct._GimpParasiteList* %2, %struct._GimpParasiteList** %list, align 8
  %3 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %list, align 8
  %table = getelementptr inbounds %struct._GimpParasiteList, %struct._GimpParasiteList* %3, i32 0, i32 1
  %4 = load %struct._GHashTable*, %struct._GHashTable** %table, align 8
  %tobool = icmp ne %struct._GHashTable* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %list, align 8
  %table2 = getelementptr inbounds %struct._GimpParasiteList, %struct._GimpParasiteList* %5, i32 0, i32 1
  %6 = load %struct._GHashTable*, %struct._GHashTable** %table2, align 8
  %call3 = call i32 @g_hash_table_foreach_remove(%struct._GHashTable* %6, i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, %struct._GimpParasite*, i8*)* @parasite_free to i32 (i8*, i8*, i8*)*), i8* null)
  %7 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %list, align 8
  %table4 = getelementptr inbounds %struct._GimpParasiteList, %struct._GimpParasiteList* %7, i32 0, i32 1
  %8 = load %struct._GHashTable*, %struct._GHashTable** %table4, align 8
  call void @g_hash_table_destroy(%struct._GHashTable* %8)
  %9 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %list, align 8
  %table5 = getelementptr inbounds %struct._GimpParasiteList, %struct._GimpParasiteList* %9, i32 0, i32 1
  store %struct._GHashTable* null, %struct._GHashTable** %table5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i8*, i8** @gimp_parasite_list_parent_class, align 8
  %11 = bitcast i8* %10 to %struct._GTypeClass*
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %11, i64 80)
  %12 = bitcast %struct._GTypeClass* %call6 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 6
  %13 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %14 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %13(%struct._GObject* %14)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @gimp_parasite_list_get_memsize(%struct._GimpObject* %object, i64* %gui_size) #3 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %gui_size.addr = alloca i64*, align 8
  %list = alloca %struct._GimpParasiteList*, align 8
  %memsize = alloca i64, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i64* %gui_size, i64** %gui_size.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_parasite_list_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpParasiteList*
  store %struct._GimpParasiteList* %2, %struct._GimpParasiteList** %list, align 8
  store i64 0, i64* %memsize, align 8
  %3 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %list, align 8
  %table = getelementptr inbounds %struct._GimpParasiteList, %struct._GimpParasiteList* %3, i32 0, i32 1
  %4 = load %struct._GHashTable*, %struct._GHashTable** %table, align 8
  %5 = load i64*, i64** %gui_size.addr, align 8
  %call2 = call i64 @gimp_g_hash_table_get_memsize_foreach(%struct._GHashTable* %4, i64 (i8*, i64*)* bitcast (i64 (%struct._GimpParasite*, i64*)* @gimp_parasite_get_memsize to i64 (i8*, i64*)*), i64* %5)
  %6 = load i64, i64* %memsize, align 8
  %add = add nsw i64 %6, %call2
  store i64 %add, i64* %memsize, align 8
  %7 = load i64, i64* %memsize, align 8
  %8 = load i8*, i8** @gimp_parasite_list_parent_class, align 8
  %9 = bitcast i8* %8 to %struct._GTypeClass*
  %call3 = call i64 @gimp_object_get_type() #5
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 %call3)
  %10 = bitcast %struct._GTypeClass* %call4 to %struct._GimpObjectClass*
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %10, i32 0, i32 3
  %11 = load i64 (%struct._GimpObject*, i64*)*, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %12 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %13 = load i64*, i64** %gui_size.addr, align 8
  %call5 = call i64 %11(%struct._GimpObject* %12, i64* %13)
  %add6 = add nsw i64 %7, %call5
  ret i64 %add6
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i32 @g_hash_table_foreach_remove(%struct._GHashTable*, i32 (i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @parasite_free(i8* %key, %struct._GimpParasite* %parasite, i8* %unused) #3 {
entry:
  %key.addr = alloca i8*, align 8
  %parasite.addr = alloca %struct._GimpParasite*, align 8
  %unused.addr = alloca i8*, align 8
  store i8* %key, i8** %key.addr, align 8
  store %struct._GimpParasite* %parasite, %struct._GimpParasite** %parasite.addr, align 8
  store i8* %unused, i8** %unused.addr, align 8
  %0 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %0)
  ret i32 1
}

declare void @g_hash_table_destroy(%struct._GHashTable*) #1

declare i64 @gimp_g_hash_table_get_memsize_foreach(%struct._GHashTable*, i64 (i8*, i64*)*, i64*) #1

declare i64 @gimp_parasite_get_memsize(%struct._GimpParasite*, i64*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_parasite_list_serialize(%struct._GimpConfig* %list, %struct._GimpConfigWriter* %writer, i8* %data) #3 {
entry:
  %list.addr = alloca %struct._GimpConfig*, align 8
  %writer.addr = alloca %struct._GimpConfigWriter*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GimpConfig* %list, %struct._GimpConfig** %list.addr, align 8
  store %struct._GimpConfigWriter* %writer, %struct._GimpConfigWriter** %writer.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %list.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_parasite_list_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpParasiteList*
  %table = getelementptr inbounds %struct._GimpParasiteList, %struct._GimpParasiteList* %2, i32 0, i32 1
  %3 = load %struct._GHashTable*, %struct._GHashTable** %table, align 8
  %tobool = icmp ne %struct._GHashTable* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpConfig*, %struct._GimpConfig** %list.addr, align 8
  %5 = bitcast %struct._GimpConfig* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_parasite_list_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpParasiteList*
  %table4 = getelementptr inbounds %struct._GimpParasiteList, %struct._GimpParasiteList* %6, i32 0, i32 1
  %7 = load %struct._GHashTable*, %struct._GHashTable** %table4, align 8
  %8 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %9 = bitcast %struct._GimpConfigWriter* %8 to i8*
  call void @g_hash_table_foreach(%struct._GHashTable* %7, void (i8*, i8*, i8*)* bitcast (void (i8*, %struct._GimpParasite*, %struct._GimpConfigWriter*)* @parasite_serialize to void (i8*, i8*, i8*)*), i8* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_parasite_list_deserialize(%struct._GimpConfig* %list, %struct._GScanner* %scanner, i32 %nest_level, i8* %data) #3 {
entry:
  %list.addr = alloca %struct._GimpConfig*, align 8
  %scanner.addr = alloca %struct._GScanner*, align 8
  %nest_level.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %token = alloca i32, align 4
  %parasite_name = alloca i8*, align 8
  %parasite_flags = alloca i32, align 4
  %parasite_data = alloca i8*, align 8
  %parasite_data_size = alloca i32, align 4
  %parasite = alloca %struct._GimpParasite*, align 8
  %str = alloca i8*, align 8
  store %struct._GimpConfig* %list, %struct._GimpConfig** %list.addr, align 8
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  store i32 %nest_level, i32* %nest_level.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @parasite_symbol, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @parasite_symbol, i32 0, i32 0))
  store i32 40, i32* %token, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %1 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call = call i32 @g_scanner_peek_next_token(%struct._GScanner* %1)
  %2 = load i32, i32* %token, align 4
  %cmp = icmp eq i32 %call, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call1 = call i32 @g_scanner_get_next_token(%struct._GScanner* %3)
  store i32 %call1, i32* %token, align 4
  %4 = load i32, i32* %token, align 4
  switch i32 %4, label %sw.default [
    i32 40, label %sw.bb
    i32 265, label %sw.bb.2
    i32 41, label %sw.bb.48
  ]

sw.bb:                                            ; preds = %while.body
  store i32 265, i32* %token, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %while.body
  %5 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value = getelementptr inbounds %struct._GScanner, %struct._GScanner* %5, i32 0, i32 7
  %v_symbol = bitcast %union._GTokenValue* %value to i8**
  %6 = load i8*, i8** %v_symbol, align 8
  %cmp3 = icmp eq i8* %6, getelementptr inbounds ([9 x i8], [9 x i8]* @parasite_symbol, i32 0, i32 0)
  br i1 %cmp3, label %if.then, label %if.end.47

if.then:                                          ; preds = %sw.bb.2
  store i8* null, i8** %parasite_name, align 8
  store i32 0, i32* %parasite_flags, align 4
  store i8* null, i8** %parasite_data, align 8
  store i32 0, i32* %parasite_data_size, align 4
  store i32 264, i32* %token, align 4
  %7 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call4 = call i32 @g_scanner_peek_next_token(%struct._GScanner* %7)
  %8 = load i32, i32* %token, align 4
  %cmp5 = icmp ne i32 %call4, %8
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  br label %sw.epilog

if.end:                                           ; preds = %if.then
  %9 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call7 = call i32 @gimp_scanner_parse_string(%struct._GScanner* %9, i8** %parasite_name)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end
  br label %sw.epilog

if.end.9:                                         ; preds = %if.end
  store i32 261, i32* %token, align 4
  %10 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call10 = call i32 @g_scanner_peek_next_token(%struct._GScanner* %10)
  %11 = load i32, i32* %token, align 4
  %cmp11 = icmp ne i32 %call10, %11
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  br label %cleanup

if.end.13:                                        ; preds = %if.end.9
  %12 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call14 = call i32 @gimp_scanner_parse_int(%struct._GScanner* %12, i32* %parasite_flags)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.end.13
  br label %cleanup

if.end.17:                                        ; preds = %if.end.13
  store i32 261, i32* %token, align 4
  %13 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call18 = call i32 @g_scanner_peek_next_token(%struct._GScanner* %13)
  %14 = load i32, i32* %token, align 4
  %cmp19 = icmp ne i32 %call18, %14
  br i1 %cmp19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.end.17
  %15 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call21 = call i32 @g_scanner_peek_next_token(%struct._GScanner* %15)
  %cmp22 = icmp ne i32 %call21, 264
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.then.20
  br label %cleanup

if.end.24:                                        ; preds = %if.then.20
  %16 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call25 = call i32 @gimp_scanner_parse_string(%struct._GScanner* %16, i8** %str)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %if.end.24
  br label %cleanup

if.end.28:                                        ; preds = %if.end.24
  %17 = load i8*, i8** %str, align 8
  %call29 = call i64 @strlen(i8* %17) #6
  %conv = trunc i64 %call29 to i32
  store i32 %conv, i32* %parasite_data_size, align 4
  %18 = load i8*, i8** %str, align 8
  store i8* %18, i8** %parasite_data, align 8
  br label %if.end.43

if.else:                                          ; preds = %if.end.17
  %19 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call30 = call i32 @gimp_scanner_parse_int(%struct._GScanner* %19, i32* %parasite_data_size)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %if.else
  br label %cleanup

if.end.33:                                        ; preds = %if.else
  store i32 264, i32* %token, align 4
  %20 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call34 = call i32 @g_scanner_peek_next_token(%struct._GScanner* %20)
  %21 = load i32, i32* %token, align 4
  %cmp35 = icmp ne i32 %call34, %21
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.33
  br label %cleanup

if.end.38:                                        ; preds = %if.end.33
  %22 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %23 = load i32, i32* %parasite_data_size, align 4
  %call39 = call i32 @gimp_scanner_parse_data(%struct._GScanner* %22, i32 %23, i8** %parasite_data)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.end.42, label %if.then.41

if.then.41:                                       ; preds = %if.end.38
  br label %cleanup

if.end.42:                                        ; preds = %if.end.38
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.end.28
  %24 = load i8*, i8** %parasite_name, align 8
  %25 = load i32, i32* %parasite_flags, align 4
  %26 = load i32, i32* %parasite_data_size, align 4
  %27 = load i8*, i8** %parasite_data, align 8
  %call44 = call %struct._GimpParasite* @gimp_parasite_new(i8* %24, i32 %25, i32 %26, i8* %27)
  store %struct._GimpParasite* %call44, %struct._GimpParasite** %parasite, align 8
  %28 = load %struct._GimpConfig*, %struct._GimpConfig** %list.addr, align 8
  %29 = bitcast %struct._GimpConfig* %28 to %struct._GTypeInstance*
  %call45 = call i64 @gimp_parasite_list_get_type() #5
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call45)
  %30 = bitcast %struct._GTypeInstance* %call46 to %struct._GimpParasiteList*
  %31 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_parasite_list_add(%struct._GimpParasiteList* %30, %struct._GimpParasite* %31)
  %32 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %32)
  store i32 41, i32* %token, align 4
  %33 = load i8*, i8** %parasite_data, align 8
  call void @g_free(i8* %33)
  br label %cleanup

cleanup:                                          ; preds = %if.end.43, %if.then.41, %if.then.37, %if.then.32, %if.then.27, %if.then.23, %if.then.16, %if.then.12
  %34 = load i8*, i8** %parasite_name, align 8
  call void @g_free(i8* %34)
  br label %if.end.47

if.end.47:                                        ; preds = %cleanup, %sw.bb.2
  br label %sw.epilog

sw.bb.48:                                         ; preds = %while.body
  store i32 40, i32* %token, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.48, %if.end.47, %if.then.8, %if.then.6, %sw.bb
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %35 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %36 = load i32, i32* %token, align 4
  %37 = load i32, i32* %nest_level.addr, align 4
  %call49 = call i32 @gimp_config_deserialize_return(%struct._GScanner* %35, i32 %36, i32 %37)
  ret i32 %call49
}

; Function Attrs: nounwind uwtable
define internal void @parasite_serialize(i8* %key, %struct._GimpParasite* %parasite, %struct._GimpConfigWriter* %writer) #3 {
entry:
  %key.addr = alloca i8*, align 8
  %parasite.addr = alloca %struct._GimpParasite*, align 8
  %writer.addr = alloca %struct._GimpConfigWriter*, align 8
  store i8* %key, i8** %key.addr, align 8
  store %struct._GimpParasite* %parasite, %struct._GimpParasite** %parasite.addr, align 8
  store %struct._GimpConfigWriter* %writer, %struct._GimpConfigWriter** %writer.addr, align 8
  %0 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %call = call i32 @gimp_parasite_is_persistent(%struct._GimpParasite* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @parasite_symbol, i32 0, i32 0))
  %2 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %3 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %call1 = call i8* @gimp_parasite_name(%struct._GimpParasite* %3)
  %4 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %call2 = call i64 @gimp_parasite_flags(%struct._GimpParasite* %4)
  %5 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %call3 = call i64 @gimp_parasite_data_size(%struct._GimpParasite* %5)
  call void (%struct._GimpConfigWriter*, i8*, ...) @gimp_config_writer_printf(%struct._GimpConfigWriter* %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* %call1, i64 %call2, i64 %call3)
  %6 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %7 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %call4 = call i64 @gimp_parasite_data_size(%struct._GimpParasite* %7)
  %conv = trunc i64 %call4 to i32
  %8 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %call5 = call i8* @gimp_parasite_data(%struct._GimpParasite* %8)
  call void @gimp_config_writer_data(%struct._GimpConfigWriter* %6, i32 %conv, i8* %call5)
  %9 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %9)
  %10 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_linefeed(%struct._GimpConfigWriter* %10)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare i32 @gimp_parasite_is_persistent(%struct._GimpParasite*) #1

declare void @gimp_config_writer_open(%struct._GimpConfigWriter*, i8*) #1

declare void @gimp_config_writer_printf(%struct._GimpConfigWriter*, i8*, ...) #1

declare i8* @gimp_parasite_name(%struct._GimpParasite*) #1

declare i64 @gimp_parasite_flags(%struct._GimpParasite*) #1

declare i64 @gimp_parasite_data_size(%struct._GimpParasite*) #1

declare void @gimp_config_writer_data(%struct._GimpConfigWriter*, i32, i8*) #1

declare i8* @gimp_parasite_data(%struct._GimpParasite*) #1

declare void @gimp_config_writer_close(%struct._GimpConfigWriter*) #1

declare void @gimp_config_writer_linefeed(%struct._GimpConfigWriter*) #1

declare void @g_scanner_scope_add_symbol(%struct._GScanner*, i32, i8*, i8*) #1

declare i32 @g_scanner_peek_next_token(%struct._GScanner*) #1

declare i32 @g_scanner_get_next_token(%struct._GScanner*) #1

declare i32 @gimp_scanner_parse_string(%struct._GScanner*, i8**) #1

declare i32 @gimp_scanner_parse_int(%struct._GScanner*, i32*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i32 @gimp_scanner_parse_data(%struct._GScanner*, i32, i8**) #1

declare %struct._GimpParasite* @gimp_parasite_new(i8*, i32, i32, i8*) #1

declare void @g_free(i8*) #1

declare i32 @gimp_config_deserialize_return(%struct._GScanner*, i32, i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
