; ModuleID = './app/core/gimpimage-arrange.bc'
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
%struct._GimpGuide = type { %struct._GObject, i32, i32, i32 }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GeglNode = type opaque
%struct._BoundSeg = type opaque
%struct._GimpVectors = type { %struct._GimpItem, %struct._GList*, i32, i32, double, i8**, i32, i32, double, double, double, double }

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_image_arrange_objects = private unnamed_addr constant [27 x i8] c"gimp_image_arrange_objects\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"G_IS_OBJECT (reference) || reference == NULL\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"align-offset\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"undo-type\04Arrange Objects\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"Alignment object is not an image, item or guide.\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"gimpimage-arrange.c\00", align 1
@__func__.compute_offset = private unnamed_addr constant [15 x i8] c"compute_offset\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_image_arrange_objects(%struct._GimpImage* %image, %struct._GList* %list, i32 %alignment, %struct._GObject* %reference, i32 %reference_alignment, i32 %offset) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %list.addr = alloca %struct._GList*, align 8
  %alignment.addr = alloca i32, align 4
  %reference.addr = alloca %struct._GObject*, align 8
  %reference_alignment.addr = alloca i32, align 4
  %offset.addr = alloca i32, align 4
  %do_x = alloca i32, align 4
  %do_y = alloca i32, align 4
  %z0 = alloca i32, align 4
  %object_list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %l = alloca %struct._GList*, align 8
  %n = alloca i32, align 4
  %target = alloca %struct._GObject*, align 8
  %xtranslate = alloca i32, align 4
  %ytranslate = alloca i32, align 4
  %z1 = alloca i32, align 4
  %__inst55 = alloca %struct._GTypeInstance*, align 8
  %__t57 = alloca i64, align 8
  %__r60 = alloca i32, align 4
  %tmp76 = alloca i32, align 4
  %__inst83 = alloca %struct._GTypeInstance*, align 8
  %__t85 = alloca i64, align 8
  %__r88 = alloca i32, align 4
  %tmp104 = alloca i32, align 4
  %guide = alloca %struct._GimpGuide*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GList* %list, %struct._GList** %list.addr, align 8
  store i32 %alignment, i32* %alignment.addr, align 4
  store %struct._GObject* %reference, %struct._GObject** %reference.addr, align 8
  store i32 %reference_alignment, i32* %reference_alignment.addr, align 4
  store i32 %offset, i32* %offset.addr, align 4
  store i32 0, i32* %do_x, align 4
  store i32 0, i32* %do_y, align 4
  store i32 0, i32* %z0, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_image_arrange_objects, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GObject*, %struct._GObject** %reference.addr, align 8
  %14 = bitcast %struct._GObject* %13 to %struct._GTypeInstance*
  %call12 = call i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance* %14, i64 80) #6
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %15 = load %struct._GObject*, %struct._GObject** %reference.addr, align 8
  %cmp14 = icmp eq %struct._GObject* %15, null
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %lor.lhs.false, %do.body.11
  br label %if.end.17

if.else.16:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_image_arrange_objects, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %16 = load i32, i32* %alignment.addr, align 4
  switch i32 %16, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 6, label %sw.bb.19
    i32 7, label %sw.bb.19
    i32 8, label %sw.bb.19
    i32 3, label %sw.bb.20
    i32 4, label %sw.bb.20
    i32 5, label %sw.bb.20
    i32 9, label %sw.bb.21
    i32 10, label %sw.bb.21
    i32 11, label %sw.bb.21
  ]

sw.bb:                                            ; preds = %do.end.18, %do.end.18, %do.end.18
  store i32 1, i32* %do_x, align 4
  %17 = load %struct._GList*, %struct._GList** %list.addr, align 8
  call void @compute_offsets(%struct._GList* %17, i32 3)
  br label %sw.epilog

sw.bb.19:                                         ; preds = %do.end.18, %do.end.18, %do.end.18
  store i32 1, i32* %do_x, align 4
  %18 = load %struct._GList*, %struct._GList** %list.addr, align 8
  %19 = load i32, i32* %alignment.addr, align 4
  call void @compute_offsets(%struct._GList* %18, i32 %19)
  br label %sw.epilog

sw.bb.20:                                         ; preds = %do.end.18, %do.end.18, %do.end.18
  store i32 1, i32* %do_y, align 4
  %20 = load %struct._GList*, %struct._GList** %list.addr, align 8
  call void @compute_offsets(%struct._GList* %20, i32 0)
  br label %sw.epilog

sw.bb.21:                                         ; preds = %do.end.18, %do.end.18, %do.end.18
  store i32 1, i32* %do_y, align 4
  %21 = load %struct._GList*, %struct._GList** %list.addr, align 8
  %22 = load i32, i32* %alignment.addr, align 4
  call void @compute_offsets(%struct._GList* %21, i32 %22)
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.18, %sw.bb.21, %sw.bb.20, %sw.bb.19, %sw.bb
  %23 = load %struct._GList*, %struct._GList** %list.addr, align 8
  %call22 = call %struct._GList* @sort_by_offset(%struct._GList* %23)
  store %struct._GList* %call22, %struct._GList** %object_list, align 8
  %24 = load %struct._GList*, %struct._GList** %list.addr, align 8
  %25 = load i32, i32* %alignment.addr, align 4
  call void @compute_offsets(%struct._GList* %24, i32 %25)
  %26 = load %struct._GObject*, %struct._GObject** %reference.addr, align 8
  %cmp23 = icmp eq %struct._GObject* %26, null
  br i1 %cmp23, label %if.then.24, label %if.else.27

