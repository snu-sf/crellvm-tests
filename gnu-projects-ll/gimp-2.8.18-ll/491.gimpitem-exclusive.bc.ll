; ModuleID = './app/core/gimpitem-exclusive.bc'
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
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._Gimp = type opaque
%struct._GimpImage = type opaque
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
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpUndo = type { %struct._GimpViewable, %struct._GimpImage*, i32, i32, i32, %struct._TempBuf*, i32 }
%struct._TempBuf = type opaque
%struct._GimpItemTree = type { %struct._GimpObject, %struct._GimpContainer* }
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpItemStack = type { %struct._GimpList }
%struct._GimpList = type { %struct._GimpContainer, %struct._GList*, i32, i32 (i8*, i8*)*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_item_toggle_exclusive_visible = private unnamed_addr constant [35 x i8] c"gimp_item_toggle_exclusive_visible\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"GIMP_IS_ITEM (item)\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"gimp_item_is_attached (item)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"visible\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"exclusive-visible-item\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Set Item Exclusive Visible\00", align 1
@__func__.gimp_item_toggle_exclusive_linked = private unnamed_addr constant [34 x i8] c"gimp_item_toggle_exclusive_linked\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"exclusive-linked-item\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Set Item Exclusive Linked\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_item_toggle_exclusive_visible(%struct._GimpItem* %item, %struct._GimpContext* %context) #0 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %ancestry = alloca %struct._GList*, align 8
  %on = alloca %struct._GList*, align 8
  %off = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst20 = alloca %struct._GTypeInstance*, align 8
  %__t22 = alloca i64, align 8
  %__r25 = alloca i32, align 4
  %tmp40 = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %undo = alloca %struct._GimpUndo*, align 8
  %push_undo = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_item_toggle_exclusive_visible, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call12 = call i32 @gimp_item_is_attached(%struct._GimpItem* %13)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_item_toggle_exclusive_visible, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %15 = bitcast %struct._GimpContext* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst20, align 8
  %call23 = call i64 @gimp_context_get_type() #5
  store i64 %call23, i64* %__t22, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %tobool26 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool26, label %if.else.28, label %if.then.27

if.then.27:                                       ; preds = %do.body.18
  store i32 0, i32* %__r25, align 4
  br label %if.end.39

if.else.28:                                       ; preds = %do.body.18
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %g_class29 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class29, align 8
  %tobool30 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool30, label %land.lhs.true.31, label %if.else.36

land.lhs.true.31:                                 ; preds = %if.else.28
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %g_class32 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class32, align 8
  %g_type33 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type33, align 8
  %22 = load i64, i64* %__t22, align 8
  %cmp34 = icmp eq i64 %21, %22
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %land.lhs.true.31
  store i32 1, i32* %__r25, align 4
  br label %if.end.38

if.else.36:                                       ; preds = %land.lhs.true.31, %if.else.28
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %24 = load i64, i64* %__t22, align 8
  %call37 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #6
  store i32 %call37, i32* %__r25, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.36, %if.then.35
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.27
  %25 = load i32, i32* %__r25, align 4
  store i32 %25, i32* %tmp40
  %26 = load i32, i32* %tmp40
  %tobool41 = icmp ne i32 %26, 0
  br i1 %tobool41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %if.end.39
  br label %if.end.44

if.else.43:                                       ; preds = %if.end.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_item_toggle_exclusive_visible, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.44:                                        ; preds = %if.then.42
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  %27 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call46 = call %struct._GList* @gimp_item_exclusive_get_ancestry(%struct._GimpItem* %27)
  store %struct._GList* %call46, %struct._GList** %ancestry, align 8
  %28 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  call void @gimp_item_exclusive_get_lists(%struct._GimpItem* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), %struct._GList** %on, %struct._GList** %off)
  %29 = load %struct._GList*, %struct._GList** %on, align 8
  %tobool47 = icmp ne %struct._GList* %29, null
  br i1 %tobool47, label %if.then.52, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.45
  %30 = load %struct._GList*, %struct._GList** %off, align 8
  %tobool48 = icmp ne %struct._GList* %30, null
  br i1 %tobool48, label %if.then.52, label %lor.lhs.false.49

lor.lhs.false.49:                                 ; preds = %lor.lhs.false
  %31 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call50 = call i32 @gimp_item_is_visible(%struct._GimpItem* %31)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.end.154, label %if.then.52

if.then.52:                                       ; preds = %lor.lhs.false.49, %lor.lhs.false, %do.end.45
  %32 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call54 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %32)
  store %struct._GimpImage* %call54, %struct._GimpImage** %image, align 8
  store i32 1, i32* %push_undo, align 4
  %33 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call57 = call i64 @gimp_undo_stack_get_type() #5
  %call58 = call %struct._GimpUndo* @gimp_image_undo_can_compress(%struct._GimpImage* %33, i64 %call57, i32 17)
  store %struct._GimpUndo* %call58, %struct._GimpUndo** %undo, align 8
  %34 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %tobool59 = icmp ne %struct._GimpUndo* %34, null
  br i1 %tobool59, label %land.lhs.true.60, label %if.end.65

