; ModuleID = './app/vectors/gimpvectorsmodundo.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpVectorsModUndoClass = type { %struct._GimpItemUndoClass }
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
%struct._GimpVectorsModUndo = type { %struct._GimpItemUndo, %struct._GimpVectors* }
%struct._GimpItemUndo = type { %struct._GimpUndo, %struct._GimpItem* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpVectors = type { %struct._GimpItem, %struct._GList*, i32, i32, double, i8**, i32, i32, double, double, double, double }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }

@gimp_vectors_mod_undo_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"GimpVectorsModUndo\00", align 1
@gimp_vectors_mod_undo_parent_class = internal global i8* null, align 8
@GimpVectorsModUndo_private_offset = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Vectors\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"gimpvectorsmodundo.c\00", align 1
@__func__.gimp_vectors_mod_undo_constructed = private unnamed_addr constant [34 x i8] c"gimp_vectors_mod_undo_constructed\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"GIMP_IS_VECTORS (GIMP_ITEM_UNDO (object)->item)\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_vectors_mod_undo_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_vectors_mod_undo_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_vectors_mod_undo_get_type.g_define_type_id__volatile to i8*))
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
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 296, void (i8*, i8*)* bitcast (void (i8*)* @gimp_vectors_mod_undo_class_intern_init to void (i8*, i8*)*), i32 88, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpVectorsModUndo*)* @gimp_vectors_mod_undo_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_vectors_mod_undo_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_vectors_mod_undo_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_undo_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_vectors_mod_undo_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_vectors_mod_undo_parent_class, align 8
  %1 = load i32, i32* @GimpVectorsModUndo_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpVectorsModUndo_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpVectorsModUndoClass*
  call void @gimp_vectors_mod_undo_class_init(%struct._GimpVectorsModUndoClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_vectors_mod_undo_init(%struct._GimpVectorsModUndo* %undo) #3 {
entry:
  %undo.addr = alloca %struct._GimpVectorsModUndo*, align 8
  store %struct._GimpVectorsModUndo* %undo, %struct._GimpVectorsModUndo** %undo.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_vectors_mod_undo_class_init(%struct._GimpVectorsModUndoClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpVectorsModUndoClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %gimp_object_class = alloca %struct._GimpObjectClass*, align 8
  %undo_class = alloca %struct._GimpUndoClass*, align 8
  store %struct._GimpVectorsModUndoClass* %klass, %struct._GimpVectorsModUndoClass** %klass.addr, align 8
  %0 = load %struct._GimpVectorsModUndoClass*, %struct._GimpVectorsModUndoClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpVectorsModUndoClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpVectorsModUndoClass*, %struct._GimpVectorsModUndoClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpVectorsModUndoClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_object_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpObjectClass*
  store %struct._GimpObjectClass* %5, %struct._GimpObjectClass** %gimp_object_class, align 8
  %6 = load %struct._GimpVectorsModUndoClass*, %struct._GimpVectorsModUndoClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpVectorsModUndoClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_undo_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpUndoClass*
  store %struct._GimpUndoClass* %8, %struct._GimpUndoClass** %undo_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_vectors_mod_undo_constructed, void (%struct._GObject*)** %constructed, align 8
  %10 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %gimp_object_class, align 8
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %10, i32 0, i32 3
  store i64 (%struct._GimpObject*, i64*)* @gimp_vectors_mod_undo_get_memsize, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %11 = load %struct._GimpUndoClass*, %struct._GimpUndoClass** %undo_class, align 8
  %pop = getelementptr inbounds %struct._GimpUndoClass, %struct._GimpUndoClass* %11, i32 0, i32 1
  store void (%struct._GimpUndo*, i32, %struct._GimpUndoAccumulator*)* @gimp_vectors_mod_undo_pop, void (%struct._GimpUndo*, i32, %struct._GimpUndoAccumulator*)** %pop, align 8
  %12 = load %struct._GimpUndoClass*, %struct._GimpUndoClass** %undo_class, align 8
  %free = getelementptr inbounds %struct._GimpUndoClass, %struct._GimpUndoClass* %12, i32 0, i32 2
  store void (%struct._GimpUndo*, i32)* @gimp_vectors_mod_undo_free, void (%struct._GimpUndo*, i32)** %free, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_undo_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_vectors_mod_undo_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %vectors_mod_undo = alloca %struct._GimpVectorsModUndo*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_vectors_mod_undo_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpVectorsModUndo*
  store %struct._GimpVectorsModUndo* %2, %struct._GimpVectorsModUndo** %vectors_mod_undo, align 8
  %3 = load i8*, i8** @gimp_vectors_mod_undo_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_vectors_mod_undo_parent_class, align 8
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
  %call7 = call i64 @gimp_vectors_get_type() #6
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
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i32 74, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_vectors_mod_undo_constructed, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i32 0, i32 0)) #8
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
  %call24 = call i64 @gimp_vectors_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call24)
  %33 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpVectors*
  store %struct._GimpVectors* %33, %struct._GimpVectors** %vectors, align 8
  %34 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %35 = bitcast %struct._GimpVectors* %34 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_item_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call26)
  %36 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpItem*
  %37 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %38 = bitcast %struct._GimpVectors* %37 to %struct._GTypeInstance*
  %g_class28 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %38, i32 0, i32 0
  %39 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class28, align 8
  %g_type29 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %39, i32 0, i32 0
  %40 = load i64, i64* %g_type29, align 8
  %call30 = call %struct._GimpItem* @gimp_item_duplicate(%struct._GimpItem* %36, i64 %40)
  %41 = bitcast %struct._GimpItem* %call30 to %struct._GTypeInstance*
  %call31 = call i64 @gimp_vectors_get_type() #6
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call31)
  %42 = bitcast %struct._GTypeInstance* %call32 to %struct._GimpVectors*
  %43 = load %struct._GimpVectorsModUndo*, %struct._GimpVectorsModUndo** %vectors_mod_undo, align 8
  %vectors33 = getelementptr inbounds %struct._GimpVectorsModUndo, %struct._GimpVectorsModUndo* %43, i32 0, i32 1
  store %struct._GimpVectors* %42, %struct._GimpVectors** %vectors33, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @gimp_vectors_mod_undo_get_memsize(%struct._GimpObject* %object, i64* %gui_size) #3 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %gui_size.addr = alloca i64*, align 8
  %vectors_mod_undo = alloca %struct._GimpVectorsModUndo*, align 8
  %memsize = alloca i64, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i64* %gui_size, i64** %gui_size.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_vectors_mod_undo_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpVectorsModUndo*
  store %struct._GimpVectorsModUndo* %2, %struct._GimpVectorsModUndo** %vectors_mod_undo, align 8
  store i64 0, i64* %memsize, align 8
  %3 = load %struct._GimpVectorsModUndo*, %struct._GimpVectorsModUndo** %vectors_mod_undo, align 8
  %vectors = getelementptr inbounds %struct._GimpVectorsModUndo, %struct._GimpVectorsModUndo* %3, i32 0, i32 1
  %4 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %5 = bitcast %struct._GimpVectors* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_object_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpObject*
  %7 = load i64*, i64** %gui_size.addr, align 8
  %call4 = call i64 @gimp_object_get_memsize(%struct._GimpObject* %6, i64* %7)
  %8 = load i64, i64* %memsize, align 8
  %add = add nsw i64 %8, %call4
  store i64 %add, i64* %memsize, align 8
  %9 = load i64, i64* %memsize, align 8
  %10 = load i8*, i8** @gimp_vectors_mod_undo_parent_class, align 8
  %11 = bitcast i8* %10 to %struct._GTypeClass*
  %call5 = call i64 @gimp_object_get_type() #6
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %11, i64 %call5)
  %12 = bitcast %struct._GTypeClass* %call6 to %struct._GimpObjectClass*
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %12, i32 0, i32 3
  %13 = load i64 (%struct._GimpObject*, i64*)*, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %14 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %15 = load i64*, i64** %gui_size.addr, align 8
  %call7 = call i64 %13(%struct._GimpObject* %14, i64* %15)
  %add8 = add nsw i64 %9, %call7
  ret i64 %add8
}

