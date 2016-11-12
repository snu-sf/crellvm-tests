; ModuleID = './app/core/gimpidtable.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpIdTableClass = type { %struct._GimpObjectClass }
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
%struct._GimpIdTable = type { %struct._GimpObject, %struct._GimpIdTablePriv* }
%struct._GimpIdTablePriv = type { %struct._GHashTable*, i32 }
%struct._GHashTable = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_id_table_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"GimpIdTable\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_id_table_insert = private unnamed_addr constant [21 x i8] c"gimp_id_table_insert\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"GIMP_IS_ID_TABLE (id_table)\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"%s: out of ids!\00", align 1
@__func__.gimp_id_table_insert_with_id = private unnamed_addr constant [29 x i8] c"gimp_id_table_insert_with_id\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"id > 0\00", align 1
@__func__.gimp_id_table_replace = private unnamed_addr constant [22 x i8] c"gimp_id_table_replace\00", align 1
@__func__.gimp_id_table_lookup = private unnamed_addr constant [21 x i8] c"gimp_id_table_lookup\00", align 1
@__func__.gimp_id_table_remove = private unnamed_addr constant [21 x i8] c"gimp_id_table_remove\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"id_table != NULL\00", align 1
@gimp_id_table_parent_class = internal global i8* null, align 8
@GimpIdTable_private_offset = internal global i32 0, align 4

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_id_table_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_id_table_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_id_table_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_object_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 160, void (i8*, i8*)* bitcast (void (i8*)* @gimp_id_table_class_intern_init to void (i8*, i8*)*), i32 40, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpIdTable*)* @gimp_id_table_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_id_table_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_id_table_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_id_table_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_id_table_parent_class, align 8
  %1 = load i32, i32* @GimpIdTable_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpIdTable_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpIdTableClass*
  call void @gimp_id_table_class_init(%struct._GimpIdTableClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_id_table_init(%struct._GimpIdTable* %id_table) #3 {
entry:
  %id_table.addr = alloca %struct._GimpIdTable*, align 8
  store %struct._GimpIdTable* %id_table, %struct._GimpIdTable** %id_table.addr, align 8
  %0 = load %struct._GimpIdTable*, %struct._GimpIdTable** %id_table.addr, align 8
  %1 = bitcast %struct._GimpIdTable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_id_table_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpIdTablePriv*
  %3 = load %struct._GimpIdTable*, %struct._GimpIdTable** %id_table.addr, align 8
  %priv = getelementptr inbounds %struct._GimpIdTable, %struct._GimpIdTable* %3, i32 0, i32 1
  store %struct._GimpIdTablePriv* %2, %struct._GimpIdTablePriv** %priv, align 8
  %call2 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_direct_hash, i32 (i8*, i8*)* null)
  %4 = load %struct._GimpIdTable*, %struct._GimpIdTable** %id_table.addr, align 8
  %priv3 = getelementptr inbounds %struct._GimpIdTable, %struct._GimpIdTable* %4, i32 0, i32 1
  %5 = load %struct._GimpIdTablePriv*, %struct._GimpIdTablePriv** %priv3, align 8
  %id_table4 = getelementptr inbounds %struct._GimpIdTablePriv, %struct._GimpIdTablePriv* %5, i32 0, i32 0
  store %struct._GHashTable* %call2, %struct._GHashTable** %id_table4, align 8
  %6 = load %struct._GimpIdTable*, %struct._GimpIdTable** %id_table.addr, align 8
  %priv5 = getelementptr inbounds %struct._GimpIdTable, %struct._GimpIdTable* %6, i32 0, i32 1
  %7 = load %struct._GimpIdTablePriv*, %struct._GimpIdTablePriv** %priv5, align 8
  %next_id = getelementptr inbounds %struct._GimpIdTablePriv, %struct._GimpIdTablePriv* %7, i32 0, i32 1
  store i32 1, i32* %next_id, align 4
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpIdTable* @gimp_id_table_new() #3 {
entry:
  %call = call i64 @gimp_id_table_get_type() #6
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %0 = bitcast i8* %call1 to %struct._GimpIdTable*
  ret %struct._GimpIdTable* %0
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_id_table_insert(%struct._GimpIdTable* %id_table, i8* %data) #3 {
entry:
  %retval = alloca i32, align 4
  %id_table.addr = alloca %struct._GimpIdTable*, align 8
  %data.addr = alloca i8*, align 8
  %new_id = alloca i32, align 4
  %start_id = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpIdTable* %id_table, %struct._GimpIdTable** %id_table.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpIdTable*, %struct._GimpIdTable** %id_table.addr, align 8
  %1 = bitcast %struct._GimpIdTable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_id_table_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_id_table_insert, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpIdTable*, %struct._GimpIdTable** %id_table.addr, align 8
  %priv = getelementptr inbounds %struct._GimpIdTable, %struct._GimpIdTable* %13, i32 0, i32 1
  %14 = load %struct._GimpIdTablePriv*, %struct._GimpIdTablePriv** %priv, align 8
  %next_id = getelementptr inbounds %struct._GimpIdTablePriv, %struct._GimpIdTablePriv* %14, i32 0, i32 1
  %15 = load i32, i32* %next_id, align 4
  store i32 %15, i32* %start_id, align 4
  br label %do.body.11

