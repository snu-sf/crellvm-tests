; ModuleID = './app/core/gimpdrawable-operation.bc'
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
%struct._GeglNode = type opaque
%struct._GeglRectangle = type { i32, i32, i32, i32 }
%struct._TileManager = type opaque
%struct._GeglProcessor = type opaque

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_drawable_apply_operation = private unnamed_addr constant [30 x i8] c"gimp_drawable_apply_operation\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"GIMP_IS_DRAWABLE (drawable)\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"gimp_item_is_attached (GIMP_ITEM (drawable))\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"progress == NULL || GIMP_IS_PROGRESS (progress)\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"undo_desc != NULL\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"GEGL_IS_NODE (operation)\00", align 1
@__func__.gimp_drawable_apply_operation_to_tiles = private unnamed_addr constant [39 x i8] c"gimp_drawable_apply_operation_to_tiles\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"new_tiles != NULL\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"dont-cache\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"operation\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"gimp:tilemanager-source\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"tile-manager\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"linear\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"gimp:tilemanager-sink\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_drawable_apply_operation(%struct._GimpDrawable* %drawable, %struct._GimpProgress* %progress, i8* %undo_desc, %struct._GeglNode* %operation, i32 %linear) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %undo_desc.addr = alloca i8*, align 8
  %operation.addr = alloca %struct._GeglNode*, align 8
  %linear.addr = alloca i32, align 4
  %rect = alloca %struct._GeglRectangle, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst23 = alloca %struct._GTypeInstance*, align 8
  %__t25 = alloca i64, align 8
  %__r28 = alloca i32, align 4
  %tmp43 = alloca i32, align 4
  %__inst57 = alloca %struct._GTypeInstance*, align 8
  %__t59 = alloca i64, align 8
  %__r62 = alloca i32, align 4
  %tmp77 = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store i8* %undo_desc, i8** %undo_desc.addr, align 8
  store %struct._GeglNode* %operation, %struct._GeglNode** %operation.addr, align 8
  store i32 %linear, i32* %linear.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_drawable_apply_operation, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.96

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = bitcast %struct._GimpDrawable* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #4
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %call14 = call i32 @gimp_item_is_attached(%struct._GimpItem* %15)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.18

if.else.17:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_drawable_apply_operation, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.96

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.19
  %16 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %cmp21 = icmp eq %struct._GimpProgress* %16, null
  br i1 %cmp21, label %if.then.45, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.20
  %17 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %18 = bitcast %struct._GimpProgress* %17 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %18, %struct._GTypeInstance** %__inst23, align 8
  %call26 = call i64 @gimp_progress_interface_get_type() #4
  store i64 %call26, i64* %__t25, align 8
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst23, align 8
  %tobool29 = icmp ne %struct._GTypeInstance* %19, null
  br i1 %tobool29, label %if.else.31, label %if.then.30

if.then.30:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r28, align 4
  br label %if.end.42

if.else.31:                                       ; preds = %lor.lhs.false
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst23, align 8
  %g_class32 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class32, align 8
  %tobool33 = icmp ne %struct._GTypeClass* %21, null
  br i1 %tobool33, label %land.lhs.true.34, label %if.else.39

land.lhs.true.34:                                 ; preds = %if.else.31
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst23, align 8
  %g_class35 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class35, align 8
  %g_type36 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type36, align 8
  %25 = load i64, i64* %__t25, align 8
  %cmp37 = icmp eq i64 %24, %25
  br i1 %cmp37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %land.lhs.true.34
  store i32 1, i32* %__r28, align 4
  br label %if.end.41

if.else.39:                                       ; preds = %land.lhs.true.34, %if.else.31
  %26 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst23, align 8
  %27 = load i64, i64* %__t25, align 8
  %call40 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %26, i64 %27) #5
  store i32 %call40, i32* %__r28, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.39, %if.then.38
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.30
  %28 = load i32, i32* %__r28, align 4
  store i32 %28, i32* %tmp43
  %29 = load i32, i32* %tmp43
  %tobool44 = icmp ne i32 %29, 0
  br i1 %tobool44, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %if.end.42, %do.body.20
  br label %if.end.47

if.else.46:                                       ; preds = %if.end.42
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_drawable_apply_operation, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.96

