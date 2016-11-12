; ModuleID = './app/core/gimpitem-linked.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._Gimp = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
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
@__func__.gimp_item_linked_translate = private unnamed_addr constant [27 x i8] c"gimp_item_linked_translate\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"GIMP_IS_ITEM (item)\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"gimp_item_get_linked (item) == TRUE\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"gimp_item_is_attached (item)\00", align 1
@__func__.gimp_item_linked_flip = private unnamed_addr constant [22 x i8] c"gimp_item_linked_flip\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@__func__.gimp_item_linked_rotate = private unnamed_addr constant [24 x i8] c"gimp_item_linked_rotate\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"undo-type\04Rotate Items\00", align 1
@__func__.gimp_item_linked_transform = private unnamed_addr constant [27 x i8] c"gimp_item_linked_transform\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"progress == NULL || GIMP_IS_PROGRESS (progress)\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_item_linked_translate(%struct._GimpItem* %item, i32 %offset_x, i32 %offset_y, i32 %push_undo) #0 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %offset_x.addr = alloca i32, align 4
  %offset_y.addr = alloca i32, align 4
  %push_undo.addr = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %items = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i32 %offset_x, i32* %offset_x.addr, align 4
  store i32 %offset_y, i32* %offset_y.addr, align 4
  store i32 %push_undo, i32* %push_undo.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_item_linked_translate, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call12 = call i32 @gimp_item_get_linked(%struct._GimpItem* %13)
  %cmp13 = icmp eq i32 %call12, 1
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_item_linked_translate, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %14 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call19 = call i32 @gimp_item_is_attached(%struct._GimpItem* %14)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %do.body.18
  br label %if.end.23

if.else.22:                                       ; preds = %do.body.18
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_item_linked_translate, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.23:                                        ; preds = %if.then.21
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  %15 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call25 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %15)
  store %struct._GimpImage* %call25, %struct._GimpImage** %image, align 8
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call26 = call %struct._GList* @gimp_image_item_list_get_list(%struct._GimpImage* %16, i32 7, i32 4)
  store %struct._GList* %call26, %struct._GList** %items, align 8
  %17 = load %struct._GList*, %struct._GList** %items, align 8
  %call27 = call %struct._GList* @gimp_image_item_list_filter(%struct._GList* %17)
  store %struct._GList* %call27, %struct._GList** %items, align 8
  %18 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call28 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %18)
  %19 = load %struct._GList*, %struct._GList** %items, align 8
  %20 = load i32, i32* %offset_x.addr, align 4
  %21 = load i32, i32* %offset_y.addr, align 4
  %22 = load i32, i32* %push_undo.addr, align 4
  call void @gimp_image_item_list_translate(%struct._GimpImage* %call28, %struct._GList* %19, i32 %20, i32 %21, i32 %22)
  %23 = load %struct._GList*, %struct._GList** %items, align 8
  call void @g_list_free(%struct._GList* %23)
  br label %return

return:                                           ; preds = %do.end.24, %if.else.22, %if.else.15, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare i32 @gimp_item_get_linked(%struct._GimpItem*) #3

declare i32 @gimp_item_is_attached(%struct._GimpItem*) #3

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #3

declare %struct._GList* @gimp_image_item_list_get_list(%struct._GimpImage*, i32, i32) #3

declare %struct._GList* @gimp_image_item_list_filter(%struct._GList*) #3

declare void @gimp_image_item_list_translate(%struct._GimpImage*, %struct._GList*, i32, i32, i32) #3

declare void @g_list_free(%struct._GList*) #3

; Function Attrs: nounwind uwtable
define void @gimp_item_linked_flip(%struct._GimpItem* %item, %struct._GimpContext* %context, i32 %flip_type, double %axis, i32 %clip_result) #0 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %flip_type.addr = alloca i32, align 4
  %axis.addr = alloca double, align 8
  %clip_result.addr = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %items = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %flip_type, i32* %flip_type.addr, align 4
  store double %axis, double* %axis.addr, align 8
  store i32 %clip_result, i32* %clip_result.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_item_linked_flip, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_item_linked_flip, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call40 = call i32 @gimp_item_get_linked(%struct._GimpItem* %26)
  %cmp41 = icmp eq i32 %call40, 1
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %do.body.39
  br label %if.end.44

if.else.43:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_item_linked_flip, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.44:                                        ; preds = %if.then.42
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  br label %do.body.46