do.body.11:                                       ; preds = %do.cond, %do.end
  %16 = load %struct._GimpIdTable*, %struct._GimpIdTable** %id_table.addr, align 8
  %priv12 = getelementptr inbounds %struct._GimpIdTable, %struct._GimpIdTable* %16, i32 0, i32 1
  %17 = load %struct._GimpIdTablePriv*, %struct._GimpIdTablePriv** %priv12, align 8
  %next_id13 = getelementptr inbounds %struct._GimpIdTablePriv, %struct._GimpIdTablePriv* %17, i32 0, i32 1
  %18 = load i32, i32* %next_id13, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %next_id13, align 4
  store i32 %18, i32* %new_id, align 4
  %19 = load %struct._GimpIdTable*, %struct._GimpIdTable** %id_table.addr, align 8
  %priv14 = getelementptr inbounds %struct._GimpIdTable, %struct._GimpIdTable* %19, i32 0, i32 1
  %20 = load %struct._GimpIdTablePriv*, %struct._GimpIdTablePriv** %priv14, align 8
  %next_id15 = getelementptr inbounds %struct._GimpIdTablePriv, %struct._GimpIdTablePriv* %20, i32 0, i32 1
  %21 = load i32, i32* %next_id15, align 4
  %cmp16 = icmp eq i32 %21, 2147483647
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %do.body.11
  %22 = load %struct._GimpIdTable*, %struct._GimpIdTable** %id_table.addr, align 8
  %priv18 = getelementptr inbounds %struct._GimpIdTable, %struct._GimpIdTable* %22, i32 0, i32 1
  %23 = load %struct._GimpIdTablePriv*, %struct._GimpIdTablePriv** %priv18, align 8
  %next_id19 = getelementptr inbounds %struct._GimpIdTablePriv, %struct._GimpIdTablePriv* %23, i32 0, i32 1
  store i32 1, i32* %next_id19, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %do.body.11
  %24 = load i32, i32* %start_id, align 4
  %25 = load %struct._GimpIdTable*, %struct._GimpIdTable** %id_table.addr, align 8
  %priv21 = getelementptr inbounds %struct._GimpIdTable, %struct._GimpIdTable* %25, i32 0, i32 1
  %26 = load %struct._GimpIdTablePriv*, %struct._GimpIdTablePriv** %priv21, align 8
  %next_id22 = getelementptr inbounds %struct._GimpIdTablePriv, %struct._GimpIdTablePriv* %26, i32 0, i32 1
  %27 = load i32, i32* %next_id22, align 4
  %cmp23 = icmp eq i32 %24, %27
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.20
  call void (i8*, ...) @g_error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_id_table_insert, i32 0, i32 0))
  br label %do.end.28

if.end.25:                                        ; preds = %if.end.20
  br label %do.cond

do.cond:                                          ; preds = %if.end.25
  %28 = load %struct._GimpIdTable*, %struct._GimpIdTable** %id_table.addr, align 8
  %29 = load i32, i32* %new_id, align 4
  %call26 = call i8* @gimp_id_table_lookup(%struct._GimpIdTable* %28, i32 %29)
  %tobool27 = icmp ne i8* %call26, null
  br i1 %tobool27, label %do.body.11, label %do.end.28

do.end.28:                                        ; preds = %do.cond, %if.then.24
  %30 = load %struct._GimpIdTable*, %struct._GimpIdTable** %id_table.addr, align 8
  %31 = load i32, i32* %new_id, align 4
  %32 = load i8*, i8** %data.addr, align 8
  %call29 = call i32 @gimp_id_table_insert_with_id(%struct._GimpIdTable* %30, i32 %31, i8* %32)
  store i32 %call29, i32* %retval
  br label %return

