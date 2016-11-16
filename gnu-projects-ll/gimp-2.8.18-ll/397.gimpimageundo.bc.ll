; ModuleID = './app/core/gimpimageundo.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpImageUndoClass = type { %struct._GimpUndoClass }
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
%struct._GimpImageUndo = type { %struct._GimpUndo, i32, i32, i32, i32, i32, i32, i32, double, double, i32, %struct._GimpGrid*, i32, i8*, i8*, %struct._GimpParasite* }
%struct._GimpGrid = type { %struct._GimpObject, i32, %struct._GimpRGB, %struct._GimpRGB, double, double, i32, double, double, i32 }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParasite = type { i8*, i32, i32, i8* }
%struct._GimpConfig = type opaque
%struct._GimpImagePrivate = type { i32, %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure*, i8*, i8*, i32, i32, double, double, i32, i32, i8*, i32, %struct._GimpPalette*, i32, i32, i32, i32, i32, i32, i32, %struct._GimpProjection*, %struct._GeglNode*, %struct._GList*, %struct._GimpGrid*, %struct._GList*, %struct._GimpItemTree*, %struct._GimpItemTree*, %struct._GimpItemTree*, %struct._GSList*, i32, i32, i32, %struct._GimpLayer*, %struct._GimpChannel*, %struct._GimpParasiteList*, [4 x i32], [4 x i32], i32, i32, %struct._GimpRGB, %struct._GimpUndoStack*, %struct._GimpUndoStack*, i32, i32, %struct._TempBuf*, %struct._GimpImageFlushAccumulator }
%struct._GimpPlugInProcedure = type opaque
%struct._GimpPalette = type opaque
%struct._GimpProjection = type opaque
%struct._GeglNode = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpItemTree = type opaque
%struct._GimpLayer = type opaque
%struct._GimpChannel = type opaque
%struct._GimpParasiteList = type { %struct._GimpObject, %struct._GHashTable* }
%struct._GHashTable = type opaque
%struct._GimpUndoStack = type opaque
%struct._GimpImageFlushAccumulator = type { i32, i32, i32, i32 }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpColorManaged = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_image_undo_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"GimpImageUndo\00", align 1
@gimp_image_undo_parent_class = internal global i8* null, align 8
@GimpImageUndo_private_offset = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"previous-origin-x\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"previous-origin-y\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"previous-width\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"previous-height\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"grid\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"parasite-name\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"gimpimageundo.c\00", align 1
@__func__.gimp_image_undo_constructed = private unnamed_addr constant [28 x i8] c"gimp_image_undo_constructed\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"GIMP_IS_GRID (image_undo->grid)\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"image_undo->parasite_name != NULL\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"base-type\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"icc-profile\00", align 1
@__func__.gimp_image_undo_pop = private unnamed_addr constant [20 x i8] c"gimp_image_undo_pop\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_image_undo_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_image_undo_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_image_undo_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_undo_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 296, void (i8*, i8*)* bitcast (void (i8*)* @gimp_image_undo_class_intern_init to void (i8*, i8*)*), i32 168, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpImageUndo*)* @gimp_image_undo_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_image_undo_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_image_undo_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_undo_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_image_undo_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_image_undo_parent_class, align 8
  %1 = load i32, i32* @GimpImageUndo_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpImageUndo_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpImageUndoClass*
  call void @gimp_image_undo_class_init(%struct._GimpImageUndoClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_undo_init(%struct._GimpImageUndo* %undo) #3 {
entry:
  %undo.addr = alloca %struct._GimpImageUndo*, align 8
  store %struct._GimpImageUndo* %undo, %struct._GimpImageUndo** %undo.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_image_undo_class_init(%struct._GimpImageUndoClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpImageUndoClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %gimp_object_class = alloca %struct._GimpObjectClass*, align 8
  %undo_class = alloca %struct._GimpUndoClass*, align 8
  store %struct._GimpImageUndoClass* %klass, %struct._GimpImageUndoClass** %klass.addr, align 8
  %0 = load %struct._GimpImageUndoClass*, %struct._GimpImageUndoClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpImageUndoClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpImageUndoClass*, %struct._GimpImageUndoClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpImageUndoClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_object_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpObjectClass*
  store %struct._GimpObjectClass* %5, %struct._GimpObjectClass** %gimp_object_class, align 8
  %6 = load %struct._GimpImageUndoClass*, %struct._GimpImageUndoClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpImageUndoClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_undo_get_type() #7
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpUndoClass*
  store %struct._GimpUndoClass* %8, %struct._GimpUndoClass** %undo_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_image_undo_constructed, void (%struct._GObject*)** %constructed, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_image_undo_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_image_undo_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %12 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %gimp_object_class, align 8
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %12, i32 0, i32 3
  store i64 (%struct._GimpObject*, i64*)* @gimp_image_undo_get_memsize, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %13 = load %struct._GimpUndoClass*, %struct._GimpUndoClass** %undo_class, align 8
  %pop = getelementptr inbounds %struct._GimpUndoClass, %struct._GimpUndoClass* %13, i32 0, i32 1
  store void (%struct._GimpUndo*, i32, %struct._GimpUndoAccumulator*)* @gimp_image_undo_pop, void (%struct._GimpUndo*, i32, %struct._GimpUndoAccumulator*)** %pop, align 8
  %14 = load %struct._GimpUndoClass*, %struct._GimpUndoClass** %undo_class, align 8
  %free = getelementptr inbounds %struct._GimpUndoClass, %struct._GimpUndoClass* %14, i32 0, i32 2
  store void (%struct._GimpUndo*, i32)* @gimp_image_undo_free, void (%struct._GimpUndo*, i32)** %free, align 8
  %15 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* null, i32 -262144, i32 262144, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %15, i32 1, %struct._GParamSpec* %call5)
  %16 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* null, i8* null, i32 -262144, i32 262144, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %16, i32 2, %struct._GParamSpec* %call6)
  %17 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call7 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* null, i32 -262144, i32 262144, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %17, i32 3, %struct._GParamSpec* %call7)
  %18 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call8 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null, i32 -262144, i32 262144, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %18, i32 4, %struct._GParamSpec* %call8)
  %19 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call9 = call i64 @gimp_grid_get_type() #7
  %call10 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, i64 %call9, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %19, i32 5, %struct._GParamSpec* %call10)
  %20 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call11 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, i8* null, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %20, i32 6, %struct._GParamSpec* %call11)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_image_undo_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %image_undo = alloca %struct._GimpImageUndo*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_undo_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageUndo*
  store %struct._GimpImageUndo* %2, %struct._GimpImageUndo** %image_undo, align 8
  %3 = load i8*, i8** @gimp_image_undo_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_image_undo_parent_class, align 8
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
  %call5 = call i64 @gimp_undo_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call5)
  %14 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpUndo*
  %image7 = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %14, i32 0, i32 1
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image7, align 8
  store %struct._GimpImage* %15, %struct._GimpImage** %image, align 8
  %16 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %17 = bitcast %struct._GObject* %16 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_undo_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call8)
  %18 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpUndo*
  %undo_type = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %18, i32 0, i32 3
  %19 = load i32, i32* %undo_type, align 4
  switch i32 %19, label %sw.default [
    i32 38, label %sw.bb
    i32 39, label %sw.bb.11
    i32 40, label %sw.bb.14
    i32 41, label %sw.bb.16
    i32 42, label %sw.bb.31
    i32 78, label %sw.bb.35
    i32 79, label %sw.bb.35
  ]

