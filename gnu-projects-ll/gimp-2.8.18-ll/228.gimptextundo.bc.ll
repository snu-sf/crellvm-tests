; ModuleID = './app/text/gimptextundo.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpTextUndoClass = type { %struct._GimpItemClass }
%struct._GimpItemClass = type { %struct._GimpViewableClass, void (%struct._GimpItem*)*, void (%struct._GimpItem*)*, void (%struct._GimpItem*)*, void (%struct._GimpItem*)*, void (%struct._GimpItem*)*, i32 (%struct._GimpItem*)*, i32 (%struct._GimpItem*)*, %struct._GimpItemTree* (%struct._GimpItem*)*, %struct._GimpItem* (%struct._GimpItem*, i64)*, void (%struct._GimpItem*, %struct._GimpImage*)*, i32 (%struct._GimpItem*, i8*, i8*, %struct._GError**)*, void (%struct._GimpItem*, i32, i32, i32)*, void (%struct._GimpItem*, i32, i32, i32, i32, i32, %struct._GimpProgress*)*, void (%struct._GimpItem*, %struct._GimpContext*, i32, i32, i32, i32)*, void (%struct._GimpItem*, %struct._GimpContext*, i32, double, i32)*, void (%struct._GimpItem*, %struct._GimpContext*, i32, double, double, i32)*, void (%struct._GimpItem*, %struct._GimpContext*, %struct._GimpMatrix3*, i32, i32, i32, i32, %struct._GimpProgress*)*, i32 (%struct._GimpItem*, %struct._GimpDrawable*, %struct._GimpStrokeOptions*, i32, %struct._GimpProgress*, %struct._GError**)*, void (%struct._GimpItem*, i32, i32, i32, double, double)*, %struct._GeglNode* (%struct._GimpItem*)*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
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
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpItemTree = type opaque
%struct._GimpImage = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpProgress = type opaque
%struct._GimpMatrix3 = type { [3 x [3 x double]] }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpStrokeOptions = type opaque
%struct._GeglNode = type opaque
%struct._GimpTextUndo = type { %struct._GimpItemUndo, %struct._GimpText*, %struct._GParamSpec*, %struct._GValue*, i32 }
%struct._GimpItemUndo = type { %struct._GimpUndo, %struct._GimpItem* }
%struct._GimpUndo = type { %struct._GimpViewable, %struct._GimpImage*, i32, i32, i32, %struct._TempBuf*, i32 }
%struct._GimpText = type { %struct._GimpObject, i8*, i8*, i8*, i32, double, i32, i32, i32, i8*, i32, %struct._GimpRGB, i32, i32, double, double, double, i32, double, double, i32, %struct._GimpMatrix2, double, double, double }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpMatrix2 = type { [2 x [2 x double]] }
%struct._GimpUndoClass = type { %struct._GimpViewableClass, void (%struct._GimpUndo*, i32, %struct._GimpUndoAccumulator*)*, void (%struct._GimpUndo*, i32)* }
%struct._GimpUndoAccumulator = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpTextLayer = type { %struct._GimpLayer, %struct._GimpText*, i8*, i32, i32 }
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpLayerMask = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._BoundSeg = type opaque
%struct._GimpConfig = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_text_undo_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"GimpTextUndo\00", align 1
@gimp_text_undo_parent_class = internal global i8* null, align 8
@GimpTextUndo_private_offset = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"param\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Gimp-Text\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"gimptextundo.c\00", align 1
@__func__.gimp_text_undo_constructed = private unnamed_addr constant [27 x i8] c"gimp_text_undo_constructed\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"GIMP_IS_TEXT_LAYER (GIMP_ITEM_UNDO (text_undo)->item)\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"text_undo->pspec->owner_type == GIMP_TYPE_TEXT\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@__func__.gimp_text_undo_pop = private unnamed_addr constant [19 x i8] c"gimp_text_undo_pop\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"layer->text != NULL\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"modified\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_text_undo_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_text_undo_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_text_undo_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 576, void (i8*, i8*)* bitcast (void (i8*)* @gimp_text_undo_class_intern_init to void (i8*, i8*)*), i32 112, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpTextUndo*)* @gimp_text_undo_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_text_undo_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_text_undo_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_undo_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_undo_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_text_undo_parent_class, align 8
  %1 = load i32, i32* @GimpTextUndo_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpTextUndo_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpTextUndoClass*
  call void @gimp_text_undo_class_init(%struct._GimpTextUndoClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_undo_init(%struct._GimpTextUndo* %undo) #3 {
entry:
  %undo.addr = alloca %struct._GimpTextUndo*, align 8
  store %struct._GimpTextUndo* %undo, %struct._GimpTextUndo** %undo.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_undo_class_init(%struct._GimpTextUndoClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpTextUndoClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %gimp_object_class = alloca %struct._GimpObjectClass*, align 8
  %undo_class = alloca %struct._GimpUndoClass*, align 8
  store %struct._GimpTextUndoClass* %klass, %struct._GimpTextUndoClass** %klass.addr, align 8
  %0 = load %struct._GimpTextUndoClass*, %struct._GimpTextUndoClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpTextUndoClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpTextUndoClass*, %struct._GimpTextUndoClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpTextUndoClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_object_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpObjectClass*
  store %struct._GimpObjectClass* %5, %struct._GimpObjectClass** %gimp_object_class, align 8
  %6 = load %struct._GimpTextUndoClass*, %struct._GimpTextUndoClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpTextUndoClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_undo_get_type() #7
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpUndoClass*
  store %struct._GimpUndoClass* %8, %struct._GimpUndoClass** %undo_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_text_undo_constructed, void (%struct._GObject*)** %constructed, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_text_undo_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_text_undo_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %12 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %gimp_object_class, align 8
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %12, i32 0, i32 3
  store i64 (%struct._GimpObject*, i64*)* @gimp_text_undo_get_memsize, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %13 = load %struct._GimpUndoClass*, %struct._GimpUndoClass** %undo_class, align 8
  %pop = getelementptr inbounds %struct._GimpUndoClass, %struct._GimpUndoClass* %13, i32 0, i32 1
  store void (%struct._GimpUndo*, i32, %struct._GimpUndoAccumulator*)* @gimp_text_undo_pop, void (%struct._GimpUndo*, i32, %struct._GimpUndoAccumulator*)** %pop, align 8
  %14 = load %struct._GimpUndoClass*, %struct._GimpUndoClass** %undo_class, align 8
  %free = getelementptr inbounds %struct._GimpUndoClass, %struct._GimpUndoClass* %14, i32 0, i32 2
  store void (%struct._GimpUndo*, i32)* @gimp_text_undo_free, void (%struct._GimpUndo*, i32)** %free, align 8
  %15 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_param(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* null, i64 76, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %15, i32 1, %struct._GParamSpec* %call5)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_undo_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_text_undo_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %text_undo = alloca %struct._GimpTextUndo*, align 8
  %layer = alloca %struct._GimpTextLayer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_undo_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTextUndo*
  store %struct._GimpTextUndo* %2, %struct._GimpTextUndo** %text_undo, align 8
  %3 = load i8*, i8** @gimp_text_undo_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_text_undo_parent_class, align 8
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
  %12 = load %struct._GimpTextUndo*, %struct._GimpTextUndo** %text_undo, align 8
  %13 = bitcast %struct._GimpTextUndo* %12 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_item_undo_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call5)
  %14 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpItemUndo*
  %item = getelementptr inbounds %struct._GimpItemUndo, %struct._GimpItemUndo* %14, i32 0, i32 1
  %15 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %16 = bitcast %struct._GimpItem* %15 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %16, %struct._GTypeInstance** %__inst, align 8
  %call7 = call i64 @gimp_text_layer_get_type() #7
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
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 104, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_text_undo_constructed, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i32 0, i32 0)) #9
  unreachable