return:                                           ; preds = %do.end.28, %if.else.9
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @g_error(i8* %format, ...) #3 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 4, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  br label %for.cond

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @gimp_id_table_lookup(%struct._GimpIdTable* %id_table, i32 %id) #3 {
entry:
  %retval = alloca i8*, align 8
  %id_table.addr = alloca %struct._GimpIdTable*, align 8
  %id.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpIdTable* %id_table, %struct._GimpIdTable** %id_table.addr, align 8
  store i32 %id, i32* %id.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpIdTable*, %struct._GimpIdTable** %id_table.addr, align 8
  %1 = bitcast %struct._GimpIdTable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_id_table_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_id_table_lookup, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpIdTable*, %struct._GimpIdTable** %id_table.addr, align 8
  %priv = getelementptr inbounds %struct._GimpIdTable, %struct._GimpIdTable* %13, i32 0, i32 1
  %14 = load %struct._GimpIdTablePriv*, %struct._GimpIdTablePriv** %priv, align 8
  %id_table11 = getelementptr inbounds %struct._GimpIdTablePriv, %struct._GimpIdTablePriv* %14, i32 0, i32 0
  %15 = load %struct._GHashTable*, %struct._GHashTable** %id_table11, align 8
  %16 = load i32, i32* %id.addr, align 4
  %conv = sext i32 %16 to i64
  %17 = inttoptr i64 %conv to i8*
  %call12 = call i8* @g_hash_table_lookup(%struct._GHashTable* %15, i8* %17)
  store i8* %call12, i8** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %18 = load i8*, i8** %retval
  ret i8* %18
}

; Function Attrs: nounwind uwtable
define i32 @gimp_id_table_insert_with_id(%struct._GimpIdTable* %id_table, i32 %id, i8* %data) #3 {
entry:
  %retval = alloca i32, align 4
  %id_table.addr = alloca %struct._GimpIdTable*, align 8
  %id.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpIdTable* %id_table, %struct._GimpIdTable** %id_table.addr, align 8
  store i32 %id, i32* %id.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpIdTable*, %struct._GimpIdTable** %id_table.addr, align 8
  %1 = bitcast %struct._GimpIdTable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_id_table_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_id_table_insert_with_id, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %id.addr, align 4
  %cmp12 = icmp sgt i32 %13, 0
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_id_table_insert_with_id, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpIdTable*, %struct._GimpIdTable** %id_table.addr, align 8
  %15 = load i32, i32* %id.addr, align 4
  %call17 = call i8* @gimp_id_table_lookup(%struct._GimpIdTable* %14, i32 %15)
  %tobool18 = icmp ne i8* %call17, null
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %do.end.16
  store i32 -1, i32* %retval
  br label %return

if.end.20:                                        ; preds = %do.end.16
  %16 = load %struct._GimpIdTable*, %struct._GimpIdTable** %id_table.addr, align 8
  %priv = getelementptr inbounds %struct._GimpIdTable, %struct._GimpIdTable* %16, i32 0, i32 1
  %17 = load %struct._GimpIdTablePriv*, %struct._GimpIdTablePriv** %priv, align 8
  %id_table21 = getelementptr inbounds %struct._GimpIdTablePriv, %struct._GimpIdTablePriv* %17, i32 0, i32 0
  %18 = load %struct._GHashTable*, %struct._GHashTable** %id_table21, align 8
  %19 = load i32, i32* %id.addr, align 4
  %conv = sext i32 %19 to i64
  %20 = inttoptr i64 %conv to i8*
  %21 = load i8*, i8** %data.addr, align 8
  %call22 = call i32 @g_hash_table_insert(%struct._GHashTable* %18, i8* %20, i8* %21)
  %22 = load i32, i32* %id.addr, align 4
  store i32 %22, i32* %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.then.19, %if.else.14, %if.else.9
  %23 = load i32, i32* %retval
  ret i32 %23
}

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_id_table_replace(%struct._GimpIdTable* %id_table, i32 %id, i8* %data) #3 {
entry:
  %id_table.addr = alloca %struct._GimpIdTable*, align 8
  %id.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpIdTable* %id_table, %struct._GimpIdTable** %id_table.addr, align 8
  store i32 %id, i32* %id.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpIdTable*, %struct._GimpIdTable** %id_table.addr, align 8
  %1 = bitcast %struct._GimpIdTable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_id_table_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_id_table_replace, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %id.addr, align 4
  %cmp12 = icmp sgt i32 %13, 0
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_id_table_replace, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpIdTable*, %struct._GimpIdTable** %id_table.addr, align 8
  %priv = getelementptr inbounds %struct._GimpIdTable, %struct._GimpIdTable* %14, i32 0, i32 1
  %15 = load %struct._GimpIdTablePriv*, %struct._GimpIdTablePriv** %priv, align 8
  %id_table17 = getelementptr inbounds %struct._GimpIdTablePriv, %struct._GimpIdTablePriv* %15, i32 0, i32 0
  %16 = load %struct._GHashTable*, %struct._GHashTable** %id_table17, align 8
  %17 = load i32, i32* %id.addr, align 4
  %conv = sext i32 %17 to i64
  %18 = inttoptr i64 %conv to i8*
  %19 = load i8*, i8** %data.addr, align 8
  %call18 = call i32 @g_hash_table_replace(%struct._GHashTable* %16, i8* %18, i8* %19)
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  ret void
}