if.then.24:                                       ; preds = %sw.epilog
  %27 = load %struct._GList*, %struct._GList** %object_list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %27, i32 0, i32 0
  %28 = load i8*, i8** %data, align 8
  %29 = bitcast i8* %28 to %struct._GTypeInstance*
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 80)
  %30 = bitcast %struct._GTypeInstance* %call25 to %struct._GObject*
  store %struct._GObject* %30, %struct._GObject** %reference.addr, align 8
  %31 = load %struct._GList*, %struct._GList** %object_list, align 8
  %tobool26 = icmp ne %struct._GList* %31, null
  br i1 %tobool26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.24
  %32 = load %struct._GList*, %struct._GList** %object_list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %32, i32 0, i32 1
  %33 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.24
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %33, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %object_list, align 8
  br label %if.end.28

if.else.27:                                       ; preds = %sw.epilog
  %34 = load %struct._GObject*, %struct._GObject** %reference.addr, align 8
  %35 = load i32, i32* %reference_alignment.addr, align 4
  call void @compute_offset(%struct._GObject* %34, i32 %35)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.27, %cond.end
  %36 = load %struct._GObject*, %struct._GObject** %reference.addr, align 8
  %call29 = call i8* @g_object_get_data(%struct._GObject* %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0))
  %37 = ptrtoint i8* %call29 to i64
  %conv = trunc i64 %37 to i32
  store i32 %conv, i32* %z0, align 4
  %38 = load %struct._GList*, %struct._GList** %object_list, align 8
  %tobool30 = icmp ne %struct._GList* %38, null
  br i1 %tobool30, label %if.then.31, label %if.end.125

if.then.31:                                       ; preds = %if.end.28
  %39 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call34 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0), i64 10)
  %call35 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %39, i32 20, i8* %call34)
  %40 = load %struct._GList*, %struct._GList** %object_list, align 8
  store %struct._GList* %40, %struct._GList** %l, align 8
  store i32 1, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %cond.end.122, %if.then.31
  %41 = load %struct._GList*, %struct._GList** %l, align 8
  %tobool36 = icmp ne %struct._GList* %41, null
  br i1 %tobool36, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load %struct._GList*, %struct._GList** %l, align 8
  %data38 = getelementptr inbounds %struct._GList, %struct._GList* %42, i32 0, i32 0
  %43 = load i8*, i8** %data38, align 8
  %44 = bitcast i8* %43 to %struct._GTypeInstance*
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 80)
  %45 = bitcast %struct._GTypeInstance* %call39 to %struct._GObject*
  store %struct._GObject* %45, %struct._GObject** %target, align 8
  store i32 0, i32* %xtranslate, align 4
  store i32 0, i32* %ytranslate, align 4
  %46 = load %struct._GObject*, %struct._GObject** %target, align 8
  %call43 = call i8* @g_object_get_data(%struct._GObject* %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0))
  %47 = ptrtoint i8* %call43 to i64
  %conv44 = trunc i64 %47 to i32
  store i32 %conv44, i32* %z1, align 4
  %48 = load i32, i32* %do_x, align 4
  %tobool45 = icmp ne i32 %48, 0
  br i1 %tobool45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %for.body
  %49 = load i32, i32* %z0, align 4
  %50 = load i32, i32* %z1, align 4
  %sub = sub nsw i32 %49, %50
  %51 = load i32, i32* %n, align 4
  %52 = load i32, i32* %offset.addr, align 4
  %mul = mul nsw i32 %51, %52
  %add = add nsw i32 %sub, %mul
  store i32 %add, i32* %xtranslate, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %for.body
  %53 = load i32, i32* %do_y, align 4
  %tobool48 = icmp ne i32 %53, 0
  br i1 %tobool48, label %if.then.49, label %if.end.53

if.then.49:                                       ; preds = %if.end.47
  %54 = load i32, i32* %z0, align 4
  %55 = load i32, i32* %z1, align 4
  %sub50 = sub nsw i32 %54, %55
  %56 = load i32, i32* %n, align 4
  %57 = load i32, i32* %offset.addr, align 4
  %mul51 = mul nsw i32 %56, %57
  %add52 = add nsw i32 %sub50, %mul51
  store i32 %add52, i32* %ytranslate, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.49, %if.end.47
  %58 = load %struct._GObject*, %struct._GObject** %target, align 8
  %59 = bitcast %struct._GObject* %58 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %59, %struct._GTypeInstance** %__inst55, align 8
  %call58 = call i64 @gimp_item_get_type() #5
  store i64 %call58, i64* %__t57, align 8
  %60 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst55, align 8
  %tobool61 = icmp ne %struct._GTypeInstance* %60, null
  br i1 %tobool61, label %if.else.63, label %if.then.62

if.then.62:                                       ; preds = %if.end.53
  store i32 0, i32* %__r60, align 4
  br label %if.end.75

