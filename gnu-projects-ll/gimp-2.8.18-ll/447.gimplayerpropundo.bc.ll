; ModuleID = './app/core/gimplayerpropundo.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpLayerPropUndoClass = type { %struct._GimpItemUndoClass }
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
%struct._GimpLayerPropUndo = type { %struct._GimpItemUndo, i32, double, i32 }
%struct._GimpItemUndo = type { %struct._GimpUndo, %struct._GimpItem* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpLayerMask = type opaque
%struct._GeglNode = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._BoundSeg = type opaque

@gimp_layer_prop_undo_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"GimpLayerPropUndo\00", align 1
@gimp_layer_prop_undo_parent_class = internal global i8* null, align 8
@GimpLayerPropUndo_private_offset = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"gimplayerpropundo.c\00", align 1
@__func__.gimp_layer_prop_undo_constructed = private unnamed_addr constant [33 x i8] c"gimp_layer_prop_undo_constructed\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"GIMP_IS_LAYER (GIMP_ITEM_UNDO (object)->item)\00", align 1
@__func__.gimp_layer_prop_undo_pop = private unnamed_addr constant [25 x i8] c"gimp_layer_prop_undo_pop\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_layer_prop_undo_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_layer_prop_undo_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_layer_prop_undo_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 296, void (i8*, i8*)* bitcast (void (i8*)* @gimp_layer_prop_undo_class_intern_init to void (i8*, i8*)*), i32 104, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpLayerPropUndo*)* @gimp_layer_prop_undo_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_layer_prop_undo_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_layer_prop_undo_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_undo_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_prop_undo_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_layer_prop_undo_parent_class, align 8
  %1 = load i32, i32* @GimpLayerPropUndo_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpLayerPropUndo_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpLayerPropUndoClass*
  call void @gimp_layer_prop_undo_class_init(%struct._GimpLayerPropUndoClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_prop_undo_init(%struct._GimpLayerPropUndo* %undo) #3 {
entry:
  %undo.addr = alloca %struct._GimpLayerPropUndo*, align 8
  store %struct._GimpLayerPropUndo* %undo, %struct._GimpLayerPropUndo** %undo.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_prop_undo_class_init(%struct._GimpLayerPropUndoClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpLayerPropUndoClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %undo_class = alloca %struct._GimpUndoClass*, align 8
  store %struct._GimpLayerPropUndoClass* %klass, %struct._GimpLayerPropUndoClass** %klass.addr, align 8
  %0 = load %struct._GimpLayerPropUndoClass*, %struct._GimpLayerPropUndoClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpLayerPropUndoClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpLayerPropUndoClass*, %struct._GimpLayerPropUndoClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpLayerPropUndoClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_undo_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpUndoClass*
  store %struct._GimpUndoClass* %5, %struct._GimpUndoClass** %undo_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_layer_prop_undo_constructed, void (%struct._GObject*)** %constructed, align 8
  %7 = load %struct._GimpUndoClass*, %struct._GimpUndoClass** %undo_class, align 8
  %pop = getelementptr inbounds %struct._GimpUndoClass, %struct._GimpUndoClass* %7, i32 0, i32 1
  store void (%struct._GimpUndo*, i32, %struct._GimpUndoAccumulator*)* @gimp_layer_prop_undo_pop, void (%struct._GimpUndo*, i32, %struct._GimpUndoAccumulator*)** %pop, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_undo_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_prop_undo_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %layer_prop_undo = alloca %struct._GimpLayerPropUndo*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_layer_prop_undo_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpLayerPropUndo*
  store %struct._GimpLayerPropUndo* %2, %struct._GimpLayerPropUndo** %layer_prop_undo, align 8
  %3 = load i8*, i8** @gimp_layer_prop_undo_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_layer_prop_undo_parent_class, align 8
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
  %call7 = call i64 @gimp_layer_get_type() #6
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
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i32 68, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_layer_prop_undo_constructed, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i32 0, i32 0)) #8
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
  %call24 = call i64 @gimp_layer_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call24)
  %33 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpLayer*
  store %struct._GimpLayer* %33, %struct._GimpLayer** %layer, align 8
  %34 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %35 = bitcast %struct._GObject* %34 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_undo_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call26)
  %36 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpUndo*
  %undo_type = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %36, i32 0, i32 3
  %37 = load i32, i32* %undo_type, align 4
  switch i32 %37, label %sw.default [
    i32 55, label %sw.bb
    i32 56, label %sw.bb.29
    i32 57, label %sw.bb.31
  ]