if.end.47:                                        ; preds = %if.then.45
  br label %do.end.48

do.end.48:                                        ; preds = %if.end.47
  br label %do.body.49

do.body.49:                                       ; preds = %do.end.48
  %30 = load i8*, i8** %undo_desc.addr, align 8
  %cmp50 = icmp ne i8* %30, null
  br i1 %cmp50, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %do.body.49
  br label %if.end.53

if.else.52:                                       ; preds = %do.body.49
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_drawable_apply_operation, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.96

if.end.53:                                        ; preds = %if.then.51
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.53
  br label %do.body.55

do.body.55:                                       ; preds = %do.end.54
  %31 = load %struct._GeglNode*, %struct._GeglNode** %operation.addr, align 8
  %32 = bitcast %struct._GeglNode* %31 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %32, %struct._GTypeInstance** %__inst57, align 8
  %call60 = call i64 @gegl_node_get_type() #4
  store i64 %call60, i64* %__t59, align 8
  %33 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst57, align 8
  %tobool63 = icmp ne %struct._GTypeInstance* %33, null
  br i1 %tobool63, label %if.else.65, label %if.then.64

if.then.64:                                       ; preds = %do.body.55
  store i32 0, i32* %__r62, align 4
  br label %if.end.76

if.else.65:                                       ; preds = %do.body.55
  %34 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst57, align 8
  %g_class66 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %34, i32 0, i32 0
  %35 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class66, align 8
  %tobool67 = icmp ne %struct._GTypeClass* %35, null
  br i1 %tobool67, label %land.lhs.true.68, label %if.else.73

land.lhs.true.68:                                 ; preds = %if.else.65
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst57, align 8
  %g_class69 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %36, i32 0, i32 0
  %37 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class69, align 8
  %g_type70 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %37, i32 0, i32 0
  %38 = load i64, i64* %g_type70, align 8
  %39 = load i64, i64* %__t59, align 8
  %cmp71 = icmp eq i64 %38, %39
  br i1 %cmp71, label %if.then.72, label %if.else.73

if.then.72:                                       ; preds = %land.lhs.true.68
  store i32 1, i32* %__r62, align 4
  br label %if.end.75

if.else.73:                                       ; preds = %land.lhs.true.68, %if.else.65
  %40 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst57, align 8
  %41 = load i64, i64* %__t59, align 8
  %call74 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %40, i64 %41) #5
  store i32 %call74, i32* %__r62, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.73, %if.then.72
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.then.64
  %42 = load i32, i32* %__r62, align 4
  store i32 %42, i32* %tmp77
  %43 = load i32, i32* %tmp77
  %tobool78 = icmp ne i32 %43, 0
  br i1 %tobool78, label %if.then.79, label %if.else.80

if.then.79:                                       ; preds = %if.end.76
  br label %if.end.81

if.else.80:                                       ; preds = %if.end.76
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_drawable_apply_operation, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.96

if.end.81:                                        ; preds = %if.then.79
  br label %do.end.82