declare i32 @g_hash_table_replace(%struct._GHashTable*, i8*, i8*) #1

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_id_table_remove(%struct._GimpIdTable* %id_table, i32 %id) #3 {
entry:
  %retval = alloca i32, align 4
  %id_table.addr = alloca %struct._GimpIdTable*, align 8
  %id.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpIdTable* %id_table, %struct._GimpIdTable** %id_table.addr, align 8
  store i32 %id, i32* %id.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpIdTable*, %struct._GimpIdTable** %id_table.addr, align 8
  %1 = bitcast %struct._GimpIdTable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_id_table_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_id_table_remove, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpIdTable*, %struct._GimpIdTable** %id_table.addr, align 8
  %cmp12 = icmp ne %struct._GimpIdTable* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_id_table_remove, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpIdTable*, %struct._GimpIdTable** %id_table.addr, align 8
  %priv = getelementptr inbounds %struct._GimpIdTable, %struct._GimpIdTable* %14, i32 0, i32 1
  %15 = load %struct._GimpIdTablePriv*, %struct._GimpIdTablePriv** %priv, align 8
  %id_table17 = getelementptr inbounds %struct._GimpIdTablePriv, %struct._GimpIdTablePriv* %15, i32 0, i32 0
  %16 = load %struct._GHashTable*, %struct._GHashTable** %id_table17, align 8
  %17 = load i32, i32* %id.addr, align 4
  %conv = sext i32 %17 to i64
  %18 = inttoptr i64 %conv to i8*
  %call18 = call i32 @g_hash_table_remove(%struct._GHashTable* %16, i8* %18)
  store i32 %call18, i32* %retval
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  %19 = load i32, i32* %retval
  ret i32 %19
}