sw.bb:                                            ; preds = %if.end
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call10 = call i32 @gimp_image_base_type(%struct._GimpImage* %20)
  %21 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %base_type = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %21, i32 0, i32 1
  store i32 %call10, i32* %base_type, align 4
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.end
  %22 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call12 = call i32 @gimp_image_get_width(%struct._GimpImage* %22)
  %23 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %width = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %23, i32 0, i32 2
  store i32 %call12, i32* %width, align 4
  %24 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call13 = call i32 @gimp_image_get_height(%struct._GimpImage* %24)
  %25 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %height = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %25, i32 0, i32 3
  store i32 %call13, i32* %height, align 4
  br label %sw.epilog

sw.bb.14:                                         ; preds = %if.end
  %26 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %27 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %xresolution = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %27, i32 0, i32 8
  %28 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %yresolution = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %28, i32 0, i32 9
  call void @gimp_image_get_resolution(%struct._GimpImage* %26, double* %xresolution, double* %yresolution)
  %29 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call15 = call i32 @gimp_image_get_unit(%struct._GimpImage* %29)
  %30 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %resolution_unit = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %30, i32 0, i32 10
  store i32 %call15, i32* %resolution_unit, align 4
  br label %sw.epilog

sw.bb.16:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %sw.bb.16
  %31 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %grid = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %31, i32 0, i32 11
  %32 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %33 = bitcast %struct._GimpGrid* %32 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %33, %struct._GTypeInstance** %__inst, align 8
  %call17 = call i64 @gimp_grid_get_type() #7
  store i64 %call17, i64* %__t, align 8
  %34 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool18 = icmp ne %struct._GTypeInstance* %34, null
  br i1 %tobool18, label %if.else, label %if.then.19

if.then.19:                                       ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.26

if.else:                                          ; preds = %do.body
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %35, i32 0, i32 0
  %36 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool20 = icmp ne %struct._GTypeClass* %36, null
  br i1 %tobool20, label %land.lhs.true, label %if.else.23

land.lhs.true:                                    ; preds = %if.else
  %37 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class21 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %37, i32 0, i32 0
  %38 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class21, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %38, i32 0, i32 0
  %39 = load i64, i64* %g_type, align 8
  %40 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %39, %40
  br i1 %cmp, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.25

if.else.23:                                       ; preds = %land.lhs.true, %if.else
  %41 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %42 = load i64, i64* %__t, align 8
  %call24 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %41, i64 %42) #8
  store i32 %call24, i32* %__r, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.23, %if.then.22
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.19
  %43 = load i32, i32* %__r, align 4
  store i32 %43, i32* %tmp
  %44 = load i32, i32* %tmp
  %tobool27 = icmp ne i32 %44, 0
  br i1 %tobool27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %if.end.26
  br label %if.end.30

if.else.29:                                       ; preds = %if.end.26
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i32 176, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_image_undo_constructed, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i32 0, i32 0)) #9
  unreachable

if.end.30:                                        ; preds = %if.then.28
  br label %do.end

do.end:                                           ; preds = %if.end.30
  br label %sw.epilog

sw.bb.31:                                         ; preds = %if.end
  %45 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call32 = call i32 @gimp_image_get_colormap_size(%struct._GimpImage* %45)
  %46 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %num_colors = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %46, i32 0, i32 12
  store i32 %call32, i32* %num_colors, align 4
  %47 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call33 = call i8* @gimp_image_get_colormap(%struct._GimpImage* %47)
  %call34 = call noalias i8* @g_memdup(i8* %call33, i32 768)
  %48 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %colormap = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %48, i32 0, i32 13
  store i8* %call34, i8** %colormap, align 8
  br label %sw.epilog

sw.bb.35:                                         ; preds = %if.end, %if.end
  br label %do.body.36

do.body.36:                                       ; preds = %sw.bb.35
  %49 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %parasite_name = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %49, i32 0, i32 14
  %50 = load i8*, i8** %parasite_name, align 8
  %cmp37 = icmp ne i8* %50, null
  br i1 %cmp37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %do.body.36
  br label %if.end.40

if.else.39:                                       ; preds = %do.body.36
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i32 187, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_image_undo_constructed, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i32 0, i32 0)) #9
  unreachable

if.end.40:                                        ; preds = %if.then.38
  br label %do.end.41