do.end.82:                                        ; preds = %if.end.81
  %44 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %45 = bitcast %struct._GimpDrawable* %44 to %struct._GTypeInstance*
  %call83 = call i64 @gimp_item_get_type() #4
  %call84 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call83)
  %46 = bitcast %struct._GTypeInstance* %call84 to %struct._GimpItem*
  %x = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %rect, i32 0, i32 0
  %y = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %rect, i32 0, i32 1
  %width = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %rect, i32 0, i32 2
  %height = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %rect, i32 0, i32 3
  %call85 = call i32 @gimp_item_mask_intersect(%struct._GimpItem* %46, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool86 = icmp ne i32 %call85, 0
  br i1 %tobool86, label %if.end.88, label %if.then.87

if.then.87:                                       ; preds = %do.end.82
  br label %if.end.96

if.end.88:                                        ; preds = %do.end.82
  %47 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %48 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %49 = load i8*, i8** %undo_desc.addr, align 8
  %50 = load %struct._GeglNode*, %struct._GeglNode** %operation.addr, align 8
  %51 = load i32, i32* %linear.addr, align 4
  %52 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call89 = call %struct._TileManager* @gimp_drawable_get_shadow_tiles(%struct._GimpDrawable* %52)
  call void @gimp_drawable_apply_operation_private(%struct._GimpDrawable* %47, %struct._GimpProgress* %48, i8* %49, %struct._GeglNode* %50, i32 %51, %struct._TileManager* %call89, %struct._GeglRectangle* %rect)
  %53 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %54 = load i8*, i8** %undo_desc.addr, align 8
  call void @gimp_drawable_merge_shadow_tiles(%struct._GimpDrawable* %53, i32 1, i8* %54)
  %55 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_free_shadow_tiles(%struct._GimpDrawable* %55)
  %56 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %x90 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %rect, i32 0, i32 0
  %57 = load i32, i32* %x90, align 4
  %y91 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %rect, i32 0, i32 1
  %58 = load i32, i32* %y91, align 4
  %width92 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %rect, i32 0, i32 2
  %59 = load i32, i32* %width92, align 4
  %height93 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %rect, i32 0, i32 3
  %60 = load i32, i32* %height93, align 4
  call void @gimp_drawable_update(%struct._GimpDrawable* %56, i32 %57, i32 %58, i32 %59, i32 %60)
  %61 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool94 = icmp ne %struct._GimpProgress* %61, null
  br i1 %tobool94, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %if.end.88
  %62 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_progress_end(%struct._GimpProgress* %62)
  br label %if.end.96

if.end.96:                                        ; preds = %if.else.9, %if.else.17, %if.else.46, %if.else.52, %if.else.80, %if.then.87, %if.then.95, %if.end.88
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare i32 @gimp_item_is_attached(%struct._GimpItem*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gegl_node_get_type() #1

declare i32 @gimp_item_mask_intersect(%struct._GimpItem*, i32*, i32*, i32*, i32*) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_apply_operation_private(%struct._GimpDrawable* %drawable, %struct._GimpProgress* %progress, i8* %undo_desc, %struct._GeglNode* %operation, i32 %linear, %struct._TileManager* %dest_tiles, %struct._GeglRectangle* %rect) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %undo_desc.addr = alloca i8*, align 8
  %operation.addr = alloca %struct._GeglNode*, align 8
  %linear.addr = alloca i32, align 4
  %dest_tiles.addr = alloca %struct._TileManager*, align 8
  %rect.addr = alloca %struct._GeglRectangle*, align 8
  %gegl = alloca %struct._GeglNode*, align 8
  %input = alloca %struct._GeglNode*, align 8
  %output = alloca %struct._GeglNode*, align 8
  %processor = alloca %struct._GeglProcessor*, align 8
  %value = alloca double, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store i8* %undo_desc, i8** %undo_desc.addr, align 8
  store %struct._GeglNode* %operation, %struct._GeglNode** %operation.addr, align 8
  store i32 %linear, i32* %linear.addr, align 4
  store %struct._TileManager* %dest_tiles, %struct._TileManager** %dest_tiles.addr, align 8
  store %struct._GeglRectangle* %rect, %struct._GeglRectangle** %rect.addr, align 8
  %call = call %struct._GeglNode* @gegl_node_new()
  store %struct._GeglNode* %call, %struct._GeglNode** %gegl, align 8
  %0 = load %struct._GeglNode*, %struct._GeglNode** %gegl, align 8
  %1 = bitcast %struct._GeglNode* %0 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i32 1, i8* null)
  %2 = load %struct._GeglNode*, %struct._GeglNode** %gegl, align 8
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call1 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %3)
  %4 = load i32, i32* %linear.addr, align 4
  %call2 = call %struct._GeglNode* (%struct._GeglNode*, i8*, ...) @gegl_node_new_child(%struct._GeglNode* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), %struct._TileManager* %call1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 %4, i8* null)
  store %struct._GeglNode* %call2, %struct._GeglNode** %input, align 8
  %5 = load %struct._GeglNode*, %struct._GeglNode** %gegl, align 8
  %6 = load %struct._TileManager*, %struct._TileManager** %dest_tiles.addr, align 8
  %7 = load i32, i32* %linear.addr, align 4
  %call3 = call %struct._GeglNode* (%struct._GeglNode*, i8*, ...) @gegl_node_new_child(%struct._GeglNode* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), %struct._TileManager* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 %7, i8* null)
  store %struct._GeglNode* %call3, %struct._GeglNode** %output, align 8
  %8 = load %struct._GeglNode*, %struct._GeglNode** %gegl, align 8
  %9 = load %struct._GeglNode*, %struct._GeglNode** %operation.addr, align 8
  %call4 = call %struct._GeglNode* @gegl_node_add_child(%struct._GeglNode* %8, %struct._GeglNode* %9)
  %10 = load %struct._GeglNode*, %struct._GeglNode** %input, align 8
  %11 = load %struct._GeglNode*, %struct._GeglNode** %operation.addr, align 8
  %12 = load %struct._GeglNode*, %struct._GeglNode** %output, align 8
  call void (%struct._GeglNode*, %struct._GeglNode*, ...) @gegl_node_link_many(%struct._GeglNode* %10, %struct._GeglNode* %11, %struct._GeglNode* %12, i8* null)
  %13 = load %struct._GeglNode*, %struct._GeglNode** %output, align 8
  %14 = load %struct._GeglRectangle*, %struct._GeglRectangle** %rect.addr, align 8
  %call5 = call %struct._GeglProcessor* @gegl_node_new_processor(%struct._GeglNode* %13, %struct._GeglRectangle* %14)
  store %struct._GeglProcessor* %call5, %struct._GeglProcessor** %processor, align 8
  %15 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool = icmp ne %struct._GimpProgress* %15, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %16 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %17 = load i8*, i8** %undo_desc.addr, align 8
  %call6 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %16, i8* %17, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.11, %if.end
  %18 = load %struct._GeglProcessor*, %struct._GeglProcessor** %processor, align 8
  %call7 = call i32 @gegl_processor_work(%struct._GeglProcessor* %18, double* %value)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool9 = icmp ne %struct._GimpProgress* %19, null
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %while.body
  %20 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %21 = load double, double* %value, align 8
  call void @gimp_progress_set_value(%struct._GimpProgress* %20, double %21)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %22 = load %struct._GeglProcessor*, %struct._GeglProcessor** %processor, align 8
  %23 = bitcast %struct._GeglProcessor* %22 to i8*
  call void @g_object_unref(i8* %23)
  %24 = load %struct._GeglNode*, %struct._GeglNode** %gegl, align 8
  %25 = bitcast %struct._GeglNode* %24 to i8*
  call void @g_object_unref(i8* %25)
  ret void
}

