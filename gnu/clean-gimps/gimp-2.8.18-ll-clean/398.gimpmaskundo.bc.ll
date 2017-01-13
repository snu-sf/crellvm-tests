; ModuleID = './app/core/gimpmaskundo.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpMaskUndoClass = type { %struct._GimpItemUndoClass }
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
%struct._GimpImage = type opaque
%struct._GimpUndoAccumulator = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpMaskUndo = type { %struct._GimpItemUndo, %struct._TileManager*, i32, i32 }
%struct._GimpItemUndo = type { %struct._GimpUndo, %struct._GimpItem* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._TileManager = type opaque
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GeglNode = type opaque
%struct._BoundSeg = type opaque
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._Tile = type opaque

@gimp_mask_undo_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"GimpMaskUndo\00", align 1
@gimp_mask_undo_parent_class = internal global i8* null, align 8
@GimpMaskUndo_private_offset = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"gimpmaskundo.c\00", align 1
@__func__.gimp_mask_undo_constructed = private unnamed_addr constant [27 x i8] c"gimp_mask_undo_constructed\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"GIMP_IS_CHANNEL (GIMP_ITEM_UNDO (object)->item)\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_mask_undo_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_mask_undo_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_mask_undo_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 296, void (i8*, i8*)* bitcast (void (i8*)* @gimp_mask_undo_class_intern_init to void (i8*, i8*)*), i32 96, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpMaskUndo*)* @gimp_mask_undo_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_mask_undo_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_mask_undo_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_undo_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_mask_undo_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_mask_undo_parent_class, align 8
  %1 = load i32, i32* @GimpMaskUndo_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpMaskUndo_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpMaskUndoClass*
  call void @gimp_mask_undo_class_init(%struct._GimpMaskUndoClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_mask_undo_init(%struct._GimpMaskUndo* %undo) #3 {
entry:
  %undo.addr = alloca %struct._GimpMaskUndo*, align 8
  store %struct._GimpMaskUndo* %undo, %struct._GimpMaskUndo** %undo.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_mask_undo_class_init(%struct._GimpMaskUndoClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpMaskUndoClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %gimp_object_class = alloca %struct._GimpObjectClass*, align 8
  %undo_class = alloca %struct._GimpUndoClass*, align 8
  store %struct._GimpMaskUndoClass* %klass, %struct._GimpMaskUndoClass** %klass.addr, align 8
  %0 = load %struct._GimpMaskUndoClass*, %struct._GimpMaskUndoClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpMaskUndoClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpMaskUndoClass*, %struct._GimpMaskUndoClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpMaskUndoClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_object_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpObjectClass*
  store %struct._GimpObjectClass* %5, %struct._GimpObjectClass** %gimp_object_class, align 8
  %6 = load %struct._GimpMaskUndoClass*, %struct._GimpMaskUndoClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpMaskUndoClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_undo_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpUndoClass*
  store %struct._GimpUndoClass* %8, %struct._GimpUndoClass** %undo_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_mask_undo_constructed, void (%struct._GObject*)** %constructed, align 8
  %10 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %gimp_object_class, align 8
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %10, i32 0, i32 3
  store i64 (%struct._GimpObject*, i64*)* @gimp_mask_undo_get_memsize, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %11 = load %struct._GimpUndoClass*, %struct._GimpUndoClass** %undo_class, align 8
  %pop = getelementptr inbounds %struct._GimpUndoClass, %struct._GimpUndoClass* %11, i32 0, i32 1
  store void (%struct._GimpUndo*, i32, %struct._GimpUndoAccumulator*)* @gimp_mask_undo_pop, void (%struct._GimpUndo*, i32, %struct._GimpUndoAccumulator*)** %pop, align 8
  %12 = load %struct._GimpUndoClass*, %struct._GimpUndoClass** %undo_class, align 8
  %free = getelementptr inbounds %struct._GimpUndoClass, %struct._GimpUndoClass* %12, i32 0, i32 2
  store void (%struct._GimpUndo*, i32)* @gimp_mask_undo_free, void (%struct._GimpUndo*, i32)** %free, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_undo_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_mask_undo_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %mask_undo = alloca %struct._GimpMaskUndo*, align 8
  %channel = alloca %struct._GimpChannel*, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %srcPR = alloca %struct._PixelRegion, align 8
  %destPR = alloca %struct._PixelRegion, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_mask_undo_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpMaskUndo*
  store %struct._GimpMaskUndo* %2, %struct._GimpMaskUndo** %mask_undo, align 8
  %3 = load i8*, i8** @gimp_mask_undo_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_mask_undo_parent_class, align 8
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
  %call7 = call i64 @gimp_channel_get_type() #6
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
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 80, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_mask_undo_constructed, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i32 0, i32 0)) #8
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
  %call24 = call i64 @gimp_channel_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call24)
  %33 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpChannel*
  store %struct._GimpChannel* %33, %struct._GimpChannel** %channel, align 8
  %34 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %call26 = call i32 @gimp_channel_bounds(%struct._GimpChannel* %34, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.28, label %if.end.43

if.then.28:                                       ; preds = %do.end
  %35 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %36 = bitcast %struct._GimpChannel* %35 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_drawable_get_type() #6
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call30)
  %37 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %37, %struct._GimpDrawable** %drawable, align 8
  %38 = load i32, i32* %x2, align 4
  %39 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %38, %39
  %40 = load i32, i32* %y2, align 4
  %41 = load i32, i32* %y1, align 4
  %sub34 = sub nsw i32 %40, %41
  %42 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call35 = call i32 @gimp_drawable_bytes(%struct._GimpDrawable* %42)
  %call36 = call %struct._TileManager* @tile_manager_new(i32 %sub, i32 %sub34, i32 %call35)
  %43 = load %struct._GimpMaskUndo*, %struct._GimpMaskUndo** %mask_undo, align 8
  %tiles = getelementptr inbounds %struct._GimpMaskUndo, %struct._GimpMaskUndo* %43, i32 0, i32 1
  store %struct._TileManager* %call36, %struct._TileManager** %tiles, align 8
  %44 = load i32, i32* %x1, align 4
  %45 = load %struct._GimpMaskUndo*, %struct._GimpMaskUndo** %mask_undo, align 8
  %x = getelementptr inbounds %struct._GimpMaskUndo, %struct._GimpMaskUndo* %45, i32 0, i32 2
  store i32 %44, i32* %x, align 4
  %46 = load i32, i32* %y1, align 4
  %47 = load %struct._GimpMaskUndo*, %struct._GimpMaskUndo** %mask_undo, align 8
  %y = getelementptr inbounds %struct._GimpMaskUndo, %struct._GimpMaskUndo* %47, i32 0, i32 3
  store i32 %46, i32* %y, align 4
  %48 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call37 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %48)
  %49 = load i32, i32* %x1, align 4
  %50 = load i32, i32* %y1, align 4
  %51 = load i32, i32* %x2, align 4
  %52 = load i32, i32* %x1, align 4
  %sub38 = sub nsw i32 %51, %52
  %53 = load i32, i32* %y2, align 4
  %54 = load i32, i32* %y1, align 4
  %sub39 = sub nsw i32 %53, %54
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %call37, i32 %49, i32 %50, i32 %sub38, i32 %sub39, i32 0)
  %55 = load %struct._GimpMaskUndo*, %struct._GimpMaskUndo** %mask_undo, align 8
  %tiles40 = getelementptr inbounds %struct._GimpMaskUndo, %struct._GimpMaskUndo* %55, i32 0, i32 1
  %56 = load %struct._TileManager*, %struct._TileManager** %tiles40, align 8
  %57 = load i32, i32* %x2, align 4
  %58 = load i32, i32* %x1, align 4
  %sub41 = sub nsw i32 %57, %58
  %59 = load i32, i32* %y2, align 4
  %60 = load i32, i32* %y1, align 4
  %sub42 = sub nsw i32 %59, %60
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %56, i32 0, i32 0, i32 %sub41, i32 %sub42, i32 1)
  call void @copy_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.28, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @gimp_mask_undo_get_memsize(%struct._GimpObject* %object, i64* %gui_size) #3 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %gui_size.addr = alloca i64*, align 8
  %mask_undo = alloca %struct._GimpMaskUndo*, align 8
  %memsize = alloca i64, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i64* %gui_size, i64** %gui_size.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_mask_undo_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpMaskUndo*
  store %struct._GimpMaskUndo* %2, %struct._GimpMaskUndo** %mask_undo, align 8
  store i64 0, i64* %memsize, align 8
  %3 = load %struct._GimpMaskUndo*, %struct._GimpMaskUndo** %mask_undo, align 8
  %tiles = getelementptr inbounds %struct._GimpMaskUndo, %struct._GimpMaskUndo* %3, i32 0, i32 1
  %4 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %call2 = call i64 @tile_manager_get_memsize(%struct._TileManager* %4, i32 0)
  %5 = load i64, i64* %memsize, align 8
  %add = add nsw i64 %5, %call2
  store i64 %add, i64* %memsize, align 8
  %6 = load i64, i64* %memsize, align 8
  %7 = load i8*, i8** @gimp_mask_undo_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call3 = call i64 @gimp_object_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 %call3)
  %9 = bitcast %struct._GTypeClass* %call4 to %struct._GimpObjectClass*
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %9, i32 0, i32 3
  %10 = load i64 (%struct._GimpObject*, i64*)*, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %11 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %12 = load i64*, i64** %gui_size.addr, align 8
  %call5 = call i64 %10(%struct._GimpObject* %11, i64* %12)
  %add6 = add nsw i64 %6, %call5
  ret i64 %add6
}

