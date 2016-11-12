; ModuleID = './libgimpcolor/gimpcolormanaged.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInfo = type { i16, void (i8*)*, void (i8*)*, void (i8*, i8*)*, void (i8*, i8*)*, i8*, i16, i16, void (%struct._GTypeInstance*, i8*)*, %struct._GTypeValueTable* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GTypeValueTable = type { void (%struct._GValue*)*, void (%struct._GValue*)*, void (%struct._GValue*, %struct._GValue*)*, i8* (%struct._GValue*)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%union._GTypeCValue = type opaque
%struct._GimpColorManagedInterface = type { %struct._GTypeInterface, i8* (%struct._GimpColorManaged*, i64*)*, void (%struct._GimpColorManaged*)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpColorManaged = type opaque
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }

@gimp_color_managed_interface_get_type.iface_type = internal global i64 0, align 8
@gimp_color_managed_interface_get_type.iface_info = internal constant %struct._GTypeInfo { i16 32, void (i8*)* bitcast (void (%struct._GimpColorManagedInterface*)* @gimp_color_managed_base_init to void (i8*)*), void (i8*)* null, void (i8*, i8*)* null, void (i8*, i8*)* null, i8* null, i16 0, i16 0, void (%struct._GTypeInstance*, i8*)* null, %struct._GTypeValueTable* null }, align 8
@.str = private unnamed_addr constant [26 x i8] c"GimpColorManagedInterface\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"LibGimpColor\00", align 1
@__func__.gimp_color_managed_get_icc_profile = private unnamed_addr constant [35 x i8] c"gimp_color_managed_get_icc_profile\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"GIMP_IS_COLOR_MANAGED (managed)\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"len != NULL\00", align 1
@__func__.gimp_color_managed_profile_changed = private unnamed_addr constant [35 x i8] c"gimp_color_managed_profile_changed\00", align 1
@gimp_color_managed_signals = internal global [1 x i32] zeroinitializer, align 4
@gimp_color_managed_base_init.initialized = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"profile-changed\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_color_managed_interface_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_color_managed_interface_get_type.iface_type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_type_register_static(i64 8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0), %struct._GTypeInfo* @gimp_color_managed_interface_get_type.iface_info, i32 0)
  store i64 %call, i64* @gimp_color_managed_interface_get_type.iface_type, align 8
  %1 = load i64, i64* @gimp_color_managed_interface_get_type.iface_type, align 8
  call void @g_type_interface_add_prerequisite(i64 %1, i64 80)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, i64* @gimp_color_managed_interface_get_type.iface_type, align 8
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_managed_base_init(%struct._GimpColorManagedInterface* %iface) #1 {
entry:
  %iface.addr = alloca %struct._GimpColorManagedInterface*, align 8
  store %struct._GimpColorManagedInterface* %iface, %struct._GimpColorManagedInterface** %iface.addr, align 8
  %0 = load i32, i32* @gimp_color_managed_base_init.initialized, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpColorManagedInterface*, %struct._GimpColorManagedInterface** %iface.addr, align 8
  %2 = bitcast %struct._GimpColorManagedInterface* %1 to %struct._GTypeInterface*
  %g_type = getelementptr inbounds %struct._GTypeInterface, %struct._GTypeInterface* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %call = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i64 %3, i32 1, i32 24, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @gimp_color_managed_signals, i32 0, i64 0), align 4
  %4 = load %struct._GimpColorManagedInterface*, %struct._GimpColorManagedInterface** %iface.addr, align 8
  %get_icc_profile = getelementptr inbounds %struct._GimpColorManagedInterface, %struct._GimpColorManagedInterface* %4, i32 0, i32 1
  store i8* (%struct._GimpColorManaged*, i64*)* null, i8* (%struct._GimpColorManaged*, i64*)** %get_icc_profile, align 8
  %5 = load %struct._GimpColorManagedInterface*, %struct._GimpColorManagedInterface** %iface.addr, align 8
  %profile_changed = getelementptr inbounds %struct._GimpColorManagedInterface, %struct._GimpColorManagedInterface* %5, i32 0, i32 2
  store void (%struct._GimpColorManaged*)* null, void (%struct._GimpColorManaged*)** %profile_changed, align 8
  store i32 1, i32* @gimp_color_managed_base_init.initialized, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i64 @g_type_register_static(i64, i8*, %struct._GTypeInfo*, i32) #2

