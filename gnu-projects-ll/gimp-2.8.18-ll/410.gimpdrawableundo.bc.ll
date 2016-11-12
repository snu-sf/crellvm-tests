; ModuleID = './app/core/gimpdrawableundo.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpDrawableUndoClass = type { %struct._GimpItemUndoClass }
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
%struct._GimpDrawableUndo = type { %struct._GimpItemUndo, %struct._TileManager*, i32, i32, i32, i32, i32, %struct._TileManager*, i32, double }
%struct._GimpItemUndo = type { %struct._GimpUndo, %struct._GimpItem* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._TileManager = type opaque
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpDrawablePrivate = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_drawable_undo_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"GimpDrawableUndo\00", align 1
@gimp_drawable_undo_parent_class = internal global i8* null, align 8
@GimpDrawableUndo_private_offset = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"tiles\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"sparse\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"gimpdrawableundo.c\00", align 1
@__func__.gimp_drawable_undo_constructed = private unnamed_addr constant [31 x i8] c"gimp_drawable_undo_constructed\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"GIMP_IS_DRAWABLE (GIMP_ITEM_UNDO (object)->item)\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"drawable_undo->tiles != NULL\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"property\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_drawable_undo_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_drawable_undo_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_drawable_undo_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_item_undo_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 296, void (i8*, i8*)* bitcast (void (i8*)* @gimp_drawable_undo_class_intern_init to void (i8*, i8*)*), i32 136, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpDrawableUndo*)* @gimp_drawable_undo_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_drawable_undo_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_drawable_undo_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_undo_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_undo_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_drawable_undo_parent_class, align 8
  %1 = load i32, i32* @GimpDrawableUndo_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpDrawableUndo_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpDrawableUndoClass*
  call void @gimp_drawable_undo_class_init(%struct._GimpDrawableUndoClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_undo_init(%struct._GimpDrawableUndo* %undo) #3 {
entry:
  %undo.addr = alloca %struct._GimpDrawableUndo*, align 8
  store %struct._GimpDrawableUndo* %undo, %struct._GimpDrawableUndo** %undo.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_undo_class_init(%struct._GimpDrawableUndoClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpDrawableUndoClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %gimp_object_class = alloca %struct._GimpObjectClass*, align 8
  %undo_class = alloca %struct._GimpUndoClass*, align 8
  store %struct._GimpDrawableUndoClass* %klass, %struct._GimpDrawableUndoClass** %klass.addr, align 8
  %0 = load %struct._GimpDrawableUndoClass*, %struct._GimpDrawableUndoClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpDrawableUndoClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpDrawableUndoClass*, %struct._GimpDrawableUndoClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpDrawableUndoClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_object_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpObjectClass*
  store %struct._GimpObjectClass* %5, %struct._GimpObjectClass** %gimp_object_class, align 8
  %6 = load %struct._GimpDrawableUndoClass*, %struct._GimpDrawableUndoClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpDrawableUndoClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_undo_get_type() #7
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpUndoClass*
  store %struct._GimpUndoClass* %8, %struct._GimpUndoClass** %undo_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_drawable_undo_constructed, void (%struct._GObject*)** %constructed, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_drawable_undo_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_drawable_undo_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %12 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %gimp_object_class, align 8
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %12, i32 0, i32 3
  store i64 (%struct._GimpObject*, i64*)* @gimp_drawable_undo_get_memsize, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %13 = load %struct._GimpUndoClass*, %struct._GimpUndoClass** %undo_class, align 8
  %pop = getelementptr inbounds %struct._GimpUndoClass, %struct._GimpUndoClass* %13, i32 0, i32 1
  store void (%struct._GimpUndo*, i32, %struct._GimpUndoAccumulator*)* @gimp_drawable_undo_pop, void (%struct._GimpUndo*, i32, %struct._GimpUndoAccumulator*)** %pop, align 8
  %14 = load %struct._GimpUndoClass*, %struct._GimpUndoClass** %undo_class, align 8
  %free = getelementptr inbounds %struct._GimpUndoClass, %struct._GimpUndoClass* %14, i32 0, i32 2
  store void (%struct._GimpUndo*, i32)* @gimp_drawable_undo_free, void (%struct._GimpUndo*, i32)** %free, align 8
  %15 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call i64 @gimp_tile_manager_get_type() #7
  %call6 = call %struct._GParamSpec* @g_param_spec_boxed(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* null, i64 %call5, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %15, i32 1, %struct._GParamSpec* %call6)
  %16 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call7 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* null, i8* null, i32 0, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %16, i32 2, %struct._GParamSpec* %call7)
  %17 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call8 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* null, i32 0, i32 262144, i32 0, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %17, i32 3, %struct._GParamSpec* %call8)
  %18 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call9 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null, i32 0, i32 262144, i32 0, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %18, i32 4, %struct._GParamSpec* %call9)
  %19 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call10 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, i32 0, i32 262144, i32 0, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %19, i32 5, %struct._GParamSpec* %call10)
  %20 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call11 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, i32 0, i32 262144, i32 0, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %20, i32 6, %struct._GParamSpec* %call11)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_undo_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_undo_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %drawable_undo = alloca %struct._GimpDrawableUndo*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_undo_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawableUndo*
  store %struct._GimpDrawableUndo* %2, %struct._GimpDrawableUndo** %drawable_undo, align 8
  %3 = load i8*, i8** @gimp_drawable_undo_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_drawable_undo_parent_class, align 8
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
  %call5 = call i64 @gimp_item_undo_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call5)
  %14 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpItemUndo*
  %item = getelementptr inbounds %struct._GimpItemUndo, %struct._GimpItemUndo* %14, i32 0, i32 1
  %15 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %16 = bitcast %struct._GimpItem* %15 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %16, %struct._GTypeInstance** %__inst, align 8
  %call7 = call i64 @gimp_drawable_get_type() #7
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
  %call14 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %24, i64 %25) #8
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
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0), i32 136, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_drawable_undo_constructed, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i32 0, i32 0)) #9
  unreachable

