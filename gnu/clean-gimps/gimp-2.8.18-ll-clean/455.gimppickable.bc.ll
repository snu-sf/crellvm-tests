; ModuleID = './app/core/gimppickable.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInfo = type { i16, void (i8*)*, void (i8*)*, void (i8*, i8*)*, void (i8*, i8*)*, i8*, i16, i16, void (%struct._GTypeInstance*, i8*)*, %struct._GTypeValueTable* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GTypeValueTable = type { void (%struct._GValue*)*, void (%struct._GValue*)*, void (%struct._GValue*, %struct._GValue*)*, i8* (%struct._GValue*)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%union._GTypeCValue = type opaque
%struct._GimpPickable = type opaque
%struct._GimpPickableInterface = type { %struct._GTypeInterface, void (%struct._GimpPickable*)*, %struct._GimpImage* (%struct._GimpPickable*)*, i32 (%struct._GimpPickable*)*, i32 (%struct._GimpPickable*)*, %struct._TileManager* (%struct._GimpPickable*)*, i32 (%struct._GimpPickable*, i32, i32, i8*)*, i32 (%struct._GimpPickable*, i32, i32)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type opaque
%struct._TileManager = type opaque
%struct._GimpRGB = type { double, double, double, double }

@gimp_pickable_interface_get_type.pickable_iface_type = internal global i64 0, align 8
@gimp_pickable_interface_get_type.pickable_iface_info = internal constant %struct._GTypeInfo { i16 72, void (i8*)* null, void (i8*)* null, void (i8*, i8*)* null, void (i8*, i8*)* null, i8* null, i16 0, i16 0, void (%struct._GTypeInstance*, i8*)* null, %struct._GTypeValueTable* null }, align 8
@.str = private unnamed_addr constant [22 x i8] c"GimpPickableInterface\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_pickable_flush = private unnamed_addr constant [20 x i8] c"gimp_pickable_flush\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"GIMP_IS_PICKABLE (pickable)\00", align 1
@__func__.gimp_pickable_get_image = private unnamed_addr constant [24 x i8] c"gimp_pickable_get_image\00", align 1
@__func__.gimp_pickable_get_image_type = private unnamed_addr constant [29 x i8] c"gimp_pickable_get_image_type\00", align 1
@__func__.gimp_pickable_get_bytes = private unnamed_addr constant [24 x i8] c"gimp_pickable_get_bytes\00", align 1
@__func__.gimp_pickable_get_tiles = private unnamed_addr constant [24 x i8] c"gimp_pickable_get_tiles\00", align 1
@__func__.gimp_pickable_get_pixel_at = private unnamed_addr constant [27 x i8] c"gimp_pickable_get_pixel_at\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"pixel != NULL\00", align 1
@__func__.gimp_pickable_get_color_at = private unnamed_addr constant [27 x i8] c"gimp_pickable_get_color_at\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"color != NULL\00", align 1
@__func__.gimp_pickable_get_opacity_at = private unnamed_addr constant [29 x i8] c"gimp_pickable_get_opacity_at\00", align 1
@__func__.gimp_pickable_pick_color = private unnamed_addr constant [25 x i8] c"gimp_pickable_pick_color\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_pickable_interface_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_pickable_interface_get_type.pickable_iface_type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_type_register_static(i64 8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), %struct._GTypeInfo* @gimp_pickable_interface_get_type.pickable_iface_info, i32 0)
  store i64 %call, i64* @gimp_pickable_interface_get_type.pickable_iface_type, align 8
  %1 = load i64, i64* @gimp_pickable_interface_get_type.pickable_iface_type, align 8
  %call1 = call i64 @gimp_object_get_type() #6
  call void @g_type_interface_add_prerequisite(i64 %1, i64 %call1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, i64* @gimp_pickable_interface_get_type.pickable_iface_type, align 8
  ret i64 %2
}

declare i64 @g_type_register_static(i64, i8*, %struct._GTypeInfo*, i32) #1

declare void @g_type_interface_add_prerequisite(i64, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_pickable_flush(%struct._GimpPickable* %pickable) #3 {
entry:
  %pickable.addr = alloca %struct._GimpPickable*, align 8
  %pickable_iface = alloca %struct._GimpPickableInterface*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPickable* %pickable, %struct._GimpPickable** %pickable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %1 = bitcast %struct._GimpPickable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_pickable_interface_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_pickable_flush, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.17

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %14 = bitcast %struct._GimpPickable* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to i8*
  %call12 = call i64 @gimp_pickable_interface_get_type() #6
  %call13 = call i8* @g_type_interface_peek(i8* %16, i64 %call12)
  %17 = bitcast i8* %call13 to %struct._GimpPickableInterface*
  store %struct._GimpPickableInterface* %17, %struct._GimpPickableInterface** %pickable_iface, align 8
  %18 = load %struct._GimpPickableInterface*, %struct._GimpPickableInterface** %pickable_iface, align 8
  %flush = getelementptr inbounds %struct._GimpPickableInterface, %struct._GimpPickableInterface* %18, i32 0, i32 1
  %19 = load void (%struct._GimpPickable*)*, void (%struct._GimpPickable*)** %flush, align 8
  %tobool14 = icmp ne void (%struct._GimpPickable*)* %19, null
  br i1 %tobool14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %do.end
  %20 = load %struct._GimpPickableInterface*, %struct._GimpPickableInterface** %pickable_iface, align 8
  %flush16 = getelementptr inbounds %struct._GimpPickableInterface, %struct._GimpPickableInterface* %20, i32 0, i32 1
  %21 = load void (%struct._GimpPickable*)*, void (%struct._GimpPickable*)** %flush16, align 8
  %22 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  call void %21(%struct._GimpPickable* %22)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.9, %if.then.15, %do.end
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_type_interface_peek(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpImage* @gimp_pickable_get_image(%struct._GimpPickable* %pickable) #3 {
entry:
  %retval = alloca %struct._GimpImage*, align 8
  %pickable.addr = alloca %struct._GimpPickable*, align 8
  %pickable_iface = alloca %struct._GimpPickableInterface*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPickable* %pickable, %struct._GimpPickable** %pickable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %1 = bitcast %struct._GimpPickable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_pickable_interface_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_pickable_get_image, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %14 = bitcast %struct._GimpPickable* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to i8*
  %call12 = call i64 @gimp_pickable_interface_get_type() #6
  %call13 = call i8* @g_type_interface_peek(i8* %16, i64 %call12)
  %17 = bitcast i8* %call13 to %struct._GimpPickableInterface*
  store %struct._GimpPickableInterface* %17, %struct._GimpPickableInterface** %pickable_iface, align 8
  %18 = load %struct._GimpPickableInterface*, %struct._GimpPickableInterface** %pickable_iface, align 8
  %get_image = getelementptr inbounds %struct._GimpPickableInterface, %struct._GimpPickableInterface* %18, i32 0, i32 2
  %19 = load %struct._GimpImage* (%struct._GimpPickable*)*, %struct._GimpImage* (%struct._GimpPickable*)** %get_image, align 8
  %tobool14 = icmp ne %struct._GimpImage* (%struct._GimpPickable*)* %19, null
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %do.end
  %20 = load %struct._GimpPickableInterface*, %struct._GimpPickableInterface** %pickable_iface, align 8
  %get_image16 = getelementptr inbounds %struct._GimpPickableInterface, %struct._GimpPickableInterface* %20, i32 0, i32 2
  %21 = load %struct._GimpImage* (%struct._GimpPickable*)*, %struct._GimpImage* (%struct._GimpPickable*)** %get_image16, align 8
  %22 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %call17 = call %struct._GimpImage* %21(%struct._GimpPickable* %22)
  store %struct._GimpImage* %call17, %struct._GimpImage** %retval
  br label %return

if.end.18:                                        ; preds = %do.end
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then.15, %if.else.9
  %23 = load %struct._GimpImage*, %struct._GimpImage** %retval
  ret %struct._GimpImage* %23
}

; Function Attrs: nounwind uwtable
define i32 @gimp_pickable_get_image_type(%struct._GimpPickable* %pickable) #3 {
entry:
  %retval = alloca i32, align 4
  %pickable.addr = alloca %struct._GimpPickable*, align 8
  %pickable_iface = alloca %struct._GimpPickableInterface*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPickable* %pickable, %struct._GimpPickable** %pickable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %1 = bitcast %struct._GimpPickable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_pickable_interface_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_pickable_get_image_type, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %14 = bitcast %struct._GimpPickable* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to i8*
  %call12 = call i64 @gimp_pickable_interface_get_type() #6
  %call13 = call i8* @g_type_interface_peek(i8* %16, i64 %call12)
  %17 = bitcast i8* %call13 to %struct._GimpPickableInterface*
  store %struct._GimpPickableInterface* %17, %struct._GimpPickableInterface** %pickable_iface, align 8
  %18 = load %struct._GimpPickableInterface*, %struct._GimpPickableInterface** %pickable_iface, align 8
  %get_image_type = getelementptr inbounds %struct._GimpPickableInterface, %struct._GimpPickableInterface* %18, i32 0, i32 3
  %19 = load i32 (%struct._GimpPickable*)*, i32 (%struct._GimpPickable*)** %get_image_type, align 8
  %tobool14 = icmp ne i32 (%struct._GimpPickable*)* %19, null
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %do.end
  %20 = load %struct._GimpPickableInterface*, %struct._GimpPickableInterface** %pickable_iface, align 8
  %get_image_type16 = getelementptr inbounds %struct._GimpPickableInterface, %struct._GimpPickableInterface* %20, i32 0, i32 3
  %21 = load i32 (%struct._GimpPickable*)*, i32 (%struct._GimpPickable*)** %get_image_type16, align 8
  %22 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %call17 = call i32 %21(%struct._GimpPickable* %22)
  store i32 %call17, i32* %retval
  br label %return

if.end.18:                                        ; preds = %do.end
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then.15, %if.else.9
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define i32 @gimp_pickable_get_bytes(%struct._GimpPickable* %pickable) #3 {
entry:
  %retval = alloca i32, align 4
  %pickable.addr = alloca %struct._GimpPickable*, align 8
  %pickable_iface = alloca %struct._GimpPickableInterface*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPickable* %pickable, %struct._GimpPickable** %pickable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %1 = bitcast %struct._GimpPickable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_pickable_interface_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_pickable_get_bytes, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %14 = bitcast %struct._GimpPickable* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to i8*
  %call12 = call i64 @gimp_pickable_interface_get_type() #6
  %call13 = call i8* @g_type_interface_peek(i8* %16, i64 %call12)
  %17 = bitcast i8* %call13 to %struct._GimpPickableInterface*
  store %struct._GimpPickableInterface* %17, %struct._GimpPickableInterface** %pickable_iface, align 8
  %18 = load %struct._GimpPickableInterface*, %struct._GimpPickableInterface** %pickable_iface, align 8
  %get_bytes = getelementptr inbounds %struct._GimpPickableInterface, %struct._GimpPickableInterface* %18, i32 0, i32 4
  %19 = load i32 (%struct._GimpPickable*)*, i32 (%struct._GimpPickable*)** %get_bytes, align 8
  %tobool14 = icmp ne i32 (%struct._GimpPickable*)* %19, null
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %do.end
  %20 = load %struct._GimpPickableInterface*, %struct._GimpPickableInterface** %pickable_iface, align 8
  %get_bytes16 = getelementptr inbounds %struct._GimpPickableInterface, %struct._GimpPickableInterface* %20, i32 0, i32 4
  %21 = load i32 (%struct._GimpPickable*)*, i32 (%struct._GimpPickable*)** %get_bytes16, align 8
  %22 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %call17 = call i32 %21(%struct._GimpPickable* %22)
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
define %struct._TileManager* @gimp_pickable_get_tiles(%struct._GimpPickable* %pickable) #3 {
entry:
  %retval = alloca %struct._TileManager*, align 8
  %pickable.addr = alloca %struct._GimpPickable*, align 8
  %pickable_iface = alloca %struct._GimpPickableInterface*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPickable* %pickable, %struct._GimpPickable** %pickable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %1 = bitcast %struct._GimpPickable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_pickable_interface_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_pickable_get_tiles, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  store %struct._TileManager* null, %struct._TileManager** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %14 = bitcast %struct._GimpPickable* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to i8*
  %call12 = call i64 @gimp_pickable_interface_get_type() #6
  %call13 = call i8* @g_type_interface_peek(i8* %16, i64 %call12)
  %17 = bitcast i8* %call13 to %struct._GimpPickableInterface*
  store %struct._GimpPickableInterface* %17, %struct._GimpPickableInterface** %pickable_iface, align 8
  %18 = load %struct._GimpPickableInterface*, %struct._GimpPickableInterface** %pickable_iface, align 8
  %get_tiles = getelementptr inbounds %struct._GimpPickableInterface, %struct._GimpPickableInterface* %18, i32 0, i32 5
  %19 = load %struct._TileManager* (%struct._GimpPickable*)*, %struct._TileManager* (%struct._GimpPickable*)** %get_tiles, align 8
  %tobool14 = icmp ne %struct._TileManager* (%struct._GimpPickable*)* %19, null
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %do.end
  %20 = load %struct._GimpPickableInterface*, %struct._GimpPickableInterface** %pickable_iface, align 8
  %get_tiles16 = getelementptr inbounds %struct._GimpPickableInterface, %struct._GimpPickableInterface* %20, i32 0, i32 5
  %21 = load %struct._TileManager* (%struct._GimpPickable*)*, %struct._TileManager* (%struct._GimpPickable*)** %get_tiles16, align 8
  %22 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %call17 = call %struct._TileManager* %21(%struct._GimpPickable* %22)
  store %struct._TileManager* %call17, %struct._TileManager** %retval
  br label %return

if.end.18:                                        ; preds = %do.end
  store %struct._TileManager* null, %struct._TileManager** %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then.15, %if.else.9
  %23 = load %struct._TileManager*, %struct._TileManager** %retval
  ret %struct._TileManager* %23
}

; Function Attrs: nounwind uwtable
define i32 @gimp_pickable_get_pixel_at(%struct._GimpPickable* %pickable, i32 %x, i32 %y, i8* %pixel) #3 {
entry:
  %retval = alloca i32, align 4
  %pickable.addr = alloca %struct._GimpPickable*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %pixel.addr = alloca i8*, align 8
  %pickable_iface = alloca %struct._GimpPickableInterface*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPickable* %pickable, %struct._GimpPickable** %pickable.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i8* %pixel, i8** %pixel.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %1 = bitcast %struct._GimpPickable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_pickable_interface_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_pickable_get_pixel_at, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %pixel.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_pickable_get_pixel_at, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %15 = bitcast %struct._GimpPickable* %14 to %struct._GTypeInstance*
  %g_class17 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %15, i32 0, i32 0
  %16 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class17, align 8
  %17 = bitcast %struct._GTypeClass* %16 to i8*
  %call18 = call i64 @gimp_pickable_interface_get_type() #6
  %call19 = call i8* @g_type_interface_peek(i8* %17, i64 %call18)
  %18 = bitcast i8* %call19 to %struct._GimpPickableInterface*
  store %struct._GimpPickableInterface* %18, %struct._GimpPickableInterface** %pickable_iface, align 8
  %19 = load %struct._GimpPickableInterface*, %struct._GimpPickableInterface** %pickable_iface, align 8
  %get_pixel_at = getelementptr inbounds %struct._GimpPickableInterface, %struct._GimpPickableInterface* %19, i32 0, i32 6
  %20 = load i32 (%struct._GimpPickable*, i32, i32, i8*)*, i32 (%struct._GimpPickable*, i32, i32, i8*)** %get_pixel_at, align 8
  %tobool20 = icmp ne i32 (%struct._GimpPickable*, i32, i32, i8*)* %20, null
  br i1 %tobool20, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %do.end.16
  %21 = load %struct._GimpPickableInterface*, %struct._GimpPickableInterface** %pickable_iface, align 8
  %get_pixel_at22 = getelementptr inbounds %struct._GimpPickableInterface, %struct._GimpPickableInterface* %21, i32 0, i32 6
  %22 = load i32 (%struct._GimpPickable*, i32, i32, i8*)*, i32 (%struct._GimpPickable*, i32, i32, i8*)** %get_pixel_at22, align 8
  %23 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %24 = load i32, i32* %x.addr, align 4
  %25 = load i32, i32* %y.addr, align 4
  %26 = load i8*, i8** %pixel.addr, align 8
  %call23 = call i32 %22(%struct._GimpPickable* %23, i32 %24, i32 %25, i8* %26)
  store i32 %call23, i32* %retval
  br label %return

if.end.24:                                        ; preds = %do.end.16
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then.21, %if.else.14, %if.else.9
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define i32 @gimp_pickable_get_color_at(%struct._GimpPickable* %pickable, i32 %x, i32 %y, %struct._GimpRGB* %color) #3 {
entry:
  %retval = alloca i32, align 4
  %pickable.addr = alloca %struct._GimpPickable*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  %pixel = alloca [4 x i8], align 1
  %col = alloca [4 x i8], align 1
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPickable* %pickable, %struct._GimpPickable** %pickable.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %1 = bitcast %struct._GimpPickable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_pickable_interface_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_pickable_get_color_at, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %cmp12 = icmp ne %struct._GimpRGB* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_pickable_get_color_at, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %15 = load i32, i32* %x.addr, align 4
  %16 = load i32, i32* %y.addr, align 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i32 0
  %call17 = call i32 @gimp_pickable_get_pixel_at(%struct._GimpPickable* %14, i32 %15, i32 %16, i8* %arraydecay)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %do.end.16
  store i32 0, i32* %retval
  br label %return

if.end.20:                                        ; preds = %do.end.16
  %17 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %call21 = call %struct._GimpImage* @gimp_pickable_get_image(%struct._GimpPickable* %17)
  %18 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %call22 = call i32 @gimp_pickable_get_image_type(%struct._GimpPickable* %18)
  %arraydecay23 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i32 0
  %arraydecay24 = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i32 0
  call void @gimp_image_get_color(%struct._GimpImage* %call21, i32 %call22, i8* %arraydecay23, i8* %arraydecay24)
  %19 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i64 0
  %20 = load i8, i8* %arrayidx, align 1
  %arrayidx25 = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i64 1
  %21 = load i8, i8* %arrayidx25, align 1
  %arrayidx26 = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i64 2
  %22 = load i8, i8* %arrayidx26, align 1
  %arrayidx27 = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i64 3
  %23 = load i8, i8* %arrayidx27, align 1
  call void @gimp_rgba_set_uchar(%struct._GimpRGB* %19, i8 zeroext %20, i8 zeroext %21, i8 zeroext %22, i8 zeroext %23)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.then.19, %if.else.14, %if.else.9
  %24 = load i32, i32* %retval
  ret i32 %24
}

