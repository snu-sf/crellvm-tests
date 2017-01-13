; ModuleID = './app/config/gimprc-unknown.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpConfig = type opaque
%struct.GimpConfigToken = type { i8*, i8* }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque

@.str = private unnamed_addr constant [12 x i8] c"Gimp-Config\00", align 1
@__func__.gimp_rc_add_unknown_token = private unnamed_addr constant [26 x i8] c"gimp_rc_add_unknown_token\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"GIMP_IS_CONFIG (config)\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"key != NULL\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"gimp-rc-unknown-tokens\00", align 1
@__func__.gimp_rc_lookup_unknown_token = private unnamed_addr constant [29 x i8] c"gimp_rc_lookup_unknown_token\00", align 1
@__func__.gimp_rc_foreach_unknown_token = private unnamed_addr constant [30 x i8] c"gimp_rc_foreach_unknown_token\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"func != NULL\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_rc_add_unknown_token(%struct._GimpConfig* %config, i8* %key, i8* %value) #0 {
entry:
  %config.addr = alloca %struct._GimpConfig*, align 8
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %token = alloca %struct.GimpConfigToken*, align 8
  %unknown_tokens = alloca %struct._GSList*, align 8
  %last = alloca %struct._GSList*, align 8
  %list = alloca %struct._GSList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_config_interface_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_rc_add_unknown_token, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.51

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %key.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_rc_add_unknown_token, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.51

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %15 = bitcast %struct._GimpConfig* %14 to %struct._GTypeInstance*
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 80)
  %16 = bitcast %struct._GTypeInstance* %call17 to %struct._GObject*
  %call18 = call i8* @g_object_get_data(%struct._GObject* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  %17 = bitcast i8* %call18 to %struct._GSList*
  store %struct._GSList* %17, %struct._GSList** %unknown_tokens, align 8
  store %struct._GSList* null, %struct._GSList** %last, align 8
  %18 = load %struct._GSList*, %struct._GSList** %unknown_tokens, align 8
  store %struct._GSList* %18, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end.16
  %19 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool19 = icmp ne %struct._GSList* %19, null
  br i1 %tobool19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %20, i32 0, i32 0
  %21 = load i8*, i8** %data, align 8
  %22 = bitcast i8* %21 to %struct.GimpConfigToken*
  store %struct.GimpConfigToken* %22, %struct.GimpConfigToken** %token, align 8
  %23 = load %struct.GimpConfigToken*, %struct.GimpConfigToken** %token, align 8
  %key20 = getelementptr inbounds %struct.GimpConfigToken, %struct.GimpConfigToken* %23, i32 0, i32 0
  %24 = load i8*, i8** %key20, align 8
  %25 = load i8*, i8** %key.addr, align 8
  %call21 = call i32 @strcmp(i8* %24, i8* %25) #5
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.then.23, label %if.end.34

if.then.23:                                       ; preds = %for.body
  %26 = load %struct.GimpConfigToken*, %struct.GimpConfigToken** %token, align 8
  %value24 = getelementptr inbounds %struct.GimpConfigToken, %struct.GimpConfigToken* %26, i32 0, i32 1
  %27 = load i8*, i8** %value24, align 8
  call void @g_free(i8* %27)
  %28 = load i8*, i8** %value.addr, align 8
  %tobool25 = icmp ne i8* %28, null
  br i1 %tobool25, label %if.then.26, label %if.else.29

if.then.26:                                       ; preds = %if.then.23
  %29 = load i8*, i8** %value.addr, align 8
  %call27 = call noalias i8* @g_strdup(i8* %29)
  %30 = load %struct.GimpConfigToken*, %struct.GimpConfigToken** %token, align 8
  %value28 = getelementptr inbounds %struct.GimpConfigToken, %struct.GimpConfigToken* %30, i32 0, i32 1
  store i8* %call27, i8** %value28, align 8
  br label %if.end.33

if.else.29:                                       ; preds = %if.then.23
  %31 = load %struct.GimpConfigToken*, %struct.GimpConfigToken** %token, align 8
  %key30 = getelementptr inbounds %struct.GimpConfigToken, %struct.GimpConfigToken* %31, i32 0, i32 0
  %32 = load i8*, i8** %key30, align 8
  call void @g_free(i8* %32)
  %33 = load %struct._GSList*, %struct._GSList** %unknown_tokens, align 8
  %34 = load %struct.GimpConfigToken*, %struct.GimpConfigToken** %token, align 8
  %35 = bitcast %struct.GimpConfigToken* %34 to i8*
  %call31 = call %struct._GSList* @g_slist_remove(%struct._GSList* %33, i8* %35)
  store %struct._GSList* %call31, %struct._GSList** %unknown_tokens, align 8
  %36 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %37 = bitcast %struct._GimpConfig* %36 to %struct._GTypeInstance*
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 80)
  %38 = bitcast %struct._GTypeInstance* %call32 to %struct._GObject*
  %39 = load %struct._GSList*, %struct._GSList** %unknown_tokens, align 8
  %40 = bitcast %struct._GSList* %39 to i8*
  call void @g_object_set_data_full(%struct._GObject* %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0), i8* %40, void (i8*)* bitcast (void (%struct._GSList*)* @gimp_rc_destroy_unknown_tokens to void (i8*)*))
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.29, %if.then.26
  br label %if.end.51