land.lhs.true.60:                                 ; preds = %if.then.52
  %35 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %36 = bitcast %struct._GimpUndo* %35 to %struct._GTypeInstance*
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 80)
  %37 = bitcast %struct._GTypeInstance* %call61 to %struct._GObject*
  %call62 = call i8* @g_object_get_data(%struct._GObject* %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0))
  %38 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %39 = bitcast %struct._GimpItem* %38 to i8*
  %cmp63 = icmp eq i8* %call62, %39
  br i1 %cmp63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %land.lhs.true.60
  store i32 0, i32* %push_undo, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.64, %land.lhs.true.60, %if.then.52
  %40 = load i32, i32* %push_undo, align 4
  %tobool66 = icmp ne i32 %40, 0
  br i1 %tobool66, label %if.then.67, label %if.else.109

if.then.67:                                       ; preds = %if.end.65
  %41 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call68 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0)) #7
  %call69 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %41, i32 17, i8* %call68)
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.then.71, label %if.end.78

if.then.71:                                       ; preds = %if.then.67
  %42 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call72 = call i64 @gimp_undo_stack_get_type() #5
  %call73 = call %struct._GimpUndo* @gimp_image_undo_can_compress(%struct._GimpImage* %42, i64 %call72, i32 17)
  store %struct._GimpUndo* %call73, %struct._GimpUndo** %undo, align 8
  %43 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %tobool74 = icmp ne %struct._GimpUndo* %43, null
  br i1 %tobool74, label %if.then.75, label %if.end.77

if.then.75:                                       ; preds = %if.then.71
  %44 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %45 = bitcast %struct._GimpUndo* %44 to %struct._GTypeInstance*
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 80)
  %46 = bitcast %struct._GTypeInstance* %call76 to %struct._GObject*
  %47 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %48 = bitcast %struct._GimpItem* %47 to i8*
  call void @g_object_set_data(%struct._GObject* %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0), i8* %48)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.75, %if.then.71
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.then.67
  %49 = load %struct._GList*, %struct._GList** %ancestry, align 8
  store %struct._GList* %49, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end.78
  %50 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool79 = icmp ne %struct._GList* %50, null
  br i1 %tobool79, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %51 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %52 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %52, i32 0, i32 0
  %53 = load i8*, i8** %data, align 8
  %54 = bitcast i8* %53 to %struct._GimpItem*
  %call80 = call %struct._GimpUndo* @gimp_image_undo_push_item_visibility(%struct._GimpImage* %51, i8* null, %struct._GimpItem* %54)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %55 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool81 = icmp ne %struct._GList* %55, null
  br i1 %tobool81, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %56 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %56, i32 0, i32 1
  %57 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %57, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %58 = load %struct._GList*, %struct._GList** %on, align 8
  store %struct._GList* %58, %struct._GList** %list, align 8
  br label %for.cond.82

for.cond.82:                                      ; preds = %cond.end.92, %for.end
  %59 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool83 = icmp ne %struct._GList* %59, null
  br i1 %tobool83, label %for.body.84, label %for.end.94

for.body.84:                                      ; preds = %for.cond.82
  %60 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %61 = load %struct._GList*, %struct._GList** %list, align 8
  %data85 = getelementptr inbounds %struct._GList, %struct._GList* %61, i32 0, i32 0
  %62 = load i8*, i8** %data85, align 8
  %63 = bitcast i8* %62 to %struct._GimpItem*
  %call86 = call %struct._GimpUndo* @gimp_image_undo_push_item_visibility(%struct._GimpImage* %60, i8* null, %struct._GimpItem* %63)
  br label %for.inc.87

for.inc.87:                                       ; preds = %for.body.84
  %64 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool88 = icmp ne %struct._GList* %64, null
  br i1 %tobool88, label %cond.true.89, label %cond.false.91

cond.true.89:                                     ; preds = %for.inc.87
  %65 = load %struct._GList*, %struct._GList** %list, align 8
  %next90 = getelementptr inbounds %struct._GList, %struct._GList* %65, i32 0, i32 1
  %66 = load %struct._GList*, %struct._GList** %next90, align 8
  br label %cond.end.92

cond.false.91:                                    ; preds = %for.inc.87
  br label %cond.end.92

cond.end.92:                                      ; preds = %cond.false.91, %cond.true.89
  %cond93 = phi %struct._GList* [ %66, %cond.true.89 ], [ null, %cond.false.91 ]
  store %struct._GList* %cond93, %struct._GList** %list, align 8
  br label %for.cond.82

for.end.94:                                       ; preds = %for.cond.82
  %67 = load %struct._GList*, %struct._GList** %off, align 8
  store %struct._GList* %67, %struct._GList** %list, align 8
  br label %for.cond.95

for.cond.95:                                      ; preds = %cond.end.105, %for.end.94
  %68 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool96 = icmp ne %struct._GList* %68, null
  br i1 %tobool96, label %for.body.97, label %for.end.107

for.body.97:                                      ; preds = %for.cond.95
  %69 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %70 = load %struct._GList*, %struct._GList** %list, align 8
  %data98 = getelementptr inbounds %struct._GList, %struct._GList* %70, i32 0, i32 0
  %71 = load i8*, i8** %data98, align 8
  %72 = bitcast i8* %71 to %struct._GimpItem*
  %call99 = call %struct._GimpUndo* @gimp_image_undo_push_item_visibility(%struct._GimpImage* %69, i8* null, %struct._GimpItem* %72)
  br label %for.inc.100

for.inc.100:                                      ; preds = %for.body.97
  %73 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool101 = icmp ne %struct._GList* %73, null
  br i1 %tobool101, label %cond.true.102, label %cond.false.104

cond.true.102:                                    ; preds = %for.inc.100
  %74 = load %struct._GList*, %struct._GList** %list, align 8
  %next103 = getelementptr inbounds %struct._GList, %struct._GList* %74, i32 0, i32 1
  %75 = load %struct._GList*, %struct._GList** %next103, align 8
  br label %cond.end.105