if.else.63:                                       ; preds = %if.end.53
  %61 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst55, align 8
  %g_class64 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %61, i32 0, i32 0
  %62 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class64, align 8
  %tobool65 = icmp ne %struct._GTypeClass* %62, null
  br i1 %tobool65, label %land.lhs.true.66, label %if.else.72

land.lhs.true.66:                                 ; preds = %if.else.63
  %63 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst55, align 8
  %g_class67 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %63, i32 0, i32 0
  %64 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class67, align 8
  %g_type68 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %64, i32 0, i32 0
  %65 = load i64, i64* %g_type68, align 8
  %66 = load i64, i64* %__t57, align 8
  %cmp69 = icmp eq i64 %65, %66
  br i1 %cmp69, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %land.lhs.true.66
  store i32 1, i32* %__r60, align 4
  br label %if.end.74

if.else.72:                                       ; preds = %land.lhs.true.66, %if.else.63
  %67 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst55, align 8
  %68 = load i64, i64* %__t57, align 8
  %call73 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %67, i64 %68) #6
  store i32 %call73, i32* %__r60, align 4
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.72, %if.then.71
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.then.62
  %69 = load i32, i32* %__r60, align 4
  store i32 %69, i32* %tmp76
  %70 = load i32, i32* %tmp76
  %tobool77 = icmp ne i32 %70, 0
  br i1 %tobool77, label %if.then.78, label %if.else.81

if.then.78:                                       ; preds = %if.end.75
  %71 = load %struct._GObject*, %struct._GObject** %target, align 8
  %72 = bitcast %struct._GObject* %71 to %struct._GTypeInstance*
  %call79 = call i64 @gimp_item_get_type() #5
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call79)
  %73 = bitcast %struct._GTypeInstance* %call80 to %struct._GimpItem*
  %74 = load i32, i32* %xtranslate, align 4
  %75 = load i32, i32* %ytranslate, align 4
  call void @gimp_item_translate(%struct._GimpItem* %73, i32 %74, i32 %75, i32 1)
  br label %if.end.117

if.else.81:                                       ; preds = %if.end.75
  %76 = load %struct._GObject*, %struct._GObject** %target, align 8
  %77 = bitcast %struct._GObject* %76 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %77, %struct._GTypeInstance** %__inst83, align 8
  %call86 = call i64 @gimp_guide_get_type() #5
  store i64 %call86, i64* %__t85, align 8
  %78 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst83, align 8
  %tobool89 = icmp ne %struct._GTypeInstance* %78, null
  br i1 %tobool89, label %if.else.91, label %if.then.90

if.then.90:                                       ; preds = %if.else.81
  store i32 0, i32* %__r88, align 4
  br label %if.end.103

if.else.91:                                       ; preds = %if.else.81
  %79 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst83, align 8
  %g_class92 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %79, i32 0, i32 0
  %80 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class92, align 8
  %tobool93 = icmp ne %struct._GTypeClass* %80, null
  br i1 %tobool93, label %land.lhs.true.94, label %if.else.100

land.lhs.true.94:                                 ; preds = %if.else.91
  %81 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst83, align 8
  %g_class95 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %81, i32 0, i32 0
  %82 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class95, align 8
  %g_type96 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %82, i32 0, i32 0
  %83 = load i64, i64* %g_type96, align 8
  %84 = load i64, i64* %__t85, align 8
  %cmp97 = icmp eq i64 %83, %84
  br i1 %cmp97, label %if.then.99, label %if.else.100

if.then.99:                                       ; preds = %land.lhs.true.94
  store i32 1, i32* %__r88, align 4
  br label %if.end.102

if.else.100:                                      ; preds = %land.lhs.true.94, %if.else.91
  %85 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst83, align 8
  %86 = load i64, i64* %__t85, align 8
  %call101 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %85, i64 %86) #6
  store i32 %call101, i32* %__r88, align 4
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.100, %if.then.99
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %if.then.90
  %87 = load i32, i32* %__r88, align 4
  store i32 %87, i32* %tmp104
  %88 = load i32, i32* %tmp104
  %tobool105 = icmp ne i32 %88, 0
  br i1 %tobool105, label %if.then.106, label %if.end.116

if.then.106:                                      ; preds = %if.end.103
  %89 = load %struct._GObject*, %struct._GObject** %target, align 8
  %90 = bitcast %struct._GObject* %89 to %struct._GTypeInstance*
  %call108 = call i64 @gimp_guide_get_type() #5
  %call109 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %90, i64 %call108)
  %91 = bitcast %struct._GTypeInstance* %call109 to %struct._GimpGuide*
  store %struct._GimpGuide* %91, %struct._GimpGuide** %guide, align 8
  %92 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %call110 = call i32 @gimp_guide_get_orientation(%struct._GimpGuide* %92)
  switch i32 %call110, label %sw.default [
    i32 1, label %sw.bb.111
    i32 0, label %sw.bb.113
  ]

sw.bb.111:                                        ; preds = %if.then.106
  %93 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %94 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %95 = load i32, i32* %z1, align 4
  %96 = load i32, i32* %xtranslate, align 4
  %add112 = add nsw i32 %95, %96
  call void @gimp_image_move_guide(%struct._GimpImage* %93, %struct._GimpGuide* %94, i32 %add112, i32 1)
  br label %sw.epilog.115