do.end.41:                                        ; preds = %if.end.40
  %51 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %52 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %parasite_name42 = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %52, i32 0, i32 14
  %53 = load i8*, i8** %parasite_name42, align 8
  %call43 = call %struct._GimpParasite* @gimp_image_parasite_find(%struct._GimpImage* %51, i8* %53)
  %call44 = call %struct._GimpParasite* @gimp_parasite_copy(%struct._GimpParasite* %call43)
  %54 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %parasite = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %54, i32 0, i32 15
  store %struct._GimpParasite* %call44, %struct._GimpParasite** %parasite, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %do.body.45

do.body.45:                                       ; preds = %sw.default
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i32 194, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_image_undo_constructed, i32 0, i32 0), i8* null) #9
  unreachable

do.end.46:                                        ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.46, %do.end.41, %sw.bb.31, %do.end, %sw.bb.14, %sw.bb.11, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_undo_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %image_undo = alloca %struct._GimpImageUndo*, align 8
  %grid = alloca %struct._GimpGrid*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_undo_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageUndo*
  store %struct._GimpImageUndo* %2, %struct._GimpImageUndo** %image_undo, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.7
    i32 5, label %sw.bb.9
    i32 6, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i32 @g_value_get_int(%struct._GValue* %4)
  %5 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %previous_origin_x = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %5, i32 0, i32 4
  store i32 %call2, i32* %previous_origin_x, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %6 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i32 @g_value_get_int(%struct._GValue* %6)
  %7 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %previous_origin_y = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %7, i32 0, i32 5
  store i32 %call4, i32* %previous_origin_y, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call i32 @g_value_get_int(%struct._GValue* %8)
  %9 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %previous_width = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %9, i32 0, i32 6
  store i32 %call6, i32* %previous_width, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call8 = call i32 @g_value_get_int(%struct._GValue* %10)
  %11 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %previous_height = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %11, i32 0, i32 7
  store i32 %call8, i32* %previous_height, align 4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %12 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call10 = call i8* @g_value_get_object(%struct._GValue* %12)
  %13 = bitcast i8* %call10 to %struct._GimpGrid*
  store %struct._GimpGrid* %13, %struct._GimpGrid** %grid, align 8
  %14 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %tobool = icmp ne %struct._GimpGrid* %14, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.9
  %15 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %16 = bitcast %struct._GimpGrid* %15 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_config_interface_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call11)
  %17 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpConfig*
  %call13 = call i8* @gimp_config_duplicate(%struct._GimpConfig* %17)
  %18 = bitcast i8* %call13 to %struct._GimpGrid*
  %19 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %grid14 = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %19, i32 0, i32 11
  store %struct._GimpGrid* %18, %struct._GimpGrid** %grid14, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.9
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %20 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call16 = call i8* @g_value_dup_string(%struct._GValue* %20)
  %21 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %parasite_name = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %21, i32 0, i32 14
  store i8* %call16, i8** %parasite_name, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %22 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %22, %struct._GObject** %_glib__object, align 8
  %23 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %23, %struct._GParamSpec** %_glib__pspec, align 8
  %24 = load i32, i32* %property_id.addr, align 4
  store i32 %24, i32* %_glib__property_id, align 4
  %25 = load i32, i32* %_glib__property_id, align 4
  %26 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %26, i32 0, i32 1
  %27 = load i8*, i8** %name, align 8
  %28 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %29 = bitcast %struct._GParamSpec* %28 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %30, i32 0, i32 0
  %31 = load i64, i64* %g_type, align 8
  %call17 = call i8* @g_type_name(i64 %31)
  %32 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %33 = bitcast %struct._GObject* %32 to %struct._GTypeInstance*
  %g_class18 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %33, i32 0, i32 0
  %34 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class18, align 8
  %g_type19 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %34, i32 0, i32 0
  %35 = load i64, i64* %g_type19, align 8
  %call20 = call i8* @g_type_name(i64 %35)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i32 233, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 %25, i8* %27, i8* %call17, i8* %call20)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.15, %if.end, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_undo_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %image_undo = alloca %struct._GimpImageUndo*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_undo_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageUndo*
  store %struct._GimpImageUndo* %2, %struct._GimpImageUndo** %image_undo, align 8
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
  %5 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %previous_origin_x = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %5, i32 0, i32 4
  %6 = load i32, i32* %previous_origin_x, align 4
  call void @g_value_set_int(%struct._GValue* %4, i32 %6)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %previous_origin_y = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %8, i32 0, i32 5
  %9 = load i32, i32* %previous_origin_y, align 4
  call void @g_value_set_int(%struct._GValue* %7, i32 %9)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %11 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %previous_width = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %11, i32 0, i32 6
  %12 = load i32, i32* %previous_width, align 4
  call void @g_value_set_int(%struct._GValue* %10, i32 %12)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %14 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %previous_height = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %14, i32 0, i32 7
  %15 = load i32, i32* %previous_height, align 4
  call void @g_value_set_int(%struct._GValue* %13, i32 %15)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %17 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %grid = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %17, i32 0, i32 11
  %18 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %19 = bitcast %struct._GimpGrid* %18 to i8*
  call void @g_value_set_object(%struct._GValue* %16, i8* %19)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %20 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %21 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %parasite_name = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %21, i32 0, i32 14
  %22 = load i8*, i8** %parasite_name, align 8
  call void @g_value_set_string(%struct._GValue* %20, i8* %22)
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
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i32 268, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 %26, i8* %28, i8* %call7, i8* %call10)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @gimp_image_undo_get_memsize(%struct._GimpObject* %object, i64* %gui_size) #3 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %gui_size.addr = alloca i64*, align 8
  %image_undo = alloca %struct._GimpImageUndo*, align 8
  %memsize = alloca i64, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i64* %gui_size, i64** %gui_size.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_undo_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageUndo*
  store %struct._GimpImageUndo* %2, %struct._GimpImageUndo** %image_undo, align 8
  store i64 0, i64* %memsize, align 8
  %3 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %colormap = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %3, i32 0, i32 13
  %4 = load i8*, i8** %colormap, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i64, i64* %memsize, align 8
  %add = add nsw i64 %5, 768
  store i64 %add, i64* %memsize, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %grid = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %6, i32 0, i32 11
  %7 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %8 = bitcast %struct._GimpGrid* %7 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_object_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call2)
  %9 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpObject*
  %10 = load i64*, i64** %gui_size.addr, align 8
  %call4 = call i64 @gimp_object_get_memsize(%struct._GimpObject* %9, i64* %10)
  %11 = load i64, i64* %memsize, align 8
  %add5 = add nsw i64 %11, %call4
  store i64 %add5, i64* %memsize, align 8
  %12 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %parasite_name = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %12, i32 0, i32 14
  %13 = load i8*, i8** %parasite_name, align 8
  %call6 = call i64 @gimp_string_get_memsize(i8* %13)
  %14 = load i64, i64* %memsize, align 8
  %add7 = add nsw i64 %14, %call6
  store i64 %add7, i64* %memsize, align 8
  %15 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %parasite = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %15, i32 0, i32 15
  %16 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %17 = load i64*, i64** %gui_size.addr, align 8
  %call8 = call i64 @gimp_parasite_get_memsize(%struct._GimpParasite* %16, i64* %17)
  %18 = load i64, i64* %memsize, align 8
  %add9 = add nsw i64 %18, %call8
  store i64 %add9, i64* %memsize, align 8
  %19 = load i64, i64* %memsize, align 8
  %20 = load i8*, i8** @gimp_image_undo_parent_class, align 8
  %21 = bitcast i8* %20 to %struct._GTypeClass*
  %call10 = call i64 @gimp_object_get_type() #7
  %call11 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %21, i64 %call10)
  %22 = bitcast %struct._GTypeClass* %call11 to %struct._GimpObjectClass*
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %22, i32 0, i32 3
  %23 = load i64 (%struct._GimpObject*, i64*)*, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %24 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %25 = load i64*, i64** %gui_size.addr, align 8
  %call12 = call i64 %23(%struct._GimpObject* %24, i64* %25)
  %add13 = add nsw i64 %19, %call12
  ret i64 %add13
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_undo_pop(%struct._GimpUndo* %undo, i32 %undo_mode, %struct._GimpUndoAccumulator* %accum) #3 {
entry:
  %undo.addr = alloca %struct._GimpUndo*, align 8
  %undo_mode.addr = alloca i32, align 4
  %accum.addr = alloca %struct._GimpUndoAccumulator*, align 8
  %image_undo = alloca %struct._GimpImageUndo*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %private = alloca %struct._GimpImagePrivate*, align 8
  %base_type = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %previous_origin_x = alloca i32, align 4
  %previous_origin_y = alloca i32, align 4
  %previous_width = alloca i32, align 4
  %previous_height = alloca i32, align 4
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %unit = alloca i32, align 4
  %grid = alloca %struct._GimpGrid*, align 8
  %colormap = alloca i8*, align 8
  %num_colors = alloca i32, align 4
  %parasite = alloca %struct._GimpParasite*, align 8
  %name = alloca i8*, align 8
  store %struct._GimpUndo* %undo, %struct._GimpUndo** %undo.addr, align 8
  store i32 %undo_mode, i32* %undo_mode.addr, align 4
  store %struct._GimpUndoAccumulator* %accum, %struct._GimpUndoAccumulator** %accum.addr, align 8
  %0 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %1 = bitcast %struct._GimpUndo* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_undo_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageUndo*
  store %struct._GimpImageUndo* %2, %struct._GimpImageUndo** %image_undo, align 8
  %3 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %image2 = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %3, i32 0, i32 1
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image2, align 8
  store %struct._GimpImage* %4, %struct._GimpImage** %image, align 8
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %6 = bitcast %struct._GimpImage* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_image_get_type() #7
  %call4 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast i8* %call4 to %struct._GimpImagePrivate*
  store %struct._GimpImagePrivate* %7, %struct._GimpImagePrivate** %private, align 8
  %8 = load i8*, i8** @gimp_image_undo_parent_class, align 8
  %9 = bitcast i8* %8 to %struct._GTypeClass*
  %call5 = call i64 @gimp_undo_get_type() #7
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 %call5)
  %10 = bitcast %struct._GTypeClass* %call6 to %struct._GimpUndoClass*
  %pop = getelementptr inbounds %struct._GimpUndoClass, %struct._GimpUndoClass* %10, i32 0, i32 1
  %11 = load void (%struct._GimpUndo*, i32, %struct._GimpUndoAccumulator*)*, void (%struct._GimpUndo*, i32, %struct._GimpUndoAccumulator*)** %pop, align 8
  %12 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %13 = load i32, i32* %undo_mode.addr, align 4
  %14 = load %struct._GimpUndoAccumulator*, %struct._GimpUndoAccumulator** %accum.addr, align 8
  call void %11(%struct._GimpUndo* %12, i32 %13, %struct._GimpUndoAccumulator* %14)
  %15 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %undo_type = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %15, i32 0, i32 3
  %16 = load i32, i32* %undo_type, align 4
  switch i32 %16, label %sw.default [
    i32 38, label %sw.bb
    i32 39, label %sw.bb.12
    i32 40, label %sw.bb.43
    i32 41, label %sw.bb.81
    i32 42, label %sw.bb.89
    i32 78, label %sw.bb.105
    i32 79, label %sw.bb.105
  ]