do.body.46:                                       ; preds = %do.end.45
  %27 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call47 = call i32 @gimp_item_is_attached(%struct._GimpItem* %27)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %do.body.46
  br label %if.end.51

if.else.50:                                       ; preds = %do.body.46
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_item_linked_flip, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.51:                                        ; preds = %if.then.49
  br label %do.end.52

do.end.52:                                        ; preds = %if.end.51
  %28 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call53 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %28)
  store %struct._GimpImage* %call53, %struct._GimpImage** %image, align 8
  %29 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call54 = call %struct._GList* @gimp_image_item_list_get_list(%struct._GimpImage* %29, i32 7, i32 4)
  store %struct._GList* %call54, %struct._GList** %items, align 8
  %30 = load %struct._GList*, %struct._GList** %items, align 8
  %call55 = call %struct._GList* @gimp_image_item_list_filter(%struct._GList* %30)
  store %struct._GList* %call55, %struct._GList** %items, align 8
  %31 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %32 = load %struct._GList*, %struct._GList** %items, align 8
  %33 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %34 = load i32, i32* %flip_type.addr, align 4
  %35 = load double, double* %axis.addr, align 8
  %36 = load i32, i32* %clip_result.addr, align 4
  call void @gimp_image_item_list_flip(%struct._GimpImage* %31, %struct._GList* %32, %struct._GimpContext* %33, i32 %34, double %35, i32 %36)
  %37 = load %struct._GList*, %struct._GList** %items, align 8
  call void @g_list_free(%struct._GList* %37)
  br label %return

return:                                           ; preds = %do.end.52, %if.else.50, %if.else.43, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #1

declare void @gimp_image_item_list_flip(%struct._GimpImage*, %struct._GList*, %struct._GimpContext*, i32, double, i32) #3

; Function Attrs: nounwind uwtable
define void @gimp_item_linked_rotate(%struct._GimpItem* %item, %struct._GimpContext* %context, i32 %rotate_type, double %center_x, double %center_y, i32 %clip_result) #0 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %rotate_type.addr = alloca i32, align 4
  %center_x.addr = alloca double, align 8
  %center_y.addr = alloca double, align 8
  %clip_result.addr = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %items = alloca %struct._GList*, align 8
  %channels = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %rotate_type, i32* %rotate_type.addr, align 4
  store double %center_x, double* %center_x.addr, align 8
  store double %center_y, double* %center_y.addr, align 8
  store i32 %clip_result, i32* %clip_result.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_item_linked_rotate, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_item_linked_rotate, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call40 = call i32 @gimp_item_get_linked(%struct._GimpItem* %26)
  %cmp41 = icmp eq i32 %call40, 1
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %do.body.39
  br label %if.end.44

if.else.43:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_item_linked_rotate, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.44:                                        ; preds = %if.then.42
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  br label %do.body.46

do.body.46:                                       ; preds = %do.end.45
  %27 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call47 = call i32 @gimp_item_is_attached(%struct._GimpItem* %27)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %do.body.46
  br label %if.end.51

if.else.50:                                       ; preds = %do.body.46
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_item_linked_rotate, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.51:                                        ; preds = %if.then.49
  br label %do.end.52

do.end.52:                                        ; preds = %if.end.51
  %28 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call53 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %28)
  store %struct._GimpImage* %call53, %struct._GimpImage** %image, align 8
  %29 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call54 = call %struct._GList* @gimp_image_item_list_get_list(%struct._GimpImage* %29, i32 5, i32 4)
  store %struct._GList* %call54, %struct._GList** %items, align 8
  %30 = load %struct._GList*, %struct._GList** %items, align 8
  %call55 = call %struct._GList* @gimp_image_item_list_filter(%struct._GList* %30)
  store %struct._GList* %call55, %struct._GList** %items, align 8
  %31 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call56 = call %struct._GList* @gimp_image_item_list_get_list(%struct._GimpImage* %31, i32 2, i32 4)
  store %struct._GList* %call56, %struct._GList** %channels, align 8
  %32 = load %struct._GList*, %struct._GList** %channels, align 8
  %call57 = call %struct._GList* @gimp_image_item_list_filter(%struct._GList* %32)
  store %struct._GList* %call57, %struct._GList** %channels, align 8
  %33 = load %struct._GList*, %struct._GList** %items, align 8
  %tobool58 = icmp ne %struct._GList* %33, null
  br i1 %tobool58, label %land.lhs.true.59, label %if.end.64

