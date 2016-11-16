; ModuleID = './app/core/gimpdrawable-foreground-extract.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpDrawablePrivate = type opaque
%struct._GimpProgress = type opaque
%struct._SioxState = type opaque
%struct._TileManager = type opaque
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpRGB = type { double, double, double, double }
%struct._GeglNode = type opaque
%struct._BoundSeg = type opaque

@gimp_drawable_foreground_extract.sensitivity = internal constant [3 x double] [double 6.400000e-01, double 1.280000e+00, double 2.560000e+00], align 16
@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_drawable_foreground_extract = private unnamed_addr constant [33 x i8] c"gimp_drawable_foreground_extract\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"GIMP_IS_DRAWABLE (mask)\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"mode == GIMP_FOREGROUND_EXTRACT_SIOX\00", align 1
@__func__.gimp_drawable_foreground_extract_siox_init = private unnamed_addr constant [43 x i8] c"gimp_drawable_foreground_extract_siox_init\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"GIMP_IS_DRAWABLE (drawable)\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"gimp_item_is_attached (GIMP_ITEM (drawable))\00", align 1
@__func__.gimp_drawable_foreground_extract_siox = private unnamed_addr constant [38 x i8] c"gimp_drawable_foreground_extract_siox\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"gimp_drawable_bytes (mask) == 1\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"state != NULL\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"progress == NULL || GIMP_IS_PROGRESS (progress)\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Foreground Extraction\00", align 1
@__func__.gimp_drawable_foreground_extract_siox_done = private unnamed_addr constant [43 x i8] c"gimp_drawable_foreground_extract_siox_done\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_drawable_foreground_extract(%struct._GimpDrawable* %drawable, i32 %mode, %struct._GimpDrawable* %mask, %struct._GimpProgress* %progress) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %mode.addr = alloca i32, align 4
  %mask.addr = alloca %struct._GimpDrawable*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %state = alloca %struct._SioxState*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store %struct._GimpDrawable* %mask, %struct._GimpDrawable** %mask.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %mask.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_drawable_foreground_extract, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.26

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %mode.addr, align 4
  %cmp12 = icmp eq i32 %13, 0
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_drawable_foreground_extract, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.26

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %mask.addr, align 8
  %16 = bitcast %struct._GimpDrawable* %15 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_item_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call17)
  %17 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpItem*
  %call19 = call i32 @gimp_item_get_width(%struct._GimpItem* %17)
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %mask.addr, align 8
  %19 = bitcast %struct._GimpDrawable* %18 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_item_get_type() #5
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call20)
  %20 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpItem*
  %call22 = call i32 @gimp_item_get_height(%struct._GimpItem* %20)
  %call23 = call %struct._SioxState* @gimp_drawable_foreground_extract_siox_init(%struct._GimpDrawable* %14, i32 0, i32 0, i32 %call19, i32 %call22)
  store %struct._SioxState* %call23, %struct._SioxState** %state, align 8
  %21 = load %struct._SioxState*, %struct._SioxState** %state, align 8
  %tobool24 = icmp ne %struct._SioxState* %21, null
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %do.end.16
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %mask.addr, align 8
  %23 = load %struct._SioxState*, %struct._SioxState** %state, align 8
  %24 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_drawable_foreground_extract_siox(%struct._GimpDrawable* %22, %struct._SioxState* %23, i32 255, i32 3, double* getelementptr inbounds ([3 x double], [3 x double]* @gimp_drawable_foreground_extract.sensitivity, i32 0, i32 0), i32 0, %struct._GimpProgress* %24)
  %25 = load %struct._SioxState*, %struct._SioxState** %state, align 8
  call void @gimp_drawable_foreground_extract_siox_done(%struct._SioxState* %25)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.9, %if.else.14, %if.then.25, %do.end.16
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind uwtable
define %struct._SioxState* @gimp_drawable_foreground_extract_siox_init(%struct._GimpDrawable* %drawable, i32 %x, i32 %y, i32 %width, i32 %height) #0 {
entry:
  %retval = alloca %struct._SioxState*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %colormap = alloca i8*, align 8
  %intersect = alloca i32, align 4
  %offset_x = alloca i32, align 4
  %offset_y = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i8* null, i8** %colormap, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__func__.gimp_drawable_foreground_extract_siox_init, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0))
  store %struct._SioxState* null, %struct._SioxState** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = bitcast %struct._GimpDrawable* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %call14 = call i32 @gimp_item_is_attached(%struct._GimpItem* %15)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.18