sw.bb.113:                                        ; preds = %if.then.106
  %97 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %98 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %99 = load i32, i32* %z1, align 4
  %100 = load i32, i32* %ytranslate, align 4
  %add114 = add nsw i32 %99, %100
  call void @gimp_image_move_guide(%struct._GimpImage* %97, %struct._GimpGuide* %98, i32 %add114, i32 1)
  br label %sw.epilog.115

sw.default:                                       ; preds = %if.then.106
  br label %sw.epilog.115

sw.epilog.115:                                    ; preds = %sw.default, %sw.bb.113, %sw.bb.111
  br label %if.end.116

if.end.116:                                       ; preds = %sw.epilog.115, %if.end.103
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %if.then.78
  br label %for.inc

for.inc:                                          ; preds = %if.end.117
  %101 = load %struct._GList*, %struct._GList** %l, align 8
  %tobool118 = icmp ne %struct._GList* %101, null
  br i1 %tobool118, label %cond.true.119, label %cond.false.121

cond.true.119:                                    ; preds = %for.inc
  %102 = load %struct._GList*, %struct._GList** %l, align 8
  %next120 = getelementptr inbounds %struct._GList, %struct._GList* %102, i32 0, i32 1
  %103 = load %struct._GList*, %struct._GList** %next120, align 8
  br label %cond.end.122

cond.false.121:                                   ; preds = %for.inc
  br label %cond.end.122

cond.end.122:                                     ; preds = %cond.false.121, %cond.true.119
  %cond123 = phi %struct._GList* [ %103, %cond.true.119 ], [ null, %cond.false.121 ]
  store %struct._GList* %cond123, %struct._GList** %l, align 8
  %104 = load i32, i32* %n, align 4
  %inc = add nsw i32 %104, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %105 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call124 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %105)
  br label %if.end.125

if.end.125:                                       ; preds = %for.end, %if.end.28
  %106 = load %struct._GList*, %struct._GList** %object_list, align 8
  call void @g_list_free(%struct._GList* %106)
  br label %return

return:                                           ; preds = %if.end.125, %if.else.16, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance*, i64) #2

; Function Attrs: nounwind uwtable
define internal void @compute_offsets(%struct._GList* %list, i32 %alignment) #0 {
entry:
  %list.addr = alloca %struct._GList*, align 8
  %alignment.addr = alloca i32, align 4
  %l = alloca %struct._GList*, align 8
  store %struct._GList* %list, %struct._GList** %list.addr, align 8
  store i32 %alignment, i32* %alignment.addr, align 4
  %0 = load %struct._GList*, %struct._GList** %list.addr, align 8
  store %struct._GList* %0, %struct._GList** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %1 = load %struct._GList*, %struct._GList** %l, align 8
  %tobool = icmp ne %struct._GList* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._GList*, %struct._GList** %l, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  %4 = bitcast i8* %3 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 80)
  %5 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %6 = load i32, i32* %alignment.addr, align 4
  call void @compute_offset(%struct._GObject* %5, i32 %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load %struct._GList*, %struct._GList** %l, align 8
  %tobool1 = icmp ne %struct._GList* %7, null
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %8 = load %struct._GList*, %struct._GList** %l, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %8, i32 0, i32 1
  %9 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %9, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GList* @sort_by_offset(%struct._GList* %list) #0 {
entry:
  %list.addr = alloca %struct._GList*, align 8
  store %struct._GList* %list, %struct._GList** %list.addr, align 8
  %0 = load %struct._GList*, %struct._GList** %list.addr, align 8
  %call = call %struct._GList* @g_list_copy(%struct._GList* %0)
  %call1 = call %struct._GList* @g_list_sort(%struct._GList* %call, i32 (i8*, i8*)* @offset_compare)
  ret %struct._GList* %call1
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind uwtable
define internal void @compute_offset(%struct._GObject* %object, i32 %alignment) #0 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %alignment.addr = alloca i32, align 4
  %object_offset_x = alloca i32, align 4
  %object_offset_y = alloca i32, align 4
  %object_height = alloca i32, align 4
  %object_width = alloca i32, align 4
  %offset = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %__inst16 = alloca %struct._GTypeInstance*, align 8
  %__t18 = alloca i64, align 8
  %__r21 = alloca i32, align 4
  %tmp36 = alloca i32, align 4
  %channel = alloca %struct._GimpChannel*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %__inst60 = alloca %struct._GTypeInstance*, align 8
  %__t62 = alloca i64, align 8
  %__r65 = alloca i32, align 4
  %tmp80 = alloca i32, align 4
  %item84 = alloca %struct._GimpItem*, align 8
  %__inst88 = alloca %struct._GTypeInstance*, align 8
  %__t90 = alloca i64, align 8
  %__r93 = alloca i32, align 4
  %tmp108 = alloca i32, align 4
  %x1_f = alloca double, align 8
  %y1_f = alloca double, align 8
  %x2_f = alloca double, align 8
  %y2_f = alloca double, align 8
  %__inst132 = alloca %struct._GTypeInstance*, align 8
  %__t134 = alloca i64, align 8
  %__r137 = alloca i32, align 4
  %tmp153 = alloca i32, align 4
  %guide = alloca %struct._GimpGuide*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %alignment, i32* %alignment.addr, align 4
  store i32 0, i32* %object_offset_x, align 4
  store i32 0, i32* %object_offset_y, align 4
  store i32 0, i32* %object_height, align 4
  store i32 0, i32* %object_width, align 4
  store i32 0, i32* %offset, align 4
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #5
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
  br i1 %tobool7, label %if.then.8, label %if.else.14

if.then.8:                                        ; preds = %if.end.6
  %13 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %14 = bitcast %struct._GObject* %13 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_image_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call10)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpImage*
  store %struct._GimpImage* %15, %struct._GimpImage** %image, align 8
  store i32 0, i32* %object_offset_x, align 4
  store i32 0, i32* %object_offset_y, align 4
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call12 = call i32 @gimp_image_get_height(%struct._GimpImage* %16)
  store i32 %call12, i32* %object_height, align 4
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call13 = call i32 @gimp_image_get_width(%struct._GimpImage* %17)
  store i32 %call13, i32* %object_width, align 4
  br label %if.end.167

