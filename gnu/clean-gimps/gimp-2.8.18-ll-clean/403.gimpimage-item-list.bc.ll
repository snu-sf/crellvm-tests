; ModuleID = './app/core/gimpimage-item-list.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpToolInfo = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpMatrix3 = type { [3 x [3 x double]] }
%struct._GimpProgress = type opaque

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_image_item_list_translate = private unnamed_addr constant [31 x i8] c"gimp_image_item_list_translate\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"undo-type\04Translate Items\00", align 1
@__func__.gimp_image_item_list_flip = private unnamed_addr constant [26 x i8] c"gimp_image_item_list_flip\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"undo-type\04Flip Items\00", align 1
@__func__.gimp_image_item_list_rotate = private unnamed_addr constant [28 x i8] c"gimp_image_item_list_rotate\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"undo-type\04Rotate Items\00", align 1
@__func__.gimp_image_item_list_transform = private unnamed_addr constant [31 x i8] c"gimp_image_item_list_transform\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"progress == NULL || GIMP_IS_PROGRESS (progress)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"undo-type\04Transform Items\00", align 1
@__func__.gimp_image_item_list_get_list = private unnamed_addr constant [30 x i8] c"gimp_image_item_list_get_list\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_image_item_list_translate(%struct._GimpImage* %image, %struct._GList* %list, i32 %offset_x, i32 %offset_y, i32 %push_undo) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %list.addr = alloca %struct._GList*, align 8
  %offset_x.addr = alloca i32, align 4
  %offset_y.addr = alloca i32, align 4
  %push_undo.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %l = alloca %struct._GList*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GList* %list, %struct._GList** %list.addr, align 8
  store i32 %offset_x, i32* %offset_x.addr, align 4
  store i32 %offset_y, i32* %offset_y.addr, align 4
  store i32 %push_undo, i32* %push_undo.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_image_item_list_translate, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.33

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GList*, %struct._GList** %list.addr, align 8
  %tobool11 = icmp ne %struct._GList* %13, null
  br i1 %tobool11, label %if.then.12, label %if.end.33

if.then.12:                                       ; preds = %do.end
  %14 = load i32, i32* %push_undo.addr, align 4
  %tobool14 = icmp ne i32 %14, 0
  br i1 %tobool14, label %land.lhs.true.15, label %if.end.20

land.lhs.true.15:                                 ; preds = %if.then.12
  %15 = load %struct._GList*, %struct._GList** %list.addr, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %15, i32 0, i32 1
  %16 = load %struct._GList*, %struct._GList** %next, align 8
  %tobool16 = icmp ne %struct._GList* %16, null
  br i1 %tobool16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %land.lhs.true.15
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call18 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i64 10)
  %call19 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %17, i32 20, i8* %call18)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %land.lhs.true.15, %if.then.12
  %18 = load %struct._GList*, %struct._GList** %list.addr, align 8
  store %struct._GList* %18, %struct._GList** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end.20
  %19 = load %struct._GList*, %struct._GList** %l, align 8
  %tobool21 = icmp ne %struct._GList* %19, null
  br i1 %tobool21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load %struct._GList*, %struct._GList** %l, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %20, i32 0, i32 0
  %21 = load i8*, i8** %data, align 8
  %22 = bitcast i8* %21 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_item_get_type() #4
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call22)
  %23 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpItem*
  %24 = load i32, i32* %offset_x.addr, align 4
  %25 = load i32, i32* %offset_y.addr, align 4
  %26 = load i32, i32* %push_undo.addr, align 4
  call void @gimp_item_translate(%struct._GimpItem* %23, i32 %24, i32 %25, i32 %26)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load %struct._GList*, %struct._GList** %l, align 8
  %tobool24 = icmp ne %struct._GList* %27, null
  br i1 %tobool24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %28 = load %struct._GList*, %struct._GList** %l, align 8
  %next25 = getelementptr inbounds %struct._GList, %struct._GList* %28, i32 0, i32 1
  %29 = load %struct._GList*, %struct._GList** %next25, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %29, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load i32, i32* %push_undo.addr, align 4
  %tobool26 = icmp ne i32 %30, 0
  br i1 %tobool26, label %land.lhs.true.27, label %if.end.32