if.end.20:                                        ; preds = %if.then.18
  br label %do.end

do.end:                                           ; preds = %if.end.20
  br label %do.body.21

do.body.21:                                       ; preds = %do.end
  %28 = load %struct._GimpDrawableUndo*, %struct._GimpDrawableUndo** %drawable_undo, align 8
  %tiles = getelementptr inbounds %struct._GimpDrawableUndo, %struct._GimpDrawableUndo* %28, i32 0, i32 1
  %29 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %cmp22 = icmp ne %struct._TileManager* %29, null
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %do.body.21
  br label %if.end.25

if.else.24:                                       ; preds = %do.body.21
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0), i32 137, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_drawable_undo_constructed, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i32 0, i32 0)) #9
  unreachable

if.end.25:                                        ; preds = %if.then.23
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_undo_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %drawable_undo = alloca %struct._GimpDrawableUndo*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_undo_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawableUndo*
  store %struct._GimpDrawableUndo* %2, %struct._GimpDrawableUndo** %drawable_undo, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.7
    i32 5, label %sw.bb.9
    i32 6, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_dup_boxed(%struct._GValue* %4)
  %5 = bitcast i8* %call2 to %struct._TileManager*
  %6 = load %struct._GimpDrawableUndo*, %struct._GimpDrawableUndo** %drawable_undo, align 8
  %tiles = getelementptr inbounds %struct._GimpDrawableUndo, %struct._GimpDrawableUndo* %6, i32 0, i32 1
  store %struct._TileManager* %5, %struct._TileManager** %tiles, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i32 @g_value_get_boolean(%struct._GValue* %7)
  %8 = load %struct._GimpDrawableUndo*, %struct._GimpDrawableUndo** %drawable_undo, align 8
  %sparse = getelementptr inbounds %struct._GimpDrawableUndo, %struct._GimpDrawableUndo* %8, i32 0, i32 2
  store i32 %call4, i32* %sparse, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call i32 @g_value_get_int(%struct._GValue* %9)
  %10 = load %struct._GimpDrawableUndo*, %struct._GimpDrawableUndo** %drawable_undo, align 8
  %x = getelementptr inbounds %struct._GimpDrawableUndo, %struct._GimpDrawableUndo* %10, i32 0, i32 3
  store i32 %call6, i32* %x, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %11 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call8 = call i32 @g_value_get_int(%struct._GValue* %11)
  %12 = load %struct._GimpDrawableUndo*, %struct._GimpDrawableUndo** %drawable_undo, align 8
  %y = getelementptr inbounds %struct._GimpDrawableUndo, %struct._GimpDrawableUndo* %12, i32 0, i32 4
  store i32 %call8, i32* %y, align 4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call10 = call i32 @g_value_get_int(%struct._GValue* %13)
  %14 = load %struct._GimpDrawableUndo*, %struct._GimpDrawableUndo** %drawable_undo, align 8
  %width = getelementptr inbounds %struct._GimpDrawableUndo, %struct._GimpDrawableUndo* %14, i32 0, i32 5
  store i32 %call10, i32* %width, align 4
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %15 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call12 = call i32 @g_value_get_int(%struct._GValue* %15)
  %16 = load %struct._GimpDrawableUndo*, %struct._GimpDrawableUndo** %drawable_undo, align 8
  %height = getelementptr inbounds %struct._GimpDrawableUndo, %struct._GimpDrawableUndo* %16, i32 0, i32 6
  store i32 %call12, i32* %height, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %17 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %17, %struct._GObject** %_glib__object, align 8
  %18 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %18, %struct._GParamSpec** %_glib__pspec, align 8
  %19 = load i32, i32* %property_id.addr, align 4
  store i32 %19, i32* %_glib__property_id, align 4
  %20 = load i32, i32* %_glib__property_id, align 4
  %21 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %21, i32 0, i32 1
  %22 = load i8*, i8** %name, align 8
  %23 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %24 = bitcast %struct._GParamSpec* %23 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %24, i32 0, i32 0
  %25 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %25, i32 0, i32 0
  %26 = load i64, i64* %g_type, align 8
  %call13 = call i8* @g_type_name(i64 %26)
  %27 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %28 = bitcast %struct._GObject* %27 to %struct._GTypeInstance*
  %g_class14 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %28, i32 0, i32 0
  %29 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class14, align 8
  %g_type15 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %29, i32 0, i32 0
  %30 = load i64, i64* %g_type15, align 8
  %call16 = call i8* @g_type_name(i64 %30)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0), i32 170, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 %20, i8* %22, i8* %call13, i8* %call16)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.11, %sw.bb.9, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_undo_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %drawable_undo = alloca %struct._GimpDrawableUndo*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_undo_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawableUndo*
  store %struct._GimpDrawableUndo* %2, %struct._GimpDrawableUndo** %drawable_undo, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.4
    i32 5, label %sw.bb.5
    i32 6, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpDrawableUndo*, %struct._GimpDrawableUndo** %drawable_undo, align 8
  %tiles = getelementptr inbounds %struct._GimpDrawableUndo, %struct._GimpDrawableUndo* %5, i32 0, i32 1
  %6 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %7 = bitcast %struct._TileManager* %6 to i8*
  call void @g_value_set_boxed(%struct._GValue* %4, i8* %7)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %9 = load %struct._GimpDrawableUndo*, %struct._GimpDrawableUndo** %drawable_undo, align 8
  %sparse = getelementptr inbounds %struct._GimpDrawableUndo, %struct._GimpDrawableUndo* %9, i32 0, i32 2
  %10 = load i32, i32* %sparse, align 4
  call void @g_value_set_boolean(%struct._GValue* %8, i32 %10)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %11 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %12 = load %struct._GimpDrawableUndo*, %struct._GimpDrawableUndo** %drawable_undo, align 8
  %x = getelementptr inbounds %struct._GimpDrawableUndo, %struct._GimpDrawableUndo* %12, i32 0, i32 3
  %13 = load i32, i32* %x, align 4
  call void @g_value_set_int(%struct._GValue* %11, i32 %13)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %14 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %15 = load %struct._GimpDrawableUndo*, %struct._GimpDrawableUndo** %drawable_undo, align 8
  %y = getelementptr inbounds %struct._GimpDrawableUndo, %struct._GimpDrawableUndo* %15, i32 0, i32 4
  %16 = load i32, i32* %y, align 4
  call void @g_value_set_int(%struct._GValue* %14, i32 %16)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %17 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %18 = load %struct._GimpDrawableUndo*, %struct._GimpDrawableUndo** %drawable_undo, align 8
  %width = getelementptr inbounds %struct._GimpDrawableUndo, %struct._GimpDrawableUndo* %18, i32 0, i32 5
  %19 = load i32, i32* %width, align 4
  call void @g_value_set_int(%struct._GValue* %17, i32 %19)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %20 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %21 = load %struct._GimpDrawableUndo*, %struct._GimpDrawableUndo** %drawable_undo, align 8
  %height = getelementptr inbounds %struct._GimpDrawableUndo, %struct._GimpDrawableUndo* %21, i32 0, i32 6
  %22 = load i32, i32* %height, align 4
  call void @g_value_set_int(%struct._GValue* %20, i32 %22)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %23 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %23, %struct._GObject** %_glib__object, align 8
  %24 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %24, %struct._GParamSpec** %_glib__pspec, align 8
  %25 = load i32, i32* %property_id.addr, align 4
  store i32 %25, i32* %_glib__property_id, align 4
  %26 = load i32, i32* %_glib__property_id, align 4
  %27 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %27, i32 0, i32 1
  %28 = load i8*, i8** %name, align 8
  %29 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %30 = bitcast %struct._GParamSpec* %29 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %31, i32 0, i32 0
  %32 = load i64, i64* %g_type, align 8
  %call7 = call i8* @g_type_name(i64 %32)
  %33 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %34 = bitcast %struct._GObject* %33 to %struct._GTypeInstance*
  %g_class8 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %34, i32 0, i32 0
  %35 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class8, align 8
  %g_type9 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %35, i32 0, i32 0
  %36 = load i64, i64* %g_type9, align 8
  %call10 = call i8* @g_type_name(i64 %36)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0), i32 205, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 %26, i8* %28, i8* %call7, i8* %call10)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @gimp_drawable_undo_get_memsize(%struct._GimpObject* %object, i64* %gui_size) #3 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %gui_size.addr = alloca i64*, align 8
  %drawable_undo = alloca %struct._GimpDrawableUndo*, align 8
  %memsize = alloca i64, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i64* %gui_size, i64** %gui_size.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_undo_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawableUndo*
  store %struct._GimpDrawableUndo* %2, %struct._GimpDrawableUndo** %drawable_undo, align 8
  store i64 0, i64* %memsize, align 8
  %3 = load %struct._GimpDrawableUndo*, %struct._GimpDrawableUndo** %drawable_undo, align 8
  %tiles = getelementptr inbounds %struct._GimpDrawableUndo, %struct._GimpDrawableUndo* %3, i32 0, i32 1
  %4 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %5 = load %struct._GimpDrawableUndo*, %struct._GimpDrawableUndo** %drawable_undo, align 8
  %sparse = getelementptr inbounds %struct._GimpDrawableUndo, %struct._GimpDrawableUndo* %5, i32 0, i32 2
  %6 = load i32, i32* %sparse, align 4
  %call2 = call i64 @tile_manager_get_memsize(%struct._TileManager* %4, i32 %6)
  %7 = load i64, i64* %memsize, align 8
  %add = add nsw i64 %7, %call2
  store i64 %add, i64* %memsize, align 8
  %8 = load i64, i64* %memsize, align 8
  %9 = load i8*, i8** @gimp_drawable_undo_parent_class, align 8
  %10 = bitcast i8* %9 to %struct._GTypeClass*
  %call3 = call i64 @gimp_object_get_type() #7
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 %call3)
  %11 = bitcast %struct._GTypeClass* %call4 to %struct._GimpObjectClass*
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %11, i32 0, i32 3
  %12 = load i64 (%struct._GimpObject*, i64*)*, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %13 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %14 = load i64*, i64** %gui_size.addr, align 8
  %call5 = call i64 %12(%struct._GimpObject* %13, i64* %14)
  %add6 = add nsw i64 %8, %call5
  ret i64 %add6
}

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_undo_pop(%struct._GimpUndo* %undo, i32 %undo_mode, %struct._GimpUndoAccumulator* %accum) #3 {
entry:
  %undo.addr = alloca %struct._GimpUndo*, align 8
  %undo_mode.addr = alloca i32, align 4
  %accum.addr = alloca %struct._GimpUndoAccumulator*, align 8
  %drawable_undo = alloca %struct._GimpDrawableUndo*, align 8
  store %struct._GimpUndo* %undo, %struct._GimpUndo** %undo.addr, align 8
  store i32 %undo_mode, i32* %undo_mode.addr, align 4
  store %struct._GimpUndoAccumulator* %accum, %struct._GimpUndoAccumulator** %accum.addr, align 8
  %0 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %1 = bitcast %struct._GimpUndo* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_undo_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawableUndo*
  store %struct._GimpDrawableUndo* %2, %struct._GimpDrawableUndo** %drawable_undo, align 8
  %3 = load i8*, i8** @gimp_drawable_undo_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gimp_undo_get_type() #7
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GimpUndoClass*
  %pop = getelementptr inbounds %struct._GimpUndoClass, %struct._GimpUndoClass* %5, i32 0, i32 1
  %6 = load void (%struct._GimpUndo*, i32, %struct._GimpUndoAccumulator*)*, void (%struct._GimpUndo*, i32, %struct._GimpUndoAccumulator*)** %pop, align 8
  %7 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %8 = load i32, i32* %undo_mode.addr, align 4
  %9 = load %struct._GimpUndoAccumulator*, %struct._GimpUndoAccumulator** %accum.addr, align 8
  call void %6(%struct._GimpUndo* %7, i32 %8, %struct._GimpUndoAccumulator* %9)
  %10 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %11 = bitcast %struct._GimpUndo* %10 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_item_undo_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call4)
  %12 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpItemUndo*
  %item = getelementptr inbounds %struct._GimpItemUndo, %struct._GimpItemUndo* %12, i32 0, i32 1
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %14 = bitcast %struct._GimpItem* %13 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_drawable_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call6)
  %15 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpDrawable*
  %16 = load %struct._GimpDrawableUndo*, %struct._GimpDrawableUndo** %drawable_undo, align 8
  %tiles = getelementptr inbounds %struct._GimpDrawableUndo, %struct._GimpDrawableUndo* %16, i32 0, i32 1
  %17 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %18 = load %struct._GimpDrawableUndo*, %struct._GimpDrawableUndo** %drawable_undo, align 8
  %sparse = getelementptr inbounds %struct._GimpDrawableUndo, %struct._GimpDrawableUndo* %18, i32 0, i32 2
  %19 = load i32, i32* %sparse, align 4
  %20 = load %struct._GimpDrawableUndo*, %struct._GimpDrawableUndo** %drawable_undo, align 8
  %x = getelementptr inbounds %struct._GimpDrawableUndo, %struct._GimpDrawableUndo* %20, i32 0, i32 3
  %21 = load i32, i32* %x, align 4
  %22 = load %struct._GimpDrawableUndo*, %struct._GimpDrawableUndo** %drawable_undo, align 8
  %y = getelementptr inbounds %struct._GimpDrawableUndo, %struct._GimpDrawableUndo* %22, i32 0, i32 4
  %23 = load i32, i32* %y, align 4
  %24 = load %struct._GimpDrawableUndo*, %struct._GimpDrawableUndo** %drawable_undo, align 8
  %width = getelementptr inbounds %struct._GimpDrawableUndo, %struct._GimpDrawableUndo* %24, i32 0, i32 5
  %25 = load i32, i32* %width, align 4
  %26 = load %struct._GimpDrawableUndo*, %struct._GimpDrawableUndo** %drawable_undo, align 8
  %height = getelementptr inbounds %struct._GimpDrawableUndo, %struct._GimpDrawableUndo* %26, i32 0, i32 6
  %27 = load i32, i32* %height, align 4
  call void @gimp_drawable_swap_pixels(%struct._GimpDrawable* %15, %struct._TileManager* %17, i32 %19, i32 %21, i32 %23, i32 %25, i32 %27)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_undo_free(%struct._GimpUndo* %undo, i32 %undo_mode) #3 {