if.else.14:                                       ; preds = %if.end.6
  %18 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %19 = bitcast %struct._GObject* %18 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %19, %struct._GTypeInstance** %__inst16, align 8
  %call19 = call i64 @gimp_channel_get_type() #5
  store i64 %call19, i64* %__t18, align 8
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %tobool22 = icmp ne %struct._GTypeInstance* %20, null
  br i1 %tobool22, label %if.else.24, label %if.then.23

if.then.23:                                       ; preds = %if.else.14
  store i32 0, i32* %__r21, align 4
  br label %if.end.35

if.else.24:                                       ; preds = %if.else.14
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %tobool26 = icmp ne %struct._GTypeClass* %22, null
  br i1 %tobool26, label %land.lhs.true.27, label %if.else.32

land.lhs.true.27:                                 ; preds = %if.else.24
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %g_class28 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %23, i32 0, i32 0
  %24 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class28, align 8
  %g_type29 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %24, i32 0, i32 0
  %25 = load i64, i64* %g_type29, align 8
  %26 = load i64, i64* %__t18, align 8
  %cmp30 = icmp eq i64 %25, %26
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %land.lhs.true.27
  store i32 1, i32* %__r21, align 4
  br label %if.end.34

if.else.32:                                       ; preds = %land.lhs.true.27, %if.else.24
  %27 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %28 = load i64, i64* %__t18, align 8
  %call33 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %27, i64 %28) #6
  store i32 %call33, i32* %__r21, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.32, %if.then.31
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.23
  %29 = load i32, i32* %__r21, align 4
  store i32 %29, i32* %tmp36
  %30 = load i32, i32* %tmp36
  %tobool37 = icmp ne i32 %30, 0
  br i1 %tobool37, label %if.then.38, label %if.else.58

if.then.38:                                       ; preds = %if.end.35
  %31 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %32 = bitcast %struct._GObject* %31 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_channel_get_type() #5
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call40)
  %33 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpChannel*
  store %struct._GimpChannel* %33, %struct._GimpChannel** %channel, align 8
  %34 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %call42 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %34)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.else.50

if.then.44:                                       ; preds = %if.then.38
  %35 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %36 = bitcast %struct._GObject* %35 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_item_get_type() #5
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call46)
  %37 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpItem*
  store %struct._GimpItem* %37, %struct._GimpItem** %item, align 8
  %38 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  call void @gimp_item_get_offset(%struct._GimpItem* %38, i32* %object_offset_x, i32* %object_offset_y)
  %39 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call48 = call i32 @gimp_item_get_width(%struct._GimpItem* %39)
  store i32 %call48, i32* %object_width, align 4
  %40 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call49 = call i32 @gimp_item_get_height(%struct._GimpItem* %40)
  store i32 %call49, i32* %object_height, align 4
  br label %if.end.57

if.else.50:                                       ; preds = %if.then.38
  %41 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %call55 = call i32 @gimp_channel_bounds(%struct._GimpChannel* %41, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %42 = load i32, i32* %x1, align 4
  store i32 %42, i32* %object_offset_x, align 4
  %43 = load i32, i32* %y1, align 4
  store i32 %43, i32* %object_offset_y, align 4
  %44 = load i32, i32* %x2, align 4
  %45 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %44, %45
  store i32 %sub, i32* %object_width, align 4
  %46 = load i32, i32* %y2, align 4
  %47 = load i32, i32* %y1, align 4
  %sub56 = sub nsw i32 %46, %47
  store i32 %sub56, i32* %object_height, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.50, %if.then.44
  br label %if.end.166

if.else.58:                                       ; preds = %if.end.35
  %48 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %49 = bitcast %struct._GObject* %48 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %49, %struct._GTypeInstance** %__inst60, align 8
  %call63 = call i64 @gimp_item_get_type() #5
  store i64 %call63, i64* %__t62, align 8
  %50 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst60, align 8
  %tobool66 = icmp ne %struct._GTypeInstance* %50, null
  br i1 %tobool66, label %if.else.68, label %if.then.67

if.then.67:                                       ; preds = %if.else.58
  store i32 0, i32* %__r65, align 4
  br label %if.end.79

if.else.68:                                       ; preds = %if.else.58
  %51 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst60, align 8
  %g_class69 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %51, i32 0, i32 0
  %52 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class69, align 8
  %tobool70 = icmp ne %struct._GTypeClass* %52, null
  br i1 %tobool70, label %land.lhs.true.71, label %if.else.76

land.lhs.true.71:                                 ; preds = %if.else.68
  %53 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst60, align 8
  %g_class72 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %53, i32 0, i32 0
  %54 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class72, align 8
  %g_type73 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %54, i32 0, i32 0
  %55 = load i64, i64* %g_type73, align 8
  %56 = load i64, i64* %__t62, align 8
  %cmp74 = icmp eq i64 %55, %56
  br i1 %cmp74, label %if.then.75, label %if.else.76

if.then.75:                                       ; preds = %land.lhs.true.71
  store i32 1, i32* %__r65, align 4
  br label %if.end.78

if.else.76:                                       ; preds = %land.lhs.true.71, %if.else.68
  %57 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst60, align 8
  %58 = load i64, i64* %__t62, align 8
  %call77 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %57, i64 %58) #6
  store i32 %call77, i32* %__r65, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.76, %if.then.75
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.then.67
  %59 = load i32, i32* %__r65, align 4
  store i32 %59, i32* %tmp80
  %60 = load i32, i32* %tmp80
  %tobool81 = icmp ne i32 %60, 0
  br i1 %tobool81, label %if.then.82, label %if.else.130