land.lhs.true.27:                                 ; preds = %for.end
  %31 = load %struct._GList*, %struct._GList** %list.addr, align 8
  %next28 = getelementptr inbounds %struct._GList, %struct._GList* %31, i32 0, i32 1
  %32 = load %struct._GList*, %struct._GList** %next28, align 8
  %tobool29 = icmp ne %struct._GList* %32, null
  br i1 %tobool29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %land.lhs.true.27
  %33 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call31 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %33)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %land.lhs.true.27, %for.end
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.9, %if.end.32, %do.end
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare i32 @gimp_image_undo_group_start(%struct._GimpImage*, i32, i8*) #3

declare i8* @g_dpgettext(i8*, i8*, i64) #3

declare void @gimp_item_translate(%struct._GimpItem*, i32, i32, i32) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #1

declare i32 @gimp_image_undo_group_end(%struct._GimpImage*) #3

; Function Attrs: nounwind uwtable
define void @gimp_image_item_list_flip(%struct._GimpImage* %image, %struct._GList* %list, %struct._GimpContext* %context, i32 %flip_type, double %axis, i32 %clip_result) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %list.addr = alloca %struct._GList*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %flip_type.addr = alloca i32, align 4
  %axis.addr = alloca double, align 8
  %clip_result.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %l = alloca %struct._GList*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GList* %list, %struct._GList** %list.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %flip_type, i32* %flip_type.addr, align 4
  store double %axis, double* %axis.addr, align 8
  store i32 %clip_result, i32* %clip_result.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_image_item_list_flip, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.57

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_context_get_type() #4
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #5
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_image_item_list_flip, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.57

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GList*, %struct._GList** %list.addr, align 8
  %tobool39 = icmp ne %struct._GList* %26, null
  br i1 %tobool39, label %if.then.40, label %if.end.57

if.then.40:                                       ; preds = %do.end.38
  %27 = load %struct._GList*, %struct._GList** %list.addr, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %27, i32 0, i32 1
  %28 = load %struct._GList*, %struct._GList** %next, align 8
  %tobool42 = icmp ne %struct._GList* %28, null
  br i1 %tobool42, label %if.then.43, label %if.end.46

if.then.43:                                       ; preds = %if.then.40
  %29 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call44 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i64 10)
  %call45 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %29, i32 32, i8* %call44)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.43, %if.then.40
  %30 = load %struct._GList*, %struct._GList** %list.addr, align 8
  store %struct._GList* %30, %struct._GList** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end.46
  %31 = load %struct._GList*, %struct._GList** %l, align 8
  %tobool47 = icmp ne %struct._GList* %31, null
  br i1 %tobool47, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load %struct._GList*, %struct._GList** %l, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %32, i32 0, i32 0
  %33 = load i8*, i8** %data, align 8
  %34 = bitcast i8* %33 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_item_get_type() #4
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call48)
  %35 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpItem*
  %36 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %37 = load i32, i32* %flip_type.addr, align 4
  %38 = load double, double* %axis.addr, align 8
  %39 = load i32, i32* %clip_result.addr, align 4
  call void @gimp_item_flip(%struct._GimpItem* %35, %struct._GimpContext* %36, i32 %37, double %38, i32 %39)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load %struct._GList*, %struct._GList** %l, align 8
  %tobool50 = icmp ne %struct._GList* %40, null
  br i1 %tobool50, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %41 = load %struct._GList*, %struct._GList** %l, align 8
  %next51 = getelementptr inbounds %struct._GList, %struct._GList* %41, i32 0, i32 1
  %42 = load %struct._GList*, %struct._GList** %next51, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %42, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = load %struct._GList*, %struct._GList** %list.addr, align 8
  %next52 = getelementptr inbounds %struct._GList, %struct._GList* %43, i32 0, i32 1
  %44 = load %struct._GList*, %struct._GList** %next52, align 8
  %tobool53 = icmp ne %struct._GList* %44, null
  br i1 %tobool53, label %if.then.54, label %if.end.56

if.then.54:                                       ; preds = %for.end
  %45 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call55 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %45)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.54, %for.end
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.9, %if.else.36, %if.end.56, %do.end.38
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #1

