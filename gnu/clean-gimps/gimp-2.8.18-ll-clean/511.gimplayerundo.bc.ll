; ModuleID = './app/core/gimplayerundo.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpLayerUndoClass = type { %struct._GimpItemUndoClass }
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
%struct._GimpLayerUndo = type { %struct._GimpItemUndo, %struct._GimpLayer*, i32, %struct._GimpLayer* }
%struct._GimpItemUndo = type { %struct._GimpUndo, %struct._GimpItem* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpLayerMask = type opaque
%struct._GeglNode = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._BoundSeg = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_layer_undo_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"GimpLayerUndo\00", align 1
@gimp_layer_undo_parent_class = internal global i8* null, align 8
@GimpLayerUndo_private_offset = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"prev-parent\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"prev-position\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"prev-layer\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"gimplayerundo.c\00", align 1
@__func__.gimp_layer_undo_constructed = private unnamed_addr constant [28 x i8] c"gimp_layer_undo_constructed\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"GIMP_IS_LAYER (GIMP_ITEM_UNDO (object)->item)\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"property\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_layer_undo_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_layer_undo_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_layer_undo_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 296, void (i8*, i8*)* bitcast (void (i8*)* @gimp_layer_undo_class_intern_init to void (i8*, i8*)*), i32 104, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpLayerUndo*)* @gimp_layer_undo_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_layer_undo_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_layer_undo_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_undo_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_undo_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_layer_undo_parent_class, align 8
  %1 = load i32, i32* @GimpLayerUndo_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpLayerUndo_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpLayerUndoClass*
  call void @gimp_layer_undo_class_init(%struct._GimpLayerUndoClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_undo_init(%struct._GimpLayerUndo* %undo) #3 {
entry:
  %undo.addr = alloca %struct._GimpLayerUndo*, align 8
  store %struct._GimpLayerUndo* %undo, %struct._GimpLayerUndo** %undo.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_undo_class_init(%struct._GimpLayerUndoClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpLayerUndoClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %gimp_object_class = alloca %struct._GimpObjectClass*, align 8
  %undo_class = alloca %struct._GimpUndoClass*, align 8
  store %struct._GimpLayerUndoClass* %klass, %struct._GimpLayerUndoClass** %klass.addr, align 8
  %0 = load %struct._GimpLayerUndoClass*, %struct._GimpLayerUndoClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpLayerUndoClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpLayerUndoClass*, %struct._GimpLayerUndoClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpLayerUndoClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_object_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpObjectClass*
  store %struct._GimpObjectClass* %5, %struct._GimpObjectClass** %gimp_object_class, align 8
  %6 = load %struct._GimpLayerUndoClass*, %struct._GimpLayerUndoClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpLayerUndoClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_undo_get_type() #7
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpUndoClass*
  store %struct._GimpUndoClass* %8, %struct._GimpUndoClass** %undo_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_layer_undo_constructed, void (%struct._GObject*)** %constructed, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_layer_undo_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_layer_undo_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %12 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %gimp_object_class, align 8
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %12, i32 0, i32 3
  store i64 (%struct._GimpObject*, i64*)* @gimp_layer_undo_get_memsize, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %13 = load %struct._GimpUndoClass*, %struct._GimpUndoClass** %undo_class, align 8
  %pop = getelementptr inbounds %struct._GimpUndoClass, %struct._GimpUndoClass* %13, i32 0, i32 1
  store void (%struct._GimpUndo*, i32, %struct._GimpUndoAccumulator*)* @gimp_layer_undo_pop, void (%struct._GimpUndo*, i32, %struct._GimpUndoAccumulator*)** %pop, align 8
  %14 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call i64 @gimp_layer_get_type() #7
  %call6 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* null, i64 %call5, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %14, i32 1, %struct._GParamSpec* %call6)
  %15 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call7 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* null, i8* null, i32 0, i32 2147483647, i32 0, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %15, i32 2, %struct._GParamSpec* %call7)
  %16 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call8 = call i64 @gimp_layer_get_type() #7
  %call9 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* null, i64 %call8, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %16, i32 3, %struct._GParamSpec* %call9)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_undo_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_undo_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load i8*, i8** @gimp_layer_undo_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %2, i32 0, i32 9
  %3 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** @gimp_layer_undo_parent_class, align 8
  %5 = bitcast i8* %4 to %struct._GTypeClass*
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %5, i64 80)
  %6 = bitcast %struct._GTypeClass* %call1 to %struct._GObjectClass*
  %constructed2 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 9
  %7 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed2, align 8
  %8 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %7(%struct._GObject* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %9 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %10 = bitcast %struct._GObject* %9 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_item_undo_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call3)
  %11 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpItemUndo*
  %item = getelementptr inbounds %struct._GimpItemUndo, %struct._GimpItemUndo* %11, i32 0, i32 1
  %12 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %13 = bitcast %struct._GimpItem* %12 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %13, %struct._GTypeInstance** %__inst, align 8
  %call5 = call i64 @gimp_layer_get_type() #7
  store i64 %call5, i64* %__t, align 8
  %14 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool6 = icmp ne %struct._GTypeInstance* %14, null
  br i1 %tobool6, label %if.else, label %if.then.7