sw.bb:                                            ; preds = %entry
  %17 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %base_type7 = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %17, i32 0, i32 1
  %18 = load i32, i32* %base_type7, align 4
  store i32 %18, i32* %base_type, align 4
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call8 = call i32 @gimp_image_base_type(%struct._GimpImage* %19)
  %20 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %base_type9 = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %20, i32 0, i32 1
  store i32 %call8, i32* %base_type9, align 4
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %22 = bitcast %struct._GimpImage* %21 to i8*
  %23 = load i32, i32* %base_type, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i32 %23, i8* null)
  %24 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_colormap_changed(%struct._GimpImage* %24, i32 -1)
  %25 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %base_type10 = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %25, i32 0, i32 1
  %26 = load i32, i32* %base_type10, align 4
  %27 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call11 = call i32 @gimp_image_base_type(%struct._GimpImage* %27)
  %cmp = icmp ne i32 %26, %call11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %28 = load %struct._GimpUndoAccumulator*, %struct._GimpUndoAccumulator** %accum.addr, align 8
  %mode_changed = getelementptr inbounds %struct._GimpUndoAccumulator, %struct._GimpUndoAccumulator* %28, i32 0, i32 0
  store i32 1, i32* %mode_changed, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  %29 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %width13 = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %29, i32 0, i32 2
  %30 = load i32, i32* %width13, align 4
  store i32 %30, i32* %width, align 4
  %31 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %height14 = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %31, i32 0, i32 3
  %32 = load i32, i32* %height14, align 4
  store i32 %32, i32* %height, align 4
  %33 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %previous_origin_x15 = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %33, i32 0, i32 4
  %34 = load i32, i32* %previous_origin_x15, align 4
  store i32 %34, i32* %previous_origin_x, align 4
  %35 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %previous_origin_y16 = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %35, i32 0, i32 5
  %36 = load i32, i32* %previous_origin_y16, align 4
  store i32 %36, i32* %previous_origin_y, align 4
  %37 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %previous_width17 = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %37, i32 0, i32 6
  %38 = load i32, i32* %previous_width17, align 4
  store i32 %38, i32* %previous_width, align 4
  %39 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %previous_height18 = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %39, i32 0, i32 7
  %40 = load i32, i32* %previous_height18, align 4
  store i32 %40, i32* %previous_height, align 4
  %41 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call19 = call i32 @gimp_image_get_width(%struct._GimpImage* %41)
  %42 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %width20 = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %42, i32 0, i32 2
  store i32 %call19, i32* %width20, align 4
  %43 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call21 = call i32 @gimp_image_get_height(%struct._GimpImage* %43)
  %44 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %height22 = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %44, i32 0, i32 3
  store i32 %call21, i32* %height22, align 4
  %45 = load i32, i32* %previous_origin_x, align 4
  %sub = sub nsw i32 0, %45
  %46 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %previous_origin_x23 = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %46, i32 0, i32 4
  store i32 %sub, i32* %previous_origin_x23, align 4
  %47 = load i32, i32* %previous_origin_y, align 4
  %sub24 = sub nsw i32 0, %47
  %48 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %previous_origin_y25 = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %48, i32 0, i32 5
  store i32 %sub24, i32* %previous_origin_y25, align 4
  %49 = load i32, i32* %width, align 4
  %50 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %previous_width26 = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %50, i32 0, i32 6
  store i32 %49, i32* %previous_width26, align 4
  %51 = load i32, i32* %height, align 4
  %52 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %previous_height27 = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %52, i32 0, i32 7
  store i32 %51, i32* %previous_height27, align 4
  %53 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %54 = bitcast %struct._GimpImage* %53 to i8*
  %55 = load i32, i32* %width, align 4
  %56 = load i32, i32* %height, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i32 %56, i8* null)
  %57 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call28 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %57)
  %58 = bitcast %struct._GimpChannel* %call28 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_drawable_get_type() #7
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call29)
  %59 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpDrawable*
  call void @gimp_drawable_invalidate_boundary(%struct._GimpDrawable* %59)
  %60 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call31 = call i32 @gimp_image_get_width(%struct._GimpImage* %60)
  %61 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %width32 = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %61, i32 0, i32 2
  %62 = load i32, i32* %width32, align 4
  %cmp33 = icmp ne i32 %call31, %62
  br i1 %cmp33, label %if.then.37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.12
  %63 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call34 = call i32 @gimp_image_get_height(%struct._GimpImage* %63)
  %64 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %height35 = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %64, i32 0, i32 3
  %65 = load i32, i32* %height35, align 4
  %cmp36 = icmp ne i32 %call34, %65
  br i1 %cmp36, label %if.then.37, label %if.end.42

