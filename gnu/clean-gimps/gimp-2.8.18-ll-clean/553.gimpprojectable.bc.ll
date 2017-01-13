; ModuleID = './app/core/gimpprojectable.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInfo = type { i16, void (i8*)*, void (i8*)*, void (i8*, i8*)*, void (i8*, i8*)*, i8*, i16, i16, void (%struct._GTypeInstance*, i8*)*, %struct._GTypeValueTable* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GTypeValueTable = type { void (%struct._GValue*)*, void (%struct._GValue*)*, void (%struct._GValue*, %struct._GValue*)*, i8* (%struct._GValue*)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%union._GTypeCValue = type opaque
%struct._GimpProjectableInterface = type { %struct._GTypeInterface, void (%struct._GimpProjectable*, i32, i32, i32, i32)*, void (%struct._GimpProjectable*, i32)*, void (%struct._GimpProjectable*)*, %struct._GimpImage* (%struct._GimpProjectable*)*, i32 (%struct._GimpProjectable*)*, void (%struct._GimpProjectable*, i32*, i32*)*, void (%struct._GimpProjectable*, i32*, i32*)*, %struct._GeglNode* (%struct._GimpProjectable*)*, void (%struct._GimpProjectable*)*, %struct._GList* (%struct._GimpProjectable*)*, %struct._GList* (%struct._GimpProjectable*)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpProjectable = type opaque
%struct._GimpImage = type opaque
%struct._GeglNode = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }

@gimp_projectable_interface_get_type.projectable_iface_type = internal global i64 0, align 8
@gimp_projectable_interface_get_type.projectable_iface_info = internal constant %struct._GTypeInfo { i16 104, void (i8*)* bitcast (void (%struct._GimpProjectableInterface*)* @gimp_projectable_iface_base_init to void (i8*)*), void (i8*)* null, void (i8*, i8*)* null, void (i8*, i8*)* null, i8* null, i16 0, i16 0, void (%struct._GTypeInstance*, i8*)* null, %struct._GTypeValueTable* null }, align 8
@.str = private unnamed_addr constant [25 x i8] c"GimpProjectableInterface\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_projectable_invalidate = private unnamed_addr constant [28 x i8] c"gimp_projectable_invalidate\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"GIMP_IS_PROJECTABLE (projectable)\00", align 1
@projectable_signals = internal global [3 x i32] zeroinitializer, align 4
@__func__.gimp_projectable_flush = private unnamed_addr constant [23 x i8] c"gimp_projectable_flush\00", align 1
@__func__.gimp_projectable_structure_changed = private unnamed_addr constant [35 x i8] c"gimp_projectable_structure_changed\00", align 1
@__func__.gimp_projectable_get_image = private unnamed_addr constant [27 x i8] c"gimp_projectable_get_image\00", align 1
@__func__.gimp_projectable_get_image_type = private unnamed_addr constant [32 x i8] c"gimp_projectable_get_image_type\00", align 1
@__func__.gimp_projectable_get_offset = private unnamed_addr constant [28 x i8] c"gimp_projectable_get_offset\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"x != NULL\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"y != NULL\00", align 1
@__func__.gimp_projectable_get_size = private unnamed_addr constant [26 x i8] c"gimp_projectable_get_size\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"width != NULL\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"height != NULL\00", align 1
@__func__.gimp_projectable_get_graph = private unnamed_addr constant [27 x i8] c"gimp_projectable_get_graph\00", align 1
@__func__.gimp_projectable_invalidate_preview = private unnamed_addr constant [36 x i8] c"gimp_projectable_invalidate_preview\00", align 1
@__func__.gimp_projectable_get_layers = private unnamed_addr constant [28 x i8] c"gimp_projectable_get_layers\00", align 1
@__func__.gimp_projectable_get_channels = private unnamed_addr constant [30 x i8] c"gimp_projectable_get_channels\00", align 1
@gimp_projectable_iface_base_init.initialized = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"invalidate\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"structure-changed\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_projectable_interface_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_projectable_interface_get_type.projectable_iface_type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_type_register_static(i64 8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), %struct._GTypeInfo* @gimp_projectable_interface_get_type.projectable_iface_info, i32 0)
  store i64 %call, i64* @gimp_projectable_interface_get_type.projectable_iface_type, align 8
  %1 = load i64, i64* @gimp_projectable_interface_get_type.projectable_iface_type, align 8
  %call1 = call i64 @gimp_viewable_get_type() #5
  call void @g_type_interface_add_prerequisite(i64 %1, i64 %call1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, i64* @gimp_projectable_interface_get_type.projectable_iface_type, align 8
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define internal void @gimp_projectable_iface_base_init(%struct._GimpProjectableInterface* %iface) #1 {
entry:
  %iface.addr = alloca %struct._GimpProjectableInterface*, align 8
  store %struct._GimpProjectableInterface* %iface, %struct._GimpProjectableInterface** %iface.addr, align 8
  %0 = load i32, i32* @gimp_projectable_iface_base_init.initialized, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpProjectableInterface*, %struct._GimpProjectableInterface** %iface.addr, align 8
  %2 = bitcast %struct._GimpProjectableInterface* %1 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %call = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i64 %3, i32 1, i32 16, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @gimp_marshal_VOID__INT_INT_INT_INT, i64 4, i32 4, i64 24, i64 24, i64 24, i64 24)
  store i32 %call, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @projectable_signals, i32 0, i64 0), align 4
  %4 = load %struct._GimpProjectableInterface*, %struct._GimpProjectableInterface** %iface.addr, align 8
  %5 = bitcast %struct._GimpProjectableInterface* %4 to %struct._GTypeClass*
  %g_type1 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %5, i32 0, i32 0
  %6 = load i64, i64* %g_type1, align 8
  %call2 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i64 %6, i32 1, i32 24, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__BOOLEAN, i64 4, i32 1, i64 20)
  store i32 %call2, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @projectable_signals, i32 0, i64 1), align 4
  %7 = load %struct._GimpProjectableInterface*, %struct._GimpProjectableInterface** %iface.addr, align 8
  %8 = bitcast %struct._GimpProjectableInterface* %7 to %struct._GTypeClass*
  %g_type3 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %8, i32 0, i32 0
  %9 = load i64, i64* %g_type3, align 8
  %call4 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i64 %9, i32 1, i32 32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call4, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @projectable_signals, i32 0, i64 2), align 4
  store i32 1, i32* @gimp_projectable_iface_base_init.initialized, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i64 @g_type_register_static(i64, i8*, %struct._GTypeInfo*, i32) #2

