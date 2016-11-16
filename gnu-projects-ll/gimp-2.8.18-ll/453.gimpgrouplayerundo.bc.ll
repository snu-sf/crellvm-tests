; ModuleID = './app/core/gimpgrouplayerundo.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpGroupLayerUndoClass = type { %struct._GimpItemUndoClass }
%struct._GimpItemUndoClass = type { %struct._GimpUndoClass }
%struct._GimpUndoClass = type { %struct._GimpViewableClass, void (%struct._GimpUndo*, i32, %struct._GimpUndoAccumulator*)*, void (%struct._GimpUndo*, i32)* }
%struct._GimpViewableClass = type { %struct._GimpObjectClass, i8*, i8*, void (%struct._GimpViewable*)*, void (%struct._GimpViewable*)*, i32 (%struct._GimpViewable*, i32*, i32*)*, void (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, i32 (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, i8* (%struct._GimpViewable*, i8**)*, %struct._GimpContainer* (%struct._GimpViewable*)*, void (%struct._GimpViewable*, i32)*, i32 (%struct._GimpViewable*)* }
%struct._GimpObjectClass = type { %struct._GObjectClass, void (%struct._GimpObject*)*, void (%struct._GimpObject*)*, i64 (%struct._GimpObject*, i64*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpViewable = type { %struct._GimpObject }
%struct._TempBuf = type opaque
%struct._GimpContext = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpContainer = type opaque
%struct._GimpUndo = type { %struct._GimpViewable, %struct._GimpImage*, i32, i32, i32, %struct._TempBuf*, i32 }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._Gimp = type opaque
%struct._GimpUndoAccumulator = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpGroupLayerUndo = type { %struct._GimpItemUndo, i32 }
%struct._GimpItemUndo = type { %struct._GimpUndo, %struct._GimpItem* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpGroupLayer = type { %struct._GimpLayer }
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpLayerMask = type opaque
%struct._GeglNode = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._BoundSeg = type opaque

@gimp_group_layer_undo_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"GimpGroupLayerUndo\00", align 1
@gimp_group_layer_undo_parent_class = internal global i8* null, align 8
@GimpGroupLayerUndo_private_offset = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"gimpgrouplayerundo.c\00", align 1
@__func__.gimp_group_layer_undo_constructed = private unnamed_addr constant [34 x i8] c"gimp_group_layer_undo_constructed\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"GIMP_IS_GROUP_LAYER (GIMP_ITEM_UNDO (object)->item)\00", align 1
@__func__.gimp_group_layer_undo_pop = private unnamed_addr constant [26 x i8] c"gimp_group_layer_undo_pop\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_group_layer_undo_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_group_layer_undo_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_group_layer_undo_get_type.g_define_type_id__volatile to i8*))
  %tobool2 = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %3 to i32
  store i32 %land.ext, i32* %tmp
  %4 = load i32, i32* %tmp
  %tobool3 = icmp ne i32 %4, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  %call5 = call i64 @gimp_item_undo_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 296, void (i8*, i8*)* bitcast (void (i8*)* @gimp_group_layer_undo_class_intern_init to void (i8*, i8*)*), i32 88, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpGroupLayerUndo*)* @gimp_group_layer_undo_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_group_layer_undo_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_group_layer_undo_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_undo_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_group_layer_undo_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_group_layer_undo_parent_class, align 8
  %1 = load i32, i32* @GimpGroupLayerUndo_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpGroupLayerUndo_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpGroupLayerUndoClass*
  call void @gimp_group_layer_undo_class_init(%struct._GimpGroupLayerUndoClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_group_layer_undo_init(%struct._GimpGroupLayerUndo* %undo) #3 {
entry:
  %undo.addr = alloca %struct._GimpGroupLayerUndo*, align 8
  store %struct._GimpGroupLayerUndo* %undo, %struct._GimpGroupLayerUndo** %undo.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_group_layer_undo_class_init(%struct._GimpGroupLayerUndoClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpGroupLayerUndoClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %undo_class = alloca %struct._GimpUndoClass*, align 8
  store %struct._GimpGroupLayerUndoClass* %klass, %struct._GimpGroupLayerUndoClass** %klass.addr, align 8
  %0 = load %struct._GimpGroupLayerUndoClass*, %struct._GimpGroupLayerUndoClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpGroupLayerUndoClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpGroupLayerUndoClass*, %struct._GimpGroupLayerUndoClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpGroupLayerUndoClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_undo_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpUndoClass*
  store %struct._GimpUndoClass* %5, %struct._GimpUndoClass** %undo_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_group_layer_undo_constructed, void (%struct._GObject*)** %constructed, align 8
  %7 = load %struct._GimpUndoClass*, %struct._GimpUndoClass** %undo_class, align 8
  %pop = getelementptr inbounds %struct._GimpUndoClass, %struct._GimpUndoClass* %7, i32 0, i32 1
  store void (%struct._GimpUndo*, i32, %struct._GimpUndoAccumulator*)* @gimp_group_layer_undo_pop, void (%struct._GimpUndo*, i32, %struct._GimpUndoAccumulator*)** %pop, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_undo_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_group_layer_undo_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %group_layer_undo = alloca %struct._GimpGroupLayerUndo*, align 8
  %group = alloca %struct._GimpGroupLayer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_group_layer_undo_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGroupLayerUndo*
  store %struct._GimpGroupLayerUndo* %2, %struct._GimpGroupLayerUndo** %group_layer_undo, align 8
  %3 = load i8*, i8** @gimp_group_layer_undo_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_group_layer_undo_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 80)
  %9 = bitcast %struct._GTypeClass* %call3 to %struct._GObjectClass*
  %constructed4 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  %10 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed4, align 8
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %10(%struct._GObject* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %13 = bitcast %struct._GObject* %12 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_item_undo_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call5)
  %14 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpItemUndo*
  %item = getelementptr inbounds %struct._GimpItemUndo, %struct._GimpItemUndo* %14, i32 0, i32 1
  %15 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %16 = bitcast %struct._GimpItem* %15 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %16, %struct._GTypeInstance** %__inst, align 8
  %call7 = call i64 @gimp_group_layer_get_type() #6
  store i64 %call7, i64* %__t, align 8
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool8 = icmp ne %struct._GTypeInstance* %17, null
  br i1 %tobool8, label %if.else, label %if.then.9

if.then.9:                                        ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.16

if.else:                                          ; preds = %do.body
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool10 = icmp ne %struct._GTypeClass* %19, null
  br i1 %tobool10, label %land.lhs.true, label %if.else.13

land.lhs.true:                                    ; preds = %if.else
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type, align 8
  %23 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %22, %23
  br i1 %cmp, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.15

if.else.13:                                       ; preds = %land.lhs.true, %if.else
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %25 = load i64, i64* %__t, align 8
  %call14 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %24, i64 %25) #7
  store i32 %call14, i32* %__r, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.13, %if.then.12
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then.9
  %26 = load i32, i32* %__r, align 4
  store i32 %26, i32* %tmp
  %27 = load i32, i32* %tmp
  %tobool17 = icmp ne i32 %27, 0
  br i1 %tobool17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %if.end.16
  br label %if.end.20

if.else.19:                                       ; preds = %if.end.16
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i32 66, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_group_layer_undo_constructed, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i32 0, i32 0)) #8
  unreachable

if.end.20:                                        ; preds = %if.then.18
  br label %do.end

do.end:                                           ; preds = %if.end.20
  %28 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %29 = bitcast %struct._GObject* %28 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_item_undo_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call21)
  %30 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpItemUndo*
  %item23 = getelementptr inbounds %struct._GimpItemUndo, %struct._GimpItemUndo* %30, i32 0, i32 1
  %31 = load %struct._GimpItem*, %struct._GimpItem** %item23, align 8
  %32 = bitcast %struct._GimpItem* %31 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_group_layer_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call24)
  %33 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpGroupLayer*
  store %struct._GimpGroupLayer* %33, %struct._GimpGroupLayer** %group, align 8
  %34 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %35 = bitcast %struct._GObject* %34 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_undo_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call26)
  %36 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpUndo*
  %undo_type = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %36, i32 0, i32 3
  %37 = load i32, i32* %undo_type, align 4
  switch i32 %37, label %sw.default [
    i32 58, label %sw.bb
    i32 59, label %sw.bb
    i32 60, label %sw.bb.28
  ]

