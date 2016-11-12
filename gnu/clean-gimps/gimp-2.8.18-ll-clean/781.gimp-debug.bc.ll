; ModuleID = './app/gimp-debug.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GHashTable = type opaque
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }

@class_hash = internal global %struct._GHashTable* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"Gimp\00", align 1
@__func__.gimp_debug_enable_instances = private unnamed_addr constant [28 x i8] c"gimp_debug_enable_instances\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"class_hash == NULL\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Leaked %s instances: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"  '%s': ref_count = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"GObject\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_debug_enable_instances() #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GHashTable*, %struct._GHashTable** @class_hash, align 8
  %cmp = icmp eq %struct._GHashTable* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_debug_enable_instances, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call = call %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal, void (i8*)* null, void (i8*)* bitcast (void (%struct._GHashTable*)* @g_hash_table_unref to void (i8*)*))
  store %struct._GHashTable* %call, %struct._GHashTable** @class_hash, align 8
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, void (i8*)*) #1

declare i32 @g_str_hash(i8*) #1

declare i32 @g_str_equal(i8*, i8*) #1

declare void @g_hash_table_unref(%struct._GHashTable*) #1

; Function Attrs: nounwind uwtable
define void @gimp_debug_add_instance(%struct._GObject* %instance, %struct._GObjectClass* %klass) #0 {
entry:
  %instance.addr = alloca %struct._GObject*, align 8
  %klass.addr = alloca %struct._GObjectClass*, align 8
  %instance_hash = alloca %struct._GHashTable*, align 8
  %type_name = alloca i8*, align 8
  store %struct._GObject* %instance, %struct._GObject** %instance.addr, align 8
  store %struct._GObjectClass* %klass, %struct._GObjectClass** %klass.addr, align 8
  %0 = load %struct._GHashTable*, %struct._GHashTable** @class_hash, align 8
  %tobool = icmp ne %struct._GHashTable* %0, null
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %1 = load %struct._GObjectClass*, %struct._GObjectClass** %klass.addr, align 8
  %2 = bitcast %struct._GObjectClass* %1 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %call = call i8* @g_type_name(i64 %3)
  store i8* %call, i8** %type_name, align 8
  %4 = load %struct._GHashTable*, %struct._GHashTable** @class_hash, align 8
  %5 = load i8*, i8** %type_name, align 8
  %call1 = call i8* @g_hash_table_lookup(%struct._GHashTable* %4, i8* %5)
  %6 = bitcast i8* %call1 to %struct._GHashTable*
  store %struct._GHashTable* %6, %struct._GHashTable** %instance_hash, align 8
  %7 = load %struct._GHashTable*, %struct._GHashTable** %instance_hash, align 8
  %tobool2 = icmp ne %struct._GHashTable* %7, null
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  %call4 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_direct_hash, i32 (i8*, i8*)* @g_direct_equal)
  store %struct._GHashTable* %call4, %struct._GHashTable** %instance_hash, align 8
  %8 = load %struct._GHashTable*, %struct._GHashTable** @class_hash, align 8
  %9 = load i8*, i8** %type_name, align 8
  %10 = load %struct._GHashTable*, %struct._GHashTable** %instance_hash, align 8
  %11 = bitcast %struct._GHashTable* %10 to i8*
  %call5 = call i32 @g_hash_table_insert(%struct._GHashTable* %8, i8* %9, i8* %11)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %12 = load %struct._GHashTable*, %struct._GHashTable** %instance_hash, align 8
  %13 = load %struct._GObject*, %struct._GObject** %instance.addr, align 8
  %14 = bitcast %struct._GObject* %13 to i8*
  %15 = load %struct._GObject*, %struct._GObject** %instance.addr, align 8
  %16 = bitcast %struct._GObject* %15 to i8*
  %call6 = call i32 @g_hash_table_insert(%struct._GHashTable* %12, i8* %14, i8* %16)
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  ret void
}

declare i8* @g_type_name(i64) #1

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #1