declare void @gimp_item_flip(%struct._GimpItem*, %struct._GimpContext*, i32, double, i32) #3

; Function Attrs: nounwind uwtable
define void @gimp_image_item_list_rotate(%struct._GimpImage* %image, %struct._GList* %list, %struct._GimpContext* %context, i32 %rotate_type, double %center_x, double %center_y, i32 %clip_result) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %list.addr = alloca %struct._GList*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %rotate_type.addr = alloca i32, align 4
  %center_x.addr = alloca double, align 8
  %center_y.addr = alloca double, align 8
  %clip_result.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %l = alloca %struct._GList*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GList* %list, %struct._GList** %list.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %rotate_type, i32* %rotate_type.addr, align 4
  store double %center_x, double* %center_x.addr, align 8
  store double %center_y, double* %center_y.addr, align 8
  store i32 %clip_result, i32* %clip_result.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_image_item_list_rotate, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.57

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_context_get_type() #4
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #5
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_image_item_list_rotate, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.57

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GList*, %struct._GList** %list.addr, align 8
  %tobool39 = icmp ne %struct._GList* %26, null
  br i1 %tobool39, label %if.then.40, label %if.end.57

if.then.40:                                       ; preds = %do.end.38
  %27 = load %struct._GList*, %struct._GList** %list.addr, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %27, i32 0, i32 1
  %28 = load %struct._GList*, %struct._GList** %next, align 8
  %tobool42 = icmp ne %struct._GList* %28, null
  br i1 %tobool42, label %if.then.43, label %if.end.46

if.then.43:                                       ; preds = %if.then.40
  %29 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call44 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0), i64 10)
  %call45 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %29, i32 32, i8* %call44)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.43, %if.then.40
  %30 = load %struct._GList*, %struct._GList** %list.addr, align 8
  store %struct._GList* %30, %struct._GList** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end.46
  %31 = load %struct._GList*, %struct._GList** %l, align 8
  %tobool47 = icmp ne %struct._GList* %31, null
  br i1 %tobool47, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load %struct._GList*, %struct._GList** %l, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %32, i32 0, i32 0
  %33 = load i8*, i8** %data, align 8
  %34 = bitcast i8* %33 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_item_get_type() #4
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call48)
  %35 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpItem*
  %36 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %37 = load i32, i32* %rotate_type.addr, align 4
  %38 = load double, double* %center_x.addr, align 8
  %39 = load double, double* %center_y.addr, align 8
  %40 = load i32, i32* %clip_result.addr, align 4
  call void @gimp_item_rotate(%struct._GimpItem* %35, %struct._GimpContext* %36, i32 %37, double %38, double %39, i32 %40)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %41 = load %struct._GList*, %struct._GList** %l, align 8
  %tobool50 = icmp ne %struct._GList* %41, null
  br i1 %tobool50, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %42 = load %struct._GList*, %struct._GList** %l, align 8
  %next51 = getelementptr inbounds %struct._GList, %struct._GList* %42, i32 0, i32 1
  %43 = load %struct._GList*, %struct._GList** %next51, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %43, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %44 = load %struct._GList*, %struct._GList** %list.addr, align 8
  %next52 = getelementptr inbounds %struct._GList, %struct._GList* %44, i32 0, i32 1
  %45 = load %struct._GList*, %struct._GList** %next52, align 8
  %tobool53 = icmp ne %struct._GList* %45, null
  br i1 %tobool53, label %if.then.54, label %if.end.56

if.then.54:                                       ; preds = %for.end
  %46 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call55 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %46)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.54, %for.end
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.9, %if.else.36, %if.end.56, %do.end.38
  ret void
}

declare void @gimp_item_rotate(%struct._GimpItem*, %struct._GimpContext*, i32, double, double, i32) #3