if.then.82:                                       ; preds = %if.end.79
  %61 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %62 = bitcast %struct._GObject* %61 to %struct._GTypeInstance*
  %call85 = call i64 @gimp_item_get_type() #5
  %call86 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call85)
  %63 = bitcast %struct._GTypeInstance* %call86 to %struct._GimpItem*
  store %struct._GimpItem* %63, %struct._GimpItem** %item84, align 8
  %64 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %65 = bitcast %struct._GObject* %64 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %65, %struct._GTypeInstance** %__inst88, align 8
  %call91 = call i64 @gimp_vectors_get_type() #5
  store i64 %call91, i64* %__t90, align 8
  %66 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst88, align 8
  %tobool94 = icmp ne %struct._GTypeInstance* %66, null
  br i1 %tobool94, label %if.else.96, label %if.then.95

if.then.95:                                       ; preds = %if.then.82
  store i32 0, i32* %__r93, align 4
  br label %if.end.107

if.else.96:                                       ; preds = %if.then.82
  %67 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst88, align 8
  %g_class97 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %67, i32 0, i32 0
  %68 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class97, align 8
  %tobool98 = icmp ne %struct._GTypeClass* %68, null
  br i1 %tobool98, label %land.lhs.true.99, label %if.else.104

land.lhs.true.99:                                 ; preds = %if.else.96
  %69 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst88, align 8
  %g_class100 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %69, i32 0, i32 0
  %70 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class100, align 8
  %g_type101 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %70, i32 0, i32 0
  %71 = load i64, i64* %g_type101, align 8
  %72 = load i64, i64* %__t90, align 8
  %cmp102 = icmp eq i64 %71, %72
  br i1 %cmp102, label %if.then.103, label %if.else.104

if.then.103:                                      ; preds = %land.lhs.true.99
  store i32 1, i32* %__r93, align 4
  br label %if.end.106

if.else.104:                                      ; preds = %land.lhs.true.99, %if.else.96
  %73 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst88, align 8
  %74 = load i64, i64* %__t90, align 8
  %call105 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %73, i64 %74) #6
  store i32 %call105, i32* %__r93, align 4
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.104, %if.then.103
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %if.then.95
  %75 = load i32, i32* %__r93, align 4
  store i32 %75, i32* %tmp108
  %76 = load i32, i32* %tmp108
  %tobool109 = icmp ne i32 %76, 0
  br i1 %tobool109, label %if.then.110, label %if.else.126

if.then.110:                                      ; preds = %if.end.107
  %77 = load %struct._GimpItem*, %struct._GimpItem** %item84, align 8
  %78 = bitcast %struct._GimpItem* %77 to %struct._GTypeInstance*
  %call115 = call i64 @gimp_vectors_get_type() #5
  %call116 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call115)
  %79 = bitcast %struct._GTypeInstance* %call116 to %struct._GimpVectors*
  %call117 = call i32 @gimp_vectors_bounds(%struct._GimpVectors* %79, double* %x1_f, double* %y1_f, double* %x2_f, double* %y2_f)
  %80 = load double, double* %x1_f, align 8
  %add = fadd double %80, 5.000000e-01
  %conv = fptosi double %add to i32
  store i32 %conv, i32* %object_offset_x, align 4
  %81 = load double, double* %y1_f, align 8
  %add118 = fadd double %81, 5.000000e-01
  %conv119 = fptosi double %add118 to i32
  store i32 %conv119, i32* %object_offset_y, align 4
  %82 = load double, double* %y2_f, align 8
  %83 = load double, double* %y1_f, align 8
  %sub120 = fsub double %82, %83
  %add121 = fadd double %sub120, 5.000000e-01
  %conv122 = fptosi double %add121 to i32
  store i32 %conv122, i32* %object_height, align 4
  %84 = load double, double* %x2_f, align 8
  %85 = load double, double* %x1_f, align 8
  %sub123 = fsub double %84, %85
  %add124 = fadd double %sub123, 5.000000e-01
  %conv125 = fptosi double %add124 to i32
  store i32 %conv125, i32* %object_width, align 4
  br label %if.end.129