if.end.20:                                        ; preds = %if.then.18
  br label %do.end

do.end:                                           ; preds = %if.end.20
  %28 = load %struct._GimpTextUndo*, %struct._GimpTextUndo** %text_undo, align 8
  %29 = bitcast %struct._GimpTextUndo* %28 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_item_undo_get_type() #7
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call21)
  %30 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpItemUndo*
  %item23 = getelementptr inbounds %struct._GimpItemUndo, %struct._GimpItemUndo* %30, i32 0, i32 1
  %31 = load %struct._GimpItem*, %struct._GimpItem** %item23, align 8
  %32 = bitcast %struct._GimpItem* %31 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_text_layer_get_type() #7
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call24)
  %33 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpTextLayer*
  store %struct._GimpTextLayer* %33, %struct._GimpTextLayer** %layer, align 8
  %34 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %35 = bitcast %struct._GObject* %34 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_undo_get_type() #7
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call26)
  %36 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpUndo*
  %undo_type = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %36, i32 0, i32 3
  %37 = load i32, i32* %undo_type, align 4
  switch i32 %37, label %sw.default [
    i32 61, label %sw.bb
    i32 62, label %sw.bb.56
  ]

sw.bb:                                            ; preds = %do.end
  %38 = load %struct._GimpTextUndo*, %struct._GimpTextUndo** %text_undo, align 8
  %pspec = getelementptr inbounds %struct._GimpTextUndo, %struct._GimpTextUndo* %38, i32 0, i32 2
  %39 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %tobool28 = icmp ne %struct._GParamSpec* %39, null
  br i1 %tobool28, label %if.then.29, label %if.else.45