; Function Attrs: nounwind uwtable
define void @gimp_image_item_list_transform(%struct._GimpImage* %image, %struct._GList* %list, %struct._GimpContext* %context, %struct._GimpMatrix3* %matrix, i32 %direction, i32 %interpolation_type, i32 %recursion_level, i32 %clip_result, %struct._GimpProgress* %progress) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %list.addr = alloca %struct._GList*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %matrix.addr = alloca %struct._GimpMatrix3*, align 8
  %direction.addr = alloca i32, align 4
  %interpolation_type.addr = alloca i32, align 4
  %recursion_level.addr = alloca i32, align 4
  %clip_result.addr = alloca i32, align 4
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst42 = alloca %struct._GTypeInstance*, align 8
  %__t44 = alloca i64, align 8
  %__r47 = alloca i32, align 4
  %tmp62 = alloca i32, align 4
  %l = alloca %struct._GList*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GList* %list, %struct._GList** %list.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpMatrix3* %matrix, %struct._GimpMatrix3** %matrix.addr, align 8
  store i32 %direction, i32* %direction.addr, align 4
  store i32 %interpolation_type, i32* %interpolation_type.addr, align 4
  store i32 %recursion_level, i32* %recursion_level.addr, align 4
  store i32 %clip_result, i32* %clip_result.addr, align 4
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_image_item_list_transform, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.86

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_context_get_type() #4
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #5
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_image_item_list_transform, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.86

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %cmp40 = icmp eq %struct._GimpProgress* %26, null
  br i1 %cmp40, label %if.then.64, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.39
  %27 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %28 = bitcast %struct._GimpProgress* %27 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %28, %struct._GTypeInstance** %__inst42, align 8
  %call45 = call i64 @gimp_progress_interface_get_type() #4
  store i64 %call45, i64* %__t44, align 8
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %tobool48 = icmp ne %struct._GTypeInstance* %29, null
  br i1 %tobool48, label %if.else.50, label %if.then.49

if.then.49:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r47, align 4
  br label %if.end.61

if.else.50:                                       ; preds = %lor.lhs.false
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %g_class51 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class51, align 8
  %tobool52 = icmp ne %struct._GTypeClass* %31, null
  br i1 %tobool52, label %land.lhs.true.53, label %if.else.58

land.lhs.true.53:                                 ; preds = %if.else.50
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %g_class54 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class54, align 8
  %g_type55 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %33, i32 0, i32 0
  %34 = load i64, i64* %g_type55, align 8
  %35 = load i64, i64* %__t44, align 8
  %cmp56 = icmp eq i64 %34, %35
  br i1 %cmp56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %land.lhs.true.53
  store i32 1, i32* %__r47, align 4
  br label %if.end.60

if.else.58:                                       ; preds = %land.lhs.true.53, %if.else.50
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %37 = load i64, i64* %__t44, align 8
  %call59 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %36, i64 %37) #5
  store i32 %call59, i32* %__r47, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.58, %if.then.57
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.49
  %38 = load i32, i32* %__r47, align 4
  store i32 %38, i32* %tmp62
  %39 = load i32, i32* %tmp62
  %tobool63 = icmp ne i32 %39, 0
  br i1 %tobool63, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %if.end.61, %do.body.39
  br label %if.end.66

if.else.65:                                       ; preds = %if.end.61
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_image_item_list_transform, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.86

if.end.66:                                        ; preds = %if.then.64
  br label %do.end.67

do.end.67:                                        ; preds = %if.end.66
  %40 = load %struct._GList*, %struct._GList** %list.addr, align 8
  %tobool68 = icmp ne %struct._GList* %40, null
  br i1 %tobool68, label %if.then.69, label %if.end.86

if.then.69:                                       ; preds = %do.end.67
  %41 = load %struct._GList*, %struct._GList** %list.addr, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %41, i32 0, i32 1
  %42 = load %struct._GList*, %struct._GList** %next, align 8
  %tobool71 = icmp ne %struct._GList* %42, null
  br i1 %tobool71, label %if.then.72, label %if.end.75