land.lhs.true.59:                                 ; preds = %do.end.52
  %34 = load %struct._GList*, %struct._GList** %channels, align 8
  %tobool60 = icmp ne %struct._GList* %34, null
  br i1 %tobool60, label %if.then.61, label %if.end.64

if.then.61:                                       ; preds = %land.lhs.true.59
  %35 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call62 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0), i64 10)
  %call63 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %35, i32 32, i8* %call62)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.61, %land.lhs.true.59, %do.end.52
  %36 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %37 = load %struct._GList*, %struct._GList** %items, align 8
  %38 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %39 = load i32, i32* %rotate_type.addr, align 4
  %40 = load double, double* %center_x.addr, align 8
  %41 = load double, double* %center_y.addr, align 8
  %42 = load i32, i32* %clip_result.addr, align 4
  call void @gimp_image_item_list_rotate(%struct._GimpImage* %36, %struct._GList* %37, %struct._GimpContext* %38, i32 %39, double %40, double %41, i32 %42)
  %43 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %44 = load %struct._GList*, %struct._GList** %channels, align 8
  %45 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %46 = load i32, i32* %rotate_type.addr, align 4
  %47 = load double, double* %center_x.addr, align 8
  %48 = load double, double* %center_y.addr, align 8
  call void @gimp_image_item_list_rotate(%struct._GimpImage* %43, %struct._GList* %44, %struct._GimpContext* %45, i32 %46, double %47, double %48, i32 1)
  %49 = load %struct._GList*, %struct._GList** %items, align 8
  %tobool65 = icmp ne %struct._GList* %49, null
  br i1 %tobool65, label %land.lhs.true.66, label %if.end.70

land.lhs.true.66:                                 ; preds = %if.end.64
  %50 = load %struct._GList*, %struct._GList** %channels, align 8
  %tobool67 = icmp ne %struct._GList* %50, null
  br i1 %tobool67, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %land.lhs.true.66
  %51 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call69 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %51)
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.68, %land.lhs.true.66, %if.end.64
  %52 = load %struct._GList*, %struct._GList** %items, align 8
  call void @g_list_free(%struct._GList* %52)
  %53 = load %struct._GList*, %struct._GList** %channels, align 8
  call void @g_list_free(%struct._GList* %53)
  br label %return

return:                                           ; preds = %if.end.70, %if.else.50, %if.else.43, %if.else.36, %if.else.9
  ret void
}

declare i32 @gimp_image_undo_group_start(%struct._GimpImage*, i32, i8*) #3

declare i8* @g_dpgettext(i8*, i8*, i64) #3

declare void @gimp_image_item_list_rotate(%struct._GimpImage*, %struct._GList*, %struct._GimpContext*, i32, double, double, i32) #3

declare i32 @gimp_image_undo_group_end(%struct._GimpImage*) #3

; Function Attrs: nounwind uwtable
define void @gimp_item_linked_transform(%struct._GimpItem* %item, %struct._GimpContext* %context, %struct._GimpMatrix3* %matrix, i32 %direction, i32 %interpolation_type, i32 %recursion_level, i32 %clip_result, %struct._GimpProgress* %progress) #0 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %matrix.addr = alloca %struct._GimpMatrix3*, align 8
  %direction.addr = alloca i32, align 4
  %interpolation_type.addr = alloca i32, align 4
  %recursion_level.addr = alloca i32, align 4
  %clip_result.addr = alloca i32, align 4
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %items = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst56 = alloca %struct._GTypeInstance*, align 8
  %__t58 = alloca i64, align 8
  %__r61 = alloca i32, align 4
  %tmp76 = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpMatrix3* %matrix, %struct._GimpMatrix3** %matrix.addr, align 8
  store i32 %direction, i32* %direction.addr, align 4
  store i32 %interpolation_type, i32* %interpolation_type.addr, align 4
  store i32 %recursion_level, i32* %recursion_level.addr, align 4
  store i32 %clip_result, i32* %clip_result.addr, align 4
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_item_linked_transform, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_item_linked_transform, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call40 = call i32 @gimp_item_get_linked(%struct._GimpItem* %26)
  %cmp41 = icmp eq i32 %call40, 1
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %do.body.39
  br label %if.end.44

if.else.43:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_item_linked_transform, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.44:                                        ; preds = %if.then.42
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  br label %do.body.46