declare %struct._TileManager* @gimp_drawable_get_shadow_tiles(%struct._GimpDrawable*) #3

declare void @gimp_drawable_merge_shadow_tiles(%struct._GimpDrawable*, i32, i8*) #3

declare void @gimp_drawable_free_shadow_tiles(%struct._GimpDrawable*) #3

declare void @gimp_drawable_update(%struct._GimpDrawable*, i32, i32, i32, i32) #3

declare void @gimp_progress_end(%struct._GimpProgress*) #3

; Function Attrs: nounwind uwtable
define void @gimp_drawable_apply_operation_to_tiles(%struct._GimpDrawable* %drawable, %struct._GimpProgress* %progress, i8* %undo_desc, %struct._GeglNode* %operation, i32 %linear, %struct._TileManager* %new_tiles) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %undo_desc.addr = alloca i8*, align 8
  %operation.addr = alloca %struct._GeglNode*, align 8
  %linear.addr = alloca i32, align 4
  %new_tiles.addr = alloca %struct._TileManager*, align 8
  %rect = alloca %struct._GeglRectangle, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst23 = alloca %struct._GTypeInstance*, align 8
  %__t25 = alloca i64, align 8
  %__r28 = alloca i32, align 4
  %tmp43 = alloca i32, align 4
  %__inst57 = alloca %struct._GTypeInstance*, align 8
  %__t59 = alloca i64, align 8
  %__r62 = alloca i32, align 4
  %tmp77 = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store i8* %undo_desc, i8** %undo_desc.addr, align 8
  store %struct._GeglNode* %operation, %struct._GeglNode** %operation.addr, align 8
  store i32 %linear, i32* %linear.addr, align 4
  store %struct._TileManager* %new_tiles, %struct._TileManager** %new_tiles.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_drawable_apply_operation_to_tiles, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.93

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = bitcast %struct._GimpDrawable* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #4
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %call14 = call i32 @gimp_item_is_attached(%struct._GimpItem* %15)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.18