declare void @g_type_interface_add_prerequisite(i64, i64) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #3

; Function Attrs: nounwind uwtable
define void @gimp_projectable_invalidate(%struct._GimpProjectable* %projectable, i32 %x, i32 %y, i32 %width, i32 %height) #1 {
entry:
  %projectable.addr = alloca %struct._GimpProjectable*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpProjectable* %projectable, %struct._GimpProjectable** %projectable.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable.addr, align 8
  %1 = bitcast %struct._GimpProjectable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_projectable_interface_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_projectable_invalidate, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable.addr, align 8
  %14 = bitcast %struct._GimpProjectable* %13 to i8*
  %15 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @projectable_signals, i32 0, i64 0), align 4
  %16 = load i32, i32* %x.addr, align 4
  %17 = load i32, i32* %y.addr, align 4
  %18 = load i32, i32* %width.addr, align 4
  %19 = load i32, i32* %height.addr, align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %14, i32 %15, i32 0, i32 %16, i32 %17, i32 %18, i32 %19)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare void @g_signal_emit(i8*, i32, i32, ...) #2

; Function Attrs: nounwind uwtable
define void @gimp_projectable_flush(%struct._GimpProjectable* %projectable, i32 %preview_invalidated) #1 {
entry:
  %projectable.addr = alloca %struct._GimpProjectable*, align 8
  %preview_invalidated.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpProjectable* %projectable, %struct._GimpProjectable** %projectable.addr, align 8
  store i32 %preview_invalidated, i32* %preview_invalidated.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable.addr, align 8
  %1 = bitcast %struct._GimpProjectable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_projectable_interface_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_projectable_flush, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable.addr, align 8
  %14 = bitcast %struct._GimpProjectable* %13 to i8*
  %15 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @projectable_signals, i32 0, i64 1), align 4
  %16 = load i32, i32* %preview_invalidated.addr, align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %14, i32 %15, i32 0, i32 %16)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_projectable_structure_changed(%struct._GimpProjectable* %projectable) #1 {
