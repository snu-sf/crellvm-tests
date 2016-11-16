; ModuleID = './app/core/gimpitempropundo.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpItemPropUndoClass = type { %struct._GimpItemUndoClass }
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
%struct._GimpItemPropUndo = type { %struct._GimpItemUndo, %struct._GimpItem*, i32, i8*, i32, i32, i32, i32, i8*, %struct._GimpParasite* }
%struct._GimpItemUndo = type { %struct._GimpUndo, %struct._GimpItem* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpParasite = type { i8*, i32, i32, i8* }
%struct._GimpItemTree = type { %struct._GimpObject, %struct._GimpContainer* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_item_prop_undo_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"GimpItemPropUndo\00", align 1
@gimp_item_prop_undo_parent_class = internal global i8* null, align 8
@GimpItemPropUndo_private_offset = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"parasite-name\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"gimpitempropundo.c\00", align 1
@__func__.gimp_item_prop_undo_constructed = private unnamed_addr constant [32 x i8] c"gimp_item_prop_undo_constructed\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"item_prop_undo->parasite_name != NULL\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@__func__.gimp_item_prop_undo_pop = private unnamed_addr constant [24 x i8] c"gimp_item_prop_undo_pop\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_item_prop_undo_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_item_prop_undo_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_item_prop_undo_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 296, void (i8*, i8*)* bitcast (void (i8*)* @gimp_item_prop_undo_class_intern_init to void (i8*, i8*)*), i32 136, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpItemPropUndo*)* @gimp_item_prop_undo_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_item_prop_undo_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_item_prop_undo_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_undo_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_item_prop_undo_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_item_prop_undo_parent_class, align 8
  %1 = load i32, i32* @GimpItemPropUndo_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpItemPropUndo_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpItemPropUndoClass*
  call void @gimp_item_prop_undo_class_init(%struct._GimpItemPropUndoClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_item_prop_undo_init(%struct._GimpItemPropUndo* %undo) #3 {
entry:
  %undo.addr = alloca %struct._GimpItemPropUndo*, align 8
  store %struct._GimpItemPropUndo* %undo, %struct._GimpItemPropUndo** %undo.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_item_prop_undo_class_init(%struct._GimpItemPropUndoClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpItemPropUndoClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %gimp_object_class = alloca %struct._GimpObjectClass*, align 8
  %undo_class = alloca %struct._GimpUndoClass*, align 8
  store %struct._GimpItemPropUndoClass* %klass, %struct._GimpItemPropUndoClass** %klass.addr, align 8
  %0 = load %struct._GimpItemPropUndoClass*, %struct._GimpItemPropUndoClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpItemPropUndoClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpItemPropUndoClass*, %struct._GimpItemPropUndoClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpItemPropUndoClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_object_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpObjectClass*
  store %struct._GimpObjectClass* %5, %struct._GimpObjectClass** %gimp_object_class, align 8
  %6 = load %struct._GimpItemPropUndoClass*, %struct._GimpItemPropUndoClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpItemPropUndoClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_undo_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpUndoClass*
  store %struct._GimpUndoClass* %8, %struct._GimpUndoClass** %undo_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_item_prop_undo_constructed, void (%struct._GObject*)** %constructed, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_item_prop_undo_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_item_prop_undo_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %12 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %gimp_object_class, align 8
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %12, i32 0, i32 3
  store i64 (%struct._GimpObject*, i64*)* @gimp_item_prop_undo_get_memsize, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %13 = load %struct._GimpUndoClass*, %struct._GimpUndoClass** %undo_class, align 8
  %pop = getelementptr inbounds %struct._GimpUndoClass, %struct._GimpUndoClass* %13, i32 0, i32 1
  store void (%struct._GimpUndo*, i32, %struct._GimpUndoAccumulator*)* @gimp_item_prop_undo_pop, void (%struct._GimpUndo*, i32, %struct._GimpUndoAccumulator*)** %pop, align 8
  %14 = load %struct._GimpUndoClass*, %struct._GimpUndoClass** %undo_class, align 8
  %free = getelementptr inbounds %struct._GimpUndoClass, %struct._GimpUndoClass* %14, i32 0, i32 2
  store void (%struct._GimpUndo*, i32)* @gimp_item_prop_undo_free, void (%struct._GimpUndo*, i32)** %free, align 8
  %15 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* null, i8* null, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %15, i32 1, %struct._GParamSpec* %call5)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_undo_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_item_prop_undo_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %item_prop_undo = alloca %struct._GimpItemPropUndo*, align 8
  %item = alloca %struct._GimpItem*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_prop_undo_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpItemPropUndo*
  store %struct._GimpItemPropUndo* %2, %struct._GimpItemPropUndo** %item_prop_undo, align 8
  %3 = load i8*, i8** @gimp_item_prop_undo_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_item_prop_undo_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 80)
  %9 = bitcast %struct._GTypeClass* %call3 to %struct._GObjectClass*
  %constructed4 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  %10 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed4, align 8
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %10(%struct._GObject* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %13 = bitcast %struct._GObject* %12 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_item_undo_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call5)
  %14 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpItemUndo*
  %item7 = getelementptr inbounds %struct._GimpItemUndo, %struct._GimpItemUndo* %14, i32 0, i32 1
  %15 = load %struct._GimpItem*, %struct._GimpItem** %item7, align 8
  store %struct._GimpItem* %15, %struct._GimpItem** %item, align 8
  %16 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %17 = bitcast %struct._GObject* %16 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_undo_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call8)
  %18 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpUndo*
  %undo_type = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %18, i32 0, i32 3
  %19 = load i32, i32* %undo_type, align 4
  switch i32 %19, label %sw.default [
    i32 48, label %sw.bb
    i32 49, label %sw.bb.12
    i32 50, label %sw.bb.15
    i32 51, label %sw.bb.16
    i32 52, label %sw.bb.18
    i32 78, label %sw.bb.20
    i32 79, label %sw.bb.20
  ]

sw.bb:                                            ; preds = %if.end
  %20 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call10 = call %struct._GimpItem* @gimp_item_get_parent(%struct._GimpItem* %20)
  %21 = load %struct._GimpItemPropUndo*, %struct._GimpItemPropUndo** %item_prop_undo, align 8
  %parent = getelementptr inbounds %struct._GimpItemPropUndo, %struct._GimpItemPropUndo* %21, i32 0, i32 1
  store %struct._GimpItem* %call10, %struct._GimpItem** %parent, align 8
  %22 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call11 = call i32 @gimp_item_get_index(%struct._GimpItem* %22)
  %23 = load %struct._GimpItemPropUndo*, %struct._GimpItemPropUndo** %item_prop_undo, align 8
  %position = getelementptr inbounds %struct._GimpItemPropUndo, %struct._GimpItemPropUndo* %23, i32 0, i32 2
  store i32 %call11, i32* %position, align 4
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.end
  %24 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %25 = bitcast %struct._GimpItem* %24 to i8*
  %call13 = call i8* @gimp_object_get_name(i8* %25)
  %call14 = call noalias i8* @g_strdup(i8* %call13)
  %26 = load %struct._GimpItemPropUndo*, %struct._GimpItemPropUndo** %item_prop_undo, align 8
  %name = getelementptr inbounds %struct._GimpItemPropUndo, %struct._GimpItemPropUndo* %26, i32 0, i32 3
  store i8* %call14, i8** %name, align 8
  br label %sw.epilog

sw.bb.15:                                         ; preds = %if.end
  %27 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %28 = load %struct._GimpItemPropUndo*, %struct._GimpItemPropUndo** %item_prop_undo, align 8
  %offset_x = getelementptr inbounds %struct._GimpItemPropUndo, %struct._GimpItemPropUndo* %28, i32 0, i32 4
  %29 = load %struct._GimpItemPropUndo*, %struct._GimpItemPropUndo** %item_prop_undo, align 8
  %offset_y = getelementptr inbounds %struct._GimpItemPropUndo, %struct._GimpItemPropUndo* %29, i32 0, i32 5
  call void @gimp_item_get_offset(%struct._GimpItem* %27, i32* %offset_x, i32* %offset_y)
  br label %sw.epilog

sw.bb.16:                                         ; preds = %if.end
  %30 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call17 = call i32 @gimp_item_get_visible(%struct._GimpItem* %30)
  %31 = load %struct._GimpItemPropUndo*, %struct._GimpItemPropUndo** %item_prop_undo, align 8
  %visible = getelementptr inbounds %struct._GimpItemPropUndo, %struct._GimpItemPropUndo* %31, i32 0, i32 6
  store i32 %call17, i32* %visible, align 4
  br label %sw.epilog

sw.bb.18:                                         ; preds = %if.end
  %32 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call19 = call i32 @gimp_item_get_linked(%struct._GimpItem* %32)
  %33 = load %struct._GimpItemPropUndo*, %struct._GimpItemPropUndo** %item_prop_undo, align 8
  %linked = getelementptr inbounds %struct._GimpItemPropUndo, %struct._GimpItemPropUndo* %33, i32 0, i32 7
  store i32 %call19, i32* %linked, align 4
  br label %sw.epilog

sw.bb.20:                                         ; preds = %if.end, %if.end
  br label %do.body

do.body:                                          ; preds = %sw.bb.20
  %34 = load %struct._GimpItemPropUndo*, %struct._GimpItemPropUndo** %item_prop_undo, align 8
  %parasite_name = getelementptr inbounds %struct._GimpItemPropUndo, %struct._GimpItemPropUndo* %34, i32 0, i32 8
  %35 = load i8*, i8** %parasite_name, align 8
  %cmp = icmp ne i8* %35, null
  br i1 %cmp, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %do.body
  br label %if.end.22

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i32 132, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_item_prop_undo_constructed, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i32 0, i32 0)) #7
  unreachable