if.then.72:                                       ; preds = %if.then.69
  %43 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call73 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0), i64 10)
  %call74 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %43, i32 32, i8* %call73)
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.72, %if.then.69
  %44 = load %struct._GList*, %struct._GList** %list.addr, align 8
  store %struct._GList* %44, %struct._GList** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end.75
  %45 = load %struct._GList*, %struct._GList** %l, align 8
  %tobool76 = icmp ne %struct._GList* %45, null
  br i1 %tobool76, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %46 = load %struct._GList*, %struct._GList** %l, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %46, i32 0, i32 0
  %47 = load i8*, i8** %data, align 8
  %48 = bitcast i8* %47 to %struct._GTypeInstance*
  %call77 = call i64 @gimp_item_get_type() #4
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call77)
  %49 = bitcast %struct._GTypeInstance* %call78 to %struct._GimpItem*
  %50 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %51 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %52 = load i32, i32* %direction.addr, align 4
  %53 = load i32, i32* %interpolation_type.addr, align 4
  %54 = load i32, i32* %recursion_level.addr, align 4
  %55 = load i32, i32* %clip_result.addr, align 4
  %56 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_item_transform(%struct._GimpItem* %49, %struct._GimpContext* %50, %struct._GimpMatrix3* %51, i32 %52, i32 %53, i32 %54, i32 %55, %struct._GimpProgress* %56)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %57 = load %struct._GList*, %struct._GList** %l, align 8
  %tobool79 = icmp ne %struct._GList* %57, null
  br i1 %tobool79, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %58 = load %struct._GList*, %struct._GList** %l, align 8
  %next80 = getelementptr inbounds %struct._GList, %struct._GList* %58, i32 0, i32 1
  %59 = load %struct._GList*, %struct._GList** %next80, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %59, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %60 = load %struct._GList*, %struct._GList** %list.addr, align 8
  %next81 = getelementptr inbounds %struct._GList, %struct._GList* %60, i32 0, i32 1
  %61 = load %struct._GList*, %struct._GList** %next81, align 8
  %tobool82 = icmp ne %struct._GList* %61, null
  br i1 %tobool82, label %if.then.83, label %if.end.85

if.then.83:                                       ; preds = %for.end
  %62 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call84 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %62)
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.83, %for.end
  br label %if.end.86

if.end.86:                                        ; preds = %if.else.9, %if.else.36, %if.else.65, %if.end.85, %do.end.67
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #1

declare void @gimp_item_transform(%struct._GimpItem*, %struct._GimpContext*, %struct._GimpMatrix3*, i32, i32, i32, i32, %struct._GimpProgress*) #3

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_image_item_list_get_list(%struct._GimpImage* %image, i32 %type, i32 %set) #0 {
entry:
  %retval = alloca %struct._GList*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %type.addr = alloca i32, align 4
  %set.addr = alloca i32, align 4
  %all_items = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %return_list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %item = alloca %struct._GimpItem*, align 8
  %item31 = alloca %struct._GimpItem*, align 8
  %item55 = alloca %struct._GimpItem*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i32 %set, i32* %set.addr, align 4
  store %struct._GList* null, %struct._GList** %return_list, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_image_item_list_get_list, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %type.addr, align 4
  %and = and i32 %13, 1
  %tobool11 = icmp ne i32 %and, 0
  br i1 %tobool11, label %if.then.12, label %if.end.22

if.then.12:                                       ; preds = %do.end
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call13 = call %struct._GList* @gimp_image_get_layer_list(%struct._GimpImage* %14)
  store %struct._GList* %call13, %struct._GList** %all_items, align 8
  %15 = load %struct._GList*, %struct._GList** %all_items, align 8
  store %struct._GList* %15, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then.12
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool14 = icmp ne %struct._GList* %16, null
  br i1 %tobool14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %17, i32 0, i32 0
  %18 = load i8*, i8** %data, align 8
  %19 = bitcast i8* %18 to %struct._GimpItem*
  store %struct._GimpItem* %19, %struct._GimpItem** %item, align 8
  %20 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %21 = load i32, i32* %set.addr, align 4
  %call16 = call i32 @gimp_item_is_in_set(%struct._GimpItem* %20, i32 %21)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %for.body
  %22 = load %struct._GList*, %struct._GList** %return_list, align 8
  %23 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %24 = bitcast %struct._GimpItem* %23 to i8*
  %call19 = call %struct._GList* @g_list_prepend(%struct._GList* %22, i8* %24)
  store %struct._GList* %call19, %struct._GList** %return_list, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %25 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool21 = icmp ne %struct._GList* %25, null
  br i1 %tobool21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %26 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %26, i32 0, i32 1
  %27 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %27, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load %struct._GList*, %struct._GList** %all_items, align 8
  call void @g_list_free(%struct._GList* %28)
  br label %if.end.22