; Function Attrs: nounwind uwtable
define internal void @gimp_mask_undo_pop(%struct._GimpUndo* %undo, i32 %undo_mode, %struct._GimpUndoAccumulator* %accum) #3 {
entry:
  %undo.addr = alloca %struct._GimpUndo*, align 8
  %undo_mode.addr = alloca i32, align 4
  %accum.addr = alloca %struct._GimpUndoAccumulator*, align 8
  %mask_undo = alloca %struct._GimpMaskUndo*, align 8
  %channel = alloca %struct._GimpChannel*, align 8
  %new_tiles = alloca %struct._TileManager*, align 8
  %srcPR = alloca %struct._PixelRegion, align 8
  %destPR = alloca %struct._PixelRegion, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct._GimpUndo* %undo, %struct._GimpUndo** %undo.addr, align 8
  store i32 %undo_mode, i32* %undo_mode.addr, align 4
  store %struct._GimpUndoAccumulator* %accum, %struct._GimpUndoAccumulator** %accum.addr, align 8
  %0 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %1 = bitcast %struct._GimpUndo* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_mask_undo_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpMaskUndo*
  store %struct._GimpMaskUndo* %2, %struct._GimpMaskUndo** %mask_undo, align 8
  %3 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %4 = bitcast %struct._GimpUndo* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_item_undo_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpItemUndo*
  %item = getelementptr inbounds %struct._GimpItemUndo, %struct._GimpItemUndo* %5, i32 0, i32 1
  %6 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %7 = bitcast %struct._GimpItem* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_channel_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpChannel*
  store %struct._GimpChannel* %8, %struct._GimpChannel** %channel, align 8
  store i32 0, i32* %width, align 4
  store i32 0, i32* %height, align 4
  %9 = load i8*, i8** @gimp_mask_undo_parent_class, align 8
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
  %16 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %call8 = call i32 @gimp_channel_bounds(%struct._GimpChannel* %16, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %x2, align 4
  %18 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %17, %18
  %19 = load i32, i32* %y2, align 4
  %20 = load i32, i32* %y1, align 4
  %sub9 = sub nsw i32 %19, %20
  %call10 = call %struct._TileManager* @tile_manager_new(i32 %sub, i32 %sub9, i32 1)
  store %struct._TileManager* %call10, %struct._TileManager** %new_tiles, align 8
  %21 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %22 = bitcast %struct._GimpChannel* %21 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_drawable_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call11)
  %23 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpDrawable*
  %call13 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %23)
  %24 = load i32, i32* %x1, align 4
  %25 = load i32, i32* %y1, align 4
  %26 = load i32, i32* %x2, align 4
  %27 = load i32, i32* %x1, align 4
  %sub14 = sub nsw i32 %26, %27
  %28 = load i32, i32* %y2, align 4
  %29 = load i32, i32* %y1, align 4
  %sub15 = sub nsw i32 %28, %29
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %call13, i32 %24, i32 %25, i32 %sub14, i32 %sub15, i32 0)
  %30 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  %31 = load i32, i32* %x2, align 4
  %32 = load i32, i32* %x1, align 4
  %sub16 = sub nsw i32 %31, %32
  %33 = load i32, i32* %y2, align 4
  %34 = load i32, i32* %y1, align 4
  %sub17 = sub nsw i32 %33, %34
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %30, i32 0, i32 0, i32 %sub16, i32 %sub17, i32 1)
  call void @copy_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR)
  %35 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %36 = bitcast %struct._GimpChannel* %35 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_drawable_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call18)
  %37 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpDrawable*
  %call20 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %37)
  %38 = load i32, i32* %x1, align 4
  %39 = load i32, i32* %y1, align 4
  %40 = load i32, i32* %x2, align 4
  %41 = load i32, i32* %x1, align 4
  %sub21 = sub nsw i32 %40, %41
  %42 = load i32, i32* %y2, align 4
  %43 = load i32, i32* %y1, align 4
  %sub22 = sub nsw i32 %42, %43
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %call20, i32 %38, i32 %39, i32 %sub21, i32 %sub22, i32 1)
  call void @clear_region(%struct._PixelRegion* %srcPR)
  br label %if.end