cond.false.104:                                   ; preds = %for.inc.100
  br label %cond.end.105

cond.end.105:                                     ; preds = %cond.false.104, %cond.true.102
  %cond106 = phi %struct._GList* [ %75, %cond.true.102 ], [ null, %cond.false.104 ]
  store %struct._GList* %cond106, %struct._GList** %list, align 8
  br label %for.cond.95

for.end.107:                                      ; preds = %for.cond.95
  %76 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call108 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %76)
  br label %if.end.110

if.else.109:                                      ; preds = %if.end.65
  %77 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %78 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_undo_refresh_preview(%struct._GimpUndo* %77, %struct._GimpContext* %78)
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.109, %for.end.107
  %79 = load %struct._GList*, %struct._GList** %ancestry, align 8
  store %struct._GList* %79, %struct._GList** %list, align 8
  br label %for.cond.111

for.cond.111:                                     ; preds = %cond.end.120, %if.end.110
  %80 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool112 = icmp ne %struct._GList* %80, null
  br i1 %tobool112, label %for.body.113, label %for.end.122

for.body.113:                                     ; preds = %for.cond.111
  %81 = load %struct._GList*, %struct._GList** %list, align 8
  %data114 = getelementptr inbounds %struct._GList, %struct._GList* %81, i32 0, i32 0
  %82 = load i8*, i8** %data114, align 8
  %83 = bitcast i8* %82 to %struct._GimpItem*
  call void @gimp_item_set_visible(%struct._GimpItem* %83, i32 1, i32 0)
  br label %for.inc.115

for.inc.115:                                      ; preds = %for.body.113
  %84 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool116 = icmp ne %struct._GList* %84, null
  br i1 %tobool116, label %cond.true.117, label %cond.false.119

cond.true.117:                                    ; preds = %for.inc.115
  %85 = load %struct._GList*, %struct._GList** %list, align 8
  %next118 = getelementptr inbounds %struct._GList, %struct._GList* %85, i32 0, i32 1
  %86 = load %struct._GList*, %struct._GList** %next118, align 8
  br label %cond.end.120

cond.false.119:                                   ; preds = %for.inc.115
  br label %cond.end.120

cond.end.120:                                     ; preds = %cond.false.119, %cond.true.117
  %cond121 = phi %struct._GList* [ %86, %cond.true.117 ], [ null, %cond.false.119 ]
  store %struct._GList* %cond121, %struct._GList** %list, align 8
  br label %for.cond.111

for.end.122:                                      ; preds = %for.cond.111
  %87 = load %struct._GList*, %struct._GList** %on, align 8
  %tobool123 = icmp ne %struct._GList* %87, null
  br i1 %tobool123, label %if.then.124, label %if.else.137

if.then.124:                                      ; preds = %for.end.122
  %88 = load %struct._GList*, %struct._GList** %on, align 8
  store %struct._GList* %88, %struct._GList** %list, align 8
  br label %for.cond.125

for.cond.125:                                     ; preds = %cond.end.134, %if.then.124
  %89 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool126 = icmp ne %struct._GList* %89, null
  br i1 %tobool126, label %for.body.127, label %for.end.136

for.body.127:                                     ; preds = %for.cond.125
  %90 = load %struct._GList*, %struct._GList** %list, align 8
  %data128 = getelementptr inbounds %struct._GList, %struct._GList* %90, i32 0, i32 0
  %91 = load i8*, i8** %data128, align 8
  %92 = bitcast i8* %91 to %struct._GimpItem*
  call void @gimp_item_set_visible(%struct._GimpItem* %92, i32 0, i32 0)
  br label %for.inc.129

for.inc.129:                                      ; preds = %for.body.127
  %93 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool130 = icmp ne %struct._GList* %93, null
  br i1 %tobool130, label %cond.true.131, label %cond.false.133

cond.true.131:                                    ; preds = %for.inc.129
  %94 = load %struct._GList*, %struct._GList** %list, align 8
  %next132 = getelementptr inbounds %struct._GList, %struct._GList* %94, i32 0, i32 1
  %95 = load %struct._GList*, %struct._GList** %next132, align 8
  br label %cond.end.134

cond.false.133:                                   ; preds = %for.inc.129
  br label %cond.end.134

cond.end.134:                                     ; preds = %cond.false.133, %cond.true.131
  %cond135 = phi %struct._GList* [ %95, %cond.true.131 ], [ null, %cond.false.133 ]
  store %struct._GList* %cond135, %struct._GList** %list, align 8
  br label %for.cond.125

for.end.136:                                      ; preds = %for.cond.125
  br label %if.end.153

if.else.137:                                      ; preds = %for.end.122
  %96 = load %struct._GList*, %struct._GList** %off, align 8
  %tobool138 = icmp ne %struct._GList* %96, null
  br i1 %tobool138, label %if.then.139, label %if.end.152

if.then.139:                                      ; preds = %if.else.137
  %97 = load %struct._GList*, %struct._GList** %off, align 8
  store %struct._GList* %97, %struct._GList** %list, align 8
  br label %for.cond.140

for.cond.140:                                     ; preds = %cond.end.149, %if.then.139
  %98 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool141 = icmp ne %struct._GList* %98, null
  br i1 %tobool141, label %for.body.142, label %for.end.151