sw.bb:                                            ; preds = %do.end, %do.end
  br label %sw.epilog

sw.bb.28:                                         ; preds = %do.end
  %38 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group, align 8
  %39 = bitcast %struct._GimpGroupLayer* %38 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_drawable_get_type() #6
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call29)
  %40 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpDrawable*
  %call31 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %40)
  %cmp32 = icmp eq i32 %call31, 0
  br i1 %cmp32, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.28
  %41 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group, align 8
  %42 = bitcast %struct._GimpGroupLayer* %41 to %struct._GTypeInstance*
  %call33 = call i64 @gimp_drawable_get_type() #6
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call33)
  %43 = bitcast %struct._GTypeInstance* %call34 to %struct._GimpDrawable*
  %call35 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %43)
  %cmp36 = icmp eq i32 %call35, 1
  br i1 %cmp36, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %sw.bb.28
  br label %cond.end.57

cond.false:                                       ; preds = %lor.lhs.false
  %44 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group, align 8
  %45 = bitcast %struct._GimpGroupLayer* %44 to %struct._GTypeInstance*
  %call37 = call i64 @gimp_drawable_get_type() #6
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call37)
  %46 = bitcast %struct._GTypeInstance* %call38 to %struct._GimpDrawable*
  %call39 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %46)
  %cmp40 = icmp eq i32 %call39, 2
  br i1 %cmp40, label %cond.true.46, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %cond.false
  %47 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group, align 8
  %48 = bitcast %struct._GimpGroupLayer* %47 to %struct._GTypeInstance*
  %call42 = call i64 @gimp_drawable_get_type() #6
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call42)
  %49 = bitcast %struct._GTypeInstance* %call43 to %struct._GimpDrawable*
  %call44 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %49)
  %cmp45 = icmp eq i32 %call44, 3
  br i1 %cmp45, label %cond.true.46, label %cond.false.47