entry:
  %projectable.addr = alloca %struct._GimpProjectable*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpProjectable* %projectable, %struct._GimpProjectable** %projectable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable.addr, align 8
  %1 = bitcast %struct._GimpProjectable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_projectable_interface_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_projectable_structure_changed, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable.addr, align 8
  %14 = bitcast %struct._GimpProjectable* %13 to i8*
  %15 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @projectable_signals, i32 0, i64 2), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %14, i32 %15, i32 0)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GimpImage* @gimp_projectable_get_image(%struct._GimpProjectable* %projectable) #1 {
entry:
  %retval = alloca %struct._GimpImage*, align 8
  %projectable.addr = alloca %struct._GimpProjectable*, align 8
  %iface = alloca %struct._GimpProjectableInterface*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpProjectable* %projectable, %struct._GimpProjectable** %projectable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable.addr, align 8
  %1 = bitcast %struct._GimpProjectable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_projectable_interface_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_projectable_get_image, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable.addr, align 8
  %14 = bitcast %struct._GimpProjectable* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to i8*
  %call12 = call i64 @gimp_projectable_interface_get_type() #5
  %call13 = call i8* @g_type_interface_peek(i8* %16, i64 %call12)
  %17 = bitcast i8* %call13 to %struct._GimpProjectableInterface*
  store %struct._GimpProjectableInterface* %17, %struct._GimpProjectableInterface** %iface, align 8
  %18 = load %struct._GimpProjectableInterface*, %struct._GimpProjectableInterface** %iface, align 8
  %get_image = getelementptr inbounds %struct._GimpProjectableInterface, %struct._GimpProjectableInterface* %18, i32 0, i32 4
  %19 = load %struct._GimpImage* (%struct._GimpProjectable*)*, %struct._GimpImage* (%struct._GimpProjectable*)** %get_image, align 8
  %tobool14 = icmp ne %struct._GimpImage* (%struct._GimpProjectable*)* %19, null
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %do.end
  %20 = load %struct._GimpProjectableInterface*, %struct._GimpProjectableInterface** %iface, align 8
  %get_image16 = getelementptr inbounds %struct._GimpProjectableInterface, %struct._GimpProjectableInterface* %20, i32 0, i32 4
  %21 = load %struct._GimpImage* (%struct._GimpProjectable*)*, %struct._GimpImage* (%struct._GimpProjectable*)** %get_image16, align 8
  %22 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable.addr, align 8
  %call17 = call %struct._GimpImage* %21(%struct._GimpProjectable* %22)
  store %struct._GimpImage* %call17, %struct._GimpImage** %retval
  br label %return

if.end.18:                                        ; preds = %do.end
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then.15, %if.else.9
  %23 = load %struct._GimpImage*, %struct._GimpImage** %retval
  ret %struct._GimpImage* %23
}

declare i8* @g_type_interface_peek(i8*, i64) #2