for.body.142:                                     ; preds = %for.cond.140
  %99 = load %struct._GList*, %struct._GList** %list, align 8
  %data143 = getelementptr inbounds %struct._GList, %struct._GList* %99, i32 0, i32 0
  %100 = load i8*, i8** %data143, align 8
  %101 = bitcast i8* %100 to %struct._GimpItem*
  call void @gimp_item_set_visible(%struct._GimpItem* %101, i32 1, i32 0)
  br label %for.inc.144

for.inc.144:                                      ; preds = %for.body.142
  %102 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool145 = icmp ne %struct._GList* %102, null
  br i1 %tobool145, label %cond.true.146, label %cond.false.148

cond.true.146:                                    ; preds = %for.inc.144
  %103 = load %struct._GList*, %struct._GList** %list, align 8
  %next147 = getelementptr inbounds %struct._GList, %struct._GList* %103, i32 0, i32 1
  %104 = load %struct._GList*, %struct._GList** %next147, align 8
  br label %cond.end.149

cond.false.148:                                   ; preds = %for.inc.144
  br label %cond.end.149

cond.end.149:                                     ; preds = %cond.false.148, %cond.true.146
  %cond150 = phi %struct._GList* [ %104, %cond.true.146 ], [ null, %cond.false.148 ]
  store %struct._GList* %cond150, %struct._GList** %list, align 8
  br label %for.cond.140

for.end.151:                                      ; preds = %for.cond.140
  br label %if.end.152

if.end.152:                                       ; preds = %for.end.151, %if.else.137
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152, %for.end.136
  %105 = load %struct._GList*, %struct._GList** %on, align 8
  call void @g_list_free(%struct._GList* %105)
  %106 = load %struct._GList*, %struct._GList** %off, align 8
  call void @g_list_free(%struct._GList* %106)
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.153, %lor.lhs.false.49
  %107 = load %struct._GList*, %struct._GList** %ancestry, align 8
  call void @g_list_free(%struct._GList* %107)
  br label %return

return:                                           ; preds = %if.end.154, %if.else.43, %if.else.15, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare i32 @gimp_item_is_attached(%struct._GimpItem*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #1

; Function Attrs: nounwind uwtable
define internal %struct._GList* @gimp_item_exclusive_get_ancestry(%struct._GimpItem* %item) #0 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %parent = alloca %struct._GimpViewable*, align 8
  %ancestry = alloca %struct._GList*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GList* null, %struct._GList** %ancestry, align 8
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_viewable_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpViewable*
  store %struct._GimpViewable* %2, %struct._GimpViewable** %parent, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct._GimpViewable*, %struct._GimpViewable** %parent, align 8
  %tobool = icmp ne %struct._GimpViewable* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct._GList*, %struct._GList** %ancestry, align 8
  %5 = load %struct._GimpViewable*, %struct._GimpViewable** %parent, align 8
  %6 = bitcast %struct._GimpViewable* %5 to i8*
  %call2 = call %struct._GList* @g_list_prepend(%struct._GList* %4, i8* %6)
  store %struct._GList* %call2, %struct._GList** %ancestry, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load %struct._GimpViewable*, %struct._GimpViewable** %parent, align 8
  %call3 = call %struct._GimpViewable* @gimp_viewable_get_parent(%struct._GimpViewable* %7)
  store %struct._GimpViewable* %call3, %struct._GimpViewable** %parent, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct._GList*, %struct._GList** %ancestry, align 8
  ret %struct._GList* %8
}

; Function Attrs: nounwind uwtable
define internal void @gimp_item_exclusive_get_lists(%struct._GimpItem* %item, i8* %property, %struct._GList** %on, %struct._GList** %off) #0 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %property.addr = alloca i8*, align 8
  %on.addr = alloca %struct._GList**, align 8
  %off.addr = alloca %struct._GList**, align 8
  %tree = alloca %struct._GimpItemTree*, align 8
  %items = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %other = alloca %struct._GimpItem*, align 8
  %value = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i8* %property, i8** %property.addr, align 8
  store %struct._GList** %on, %struct._GList*** %on.addr, align 8
  store %struct._GList** %off, %struct._GList*** %off.addr, align 8
  %0 = load %struct._GList**, %struct._GList*** %on.addr, align 8
  store %struct._GList* null, %struct._GList** %0, align 8
  %1 = load %struct._GList**, %struct._GList*** %off.addr, align 8
  store %struct._GList* null, %struct._GList** %1, align 8
  %2 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call = call %struct._GimpItemTree* @gimp_item_get_tree(%struct._GimpItem* %2)
  store %struct._GimpItemTree* %call, %struct._GimpItemTree** %tree, align 8
  %3 = load %struct._GimpItemTree*, %struct._GimpItemTree** %tree, align 8
  %container = getelementptr inbounds %struct._GimpItemTree, %struct._GimpItemTree* %3, i32 0, i32 1
  %4 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %5 = bitcast %struct._GimpContainer* %4 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_item_stack_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call1)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpItemStack*
  %call3 = call %struct._GList* @gimp_item_stack_get_item_list(%struct._GimpItemStack* %6)
  store %struct._GList* %call3, %struct._GList** %items, align 8
  %7 = load %struct._GList*, %struct._GList** %items, align 8
  store %struct._GList* %7, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %8 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %8, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %9, i32 0, i32 0
  %10 = load i8*, i8** %data, align 8
  %11 = bitcast i8* %10 to %struct._GimpItem*
  store %struct._GimpItem* %11, %struct._GimpItem** %other, align 8
  %12 = load %struct._GimpItem*, %struct._GimpItem** %other, align 8
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %cmp = icmp ne %struct._GimpItem* %12, %13
  br i1 %cmp, label %if.then, label %if.end.20