if.then.7:                                        ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.14

if.else:                                          ; preds = %do.body
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %15, i32 0, i32 0
  %16 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool8 = icmp ne %struct._GTypeClass* %16, null
  br i1 %tobool8, label %land.lhs.true, label %if.else.11

land.lhs.true:                                    ; preds = %if.else
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class9 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class9, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %18, i32 0, i32 0
  %19 = load i64, i64* %g_type, align 8
  %20 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %19, %20
  br i1 %cmp, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.13

if.else.11:                                       ; preds = %land.lhs.true, %if.else
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %22 = load i64, i64* %__t, align 8
  %call12 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %21, i64 %22) #8
  store i32 %call12, i32* %__r, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.11, %if.then.10
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.7
  %23 = load i32, i32* %__r, align 4
  store i32 %23, i32* %tmp
  %24 = load i32, i32* %tmp
  %tobool15 = icmp ne i32 %24, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.end.14
  br label %if.end.18

if.else.17:                                       ; preds = %if.end.14
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i32 107, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_layer_undo_constructed, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i32 0, i32 0)) #9
  unreachable

if.end.18:                                        ; preds = %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end.18
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_undo_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %layer_undo = alloca %struct._GimpLayerUndo*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_layer_undo_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpLayerUndo*
  store %struct._GimpLayerUndo* %2, %struct._GimpLayerUndo** %layer_undo, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_get_object(%struct._GValue* %4)
  %5 = bitcast i8* %call2 to %struct._GimpLayer*
  %6 = load %struct._GimpLayerUndo*, %struct._GimpLayerUndo** %layer_undo, align 8
  %prev_parent = getelementptr inbounds %struct._GimpLayerUndo, %struct._GimpLayerUndo* %6, i32 0, i32 1
  store %struct._GimpLayer* %5, %struct._GimpLayer** %prev_parent, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i32 @g_value_get_int(%struct._GValue* %7)
  %8 = load %struct._GimpLayerUndo*, %struct._GimpLayerUndo** %layer_undo, align 8
  %prev_position = getelementptr inbounds %struct._GimpLayerUndo, %struct._GimpLayerUndo* %8, i32 0, i32 2
  store i32 %call4, i32* %prev_position, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call i8* @g_value_get_object(%struct._GValue* %9)
  %10 = bitcast i8* %call6 to %struct._GimpLayer*
  %11 = load %struct._GimpLayerUndo*, %struct._GimpLayerUndo** %layer_undo, align 8
  %prev_layer = getelementptr inbounds %struct._GimpLayerUndo, %struct._GimpLayerUndo* %11, i32 0, i32 3
  store %struct._GimpLayer* %10, %struct._GimpLayer** %prev_layer, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %12, %struct._GObject** %_glib__object, align 8
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %13, %struct._GParamSpec** %_glib__pspec, align 8
  %14 = load i32, i32* %property_id.addr, align 4
  store i32 %14, i32* %_glib__property_id, align 4
  %15 = load i32, i32* %_glib__property_id, align 4
  %16 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %16, i32 0, i32 1
  %17 = load i8*, i8** %name, align 8
  %18 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %19 = bitcast %struct._GParamSpec* %18 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type, align 8
  %call7 = call i8* @g_type_name(i64 %21)
  %22 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %23 = bitcast %struct._GObject* %22 to %struct._GTypeInstance*
  %g_class8 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %23, i32 0, i32 0
  %24 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class8, align 8
  %g_type9 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %24, i32 0, i32 0
  %25 = load i64, i64* %g_type9, align 8
  %call10 = call i8* @g_type_name(i64 %25)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i32 131, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32 %15, i8* %17, i8* %call7, i8* %call10)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.5, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_undo_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %layer_undo = alloca %struct._GimpLayerUndo*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_layer_undo_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpLayerUndo*
  store %struct._GimpLayerUndo* %2, %struct._GimpLayerUndo** %layer_undo, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpLayerUndo*, %struct._GimpLayerUndo** %layer_undo, align 8
  %prev_parent = getelementptr inbounds %struct._GimpLayerUndo, %struct._GimpLayerUndo* %5, i32 0, i32 1
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %prev_parent, align 8
  %7 = bitcast %struct._GimpLayer* %6 to i8*
  call void @g_value_set_object(%struct._GValue* %4, i8* %7)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %9 = load %struct._GimpLayerUndo*, %struct._GimpLayerUndo** %layer_undo, align 8
  %prev_position = getelementptr inbounds %struct._GimpLayerUndo, %struct._GimpLayerUndo* %9, i32 0, i32 2
  %10 = load i32, i32* %prev_position, align 4
  call void @g_value_set_int(%struct._GValue* %8, i32 %10)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %11 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %12 = load %struct._GimpLayerUndo*, %struct._GimpLayerUndo** %layer_undo, align 8
  %prev_layer = getelementptr inbounds %struct._GimpLayerUndo, %struct._GimpLayerUndo* %12, i32 0, i32 3
  %13 = load %struct._GimpLayer*, %struct._GimpLayer** %prev_layer, align 8
  %14 = bitcast %struct._GimpLayer* %13 to i8*
  call void @g_value_set_object(%struct._GValue* %11, i8* %14)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %15 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %15, %struct._GObject** %_glib__object, align 8
  %16 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %16, %struct._GParamSpec** %_glib__pspec, align 8
  %17 = load i32, i32* %property_id.addr, align 4
  store i32 %17, i32* %_glib__property_id, align 4
  %18 = load i32, i32* %_glib__property_id, align 4
  %19 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %19, i32 0, i32 1
  %20 = load i8*, i8** %name, align 8
  %21 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %22 = bitcast %struct._GParamSpec* %21 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type, align 8
  %call4 = call i8* @g_type_name(i64 %24)
  %25 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %26 = bitcast %struct._GObject* %25 to %struct._GTypeInstance*
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %26, i32 0, i32 0
  %27 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type6 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %27, i32 0, i32 0
  %28 = load i64, i64* %g_type6, align 8
  %call7 = call i8* @g_type_name(i64 %28)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i32 157, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32 %18, i8* %20, i8* %call4, i8* %call7)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @gimp_layer_undo_get_memsize(%struct._GimpObject* %object, i64* %gui_size) #3 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %gui_size.addr = alloca i64*, align 8
  %item_undo = alloca %struct._GimpItemUndo*, align 8
  %memsize = alloca i64, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i64* %gui_size, i64** %gui_size.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_undo_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpItemUndo*
  store %struct._GimpItemUndo* %2, %struct._GimpItemUndo** %item_undo, align 8
  store i64 0, i64* %memsize, align 8
  %3 = load %struct._GimpItemUndo*, %struct._GimpItemUndo** %item_undo, align 8
  %item = getelementptr inbounds %struct._GimpItemUndo, %struct._GimpItemUndo* %3, i32 0, i32 1
  %4 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call2 = call i32 @gimp_item_is_attached(%struct._GimpItem* %4)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpItemUndo*, %struct._GimpItemUndo** %item_undo, align 8
  %item3 = getelementptr inbounds %struct._GimpItemUndo, %struct._GimpItemUndo* %5, i32 0, i32 1
  %6 = load %struct._GimpItem*, %struct._GimpItem** %item3, align 8
  %7 = bitcast %struct._GimpItem* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_object_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpObject*
  %9 = load i64*, i64** %gui_size.addr, align 8
  %call6 = call i64 @gimp_object_get_memsize(%struct._GimpObject* %8, i64* %9)
  %10 = load i64, i64* %memsize, align 8
  %add = add nsw i64 %10, %call6
  store i64 %add, i64* %memsize, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i64, i64* %memsize, align 8
  %12 = load i8*, i8** @gimp_layer_undo_parent_class, align 8
  %13 = bitcast i8* %12 to %struct._GTypeClass*
  %call7 = call i64 @gimp_object_get_type() #7
  %call8 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %13, i64 %call7)
  %14 = bitcast %struct._GTypeClass* %call8 to %struct._GimpObjectClass*
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %14, i32 0, i32 3
  %15 = load i64 (%struct._GimpObject*, i64*)*, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %16 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %17 = load i64*, i64** %gui_size.addr, align 8
  %call9 = call i64 %15(%struct._GimpObject* %16, i64* %17)
  %add10 = add nsw i64 %11, %call9
  ret i64 %add10
}

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_undo_pop(%struct._GimpUndo* %undo, i32 %undo_mode, %struct._GimpUndoAccumulator* %accum) #3 {
entry:
  %undo.addr = alloca %struct._GimpUndo*, align 8
  %undo_mode.addr = alloca i32, align 4
  %accum.addr = alloca %struct._GimpUndoAccumulator*, align 8
  %layer_undo = alloca %struct._GimpLayerUndo*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  store %struct._GimpUndo* %undo, %struct._GimpUndo** %undo.addr, align 8
  store i32 %undo_mode, i32* %undo_mode.addr, align 4
  store %struct._GimpUndoAccumulator* %accum, %struct._GimpUndoAccumulator** %accum.addr, align 8
  %0 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %1 = bitcast %struct._GimpUndo* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_layer_undo_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpLayerUndo*
  store %struct._GimpLayerUndo* %2, %struct._GimpLayerUndo** %layer_undo, align 8
  %3 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %4 = bitcast %struct._GimpUndo* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_item_undo_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpItemUndo*
  %item = getelementptr inbounds %struct._GimpItemUndo, %struct._GimpItemUndo* %5, i32 0, i32 1
  %6 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %7 = bitcast %struct._GimpItem* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_layer_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpLayer*
  store %struct._GimpLayer* %8, %struct._GimpLayer** %layer, align 8
  %9 = load i8*, i8** @gimp_layer_undo_parent_class, align 8
  %10 = bitcast i8* %9 to %struct._GTypeClass*
  %call6 = call i64 @gimp_undo_get_type() #7
  %call7 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 %call6)
  %11 = bitcast %struct._GTypeClass* %call7 to %struct._GimpUndoClass*
  %pop = getelementptr inbounds %struct._GimpUndoClass, %struct._GimpUndoClass* %11, i32 0, i32 1
  %12 = load void (%struct._GimpUndo*, i32, %struct._GimpUndoAccumulator*)*, void (%struct._GimpUndo*, i32, %struct._GimpUndoAccumulator*)** %pop, align 8
  %13 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %14 = load i32, i32* %undo_mode.addr, align 4
  %15 = load %struct._GimpUndoAccumulator*, %struct._GimpUndoAccumulator** %accum.addr, align 8
  call void %12(%struct._GimpUndo* %13, i32 %14, %struct._GimpUndoAccumulator* %15)
  %16 = load i32, i32* %undo_mode.addr, align 4
  %cmp = icmp eq i32 %16, 0
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %17 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %undo_type = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %17, i32 0, i32 3
  %18 = load i32, i32* %undo_type, align 4
  %cmp8 = icmp eq i32 %18, 53
  br i1 %cmp8, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %19 = load i32, i32* %undo_mode.addr, align 4
  %cmp9 = icmp eq i32 %19, 1
  br i1 %cmp9, label %land.lhs.true.10, label %if.else