if.else.17:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__func__.gimp_drawable_foreground_extract_siox_init, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i32 0, i32 0))
  store %struct._SioxState* null, %struct._SioxState** %retval
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call20 = call i32 @gimp_drawable_is_indexed(%struct._GimpDrawable* %16)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %do.end.19
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call23 = call i8* @gimp_drawable_get_colormap(%struct._GimpDrawable* %17)
  store i8* %call23, i8** %colormap, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %do.end.19
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %19 = bitcast %struct._GimpDrawable* %18 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_item_get_type() #5
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call25)
  %20 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %20, i32* %offset_x, i32* %offset_y)
  %21 = load i32, i32* %offset_x, align 4
  %22 = load i32, i32* %offset_y, align 4
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %24 = bitcast %struct._GimpDrawable* %23 to %struct._GTypeInstance*
  %call27 = call i64 @gimp_item_get_type() #5
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call27)
  %25 = bitcast %struct._GTypeInstance* %call28 to %struct._GimpItem*
  %call29 = call i32 @gimp_item_get_width(%struct._GimpItem* %25)
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %27 = bitcast %struct._GimpDrawable* %26 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_item_get_type() #5
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call30)
  %28 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpItem*
  %call32 = call i32 @gimp_item_get_height(%struct._GimpItem* %28)
  %29 = load i32, i32* %x.addr, align 4
  %30 = load i32, i32* %y.addr, align 4
  %31 = load i32, i32* %width.addr, align 4
  %32 = load i32, i32* %height.addr, align 4
  %call33 = call i32 @gimp_rectangle_intersect(i32 %21, i32 %22, i32 %call29, i32 %call32, i32 %29, i32 %30, i32 %31, i32 %32, i32* %x.addr, i32* %y.addr, i32* %width.addr, i32* %height.addr)
  store i32 %call33, i32* %intersect, align 4
  %33 = load i32, i32* %intersect, align 4
  %tobool34 = icmp ne i32 %33, 0
  br i1 %tobool34, label %if.end.36, label %if.then.35

if.then.35:                                       ; preds = %if.end.24
  store %struct._SioxState* null, %struct._SioxState** %retval
  br label %return

if.end.36:                                        ; preds = %if.end.24
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call37 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %34)
  %35 = load i8*, i8** %colormap, align 8
  %36 = load i32, i32* %offset_x, align 4
  %37 = load i32, i32* %offset_y, align 4
  %38 = load i32, i32* %x.addr, align 4
  %39 = load i32, i32* %y.addr, align 4
  %40 = load i32, i32* %width.addr, align 4
  %41 = load i32, i32* %height.addr, align 4
  %call38 = call %struct._SioxState* @siox_init(%struct._TileManager* %call37, i8* %35, i32 %36, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41)
  store %struct._SioxState* %call38, %struct._SioxState** %retval
  br label %return

return:                                           ; preds = %if.end.36, %if.then.35, %if.else.17, %if.else.9
  %42 = load %struct._SioxState*, %struct._SioxState** %retval
  ret %struct._SioxState* %42
}