; Function Attrs: nounwind uwtable
define internal void @gimp_vectors_mod_undo_pop(%struct._GimpUndo* %undo, i32 %undo_mode, %struct._GimpUndoAccumulator* %accum) #3 {
entry:
  %undo.addr = alloca %struct._GimpUndo*, align 8
  %undo_mode.addr = alloca i32, align 4
  %accum.addr = alloca %struct._GimpUndoAccumulator*, align 8
  %vectors_mod_undo = alloca %struct._GimpVectorsModUndo*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  %temp = alloca %struct._GimpVectors*, align 8
  %offset_x = alloca i32, align 4
  %offset_y = alloca i32, align 4
  store %struct._GimpUndo* %undo, %struct._GimpUndo** %undo.addr, align 8
  store i32 %undo_mode, i32* %undo_mode.addr, align 4
  store %struct._GimpUndoAccumulator* %accum, %struct._GimpUndoAccumulator** %accum.addr, align 8
  %0 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %1 = bitcast %struct._GimpUndo* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_vectors_mod_undo_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpVectorsModUndo*
  store %struct._GimpVectorsModUndo* %2, %struct._GimpVectorsModUndo** %vectors_mod_undo, align 8
  %3 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %4 = bitcast %struct._GimpUndo* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_item_undo_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpItemUndo*
  %item = getelementptr inbounds %struct._GimpItemUndo, %struct._GimpItemUndo* %5, i32 0, i32 1
  %6 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %7 = bitcast %struct._GimpItem* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_vectors_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpVectors*
  store %struct._GimpVectors* %8, %struct._GimpVectors** %vectors, align 8
  %9 = load i8*, i8** @gimp_vectors_mod_undo_parent_class, align 8
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
  %16 = load %struct._GimpVectorsModUndo*, %struct._GimpVectorsModUndo** %vectors_mod_undo, align 8
  %vectors8 = getelementptr inbounds %struct._GimpVectorsModUndo, %struct._GimpVectorsModUndo* %16, i32 0, i32 1
  %17 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors8, align 8
  store %struct._GimpVectors* %17, %struct._GimpVectors** %temp, align 8
  %18 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %19 = bitcast %struct._GimpVectors* %18 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_item_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call9)
  %20 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpItem*
  %21 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %22 = bitcast %struct._GimpVectors* %21 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type, align 8
  %call11 = call %struct._GimpItem* @gimp_item_duplicate(%struct._GimpItem* %20, i64 %24)
  %25 = bitcast %struct._GimpItem* %call11 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_vectors_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call12)
  %26 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpVectors*
  %27 = load %struct._GimpVectorsModUndo*, %struct._GimpVectorsModUndo** %vectors_mod_undo, align 8
  %vectors14 = getelementptr inbounds %struct._GimpVectorsModUndo, %struct._GimpVectorsModUndo* %27, i32 0, i32 1
  store %struct._GimpVectors* %26, %struct._GimpVectors** %vectors14, align 8
  %28 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  call void @gimp_vectors_freeze(%struct._GimpVectors* %28)
  %29 = load %struct._GimpVectors*, %struct._GimpVectors** %temp, align 8
  %30 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  call void @gimp_vectors_copy_strokes(%struct._GimpVectors* %29, %struct._GimpVectors* %30)
  %31 = load %struct._GimpVectors*, %struct._GimpVectors** %temp, align 8
  %32 = bitcast %struct._GimpVectors* %31 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_item_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call15)
  %33 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %33, i32* %offset_x, i32* %offset_y)
  %34 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %35 = bitcast %struct._GimpVectors* %34 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_item_get_type() #6
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call17)
  %36 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpItem*
  %37 = load i32, i32* %offset_x, align 4
  %38 = load i32, i32* %offset_y, align 4
  call void @gimp_item_set_offset(%struct._GimpItem* %36, i32 %37, i32 %38)
  %39 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %40 = bitcast %struct._GimpVectors* %39 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_item_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call19)
  %41 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpItem*
  %42 = load %struct._GimpVectors*, %struct._GimpVectors** %temp, align 8
  %43 = bitcast %struct._GimpVectors* %42 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_item_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call21)
  %44 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpItem*
  %call23 = call i32 @gimp_item_get_width(%struct._GimpItem* %44)
  %45 = load %struct._GimpVectors*, %struct._GimpVectors** %temp, align 8
  %46 = bitcast %struct._GimpVectors* %45 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_item_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call24)
  %47 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpItem*
  %call26 = call i32 @gimp_item_get_height(%struct._GimpItem* %47)
  call void @gimp_item_set_size(%struct._GimpItem* %41, i32 %call23, i32 %call26)
  %48 = load %struct._GimpVectors*, %struct._GimpVectors** %temp, align 8
  %49 = bitcast %struct._GimpVectors* %48 to i8*
  call void @g_object_unref(i8* %49)
  %50 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  call void @gimp_vectors_thaw(%struct._GimpVectors* %50)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_vectors_mod_undo_free(%struct._GimpUndo* %undo, i32 %undo_mode) #3 {