if.then.37:                                       ; preds = %lor.lhs.false, %sw.bb.12
  %66 = load %struct._GimpUndoAccumulator*, %struct._GimpUndoAccumulator** %accum.addr, align 8
  %size_changed = getelementptr inbounds %struct._GimpUndoAccumulator, %struct._GimpUndoAccumulator* %66, i32 0, i32 1
  store i32 1, i32* %size_changed, align 4
  %67 = load i32, i32* %previous_origin_x, align 4
  %68 = load %struct._GimpUndoAccumulator*, %struct._GimpUndoAccumulator** %accum.addr, align 8
  %previous_origin_x38 = getelementptr inbounds %struct._GimpUndoAccumulator, %struct._GimpUndoAccumulator* %68, i32 0, i32 2
  store i32 %67, i32* %previous_origin_x38, align 4
  %69 = load i32, i32* %previous_origin_y, align 4
  %70 = load %struct._GimpUndoAccumulator*, %struct._GimpUndoAccumulator** %accum.addr, align 8
  %previous_origin_y39 = getelementptr inbounds %struct._GimpUndoAccumulator, %struct._GimpUndoAccumulator* %70, i32 0, i32 3
  store i32 %69, i32* %previous_origin_y39, align 4
  %71 = load i32, i32* %previous_width, align 4
  %72 = load %struct._GimpUndoAccumulator*, %struct._GimpUndoAccumulator** %accum.addr, align 8
  %previous_width40 = getelementptr inbounds %struct._GimpUndoAccumulator, %struct._GimpUndoAccumulator* %72, i32 0, i32 4
  store i32 %71, i32* %previous_width40, align 4
  %73 = load i32, i32* %previous_height, align 4
  %74 = load %struct._GimpUndoAccumulator*, %struct._GimpUndoAccumulator** %accum.addr, align 8
  %previous_height41 = getelementptr inbounds %struct._GimpUndoAccumulator, %struct._GimpUndoAccumulator* %74, i32 0, i32 5
  store i32 %73, i32* %previous_height41, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.37, %lor.lhs.false
  br label %sw.epilog