if.end.22:                                        ; preds = %if.then.21
  br label %do.end

do.end:                                           ; preds = %if.end.22
  %36 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %37 = load %struct._GimpItemPropUndo*, %struct._GimpItemPropUndo** %item_prop_undo, align 8
  %parasite_name23 = getelementptr inbounds %struct._GimpItemPropUndo, %struct._GimpItemPropUndo* %37, i32 0, i32 8
  %38 = load i8*, i8** %parasite_name23, align 8
  %call24 = call %struct._GimpParasite* @gimp_item_parasite_find(%struct._GimpItem* %36, i8* %38)
  %call25 = call %struct._GimpParasite* @gimp_parasite_copy(%struct._GimpParasite* %call24)
  %39 = load %struct._GimpItemPropUndo*, %struct._GimpItemPropUndo** %item_prop_undo, align 8
  %parasite = getelementptr inbounds %struct._GimpItemPropUndo, %struct._GimpItemPropUndo* %39, i32 0, i32 9
  store %struct._GimpParasite* %call25, %struct._GimpParasite** %parasite, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %do.body.26

do.body.26:                                       ; preds = %sw.default
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i32 139, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_item_prop_undo_constructed, i32 0, i32 0), i8* null) #7
  unreachable

do.end.27:                                        ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.27, %do.end, %sw.bb.18, %sw.bb.16, %sw.bb.15, %sw.bb.12, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_item_prop_undo_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %item_prop_undo = alloca %struct._GimpItemPropUndo*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_prop_undo_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpItemPropUndo*
  store %struct._GimpItemPropUndo* %2, %struct._GimpItemPropUndo** %item_prop_undo, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_dup_string(%struct._GValue* %4)
  %5 = load %struct._GimpItemPropUndo*, %struct._GimpItemPropUndo** %item_prop_undo, align 8
  %parasite_name = getelementptr inbounds %struct._GimpItemPropUndo, %struct._GimpItemPropUndo* %5, i32 0, i32 8
  store i8* %call2, i8** %parasite_name, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %6 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %6, %struct._GObject** %_glib__object, align 8
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %7, %struct._GParamSpec** %_glib__pspec, align 8
  %8 = load i32, i32* %property_id.addr, align 4
  store i32 %8, i32* %_glib__property_id, align 4
  %9 = load i32, i32* %_glib__property_id, align 4
  %10 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %10, i32 0, i32 1
  %11 = load i8*, i8** %name, align 8
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %13 = bitcast %struct._GParamSpec* %12 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %13, i32 0, i32 0
  %14 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %14, i32 0, i32 0
  %15 = load i64, i64* %g_type, align 8
  %call3 = call i8* @g_type_name(i64 %15)
  %16 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %17 = bitcast %struct._GObject* %16 to %struct._GTypeInstance*
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %18, i32 0, i32 0
  %19 = load i64, i64* %g_type5, align 8
  %call6 = call i8* @g_type_name(i64 %19)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i32 158, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 %9, i8* %11, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_item_prop_undo_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %item_prop_undo = alloca %struct._GimpItemPropUndo*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_prop_undo_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpItemPropUndo*
  store %struct._GimpItemPropUndo* %2, %struct._GimpItemPropUndo** %item_prop_undo, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpItemPropUndo*, %struct._GimpItemPropUndo** %item_prop_undo, align 8
  %parasite_name = getelementptr inbounds %struct._GimpItemPropUndo, %struct._GimpItemPropUndo* %5, i32 0, i32 8
  %6 = load i8*, i8** %parasite_name, align 8
  call void @g_value_set_string(%struct._GValue* %4, i8* %6)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %7 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %7, %struct._GObject** %_glib__object, align 8
  %8 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %8, %struct._GParamSpec** %_glib__pspec, align 8
  %9 = load i32, i32* %property_id.addr, align 4
  store i32 %9, i32* %_glib__property_id, align 4
  %10 = load i32, i32* %_glib__property_id, align 4
  %11 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %11, i32 0, i32 1
  %12 = load i8*, i8** %name, align 8
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %14 = bitcast %struct._GParamSpec* %13 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %15, i32 0, i32 0
  %16 = load i64, i64* %g_type, align 8
  %call2 = call i8* @g_type_name(i64 %16)
  %17 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %18 = bitcast %struct._GObject* %17 to %struct._GTypeInstance*
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type4 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type4, align 8
  %call5 = call i8* @g_type_name(i64 %20)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i32 178, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 %10, i8* %12, i8* %call2, i8* %call5)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @gimp_item_prop_undo_get_memsize(%struct._GimpObject* %object, i64* %gui_size) #3 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %gui_size.addr = alloca i64*, align 8
  %item_prop_undo = alloca %struct._GimpItemPropUndo*, align 8
  %memsize = alloca i64, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i64* %gui_size, i64** %gui_size.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_prop_undo_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpItemPropUndo*
  store %struct._GimpItemPropUndo* %2, %struct._GimpItemPropUndo** %item_prop_undo, align 8
  store i64 0, i64* %memsize, align 8
  %3 = load %struct._GimpItemPropUndo*, %struct._GimpItemPropUndo** %item_prop_undo, align 8
  %name = getelementptr inbounds %struct._GimpItemPropUndo, %struct._GimpItemPropUndo* %3, i32 0, i32 3
  %4 = load i8*, i8** %name, align 8
  %call2 = call i64 @gimp_string_get_memsize(i8* %4)
  %5 = load i64, i64* %memsize, align 8
  %add = add nsw i64 %5, %call2
  store i64 %add, i64* %memsize, align 8
  %6 = load %struct._GimpItemPropUndo*, %struct._GimpItemPropUndo** %item_prop_undo, align 8
  %parasite_name = getelementptr inbounds %struct._GimpItemPropUndo, %struct._GimpItemPropUndo* %6, i32 0, i32 8
  %7 = load i8*, i8** %parasite_name, align 8
  %call3 = call i64 @gimp_string_get_memsize(i8* %7)
  %8 = load i64, i64* %memsize, align 8
  %add4 = add nsw i64 %8, %call3
  store i64 %add4, i64* %memsize, align 8
  %9 = load %struct._GimpItemPropUndo*, %struct._GimpItemPropUndo** %item_prop_undo, align 8
  %parasite = getelementptr inbounds %struct._GimpItemPropUndo, %struct._GimpItemPropUndo* %9, i32 0, i32 9
  %10 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %call5 = call i64 @gimp_parasite_get_memsize(%struct._GimpParasite* %10, i64* null)
  %11 = load i64, i64* %memsize, align 8
  %add6 = add nsw i64 %11, %call5
  store i64 %add6, i64* %memsize, align 8
  %12 = load i64, i64* %memsize, align 8
  %13 = load i8*, i8** @gimp_item_prop_undo_parent_class, align 8
  %14 = bitcast i8* %13 to %struct._GTypeClass*
  %call7 = call i64 @gimp_object_get_type() #6
  %call8 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %14, i64 %call7)
  %15 = bitcast %struct._GTypeClass* %call8 to %struct._GimpObjectClass*
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %15, i32 0, i32 3
  %16 = load i64 (%struct._GimpObject*, i64*)*, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %17 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %18 = load i64*, i64** %gui_size.addr, align 8
  %call9 = call i64 %16(%struct._GimpObject* %17, i64* %18)
  %add10 = add nsw i64 %12, %call9
  ret i64 %add10
}