if.else.17:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_drawable_apply_operation_to_tiles, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.93

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.19
  %16 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %cmp21 = icmp eq %struct._GimpProgress* %16, null
  br i1 %cmp21, label %if.then.45, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.20
  %17 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %18 = bitcast %struct._GimpProgress* %17 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %18, %struct._GTypeInstance** %__inst23, align 8
  %call26 = call i64 @gimp_progress_interface_get_type() #4
  store i64 %call26, i64* %__t25, align 8
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst23, align 8
  %tobool29 = icmp ne %struct._GTypeInstance* %19, null
  br i1 %tobool29, label %if.else.31, label %if.then.30

if.then.30:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r28, align 4
  br label %if.end.42

if.else.31:                                       ; preds = %lor.lhs.false
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst23, align 8
  %g_class32 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class32, align 8
  %tobool33 = icmp ne %struct._GTypeClass* %21, null
  br i1 %tobool33, label %land.lhs.true.34, label %if.else.39

land.lhs.true.34:                                 ; preds = %if.else.31
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst23, align 8
  %g_class35 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class35, align 8
  %g_type36 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type36, align 8
  %25 = load i64, i64* %__t25, align 8
  %cmp37 = icmp eq i64 %24, %25
  br i1 %cmp37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %land.lhs.true.34
  store i32 1, i32* %__r28, align 4
  br label %if.end.41

if.else.39:                                       ; preds = %land.lhs.true.34, %if.else.31
  %26 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst23, align 8
  %27 = load i64, i64* %__t25, align 8
  %call40 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %26, i64 %27) #5
  store i32 %call40, i32* %__r28, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.39, %if.then.38
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.30
  %28 = load i32, i32* %__r28, align 4
  store i32 %28, i32* %tmp43
  %29 = load i32, i32* %tmp43
  %tobool44 = icmp ne i32 %29, 0
  br i1 %tobool44, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %if.end.42, %do.body.20
  br label %if.end.47

if.else.46:                                       ; preds = %if.end.42
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_drawable_apply_operation_to_tiles, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.93

if.end.47:                                        ; preds = %if.then.45
  br label %do.end.48

do.end.48:                                        ; preds = %if.end.47
  br label %do.body.49

do.body.49:                                       ; preds = %do.end.48
  %30 = load i8*, i8** %undo_desc.addr, align 8
  %cmp50 = icmp ne i8* %30, null
  br i1 %cmp50, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %do.body.49
  br label %if.end.53

if.else.52:                                       ; preds = %do.body.49
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_drawable_apply_operation_to_tiles, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.93

if.end.53:                                        ; preds = %if.then.51
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.53
  br label %do.body.55

do.body.55:                                       ; preds = %do.end.54
  %31 = load %struct._GeglNode*, %struct._GeglNode** %operation.addr, align 8
  %32 = bitcast %struct._GeglNode* %31 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %32, %struct._GTypeInstance** %__inst57, align 8
  %call60 = call i64 @gegl_node_get_type() #4
  store i64 %call60, i64* %__t59, align 8
  %33 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst57, align 8
  %tobool63 = icmp ne %struct._GTypeInstance* %33, null
  br i1 %tobool63, label %if.else.65, label %if.then.64

if.then.64:                                       ; preds = %do.body.55
  store i32 0, i32* %__r62, align 4
  br label %if.end.76

if.else.65:                                       ; preds = %do.body.55
  %34 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst57, align 8
  %g_class66 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %34, i32 0, i32 0
  %35 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class66, align 8
  %tobool67 = icmp ne %struct._GTypeClass* %35, null
  br i1 %tobool67, label %land.lhs.true.68, label %if.else.73

land.lhs.true.68:                                 ; preds = %if.else.65
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst57, align 8
  %g_class69 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %36, i32 0, i32 0
  %37 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class69, align 8
  %g_type70 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %37, i32 0, i32 0
  %38 = load i64, i64* %g_type70, align 8
  %39 = load i64, i64* %__t59, align 8
  %cmp71 = icmp eq i64 %38, %39
  br i1 %cmp71, label %if.then.72, label %if.else.73

if.then.72:                                       ; preds = %land.lhs.true.68
  store i32 1, i32* %__r62, align 4
  br label %if.end.75