sw.bb.43:                                         ; preds = %entry
  %75 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %75, double* %xres, double* %yres)
  %76 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %xresolution = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %76, i32 0, i32 8
  %77 = load double, double* %xresolution, align 8
  %78 = load double, double* %xres, align 8
  %sub44 = fsub double %77, %78
  %cmp45 = fcmp olt double %sub44, 0.000000e+00
  br i1 %cmp45, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.43
  %79 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %xresolution46 = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %79, i32 0, i32 8
  %80 = load double, double* %xresolution46, align 8
  %81 = load double, double* %xres, align 8
  %sub47 = fsub double %80, %81
  %sub48 = fsub double -0.000000e+00, %sub47
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.43
  %82 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %xresolution49 = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %82, i32 0, i32 8
  %83 = load double, double* %xresolution49, align 8
  %84 = load double, double* %xres, align 8
  %sub50 = fsub double %83, %84
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub48, %cond.true ], [ %sub50, %cond.false ]
  %cmp51 = fcmp oge double %cond, 1.000000e-05
  br i1 %cmp51, label %if.then.65, label %lor.lhs.false.52

lor.lhs.false.52:                                 ; preds = %cond.end
  %85 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %yresolution = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %85, i32 0, i32 9
  %86 = load double, double* %yresolution, align 8
  %87 = load double, double* %yres, align 8
  %sub53 = fsub double %86, %87
  %cmp54 = fcmp olt double %sub53, 0.000000e+00
  br i1 %cmp54, label %cond.true.55, label %cond.false.59

cond.true.55:                                     ; preds = %lor.lhs.false.52
  %88 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %yresolution56 = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %88, i32 0, i32 9
  %89 = load double, double* %yresolution56, align 8
  %90 = load double, double* %yres, align 8
  %sub57 = fsub double %89, %90
  %sub58 = fsub double -0.000000e+00, %sub57
  br label %cond.end.62

cond.false.59:                                    ; preds = %lor.lhs.false.52
  %91 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %yresolution60 = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %91, i32 0, i32 9
  %92 = load double, double* %yresolution60, align 8
  %93 = load double, double* %yres, align 8
  %sub61 = fsub double %92, %93
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.false.59, %cond.true.55
  %cond63 = phi double [ %sub58, %cond.true.55 ], [ %sub61, %cond.false.59 ]
  %cmp64 = fcmp oge double %cond63, 1.000000e-05
  br i1 %cmp64, label %if.then.65, label %if.end.72

if.then.65:                                       ; preds = %cond.end.62, %cond.end
  %94 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %xresolution66 = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %94, i32 0, i32 8
  %95 = load double, double* %xresolution66, align 8
  %96 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %xresolution67 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %96, i32 0, i32 8
  store double %95, double* %xresolution67, align 8
  %97 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %yresolution68 = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %97, i32 0, i32 9
  %98 = load double, double* %yresolution68, align 8
  %99 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %yresolution69 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %99, i32 0, i32 9
  store double %98, double* %yresolution69, align 8
  %100 = load double, double* %xres, align 8
  %101 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %xresolution70 = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %101, i32 0, i32 8
  store double %100, double* %xresolution70, align 8
  %102 = load double, double* %yres, align 8
  %103 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %yresolution71 = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %103, i32 0, i32 9
  store double %102, double* %yresolution71, align 8
  %104 = load %struct._GimpUndoAccumulator*, %struct._GimpUndoAccumulator** %accum.addr, align 8
  %resolution_changed = getelementptr inbounds %struct._GimpUndoAccumulator, %struct._GimpUndoAccumulator* %104, i32 0, i32 6
  store i32 1, i32* %resolution_changed, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.65, %cond.end.62
  %105 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %resolution_unit = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %105, i32 0, i32 10
  %106 = load i32, i32* %resolution_unit, align 4
  %107 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call73 = call i32 @gimp_image_get_unit(%struct._GimpImage* %107)
  %cmp74 = icmp ne i32 %106, %call73
  br i1 %cmp74, label %if.then.75, label %if.end.80

if.then.75:                                       ; preds = %if.end.72
  %108 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call76 = call i32 @gimp_image_get_unit(%struct._GimpImage* %108)
  store i32 %call76, i32* %unit, align 4
  %109 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %resolution_unit77 = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %109, i32 0, i32 10
  %110 = load i32, i32* %resolution_unit77, align 4
  %111 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %resolution_unit78 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %111, i32 0, i32 10
  store i32 %110, i32* %resolution_unit78, align 4
  %112 = load i32, i32* %unit, align 4
  %113 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %resolution_unit79 = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %113, i32 0, i32 10
  store i32 %112, i32* %resolution_unit79, align 4
  %114 = load %struct._GimpUndoAccumulator*, %struct._GimpUndoAccumulator** %accum.addr, align 8
  %unit_changed = getelementptr inbounds %struct._GimpUndoAccumulator, %struct._GimpUndoAccumulator* %114, i32 0, i32 7
  store i32 1, i32* %unit_changed, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.75, %if.end.72
  br label %sw.epilog

sw.bb.81:                                         ; preds = %entry
  %115 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call82 = call %struct._GimpGrid* @gimp_image_get_grid(%struct._GimpImage* %115)
  %116 = bitcast %struct._GimpGrid* %call82 to %struct._GTypeInstance*
  %call83 = call i64 @gimp_config_interface_get_type() #7
  %call84 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %116, i64 %call83)
  %117 = bitcast %struct._GTypeInstance* %call84 to %struct._GimpConfig*
  %call85 = call i8* @gimp_config_duplicate(%struct._GimpConfig* %117)
  %118 = bitcast i8* %call85 to %struct._GimpGrid*
  store %struct._GimpGrid* %118, %struct._GimpGrid** %grid, align 8
  %119 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %120 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %grid86 = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %120, i32 0, i32 11
  %121 = load %struct._GimpGrid*, %struct._GimpGrid** %grid86, align 8
  call void @gimp_image_set_grid(%struct._GimpImage* %119, %struct._GimpGrid* %121, i32 0)
  %122 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %grid87 = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %122, i32 0, i32 11
  %123 = load %struct._GimpGrid*, %struct._GimpGrid** %grid87, align 8
  %124 = bitcast %struct._GimpGrid* %123 to i8*
  call void @g_object_unref(i8* %124)
  %125 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %126 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %grid88 = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %126, i32 0, i32 11
  store %struct._GimpGrid* %125, %struct._GimpGrid** %grid88, align 8
  br label %sw.epilog