sw.bb:                                            ; preds = %do.end
  %38 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call28 = call i32 @gimp_layer_get_mode(%struct._GimpLayer* %38)
  %39 = load %struct._GimpLayerPropUndo*, %struct._GimpLayerPropUndo** %layer_prop_undo, align 8
  %mode = getelementptr inbounds %struct._GimpLayerPropUndo, %struct._GimpLayerPropUndo* %39, i32 0, i32 1
  store i32 %call28, i32* %mode, align 4
  br label %sw.epilog

sw.bb.29:                                         ; preds = %do.end
  %40 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call30 = call double @gimp_layer_get_opacity(%struct._GimpLayer* %40)
  %41 = load %struct._GimpLayerPropUndo*, %struct._GimpLayerPropUndo** %layer_prop_undo, align 8
  %opacity = getelementptr inbounds %struct._GimpLayerPropUndo, %struct._GimpLayerPropUndo* %41, i32 0, i32 2
  store double %call30, double* %opacity, align 8
  br label %sw.epilog

sw.bb.31:                                         ; preds = %do.end
  %42 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call32 = call i32 @gimp_layer_get_lock_alpha(%struct._GimpLayer* %42)
  %43 = load %struct._GimpLayerPropUndo*, %struct._GimpLayerPropUndo** %layer_prop_undo, align 8
  %lock_alpha = getelementptr inbounds %struct._GimpLayerPropUndo, %struct._GimpLayerPropUndo* %43, i32 0, i32 3
  store i32 %call32, i32* %lock_alpha, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %do.body.33

do.body.33:                                       ; preds = %sw.default
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i32 87, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_layer_prop_undo_constructed, i32 0, i32 0), i8* null) #8
  unreachable