if.else.73:                                       ; preds = %land.lhs.true.68, %if.else.65
  %40 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst57, align 8
  %41 = load i64, i64* %__t59, align 8
  %call74 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %40, i64 %41) #5
  store i32 %call74, i32* %__r62, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.73, %if.then.72
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.then.64
  %42 = load i32, i32* %__r62, align 4
  store i32 %42, i32* %tmp77
  %43 = load i32, i32* %tmp77
  %tobool78 = icmp ne i32 %43, 0
  br i1 %tobool78, label %if.then.79, label %if.else.80

if.then.79:                                       ; preds = %if.end.76
  br label %if.end.81

if.else.80:                                       ; preds = %if.end.76
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_drawable_apply_operation_to_tiles, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.93

if.end.81:                                        ; preds = %if.then.79
  br label %do.end.82

do.end.82:                                        ; preds = %if.end.81
  br label %do.body.83

do.body.83:                                       ; preds = %do.end.82
  %44 = load %struct._TileManager*, %struct._TileManager** %new_tiles.addr, align 8
  %cmp84 = icmp ne %struct._TileManager* %44, null
  br i1 %cmp84, label %if.then.85, label %if.else.86

if.then.85:                                       ; preds = %do.body.83
  br label %if.end.87

if.else.86:                                       ; preds = %do.body.83
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_drawable_apply_operation_to_tiles, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.93

if.end.87:                                        ; preds = %if.then.85
  br label %do.end.88

do.end.88:                                        ; preds = %if.end.87
  %x = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %rect, i32 0, i32 0
  store i32 0, i32* %x, align 4
  %y = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %rect, i32 0, i32 1
  store i32 0, i32* %y, align 4
  %45 = load %struct._TileManager*, %struct._TileManager** %new_tiles.addr, align 8
  %call89 = call i32 @tile_manager_width(%struct._TileManager* %45)
  %width = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %rect, i32 0, i32 2
  store i32 %call89, i32* %width, align 4
  %46 = load %struct._TileManager*, %struct._TileManager** %new_tiles.addr, align 8
  %call90 = call i32 @tile_manager_height(%struct._TileManager* %46)
  %height = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %rect, i32 0, i32 3
  store i32 %call90, i32* %height, align 4
  %47 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %48 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %49 = load i8*, i8** %undo_desc.addr, align 8
  %50 = load %struct._GeglNode*, %struct._GeglNode** %operation.addr, align 8
  %51 = load i32, i32* %linear.addr, align 4
  %52 = load %struct._TileManager*, %struct._TileManager** %new_tiles.addr, align 8
  call void @gimp_drawable_apply_operation_private(%struct._GimpDrawable* %47, %struct._GimpProgress* %48, i8* %49, %struct._GeglNode* %50, i32 %51, %struct._TileManager* %52, %struct._GeglRectangle* %rect)
  %53 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool91 = icmp ne %struct._GimpProgress* %53, null
  br i1 %tobool91, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %do.end.88
  %54 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_progress_end(%struct._GimpProgress* %54)
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.9, %if.else.17, %if.else.46, %if.else.52, %if.else.80, %if.else.86, %if.then.92, %do.end.88
  ret void
}

declare i32 @tile_manager_width(%struct._TileManager*) #3

declare i32 @tile_manager_height(%struct._TileManager*) #3

declare %struct._GeglNode* @gegl_node_new() #3

declare void @g_object_set(i8*, i8*, ...) #3

declare %struct._GeglNode* @gegl_node_new_child(%struct._GeglNode*, i8*, ...) #3

declare %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable*) #3

declare %struct._GeglNode* @gegl_node_add_child(%struct._GeglNode*, %struct._GeglNode*) #3

declare void @gegl_node_link_many(%struct._GeglNode*, %struct._GeglNode*, ...) #3

declare %struct._GeglProcessor* @gegl_node_new_processor(%struct._GeglNode*, %struct._GeglRectangle*) #3

declare %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress*, i8*, i32) #3

declare i32 @gegl_processor_work(%struct._GeglProcessor*, double*) #3

declare void @gimp_progress_set_value(%struct._GimpProgress*, double) #3

declare void @g_object_unref(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