if.then.29:                                       ; preds = %sw.bb
  br label %do.body.30

do.body.30:                                       ; preds = %if.then.29
  %40 = load %struct._GimpTextUndo*, %struct._GimpTextUndo** %text_undo, align 8
  %pspec31 = getelementptr inbounds %struct._GimpTextUndo, %struct._GimpTextUndo* %40, i32 0, i32 2
  %41 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec31, align 8
  %owner_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %41, i32 0, i32 4
  %42 = load i64, i64* %owner_type, align 8
  %call32 = call i64 @gimp_text_get_type() #7
  %cmp33 = icmp eq i64 %42, %call32
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %do.body.30
  br label %if.end.36

if.else.35:                                       ; preds = %do.body.30
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 113, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_text_undo_constructed, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i32 0, i32 0)) #9
  unreachable

if.end.36:                                        ; preds = %if.then.34
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  %call38 = call noalias i8* @g_slice_alloc0(i64 24)
  %43 = bitcast i8* %call38 to %struct._GValue*
  %44 = load %struct._GimpTextUndo*, %struct._GimpTextUndo** %text_undo, align 8
  %value = getelementptr inbounds %struct._GimpTextUndo, %struct._GimpTextUndo* %44, i32 0, i32 3
  store %struct._GValue* %43, %struct._GValue** %value, align 8
  %45 = load %struct._GimpTextUndo*, %struct._GimpTextUndo** %text_undo, align 8
  %value39 = getelementptr inbounds %struct._GimpTextUndo, %struct._GimpTextUndo* %45, i32 0, i32 3
  %46 = load %struct._GValue*, %struct._GValue** %value39, align 8
  %47 = load %struct._GimpTextUndo*, %struct._GimpTextUndo** %text_undo, align 8
  %pspec40 = getelementptr inbounds %struct._GimpTextUndo, %struct._GimpTextUndo* %47, i32 0, i32 2
  %48 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec40, align 8
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %48, i32 0, i32 3
  %49 = load i64, i64* %value_type, align 8
  %call41 = call %struct._GValue* @g_value_init(%struct._GValue* %46, i64 %49)
  %50 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %text = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %50, i32 0, i32 1
  %51 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %52 = bitcast %struct._GimpText* %51 to %struct._GTypeInstance*
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 80)
  %53 = bitcast %struct._GTypeInstance* %call42 to %struct._GObject*
  %54 = load %struct._GimpTextUndo*, %struct._GimpTextUndo** %text_undo, align 8
  %pspec43 = getelementptr inbounds %struct._GimpTextUndo, %struct._GimpTextUndo* %54, i32 0, i32 2
  %55 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec43, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %55, i32 0, i32 1
  %56 = load i8*, i8** %name, align 8
  %57 = load %struct._GimpTextUndo*, %struct._GimpTextUndo** %text_undo, align 8
  %value44 = getelementptr inbounds %struct._GimpTextUndo, %struct._GimpTextUndo* %57, i32 0, i32 3
  %58 = load %struct._GValue*, %struct._GValue** %value44, align 8
  call void @g_object_get_property(%struct._GObject* %53, i8* %56, %struct._GValue* %58)
  br label %if.end.55

if.else.45:                                       ; preds = %sw.bb
  %59 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %text46 = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %59, i32 0, i32 1
  %60 = load %struct._GimpText*, %struct._GimpText** %text46, align 8
  %tobool47 = icmp ne %struct._GimpText* %60, null
  br i1 %tobool47, label %if.then.48, label %if.end.54

if.then.48:                                       ; preds = %if.else.45
  %61 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %text49 = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %61, i32 0, i32 1
  %62 = load %struct._GimpText*, %struct._GimpText** %text49, align 8
  %63 = bitcast %struct._GimpText* %62 to %struct._GTypeInstance*
  %call50 = call i64 @gimp_config_interface_get_type() #7
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call50)
  %64 = bitcast %struct._GTypeInstance* %call51 to %struct._GimpConfig*
  %call52 = call i8* @gimp_config_duplicate(%struct._GimpConfig* %64)
  %65 = bitcast i8* %call52 to %struct._GimpText*
  %66 = load %struct._GimpTextUndo*, %struct._GimpTextUndo** %text_undo, align 8
  %text53 = getelementptr inbounds %struct._GimpTextUndo, %struct._GimpTextUndo* %66, i32 0, i32 1
  store %struct._GimpText* %65, %struct._GimpText** %text53, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.48, %if.else.45
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %do.end.37
  br label %sw.epilog