if.then:                                          ; preds = %for.body
  %14 = load %struct._GimpItem*, %struct._GimpItem** %other, align 8
  %15 = bitcast %struct._GimpItem* %14 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_viewable_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call4)
  %16 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpViewable*
  %call6 = call %struct._GimpViewable* @gimp_viewable_get_parent(%struct._GimpViewable* %16)
  %tobool7 = icmp ne %struct._GimpViewable* %call6, null
  br i1 %tobool7, label %if.end.19, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %17 = load %struct._GimpItem*, %struct._GimpItem** %other, align 8
  %18 = bitcast %struct._GimpItem* %17 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_viewable_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call8)
  %19 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpViewable*
  %20 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %21 = bitcast %struct._GimpItem* %20 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_viewable_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call10)
  %22 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpViewable*
  %call12 = call i32 @gimp_viewable_is_ancestor(%struct._GimpViewable* %19, %struct._GimpViewable* %22)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.19, label %if.then.14

if.then.14:                                       ; preds = %land.lhs.true
  %23 = load %struct._GimpItem*, %struct._GimpItem** %other, align 8
  %24 = bitcast %struct._GimpItem* %23 to i8*
  %25 = load i8*, i8** %property.addr, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %24, i8* %25, i32* %value, i8* null)
  %26 = load i32, i32* %value, align 4
  %tobool15 = icmp ne i32 %26, 0
  br i1 %tobool15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.then.14
  %27 = load %struct._GList**, %struct._GList*** %on.addr, align 8
  %28 = load %struct._GList*, %struct._GList** %27, align 8
  %29 = load %struct._GimpItem*, %struct._GimpItem** %other, align 8
  %30 = bitcast %struct._GimpItem* %29 to i8*
  %call17 = call %struct._GList* @g_list_prepend(%struct._GList* %28, i8* %30)
  %31 = load %struct._GList**, %struct._GList*** %on.addr, align 8
  store %struct._GList* %call17, %struct._GList** %31, align 8
  br label %if.end

if.else:                                          ; preds = %if.then.14
  %32 = load %struct._GList**, %struct._GList*** %off.addr, align 8
  %33 = load %struct._GList*, %struct._GList** %32, align 8
  %34 = load %struct._GimpItem*, %struct._GimpItem** %other, align 8
  %35 = bitcast %struct._GimpItem* %34 to i8*
  %call18 = call %struct._GList* @g_list_prepend(%struct._GList* %33, i8* %35)
  %36 = load %struct._GList**, %struct._GList*** %off.addr, align 8
  store %struct._GList* %call18, %struct._GList** %36, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.16
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %land.lhs.true, %if.then
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %37 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool21 = icmp ne %struct._GList* %37, null
  br i1 %tobool21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %38 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %38, i32 0, i32 1
  %39 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %39, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load %struct._GList*, %struct._GList** %items, align 8
  call void @g_list_free(%struct._GList* %40)
  ret void
}

declare i32 @gimp_item_is_visible(%struct._GimpItem*) #3

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #3