if.end.34:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.34
  %41 = load %struct._GSList*, %struct._GSList** %list, align 8
  store %struct._GSList* %41, %struct._GSList** %last, align 8
  %42 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool35 = icmp ne %struct._GSList* %42, null
  br i1 %tobool35, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %43 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %43, i32 0, i32 1
  %44 = load %struct._GSList*, %struct._GSList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %44, %cond.true ], [ null, %cond.false ]
  store %struct._GSList* %cond, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %45 = load i8*, i8** %value.addr, align 8
  %tobool36 = icmp ne i8* %45, null
  br i1 %tobool36, label %if.end.38, label %if.then.37

if.then.37:                                       ; preds = %for.end
  br label %if.end.51

if.end.38:                                        ; preds = %for.end
  %call39 = call noalias i8* @g_slice_alloc(i64 16)
  %46 = bitcast i8* %call39 to %struct.GimpConfigToken*
  store %struct.GimpConfigToken* %46, %struct.GimpConfigToken** %token, align 8
  %47 = load i8*, i8** %key.addr, align 8
  %call40 = call noalias i8* @g_strdup(i8* %47)
  %48 = load %struct.GimpConfigToken*, %struct.GimpConfigToken** %token, align 8
  %key41 = getelementptr inbounds %struct.GimpConfigToken, %struct.GimpConfigToken* %48, i32 0, i32 0
  store i8* %call40, i8** %key41, align 8
  %49 = load i8*, i8** %value.addr, align 8
  %call42 = call noalias i8* @g_strdup(i8* %49)
  %50 = load %struct.GimpConfigToken*, %struct.GimpConfigToken** %token, align 8
  %value43 = getelementptr inbounds %struct.GimpConfigToken, %struct.GimpConfigToken* %50, i32 0, i32 1
  store i8* %call42, i8** %value43, align 8
  %51 = load %struct._GSList*, %struct._GSList** %last, align 8
  %tobool44 = icmp ne %struct._GSList* %51, null
  br i1 %tobool44, label %if.then.45, label %if.else.48

if.then.45:                                       ; preds = %if.end.38
  %52 = load %struct._GSList*, %struct._GSList** %last, align 8
  %53 = load %struct.GimpConfigToken*, %struct.GimpConfigToken** %token, align 8
  %54 = bitcast %struct.GimpConfigToken* %53 to i8*
  %call46 = call %struct._GSList* @g_slist_append(%struct._GSList* %52, i8* %54)
  %call47 = call %struct._GSList* @g_slist_last(%struct._GSList* %call46)
  store %struct._GSList* %call47, %struct._GSList** %last, align 8
  br label %if.end.51