; Function Attrs: nounwind uwtable
define internal void @gimp_item_prop_undo_pop(%struct._GimpUndo* %undo, i32 %undo_mode, %struct._GimpUndoAccumulator* %accum) #3 {
entry:
  %undo.addr = alloca %struct._GimpUndo*, align 8
  %undo_mode.addr = alloca i32, align 4
  %accum.addr = alloca %struct._GimpUndoAccumulator*, align 8
  %item_prop_undo = alloca %struct._GimpItemPropUndo*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %parent = alloca %struct._GimpItem*, align 8
  %position = alloca i32, align 4
  %name = alloca i8*, align 8
  %offset_x = alloca i32, align 4
  %offset_y = alloca i32, align 4
  %visible = alloca i32, align 4
  %linked = alloca i32, align 4
  %parasite = alloca %struct._GimpParasite*, align 8
  store %struct._GimpUndo* %undo, %struct._GimpUndo** %undo.addr, align 8
  store i32 %undo_mode, i32* %undo_mode.addr, align 4
  store %struct._GimpUndoAccumulator* %accum, %struct._GimpUndoAccumulator** %accum.addr, align 8
  %0 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %1 = bitcast %struct._GimpUndo* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_prop_undo_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpItemPropUndo*
  store %struct._GimpItemPropUndo* %2, %struct._GimpItemPropUndo** %item_prop_undo, align 8
  %3 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %4 = bitcast %struct._GimpUndo* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_item_undo_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpItemUndo*
  %item4 = getelementptr inbounds %struct._GimpItemUndo, %struct._GimpItemUndo* %5, i32 0, i32 1
  %6 = load %struct._GimpItem*, %struct._GimpItem** %item4, align 8
  store %struct._GimpItem* %6, %struct._GimpItem** %item, align 8
  %7 = load i8*, i8** @gimp_item_prop_undo_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call5 = call i64 @gimp_undo_get_type() #6
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 %call5)
  %9 = bitcast %struct._GTypeClass* %call6 to %struct._GimpUndoClass*
  %pop = getelementptr inbounds %struct._GimpUndoClass, %struct._GimpUndoClass* %9, i32 0, i32 1
  %10 = load void (%struct._GimpUndo*, i32, %struct._GimpUndoAccumulator*)*, void (%struct._GimpUndo*, i32, %struct._GimpUndoAccumulator*)** %pop, align 8
  %11 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %12 = load i32, i32* %undo_mode.addr, align 4
  %13 = load %struct._GimpUndoAccumulator*, %struct._GimpUndoAccumulator** %accum.addr, align 8
  call void %10(%struct._GimpUndo* %11, i32 %12, %struct._GimpUndoAccumulator* %13)
  %14 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %undo_type = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %14, i32 0, i32 3
  %15 = load i32, i32* %undo_type, align 4
  switch i32 %15, label %sw.default [
    i32 48, label %sw.bb
    i32 49, label %sw.bb.15
    i32 50, label %sw.bb.22
    i32 51, label %sw.bb.28
    i32 52, label %sw.bb.32
    i32 78, label %sw.bb.36
    i32 79, label %sw.bb.36
  ]