if.end.22:                                        ; preds = %for.end, %do.end
  %29 = load i32, i32* %type.addr, align 4
  %and23 = and i32 %29, 2
  %tobool24 = icmp ne i32 %and23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.46

if.then.25:                                       ; preds = %if.end.22
  %30 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call26 = call %struct._GList* @gimp_image_get_channel_list(%struct._GimpImage* %30)
  store %struct._GList* %call26, %struct._GList** %all_items, align 8
  %31 = load %struct._GList*, %struct._GList** %all_items, align 8
  store %struct._GList* %31, %struct._GList** %list, align 8
  br label %for.cond.27

for.cond.27:                                      ; preds = %cond.end.43, %if.then.25
  %32 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool28 = icmp ne %struct._GList* %32, null
  br i1 %tobool28, label %for.body.29, label %for.end.45

for.body.29:                                      ; preds = %for.cond.27
  %33 = load %struct._GList*, %struct._GList** %list, align 8
  %data32 = getelementptr inbounds %struct._GList, %struct._GList* %33, i32 0, i32 0
  %34 = load i8*, i8** %data32, align 8
  %35 = bitcast i8* %34 to %struct._GimpItem*
  store %struct._GimpItem* %35, %struct._GimpItem** %item31, align 8
  %36 = load %struct._GimpItem*, %struct._GimpItem** %item31, align 8
  %37 = load i32, i32* %set.addr, align 4
  %call33 = call i32 @gimp_item_is_in_set(%struct._GimpItem* %36, i32 %37)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %for.body.29
  %38 = load %struct._GList*, %struct._GList** %return_list, align 8
  %39 = load %struct._GimpItem*, %struct._GimpItem** %item31, align 8
  %40 = bitcast %struct._GimpItem* %39 to i8*
  %call36 = call %struct._GList* @g_list_prepend(%struct._GList* %38, i8* %40)
  store %struct._GList* %call36, %struct._GList** %return_list, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %for.body.29
  br label %for.inc.38

for.inc.38:                                       ; preds = %if.end.37
  %41 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool39 = icmp ne %struct._GList* %41, null
  br i1 %tobool39, label %cond.true.40, label %cond.false.42

cond.true.40:                                     ; preds = %for.inc.38
  %42 = load %struct._GList*, %struct._GList** %list, align 8
  %next41 = getelementptr inbounds %struct._GList, %struct._GList* %42, i32 0, i32 1
  %43 = load %struct._GList*, %struct._GList** %next41, align 8
  br label %cond.end.43

cond.false.42:                                    ; preds = %for.inc.38
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.42, %cond.true.40
  %cond44 = phi %struct._GList* [ %43, %cond.true.40 ], [ null, %cond.false.42 ]
  store %struct._GList* %cond44, %struct._GList** %list, align 8
  br label %for.cond.27

for.end.45:                                       ; preds = %for.cond.27
  %44 = load %struct._GList*, %struct._GList** %all_items, align 8
  call void @g_list_free(%struct._GList* %44)
  br label %if.end.46

if.end.46:                                        ; preds = %for.end.45, %if.end.22
  %45 = load i32, i32* %type.addr, align 4
  %and47 = and i32 %45, 4
  %tobool48 = icmp ne i32 %and47, 0
  br i1 %tobool48, label %if.then.49, label %if.end.70

if.then.49:                                       ; preds = %if.end.46
  %46 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call50 = call %struct._GList* @gimp_image_get_vectors_list(%struct._GimpImage* %46)
  store %struct._GList* %call50, %struct._GList** %all_items, align 8
  %47 = load %struct._GList*, %struct._GList** %all_items, align 8
  store %struct._GList* %47, %struct._GList** %list, align 8
  br label %for.cond.51

for.cond.51:                                      ; preds = %cond.end.67, %if.then.49
  %48 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool52 = icmp ne %struct._GList* %48, null
  br i1 %tobool52, label %for.body.53, label %for.end.69