declare %struct._GimpUndo* @gimp_image_undo_can_compress(%struct._GimpImage*, i64, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_undo_stack_get_type() #1

declare i8* @g_object_get_data(%struct._GObject*, i8*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

declare i32 @gimp_image_undo_group_start(%struct._GimpImage*, i32, i8*) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #3

declare %struct._GimpUndo* @gimp_image_undo_push_item_visibility(%struct._GimpImage*, i8*, %struct._GimpItem*) #3

declare i32 @gimp_image_undo_group_end(%struct._GimpImage*) #3

declare void @gimp_undo_refresh_preview(%struct._GimpUndo*, %struct._GimpContext*) #3

declare void @gimp_item_set_visible(%struct._GimpItem*, i32, i32) #3

declare void @g_list_free(%struct._GList*) #3

; Function Attrs: nounwind uwtable
define void @gimp_item_toggle_exclusive_linked(%struct._GimpItem* %item, %struct._GimpContext* %context) #0 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %on = alloca %struct._GList*, align 8
  %off = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst20 = alloca %struct._GTypeInstance*, align 8
  %__t22 = alloca i64, align 8
  %__r25 = alloca i32, align 4
  %tmp40 = alloca i32, align 4
  %other = alloca %struct._GimpItem*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %undo = alloca %struct._GimpUndo*, align 8
  %push_undo = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GList* null, %struct._GList** %on, align 8
  store %struct._GList* null, %struct._GList** %off, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_item_toggle_exclusive_linked, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.153

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call12 = call i32 @gimp_item_is_attached(%struct._GimpItem* %13)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_item_toggle_exclusive_linked, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.153

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %15 = bitcast %struct._GimpContext* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst20, align 8
  %call23 = call i64 @gimp_context_get_type() #5
  store i64 %call23, i64* %__t22, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %tobool26 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool26, label %if.else.28, label %if.then.27

if.then.27:                                       ; preds = %do.body.18
  store i32 0, i32* %__r25, align 4
  br label %if.end.39

if.else.28:                                       ; preds = %do.body.18
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %g_class29 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class29, align 8
  %tobool30 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool30, label %land.lhs.true.31, label %if.else.36

land.lhs.true.31:                                 ; preds = %if.else.28
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %g_class32 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class32, align 8
  %g_type33 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type33, align 8
  %22 = load i64, i64* %__t22, align 8
  %cmp34 = icmp eq i64 %21, %22
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %land.lhs.true.31
  store i32 1, i32* %__r25, align 4
  br label %if.end.38

if.else.36:                                       ; preds = %land.lhs.true.31, %if.else.28
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %24 = load i64, i64* %__t22, align 8
  %call37 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #6
  store i32 %call37, i32* %__r25, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.36, %if.then.35
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.27
  %25 = load i32, i32* %__r25, align 4
  store i32 %25, i32* %tmp40
  %26 = load i32, i32* %tmp40
  %tobool41 = icmp ne i32 %26, 0
  br i1 %tobool41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %if.end.39
  br label %if.end.44

if.else.43:                                       ; preds = %if.end.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_item_toggle_exclusive_linked, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.153

if.end.44:                                        ; preds = %if.then.42
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  %27 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call46 = call %struct._GList* @gimp_item_get_container_iter(%struct._GimpItem* %27)
  store %struct._GList* %call46, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end.45
  %28 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool47 = icmp ne %struct._GList* %28, null
  br i1 %tobool47, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %29, i32 0, i32 0
  %30 = load i8*, i8** %data, align 8
  %31 = bitcast i8* %30 to %struct._GimpItem*
  store %struct._GimpItem* %31, %struct._GimpItem** %other, align 8
  %32 = load %struct._GimpItem*, %struct._GimpItem** %other, align 8
  %33 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %cmp49 = icmp ne %struct._GimpItem* %32, %33
  br i1 %cmp49, label %if.then.50, label %if.end.58

if.then.50:                                       ; preds = %for.body
  %34 = load %struct._GimpItem*, %struct._GimpItem** %other, align 8
  %call51 = call i32 @gimp_item_get_linked(%struct._GimpItem* %34)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then.53, label %if.else.55

if.then.53:                                       ; preds = %if.then.50
  %35 = load %struct._GList*, %struct._GList** %on, align 8
  %36 = load %struct._GimpItem*, %struct._GimpItem** %other, align 8
  %37 = bitcast %struct._GimpItem* %36 to i8*
  %call54 = call %struct._GList* @g_list_prepend(%struct._GList* %35, i8* %37)
  store %struct._GList* %call54, %struct._GList** %on, align 8
  br label %if.end.57

if.else.55:                                       ; preds = %if.then.50
  %38 = load %struct._GList*, %struct._GList** %off, align 8
  %39 = load %struct._GimpItem*, %struct._GimpItem** %other, align 8
  %40 = bitcast %struct._GimpItem* %39 to i8*
  %call56 = call %struct._GList* @g_list_prepend(%struct._GList* %38, i8* %40)
  store %struct._GList* %call56, %struct._GList** %off, align 8
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.55, %if.then.53
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.58
  %41 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool59 = icmp ne %struct._GList* %41, null
  br i1 %tobool59, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %42 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %42, i32 0, i32 1
  %43 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %43, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %44 = load %struct._GList*, %struct._GList** %on, align 8
  %tobool60 = icmp ne %struct._GList* %44, null
  br i1 %tobool60, label %if.then.65, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %45 = load %struct._GList*, %struct._GList** %off, align 8
  %tobool61 = icmp ne %struct._GList* %45, null
  br i1 %tobool61, label %if.then.65, label %lor.lhs.false.62

lor.lhs.false.62:                                 ; preds = %lor.lhs.false
  %46 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call63 = call i32 @gimp_item_get_linked(%struct._GimpItem* %46)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.end.153, label %if.then.65

if.then.65:                                       ; preds = %lor.lhs.false.62, %lor.lhs.false, %for.end
  %47 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call67 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %47)
  store %struct._GimpImage* %call67, %struct._GimpImage** %image, align 8
  store i32 1, i32* %push_undo, align 4
  %48 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call70 = call i64 @gimp_undo_stack_get_type() #5
  %call71 = call %struct._GimpUndo* @gimp_image_undo_can_compress(%struct._GimpImage* %48, i64 %call70, i32 18)
  store %struct._GimpUndo* %call71, %struct._GimpUndo** %undo, align 8
  %49 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %tobool72 = icmp ne %struct._GimpUndo* %49, null
  br i1 %tobool72, label %land.lhs.true.73, label %if.end.78

land.lhs.true.73:                                 ; preds = %if.then.65
  %50 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %51 = bitcast %struct._GimpUndo* %50 to %struct._GTypeInstance*
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 80)
  %52 = bitcast %struct._GTypeInstance* %call74 to %struct._GObject*
  %call75 = call i8* @g_object_get_data(%struct._GObject* %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0))
  %53 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %54 = bitcast %struct._GimpItem* %53 to i8*
  %cmp76 = icmp eq i8* %call75, %54
  br i1 %cmp76, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %land.lhs.true.73
  store i32 0, i32* %push_undo, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.77, %land.lhs.true.73, %if.then.65
  %55 = load i32, i32* %push_undo, align 4
  %tobool79 = icmp ne i32 %55, 0
  br i1 %tobool79, label %if.then.80, label %if.else.120

if.then.80:                                       ; preds = %if.end.78
  %56 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call81 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0)) #7
  %call82 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %56, i32 18, i8* %call81)
  %tobool83 = icmp ne i32 %call82, 0
  br i1 %tobool83, label %if.then.84, label %if.end.91