sw.bb:                                            ; preds = %entry
  %16 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call7 = call %struct._GimpItem* @gimp_item_get_parent(%struct._GimpItem* %16)
  store %struct._GimpItem* %call7, %struct._GimpItem** %parent, align 8
  %17 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call8 = call i32 @gimp_item_get_index(%struct._GimpItem* %17)
  store i32 %call8, i32* %position, align 4
  %18 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call9 = call %struct._GimpItemTree* @gimp_item_get_tree(%struct._GimpItem* %18)
  %19 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %20 = load %struct._GimpItemPropUndo*, %struct._GimpItemPropUndo** %item_prop_undo, align 8
  %parent10 = getelementptr inbounds %struct._GimpItemPropUndo, %struct._GimpItemPropUndo* %20, i32 0, i32 1
  %21 = load %struct._GimpItem*, %struct._GimpItem** %parent10, align 8
  %22 = load %struct._GimpItemPropUndo*, %struct._GimpItemPropUndo** %item_prop_undo, align 8
  %position11 = getelementptr inbounds %struct._GimpItemPropUndo, %struct._GimpItemPropUndo* %22, i32 0, i32 2
  %23 = load i32, i32* %position11, align 4
  %call12 = call i32 @gimp_item_tree_reorder_item(%struct._GimpItemTree* %call9, %struct._GimpItem* %19, %struct._GimpItem* %21, i32 %23, i32 0, i8* null)
  %24 = load %struct._GimpItem*, %struct._GimpItem** %parent, align 8
  %25 = load %struct._GimpItemPropUndo*, %struct._GimpItemPropUndo** %item_prop_undo, align 8
  %parent13 = getelementptr inbounds %struct._GimpItemPropUndo, %struct._GimpItemPropUndo* %25, i32 0, i32 1
  store %struct._GimpItem* %24, %struct._GimpItem** %parent13, align 8
  %26 = load i32, i32* %position, align 4
  %27 = load %struct._GimpItemPropUndo*, %struct._GimpItemPropUndo** %item_prop_undo, align 8
  %position14 = getelementptr inbounds %struct._GimpItemPropUndo, %struct._GimpItemPropUndo* %27, i32 0, i32 2
  store i32 %26, i32* %position14, align 4
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %28 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %29 = bitcast %struct._GimpItem* %28 to i8*
  %call16 = call i8* @gimp_object_get_name(i8* %29)
  %call17 = call noalias i8* @g_strdup(i8* %call16)
  store i8* %call17, i8** %name, align 8
  %30 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call18 = call %struct._GimpItemTree* @gimp_item_get_tree(%struct._GimpItem* %30)
  %31 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %32 = load %struct._GimpItemPropUndo*, %struct._GimpItemPropUndo** %item_prop_undo, align 8
  %name19 = getelementptr inbounds %struct._GimpItemPropUndo, %struct._GimpItemPropUndo* %32, i32 0, i32 3
  %33 = load i8*, i8** %name19, align 8
  call void @gimp_item_tree_rename_item(%struct._GimpItemTree* %call18, %struct._GimpItem* %31, i8* %33, i32 0, i8* null)
  %34 = load %struct._GimpItemPropUndo*, %struct._GimpItemPropUndo** %item_prop_undo, align 8
  %name20 = getelementptr inbounds %struct._GimpItemPropUndo, %struct._GimpItemPropUndo* %34, i32 0, i32 3
  %35 = load i8*, i8** %name20, align 8
  call void @g_free(i8* %35)
  %36 = load i8*, i8** %name, align 8
  %37 = load %struct._GimpItemPropUndo*, %struct._GimpItemPropUndo** %item_prop_undo, align 8
  %name21 = getelementptr inbounds %struct._GimpItemPropUndo, %struct._GimpItemPropUndo* %37, i32 0, i32 3
  store i8* %36, i8** %name21, align 8
  br label %sw.epilog