do.body.46:                                       ; preds = %do.end.45
  %27 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call47 = call i32 @gimp_item_is_attached(%struct._GimpItem* %27)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %do.body.46
  br label %if.end.51

if.else.50:                                       ; preds = %do.body.46
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_item_linked_transform, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.51:                                        ; preds = %if.then.49
  br label %do.end.52

do.end.52:                                        ; preds = %if.end.51
  br label %do.body.53

do.body.53:                                       ; preds = %do.end.52
  %28 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %cmp54 = icmp eq %struct._GimpProgress* %28, null
  br i1 %cmp54, label %if.then.78, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.53
  %29 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %30 = bitcast %struct._GimpProgress* %29 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %30, %struct._GTypeInstance** %__inst56, align 8
  %call59 = call i64 @gimp_progress_interface_get_type() #4
  store i64 %call59, i64* %__t58, align 8
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst56, align 8
  %tobool62 = icmp ne %struct._GTypeInstance* %31, null
  br i1 %tobool62, label %if.else.64, label %if.then.63

if.then.63:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r61, align 4
  br label %if.end.75

if.else.64:                                       ; preds = %lor.lhs.false
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst56, align 8
  %g_class65 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class65, align 8
  %tobool66 = icmp ne %struct._GTypeClass* %33, null
  br i1 %tobool66, label %land.lhs.true.67, label %if.else.72

land.lhs.true.67:                                 ; preds = %if.else.64
  %34 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst56, align 8
  %g_class68 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %34, i32 0, i32 0
  %35 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class68, align 8
  %g_type69 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %35, i32 0, i32 0
  %36 = load i64, i64* %g_type69, align 8
  %37 = load i64, i64* %__t58, align 8
  %cmp70 = icmp eq i64 %36, %37
  br i1 %cmp70, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %land.lhs.true.67
  store i32 1, i32* %__r61, align 4
  br label %if.end.74

if.else.72:                                       ; preds = %land.lhs.true.67, %if.else.64
  %38 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst56, align 8
  %39 = load i64, i64* %__t58, align 8
  %call73 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %38, i64 %39) #5
  store i32 %call73, i32* %__r61, align 4
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.72, %if.then.71
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.then.63
  %40 = load i32, i32* %__r61, align 4
  store i32 %40, i32* %tmp76
  %41 = load i32, i32* %tmp76
  %tobool77 = icmp ne i32 %41, 0
  br i1 %tobool77, label %if.then.78, label %if.else.79

if.then.78:                                       ; preds = %if.end.75, %do.body.53
  br label %if.end.80

if.else.79:                                       ; preds = %if.end.75
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_item_linked_transform, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.80:                                        ; preds = %if.then.78
  br label %do.end.81

do.end.81:                                        ; preds = %if.end.80
  %42 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call82 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %42)
  store %struct._GimpImage* %call82, %struct._GimpImage** %image, align 8
  %43 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call83 = call %struct._GList* @gimp_image_item_list_get_list(%struct._GimpImage* %43, i32 7, i32 4)
  store %struct._GList* %call83, %struct._GList** %items, align 8
  %44 = load %struct._GList*, %struct._GList** %items, align 8
  %call84 = call %struct._GList* @gimp_image_item_list_filter(%struct._GList* %44)
  store %struct._GList* %call84, %struct._GList** %items, align 8
  %45 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %46 = load %struct._GList*, %struct._GList** %items, align 8
  %47 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %48 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %49 = load i32, i32* %direction.addr, align 4
  %50 = load i32, i32* %interpolation_type.addr, align 4
  %51 = load i32, i32* %recursion_level.addr, align 4
  %52 = load i32, i32* %clip_result.addr, align 4
  %53 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_image_item_list_transform(%struct._GimpImage* %45, %struct._GList* %46, %struct._GimpContext* %47, %struct._GimpMatrix3* %48, i32 %49, i32 %50, i32 %51, i32 %52, %struct._GimpProgress* %53)
  %54 = load %struct._GList*, %struct._GList** %items, align 8
  call void @g_list_free(%struct._GList* %54)
  br label %return

return:                                           ; preds = %do.end.81, %if.else.79, %if.else.50, %if.else.43, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #1

declare void @gimp_image_item_list_transform(%struct._GimpImage*, %struct._GList*, %struct._GimpContext*, %struct._GimpMatrix3*, i32, i32, i32, i32, %struct._GimpProgress*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