if.else:                                          ; preds = %entry
  store %struct._TileManager* null, %struct._TileManager** %new_tiles, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %44 = load %struct._GimpMaskUndo*, %struct._GimpMaskUndo** %mask_undo, align 8
  %tiles = getelementptr inbounds %struct._GimpMaskUndo, %struct._GimpMaskUndo* %44, i32 0, i32 1
  %45 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %tobool23 = icmp ne %struct._TileManager* %45, null
  br i1 %tobool23, label %if.then.24, label %if.end.34

if.then.24:                                       ; preds = %if.end
  %46 = load %struct._GimpMaskUndo*, %struct._GimpMaskUndo** %mask_undo, align 8
  %tiles25 = getelementptr inbounds %struct._GimpMaskUndo, %struct._GimpMaskUndo* %46, i32 0, i32 1
  %47 = load %struct._TileManager*, %struct._TileManager** %tiles25, align 8
  %call26 = call i32 @tile_manager_width(%struct._TileManager* %47)
  store i32 %call26, i32* %width, align 4
  %48 = load %struct._GimpMaskUndo*, %struct._GimpMaskUndo** %mask_undo, align 8
  %tiles27 = getelementptr inbounds %struct._GimpMaskUndo, %struct._GimpMaskUndo* %48, i32 0, i32 1
  %49 = load %struct._TileManager*, %struct._TileManager** %tiles27, align 8
  %call28 = call i32 @tile_manager_height(%struct._TileManager* %49)
  store i32 %call28, i32* %height, align 4
  %50 = load %struct._GimpMaskUndo*, %struct._GimpMaskUndo** %mask_undo, align 8
  %tiles29 = getelementptr inbounds %struct._GimpMaskUndo, %struct._GimpMaskUndo* %50, i32 0, i32 1
  %51 = load %struct._TileManager*, %struct._TileManager** %tiles29, align 8
  %52 = load i32, i32* %width, align 4
  %53 = load i32, i32* %height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %51, i32 0, i32 0, i32 %52, i32 %53, i32 0)
  %54 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %55 = bitcast %struct._GimpChannel* %54 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_drawable_get_type() #6
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call30)
  %56 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpDrawable*
  %call32 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %56)
  %57 = load %struct._GimpMaskUndo*, %struct._GimpMaskUndo** %mask_undo, align 8
  %x = getelementptr inbounds %struct._GimpMaskUndo, %struct._GimpMaskUndo* %57, i32 0, i32 2
  %58 = load i32, i32* %x, align 4
  %59 = load %struct._GimpMaskUndo*, %struct._GimpMaskUndo** %mask_undo, align 8
  %y = getelementptr inbounds %struct._GimpMaskUndo, %struct._GimpMaskUndo* %59, i32 0, i32 3
  %60 = load i32, i32* %y, align 4
  %61 = load i32, i32* %width, align 4
  %62 = load i32, i32* %height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %call32, i32 %58, i32 %60, i32 %61, i32 %62, i32 1)
  call void @copy_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR)
  %63 = load %struct._GimpMaskUndo*, %struct._GimpMaskUndo** %mask_undo, align 8
  %tiles33 = getelementptr inbounds %struct._GimpMaskUndo, %struct._GimpMaskUndo* %63, i32 0, i32 1
  %64 = load %struct._TileManager*, %struct._TileManager** %tiles33, align 8
  call void @tile_manager_unref(%struct._TileManager* %64)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.24, %if.end
  %65 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %66 = bitcast %struct._GimpChannel* %65 to %struct._GTypeInstance*
  %call35 = call i64 @gimp_drawable_get_type() #6
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call35)
  %67 = bitcast %struct._GTypeInstance* %call36 to %struct._GimpDrawable*
  call void @gimp_drawable_invalidate_boundary(%struct._GimpDrawable* %67)
  %68 = load %struct._GimpMaskUndo*, %struct._GimpMaskUndo** %mask_undo, align 8
  %tiles37 = getelementptr inbounds %struct._GimpMaskUndo, %struct._GimpMaskUndo* %68, i32 0, i32 1
  %69 = load %struct._TileManager*, %struct._TileManager** %tiles37, align 8
  %tobool38 = icmp ne %struct._TileManager* %69, null
  br i1 %tobool38, label %if.then.39, label %if.else.49