sw.bb.22:                                         ; preds = %entry
  %38 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  call void @gimp_item_get_offset(%struct._GimpItem* %38, i32* %offset_x, i32* %offset_y)
  %39 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %40 = load %struct._GimpItemPropUndo*, %struct._GimpItemPropUndo** %item_prop_undo, align 8
  %offset_x23 = getelementptr inbounds %struct._GimpItemPropUndo, %struct._GimpItemPropUndo* %40, i32 0, i32 4
  %41 = load i32, i32* %offset_x23, align 4
  %42 = load i32, i32* %offset_x, align 4
  %sub = sub nsw i32 %41, %42
  %43 = load %struct._GimpItemPropUndo*, %struct._GimpItemPropUndo** %item_prop_undo, align 8
  %offset_y24 = getelementptr inbounds %struct._GimpItemPropUndo, %struct._GimpItemPropUndo* %43, i32 0, i32 5
  %44 = load i32, i32* %offset_y24, align 4
  %45 = load i32, i32* %offset_y, align 4
  %sub25 = sub nsw i32 %44, %45
  call void @gimp_item_translate(%struct._GimpItem* %39, i32 %sub, i32 %sub25, i32 0)
  %46 = load i32, i32* %offset_x, align 4
  %47 = load %struct._GimpItemPropUndo*, %struct._GimpItemPropUndo** %item_prop_undo, align 8
  %offset_x26 = getelementptr inbounds %struct._GimpItemPropUndo, %struct._GimpItemPropUndo* %47, i32 0, i32 4
  store i32 %46, i32* %offset_x26, align 4
  %48 = load i32, i32* %offset_y, align 4
  %49 = load %struct._GimpItemPropUndo*, %struct._GimpItemPropUndo** %item_prop_undo, align 8
  %offset_y27 = getelementptr inbounds %struct._GimpItemPropUndo, %struct._GimpItemPropUndo* %49, i32 0, i32 5
  store i32 %48, i32* %offset_y27, align 4
  br label %sw.epilog

