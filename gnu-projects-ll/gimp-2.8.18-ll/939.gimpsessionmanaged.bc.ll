; ModuleID = './app/widgets/gimpsessionmanaged.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInfo = type { i16, void (i8*)*, void (i8*)*, void (i8*, i8*)*, void (i8*, i8*)*, i8*, i16, i16, void (%struct._GTypeInstance*, i8*)*, %struct._GTypeValueTable* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GTypeValueTable = type { void (%struct._GValue*)*, void (%struct._GValue*)*, void (%struct._GValue*, %struct._GValue*)*, i8* (%struct._GValue*)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%union._GTypeCValue = type opaque
%struct._GimpSessionManagedInterface = type { %struct._GTypeInterface, %struct._GList* (%struct._GimpSessionManaged*)*, void (%struct._GimpSessionManaged*, %struct._GList*)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpSessionManaged = type opaque

@gimp_session_managed_interface_get_type.iface_type = internal global i64 0, align 8
@gimp_session_managed_interface_get_type.iface_info = internal constant %struct._GTypeInfo { i16 32, void (i8*)* bitcast (void (%struct._GimpSessionManagedInterface*)* @gimp_session_managed_iface_base_init to void (i8*)*), void (i8*)* null, void (i8*, i8*)* null, void (i8*, i8*)* null, i8* null, i16 0, i16 0, void (%struct._GTypeInstance*, i8*)* null, %struct._GTypeValueTable* null }, align 8
@.str = private unnamed_addr constant [28 x i8] c"GimpSessionManagedInterface\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_session_managed_get_aux_info = private unnamed_addr constant [34 x i8] c"gimp_session_managed_get_aux_info\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"GIMP_IS_SESSION_MANAGED (session_managed)\00", align 1
@__func__.gimp_session_managed_set_aux_info = private unnamed_addr constant [34 x i8] c"gimp_session_managed_set_aux_info\00", align 1
@gimp_session_managed_iface_base_init.initialized = internal global i32 0, align 4

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_session_managed_interface_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_session_managed_interface_get_type.iface_type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_type_register_static(i64 8, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), %struct._GTypeInfo* @gimp_session_managed_interface_get_type.iface_info, i32 0)
  store i64 %call, i64* @gimp_session_managed_interface_get_type.iface_type, align 8
  %1 = load i64, i64* @gimp_session_managed_interface_get_type.iface_type, align 8
  %call1 = call i64 @gtk_widget_get_type() #5
  call void @g_type_interface_add_prerequisite(i64 %1, i64 %call1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, i64* @gimp_session_managed_interface_get_type.iface_type, align 8
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define internal void @gimp_session_managed_iface_base_init(%struct._GimpSessionManagedInterface* %managed_iface) #1 {
entry:
  %managed_iface.addr = alloca %struct._GimpSessionManagedInterface*, align 8
  store %struct._GimpSessionManagedInterface* %managed_iface, %struct._GimpSessionManagedInterface** %managed_iface.addr, align 8
  %0 = load i32, i32* @gimp_session_managed_iface_base_init.initialized, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* @gimp_session_managed_iface_base_init.initialized, align 4
  %1 = load %struct._GimpSessionManagedInterface*, %struct._GimpSessionManagedInterface** %managed_iface.addr, align 8
  %get_aux_info = getelementptr inbounds %struct._GimpSessionManagedInterface, %struct._GimpSessionManagedInterface* %1, i32 0, i32 1
  store %struct._GList* (%struct._GimpSessionManaged*)* null, %struct._GList* (%struct._GimpSessionManaged*)** %get_aux_info, align 8
  %2 = load %struct._GimpSessionManagedInterface*, %struct._GimpSessionManagedInterface** %managed_iface.addr, align 8
  %set_aux_info = getelementptr inbounds %struct._GimpSessionManagedInterface, %struct._GimpSessionManagedInterface* %2, i32 0, i32 2
  store void (%struct._GimpSessionManaged*, %struct._GList*)* null, void (%struct._GimpSessionManaged*, %struct._GList*)** %set_aux_info, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare i64 @g_type_register_static(i64, i8*, %struct._GTypeInfo*, i32) #2

declare void @g_type_interface_add_prerequisite(i64, i64) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #3

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_session_managed_get_aux_info(%struct._GimpSessionManaged* %session_managed) #1 {
entry:
  %retval = alloca %struct._GList*, align 8
  %session_managed.addr = alloca %struct._GimpSessionManaged*, align 8
  %iface = alloca %struct._GimpSessionManagedInterface*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpSessionManaged* %session_managed, %struct._GimpSessionManaged** %session_managed.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSessionManaged*, %struct._GimpSessionManaged** %session_managed.addr, align 8
  %1 = bitcast %struct._GimpSessionManaged* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_session_managed_interface_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_session_managed_get_aux_info, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpSessionManaged*, %struct._GimpSessionManaged** %session_managed.addr, align 8
  %14 = bitcast %struct._GimpSessionManaged* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to i8*
  %call12 = call i64 @gimp_session_managed_interface_get_type() #5
  %call13 = call i8* @g_type_interface_peek(i8* %16, i64 %call12)
  %17 = bitcast i8* %call13 to %struct._GimpSessionManagedInterface*
  store %struct._GimpSessionManagedInterface* %17, %struct._GimpSessionManagedInterface** %iface, align 8
  %18 = load %struct._GimpSessionManagedInterface*, %struct._GimpSessionManagedInterface** %iface, align 8
  %get_aux_info = getelementptr inbounds %struct._GimpSessionManagedInterface, %struct._GimpSessionManagedInterface* %18, i32 0, i32 1
  %19 = load %struct._GList* (%struct._GimpSessionManaged*)*, %struct._GList* (%struct._GimpSessionManaged*)** %get_aux_info, align 8
  %tobool14 = icmp ne %struct._GList* (%struct._GimpSessionManaged*)* %19, null
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %do.end
  %20 = load %struct._GimpSessionManagedInterface*, %struct._GimpSessionManagedInterface** %iface, align 8
  %get_aux_info16 = getelementptr inbounds %struct._GimpSessionManagedInterface, %struct._GimpSessionManagedInterface* %20, i32 0, i32 1
  %21 = load %struct._GList* (%struct._GimpSessionManaged*)*, %struct._GList* (%struct._GimpSessionManaged*)** %get_aux_info16, align 8
  %22 = load %struct._GimpSessionManaged*, %struct._GimpSessionManaged** %session_managed.addr, align 8
  %call17 = call %struct._GList* %21(%struct._GimpSessionManaged* %22)
  store %struct._GList* %call17, %struct._GList** %retval
  br label %return

if.end.18:                                        ; preds = %do.end
  store %struct._GList* null, %struct._GList** %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then.15, %if.else.9
  %23 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %23
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare i8* @g_type_interface_peek(i8*, i64) #2

; Function Attrs: nounwind uwtable
define void @gimp_session_managed_set_aux_info(%struct._GimpSessionManaged* %session_managed, %struct._GList* %aux_info) #1 {
entry:
  %session_managed.addr = alloca %struct._GimpSessionManaged*, align 8
  %aux_info.addr = alloca %struct._GList*, align 8
  %iface = alloca %struct._GimpSessionManagedInterface*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpSessionManaged* %session_managed, %struct._GimpSessionManaged** %session_managed.addr, align 8
  store %struct._GList* %aux_info, %struct._GList** %aux_info.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSessionManaged*, %struct._GimpSessionManaged** %session_managed.addr, align 8
  %1 = bitcast %struct._GimpSessionManaged* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_session_managed_interface_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_session_managed_set_aux_info, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.17

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpSessionManaged*, %struct._GimpSessionManaged** %session_managed.addr, align 8
  %14 = bitcast %struct._GimpSessionManaged* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to i8*
  %call12 = call i64 @gimp_session_managed_interface_get_type() #5
  %call13 = call i8* @g_type_interface_peek(i8* %16, i64 %call12)
  %17 = bitcast i8* %call13 to %struct._GimpSessionManagedInterface*
  store %struct._GimpSessionManagedInterface* %17, %struct._GimpSessionManagedInterface** %iface, align 8
  %18 = load %struct._GimpSessionManagedInterface*, %struct._GimpSessionManagedInterface** %iface, align 8
  %set_aux_info = getelementptr inbounds %struct._GimpSessionManagedInterface, %struct._GimpSessionManagedInterface* %18, i32 0, i32 2
  %19 = load void (%struct._GimpSessionManaged*, %struct._GList*)*, void (%struct._GimpSessionManaged*, %struct._GList*)** %set_aux_info, align 8
  %tobool14 = icmp ne void (%struct._GimpSessionManaged*, %struct._GList*)* %19, null
  br i1 %tobool14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %do.end
  %20 = load %struct._GimpSessionManagedInterface*, %struct._GimpSessionManagedInterface** %iface, align 8
  %set_aux_info16 = getelementptr inbounds %struct._GimpSessionManagedInterface, %struct._GimpSessionManagedInterface* %20, i32 0, i32 2
  %21 = load void (%struct._GimpSessionManaged*, %struct._GList*)*, void (%struct._GimpSessionManaged*, %struct._GList*)** %set_aux_info16, align 8
  %22 = load %struct._GimpSessionManaged*, %struct._GimpSessionManaged** %session_managed.addr, align 8
  %23 = load %struct._GList*, %struct._GList** %aux_info.addr, align 8
  call void %21(%struct._GimpSessionManaged* %22, %struct._GList* %23)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.9, %if.then.15, %do.end
  ret void
}

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