; Function Attrs: nounwind uwtable
define i32 @gimp_projectable_get_image_type(%struct._GimpProjectable* %projectable) #1 {
entry:
  %retval = alloca i32, align 4
  %projectable.addr = alloca %struct._GimpProjectable*, align 8
  %iface = alloca %struct._GimpProjectableInterface*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpProjectable* %projectable, %struct._GimpProjectable** %projectable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable.addr, align 8
  %1 = bitcast %struct._GimpProjectable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_projectable_interface_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_projectable_get_image_type, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable.addr, align 8
  %14 = bitcast %struct._GimpProjectable* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to i8*
  %call12 = call i64 @gimp_projectable_interface_get_type() #5
  %call13 = call i8* @g_type_interface_peek(i8* %16, i64 %call12)
  %17 = bitcast i8* %call13 to %struct._GimpProjectableInterface*
  store %struct._GimpProjectableInterface* %17, %struct._GimpProjectableInterface** %iface, align 8
  %18 = load %struct._GimpProjectableInterface*, %struct._GimpProjectableInterface** %iface, align 8
  %get_image_type = getelementptr inbounds %struct._GimpProjectableInterface, %struct._GimpProjectableInterface* %18, i32 0, i32 5
  %19 = load i32 (%struct._GimpProjectable*)*, i32 (%struct._GimpProjectable*)** %get_image_type, align 8
  %tobool14 = icmp ne i32 (%struct._GimpProjectable*)* %19, null
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %do.end
  %20 = load %struct._GimpProjectableInterface*, %struct._GimpProjectableInterface** %iface, align 8
  %get_image_type16 = getelementptr inbounds %struct._GimpProjectableInterface, %struct._GimpProjectableInterface* %20, i32 0, i32 5
  %21 = load i32 (%struct._GimpProjectable*)*, i32 (%struct._GimpProjectable*)** %get_image_type16, align 8
  %22 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable.addr, align 8
  %call17 = call i32 %21(%struct._GimpProjectable* %22)
  store i32 %call17, i32* %retval
  br label %return