entry:
  %undo.addr = alloca %struct._GimpUndo*, align 8
  %undo_mode.addr = alloca i32, align 4
  %drawable_undo = alloca %struct._GimpDrawableUndo*, align 8
  store %struct._GimpUndo* %undo, %struct._GimpUndo** %undo.addr, align 8
  store i32 %undo_mode, i32* %undo_mode.addr, align 4
  %0 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %1 = bitcast %struct._GimpUndo* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_undo_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawableUndo*
  store %struct._GimpDrawableUndo* %2, %struct._GimpDrawableUndo** %drawable_undo, align 8
  %3 = load %struct._GimpDrawableUndo*, %struct._GimpDrawableUndo** %drawable_undo, align 8
  %tiles = getelementptr inbounds %struct._GimpDrawableUndo, %struct._GimpDrawableUndo* %3, i32 0, i32 1
  %4 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %tobool = icmp ne %struct._TileManager* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpDrawableUndo*, %struct._GimpDrawableUndo** %drawable_undo, align 8
  %tiles2 = getelementptr inbounds %struct._GimpDrawableUndo, %struct._GimpDrawableUndo* %5, i32 0, i32 1
  %6 = load %struct._TileManager*, %struct._TileManager** %tiles2, align 8
  call void @tile_manager_unref(%struct._TileManager* %6)
  %7 = load %struct._GimpDrawableUndo*, %struct._GimpDrawableUndo** %drawable_undo, align 8
  %tiles3 = getelementptr inbounds %struct._GimpDrawableUndo, %struct._GimpDrawableUndo* %7, i32 0, i32 1
  store %struct._TileManager* null, %struct._TileManager** %tiles3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpDrawableUndo*, %struct._GimpDrawableUndo** %drawable_undo, align 8
  %src2_tiles = getelementptr inbounds %struct._GimpDrawableUndo, %struct._GimpDrawableUndo* %8, i32 0, i32 7
  %9 = load %struct._TileManager*, %struct._TileManager** %src2_tiles, align 8
  %tobool4 = icmp ne %struct._TileManager* %9, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %10 = load %struct._GimpDrawableUndo*, %struct._GimpDrawableUndo** %drawable_undo, align 8
  %src2_tiles6 = getelementptr inbounds %struct._GimpDrawableUndo, %struct._GimpDrawableUndo* %10, i32 0, i32 7
  %11 = load %struct._TileManager*, %struct._TileManager** %src2_tiles6, align 8
  call void @tile_manager_unref(%struct._TileManager* %11)
  %12 = load %struct._GimpDrawableUndo*, %struct._GimpDrawableUndo** %drawable_undo, align 8
  %src2_tiles7 = getelementptr inbounds %struct._GimpDrawableUndo, %struct._GimpDrawableUndo* %12, i32 0, i32 7
  store %struct._TileManager* null, %struct._TileManager** %src2_tiles7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %13 = load i8*, i8** @gimp_drawable_undo_parent_class, align 8
  %14 = bitcast i8* %13 to %struct._GTypeClass*
  %call9 = call i64 @gimp_undo_get_type() #7
  %call10 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %14, i64 %call9)
  %15 = bitcast %struct._GTypeClass* %call10 to %struct._GimpUndoClass*
  %free = getelementptr inbounds %struct._GimpUndoClass, %struct._GimpUndoClass* %15, i32 0, i32 2
  %16 = load void (%struct._GimpUndo*, i32)*, void (%struct._GimpUndo*, i32)** %free, align 8
  %17 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %18 = load i32, i32* %undo_mode.addr, align 4
  call void %16(%struct._GimpUndo* %17, i32 %18)
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_boxed(i8*, i8*, i8*, i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tile_manager_get_type() #2

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

declare i8* @g_value_dup_boxed(%struct._GValue*) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #3 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare void @g_value_set_boxed(%struct._GValue*, i8*) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare i64 @tile_manager_get_memsize(%struct._TileManager*, i32) #1

declare void @gimp_drawable_swap_pixels(%struct._GimpDrawable*, %struct._TileManager*, i32, i32, i32, i32, i32) #1

declare void @tile_manager_unref(%struct._TileManager*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