if.then.39:                                       ; preds = %if.end.34
  %70 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %empty = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %70, i32 0, i32 11
  store i32 0, i32* %empty, align 4
  %71 = load %struct._GimpMaskUndo*, %struct._GimpMaskUndo** %mask_undo, align 8
  %x40 = getelementptr inbounds %struct._GimpMaskUndo, %struct._GimpMaskUndo* %71, i32 0, i32 2
  %72 = load i32, i32* %x40, align 4
  %73 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %x141 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %73, i32 0, i32 13
  store i32 %72, i32* %x141, align 4
  %74 = load %struct._GimpMaskUndo*, %struct._GimpMaskUndo** %mask_undo, align 8
  %y42 = getelementptr inbounds %struct._GimpMaskUndo, %struct._GimpMaskUndo* %74, i32 0, i32 3
  %75 = load i32, i32* %y42, align 4
  %76 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %y143 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %76, i32 0, i32 14
  store i32 %75, i32* %y143, align 4
  %77 = load %struct._GimpMaskUndo*, %struct._GimpMaskUndo** %mask_undo, align 8
  %x44 = getelementptr inbounds %struct._GimpMaskUndo, %struct._GimpMaskUndo* %77, i32 0, i32 2
  %78 = load i32, i32* %x44, align 4
  %79 = load i32, i32* %width, align 4
  %add = add nsw i32 %78, %79
  %80 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %x245 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %80, i32 0, i32 15
  store i32 %add, i32* %x245, align 4
  %81 = load %struct._GimpMaskUndo*, %struct._GimpMaskUndo** %mask_undo, align 8
  %y46 = getelementptr inbounds %struct._GimpMaskUndo, %struct._GimpMaskUndo* %81, i32 0, i32 3
  %82 = load i32, i32* %y46, align 4
  %83 = load i32, i32* %height, align 4
  %add47 = add nsw i32 %82, %83
  %84 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %y248 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %84, i32 0, i32 16
  store i32 %add47, i32* %y248, align 4
  br label %if.end.61