do.end.34:                                        ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.34, %sw.bb.31, %sw.bb.29, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_prop_undo_pop(%struct._GimpUndo* %undo, i32 %undo_mode, %struct._GimpUndoAccumulator* %accum) #3 {
entry:
  %undo.addr = alloca %struct._GimpUndo*, align 8
  %undo_mode.addr = alloca i32, align 4
  %accum.addr = alloca %struct._GimpUndoAccumulator*, align 8
  %layer_prop_undo = alloca %struct._GimpLayerPropUndo*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %mode = alloca i32, align 4
  %opacity = alloca double, align 8
  %lock_alpha = alloca i32, align 4
  store %struct._GimpUndo* %undo, %struct._GimpUndo** %undo.addr, align 8
  store i32 %undo_mode, i32* %undo_mode.addr, align 4
  store %struct._GimpUndoAccumulator* %accum, %struct._GimpUndoAccumulator** %accum.addr, align 8
  %0 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %1 = bitcast %struct._GimpUndo* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_layer_prop_undo_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpLayerPropUndo*
  store %struct._GimpLayerPropUndo* %2, %struct._GimpLayerPropUndo** %layer_prop_undo, align 8
  %3 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %4 = bitcast %struct._GimpUndo* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_item_undo_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpItemUndo*
  %item = getelementptr inbounds %struct._GimpItemUndo, %struct._GimpItemUndo* %5, i32 0, i32 1
  %6 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %7 = bitcast %struct._GimpItem* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_layer_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpLayer*
  store %struct._GimpLayer* %8, %struct._GimpLayer** %layer, align 8
  %9 = load i8*, i8** @gimp_layer_prop_undo_parent_class, align 8
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
    i32 55, label %sw.bb
    i32 56, label %sw.bb.11
    i32 57, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %entry
  %18 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call8 = call i32 @gimp_layer_get_mode(%struct._GimpLayer* %18)
  store i32 %call8, i32* %mode, align 4
  %19 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %20 = load %struct._GimpLayerPropUndo*, %struct._GimpLayerPropUndo** %layer_prop_undo, align 8
  %mode9 = getelementptr inbounds %struct._GimpLayerPropUndo, %struct._GimpLayerPropUndo* %20, i32 0, i32 1
  %21 = load i32, i32* %mode9, align 4
  call void @gimp_layer_set_mode(%struct._GimpLayer* %19, i32 %21, i32 0)
  %22 = load i32, i32* %mode, align 4
  %23 = load %struct._GimpLayerPropUndo*, %struct._GimpLayerPropUndo** %layer_prop_undo, align 8
  %mode10 = getelementptr inbounds %struct._GimpLayerPropUndo, %struct._GimpLayerPropUndo* %23, i32 0, i32 1
  store i32 %22, i32* %mode10, align 4
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %24 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call12 = call double @gimp_layer_get_opacity(%struct._GimpLayer* %24)
  store double %call12, double* %opacity, align 8
  %25 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %26 = load %struct._GimpLayerPropUndo*, %struct._GimpLayerPropUndo** %layer_prop_undo, align 8
  %opacity13 = getelementptr inbounds %struct._GimpLayerPropUndo, %struct._GimpLayerPropUndo* %26, i32 0, i32 2
  %27 = load double, double* %opacity13, align 8
  call void @gimp_layer_set_opacity(%struct._GimpLayer* %25, double %27, i32 0)
  %28 = load double, double* %opacity, align 8
  %29 = load %struct._GimpLayerPropUndo*, %struct._GimpLayerPropUndo** %layer_prop_undo, align 8
  %opacity14 = getelementptr inbounds %struct._GimpLayerPropUndo, %struct._GimpLayerPropUndo* %29, i32 0, i32 2
  store double %28, double* %opacity14, align 8
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %30 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call16 = call i32 @gimp_layer_get_lock_alpha(%struct._GimpLayer* %30)
  store i32 %call16, i32* %lock_alpha, align 4
  %31 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %32 = load %struct._GimpLayerPropUndo*, %struct._GimpLayerPropUndo** %layer_prop_undo, align 8
  %lock_alpha17 = getelementptr inbounds %struct._GimpLayerPropUndo, %struct._GimpLayerPropUndo* %32, i32 0, i32 3
  %33 = load i32, i32* %lock_alpha17, align 4
  call void @gimp_layer_set_lock_alpha(%struct._GimpLayer* %31, i32 %33, i32 0)
  %34 = load i32, i32* %lock_alpha, align 4
  %35 = load %struct._GimpLayerPropUndo*, %struct._GimpLayerPropUndo** %layer_prop_undo, align 8
  %lock_alpha18 = getelementptr inbounds %struct._GimpLayerPropUndo, %struct._GimpLayerPropUndo* %35, i32 0, i32 3
  store i32 %34, i32* %lock_alpha18, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i32 134, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_layer_prop_undo_pop, i32 0, i32 0), i8* null) #8
  unreachable

do.end:                                           ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.15, %sw.bb.11, %sw.bb
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

declare i32 @gimp_layer_get_mode(%struct._GimpLayer*) #1

declare double @gimp_layer_get_opacity(%struct._GimpLayer*) #1

declare i32 @gimp_layer_get_lock_alpha(%struct._GimpLayer*) #1

declare void @gimp_layer_set_mode(%struct._GimpLayer*, i32, i32) #1

declare void @gimp_layer_set_opacity(%struct._GimpLayer*, double, i32) #1

declare void @gimp_layer_set_lock_alpha(%struct._GimpLayer*, i32, i32) #1

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