if.end.18:                                        ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then.15, %if.else.9
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define void @gimp_projectable_get_offset(%struct._GimpProjectable* %projectable, i32* %x, i32* %y) #1 {
entry:
  %projectable.addr = alloca %struct._GimpProjectable*, align 8
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  %iface = alloca %struct._GimpProjectableInterface*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpProjectable* %projectable, %struct._GimpProjectable** %projectable.addr, align 8
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable.addr, align 8
  %1 = bitcast %struct._GimpProjectable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_projectable_interface_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_projectable_get_offset, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.29

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32*, i32** %x.addr, align 8
  %cmp12 = icmp ne i32* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_projectable_get_offset, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.29

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load i32*, i32** %y.addr, align 8
  %cmp18 = icmp ne i32* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_projectable_get_offset, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.29

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable.addr, align 8
  %16 = bitcast %struct._GimpProjectable* %15 to %struct._GTypeInstance*
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %18 = bitcast %struct._GTypeClass* %17 to i8*
  %call24 = call i64 @gimp_projectable_interface_get_type() #5
  %call25 = call i8* @g_type_interface_peek(i8* %18, i64 %call24)
  %19 = bitcast i8* %call25 to %struct._GimpProjectableInterface*
  store %struct._GimpProjectableInterface* %19, %struct._GimpProjectableInterface** %iface, align 8
  %20 = load i32*, i32** %x.addr, align 8
  store i32 0, i32* %20, align 4
  %21 = load i32*, i32** %y.addr, align 8
  store i32 0, i32* %21, align 4
  %22 = load %struct._GimpProjectableInterface*, %struct._GimpProjectableInterface** %iface, align 8
  %get_offset = getelementptr inbounds %struct._GimpProjectableInterface, %struct._GimpProjectableInterface* %22, i32 0, i32 6
  %23 = load void (%struct._GimpProjectable*, i32*, i32*)*, void (%struct._GimpProjectable*, i32*, i32*)** %get_offset, align 8
  %tobool26 = icmp ne void (%struct._GimpProjectable*, i32*, i32*)* %23, null
  br i1 %tobool26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %do.end.22
  %24 = load %struct._GimpProjectableInterface*, %struct._GimpProjectableInterface** %iface, align 8
  %get_offset28 = getelementptr inbounds %struct._GimpProjectableInterface, %struct._GimpProjectableInterface* %24, i32 0, i32 6
  %25 = load void (%struct._GimpProjectable*, i32*, i32*)*, void (%struct._GimpProjectable*, i32*, i32*)** %get_offset28, align 8
  %26 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable.addr, align 8
  %27 = load i32*, i32** %x.addr, align 8
  %28 = load i32*, i32** %y.addr, align 8
  call void %25(%struct._GimpProjectable* %26, i32* %27, i32* %28)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.9, %if.else.14, %if.else.20, %if.then.27, %do.end.22
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_projectable_get_size(%struct._GimpProjectable* %projectable, i32* %width, i32* %height) #1 {
entry:
  %projectable.addr = alloca %struct._GimpProjectable*, align 8
  %width.addr = alloca i32*, align 8
  %height.addr = alloca i32*, align 8
  %iface = alloca %struct._GimpProjectableInterface*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpProjectable* %projectable, %struct._GimpProjectable** %projectable.addr, align 8
  store i32* %width, i32** %width.addr, align 8
  store i32* %height, i32** %height.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable.addr, align 8
  %1 = bitcast %struct._GimpProjectable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_projectable_interface_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_projectable_get_size, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.29

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32*, i32** %width.addr, align 8
  %cmp12 = icmp ne i32* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_projectable_get_size, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.29

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load i32*, i32** %height.addr, align 8
  %cmp18 = icmp ne i32* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_projectable_get_size, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.29

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable.addr, align 8
  %16 = bitcast %struct._GimpProjectable* %15 to %struct._GTypeInstance*
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %18 = bitcast %struct._GTypeClass* %17 to i8*
  %call24 = call i64 @gimp_projectable_interface_get_type() #5
  %call25 = call i8* @g_type_interface_peek(i8* %18, i64 %call24)
  %19 = bitcast i8* %call25 to %struct._GimpProjectableInterface*
  store %struct._GimpProjectableInterface* %19, %struct._GimpProjectableInterface** %iface, align 8
  %20 = load i32*, i32** %width.addr, align 8
  store i32 0, i32* %20, align 4
  %21 = load i32*, i32** %height.addr, align 8
  store i32 0, i32* %21, align 4
  %22 = load %struct._GimpProjectableInterface*, %struct._GimpProjectableInterface** %iface, align 8
  %get_size = getelementptr inbounds %struct._GimpProjectableInterface, %struct._GimpProjectableInterface* %22, i32 0, i32 7
  %23 = load void (%struct._GimpProjectable*, i32*, i32*)*, void (%struct._GimpProjectable*, i32*, i32*)** %get_size, align 8
  %tobool26 = icmp ne void (%struct._GimpProjectable*, i32*, i32*)* %23, null
  br i1 %tobool26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %do.end.22
  %24 = load %struct._GimpProjectableInterface*, %struct._GimpProjectableInterface** %iface, align 8
  %get_size28 = getelementptr inbounds %struct._GimpProjectableInterface, %struct._GimpProjectableInterface* %24, i32 0, i32 7
  %25 = load void (%struct._GimpProjectable*, i32*, i32*)*, void (%struct._GimpProjectable*, i32*, i32*)** %get_size28, align 8
  %26 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable.addr, align 8
  %27 = load i32*, i32** %width.addr, align 8
  %28 = load i32*, i32** %height.addr, align 8
  call void %25(%struct._GimpProjectable* %26, i32* %27, i32* %28)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.9, %if.else.14, %if.else.20, %if.then.27, %do.end.22
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GeglNode* @gimp_projectable_get_graph(%struct._GimpProjectable* %projectable) #1 {
entry:
  %retval = alloca %struct._GeglNode*, align 8
  %projectable.addr = alloca %struct._GimpProjectable*, align 8
  %iface = alloca %struct._GimpProjectableInterface*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpProjectable* %projectable, %struct._GimpProjectable** %projectable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable.addr, align 8
  %1 = bitcast %struct._GimpProjectable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_projectable_interface_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_projectable_get_graph, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GeglNode* null, %struct._GeglNode** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable.addr, align 8
  %14 = bitcast %struct._GimpProjectable* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to i8*
  %call12 = call i64 @gimp_projectable_interface_get_type() #5
  %call13 = call i8* @g_type_interface_peek(i8* %16, i64 %call12)
  %17 = bitcast i8* %call13 to %struct._GimpProjectableInterface*
  store %struct._GimpProjectableInterface* %17, %struct._GimpProjectableInterface** %iface, align 8
  %18 = load %struct._GimpProjectableInterface*, %struct._GimpProjectableInterface** %iface, align 8
  %get_graph = getelementptr inbounds %struct._GimpProjectableInterface, %struct._GimpProjectableInterface* %18, i32 0, i32 8
  %19 = load %struct._GeglNode* (%struct._GimpProjectable*)*, %struct._GeglNode* (%struct._GimpProjectable*)** %get_graph, align 8
  %tobool14 = icmp ne %struct._GeglNode* (%struct._GimpProjectable*)* %19, null
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %do.end
  %20 = load %struct._GimpProjectableInterface*, %struct._GimpProjectableInterface** %iface, align 8
  %get_graph16 = getelementptr inbounds %struct._GimpProjectableInterface, %struct._GimpProjectableInterface* %20, i32 0, i32 8
  %21 = load %struct._GeglNode* (%struct._GimpProjectable*)*, %struct._GeglNode* (%struct._GimpProjectable*)** %get_graph16, align 8
  %22 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable.addr, align 8
  %call17 = call %struct._GeglNode* %21(%struct._GimpProjectable* %22)
  store %struct._GeglNode* %call17, %struct._GeglNode** %retval
  br label %return