if.else.49:                                       ; preds = %if.end.34
  %85 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %empty50 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %85, i32 0, i32 11
  store i32 1, i32* %empty50, align 4
  %86 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %x151 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %86, i32 0, i32 13
  store i32 0, i32* %x151, align 4
  %87 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %y152 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %87, i32 0, i32 14
  store i32 0, i32* %y152, align 4
  %88 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %89 = bitcast %struct._GimpChannel* %88 to %struct._GTypeInstance*
  %call53 = call i64 @gimp_item_get_type() #6
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %89, i64 %call53)
  %90 = bitcast %struct._GTypeInstance* %call54 to %struct._GimpItem*
  %call55 = call i32 @gimp_item_get_width(%struct._GimpItem* %90)
  %91 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %x256 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %91, i32 0, i32 15
  store i32 %call55, i32* %x256, align 4
  %92 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %93 = bitcast %struct._GimpChannel* %92 to %struct._GTypeInstance*
  %call57 = call i64 @gimp_item_get_type() #6
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %93, i64 %call57)
  %94 = bitcast %struct._GTypeInstance* %call58 to %struct._GimpItem*
  %call59 = call i32 @gimp_item_get_height(%struct._GimpItem* %94)
  %95 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %y260 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %95, i32 0, i32 16
  store i32 %call59, i32* %y260, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.49, %if.then.39
  %96 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %bounds_known = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %96, i32 0, i32 12
  store i32 1, i32* %bounds_known, align 4
  %97 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  %98 = load %struct._GimpMaskUndo*, %struct._GimpMaskUndo** %mask_undo, align 8
  %tiles62 = getelementptr inbounds %struct._GimpMaskUndo, %struct._GimpMaskUndo* %98, i32 0, i32 1
  store %struct._TileManager* %97, %struct._TileManager** %tiles62, align 8
  %99 = load i32, i32* %x1, align 4
  %100 = load %struct._GimpMaskUndo*, %struct._GimpMaskUndo** %mask_undo, align 8
  %x63 = getelementptr inbounds %struct._GimpMaskUndo, %struct._GimpMaskUndo* %100, i32 0, i32 2
  store i32 %99, i32* %x63, align 4
  %101 = load i32, i32* %y1, align 4
  %102 = load %struct._GimpMaskUndo*, %struct._GimpMaskUndo** %mask_undo, align 8
  %y64 = getelementptr inbounds %struct._GimpMaskUndo, %struct._GimpMaskUndo* %102, i32 0, i32 3
  store i32 %101, i32* %y64, align 4
  %103 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %104 = bitcast %struct._GimpChannel* %103 to %struct._GTypeInstance*
  %call65 = call i64 @gimp_drawable_get_type() #6
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %104, i64 %call65)
  %105 = bitcast %struct._GTypeInstance* %call66 to %struct._GimpDrawable*
  %106 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %107 = bitcast %struct._GimpChannel* %106 to %struct._GTypeInstance*
  %call67 = call i64 @gimp_item_get_type() #6
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %107, i64 %call67)
  %108 = bitcast %struct._GTypeInstance* %call68 to %struct._GimpItem*
  %call69 = call i32 @gimp_item_get_width(%struct._GimpItem* %108)
  %109 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %110 = bitcast %struct._GimpChannel* %109 to %struct._GTypeInstance*
  %call70 = call i64 @gimp_item_get_type() #6
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %110, i64 %call70)
  %111 = bitcast %struct._GTypeInstance* %call71 to %struct._GimpItem*
  %call72 = call i32 @gimp_item_get_height(%struct._GimpItem* %111)
  call void @gimp_drawable_update(%struct._GimpDrawable* %105, i32 0, i32 0, i32 %call69, i32 %call72)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_mask_undo_free(%struct._GimpUndo* %undo, i32 %undo_mode) #3 {