for.body.53:                                      ; preds = %for.cond.51
  %49 = load %struct._GList*, %struct._GList** %list, align 8
  %data56 = getelementptr inbounds %struct._GList, %struct._GList* %49, i32 0, i32 0
  %50 = load i8*, i8** %data56, align 8
  %51 = bitcast i8* %50 to %struct._GimpItem*
  store %struct._GimpItem* %51, %struct._GimpItem** %item55, align 8
  %52 = load %struct._GimpItem*, %struct._GimpItem** %item55, align 8
  %53 = load i32, i32* %set.addr, align 4
  %call57 = call i32 @gimp_item_is_in_set(%struct._GimpItem* %52, i32 %53)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %for.body.53
  %54 = load %struct._GList*, %struct._GList** %return_list, align 8
  %55 = load %struct._GimpItem*, %struct._GimpItem** %item55, align 8
  %56 = bitcast %struct._GimpItem* %55 to i8*
  %call60 = call %struct._GList* @g_list_prepend(%struct._GList* %54, i8* %56)
  store %struct._GList* %call60, %struct._GList** %return_list, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.59, %for.body.53
  br label %for.inc.62

for.inc.62:                                       ; preds = %if.end.61
  %57 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool63 = icmp ne %struct._GList* %57, null
  br i1 %tobool63, label %cond.true.64, label %cond.false.66

cond.true.64:                                     ; preds = %for.inc.62
  %58 = load %struct._GList*, %struct._GList** %list, align 8
  %next65 = getelementptr inbounds %struct._GList, %struct._GList* %58, i32 0, i32 1
  %59 = load %struct._GList*, %struct._GList** %next65, align 8
  br label %cond.end.67

cond.false.66:                                    ; preds = %for.inc.62
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.66, %cond.true.64
  %cond68 = phi %struct._GList* [ %59, %cond.true.64 ], [ null, %cond.false.66 ]
  store %struct._GList* %cond68, %struct._GList** %list, align 8
  br label %for.cond.51

for.end.69:                                       ; preds = %for.cond.51
  %60 = load %struct._GList*, %struct._GList** %all_items, align 8
  call void @g_list_free(%struct._GList* %60)
  br label %if.end.70

if.end.70:                                        ; preds = %for.end.69, %if.end.46
  %61 = load %struct._GList*, %struct._GList** %return_list, align 8
  %call71 = call %struct._GList* @g_list_reverse(%struct._GList* %61)
  store %struct._GList* %call71, %struct._GList** %retval
  br label %return

return:                                           ; preds = %if.end.70, %if.else.9
  %62 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %62
}

declare %struct._GList* @gimp_image_get_layer_list(%struct._GimpImage*) #3

declare i32 @gimp_item_is_in_set(%struct._GimpItem*, i32) #3

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #3

declare void @g_list_free(%struct._GList*) #3

declare %struct._GList* @gimp_image_get_channel_list(%struct._GimpImage*) #3

declare %struct._GList* @gimp_image_get_vectors_list(%struct._GimpImage*) #3

declare %struct._GList* @g_list_reverse(%struct._GList*) #3

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_image_item_list_filter(%struct._GList* %list) #0 {
entry:
  %retval = alloca %struct._GList*, align 8
  %list.addr = alloca %struct._GList*, align 8
  %l = alloca %struct._GList*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %next = alloca %struct._GList*, align 8
  store %struct._GList* %list, %struct._GList** %list.addr, align 8
  %0 = load %struct._GList*, %struct._GList** %list.addr, align 8
  %tobool = icmp ne %struct._GList* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._GList*, %struct._GList** %list.addr, align 8
  store %struct._GList* %1, %struct._GList** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end.12, %if.end
  %2 = load %struct._GList*, %struct._GList** %l, align 8
  %tobool1 = icmp ne %struct._GList* %2, null
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %l, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct._GimpItem*
  store %struct._GimpItem* %5, %struct._GimpItem** %item, align 8
  %6 = load %struct._GList*, %struct._GList** %l, align 8
  %tobool2 = icmp ne %struct._GList* %6, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %7 = load %struct._GList*, %struct._GList** %l, align 8
  %next3 = getelementptr inbounds %struct._GList, %struct._GList* %7, i32 0, i32 1
  %8 = load %struct._GList*, %struct._GList** %next3, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %8, %cond.true ], [ null, %cond.false ]
  %9 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call = call %struct._GList* @gimp_image_item_list_remove_children(%struct._GList* %cond, %struct._GimpItem* %9)
  store %struct._GList* %call, %struct._GList** %next, align 8
  %10 = load %struct._GList*, %struct._GList** %next, align 8
  %11 = load %struct._GList*, %struct._GList** %l, align 8
  %next4 = getelementptr inbounds %struct._GList, %struct._GList* %11, i32 0, i32 1
  store %struct._GList* %10, %struct._GList** %next4, align 8
  %12 = load %struct._GList*, %struct._GList** %next, align 8
  %tobool5 = icmp ne %struct._GList* %12, null
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %cond.end
  %13 = load %struct._GList*, %struct._GList** %l, align 8
  %14 = load %struct._GList*, %struct._GList** %next, align 8
  %prev = getelementptr inbounds %struct._GList, %struct._GList* %14, i32 0, i32 2
  store %struct._GList* %13, %struct._GList** %prev, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %15 = load %struct._GList*, %struct._GList** %l, align 8
  %tobool8 = icmp ne %struct._GList* %15, null
  br i1 %tobool8, label %cond.true.9, label %cond.false.11