cond.true.46:                                     ; preds = %lor.lhs.false.41, %cond.false
  br label %cond.end

cond.false.47:                                    ; preds = %lor.lhs.false.41
  %50 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group, align 8
  %51 = bitcast %struct._GimpGroupLayer* %50 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_drawable_get_type() #6
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call48)
  %52 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpDrawable*
  %call50 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %52)
  %cmp51 = icmp eq i32 %call50, 4
  br i1 %cmp51, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false.47
  %53 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group, align 8
  %54 = bitcast %struct._GimpGroupLayer* %53 to %struct._GTypeInstance*
  %call52 = call i64 @gimp_drawable_get_type() #6
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call52)
  %55 = bitcast %struct._GTypeInstance* %call53 to %struct._GimpDrawable*
  %call54 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %55)
  %cmp55 = icmp eq i32 %call54, 5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.false.47
  %56 = phi i1 [ true, %cond.false.47 ], [ %cmp55, %lor.rhs ]
  %cond = select i1 %56, i32 2, i32 -1
  br label %cond.end

cond.end:                                         ; preds = %lor.end, %cond.true.46
  %cond56 = phi i32 [ 1, %cond.true.46 ], [ %cond, %lor.end ]
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.end, %cond.true
  %cond58 = phi i32 [ 0, %cond.true ], [ %cond56, %cond.end ]
  %57 = load %struct._GimpGroupLayerUndo*, %struct._GimpGroupLayerUndo** %group_layer_undo, align 8
  %prev_type = getelementptr inbounds %struct._GimpGroupLayerUndo, %struct._GimpGroupLayerUndo* %57, i32 0, i32 1
  store i32 %cond58, i32* %prev_type, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %do.body.59

do.body.59:                                       ; preds = %sw.default
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i32 81, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_group_layer_undo_constructed, i32 0, i32 0), i8* null) #8
  unreachable