if.else.126:                                      ; preds = %if.end.107
  %86 = load %struct._GimpItem*, %struct._GimpItem** %item84, align 8
  call void @gimp_item_get_offset(%struct._GimpItem* %86, i32* %object_offset_x, i32* %object_offset_y)
  %87 = load %struct._GimpItem*, %struct._GimpItem** %item84, align 8
  %call127 = call i32 @gimp_item_get_width(%struct._GimpItem* %87)
  store i32 %call127, i32* %object_width, align 4
  %88 = load %struct._GimpItem*, %struct._GimpItem** %item84, align 8
  %call128 = call i32 @gimp_item_get_height(%struct._GimpItem* %88)
  store i32 %call128, i32* %object_height, align 4
  br label %if.end.129

if.end.129:                                       ; preds = %if.else.126, %if.then.110
  br label %if.end.165

if.else.130:                                      ; preds = %if.end.79
  %89 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %90 = bitcast %struct._GObject* %89 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %90, %struct._GTypeInstance** %__inst132, align 8
  %call135 = call i64 @gimp_guide_get_type() #5
  store i64 %call135, i64* %__t134, align 8
  %91 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst132, align 8
  %tobool138 = icmp ne %struct._GTypeInstance* %91, null
  br i1 %tobool138, label %if.else.140, label %if.then.139

if.then.139:                                      ; preds = %if.else.130
  store i32 0, i32* %__r137, align 4
  br label %if.end.152

if.else.140:                                      ; preds = %if.else.130
  %92 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst132, align 8
  %g_class141 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %92, i32 0, i32 0
  %93 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class141, align 8
  %tobool142 = icmp ne %struct._GTypeClass* %93, null
  br i1 %tobool142, label %land.lhs.true.143, label %if.else.149

land.lhs.true.143:                                ; preds = %if.else.140
  %94 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst132, align 8
  %g_class144 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %94, i32 0, i32 0
  %95 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class144, align 8
  %g_type145 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %95, i32 0, i32 0
  %96 = load i64, i64* %g_type145, align 8
  %97 = load i64, i64* %__t134, align 8
  %cmp146 = icmp eq i64 %96, %97
  br i1 %cmp146, label %if.then.148, label %if.else.149

if.then.148:                                      ; preds = %land.lhs.true.143
  store i32 1, i32* %__r137, align 4
  br label %if.end.151

if.else.149:                                      ; preds = %land.lhs.true.143, %if.else.140
  %98 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst132, align 8
  %99 = load i64, i64* %__t134, align 8
  %call150 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %98, i64 %99) #6
  store i32 %call150, i32* %__r137, align 4
  br label %if.end.151

if.end.151:                                       ; preds = %if.else.149, %if.then.148
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.151, %if.then.139
  %100 = load i32, i32* %__r137, align 4
  store i32 %100, i32* %tmp153
  %101 = load i32, i32* %tmp153
  %tobool154 = icmp ne i32 %101, 0
  br i1 %tobool154, label %if.then.155, label %if.else.163

if.then.155:                                      ; preds = %if.end.152
  %102 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %103 = bitcast %struct._GObject* %102 to %struct._GTypeInstance*
  %call157 = call i64 @gimp_guide_get_type() #5
  %call158 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %103, i64 %call157)
  %104 = bitcast %struct._GTypeInstance* %call158 to %struct._GimpGuide*
  store %struct._GimpGuide* %104, %struct._GimpGuide** %guide, align 8
  %105 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %call159 = call i32 @gimp_guide_get_orientation(%struct._GimpGuide* %105)
  switch i32 %call159, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.161
  ]

sw.bb:                                            ; preds = %if.then.155
  %106 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %call160 = call i32 @gimp_guide_get_position(%struct._GimpGuide* %106)
  store i32 %call160, i32* %object_offset_x, align 4
  store i32 0, i32* %object_width, align 4
  br label %sw.epilog

sw.bb.161:                                        ; preds = %if.then.155
  %107 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %call162 = call i32 @gimp_guide_get_position(%struct._GimpGuide* %107)
  store i32 %call162, i32* %object_offset_y, align 4
  store i32 0, i32* %object_height, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.155
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.161, %sw.bb
  br label %if.end.164

if.else.163:                                      ; preds = %if.end.152
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.164

if.end.164:                                       ; preds = %if.else.163, %sw.epilog
  br label %if.end.165

if.end.165:                                       ; preds = %if.end.164, %if.end.129
  br label %if.end.166

if.end.166:                                       ; preds = %if.end.165, %if.end.57
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %if.then.8
  %108 = load i32, i32* %alignment.addr, align 4
  switch i32 %108, label %sw.default.179 [
    i32 0, label %sw.bb.168
    i32 6, label %sw.bb.168
    i32 1, label %sw.bb.169
    i32 7, label %sw.bb.169
    i32 2, label %sw.bb.171
    i32 8, label %sw.bb.171
    i32 3, label %sw.bb.173
    i32 9, label %sw.bb.173
    i32 4, label %sw.bb.174
    i32 10, label %sw.bb.174
    i32 5, label %sw.bb.177
    i32 11, label %sw.bb.177
  ]