declare void @gimp_image_get_color(%struct._GimpImage*, i32, i8*, i8*) #1

declare void @gimp_rgba_set_uchar(%struct._GimpRGB*, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_pickable_get_opacity_at(%struct._GimpPickable* %pickable, i32 %x, i32 %y) #3 {
entry:
  %retval = alloca i32, align 4
  %pickable.addr = alloca %struct._GimpPickable*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %pickable_iface = alloca %struct._GimpPickableInterface*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPickable* %pickable, %struct._GimpPickable** %pickable.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %1 = bitcast %struct._GimpPickable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_pickable_interface_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_pickable_get_opacity_at, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %14 = bitcast %struct._GimpPickable* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to i8*
  %call12 = call i64 @gimp_pickable_interface_get_type() #6
  %call13 = call i8* @g_type_interface_peek(i8* %16, i64 %call12)
  %17 = bitcast i8* %call13 to %struct._GimpPickableInterface*
  store %struct._GimpPickableInterface* %17, %struct._GimpPickableInterface** %pickable_iface, align 8
  %18 = load %struct._GimpPickableInterface*, %struct._GimpPickableInterface** %pickable_iface, align 8
  %get_opacity_at = getelementptr inbounds %struct._GimpPickableInterface, %struct._GimpPickableInterface* %18, i32 0, i32 7
  %19 = load i32 (%struct._GimpPickable*, i32, i32)*, i32 (%struct._GimpPickable*, i32, i32)** %get_opacity_at, align 8
  %tobool14 = icmp ne i32 (%struct._GimpPickable*, i32, i32)* %19, null
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %do.end
  %20 = load %struct._GimpPickableInterface*, %struct._GimpPickableInterface** %pickable_iface, align 8
  %get_opacity_at16 = getelementptr inbounds %struct._GimpPickableInterface, %struct._GimpPickableInterface* %20, i32 0, i32 7
  %21 = load i32 (%struct._GimpPickable*, i32, i32)*, i32 (%struct._GimpPickable*, i32, i32)** %get_opacity_at16, align 8
  %22 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %23 = load i32, i32* %x.addr, align 4
  %24 = load i32, i32* %y.addr, align 4
  %call17 = call i32 %21(%struct._GimpPickable* %22, i32 %23, i32 %24)
  store i32 %call17, i32* %retval
  br label %return

if.end.18:                                        ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then.15, %if.else.9
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define i32 @gimp_pickable_pick_color(%struct._GimpPickable* %pickable, i32 %x, i32 %y, i32 %sample_average, double %average_radius, %struct._GimpRGB* %color, i32* %color_index) #3 {
entry:
  %retval = alloca i32, align 4
  %pickable.addr = alloca %struct._GimpPickable*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %sample_average.addr = alloca i32, align 4
  %average_radius.addr = alloca double, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %color_index.addr = alloca i32*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %type = alloca i32, align 4
  %pixel = alloca [4 x i8], align 1
  %col = alloca [4 x i8], align 1
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %count = alloca i32, align 4
  %color_avg = alloca [4 x i32], align 16
  %radius = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct._GimpPickable* %pickable, %struct._GimpPickable** %pickable.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %sample_average, i32* %sample_average.addr, align 4
  store double %average_radius, double* %average_radius.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i32* %color_index, i32** %color_index.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %1 = bitcast %struct._GimpPickable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_pickable_interface_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_pickable_pick_color, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %14 = load i32, i32* %x.addr, align 4
  %15 = load i32, i32* %y.addr, align 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i32 0
  %call11 = call i32 @gimp_pickable_get_pixel_at(%struct._GimpPickable* %13, i32 %14, i32 %15, i8* %arraydecay)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %do.end
  %16 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %call15 = call %struct._GimpImage* @gimp_pickable_get_image(%struct._GimpPickable* %16)
  store %struct._GimpImage* %call15, %struct._GimpImage** %image, align 8
  %17 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %call16 = call i32 @gimp_pickable_get_image_type(%struct._GimpPickable* %17)
  store i32 %call16, i32* %type, align 4
  %18 = load i32, i32* %sample_average.addr, align 4
  %tobool17 = icmp ne i32 %18, 0
  br i1 %tobool17, label %if.then.18, label %if.else.81

if.then.18:                                       ; preds = %if.end.14
  store i32 0, i32* %count, align 4
  %19 = bitcast [4 x i32]* %color_avg to i8*
  call void @llvm.memset.p0i8.i64(i8* %19, i8 0, i64 16, i32 16, i1 false)
  %20 = load double, double* %average_radius.addr, align 8
  %conv = fptosi double %20 to i32
  store i32 %conv, i32* %radius, align 4
  %21 = load i32, i32* %x.addr, align 4
  %22 = load i32, i32* %radius, align 4
  %sub = sub nsw i32 %21, %22
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.55, %if.then.18
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %x.addr, align 4
  %25 = load i32, i32* %radius, align 4
  %add = add nsw i32 %24, %25
  %cmp24 = icmp sle i32 %23, %add
  br i1 %cmp24, label %for.body, label %for.end.57

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %y.addr, align 4
  %27 = load i32, i32* %radius, align 4
  %sub26 = sub nsw i32 %26, %27
  store i32 %sub26, i32* %j, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc, %for.body
  %28 = load i32, i32* %j, align 4
  %29 = load i32, i32* %y.addr, align 4
  %30 = load i32, i32* %radius, align 4
  %add28 = add nsw i32 %29, %30
  %cmp29 = icmp sle i32 %28, %add28
  br i1 %cmp29, label %for.body.31, label %for.end

for.body.31:                                      ; preds = %for.cond.27
  %31 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %32 = load i32, i32* %i, align 4
  %33 = load i32, i32* %j, align 4
  %arraydecay32 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i32 0
  %call33 = call i32 @gimp_pickable_get_pixel_at(%struct._GimpPickable* %31, i32 %32, i32 %33, i8* %arraydecay32)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then.35, label %if.end.53

if.then.35:                                       ; preds = %for.body.31
  %34 = load i32, i32* %count, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %count, align 4
  %35 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %36 = load i32, i32* %type, align 4
  %arraydecay36 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i32 0
  %arraydecay37 = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i32 0
  call void @gimp_image_get_color(%struct._GimpImage* %35, i32 %36, i8* %arraydecay36, i8* %arraydecay37)
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i64 0
  %37 = load i8, i8* %arrayidx, align 1
  %conv38 = zext i8 %37 to i32
  %arrayidx39 = getelementptr inbounds [4 x i32], [4 x i32]* %color_avg, i32 0, i64 0
  %38 = load i32, i32* %arrayidx39, align 4
  %add40 = add nsw i32 %38, %conv38
  store i32 %add40, i32* %arrayidx39, align 4
  %arrayidx41 = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i64 1
  %39 = load i8, i8* %arrayidx41, align 1
  %conv42 = zext i8 %39 to i32
  %arrayidx43 = getelementptr inbounds [4 x i32], [4 x i32]* %color_avg, i32 0, i64 1
  %40 = load i32, i32* %arrayidx43, align 4
  %add44 = add nsw i32 %40, %conv42
  store i32 %add44, i32* %arrayidx43, align 4
  %arrayidx45 = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i64 2
  %41 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %41 to i32
  %arrayidx47 = getelementptr inbounds [4 x i32], [4 x i32]* %color_avg, i32 0, i64 2
  %42 = load i32, i32* %arrayidx47, align 4
  %add48 = add nsw i32 %42, %conv46
  store i32 %add48, i32* %arrayidx47, align 4
  %arrayidx49 = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i64 3
  %43 = load i8, i8* %arrayidx49, align 1
  %conv50 = zext i8 %43 to i32
  %arrayidx51 = getelementptr inbounds [4 x i32], [4 x i32]* %color_avg, i32 0, i64 3
  %44 = load i32, i32* %arrayidx51, align 4
  %add52 = add nsw i32 %44, %conv50
  store i32 %add52, i32* %arrayidx51, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.35, %for.body.31
  br label %for.inc

for.inc:                                          ; preds = %if.end.53
  %45 = load i32, i32* %j, align 4
  %inc54 = add nsw i32 %45, 1
  store i32 %inc54, i32* %j, align 4
  br label %for.cond.27

for.end:                                          ; preds = %for.cond.27
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.end
  %46 = load i32, i32* %i, align 4
  %inc56 = add nsw i32 %46, 1
  store i32 %inc56, i32* %i, align 4
  br label %for.cond

for.end.57:                                       ; preds = %for.cond
  %arrayidx58 = getelementptr inbounds [4 x i32], [4 x i32]* %color_avg, i32 0, i64 0
  %47 = load i32, i32* %arrayidx58, align 4
  %48 = load i32, i32* %count, align 4
  %div = sdiv i32 %48, 2
  %add59 = add nsw i32 %47, %div
  %49 = load i32, i32* %count, align 4
  %div60 = sdiv i32 %add59, %49
  %conv61 = trunc i32 %div60 to i8
  %arrayidx62 = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i64 0
  store i8 %conv61, i8* %arrayidx62, align 1
  %arrayidx63 = getelementptr inbounds [4 x i32], [4 x i32]* %color_avg, i32 0, i64 1
  %50 = load i32, i32* %arrayidx63, align 4
  %51 = load i32, i32* %count, align 4
  %div64 = sdiv i32 %51, 2
  %add65 = add nsw i32 %50, %div64
  %52 = load i32, i32* %count, align 4
  %div66 = sdiv i32 %add65, %52
  %conv67 = trunc i32 %div66 to i8
  %arrayidx68 = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i64 1
  store i8 %conv67, i8* %arrayidx68, align 1
  %arrayidx69 = getelementptr inbounds [4 x i32], [4 x i32]* %color_avg, i32 0, i64 2
  %53 = load i32, i32* %arrayidx69, align 4
  %54 = load i32, i32* %count, align 4
  %div70 = sdiv i32 %54, 2
  %add71 = add nsw i32 %53, %div70
  %55 = load i32, i32* %count, align 4
  %div72 = sdiv i32 %add71, %55
  %conv73 = trunc i32 %div72 to i8
  %arrayidx74 = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i64 2
  store i8 %conv73, i8* %arrayidx74, align 1
  %arrayidx75 = getelementptr inbounds [4 x i32], [4 x i32]* %color_avg, i32 0, i64 3
  %56 = load i32, i32* %arrayidx75, align 4
  %57 = load i32, i32* %count, align 4
  %div76 = sdiv i32 %57, 2
  %add77 = add nsw i32 %56, %div76
  %58 = load i32, i32* %count, align 4
  %div78 = sdiv i32 %add77, %58
  %conv79 = trunc i32 %div78 to i8
  %arrayidx80 = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i64 3
  store i8 %conv79, i8* %arrayidx80, align 1
  br label %if.end.84

if.else.81:                                       ; preds = %if.end.14
  %59 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %60 = load i32, i32* %type, align 4
  %arraydecay82 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i32 0
  %arraydecay83 = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i32 0
  call void @gimp_image_get_color(%struct._GimpImage* %59, i32 %60, i8* %arraydecay82, i8* %arraydecay83)
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.81, %for.end.57
  %61 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %arrayidx85 = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i64 0
  %62 = load i8, i8* %arrayidx85, align 1
  %arrayidx86 = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i64 1
  %63 = load i8, i8* %arrayidx86, align 1
  %arrayidx87 = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i64 2
  %64 = load i8, i8* %arrayidx87, align 1
  %arrayidx88 = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i64 3
  %65 = load i8, i8* %arrayidx88, align 1
  call void @gimp_rgba_set_uchar(%struct._GimpRGB* %61, i8 zeroext %62, i8 zeroext %63, i8 zeroext %64, i8 zeroext %65)
  %66 = load i32*, i32** %color_index.addr, align 8
  %tobool89 = icmp ne i32* %66, null
  br i1 %tobool89, label %if.then.90, label %if.end.102

if.then.90:                                       ; preds = %if.end.84
  %67 = load i32, i32* %type, align 4
  %cmp91 = icmp eq i32 %67, 4
  br i1 %cmp91, label %land.lhs.true.95, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.90
  %68 = load i32, i32* %type, align 4
  %cmp93 = icmp eq i32 %68, 5
  br i1 %cmp93, label %land.lhs.true.95, label %if.else.100

land.lhs.true.95:                                 ; preds = %lor.lhs.false, %if.then.90
  %69 = load i32, i32* %sample_average.addr, align 4
  %tobool96 = icmp ne i32 %69, 0
  br i1 %tobool96, label %if.else.100, label %if.then.97

if.then.97:                                       ; preds = %land.lhs.true.95
  %arrayidx98 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 0
  %70 = load i8, i8* %arrayidx98, align 1
  %conv99 = zext i8 %70 to i32
  %71 = load i32*, i32** %color_index.addr, align 8
  store i32 %conv99, i32* %71, align 4
  br label %if.end.101

if.else.100:                                      ; preds = %land.lhs.true.95, %lor.lhs.false
  %72 = load i32*, i32** %color_index.addr, align 8
  store i32 -1, i32* %72, align 4
  br label %if.end.101

if.end.101:                                       ; preds = %if.else.100, %if.then.97
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %if.end.84
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.102, %if.then.13, %if.else.9
  %73 = load i32, i32* %retval
  ret i32 %73
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

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