sw.bb.28:                                         ; preds = %entry
  %50 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call29 = call i32 @gimp_item_get_visible(%struct._GimpItem* %50)
  store i32 %call29, i32* %visible, align 4
  %51 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %52 = load %struct._GimpItemPropUndo*, %struct._GimpItemPropUndo** %item_prop_undo, align 8
  %visible30 = getelementptr inbounds %struct._GimpItemPropUndo, %struct._GimpItemPropUndo* %52, i32 0, i32 6
  %53 = load i32, i32* %visible30, align 4
  call void @gimp_item_set_visible(%struct._GimpItem* %51, i32 %53, i32 0)
  %54 = load i32, i32* %visible, align 4
  %55 = load %struct._GimpItemPropUndo*, %struct._GimpItemPropUndo** %item_prop_undo, align 8
  %visible31 = getelementptr inbounds %struct._GimpItemPropUndo, %struct._GimpItemPropUndo* %55, i32 0, i32 6
  store i32 %54, i32* %visible31, align 4
  br label %sw.epilog

sw.bb.32:                                         ; preds = %entry
  %56 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call33 = call i32 @gimp_item_get_linked(%struct._GimpItem* %56)
  store i32 %call33, i32* %linked, align 4
  %57 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %58 = load %struct._GimpItemPropUndo*, %struct._GimpItemPropUndo** %item_prop_undo, align 8
  %linked34 = getelementptr inbounds %struct._GimpItemPropUndo, %struct._GimpItemPropUndo* %58, i32 0, i32 7
  %59 = load i32, i32* %linked34, align 4
  call void @gimp_item_set_linked(%struct._GimpItem* %57, i32 %59, i32 0)
  %60 = load i32, i32* %linked, align 4
  %61 = load %struct._GimpItemPropUndo*, %struct._GimpItemPropUndo** %item_prop_undo, align 8
  %linked35 = getelementptr inbounds %struct._GimpItemPropUndo, %struct._GimpItemPropUndo* %61, i32 0, i32 7
  store i32 %60, i32* %linked35, align 4
  br label %sw.epilog