entry:
  %undo.addr = alloca %struct._GimpUndo*, align 8
  %undo_mode.addr = alloca i32, align 4
  %mask_undo = alloca %struct._GimpMaskUndo*, align 8
  store %struct._GimpUndo* %undo, %struct._GimpUndo** %undo.addr, align 8
  store i32 %undo_mode, i32* %undo_mode.addr, align 4
  %0 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %1 = bitcast %struct._GimpUndo* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_mask_undo_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpMaskUndo*
  store %struct._GimpMaskUndo* %2, %struct._GimpMaskUndo** %mask_undo, align 8
  %3 = load %struct._GimpMaskUndo*, %struct._GimpMaskUndo** %mask_undo, align 8
  %tiles = getelementptr inbounds %struct._GimpMaskUndo, %struct._GimpMaskUndo* %3, i32 0, i32 1
  %4 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %tobool = icmp ne %struct._TileManager* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpMaskUndo*, %struct._GimpMaskUndo** %mask_undo, align 8
  %tiles2 = getelementptr inbounds %struct._GimpMaskUndo, %struct._GimpMaskUndo* %5, i32 0, i32 1
  %6 = load %struct._TileManager*, %struct._TileManager** %tiles2, align 8
  call void @tile_manager_unref(%struct._TileManager* %6)
  %7 = load %struct._GimpMaskUndo*, %struct._GimpMaskUndo** %mask_undo, align 8
  %tiles3 = getelementptr inbounds %struct._GimpMaskUndo, %struct._GimpMaskUndo* %7, i32 0, i32 1
  store %struct._TileManager* null, %struct._TileManager** %tiles3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** @gimp_mask_undo_parent_class, align 8
  %9 = bitcast i8* %8 to %struct._GTypeClass*
  %call4 = call i64 @gimp_undo_get_type() #6
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 %call4)
  %10 = bitcast %struct._GTypeClass* %call5 to %struct._GimpUndoClass*
  %free = getelementptr inbounds %struct._GimpUndoClass, %struct._GimpUndoClass* %10, i32 0, i32 2
  %11 = load void (%struct._GimpUndo*, i32)*, void (%struct._GimpUndo*, i32)** %free, align 8
  %12 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %13 = load i32, i32* %undo_mode.addr, align 4
  call void %11(%struct._GimpUndo* %12, i32 %13)
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

declare i32 @gimp_channel_bounds(%struct._GimpChannel*, i32*, i32*, i32*, i32*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #2

declare %struct._TileManager* @tile_manager_new(i32, i32, i32) #1

declare i32 @gimp_drawable_bytes(%struct._GimpDrawable*) #1

declare void @pixel_region_init(%struct._PixelRegion*, %struct._TileManager*, i32, i32, i32, i32, i32) #1

declare %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable*) #1

declare void @copy_region(%struct._PixelRegion*, %struct._PixelRegion*) #1

declare i64 @tile_manager_get_memsize(%struct._TileManager*, i32) #1

declare void @clear_region(%struct._PixelRegion*) #1

declare i32 @tile_manager_width(%struct._TileManager*) #1

declare i32 @tile_manager_height(%struct._TileManager*) #1

declare void @tile_manager_unref(%struct._TileManager*) #1

declare void @gimp_drawable_invalidate_boundary(%struct._GimpDrawable*) #1

declare i32 @gimp_item_get_width(%struct._GimpItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare i32 @gimp_item_get_height(%struct._GimpItem*) #1

declare void @gimp_drawable_update(%struct._GimpDrawable*, i32, i32, i32, i32) #1

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