do.end.60:                                        ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.60, %cond.end.57, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_group_layer_undo_pop(%struct._GimpUndo* %undo, i32 %undo_mode, %struct._GimpUndoAccumulator* %accum) #3 {
entry:
  %undo.addr = alloca %struct._GimpUndo*, align 8
  %undo_mode.addr = alloca i32, align 4
  %accum.addr = alloca %struct._GimpUndoAccumulator*, align 8
  %group_layer_undo = alloca %struct._GimpGroupLayerUndo*, align 8
  %group = alloca %struct._GimpGroupLayer*, align 8
  %type = alloca i32, align 4
  store %struct._GimpUndo* %undo, %struct._GimpUndo** %undo.addr, align 8
  store i32 %undo_mode, i32* %undo_mode.addr, align 4
  store %struct._GimpUndoAccumulator* %accum, %struct._GimpUndoAccumulator** %accum.addr, align 8
  %0 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %1 = bitcast %struct._GimpUndo* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_group_layer_undo_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGroupLayerUndo*
  store %struct._GimpGroupLayerUndo* %2, %struct._GimpGroupLayerUndo** %group_layer_undo, align 8
  %3 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %4 = bitcast %struct._GimpUndo* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_item_undo_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpItemUndo*
  %item = getelementptr inbounds %struct._GimpItemUndo, %struct._GimpItemUndo* %5, i32 0, i32 1
  %6 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %7 = bitcast %struct._GimpItem* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_group_layer_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpGroupLayer*
  store %struct._GimpGroupLayer* %8, %struct._GimpGroupLayer** %group, align 8
  %9 = load i8*, i8** @gimp_group_layer_undo_parent_class, align 8
  %10 = bitcast i8* %9 to %struct._GTypeClass*
  %call6 = call i64 @gimp_undo_get_type() #6
  %call7 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 %call6)
  %11 = bitcast %struct._GTypeClass* %call7 to %struct._GimpUndoClass*
  %pop = getelementptr inbounds %struct._GimpUndoClass, %struct._GimpUndoClass* %11, i32 0, i32 1
  %12 = load void (%struct._GimpUndo*, i32, %struct._GimpUndoAccumulator*)*, void (%struct._GimpUndo*, i32, %struct._GimpUndoAccumulator*)** %pop, align 8
  %13 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %14 = load i32, i32* %undo_mode.addr, align 4
  %15 = load %struct._GimpUndoAccumulator*, %struct._GimpUndoAccumulator** %accum.addr, align 8
  call void %12(%struct._GimpUndo* %13, i32 %14, %struct._GimpUndoAccumulator* %15)
  %16 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %undo_type = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %16, i32 0, i32 3
  %17 = load i32, i32* %undo_type, align 4
  switch i32 %17, label %sw.default [
    i32 58, label %sw.bb
    i32 59, label %sw.bb
    i32 60, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %entry, %entry
  %18 = load i32, i32* %undo_mode.addr, align 4
  %cmp = icmp eq i32 %18, 0
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %sw.bb
  %19 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %undo_type8 = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %19, i32 0, i32 3
  %20 = load i32, i32* %undo_type8, align 4
  %cmp9 = icmp eq i32 %20, 58
  br i1 %cmp9, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %sw.bb
  %21 = load i32, i32* %undo_mode.addr, align 4
  %cmp10 = icmp eq i32 %21, 1
  br i1 %cmp10, label %land.lhs.true.11, label %if.else

land.lhs.true.11:                                 ; preds = %lor.lhs.false
  %22 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %undo_type12 = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %22, i32 0, i32 3
  %23 = load i32, i32* %undo_type12, align 4
  %cmp13 = icmp eq i32 %23, 59
  br i1 %cmp13, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.11, %land.lhs.true
  %24 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group, align 8
  call void @gimp_group_layer_resume_resize(%struct._GimpGroupLayer* %24, i32 0)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.11, %lor.lhs.false
  %25 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group, align 8
  call void @gimp_group_layer_suspend_resize(%struct._GimpGroupLayer* %25, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  %26 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group, align 8
  %27 = bitcast %struct._GimpGroupLayer* %26 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_drawable_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call15)
  %28 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpDrawable*
  %call17 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %28)
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %cond.true, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %sw.bb.14
  %29 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group, align 8
  %30 = bitcast %struct._GimpGroupLayer* %29 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_drawable_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call20)
  %31 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpDrawable*
  %call22 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %31)
  %cmp23 = icmp eq i32 %call22, 1
  br i1 %cmp23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false.19, %sw.bb.14
  br label %cond.end.44