sw.bb.56:                                         ; preds = %do.end
  %67 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %modified = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %67, i32 0, i32 4
  %68 = load i32, i32* %modified, align 4
  %69 = load %struct._GimpTextUndo*, %struct._GimpTextUndo** %text_undo, align 8
  %modified57 = getelementptr inbounds %struct._GimpTextUndo, %struct._GimpTextUndo* %69, i32 0, i32 4
  store i32 %68, i32* %modified57, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %do.body.58

do.body.58:                                       ; preds = %sw.default
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 132, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_text_undo_constructed, i32 0, i32 0), i8* null) #9
  unreachable

do.end.59:                                        ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.59, %sw.bb.56, %if.end.55
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_undo_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %text_undo = alloca %struct._GimpTextUndo*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_undo_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTextUndo*
  store %struct._GimpTextUndo* %2, %struct._GimpTextUndo** %text_undo, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call %struct._GParamSpec* @g_value_get_param(%struct._GValue* %4)
  %5 = load %struct._GimpTextUndo*, %struct._GimpTextUndo** %text_undo, align 8
  %pspec3 = getelementptr inbounds %struct._GimpTextUndo, %struct._GimpTextUndo* %5, i32 0, i32 2
  store %struct._GParamSpec* %call2, %struct._GParamSpec** %pspec3, align 8
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
  %call4 = call i8* @g_type_name(i64 %15)
  %16 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %17 = bitcast %struct._GObject* %16 to %struct._GTypeInstance*
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type6 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %18, i32 0, i32 0
  %19 = load i64, i64* %g_type6, align 8
  %call7 = call i8* @g_type_name(i64 %19)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 151, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 %9, i8* %11, i8* %call4, i8* %call7)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_undo_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %text_undo = alloca %struct._GimpTextUndo*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_undo_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTextUndo*
  store %struct._GimpTextUndo* %2, %struct._GimpTextUndo** %text_undo, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpTextUndo*, %struct._GimpTextUndo** %text_undo, align 8
  %pspec2 = getelementptr inbounds %struct._GimpTextUndo, %struct._GimpTextUndo* %5, i32 0, i32 2
  %6 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec2, align 8
  call void @g_value_set_param(%struct._GValue* %4, %struct._GParamSpec* %6)
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
  %call3 = call i8* @g_type_name(i64 %16)
  %17 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %18 = bitcast %struct._GObject* %17 to %struct._GTypeInstance*
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type5, align 8
  %call6 = call i8* @g_type_name(i64 %20)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 171, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 %10, i8* %12, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @gimp_text_undo_get_memsize(%struct._GimpObject* %object, i64* %gui_size) #3 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %gui_size.addr = alloca i64*, align 8
  %undo = alloca %struct._GimpTextUndo*, align 8
  %memsize = alloca i64, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i64* %gui_size, i64** %gui_size.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_undo_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTextUndo*
  store %struct._GimpTextUndo* %2, %struct._GimpTextUndo** %undo, align 8
  store i64 0, i64* %memsize, align 8
  %3 = load %struct._GimpTextUndo*, %struct._GimpTextUndo** %undo, align 8
  %value = getelementptr inbounds %struct._GimpTextUndo, %struct._GimpTextUndo* %3, i32 0, i32 3
  %4 = load %struct._GValue*, %struct._GValue** %value, align 8
  %call2 = call i64 @gimp_g_value_get_memsize(%struct._GValue* %4)
  %5 = load i64, i64* %memsize, align 8
  %add = add nsw i64 %5, %call2
  store i64 %add, i64* %memsize, align 8
  %6 = load %struct._GimpTextUndo*, %struct._GimpTextUndo** %undo, align 8
  %text = getelementptr inbounds %struct._GimpTextUndo, %struct._GimpTextUndo* %6, i32 0, i32 1
  %7 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %8 = bitcast %struct._GimpText* %7 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_object_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call3)
  %9 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpObject*
  %call5 = call i64 @gimp_object_get_memsize(%struct._GimpObject* %9, i64* null)
  %10 = load i64, i64* %memsize, align 8
  %add6 = add nsw i64 %10, %call5
  store i64 %add6, i64* %memsize, align 8
  %11 = load i64, i64* %memsize, align 8
  %12 = load i8*, i8** @gimp_text_undo_parent_class, align 8
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
define internal void @gimp_text_undo_pop(%struct._GimpUndo* %undo, i32 %undo_mode, %struct._GimpUndoAccumulator* %accum) #3 {
entry:
  %undo.addr = alloca %struct._GimpUndo*, align 8
  %undo_mode.addr = alloca i32, align 4
  %accum.addr = alloca %struct._GimpUndoAccumulator*, align 8
  %text_undo = alloca %struct._GimpTextUndo*, align 8
  %layer = alloca %struct._GimpTextLayer*, align 8
  %value = alloca %struct._GValue*, align 8
  %text26 = alloca %struct._GimpText*, align 8
  %modified = alloca i32, align 4
  store %struct._GimpUndo* %undo, %struct._GimpUndo** %undo.addr, align 8
  store i32 %undo_mode, i32* %undo_mode.addr, align 4
  store %struct._GimpUndoAccumulator* %accum, %struct._GimpUndoAccumulator** %accum.addr, align 8
  %0 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %1 = bitcast %struct._GimpUndo* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_undo_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTextUndo*
  store %struct._GimpTextUndo* %2, %struct._GimpTextUndo** %text_undo, align 8
  %3 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %4 = bitcast %struct._GimpUndo* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_item_undo_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpItemUndo*
  %item = getelementptr inbounds %struct._GimpItemUndo, %struct._GimpItemUndo* %5, i32 0, i32 1
  %6 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %7 = bitcast %struct._GimpItem* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_text_layer_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpTextLayer*
  store %struct._GimpTextLayer* %8, %struct._GimpTextLayer** %layer, align 8
  %9 = load i8*, i8** @gimp_text_undo_parent_class, align 8
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
  %16 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %undo_type = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %16, i32 0, i32 3
  %17 = load i32, i32* %undo_type, align 4
  switch i32 %17, label %sw.default [
    i32 61, label %sw.bb
    i32 62, label %sw.bb.53
  ]