declare i32 @g_hash_table_remove(%struct._GHashTable*, i8*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_id_table_class_init(%struct._GimpIdTableClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpIdTableClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %gimp_object_class = alloca %struct._GimpObjectClass*, align 8
  %gimp_id_table_class = alloca %struct._GimpIdTableClass*, align 8
  store %struct._GimpIdTableClass* %klass, %struct._GimpIdTableClass** %klass.addr, align 8
  %0 = load %struct._GimpIdTableClass*, %struct._GimpIdTableClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpIdTableClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpIdTableClass*, %struct._GimpIdTableClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpIdTableClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_object_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpObjectClass*
  store %struct._GimpObjectClass* %5, %struct._GimpObjectClass** %gimp_object_class, align 8
  %6 = load %struct._GimpIdTableClass*, %struct._GimpIdTableClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpIdTableClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_id_table_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpIdTableClass*
  store %struct._GimpIdTableClass* %8, %struct._GimpIdTableClass** %gimp_id_table_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_id_table_finalize, void (%struct._GObject*)** %finalize, align 8
  %10 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %gimp_object_class, align 8
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %10, i32 0, i32 3
  store i64 (%struct._GimpObject*, i64*)* @gimp_id_table_get_memsize, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %11 = load %struct._GimpIdTableClass*, %struct._GimpIdTableClass** %gimp_id_table_class, align 8
  %12 = bitcast %struct._GimpIdTableClass* %11 to i8*
  call void @g_type_class_add_private(i8* %12, i64 16)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_id_table_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %id_table = alloca %struct._GimpIdTable*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_id_table_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpIdTable*
  store %struct._GimpIdTable* %2, %struct._GimpIdTable** %id_table, align 8
  %3 = load %struct._GimpIdTable*, %struct._GimpIdTable** %id_table, align 8
  %priv = getelementptr inbounds %struct._GimpIdTable, %struct._GimpIdTable* %3, i32 0, i32 1
  %4 = load %struct._GimpIdTablePriv*, %struct._GimpIdTablePriv** %priv, align 8
  %id_table2 = getelementptr inbounds %struct._GimpIdTablePriv, %struct._GimpIdTablePriv* %4, i32 0, i32 0
  %5 = load %struct._GHashTable*, %struct._GHashTable** %id_table2, align 8
  %tobool = icmp ne %struct._GHashTable* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpIdTable*, %struct._GimpIdTable** %id_table, align 8
  %priv3 = getelementptr inbounds %struct._GimpIdTable, %struct._GimpIdTable* %6, i32 0, i32 1
  %7 = load %struct._GimpIdTablePriv*, %struct._GimpIdTablePriv** %priv3, align 8
  %id_table4 = getelementptr inbounds %struct._GimpIdTablePriv, %struct._GimpIdTablePriv* %7, i32 0, i32 0
  %8 = load %struct._GHashTable*, %struct._GHashTable** %id_table4, align 8
  call void @g_hash_table_unref(%struct._GHashTable* %8)
  %9 = load %struct._GimpIdTable*, %struct._GimpIdTable** %id_table, align 8
  %priv5 = getelementptr inbounds %struct._GimpIdTable, %struct._GimpIdTable* %9, i32 0, i32 1
  %10 = load %struct._GimpIdTablePriv*, %struct._GimpIdTablePriv** %priv5, align 8
  %id_table6 = getelementptr inbounds %struct._GimpIdTablePriv, %struct._GimpIdTablePriv* %10, i32 0, i32 0
  store %struct._GHashTable* null, %struct._GHashTable** %id_table6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i8*, i8** @gimp_id_table_parent_class, align 8
  %12 = bitcast i8* %11 to %struct._GTypeClass*
  %call7 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %12, i64 80)
  %13 = bitcast %struct._GTypeClass* %call7 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %13, i32 0, i32 6
  %14 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %15 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %14(%struct._GObject* %15)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @gimp_id_table_get_memsize(%struct._GimpObject* %object, i64* %gui_size) #3 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %gui_size.addr = alloca i64*, align 8
  %id_table = alloca %struct._GimpIdTable*, align 8
  %memsize = alloca i64, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i64* %gui_size, i64** %gui_size.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_id_table_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpIdTable*
  store %struct._GimpIdTable* %2, %struct._GimpIdTable** %id_table, align 8
  store i64 0, i64* %memsize, align 8
  %3 = load %struct._GimpIdTable*, %struct._GimpIdTable** %id_table, align 8
  %priv = getelementptr inbounds %struct._GimpIdTable, %struct._GimpIdTable* %3, i32 0, i32 1
  %4 = load %struct._GimpIdTablePriv*, %struct._GimpIdTablePriv** %priv, align 8
  %id_table2 = getelementptr inbounds %struct._GimpIdTablePriv, %struct._GimpIdTablePriv* %4, i32 0, i32 0
  %5 = load %struct._GHashTable*, %struct._GHashTable** %id_table2, align 8
  %call3 = call i64 @gimp_g_hash_table_get_memsize(%struct._GHashTable* %5, i64 0)
  %6 = load i64, i64* %memsize, align 8
  %add = add nsw i64 %6, %call3
  store i64 %add, i64* %memsize, align 8
  %7 = load i64, i64* %memsize, align 8
  %8 = load i8*, i8** @gimp_id_table_parent_class, align 8
  %9 = bitcast i8* %8 to %struct._GTypeClass*
  %call4 = call i64 @gimp_object_get_type() #6
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 %call4)
  %10 = bitcast %struct._GTypeClass* %call5 to %struct._GimpObjectClass*
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %10, i32 0, i32 3
  %11 = load i64 (%struct._GimpObject*, i64*)*, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %12 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %13 = load i64*, i64** %gui_size.addr, align 8
  %call6 = call i64 %11(%struct._GimpObject* %12, i64* %13)
  %add7 = add nsw i64 %7, %call6
  ret i64 %add7
}

declare void @g_type_class_add_private(i8*, i64) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @g_hash_table_unref(%struct._GHashTable*) #1

declare i64 @gimp_g_hash_table_get_memsize(%struct._GHashTable*, i64) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare %struct._GHashTable* @g_hash_table_new(i32 (i8*)*, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind readnone
declare i32 @g_direct_hash(i8*) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