if.else.48:                                       ; preds = %if.end.38
  %55 = load %struct.GimpConfigToken*, %struct.GimpConfigToken** %token, align 8
  %56 = bitcast %struct.GimpConfigToken* %55 to i8*
  %call49 = call %struct._GSList* @g_slist_append(%struct._GSList* null, i8* %56)
  store %struct._GSList* %call49, %struct._GSList** %unknown_tokens, align 8
  %57 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %58 = bitcast %struct._GimpConfig* %57 to %struct._GTypeInstance*
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 80)
  %59 = bitcast %struct._GTypeInstance* %call50 to %struct._GObject*
  %60 = load %struct._GSList*, %struct._GSList** %unknown_tokens, align 8
  %61 = bitcast %struct._GSList* %60 to i8*
  call void @g_object_set_data_full(%struct._GObject* %59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0), i8* %61, void (i8*)* bitcast (void (%struct._GSList*)* @gimp_rc_destroy_unknown_tokens to void (i8*)*))
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.9, %if.else.14, %if.end.33, %if.then.37, %if.else.48, %if.then.45
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare i8* @g_object_get_data(%struct._GObject*, i8*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare void @g_free(i8*) #3

declare noalias i8* @g_strdup(i8*) #3

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #3

declare void @g_object_set_data_full(%struct._GObject*, i8*, i8*, void (i8*)*) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_rc_destroy_unknown_tokens(%struct._GSList* %unknown_tokens) #0 {
entry:
  %unknown_tokens.addr = alloca %struct._GSList*, align 8
  %list = alloca %struct._GSList*, align 8
  %token = alloca %struct.GimpConfigToken*, align 8
  store %struct._GSList* %unknown_tokens, %struct._GSList** %unknown_tokens.addr, align 8
  %0 = load %struct._GSList*, %struct._GSList** %unknown_tokens.addr, align 8
  store %struct._GSList* %0, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %1 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool = icmp ne %struct._GSList* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  %4 = bitcast i8* %3 to %struct.GimpConfigToken*
  store %struct.GimpConfigToken* %4, %struct.GimpConfigToken** %token, align 8
  %5 = load %struct.GimpConfigToken*, %struct.GimpConfigToken** %token, align 8
  %key = getelementptr inbounds %struct.GimpConfigToken, %struct.GimpConfigToken* %5, i32 0, i32 0
  %6 = load i8*, i8** %key, align 8
  call void @g_free(i8* %6)
  %7 = load %struct.GimpConfigToken*, %struct.GimpConfigToken** %token, align 8
  %value = getelementptr inbounds %struct.GimpConfigToken, %struct.GimpConfigToken* %7, i32 0, i32 1
  %8 = load i8*, i8** %value, align 8
  call void @g_free(i8* %8)
  br label %do.body

do.body:                                          ; preds = %for.body
  %9 = load %struct.GimpConfigToken*, %struct.GimpConfigToken** %token, align 8
  %10 = bitcast %struct.GimpConfigToken* %9 to i8*
  call void @g_slice_free1(i64 16, i8* %10)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %11 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool1 = icmp ne %struct._GSList* %11, null
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %12 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %12, i32 0, i32 1
  %13 = load %struct._GSList*, %struct._GSList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %13, %cond.true ], [ null, %cond.false ]
  store %struct._GSList* %cond, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct._GSList*, %struct._GSList** %unknown_tokens.addr, align 8
  call void @g_slist_free(%struct._GSList* %14)
  ret void
}

declare noalias i8* @g_slice_alloc(i64) #3

declare %struct._GSList* @g_slist_last(%struct._GSList*) #3

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #3

; Function Attrs: nounwind uwtable
define i8* @gimp_rc_lookup_unknown_token(%struct._GimpConfig* %config, i8* %key) #0 {
entry:
  %retval = alloca i8*, align 8
  %config.addr = alloca %struct._GimpConfig*, align 8
  %key.addr = alloca i8*, align 8
  %unknown_tokens = alloca %struct._GSList*, align 8
  %list = alloca %struct._GSList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %token = alloca %struct.GimpConfigToken*, align 8
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_config_interface_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_rc_lookup_unknown_token, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %key.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_rc_lookup_unknown_token, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %15 = bitcast %struct._GimpConfig* %14 to %struct._GTypeInstance*
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 80)
  %16 = bitcast %struct._GTypeInstance* %call17 to %struct._GObject*
  %call18 = call i8* @g_object_get_data(%struct._GObject* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  %17 = bitcast i8* %call18 to %struct._GSList*
  store %struct._GSList* %17, %struct._GSList** %unknown_tokens, align 8
  %18 = load %struct._GSList*, %struct._GSList** %unknown_tokens, align 8
  store %struct._GSList* %18, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end.16
  %19 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool19 = icmp ne %struct._GSList* %19, null
  br i1 %tobool19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %20, i32 0, i32 0
  %21 = load i8*, i8** %data, align 8
  %22 = bitcast i8* %21 to %struct.GimpConfigToken*
  store %struct.GimpConfigToken* %22, %struct.GimpConfigToken** %token, align 8
  %23 = load %struct.GimpConfigToken*, %struct.GimpConfigToken** %token, align 8
  %key21 = getelementptr inbounds %struct.GimpConfigToken, %struct.GimpConfigToken* %23, i32 0, i32 0
  %24 = load i8*, i8** %key21, align 8
  %25 = load i8*, i8** %key.addr, align 8
  %call22 = call i32 @strcmp(i8* %24, i8* %25) #5
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %for.body
  %26 = load %struct.GimpConfigToken*, %struct.GimpConfigToken** %token, align 8
  %value = getelementptr inbounds %struct.GimpConfigToken, %struct.GimpConfigToken* %26, i32 0, i32 1
  %27 = load i8*, i8** %value, align 8
  store i8* %27, i8** %retval
  br label %return

if.end.25:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %28 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool26 = icmp ne %struct._GSList* %28, null
  br i1 %tobool26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %29 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %29, i32 0, i32 1
  %30 = load %struct._GSList*, %struct._GSList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %30, %cond.true ], [ null, %cond.false ]
  store %struct._GSList* %cond, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.24, %if.else.14, %if.else.9
  %31 = load i8*, i8** %retval
  ret i8* %31
}