sw.bb.89:                                         ; preds = %entry
  %127 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call90 = call i32 @gimp_image_get_colormap_size(%struct._GimpImage* %127)
  store i32 %call90, i32* %num_colors, align 4
  %128 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call91 = call i8* @gimp_image_get_colormap(%struct._GimpImage* %128)
  %call92 = call noalias i8* @g_memdup(i8* %call91, i32 768)
  store i8* %call92, i8** %colormap, align 8
  %129 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %colormap93 = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %129, i32 0, i32 13
  %130 = load i8*, i8** %colormap93, align 8
  %tobool = icmp ne i8* %130, null
  br i1 %tobool, label %if.then.94, label %if.else

if.then.94:                                       ; preds = %sw.bb.89
  %131 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %132 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %colormap95 = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %132, i32 0, i32 13
  %133 = load i8*, i8** %colormap95, align 8
  %134 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %num_colors96 = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %134, i32 0, i32 12
  %135 = load i32, i32* %num_colors96, align 4
  call void @gimp_image_set_colormap(%struct._GimpImage* %131, i8* %133, i32 %135, i32 0)
  br label %if.end.97

if.else:                                          ; preds = %sw.bb.89
  %136 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_unset_colormap(%struct._GimpImage* %136, i32 0)
  br label %if.end.97

if.end.97:                                        ; preds = %if.else, %if.then.94
  %137 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %colormap98 = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %137, i32 0, i32 13
  %138 = load i8*, i8** %colormap98, align 8
  %tobool99 = icmp ne i8* %138, null
  br i1 %tobool99, label %if.then.100, label %if.end.102

if.then.100:                                      ; preds = %if.end.97
  %139 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %colormap101 = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %139, i32 0, i32 13
  %140 = load i8*, i8** %colormap101, align 8
  call void @g_free(i8* %140)
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.100, %if.end.97
  %141 = load i32, i32* %num_colors, align 4
  %142 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %num_colors103 = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %142, i32 0, i32 12
  store i32 %141, i32* %num_colors103, align 4
  %143 = load i8*, i8** %colormap, align 8
  %144 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %colormap104 = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %144, i32 0, i32 13
  store i8* %143, i8** %colormap104, align 8
  br label %sw.epilog

sw.bb.105:                                        ; preds = %entry, %entry
  %145 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %parasite106 = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %145, i32 0, i32 15
  %146 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite106, align 8
  store %struct._GimpParasite* %146, %struct._GimpParasite** %parasite, align 8
  %147 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %148 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %parasite_name = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %148, i32 0, i32 14
  %149 = load i8*, i8** %parasite_name, align 8
  %call107 = call %struct._GimpParasite* @gimp_image_parasite_find(%struct._GimpImage* %147, i8* %149)
  %call108 = call %struct._GimpParasite* @gimp_parasite_copy(%struct._GimpParasite* %call107)
  %150 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %parasite109 = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %150, i32 0, i32 15
  store %struct._GimpParasite* %call108, %struct._GimpParasite** %parasite109, align 8
  %151 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %tobool110 = icmp ne %struct._GimpParasite* %151, null
  br i1 %tobool110, label %if.then.111, label %if.else.112

if.then.111:                                      ; preds = %sw.bb.105
  %152 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %parasites = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %152, i32 0, i32 36
  %153 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %parasites, align 8
  %154 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_parasite_list_add(%struct._GimpParasiteList* %153, %struct._GimpParasite* %154)
  br label %if.end.115

if.else.112:                                      ; preds = %sw.bb.105
  %155 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %parasites113 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %155, i32 0, i32 36
  %156 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %parasites113, align 8
  %157 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %parasite_name114 = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %157, i32 0, i32 14
  %158 = load i8*, i8** %parasite_name114, align 8
  call void @gimp_parasite_list_remove(%struct._GimpParasiteList* %156, i8* %158)
  br label %if.end.115

if.end.115:                                       ; preds = %if.else.112, %if.then.111
  %159 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %tobool116 = icmp ne %struct._GimpParasite* %159, null
  br i1 %tobool116, label %cond.true.117, label %cond.false.119

cond.true.117:                                    ; preds = %if.end.115
  %160 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %name118 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %160, i32 0, i32 0
  %161 = load i8*, i8** %name118, align 8
  br label %cond.end.121

cond.false.119:                                   ; preds = %if.end.115
  %162 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %parasite_name120 = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %162, i32 0, i32 14
  %163 = load i8*, i8** %parasite_name120, align 8
  br label %cond.end.121

cond.end.121:                                     ; preds = %cond.false.119, %cond.true.117
  %cond122 = phi i8* [ %161, %cond.true.117 ], [ %163, %cond.false.119 ]
  store i8* %cond122, i8** %name, align 8
  %164 = load i8*, i8** %name, align 8
  %call123 = call i32 @strcmp(i8* %164, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0)) #8
  %cmp124 = icmp eq i32 %call123, 0
  br i1 %cmp124, label %if.then.125, label %if.end.128

if.then.125:                                      ; preds = %cond.end.121
  %165 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %166 = bitcast %struct._GimpImage* %165 to %struct._GTypeInstance*
  %call126 = call i64 @gimp_color_managed_interface_get_type() #7
  %call127 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %166, i64 %call126)
  %167 = bitcast %struct._GTypeInstance* %call127 to %struct._GimpColorManaged*
  call void @gimp_color_managed_profile_changed(%struct._GimpColorManaged* %167)
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.125, %cond.end.121
  %168 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %tobool129 = icmp ne %struct._GimpParasite* %168, null
  br i1 %tobool129, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %if.end.128
  %169 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %169)
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.130, %if.end.128
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i32 459, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_image_undo_pop, i32 0, i32 0), i8* null) #9
  unreachable