if.then.84:                                       ; preds = %if.then.80
  %57 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call85 = call i64 @gimp_undo_stack_get_type() #5
  %call86 = call %struct._GimpUndo* @gimp_image_undo_can_compress(%struct._GimpImage* %57, i64 %call85, i32 18)
  store %struct._GimpUndo* %call86, %struct._GimpUndo** %undo, align 8
  %58 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %tobool87 = icmp ne %struct._GimpUndo* %58, null
  br i1 %tobool87, label %if.then.88, label %if.end.90

if.then.88:                                       ; preds = %if.then.84
  %59 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %60 = bitcast %struct._GimpUndo* %59 to %struct._GTypeInstance*
  %call89 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 80)
  %61 = bitcast %struct._GTypeInstance* %call89 to %struct._GObject*
  %62 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %63 = bitcast %struct._GimpItem* %62 to i8*
  call void @g_object_set_data(%struct._GObject* %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i8* %63)
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.88, %if.then.84
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.then.80
  %64 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %65 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call92 = call %struct._GimpUndo* @gimp_image_undo_push_item_linked(%struct._GimpImage* %64, i8* null, %struct._GimpItem* %65)
  %66 = load %struct._GList*, %struct._GList** %on, align 8
  store %struct._GList* %66, %struct._GList** %list, align 8
  br label %for.cond.93

for.cond.93:                                      ; preds = %cond.end.103, %if.end.91
  %67 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool94 = icmp ne %struct._GList* %67, null
  br i1 %tobool94, label %for.body.95, label %for.end.105

for.body.95:                                      ; preds = %for.cond.93
  %68 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %69 = load %struct._GList*, %struct._GList** %list, align 8
  %data96 = getelementptr inbounds %struct._GList, %struct._GList* %69, i32 0, i32 0
  %70 = load i8*, i8** %data96, align 8
  %71 = bitcast i8* %70 to %struct._GimpItem*
  %call97 = call %struct._GimpUndo* @gimp_image_undo_push_item_linked(%struct._GimpImage* %68, i8* null, %struct._GimpItem* %71)
  br label %for.inc.98

for.inc.98:                                       ; preds = %for.body.95
  %72 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool99 = icmp ne %struct._GList* %72, null
  br i1 %tobool99, label %cond.true.100, label %cond.false.102

cond.true.100:                                    ; preds = %for.inc.98
  %73 = load %struct._GList*, %struct._GList** %list, align 8
  %next101 = getelementptr inbounds %struct._GList, %struct._GList* %73, i32 0, i32 1
  %74 = load %struct._GList*, %struct._GList** %next101, align 8
  br label %cond.end.103

cond.false.102:                                   ; preds = %for.inc.98
  br label %cond.end.103

cond.end.103:                                     ; preds = %cond.false.102, %cond.true.100
  %cond104 = phi %struct._GList* [ %74, %cond.true.100 ], [ null, %cond.false.102 ]
  store %struct._GList* %cond104, %struct._GList** %list, align 8
  br label %for.cond.93

for.end.105:                                      ; preds = %for.cond.93
  %75 = load %struct._GList*, %struct._GList** %off, align 8
  store %struct._GList* %75, %struct._GList** %list, align 8
  br label %for.cond.106

for.cond.106:                                     ; preds = %cond.end.116, %for.end.105
  %76 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool107 = icmp ne %struct._GList* %76, null
  br i1 %tobool107, label %for.body.108, label %for.end.118

for.body.108:                                     ; preds = %for.cond.106
  %77 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %78 = load %struct._GList*, %struct._GList** %list, align 8
  %data109 = getelementptr inbounds %struct._GList, %struct._GList* %78, i32 0, i32 0
  %79 = load i8*, i8** %data109, align 8
  %80 = bitcast i8* %79 to %struct._GimpItem*
  %call110 = call %struct._GimpUndo* @gimp_image_undo_push_item_linked(%struct._GimpImage* %77, i8* null, %struct._GimpItem* %80)
  br label %for.inc.111

for.inc.111:                                      ; preds = %for.body.108
  %81 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool112 = icmp ne %struct._GList* %81, null
  br i1 %tobool112, label %cond.true.113, label %cond.false.115

cond.true.113:                                    ; preds = %for.inc.111
  %82 = load %struct._GList*, %struct._GList** %list, align 8
  %next114 = getelementptr inbounds %struct._GList, %struct._GList* %82, i32 0, i32 1
  %83 = load %struct._GList*, %struct._GList** %next114, align 8
  br label %cond.end.116

cond.false.115:                                   ; preds = %for.inc.111
  br label %cond.end.116

cond.end.116:                                     ; preds = %cond.false.115, %cond.true.113
  %cond117 = phi %struct._GList* [ %83, %cond.true.113 ], [ null, %cond.false.115 ]
  store %struct._GList* %cond117, %struct._GList** %list, align 8
  br label %for.cond.106

for.end.118:                                      ; preds = %for.cond.106
  %84 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call119 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %84)
  br label %if.end.121

if.else.120:                                      ; preds = %if.end.78
  %85 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %86 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_undo_refresh_preview(%struct._GimpUndo* %85, %struct._GimpContext* %86)
  br label %if.end.121

if.end.121:                                       ; preds = %if.else.120, %for.end.118
  %87 = load %struct._GList*, %struct._GList** %off, align 8
  %tobool122 = icmp ne %struct._GList* %87, null
  br i1 %tobool122, label %if.then.126, label %lor.lhs.false.123