cond.true.9:                                      ; preds = %for.inc
  %16 = load %struct._GList*, %struct._GList** %l, align 8
  %next10 = getelementptr inbounds %struct._GList, %struct._GList* %16, i32 0, i32 1
  %17 = load %struct._GList*, %struct._GList** %next10, align 8
  br label %cond.end.12

cond.false.11:                                    ; preds = %for.inc
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.11, %cond.true.9
  %cond13 = phi %struct._GList* [ %17, %cond.true.9 ], [ null, %cond.false.11 ]
  store %struct._GList* %cond13, %struct._GList** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct._GList*, %struct._GList** %list.addr, align 8
  store %struct._GList* %18, %struct._GList** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %19 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %19
}

; Function Attrs: nounwind uwtable
define internal %struct._GList* @gimp_image_item_list_remove_children(%struct._GList* %list, %struct._GimpItem* %parent) #0 {
entry:
  %list.addr = alloca %struct._GList*, align 8
  %parent.addr = alloca %struct._GimpItem*, align 8
  %l = alloca %struct._GList*, align 8
  %item = alloca %struct._GimpItem*, align 8
  store %struct._GList* %list, %struct._GList** %list.addr, align 8
  store %struct._GimpItem* %parent, %struct._GimpItem** %parent.addr, align 8
  %0 = load %struct._GList*, %struct._GList** %list.addr, align 8
  store %struct._GList* %0, %struct._GList** %l, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load %struct._GList*, %struct._GList** %l, align 8
  %tobool = icmp ne %struct._GList* %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct._GList*, %struct._GList** %l, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  %4 = bitcast i8* %3 to %struct._GimpItem*
  store %struct._GimpItem* %4, %struct._GimpItem** %item, align 8
  %5 = load %struct._GList*, %struct._GList** %l, align 8
  %tobool1 = icmp ne %struct._GList* %5, null
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %6 = load %struct._GList*, %struct._GList** %l, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %6, i32 0, i32 1
  %7 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %while.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %7, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %l, align 8
  %8 = load %struct._GimpItem*, %struct._GimpItem** %parent.addr, align 8
  %9 = bitcast %struct._GimpItem* %8 to %struct._GTypeInstance*
  %call = call i64 @gimp_viewable_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call)
  %10 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpViewable*
  %11 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %12 = bitcast %struct._GimpItem* %11 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_viewable_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call3)
  %13 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpViewable*
  %call5 = call i32 @gimp_viewable_is_ancestor(%struct._GimpViewable* %10, %struct._GimpViewable* %13)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %14 = load %struct._GList*, %struct._GList** %list.addr, align 8
  %15 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %16 = bitcast %struct._GimpItem* %15 to i8*
  %call7 = call %struct._GList* @g_list_remove(%struct._GList* %14, i8* %16)
  store %struct._GList* %call7, %struct._GList** %list.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %17 = load %struct._GList*, %struct._GList** %list.addr, align 8
  ret %struct._GList* %17
}

declare i32 @gimp_viewable_is_ancestor(%struct._GimpViewable*, %struct._GimpViewable*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #1

declare %struct._GList* @g_list_remove(%struct._GList*, i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