sw.bb:                                            ; preds = %entry
  %18 = load %struct._GimpTextUndo*, %struct._GimpTextUndo** %text_undo, align 8
  %pspec = getelementptr inbounds %struct._GimpTextUndo, %struct._GimpTextUndo* %18, i32 0, i32 2
  %19 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %tobool = icmp ne %struct._GParamSpec* %19, null
  br i1 %tobool, label %if.then, label %if.else.25

if.then:                                          ; preds = %sw.bb
  br label %do.body

do.body:                                          ; preds = %if.then
  %20 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %text = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %20, i32 0, i32 1
  %21 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %cmp = icmp ne %struct._GimpText* %21, null
  br i1 %cmp, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_text_undo_pop, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0))
  br label %sw.epilog

if.end:                                           ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end
  %call9 = call noalias i8* @g_slice_alloc0(i64 24)
  %22 = bitcast i8* %call9 to %struct._GValue*
  store %struct._GValue* %22, %struct._GValue** %value, align 8
  %23 = load %struct._GValue*, %struct._GValue** %value, align 8
  %24 = load %struct._GimpTextUndo*, %struct._GimpTextUndo** %text_undo, align 8
  %pspec10 = getelementptr inbounds %struct._GimpTextUndo, %struct._GimpTextUndo* %24, i32 0, i32 2
  %25 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec10, align 8
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %25, i32 0, i32 3
  %26 = load i64, i64* %value_type, align 8
  %call11 = call %struct._GValue* @g_value_init(%struct._GValue* %23, i64 %26)
  %27 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %text12 = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %27, i32 0, i32 1
  %28 = load %struct._GimpText*, %struct._GimpText** %text12, align 8
  %29 = bitcast %struct._GimpText* %28 to %struct._GTypeInstance*
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 80)
  %30 = bitcast %struct._GTypeInstance* %call13 to %struct._GObject*
  %31 = load %struct._GimpTextUndo*, %struct._GimpTextUndo** %text_undo, align 8
  %pspec14 = getelementptr inbounds %struct._GimpTextUndo, %struct._GimpTextUndo* %31, i32 0, i32 2
  %32 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec14, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %32, i32 0, i32 1
  %33 = load i8*, i8** %name, align 8
  %34 = load %struct._GValue*, %struct._GValue** %value, align 8
  call void @g_object_get_property(%struct._GObject* %30, i8* %33, %struct._GValue* %34)
  %35 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %text15 = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %35, i32 0, i32 1
  %36 = load %struct._GimpText*, %struct._GimpText** %text15, align 8
  %37 = bitcast %struct._GimpText* %36 to %struct._GTypeInstance*
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 80)
  %38 = bitcast %struct._GTypeInstance* %call16 to %struct._GObject*
  %39 = load %struct._GimpTextUndo*, %struct._GimpTextUndo** %text_undo, align 8
  %pspec17 = getelementptr inbounds %struct._GimpTextUndo, %struct._GimpTextUndo* %39, i32 0, i32 2
  %40 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec17, align 8
  %name18 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %40, i32 0, i32 1
  %41 = load i8*, i8** %name18, align 8
  %42 = load %struct._GimpTextUndo*, %struct._GimpTextUndo** %text_undo, align 8
  %value19 = getelementptr inbounds %struct._GimpTextUndo, %struct._GimpTextUndo* %42, i32 0, i32 3
  %43 = load %struct._GValue*, %struct._GValue** %value19, align 8
  call void @g_object_set_property(%struct._GObject* %38, i8* %41, %struct._GValue* %43)
  %44 = load %struct._GimpTextUndo*, %struct._GimpTextUndo** %text_undo, align 8
  %value20 = getelementptr inbounds %struct._GimpTextUndo, %struct._GimpTextUndo* %44, i32 0, i32 3
  %45 = load %struct._GValue*, %struct._GValue** %value20, align 8
  call void @g_value_unset(%struct._GValue* %45)
  br label %do.body.21