lor.lhs.false.123:                                ; preds = %if.end.121
  %88 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call124 = call i32 @gimp_item_get_linked(%struct._GimpItem* %88)
  %tobool125 = icmp ne i32 %call124, 0
  br i1 %tobool125, label %if.else.139, label %if.then.126

if.then.126:                                      ; preds = %lor.lhs.false.123, %if.end.121
  %89 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  call void @gimp_item_set_linked(%struct._GimpItem* %89, i32 1, i32 0)
  %90 = load %struct._GList*, %struct._GList** %off, align 8
  store %struct._GList* %90, %struct._GList** %list, align 8
  br label %for.cond.127

for.cond.127:                                     ; preds = %cond.end.136, %if.then.126
  %91 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool128 = icmp ne %struct._GList* %91, null
  br i1 %tobool128, label %for.body.129, label %for.end.138

for.body.129:                                     ; preds = %for.cond.127
  %92 = load %struct._GList*, %struct._GList** %list, align 8
  %data130 = getelementptr inbounds %struct._GList, %struct._GList* %92, i32 0, i32 0
  %93 = load i8*, i8** %data130, align 8
  %94 = bitcast i8* %93 to %struct._GimpItem*
  call void @gimp_item_set_linked(%struct._GimpItem* %94, i32 1, i32 0)
  br label %for.inc.131

for.inc.131:                                      ; preds = %for.body.129
  %95 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool132 = icmp ne %struct._GList* %95, null
  br i1 %tobool132, label %cond.true.133, label %cond.false.135

cond.true.133:                                    ; preds = %for.inc.131
  %96 = load %struct._GList*, %struct._GList** %list, align 8
  %next134 = getelementptr inbounds %struct._GList, %struct._GList* %96, i32 0, i32 1
  %97 = load %struct._GList*, %struct._GList** %next134, align 8
  br label %cond.end.136

cond.false.135:                                   ; preds = %for.inc.131
  br label %cond.end.136

cond.end.136:                                     ; preds = %cond.false.135, %cond.true.133
  %cond137 = phi %struct._GList* [ %97, %cond.true.133 ], [ null, %cond.false.135 ]
  store %struct._GList* %cond137, %struct._GList** %list, align 8
  br label %for.cond.127

for.end.138:                                      ; preds = %for.cond.127
  br label %if.end.152

if.else.139:                                      ; preds = %lor.lhs.false.123
  %98 = load %struct._GList*, %struct._GList** %on, align 8
  store %struct._GList* %98, %struct._GList** %list, align 8
  br label %for.cond.140

for.cond.140:                                     ; preds = %cond.end.149, %if.else.139
  %99 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool141 = icmp ne %struct._GList* %99, null
  br i1 %tobool141, label %for.body.142, label %for.end.151

for.body.142:                                     ; preds = %for.cond.140
  %100 = load %struct._GList*, %struct._GList** %list, align 8
  %data143 = getelementptr inbounds %struct._GList, %struct._GList* %100, i32 0, i32 0
  %101 = load i8*, i8** %data143, align 8
  %102 = bitcast i8* %101 to %struct._GimpItem*
  call void @gimp_item_set_linked(%struct._GimpItem* %102, i32 0, i32 0)
  br label %for.inc.144

for.inc.144:                                      ; preds = %for.body.142
  %103 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool145 = icmp ne %struct._GList* %103, null
  br i1 %tobool145, label %cond.true.146, label %cond.false.148

cond.true.146:                                    ; preds = %for.inc.144
  %104 = load %struct._GList*, %struct._GList** %list, align 8
  %next147 = getelementptr inbounds %struct._GList, %struct._GList* %104, i32 0, i32 1
  %105 = load %struct._GList*, %struct._GList** %next147, align 8
  br label %cond.end.149

cond.false.148:                                   ; preds = %for.inc.144
  br label %cond.end.149

cond.end.149:                                     ; preds = %cond.false.148, %cond.true.146
  %cond150 = phi %struct._GList* [ %105, %cond.true.146 ], [ null, %cond.false.148 ]
  store %struct._GList* %cond150, %struct._GList** %list, align 8
  br label %for.cond.140

for.end.151:                                      ; preds = %for.cond.140
  br label %if.end.152

if.end.152:                                       ; preds = %for.end.151, %for.end.138
  %106 = load %struct._GList*, %struct._GList** %on, align 8
  call void @g_list_free(%struct._GList* %106)
  %107 = load %struct._GList*, %struct._GList** %off, align 8
  call void @g_list_free(%struct._GList* %107)
  br label %if.end.153

if.end.153:                                       ; preds = %if.else.9, %if.else.15, %if.else.43, %if.end.152, %lor.lhs.false.62
  ret void
}

declare %struct._GList* @gimp_item_get_container_iter(%struct._GimpItem*) #3

declare i32 @gimp_item_get_linked(%struct._GimpItem*) #3

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #3

declare %struct._GimpUndo* @gimp_image_undo_push_item_linked(%struct._GimpImage*, i8*, %struct._GimpItem*) #3

declare void @gimp_item_set_linked(%struct._GimpItem*, i32, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #1

declare %struct._GimpViewable* @gimp_viewable_get_parent(%struct._GimpViewable*) #3

declare %struct._GimpItemTree* @gimp_item_get_tree(%struct._GimpItem*) #3

declare %struct._GList* @gimp_item_stack_get_item_list(%struct._GimpItemStack*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_item_stack_get_type() #1

declare i32 @gimp_viewable_is_ancestor(%struct._GimpViewable*, %struct._GimpViewable*) #3

declare void @g_object_get(i8*, i8*, ...) #3

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