entry:
  %undo.addr = alloca %struct._GimpUndo*, align 8
  %undo_mode.addr = alloca i32, align 4
  %vectors_mod_undo = alloca %struct._GimpVectorsModUndo*, align 8
  store %struct._GimpUndo* %undo, %struct._GimpUndo** %undo.addr, align 8
  store i32 %undo_mode, i32* %undo_mode.addr, align 4
  %0 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %1 = bitcast %struct._GimpUndo* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_vectors_mod_undo_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpVectorsModUndo*
  store %struct._GimpVectorsModUndo* %2, %struct._GimpVectorsModUndo** %vectors_mod_undo, align 8
  %3 = load %struct._GimpVectorsModUndo*, %struct._GimpVectorsModUndo** %vectors_mod_undo, align 8
  %vectors = getelementptr inbounds %struct._GimpVectorsModUndo, %struct._GimpVectorsModUndo* %3, i32 0, i32 1
  %4 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %tobool = icmp ne %struct._GimpVectors* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpVectorsModUndo*, %struct._GimpVectorsModUndo** %vectors_mod_undo, align 8
  %vectors2 = getelementptr inbounds %struct._GimpVectorsModUndo, %struct._GimpVectorsModUndo* %5, i32 0, i32 1
  %6 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors2, align 8
  %7 = bitcast %struct._GimpVectors* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load %struct._GimpVectorsModUndo*, %struct._GimpVectorsModUndo** %vectors_mod_undo, align 8
  %vectors3 = getelementptr inbounds %struct._GimpVectorsModUndo, %struct._GimpVectorsModUndo* %8, i32 0, i32 1
  store %struct._GimpVectors* null, %struct._GimpVectors** %vectors3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** @gimp_vectors_mod_undo_parent_class, align 8
  %10 = bitcast i8* %9 to %struct._GTypeClass*
  %call4 = call i64 @gimp_undo_get_type() #6
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 %call4)
  %11 = bitcast %struct._GTypeClass* %call5 to %struct._GimpUndoClass*
  %free = getelementptr inbounds %struct._GimpUndoClass, %struct._GimpUndoClass* %11, i32 0, i32 2
  %12 = load void (%struct._GimpUndo*, i32)*, void (%struct._GimpUndo*, i32)** %free, align 8
  %13 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %14 = load i32, i32* %undo_mode.addr, align 4
  call void %12(%struct._GimpUndo* %13, i32 %14)
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_vectors_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

declare %struct._GimpItem* @gimp_item_duplicate(%struct._GimpItem*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare i64 @gimp_object_get_memsize(%struct._GimpObject*, i64*) #1

declare void @gimp_vectors_freeze(%struct._GimpVectors*) #1

declare void @gimp_vectors_copy_strokes(%struct._GimpVectors*, %struct._GimpVectors*) #1

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #1

declare void @gimp_item_set_offset(%struct._GimpItem*, i32, i32) #1

declare void @gimp_item_set_size(%struct._GimpItem*, i32, i32) #1

declare i32 @gimp_item_get_width(%struct._GimpItem*) #1

declare i32 @gimp_item_get_height(%struct._GimpItem*) #1

declare void @g_object_unref(i8*) #1

declare void @gimp_vectors_thaw(%struct._GimpVectors*) #1

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