do.body.21:                                       ; preds = %do.end
  %46 = load %struct._GimpTextUndo*, %struct._GimpTextUndo** %text_undo, align 8
  %value22 = getelementptr inbounds %struct._GimpTextUndo, %struct._GimpTextUndo* %46, i32 0, i32 3
  %47 = load %struct._GValue*, %struct._GValue** %value22, align 8
  %48 = bitcast %struct._GValue* %47 to i8*
  call void @g_slice_free1(i64 24, i8* %48)
  br label %do.end.23

do.end.23:                                        ; preds = %do.body.21
  %49 = load %struct._GValue*, %struct._GValue** %value, align 8
  %50 = load %struct._GimpTextUndo*, %struct._GimpTextUndo** %text_undo, align 8
  %value24 = getelementptr inbounds %struct._GimpTextUndo, %struct._GimpTextUndo* %50, i32 0, i32 3
  store %struct._GValue* %49, %struct._GValue** %value24, align 8
  br label %if.end.52

if.else.25:                                       ; preds = %sw.bb
  %51 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %text27 = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %51, i32 0, i32 1
  %52 = load %struct._GimpText*, %struct._GimpText** %text27, align 8
  %tobool28 = icmp ne %struct._GimpText* %52, null
  br i1 %tobool28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.25
  %53 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %text29 = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %53, i32 0, i32 1
  %54 = load %struct._GimpText*, %struct._GimpText** %text29, align 8
  %55 = bitcast %struct._GimpText* %54 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_config_interface_get_type() #7
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call30)
  %56 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpConfig*
  %call32 = call i8* @gimp_config_duplicate(%struct._GimpConfig* %56)
  br label %cond.end

cond.false:                                       ; preds = %if.else.25
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call32, %cond.true ], [ null, %cond.false ]
  %57 = bitcast i8* %cond to %struct._GimpText*
  store %struct._GimpText* %57, %struct._GimpText** %text26, align 8
  %58 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %text33 = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %58, i32 0, i32 1
  %59 = load %struct._GimpText*, %struct._GimpText** %text33, align 8
  %tobool34 = icmp ne %struct._GimpText* %59, null
  br i1 %tobool34, label %land.lhs.true, label %if.else.43

land.lhs.true:                                    ; preds = %cond.end
  %60 = load %struct._GimpTextUndo*, %struct._GimpTextUndo** %text_undo, align 8
  %text35 = getelementptr inbounds %struct._GimpTextUndo, %struct._GimpTextUndo* %60, i32 0, i32 1
  %61 = load %struct._GimpText*, %struct._GimpText** %text35, align 8
  %tobool36 = icmp ne %struct._GimpText* %61, null
  br i1 %tobool36, label %if.then.37, label %if.else.43

if.then.37:                                       ; preds = %land.lhs.true
  %62 = load %struct._GimpTextUndo*, %struct._GimpTextUndo** %text_undo, align 8
  %text38 = getelementptr inbounds %struct._GimpTextUndo, %struct._GimpTextUndo* %62, i32 0, i32 1
  %63 = load %struct._GimpText*, %struct._GimpText** %text38, align 8
  %64 = bitcast %struct._GimpText* %63 to %struct._GTypeInstance*
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 80)
  %65 = bitcast %struct._GTypeInstance* %call39 to %struct._GObject*
  %66 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %text40 = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %66, i32 0, i32 1
  %67 = load %struct._GimpText*, %struct._GimpText** %text40, align 8
  %68 = bitcast %struct._GimpText* %67 to %struct._GTypeInstance*
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 80)
  %69 = bitcast %struct._GTypeInstance* %call41 to %struct._GObject*
  %call42 = call i32 @gimp_config_sync(%struct._GObject* %65, %struct._GObject* %69, i32 0)
  br label %if.end.45