declare i32 @gimp_item_get_width(%struct._GimpItem*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #1

declare i32 @gimp_item_get_height(%struct._GimpItem*) #3

; Function Attrs: nounwind uwtable
define void @gimp_drawable_foreground_extract_siox(%struct._GimpDrawable* %mask, %struct._SioxState* %state, i32 %refinement, i32 %smoothness, double* %sensitivity, i32 %multiblob, %struct._GimpProgress* %progress) #0 {
entry:
  %mask.addr = alloca %struct._GimpDrawable*, align 8
  %state.addr = alloca %struct._SioxState*, align 8
  %refinement.addr = alloca i32, align 4
  %smoothness.addr = alloca i32, align 4
  %sensitivity.addr = alloca double*, align 8
  %multiblob.addr = alloca i32, align 4
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst27 = alloca %struct._GTypeInstance*, align 8
  %__t29 = alloca i64, align 8
  %__r32 = alloca i32, align 4
  %tmp47 = alloca i32, align 4
  %__inst59 = alloca %struct._GTypeInstance*, align 8
  %__t61 = alloca i64, align 8
  %__r64 = alloca i32, align 4
  %tmp79 = alloca i32, align 4
  store %struct._GimpDrawable* %mask, %struct._GimpDrawable** %mask.addr, align 8
  store %struct._SioxState* %state, %struct._SioxState** %state.addr, align 8
  store i32 %refinement, i32* %refinement.addr, align 4
  store i32 %smoothness, i32* %smoothness.addr, align 4
  store double* %sensitivity, double** %sensitivity.addr, align 8
  store i32 %multiblob, i32* %multiblob.addr, align 4
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %mask.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_drawable_foreground_extract_siox, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %mask.addr, align 8
  %call12 = call i32 @gimp_drawable_bytes(%struct._GimpDrawable* %13)
  %cmp13 = icmp eq i32 %call12, 1
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_drawable_foreground_extract_siox, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %14 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %cmp19 = icmp ne %struct._SioxState* %14, null
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body.18
  br label %if.end.22

if.else.21:                                       ; preds = %do.body.18
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_drawable_foreground_extract_siox, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.22:                                        ; preds = %if.then.20
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  br label %do.body.24

do.body.24:                                       ; preds = %do.end.23
  %15 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %cmp25 = icmp eq %struct._GimpProgress* %15, null
  br i1 %cmp25, label %if.then.49, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.24
  %16 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %17 = bitcast %struct._GimpProgress* %16 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %17, %struct._GTypeInstance** %__inst27, align 8
  %call30 = call i64 @gimp_progress_interface_get_type() #5
  store i64 %call30, i64* %__t29, align 8
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst27, align 8
  %tobool33 = icmp ne %struct._GTypeInstance* %18, null
  br i1 %tobool33, label %if.else.35, label %if.then.34

if.then.34:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r32, align 4
  br label %if.end.46

if.else.35:                                       ; preds = %lor.lhs.false
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst27, align 8
  %g_class36 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class36, align 8
  %tobool37 = icmp ne %struct._GTypeClass* %20, null
  br i1 %tobool37, label %land.lhs.true.38, label %if.else.43

land.lhs.true.38:                                 ; preds = %if.else.35
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst27, align 8
  %g_class39 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class39, align 8
  %g_type40 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type40, align 8
  %24 = load i64, i64* %__t29, align 8
  %cmp41 = icmp eq i64 %23, %24
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %land.lhs.true.38
  store i32 1, i32* %__r32, align 4
  br label %if.end.45

if.else.43:                                       ; preds = %land.lhs.true.38, %if.else.35
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst27, align 8
  %26 = load i64, i64* %__t29, align 8
  %call44 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %25, i64 %26) #6
  store i32 %call44, i32* %__r32, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.43, %if.then.42
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then.34
  %27 = load i32, i32* %__r32, align 4
  store i32 %27, i32* %tmp47
  %28 = load i32, i32* %tmp47
  %tobool48 = icmp ne i32 %28, 0
  br i1 %tobool48, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %if.end.46, %do.body.24
  br label %if.end.51