cond.false:                                       ; preds = %lor.lhs.false.19
  %32 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group, align 8
  %33 = bitcast %struct._GimpGroupLayer* %32 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_drawable_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call24)
  %34 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpDrawable*
  %call26 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %34)
  %cmp27 = icmp eq i32 %call26, 2
  br i1 %cmp27, label %cond.true.33, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %cond.false
  %35 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group, align 8
  %36 = bitcast %struct._GimpGroupLayer* %35 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_drawable_get_type() #6
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call29)
  %37 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpDrawable*
  %call31 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %37)
  %cmp32 = icmp eq i32 %call31, 3
  br i1 %cmp32, label %cond.true.33, label %cond.false.34

cond.true.33:                                     ; preds = %lor.lhs.false.28, %cond.false
  br label %cond.end

cond.false.34:                                    ; preds = %lor.lhs.false.28
  %38 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group, align 8
  %39 = bitcast %struct._GimpGroupLayer* %38 to %struct._GTypeInstance*
  %call35 = call i64 @gimp_drawable_get_type() #6
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call35)
  %40 = bitcast %struct._GTypeInstance* %call36 to %struct._GimpDrawable*
  %call37 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %40)
  %cmp38 = icmp eq i32 %call37, 4
  br i1 %cmp38, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false.34
  %41 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group, align 8
  %42 = bitcast %struct._GimpGroupLayer* %41 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_drawable_get_type() #6
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call39)
  %43 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpDrawable*
  %call41 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %43)
  %cmp42 = icmp eq i32 %call41, 5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.false.34
  %44 = phi i1 [ true, %cond.false.34 ], [ %cmp42, %lor.rhs ]
  %cond = select i1 %44, i32 2, i32 -1
  br label %cond.end

cond.end:                                         ; preds = %lor.end, %cond.true.33
  %cond43 = phi i32 [ 1, %cond.true.33 ], [ %cond, %lor.end ]
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.end, %cond.true
  %cond45 = phi i32 [ 0, %cond.true ], [ %cond43, %cond.end ]
  store i32 %cond45, i32* %type, align 4
  %45 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group, align 8
  %46 = bitcast %struct._GimpGroupLayer* %45 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_drawable_get_type() #6
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call46)
  %47 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpDrawable*
  %48 = load %struct._GimpGroupLayerUndo*, %struct._GimpGroupLayerUndo** %group_layer_undo, align 8
  %prev_type = getelementptr inbounds %struct._GimpGroupLayerUndo, %struct._GimpGroupLayerUndo* %48, i32 0, i32 1
  %49 = load i32, i32* %prev_type, align 4
  call void @gimp_drawable_convert_type(%struct._GimpDrawable* %47, %struct._GimpImage* null, i32 %49, i32 0)
  %50 = load i32, i32* %type, align 4
  %51 = load %struct._GimpGroupLayerUndo*, %struct._GimpGroupLayerUndo** %group_layer_undo, align 8
  %prev_type48 = getelementptr inbounds %struct._GimpGroupLayerUndo, %struct._GimpGroupLayerUndo* %51, i32 0, i32 1
  store i32 %50, i32* %prev_type48, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i32 130, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_group_layer_undo_pop, i32 0, i32 0), i8* null) #8
  unreachable

do.end:                                           ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %cond.end.44, %if.end
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_group_layer_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

declare i32 @gimp_drawable_type(%struct._GimpDrawable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #2

declare void @gimp_group_layer_resume_resize(%struct._GimpGroupLayer*, i32) #1

declare void @gimp_group_layer_suspend_resize(%struct._GimpGroupLayer*, i32) #1

declare void @gimp_drawable_convert_type(%struct._GimpDrawable*, %struct._GimpImage*, i32, i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