if.end.18:                                        ; preds = %do.end
  store %struct._GeglNode* null, %struct._GeglNode** %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then.15, %if.else.9
  %23 = load %struct._GeglNode*, %struct._GeglNode** %retval
  ret %struct._GeglNode* %23
}

; Function Attrs: nounwind uwtable
define void @gimp_projectable_invalidate_preview(%struct._GimpProjectable* %projectable) #1 {
entry:
  %projectable.addr = alloca %struct._GimpProjectable*, align 8
  %iface = alloca %struct._GimpProjectableInterface*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpProjectable* %projectable, %struct._GimpProjectable** %projectable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable.addr, align 8
  %1 = bitcast %struct._GimpProjectable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_projectable_interface_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_projectable_invalidate_preview, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.17

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable.addr, align 8
  %14 = bitcast %struct._GimpProjectable* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to i8*
  %call12 = call i64 @gimp_projectable_interface_get_type() #5
  %call13 = call i8* @g_type_interface_peek(i8* %16, i64 %call12)
  %17 = bitcast i8* %call13 to %struct._GimpProjectableInterface*
  store %struct._GimpProjectableInterface* %17, %struct._GimpProjectableInterface** %iface, align 8
  %18 = load %struct._GimpProjectableInterface*, %struct._GimpProjectableInterface** %iface, align 8
  %invalidate_preview = getelementptr inbounds %struct._GimpProjectableInterface, %struct._GimpProjectableInterface* %18, i32 0, i32 9
  %19 = load void (%struct._GimpProjectable*)*, void (%struct._GimpProjectable*)** %invalidate_preview, align 8
  %tobool14 = icmp ne void (%struct._GimpProjectable*)* %19, null
  br i1 %tobool14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %do.end
  %20 = load %struct._GimpProjectableInterface*, %struct._GimpProjectableInterface** %iface, align 8
  %invalidate_preview16 = getelementptr inbounds %struct._GimpProjectableInterface, %struct._GimpProjectableInterface* %20, i32 0, i32 9
  %21 = load void (%struct._GimpProjectable*)*, void (%struct._GimpProjectable*)** %invalidate_preview16, align 8
  %22 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable.addr, align 8
  call void %21(%struct._GimpProjectable* %22)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.9, %if.then.15, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_projectable_get_layers(%struct._GimpProjectable* %projectable) #1 {