sw.bb.36:                                         ; preds = %entry, %entry
  %62 = load %struct._GimpItemPropUndo*, %struct._GimpItemPropUndo** %item_prop_undo, align 8
  %parasite37 = getelementptr inbounds %struct._GimpItemPropUndo, %struct._GimpItemPropUndo* %62, i32 0, i32 9
  %63 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite37, align 8
  store %struct._GimpParasite* %63, %struct._GimpParasite** %parasite, align 8
  %64 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %65 = load %struct._GimpItemPropUndo*, %struct._GimpItemPropUndo** %item_prop_undo, align 8
  %parasite_name = getelementptr inbounds %struct._GimpItemPropUndo, %struct._GimpItemPropUndo* %65, i32 0, i32 8
  %66 = load i8*, i8** %parasite_name, align 8
  %call38 = call %struct._GimpParasite* @gimp_item_parasite_find(%struct._GimpItem* %64, i8* %66)
  %call39 = call %struct._GimpParasite* @gimp_parasite_copy(%struct._GimpParasite* %call38)
  %67 = load %struct._GimpItemPropUndo*, %struct._GimpItemPropUndo** %item_prop_undo, align 8
  %parasite40 = getelementptr inbounds %struct._GimpItemPropUndo, %struct._GimpItemPropUndo* %67, i32 0, i32 9
  store %struct._GimpParasite* %call39, %struct._GimpParasite** %parasite40, align 8
  %68 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %tobool = icmp ne %struct._GimpParasite* %68, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.36
  %69 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %70 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_item_parasite_attach(%struct._GimpItem* %69, %struct._GimpParasite* %70, i32 0)
  br label %if.end

if.else:                                          ; preds = %sw.bb.36
  %71 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %72 = load %struct._GimpItemPropUndo*, %struct._GimpItemPropUndo** %item_prop_undo, align 8
  %parasite_name41 = getelementptr inbounds %struct._GimpItemPropUndo, %struct._GimpItemPropUndo* %72, i32 0, i32 8
  %73 = load i8*, i8** %parasite_name41, align 8
  call void @gimp_item_parasite_detach(%struct._GimpItem* %71, i8* %73, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %74 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %tobool42 = icmp ne %struct._GimpParasite* %74, null
  br i1 %tobool42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end
  %75 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %75)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %if.end
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i32 301, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_item_prop_undo_pop, i32 0, i32 0), i8* null) #7
  unreachable