declare void @g_type_interface_add_prerequisite(i64, i64) #2

; Function Attrs: nounwind uwtable
define i8* @gimp_color_managed_get_icc_profile(%struct._GimpColorManaged* %managed, i64* %len) #1 {
entry:
  %retval = alloca i8*, align 8
  %managed.addr = alloca %struct._GimpColorManaged*, align 8
  %len.addr = alloca i64*, align 8
  %iface = alloca %struct._GimpColorManagedInterface*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorManaged* %managed, %struct._GimpColorManaged** %managed.addr, align 8
  store i64* %len, i64** %len.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorManaged*, %struct._GimpColorManaged** %managed.addr, align 8
  %1 = bitcast %struct._GimpColorManaged* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_managed_interface_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_color_managed_get_icc_profile, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i64*, i64** %len.addr, align 8
  %cmp12 = icmp ne i64* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_color_managed_get_icc_profile, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load i64*, i64** %len.addr, align 8
  store i64 0, i64* %14, align 8
  %15 = load %struct._GimpColorManaged*, %struct._GimpColorManaged** %managed.addr, align 8
  %16 = bitcast %struct._GimpColorManaged* %15 to %struct._GTypeInstance*
  %g_class17 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class17, align 8
  %18 = bitcast %struct._GTypeClass* %17 to i8*
  %call18 = call i64 @gimp_color_managed_interface_get_type() #4
  %call19 = call i8* @g_type_interface_peek(i8* %18, i64 %call18)
  %19 = bitcast i8* %call19 to %struct._GimpColorManagedInterface*
  store %struct._GimpColorManagedInterface* %19, %struct._GimpColorManagedInterface** %iface, align 8
  %20 = load %struct._GimpColorManagedInterface*, %struct._GimpColorManagedInterface** %iface, align 8
  %get_icc_profile = getelementptr inbounds %struct._GimpColorManagedInterface, %struct._GimpColorManagedInterface* %20, i32 0, i32 1
  %21 = load i8* (%struct._GimpColorManaged*, i64*)*, i8* (%struct._GimpColorManaged*, i64*)** %get_icc_profile, align 8
  %tobool20 = icmp ne i8* (%struct._GimpColorManaged*, i64*)* %21, null
  br i1 %tobool20, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %do.end.16
  %22 = load %struct._GimpColorManagedInterface*, %struct._GimpColorManagedInterface** %iface, align 8
  %get_icc_profile22 = getelementptr inbounds %struct._GimpColorManagedInterface, %struct._GimpColorManagedInterface* %22, i32 0, i32 1
  %23 = load i8* (%struct._GimpColorManaged*, i64*)*, i8* (%struct._GimpColorManaged*, i64*)** %get_icc_profile22, align 8
  %24 = load %struct._GimpColorManaged*, %struct._GimpColorManaged** %managed.addr, align 8
  %25 = load i64*, i64** %len.addr, align 8
  %call23 = call i8* %23(%struct._GimpColorManaged* %24, i64* %25)
  store i8* %call23, i8** %retval
  br label %return

if.end.24:                                        ; preds = %do.end.16
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then.21, %if.else.14, %if.else.9
  %26 = load i8*, i8** %retval
  ret i8* %26
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare i8* @g_type_interface_peek(i8*, i64) #2

; Function Attrs: nounwind uwtable
define void @gimp_color_managed_profile_changed(%struct._GimpColorManaged* %managed) #1 {
entry:
  %managed.addr = alloca %struct._GimpColorManaged*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorManaged* %managed, %struct._GimpColorManaged** %managed.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorManaged*, %struct._GimpColorManaged** %managed.addr, align 8
  %1 = bitcast %struct._GimpColorManaged* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_managed_interface_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_color_managed_profile_changed, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpColorManaged*, %struct._GimpColorManaged** %managed.addr, align 8
  %14 = bitcast %struct._GimpColorManaged* %13 to i8*
  %15 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @gimp_color_managed_signals, i32 0, i64 0), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %14, i32 %15, i32 0)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare void @g_signal_emit(i8*, i32, i32, ...) #2

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #2

declare void @g_cclosure_marshal_VOID__VOID(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #2

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