sw.bb.168:                                        ; preds = %if.end.167, %if.end.167
  %109 = load i32, i32* %object_offset_x, align 4
  store i32 %109, i32* %offset, align 4
  br label %sw.epilog.180

sw.bb.169:                                        ; preds = %if.end.167, %if.end.167
  %110 = load i32, i32* %object_offset_x, align 4
  %111 = load i32, i32* %object_width, align 4
  %div = sdiv i32 %111, 2
  %add170 = add nsw i32 %110, %div
  store i32 %add170, i32* %offset, align 4
  br label %sw.epilog.180

sw.bb.171:                                        ; preds = %if.end.167, %if.end.167
  %112 = load i32, i32* %object_offset_x, align 4
  %113 = load i32, i32* %object_width, align 4
  %add172 = add nsw i32 %112, %113
  store i32 %add172, i32* %offset, align 4
  br label %sw.epilog.180

sw.bb.173:                                        ; preds = %if.end.167, %if.end.167
  %114 = load i32, i32* %object_offset_y, align 4
  store i32 %114, i32* %offset, align 4
  br label %sw.epilog.180

sw.bb.174:                                        ; preds = %if.end.167, %if.end.167
  %115 = load i32, i32* %object_offset_y, align 4
  %116 = load i32, i32* %object_height, align 4
  %div175 = sdiv i32 %116, 2
  %add176 = add nsw i32 %115, %div175
  store i32 %add176, i32* %offset, align 4
  br label %sw.epilog.180

sw.bb.177:                                        ; preds = %if.end.167, %if.end.167
  %117 = load i32, i32* %object_offset_y, align 4
  %118 = load i32, i32* %object_height, align 4
  %add178 = add nsw i32 %117, %118
  store i32 %add178, i32* %offset, align 4
  br label %sw.epilog.180

sw.default.179:                                   ; preds = %if.end.167
  br label %do.body

do.body:                                          ; preds = %sw.default.179
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), i32 350, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.compute_offset, i32 0, i32 0), i8* null) #7
  unreachable

do.end:                                           ; No predecessors!
  br label %sw.epilog.180

sw.epilog.180:                                    ; preds = %do.end, %sw.bb.177, %sw.bb.174, %sw.bb.173, %sw.bb.171, %sw.bb.169, %sw.bb.168
  %119 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %120 = load i32, i32* %offset, align 4
  %conv181 = sext i32 %120 to i64
  %121 = inttoptr i64 %conv181 to i8*
  call void @g_object_set_data(%struct._GObject* %119, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* %121)
  ret void
}

declare i8* @g_object_get_data(%struct._GObject*, i8*) #3

declare i32 @gimp_image_undo_group_start(%struct._GimpImage*, i32, i8*) #3

declare i8* @g_dpgettext(i8*, i8*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #1

declare void @gimp_item_translate(%struct._GimpItem*, i32, i32, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_guide_get_type() #1

declare i32 @gimp_guide_get_orientation(%struct._GimpGuide*) #3

declare void @gimp_image_move_guide(%struct._GimpImage*, %struct._GimpGuide*, i32, i32) #3

declare i32 @gimp_image_undo_group_end(%struct._GimpImage*) #3

declare void @g_list_free(%struct._GList*) #3

declare %struct._GList* @g_list_sort(%struct._GList*, i32 (i8*, i8*)*) #3

declare %struct._GList* @g_list_copy(%struct._GList*) #3

; Function Attrs: nounwind uwtable
define internal i32 @offset_compare(i8* %a, i8* %b) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %offset1 = alloca i32, align 4
  %offset2 = alloca i32, align 4
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0))
  %3 = ptrtoint i8* %call1 to i64
  %conv = trunc i64 %3 to i32
  store i32 %conv, i32* %offset1, align 4
  %4 = load i8*, i8** %b.addr, align 8
  %5 = bitcast i8* %4 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 80)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GObject*
  %call3 = call i8* @g_object_get_data(%struct._GObject* %6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0))
  %7 = ptrtoint i8* %call3 to i64
  %conv4 = trunc i64 %7 to i32
  store i32 %conv4, i32* %offset2, align 4
  %8 = load i32, i32* %offset1, align 4
  %9 = load i32, i32* %offset2, align 4
  %sub = sub nsw i32 %8, %9
  ret i32 %sub
}

declare i32 @gimp_image_get_height(%struct._GimpImage*) #3

declare i32 @gimp_image_get_width(%struct._GimpImage*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_get_type() #1

declare i32 @gimp_channel_is_empty(%struct._GimpChannel*) #3

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #3

declare i32 @gimp_item_get_width(%struct._GimpItem*) #3

declare i32 @gimp_item_get_height(%struct._GimpItem*) #3

declare i32 @gimp_channel_bounds(%struct._GimpChannel*, i32*, i32*, i32*, i32*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_vectors_get_type() #1

declare i32 @gimp_vectors_bounds(%struct._GimpVectors*, double*, double*, double*, double*) #3

declare i32 @gimp_guide_get_position(%struct._GimpGuide*) #3

declare void @g_printerr(i8*, ...) #3

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #4

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