do.end:                                           ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.end.44, %sw.bb.32, %sw.bb.28, %sw.bb.22, %sw.bb.15, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_item_prop_undo_free(%struct._GimpUndo* %undo, i32 %undo_mode) #3 {
entry:
  %undo.addr = alloca %struct._GimpUndo*, align 8
  %undo_mode.addr = alloca i32, align 4
  %item_prop_undo = alloca %struct._GimpItemPropUndo*, align 8
  store %struct._GimpUndo* %undo, %struct._GimpUndo** %undo.addr, align 8
  store i32 %undo_mode, i32* %undo_mode.addr, align 4
  %0 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %1 = bitcast %struct._GimpUndo* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_prop_undo_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpItemPropUndo*
  store %struct._GimpItemPropUndo* %2, %struct._GimpItemPropUndo** %item_prop_undo, align 8
  %3 = load %struct._GimpItemPropUndo*, %struct._GimpItemPropUndo** %item_prop_undo, align 8
  %name = getelementptr inbounds %struct._GimpItemPropUndo, %struct._GimpItemPropUndo* %3, i32 0, i32 3
  %4 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpItemPropUndo*, %struct._GimpItemPropUndo** %item_prop_undo, align 8
  %name2 = getelementptr inbounds %struct._GimpItemPropUndo, %struct._GimpItemPropUndo* %5, i32 0, i32 3
  %6 = load i8*, i8** %name2, align 8
  call void @g_free(i8* %6)
  %7 = load %struct._GimpItemPropUndo*, %struct._GimpItemPropUndo** %item_prop_undo, align 8
  %name3 = getelementptr inbounds %struct._GimpItemPropUndo, %struct._GimpItemPropUndo* %7, i32 0, i32 3
  store i8* null, i8** %name3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpItemPropUndo*, %struct._GimpItemPropUndo** %item_prop_undo, align 8
  %parasite_name = getelementptr inbounds %struct._GimpItemPropUndo, %struct._GimpItemPropUndo* %8, i32 0, i32 8
  %9 = load i8*, i8** %parasite_name, align 8
  %tobool4 = icmp ne i8* %9, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %10 = load %struct._GimpItemPropUndo*, %struct._GimpItemPropUndo** %item_prop_undo, align 8
  %parasite_name6 = getelementptr inbounds %struct._GimpItemPropUndo, %struct._GimpItemPropUndo* %10, i32 0, i32 8
  %11 = load i8*, i8** %parasite_name6, align 8
  call void @g_free(i8* %11)
  %12 = load %struct._GimpItemPropUndo*, %struct._GimpItemPropUndo** %item_prop_undo, align 8
  %parasite_name7 = getelementptr inbounds %struct._GimpItemPropUndo, %struct._GimpItemPropUndo* %12, i32 0, i32 8
  store i8* null, i8** %parasite_name7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %13 = load %struct._GimpItemPropUndo*, %struct._GimpItemPropUndo** %item_prop_undo, align 8
  %parasite = getelementptr inbounds %struct._GimpItemPropUndo, %struct._GimpItemPropUndo* %13, i32 0, i32 9
  %14 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %tobool9 = icmp ne %struct._GimpParasite* %14, null
  br i1 %tobool9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end.8
  %15 = load %struct._GimpItemPropUndo*, %struct._GimpItemPropUndo** %item_prop_undo, align 8
  %parasite11 = getelementptr inbounds %struct._GimpItemPropUndo, %struct._GimpItemPropUndo* %15, i32 0, i32 9
  %16 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite11, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %16)
  %17 = load %struct._GimpItemPropUndo*, %struct._GimpItemPropUndo** %item_prop_undo, align 8
  %parasite12 = getelementptr inbounds %struct._GimpItemPropUndo, %struct._GimpItemPropUndo* %17, i32 0, i32 9
  store %struct._GimpParasite* null, %struct._GimpParasite** %parasite12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.end.8
  %18 = load i8*, i8** @gimp_item_prop_undo_parent_class, align 8
  %19 = bitcast i8* %18 to %struct._GTypeClass*
  %call14 = call i64 @gimp_undo_get_type() #6
  %call15 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %19, i64 %call14)
  %20 = bitcast %struct._GTypeClass* %call15 to %struct._GimpUndoClass*
  %free = getelementptr inbounds %struct._GimpUndoClass, %struct._GimpUndoClass* %20, i32 0, i32 2
  %21 = load void (%struct._GimpUndo*, i32)*, void (%struct._GimpUndo*, i32)** %free, align 8
  %22 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %23 = load i32, i32* %undo_mode.addr, align 4
  call void %21(%struct._GimpUndo* %22, i32 %23)
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_string(i8*, i8*, i8*, i8*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GimpItem* @gimp_item_get_parent(%struct._GimpItem*) #1

declare i32 @gimp_item_get_index(%struct._GimpItem*) #1

declare noalias i8* @g_strdup(i8*) #1

declare i8* @gimp_object_get_name(i8*) #1

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #1

declare i32 @gimp_item_get_visible(%struct._GimpItem*) #1

declare i32 @gimp_item_get_linked(%struct._GimpItem*) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #4

declare %struct._GimpParasite* @gimp_parasite_copy(%struct._GimpParasite*) #1

declare %struct._GimpParasite* @gimp_item_parasite_find(%struct._GimpItem*, i8*) #1

declare i8* @g_value_dup_string(%struct._GValue*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare void @g_value_set_string(%struct._GValue*, i8*) #1

declare i64 @gimp_string_get_memsize(i8*) #1

declare i64 @gimp_parasite_get_memsize(%struct._GimpParasite*, i64*) #1

declare i32 @gimp_item_tree_reorder_item(%struct._GimpItemTree*, %struct._GimpItem*, %struct._GimpItem*, i32, i32, i8*) #1

declare %struct._GimpItemTree* @gimp_item_get_tree(%struct._GimpItem*) #1

declare void @gimp_item_tree_rename_item(%struct._GimpItemTree*, %struct._GimpItem*, i8*, i32, i8*) #1

declare void @g_free(i8*) #1

declare void @gimp_item_translate(%struct._GimpItem*, i32, i32, i32) #1

declare void @gimp_item_set_visible(%struct._GimpItem*, i32, i32) #1

declare void @gimp_item_set_linked(%struct._GimpItem*, i32, i32) #1

declare void @gimp_item_parasite_attach(%struct._GimpItem*, %struct._GimpParasite*, i32) #1

declare void @gimp_item_parasite_detach(%struct._GimpItem*, i8*, i32) #1

declare void @gimp_parasite_free(%struct._GimpParasite*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