; Function Attrs: nounwind uwtable
define void @gimp_rc_foreach_unknown_token(%struct._GimpConfig* %config, void (i8*, i8*, i8*)* %func, i8* %user_data) #0 {
entry:
  %config.addr = alloca %struct._GimpConfig*, align 8
  %func.addr = alloca void (i8*, i8*, i8*)*, align 8
  %user_data.addr = alloca i8*, align 8
  %unknown_tokens = alloca %struct._GSList*, align 8
  %list = alloca %struct._GSList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %token = alloca %struct.GimpConfigToken*, align 8
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  store void (i8*, i8*, i8*)* %func, void (i8*, i8*, i8*)** %func.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_config_interface_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_rc_foreach_unknown_token, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0))
  br label %for.end

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %func.addr, align 8
  %cmp12 = icmp ne void (i8*, i8*, i8*)* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_rc_foreach_unknown_token, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0))
  br label %for.end

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %15 = bitcast %struct._GimpConfig* %14 to %struct._GTypeInstance*
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 80)
  %16 = bitcast %struct._GTypeInstance* %call17 to %struct._GObject*
  %call18 = call i8* @g_object_get_data(%struct._GObject* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  %17 = bitcast i8* %call18 to %struct._GSList*
  store %struct._GSList* %17, %struct._GSList** %unknown_tokens, align 8
  %18 = load %struct._GSList*, %struct._GSList** %unknown_tokens, align 8
  store %struct._GSList* %18, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end.16
  %19 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool19 = icmp ne %struct._GSList* %19, null
  br i1 %tobool19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %20, i32 0, i32 0
  %21 = load i8*, i8** %data, align 8
  %22 = bitcast i8* %21 to %struct.GimpConfigToken*
  store %struct.GimpConfigToken* %22, %struct.GimpConfigToken** %token, align 8
  %23 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %func.addr, align 8
  %24 = load %struct.GimpConfigToken*, %struct.GimpConfigToken** %token, align 8
  %key = getelementptr inbounds %struct.GimpConfigToken, %struct.GimpConfigToken* %24, i32 0, i32 0
  %25 = load i8*, i8** %key, align 8
  %26 = load %struct.GimpConfigToken*, %struct.GimpConfigToken** %token, align 8
  %value = getelementptr inbounds %struct.GimpConfigToken, %struct.GimpConfigToken* %26, i32 0, i32 1
  %27 = load i8*, i8** %value, align 8
  %28 = load i8*, i8** %user_data.addr, align 8
  call void %23(i8* %25, i8* %27, i8* %28)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool21 = icmp ne %struct._GSList* %29, null
  br i1 %tobool21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %30 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %30, i32 0, i32 1
  %31 = load %struct._GSList*, %struct._GSList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %31, %cond.true ], [ null, %cond.false ]
  store %struct._GSList* %cond, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %if.else.9, %if.else.14, %for.cond
  ret void
}

declare void @g_slice_free1(i64, i8*) #3

declare void @g_slist_free(%struct._GSList*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