if.else.50:                                       ; preds = %if.end.46
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_drawable_foreground_extract_siox, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.51:                                        ; preds = %if.then.49
  br label %do.end.52

do.end.52:                                        ; preds = %if.end.51
  %29 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool53 = icmp ne %struct._GimpProgress* %29, null
  br i1 %tobool53, label %if.then.54, label %if.end.57

if.then.54:                                       ; preds = %do.end.52
  %30 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call55 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0)) #7
  %call56 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %30, i8* %call55, i32 0)
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.54, %do.end.52
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** %mask.addr, align 8
  %32 = bitcast %struct._GimpDrawable* %31 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %32, %struct._GTypeInstance** %__inst59, align 8
  %call62 = call i64 @gimp_channel_get_type() #5
  store i64 %call62, i64* %__t61, align 8
  %33 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst59, align 8
  %tobool65 = icmp ne %struct._GTypeInstance* %33, null
  br i1 %tobool65, label %if.else.67, label %if.then.66

if.then.66:                                       ; preds = %if.end.57
  store i32 0, i32* %__r64, align 4
  br label %if.end.78

if.else.67:                                       ; preds = %if.end.57
  %34 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst59, align 8
  %g_class68 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %34, i32 0, i32 0
  %35 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class68, align 8
  %tobool69 = icmp ne %struct._GTypeClass* %35, null
  br i1 %tobool69, label %land.lhs.true.70, label %if.else.75

land.lhs.true.70:                                 ; preds = %if.else.67
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst59, align 8
  %g_class71 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %36, i32 0, i32 0
  %37 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class71, align 8
  %g_type72 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %37, i32 0, i32 0
  %38 = load i64, i64* %g_type72, align 8
  %39 = load i64, i64* %__t61, align 8
  %cmp73 = icmp eq i64 %38, %39
  br i1 %cmp73, label %if.then.74, label %if.else.75

if.then.74:                                       ; preds = %land.lhs.true.70
  store i32 1, i32* %__r64, align 4
  br label %if.end.77

if.else.75:                                       ; preds = %land.lhs.true.70, %if.else.67
  %40 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst59, align 8
  %41 = load i64, i64* %__t61, align 8
  %call76 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %40, i64 %41) #6
  store i32 %call76, i32* %__r64, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.75, %if.then.74
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.then.66
  %42 = load i32, i32* %__r64, align 4
  store i32 %42, i32* %tmp79
  %43 = load i32, i32* %tmp79
  %tobool80 = icmp ne i32 %43, 0
  br i1 %tobool80, label %if.then.81, label %if.else.85

if.then.81:                                       ; preds = %if.end.78
  %44 = load %struct._GimpDrawable*, %struct._GimpDrawable** %mask.addr, align 8
  %45 = bitcast %struct._GimpDrawable* %44 to %struct._GTypeInstance*
  %call82 = call i64 @gimp_channel_get_type() #5
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call82)
  %46 = bitcast %struct._GTypeInstance* %call83 to %struct._GimpChannel*
  %call84 = call i32 @gimp_channel_bounds(%struct._GimpChannel* %46, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  br label %if.end.92

if.else.85:                                       ; preds = %if.end.78
  store i32 0, i32* %x1, align 4
  store i32 0, i32* %y1, align 4
  %47 = load %struct._GimpDrawable*, %struct._GimpDrawable** %mask.addr, align 8
  %48 = bitcast %struct._GimpDrawable* %47 to %struct._GTypeInstance*
  %call86 = call i64 @gimp_item_get_type() #5
  %call87 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call86)
  %49 = bitcast %struct._GTypeInstance* %call87 to %struct._GimpItem*
  %call88 = call i32 @gimp_item_get_width(%struct._GimpItem* %49)
  store i32 %call88, i32* %x2, align 4
  %50 = load %struct._GimpDrawable*, %struct._GimpDrawable** %mask.addr, align 8
  %51 = bitcast %struct._GimpDrawable* %50 to %struct._GTypeInstance*
  %call89 = call i64 @gimp_item_get_type() #5
  %call90 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call89)
  %52 = bitcast %struct._GTypeInstance* %call90 to %struct._GimpItem*
  %call91 = call i32 @gimp_item_get_height(%struct._GimpItem* %52)
  store i32 %call91, i32* %y2, align 4
  br label %if.end.92