do.end:                                           ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.end.131, %if.end.102, %sw.bb.81, %if.end.80, %if.end.42, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_undo_free(%struct._GimpUndo* %undo, i32 %undo_mode) #3 {
entry:
  %undo.addr = alloca %struct._GimpUndo*, align 8
  %undo_mode.addr = alloca i32, align 4
  %image_undo = alloca %struct._GimpImageUndo*, align 8
  store %struct._GimpUndo* %undo, %struct._GimpUndo** %undo.addr, align 8
  store i32 %undo_mode, i32* %undo_mode.addr, align 4
  %0 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %1 = bitcast %struct._GimpUndo* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_undo_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageUndo*
  store %struct._GimpImageUndo* %2, %struct._GimpImageUndo** %image_undo, align 8
  %3 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %grid = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %3, i32 0, i32 11
  %4 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %tobool = icmp ne %struct._GimpGrid* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %grid2 = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %5, i32 0, i32 11
  %6 = load %struct._GimpGrid*, %struct._GimpGrid** %grid2, align 8
  %7 = bitcast %struct._GimpGrid* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %grid3 = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %8, i32 0, i32 11
  store %struct._GimpGrid* null, %struct._GimpGrid** %grid3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %colormap = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %9, i32 0, i32 13
  %10 = load i8*, i8** %colormap, align 8
  %tobool4 = icmp ne i8* %10, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %11 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %colormap6 = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %11, i32 0, i32 13
  %12 = load i8*, i8** %colormap6, align 8
  call void @g_free(i8* %12)
  %13 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %colormap7 = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %13, i32 0, i32 13
  store i8* null, i8** %colormap7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %14 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %parasite_name = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %14, i32 0, i32 14
  %15 = load i8*, i8** %parasite_name, align 8
  %tobool9 = icmp ne i8* %15, null
  br i1 %tobool9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end.8
  %16 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %parasite_name11 = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %16, i32 0, i32 14
  %17 = load i8*, i8** %parasite_name11, align 8
  call void @g_free(i8* %17)
  %18 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %parasite_name12 = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %18, i32 0, i32 14
  store i8* null, i8** %parasite_name12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.end.8
  %19 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %parasite = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %19, i32 0, i32 15
  %20 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %tobool14 = icmp ne %struct._GimpParasite* %20, null
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end.13
  %21 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %parasite16 = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %21, i32 0, i32 15
  %22 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite16, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %22)
  %23 = load %struct._GimpImageUndo*, %struct._GimpImageUndo** %image_undo, align 8
  %parasite17 = getelementptr inbounds %struct._GimpImageUndo, %struct._GimpImageUndo* %23, i32 0, i32 15
  store %struct._GimpParasite* null, %struct._GimpParasite** %parasite17, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.end.13
  %24 = load i8*, i8** @gimp_image_undo_parent_class, align 8
  %25 = bitcast i8* %24 to %struct._GTypeClass*
  %call19 = call i64 @gimp_undo_get_type() #7
  %call20 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %25, i64 %call19)
  %26 = bitcast %struct._GTypeClass* %call20 to %struct._GimpUndoClass*
  %free = getelementptr inbounds %struct._GimpUndoClass, %struct._GimpUndoClass* %26, i32 0, i32 2
  %27 = load void (%struct._GimpUndo*, i32)*, void (%struct._GimpUndo*, i32)** %free, align 8
  %28 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %29 = load i32, i32* %undo_mode.addr, align 4
  call void %27(%struct._GimpUndo* %28, i32 %29)
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_grid_get_type() #2

declare %struct._GParamSpec* @g_param_spec_string(i8*, i8*, i8*, i8*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i32 @gimp_image_base_type(%struct._GimpImage*) #1

declare i32 @gimp_image_get_width(%struct._GimpImage*) #1

declare i32 @gimp_image_get_height(%struct._GimpImage*) #1

declare void @gimp_image_get_resolution(%struct._GimpImage*, double*, double*) #1

declare i32 @gimp_image_get_unit(%struct._GimpImage*) #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

declare i32 @gimp_image_get_colormap_size(%struct._GimpImage*) #1

declare noalias i8* @g_memdup(i8*, i32) #1

declare i8* @gimp_image_get_colormap(%struct._GimpImage*) #1

declare %struct._GimpParasite* @gimp_parasite_copy(%struct._GimpParasite*) #1

declare %struct._GimpParasite* @gimp_image_parasite_find(%struct._GimpImage*, i8*) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

declare i8* @g_value_get_object(%struct._GValue*) #1

declare i8* @gimp_config_duplicate(%struct._GimpConfig*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #2

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

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare void @g_value_set_object(%struct._GValue*, i8*) #1

declare void @g_value_set_string(%struct._GValue*, i8*) #1

declare i64 @gimp_object_get_memsize(%struct._GimpObject*, i64*) #1

declare i64 @gimp_string_get_memsize(i8*) #1

declare i64 @gimp_parasite_get_memsize(%struct._GimpParasite*, i64*) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #2

declare void @g_object_set(i8*, i8*, ...) #1

declare void @gimp_image_colormap_changed(%struct._GimpImage*, i32) #1

declare void @gimp_drawable_invalidate_boundary(%struct._GimpDrawable*) #1

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #2

declare %struct._GimpGrid* @gimp_image_get_grid(%struct._GimpImage*) #1

declare void @gimp_image_set_grid(%struct._GimpImage*, %struct._GimpGrid*, i32) #1

declare void @g_object_unref(i8*) #1

declare void @gimp_image_set_colormap(%struct._GimpImage*, i8*, i32, i32) #1

declare void @gimp_image_unset_colormap(%struct._GimpImage*, i32) #1

declare void @g_free(i8*) #1

declare void @gimp_parasite_list_add(%struct._GimpParasiteList*, %struct._GimpParasite*) #1

declare void @gimp_parasite_list_remove(%struct._GimpParasiteList*, i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare void @gimp_color_managed_profile_changed(%struct._GimpColorManaged*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_managed_interface_get_type() #2

declare void @gimp_parasite_free(%struct._GimpParasite*) #1

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