land.lhs.true.10:                                 ; preds = %lor.lhs.false
  %20 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %undo_type11 = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %20, i32 0, i32 3
  %21 = load i32, i32* %undo_type11, align 4
  %cmp12 = icmp eq i32 %21, 54
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.10, %land.lhs.true
  %22 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call13 = call %struct._GimpLayer* @gimp_layer_get_parent(%struct._GimpLayer* %22)
  %23 = load %struct._GimpLayerUndo*, %struct._GimpLayerUndo** %layer_undo, align 8
  %prev_parent = getelementptr inbounds %struct._GimpLayerUndo, %struct._GimpLayerUndo* %23, i32 0, i32 1
  store %struct._GimpLayer* %call13, %struct._GimpLayer** %prev_parent, align 8
  %24 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %25 = bitcast %struct._GimpLayer* %24 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_item_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call14)
  %26 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpItem*
  %call16 = call i32 @gimp_item_get_index(%struct._GimpItem* %26)
  %27 = load %struct._GimpLayerUndo*, %struct._GimpLayerUndo** %layer_undo, align 8
  %prev_position = getelementptr inbounds %struct._GimpLayerUndo, %struct._GimpLayerUndo* %27, i32 0, i32 2
  store i32 %call16, i32* %prev_position, align 4
  %28 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %image = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %28, i32 0, i32 1
  %29 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %30 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %31 = load %struct._GimpLayerUndo*, %struct._GimpLayerUndo** %layer_undo, align 8
  %prev_layer = getelementptr inbounds %struct._GimpLayerUndo, %struct._GimpLayerUndo* %31, i32 0, i32 3
  %32 = load %struct._GimpLayer*, %struct._GimpLayer** %prev_layer, align 8
  call void @gimp_image_remove_layer(%struct._GimpImage* %29, %struct._GimpLayer* %30, i32 0, %struct._GimpLayer* %32)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.10, %lor.lhs.false
  %33 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %image17 = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %33, i32 0, i32 1
  %34 = load %struct._GimpImage*, %struct._GimpImage** %image17, align 8
  %call18 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %34)
  %35 = load %struct._GimpLayerUndo*, %struct._GimpLayerUndo** %layer_undo, align 8
  %prev_layer19 = getelementptr inbounds %struct._GimpLayerUndo, %struct._GimpLayerUndo* %35, i32 0, i32 3
  store %struct._GimpLayer* %call18, %struct._GimpLayer** %prev_layer19, align 8
  %36 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %image20 = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %36, i32 0, i32 1
  %37 = load %struct._GimpImage*, %struct._GimpImage** %image20, align 8
  %38 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %39 = load %struct._GimpLayerUndo*, %struct._GimpLayerUndo** %layer_undo, align 8
  %prev_parent21 = getelementptr inbounds %struct._GimpLayerUndo, %struct._GimpLayerUndo* %39, i32 0, i32 1
  %40 = load %struct._GimpLayer*, %struct._GimpLayer** %prev_parent21, align 8
  %41 = load %struct._GimpLayerUndo*, %struct._GimpLayerUndo** %layer_undo, align 8
  %prev_position22 = getelementptr inbounds %struct._GimpLayerUndo, %struct._GimpLayerUndo* %41, i32 0, i32 2
  %42 = load i32, i32* %prev_position22, align 4
  %call23 = call i32 @gimp_image_add_layer(%struct._GimpImage* %37, %struct._GimpLayer* %38, %struct._GimpLayer* %40, i32 %42, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_get_type() #2

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

declare i8* @g_value_get_object(%struct._GValue*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
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

declare void @g_value_set_object(%struct._GValue*, i8*) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare i32 @gimp_item_is_attached(%struct._GimpItem*) #1

declare i64 @gimp_object_get_memsize(%struct._GimpObject*, i64*) #1

declare %struct._GimpLayer* @gimp_layer_get_parent(%struct._GimpLayer*) #1

declare i32 @gimp_item_get_index(%struct._GimpItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare void @gimp_image_remove_layer(%struct._GimpImage*, %struct._GimpLayer*, i32, %struct._GimpLayer*) #1

declare %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage*) #1

declare i32 @gimp_image_add_layer(%struct._GimpImage*, %struct._GimpLayer*, %struct._GimpLayer*, i32, i32) #1

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