entry:
  %retval = alloca %struct._GList*, align 8
  %projectable.addr = alloca %struct._GimpProjectable*, align 8
  %iface = alloca %struct._GimpProjectableInterface*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpProjectable* %projectable, %struct._GimpProjectable** %projectable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable.addr, align 8
  %1 = bitcast %struct._GimpProjectable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_projectable_interface_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_projectable_get_layers, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable.addr, align 8
  %14 = bitcast %struct._GimpProjectable* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to i8*
  %call12 = call i64 @gimp_projectable_interface_get_type() #5
  %call13 = call i8* @g_type_interface_peek(i8* %16, i64 %call12)
  %17 = bitcast i8* %call13 to %struct._GimpProjectableInterface*
  store %struct._GimpProjectableInterface* %17, %struct._GimpProjectableInterface** %iface, align 8
  %18 = load %struct._GimpProjectableInterface*, %struct._GimpProjectableInterface** %iface, align 8
  %get_layers = getelementptr inbounds %struct._GimpProjectableInterface, %struct._GimpProjectableInterface* %18, i32 0, i32 10
  %19 = load %struct._GList* (%struct._GimpProjectable*)*, %struct._GList* (%struct._GimpProjectable*)** %get_layers, align 8
  %tobool14 = icmp ne %struct._GList* (%struct._GimpProjectable*)* %19, null
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %do.end
  %20 = load %struct._GimpProjectableInterface*, %struct._GimpProjectableInterface** %iface, align 8
  %get_layers16 = getelementptr inbounds %struct._GimpProjectableInterface, %struct._GimpProjectableInterface* %20, i32 0, i32 10
  %21 = load %struct._GList* (%struct._GimpProjectable*)*, %struct._GList* (%struct._GimpProjectable*)** %get_layers16, align 8
  %22 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable.addr, align 8
  %call17 = call %struct._GList* %21(%struct._GimpProjectable* %22)
  store %struct._GList* %call17, %struct._GList** %retval
  br label %return

if.end.18:                                        ; preds = %do.end
  store %struct._GList* null, %struct._GList** %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then.15, %if.else.9
  %23 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %23
}

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_projectable_get_channels(%struct._GimpProjectable* %projectable) #1 {
entry:
  %retval = alloca %struct._GList*, align 8
  %projectable.addr = alloca %struct._GimpProjectable*, align 8
  %iface = alloca %struct._GimpProjectableInterface*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpProjectable* %projectable, %struct._GimpProjectable** %projectable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable.addr, align 8
  %1 = bitcast %struct._GimpProjectable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_projectable_interface_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_projectable_get_channels, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable.addr, align 8
  %14 = bitcast %struct._GimpProjectable* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to i8*
  %call12 = call i64 @gimp_projectable_interface_get_type() #5
  %call13 = call i8* @g_type_interface_peek(i8* %16, i64 %call12)
  %17 = bitcast i8* %call13 to %struct._GimpProjectableInterface*
  store %struct._GimpProjectableInterface* %17, %struct._GimpProjectableInterface** %iface, align 8
  %18 = load %struct._GimpProjectableInterface*, %struct._GimpProjectableInterface** %iface, align 8
  %get_channels = getelementptr inbounds %struct._GimpProjectableInterface, %struct._GimpProjectableInterface* %18, i32 0, i32 11
  %19 = load %struct._GList* (%struct._GimpProjectable*)*, %struct._GList* (%struct._GimpProjectable*)** %get_channels, align 8
  %tobool14 = icmp ne %struct._GList* (%struct._GimpProjectable*)* %19, null
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %do.end
  %20 = load %struct._GimpProjectableInterface*, %struct._GimpProjectableInterface** %iface, align 8
  %get_channels16 = getelementptr inbounds %struct._GimpProjectableInterface, %struct._GimpProjectableInterface* %20, i32 0, i32 11
  %21 = load %struct._GList* (%struct._GimpProjectable*)*, %struct._GList* (%struct._GimpProjectable*)** %get_channels16, align 8
  %22 = load %struct._GimpProjectable*, %struct._GimpProjectable** %projectable.addr, align 8
  %call17 = call %struct._GList* %21(%struct._GimpProjectable* %22)
  store %struct._GList* %call17, %struct._GList** %retval
  br label %return

if.end.18:                                        ; preds = %do.end
  store %struct._GList* null, %struct._GList** %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then.15, %if.else.9
  %23 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %23
}

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #2

declare void @gimp_marshal_VOID__INT_INT_INT_INT(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #2

declare void @g_cclosure_marshal_VOID__BOOLEAN(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #2

declare void @g_cclosure_marshal_VOID__VOID(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #2

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