if.else.43:                                       ; preds = %land.lhs.true, %cond.end
  %70 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %71 = load %struct._GimpTextUndo*, %struct._GimpTextUndo** %text_undo, align 8
  %text44 = getelementptr inbounds %struct._GimpTextUndo, %struct._GimpTextUndo* %71, i32 0, i32 1
  %72 = load %struct._GimpText*, %struct._GimpText** %text44, align 8
  call void @gimp_text_layer_set_text(%struct._GimpTextLayer* %70, %struct._GimpText* %72)
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.43, %if.then.37
  %73 = load %struct._GimpTextUndo*, %struct._GimpTextUndo** %text_undo, align 8
  %text46 = getelementptr inbounds %struct._GimpTextUndo, %struct._GimpTextUndo* %73, i32 0, i32 1
  %74 = load %struct._GimpText*, %struct._GimpText** %text46, align 8
  %tobool47 = icmp ne %struct._GimpText* %74, null
  br i1 %tobool47, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %if.end.45
  %75 = load %struct._GimpTextUndo*, %struct._GimpTextUndo** %text_undo, align 8
  %text49 = getelementptr inbounds %struct._GimpTextUndo, %struct._GimpTextUndo* %75, i32 0, i32 1
  %76 = load %struct._GimpText*, %struct._GimpText** %text49, align 8
  %77 = bitcast %struct._GimpText* %76 to i8*
  call void @g_object_unref(i8* %77)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.48, %if.end.45
  %78 = load %struct._GimpText*, %struct._GimpText** %text26, align 8
  %79 = load %struct._GimpTextUndo*, %struct._GimpTextUndo** %text_undo, align 8
  %text51 = getelementptr inbounds %struct._GimpTextUndo, %struct._GimpTextUndo* %79, i32 0, i32 1
  store %struct._GimpText* %78, %struct._GimpText** %text51, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.50, %do.end.23
  br label %sw.epilog

sw.bb.53:                                         ; preds = %entry
  %80 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %modified54 = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %80, i32 0, i32 4
  %81 = load i32, i32* %modified54, align 4
  store i32 %81, i32* %modified, align 4
  %82 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %83 = bitcast %struct._GimpTextLayer* %82 to i8*
  %84 = load %struct._GimpTextUndo*, %struct._GimpTextUndo** %text_undo, align 8
  %modified55 = getelementptr inbounds %struct._GimpTextUndo, %struct._GimpTextUndo* %84, i32 0, i32 4
  %85 = load i32, i32* %modified55, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %83, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 %85, i8* null)
  %86 = load i32, i32* %modified, align 4
  %87 = load %struct._GimpTextUndo*, %struct._GimpTextUndo** %text_undo, align 8
  %modified56 = getelementptr inbounds %struct._GimpTextUndo, %struct._GimpTextUndo* %87, i32 0, i32 4
  store i32 %86, i32* %modified56, align 4
  %88 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %89 = bitcast %struct._GimpTextLayer* %88 to %struct._GTypeInstance*
  %call57 = call i64 @gimp_viewable_get_type() #7
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %89, i64 %call57)
  %90 = bitcast %struct._GTypeInstance* %call58 to %struct._GimpViewable*
  call void @gimp_viewable_invalidate_preview(%struct._GimpViewable* %90)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body.59

do.body.59:                                       ; preds = %sw.default
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 262, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_text_undo_pop, i32 0, i32 0), i8* null) #9
  unreachable