if.end.92:                                        ; preds = %if.else.85, %if.then.81
  %53 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %54 = load i32, i32* %refinement.addr, align 4
  %55 = load %struct._GimpDrawable*, %struct._GimpDrawable** %mask.addr, align 8
  %call93 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %55)
  %56 = load i32, i32* %x1, align 4
  %57 = load i32, i32* %y1, align 4
  %58 = load i32, i32* %x2, align 4
  %59 = load i32, i32* %y2, align 4
  %60 = load i32, i32* %smoothness.addr, align 4
  %61 = load double*, double** %sensitivity.addr, align 8
  %62 = load i32, i32* %multiblob.addr, align 4
  %63 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %64 = bitcast %struct._GimpProgress* %63 to i8*
  call void @siox_foreground_extract(%struct._SioxState* %53, i32 %54, %struct._TileManager* %call93, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60, double* %61, i32 %62, void (i8*, double)* bitcast (void (%struct._GimpProgress*, double)* @gimp_progress_set_value to void (i8*, double)*), i8* %64)
  %65 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool94 = icmp ne %struct._GimpProgress* %65, null
  br i1 %tobool94, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %if.end.92
  %66 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_progress_end(%struct._GimpProgress* %66)
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.95, %if.end.92
  %67 = load %struct._GimpDrawable*, %struct._GimpDrawable** %mask.addr, align 8
  %68 = load i32, i32* %x1, align 4
  %69 = load i32, i32* %y1, align 4
  %70 = load i32, i32* %x2, align 4
  %71 = load i32, i32* %y2, align 4
  call void @gimp_drawable_update(%struct._GimpDrawable* %67, i32 %68, i32 %69, i32 %70, i32 %71)
  br label %return

return:                                           ; preds = %if.end.96, %if.else.50, %if.else.21, %if.else.15, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_drawable_foreground_extract_siox_done(%struct._SioxState* %state) #0 {
entry:
  %state.addr = alloca %struct._SioxState*, align 8
  store %struct._SioxState* %state, %struct._SioxState** %state.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  %cmp = icmp ne %struct._SioxState* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__func__.gimp_drawable_foreground_extract_siox_done, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._SioxState*, %struct._SioxState** %state.addr, align 8
  call void @siox_done(%struct._SioxState* %1)
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

declare i32 @gimp_item_is_attached(%struct._GimpItem*) #3

declare i32 @gimp_drawable_is_indexed(%struct._GimpDrawable*) #3

declare i8* @gimp_drawable_get_colormap(%struct._GimpDrawable*) #3

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #3

declare i32 @gimp_rectangle_intersect(i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*) #3

declare %struct._SioxState* @siox_init(%struct._TileManager*, i8*, i32, i32, i32, i32, i32, i32) #3

declare %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable*) #3

declare i32 @gimp_drawable_bytes(%struct._GimpDrawable*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #1

declare %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress*, i8*, i32) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_get_type() #1

declare i32 @gimp_channel_bounds(%struct._GimpChannel*, i32*, i32*, i32*, i32*) #3

declare void @siox_foreground_extract(%struct._SioxState*, i32, %struct._TileManager*, i32, i32, i32, i32, i32, double*, i32, void (i8*, double)*, i8*) #3

declare void @gimp_progress_set_value(%struct._GimpProgress*, double) #3

declare void @gimp_progress_end(%struct._GimpProgress*) #3

declare void @gimp_drawable_update(%struct._GimpDrawable*, i32, i32, i32, i32) #3

declare void @siox_done(%struct._SioxState*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