declare %struct._GHashTable* @g_hash_table_new(i32 (i8*)*, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind readnone
declare i32 @g_direct_hash(i8*) #2

; Function Attrs: nounwind readnone
declare i32 @g_direct_equal(i8*, i8*) #2

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_debug_remove_instance(%struct._GObject* %instance) #0 {
entry:
  %instance.addr = alloca %struct._GObject*, align 8
  %instance_hash = alloca %struct._GHashTable*, align 8
  %type_name = alloca i8*, align 8
  store %struct._GObject* %instance, %struct._GObject** %instance.addr, align 8
  %0 = load %struct._GHashTable*, %struct._GHashTable** @class_hash, align 8
  %tobool = icmp ne %struct._GHashTable* %0, null
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %1 = load %struct._GObject*, %struct._GObject** %instance.addr, align 8
  %2 = bitcast %struct._GObject* %1 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %2, i32 0, i32 0
  %3 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %3, i32 0, i32 0
  %4 = load i64, i64* %g_type, align 8
  %call = call i8* @g_type_name(i64 %4)
  store i8* %call, i8** %type_name, align 8
  %5 = load %struct._GHashTable*, %struct._GHashTable** @class_hash, align 8
  %6 = load i8*, i8** %type_name, align 8
  %call1 = call i8* @g_hash_table_lookup(%struct._GHashTable* %5, i8* %6)
  %7 = bitcast i8* %call1 to %struct._GHashTable*
  store %struct._GHashTable* %7, %struct._GHashTable** %instance_hash, align 8
  %8 = load %struct._GHashTable*, %struct._GHashTable** %instance_hash, align 8
  %tobool2 = icmp ne %struct._GHashTable* %8, null
  br i1 %tobool2, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %if.then
  %9 = load %struct._GHashTable*, %struct._GHashTable** %instance_hash, align 8
  %10 = load %struct._GObject*, %struct._GObject** %instance.addr, align 8
  %11 = bitcast %struct._GObject* %10 to i8*
  %call4 = call i32 @g_hash_table_remove(%struct._GHashTable* %9, i8* %11)
  %12 = load %struct._GHashTable*, %struct._GHashTable** %instance_hash, align 8
  %call5 = call i32 @g_hash_table_size(%struct._GHashTable* %12)
  %cmp = icmp eq i32 %call5, 0
  br i1 %cmp, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then.3
  %13 = load %struct._GHashTable*, %struct._GHashTable** @class_hash, align 8
  %14 = load i8*, i8** %type_name, align 8
  %call7 = call i32 @g_hash_table_remove(%struct._GHashTable* %13, i8* %14)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then.3
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %entry
  ret void
}

declare i32 @g_hash_table_remove(%struct._GHashTable*, i8*) #1

declare i32 @g_hash_table_size(%struct._GHashTable*) #1

; Function Attrs: nounwind uwtable
define void @gimp_debug_instances() #0 {
entry:
  %0 = load %struct._GHashTable*, %struct._GHashTable** @class_hash, align 8
  %tobool = icmp ne %struct._GHashTable* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GHashTable*, %struct._GHashTable** @class_hash, align 8
  call void @g_hash_table_foreach(%struct._GHashTable* %1, void (i8*, i8*, i8*)* bitcast (void (i8*, %struct._GHashTable*)* @gimp_debug_class_foreach to void (i8*, i8*, i8*)*), i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @g_hash_table_foreach(%struct._GHashTable*, void (i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_debug_class_foreach(i8* %type_name, %struct._GHashTable* %instance_hash) #0 {
entry:
  %type_name.addr = alloca i8*, align 8
  %instance_hash.addr = alloca %struct._GHashTable*, align 8
  store i8* %type_name, i8** %type_name.addr, align 8
  store %struct._GHashTable* %instance_hash, %struct._GHashTable** %instance_hash.addr, align 8
  %0 = load i8*, i8** %type_name.addr, align 8
  %1 = load %struct._GHashTable*, %struct._GHashTable** %instance_hash.addr, align 8
  %call = call i32 @g_hash_table_size(%struct._GHashTable* %1)
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0), i8* %0, i32 %call)
  %2 = load %struct._GHashTable*, %struct._GHashTable** %instance_hash.addr, align 8
  call void @g_hash_table_foreach(%struct._GHashTable* %2, void (i8*, i8*, i8*)* bitcast (void (%struct._GObject*)* @gimp_debug_instance_foreach to void (i8*, i8*, i8*)*), i8* null)
  ret void
}

declare void @g_printerr(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_debug_instance_foreach(%struct._GObject* %instance) #0 {
entry:
  %instance.addr = alloca %struct._GObject*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GObject* %instance, %struct._GObject** %instance.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %instance.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_object_get_type() #4
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %entry
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
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %13 = load %struct._GObject*, %struct._GObject** %instance.addr, align 8
  %14 = bitcast %struct._GObject* %13 to i8*
  %call8 = call i8* @gimp_object_get_name(i8* %14)
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call8, %cond.true ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), %cond.false ]
  %15 = load %struct._GObject*, %struct._GObject** %instance.addr, align 8
  %ref_count = getelementptr inbounds %struct._GObject, %struct._GObject* %15, i32 0, i32 1
  %16 = load volatile i32, i32* %ref_count, align 4
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i8* %cond, i32 %16)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

declare i8* @gimp_object_get_name(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