do.end.60:                                        ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %do.end.60, %sw.bb.53, %if.end.52
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_undo_free(%struct._GimpUndo* %undo, i32 %undo_mode) #3 {
entry:
  %undo.addr = alloca %struct._GimpUndo*, align 8
  %undo_mode.addr = alloca i32, align 4
  %text_undo = alloca %struct._GimpTextUndo*, align 8
  store %struct._GimpUndo* %undo, %struct._GimpUndo** %undo.addr, align 8
  store i32 %undo_mode, i32* %undo_mode.addr, align 4
  %0 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %1 = bitcast %struct._GimpUndo* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_undo_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTextUndo*
  store %struct._GimpTextUndo* %2, %struct._GimpTextUndo** %text_undo, align 8
  %3 = load %struct._GimpTextUndo*, %struct._GimpTextUndo** %text_undo, align 8
  %text = getelementptr inbounds %struct._GimpTextUndo, %struct._GimpTextUndo* %3, i32 0, i32 1
  %4 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %tobool = icmp ne %struct._GimpText* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpTextUndo*, %struct._GimpTextUndo** %text_undo, align 8
  %text2 = getelementptr inbounds %struct._GimpTextUndo, %struct._GimpTextUndo* %5, i32 0, i32 1
  %6 = load %struct._GimpText*, %struct._GimpText** %text2, align 8
  %7 = bitcast %struct._GimpText* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load %struct._GimpTextUndo*, %struct._GimpTextUndo** %text_undo, align 8
  %text3 = getelementptr inbounds %struct._GimpTextUndo, %struct._GimpTextUndo* %8, i32 0, i32 1
  store %struct._GimpText* null, %struct._GimpText** %text3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpTextUndo*, %struct._GimpTextUndo** %text_undo, align 8
  %pspec = getelementptr inbounds %struct._GimpTextUndo, %struct._GimpTextUndo* %9, i32 0, i32 2
  %10 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %tobool4 = icmp ne %struct._GParamSpec* %10, null
  br i1 %tobool4, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %if.end
  %11 = load %struct._GimpTextUndo*, %struct._GimpTextUndo** %text_undo, align 8
  %value = getelementptr inbounds %struct._GimpTextUndo, %struct._GimpTextUndo* %11, i32 0, i32 3
  %12 = load %struct._GValue*, %struct._GValue** %value, align 8
  call void @g_value_unset(%struct._GValue* %12)
  br label %do.body

do.body:                                          ; preds = %if.then.5
  %13 = load %struct._GimpTextUndo*, %struct._GimpTextUndo** %text_undo, align 8
  %value6 = getelementptr inbounds %struct._GimpTextUndo, %struct._GimpTextUndo* %13, i32 0, i32 3
  %14 = load %struct._GValue*, %struct._GValue** %value6, align 8
  %15 = bitcast %struct._GValue* %14 to i8*
  call void @g_slice_free1(i64 24, i8* %15)
  br label %do.end

do.end:                                           ; preds = %do.body
  %16 = load %struct._GimpTextUndo*, %struct._GimpTextUndo** %text_undo, align 8
  %value7 = getelementptr inbounds %struct._GimpTextUndo, %struct._GimpTextUndo* %16, i32 0, i32 3
  store %struct._GValue* null, %struct._GValue** %value7, align 8
  %17 = load %struct._GimpTextUndo*, %struct._GimpTextUndo** %text_undo, align 8
  %pspec8 = getelementptr inbounds %struct._GimpTextUndo, %struct._GimpTextUndo* %17, i32 0, i32 2
  store %struct._GParamSpec* null, %struct._GParamSpec** %pspec8, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %do.end, %if.end
  %18 = load i8*, i8** @gimp_text_undo_parent_class, align 8
  %19 = bitcast i8* %18 to %struct._GTypeClass*
  %call10 = call i64 @gimp_undo_get_type() #7
  %call11 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %19, i64 %call10)
  %20 = bitcast %struct._GTypeClass* %call11 to %struct._GimpUndoClass*
  %free = getelementptr inbounds %struct._GimpUndoClass, %struct._GimpUndoClass* %20, i32 0, i32 2
  %21 = load void (%struct._GimpUndo*, i32)*, void (%struct._GimpUndo*, i32)** %free, align 8
  %22 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %23 = load i32, i32* %undo_mode.addr, align 4
  call void %21(%struct._GimpUndo* %22, i32 %23)
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_param(i8*, i8*, i8*, i64, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_text_layer_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

; Function Attrs: nounwind readnone
declare i64 @gimp_text_get_type() #2

declare noalias i8* @g_slice_alloc0(i64) #1

declare %struct._GValue* @g_value_init(%struct._GValue*, i64) #1

declare void @g_object_get_property(%struct._GObject*, i8*, %struct._GValue*) #1

declare i8* @gimp_config_duplicate(%struct._GimpConfig*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #2

declare %struct._GParamSpec* @g_value_get_param(%struct._GValue*) #1

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
declare void @llvm.va_start(i8*) #6

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare void @g_value_set_param(%struct._GValue*, %struct._GParamSpec*) #1

declare i64 @gimp_g_value_get_memsize(%struct._GValue*) #1

declare i64 @gimp_object_get_memsize(%struct._GimpObject*, i64*) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare void @g_object_set_property(%struct._GObject*, i8*, %struct._GValue*) #1

declare void @g_value_unset(%struct._GValue*) #1

declare void @g_slice_free1(i64, i8*) #1

declare i32 @gimp_config_sync(%struct._GObject*, %struct._GObject*, i32) #1

declare void @gimp_text_layer_set_text(%struct._GimpTextLayer*, %struct._GimpText*) #1

declare void @g_object_unref(i8*) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare void @gimp_viewable_invalidate_preview(%struct._GimpViewable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

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
