; ModuleID = './app/core/gimpundostack.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpUndoStackClass = type { %struct._GimpUndoClass }
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
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpUndo = type { %struct._GimpViewable, %struct._GimpImage*, i32, i32, i32, %struct._TempBuf*, i32 }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._Gimp = type opaque
%struct._GimpUndoAccumulator = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpUndoStack = type { %struct._GimpUndo, %struct._GimpContainer* }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpList = type { %struct._GimpContainer, %struct._GList*, i32, i32 (i8*, i8*)*, i32 }

@gimp_undo_stack_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"GimpUndoStack\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_undo_stack_new = private unnamed_addr constant [20 x i8] c"gimp_undo_stack_new\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@__func__.gimp_undo_stack_push_undo = private unnamed_addr constant [26 x i8] c"gimp_undo_stack_push_undo\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"GIMP_IS_UNDO_STACK (stack)\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"GIMP_IS_UNDO (undo)\00", align 1
@__func__.gimp_undo_stack_pop_undo = private unnamed_addr constant [25 x i8] c"gimp_undo_stack_pop_undo\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"accum != NULL\00", align 1
@__func__.gimp_undo_stack_free_bottom = private unnamed_addr constant [28 x i8] c"gimp_undo_stack_free_bottom\00", align 1
@__func__.gimp_undo_stack_peek = private unnamed_addr constant [21 x i8] c"gimp_undo_stack_peek\00", align 1
@__func__.gimp_undo_stack_get_depth = private unnamed_addr constant [26 x i8] c"gimp_undo_stack_get_depth\00", align 1
@gimp_undo_stack_parent_class = internal global i8* null, align 8
@GimpUndoStack_private_offset = internal global i32 0, align 4

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_undo_stack_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_undo_stack_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_undo_stack_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_undo_get_type() #5
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 296, void (i8*, i8*)* bitcast (void (i8*)* @gimp_undo_stack_class_intern_init to void (i8*, i8*)*), i32 80, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpUndoStack*)* @gimp_undo_stack_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_undo_stack_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_undo_stack_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_undo_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_undo_stack_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_undo_stack_parent_class, align 8
  %1 = load i32, i32* @GimpUndoStack_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpUndoStack_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpUndoStackClass*
  call void @gimp_undo_stack_class_init(%struct._GimpUndoStackClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_undo_stack_init(%struct._GimpUndoStack* %stack) #3 {
entry:
  %stack.addr = alloca %struct._GimpUndoStack*, align 8
  store %struct._GimpUndoStack* %stack, %struct._GimpUndoStack** %stack.addr, align 8
  %call = call i64 @gimp_undo_get_type() #5
  %call1 = call %struct._GimpContainer* @gimp_list_new(i64 %call, i32 0)
  %0 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %stack.addr, align 8
  %undos = getelementptr inbounds %struct._GimpUndoStack, %struct._GimpUndoStack* %0, i32 0, i32 1
  store %struct._GimpContainer* %call1, %struct._GimpContainer** %undos, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpUndoStack* @gimp_undo_stack_new(%struct._GimpImage* %image) #3 {
entry:
  %retval = alloca %struct._GimpUndoStack*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_undo_stack_new, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpUndoStack* null, %struct._GimpUndoStack** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_undo_stack_get_type() #5
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call12 = call i8* (i64, i8*, ...) @g_object_new(i64 %call11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), %struct._GimpImage* %13, i8* null)
  %14 = bitcast i8* %call12 to %struct._GimpUndoStack*
  store %struct._GimpUndoStack* %14, %struct._GimpUndoStack** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %retval
  ret %struct._GimpUndoStack* %15
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_undo_stack_push_undo(%struct._GimpUndoStack* %stack, %struct._GimpUndo* %undo) #3 {
entry:
  %stack.addr = alloca %struct._GimpUndoStack*, align 8
  %undo.addr = alloca %struct._GimpUndo*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpUndoStack* %stack, %struct._GimpUndoStack** %stack.addr, align 8
  store %struct._GimpUndo* %undo, %struct._GimpUndo** %undo.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %stack.addr, align 8
  %1 = bitcast %struct._GimpUndoStack* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_undo_stack_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_undo_stack_push_undo, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %14 = bitcast %struct._GimpUndo* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_undo_get_type() #5
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #6
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_undo_stack_push_undo, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %stack.addr, align 8
  %undos = getelementptr inbounds %struct._GimpUndoStack, %struct._GimpUndoStack* %26, i32 0, i32 1
  %27 = load %struct._GimpContainer*, %struct._GimpContainer** %undos, align 8
  %28 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %29 = bitcast %struct._GimpUndo* %28 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_object_get_type() #5
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call39)
  %30 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpObject*
  %call41 = call i32 @gimp_container_add(%struct._GimpContainer* %27, %struct._GimpObject* %30)
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  ret void
}

declare i32 @gimp_container_add(%struct._GimpContainer*, %struct._GimpObject*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

; Function Attrs: nounwind uwtable
define %struct._GimpUndo* @gimp_undo_stack_pop_undo(%struct._GimpUndoStack* %stack, i32 %undo_mode, %struct._GimpUndoAccumulator* %accum) #3 {
entry:
  %retval = alloca %struct._GimpUndo*, align 8
  %stack.addr = alloca %struct._GimpUndoStack*, align 8
  %undo_mode.addr = alloca i32, align 4
  %accum.addr = alloca %struct._GimpUndoAccumulator*, align 8
  %undo = alloca %struct._GimpUndo*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpUndoStack* %stack, %struct._GimpUndoStack** %stack.addr, align 8
  store i32 %undo_mode, i32* %undo_mode.addr, align 4
  store %struct._GimpUndoAccumulator* %accum, %struct._GimpUndoAccumulator** %accum.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %stack.addr, align 8
  %1 = bitcast %struct._GimpUndoStack* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_undo_stack_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_undo_stack_pop_undo, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpUndo* null, %struct._GimpUndo** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpUndoAccumulator*, %struct._GimpUndoAccumulator** %accum.addr, align 8
  %cmp12 = icmp ne %struct._GimpUndoAccumulator* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_undo_stack_pop_undo, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GimpUndo* null, %struct._GimpUndo** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %stack.addr, align 8
  %undos = getelementptr inbounds %struct._GimpUndoStack, %struct._GimpUndoStack* %14, i32 0, i32 1
  %15 = load %struct._GimpContainer*, %struct._GimpContainer** %undos, align 8
  %call17 = call %struct._GimpObject* @gimp_container_get_first_child(%struct._GimpContainer* %15)
  %16 = bitcast %struct._GimpObject* %call17 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_undo_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call18)
  %17 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpUndo*
  store %struct._GimpUndo* %17, %struct._GimpUndo** %undo, align 8
  %18 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %tobool20 = icmp ne %struct._GimpUndo* %18, null
  br i1 %tobool20, label %if.then.21, label %if.end.26

if.then.21:                                       ; preds = %do.end.16
  %19 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %stack.addr, align 8
  %undos22 = getelementptr inbounds %struct._GimpUndoStack, %struct._GimpUndoStack* %19, i32 0, i32 1
  %20 = load %struct._GimpContainer*, %struct._GimpContainer** %undos22, align 8
  %21 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %22 = bitcast %struct._GimpUndo* %21 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_object_get_type() #5
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call23)
  %23 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpObject*
  %call25 = call i32 @gimp_container_remove(%struct._GimpContainer* %20, %struct._GimpObject* %23)
  %24 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %25 = load i32, i32* %undo_mode.addr, align 4
  %26 = load %struct._GimpUndoAccumulator*, %struct._GimpUndoAccumulator** %accum.addr, align 8
  call void @gimp_undo_pop(%struct._GimpUndo* %24, i32 %25, %struct._GimpUndoAccumulator* %26)
  %27 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  store %struct._GimpUndo* %27, %struct._GimpUndo** %retval
  br label %return

if.end.26:                                        ; preds = %do.end.16
  store %struct._GimpUndo* null, %struct._GimpUndo** %retval
  br label %return

return:                                           ; preds = %if.end.26, %if.then.21, %if.else.14, %if.else.9
  %28 = load %struct._GimpUndo*, %struct._GimpUndo** %retval
  ret %struct._GimpUndo* %28
}

declare %struct._GimpObject* @gimp_container_get_first_child(%struct._GimpContainer*) #1

declare i32 @gimp_container_remove(%struct._GimpContainer*, %struct._GimpObject*) #1

declare void @gimp_undo_pop(%struct._GimpUndo*, i32, %struct._GimpUndoAccumulator*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpUndo* @gimp_undo_stack_free_bottom(%struct._GimpUndoStack* %stack, i32 %undo_mode) #3 {
entry:
  %retval = alloca %struct._GimpUndo*, align 8
  %stack.addr = alloca %struct._GimpUndoStack*, align 8
  %undo_mode.addr = alloca i32, align 4
  %undo = alloca %struct._GimpUndo*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpUndoStack* %stack, %struct._GimpUndoStack** %stack.addr, align 8
  store i32 %undo_mode, i32* %undo_mode.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %stack.addr, align 8
  %1 = bitcast %struct._GimpUndoStack* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_undo_stack_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_undo_stack_free_bottom, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpUndo* null, %struct._GimpUndo** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %stack.addr, align 8
  %undos = getelementptr inbounds %struct._GimpUndoStack, %struct._GimpUndoStack* %13, i32 0, i32 1
  %14 = load %struct._GimpContainer*, %struct._GimpContainer** %undos, align 8
  %call11 = call %struct._GimpObject* @gimp_container_get_last_child(%struct._GimpContainer* %14)
  %15 = bitcast %struct._GimpObject* %call11 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_undo_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call12)
  %16 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpUndo*
  store %struct._GimpUndo* %16, %struct._GimpUndo** %undo, align 8
  %17 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %tobool14 = icmp ne %struct._GimpUndo* %17, null
  br i1 %tobool14, label %if.then.15, label %if.end.20

if.then.15:                                       ; preds = %do.end
  %18 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %stack.addr, align 8
  %undos16 = getelementptr inbounds %struct._GimpUndoStack, %struct._GimpUndoStack* %18, i32 0, i32 1
  %19 = load %struct._GimpContainer*, %struct._GimpContainer** %undos16, align 8
  %20 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %21 = bitcast %struct._GimpUndo* %20 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_object_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call17)
  %22 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpObject*
  %call19 = call i32 @gimp_container_remove(%struct._GimpContainer* %19, %struct._GimpObject* %22)
  %23 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %24 = load i32, i32* %undo_mode.addr, align 4
  call void @gimp_undo_free(%struct._GimpUndo* %23, i32 %24)
  %25 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  store %struct._GimpUndo* %25, %struct._GimpUndo** %retval
  br label %return

if.end.20:                                        ; preds = %do.end
  store %struct._GimpUndo* null, %struct._GimpUndo** %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.then.15, %if.else.9
  %26 = load %struct._GimpUndo*, %struct._GimpUndo** %retval
  ret %struct._GimpUndo* %26
}

declare %struct._GimpObject* @gimp_container_get_last_child(%struct._GimpContainer*) #1

declare void @gimp_undo_free(%struct._GimpUndo*, i32) #1

; Function Attrs: nounwind uwtable
define %struct._GimpUndo* @gimp_undo_stack_peek(%struct._GimpUndoStack* %stack) #3 {
entry:
  %retval = alloca %struct._GimpUndo*, align 8
  %stack.addr = alloca %struct._GimpUndoStack*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpUndoStack* %stack, %struct._GimpUndoStack** %stack.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %stack.addr, align 8
  %1 = bitcast %struct._GimpUndoStack* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_undo_stack_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_undo_stack_peek, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpUndo* null, %struct._GimpUndo** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %stack.addr, align 8
  %undos = getelementptr inbounds %struct._GimpUndoStack, %struct._GimpUndoStack* %13, i32 0, i32 1
  %14 = load %struct._GimpContainer*, %struct._GimpContainer** %undos, align 8
  %call11 = call %struct._GimpObject* @gimp_container_get_first_child(%struct._GimpContainer* %14)
  %15 = bitcast %struct._GimpObject* %call11 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_undo_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call12)
  %16 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpUndo*
  store %struct._GimpUndo* %16, %struct._GimpUndo** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load %struct._GimpUndo*, %struct._GimpUndo** %retval
  ret %struct._GimpUndo* %17
}

; Function Attrs: nounwind uwtable
define i32 @gimp_undo_stack_get_depth(%struct._GimpUndoStack* %stack) #3 {
entry:
  %retval = alloca i32, align 4
  %stack.addr = alloca %struct._GimpUndoStack*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpUndoStack* %stack, %struct._GimpUndoStack** %stack.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %stack.addr, align 8
  %1 = bitcast %struct._GimpUndoStack* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_undo_stack_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_undo_stack_get_depth, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %stack.addr, align 8
  %undos = getelementptr inbounds %struct._GimpUndoStack, %struct._GimpUndoStack* %13, i32 0, i32 1
  %14 = load %struct._GimpContainer*, %struct._GimpContainer** %undos, align 8
  %call11 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %14)
  store i32 %call11, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i32 @gimp_container_get_n_children(%struct._GimpContainer*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_undo_stack_class_init(%struct._GimpUndoStackClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpUndoStackClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %gimp_object_class = alloca %struct._GimpObjectClass*, align 8
  %undo_class = alloca %struct._GimpUndoClass*, align 8
  store %struct._GimpUndoStackClass* %klass, %struct._GimpUndoStackClass** %klass.addr, align 8
  %0 = load %struct._GimpUndoStackClass*, %struct._GimpUndoStackClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpUndoStackClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpUndoStackClass*, %struct._GimpUndoStackClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpUndoStackClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_object_get_type() #5
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpObjectClass*
  store %struct._GimpObjectClass* %5, %struct._GimpObjectClass** %gimp_object_class, align 8
  %6 = load %struct._GimpUndoStackClass*, %struct._GimpUndoStackClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpUndoStackClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_undo_get_type() #5
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpUndoClass*
  store %struct._GimpUndoClass* %8, %struct._GimpUndoClass** %undo_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_undo_stack_finalize, void (%struct._GObject*)** %finalize, align 8
  %10 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %gimp_object_class, align 8
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %10, i32 0, i32 3
  store i64 (%struct._GimpObject*, i64*)* @gimp_undo_stack_get_memsize, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %11 = load %struct._GimpUndoClass*, %struct._GimpUndoClass** %undo_class, align 8
  %pop = getelementptr inbounds %struct._GimpUndoClass, %struct._GimpUndoClass* %11, i32 0, i32 1
  store void (%struct._GimpUndo*, i32, %struct._GimpUndoAccumulator*)* @gimp_undo_stack_pop, void (%struct._GimpUndo*, i32, %struct._GimpUndoAccumulator*)** %pop, align 8
  %12 = load %struct._GimpUndoClass*, %struct._GimpUndoClass** %undo_class, align 8
  %free = getelementptr inbounds %struct._GimpUndoClass, %struct._GimpUndoClass* %12, i32 0, i32 2
  store void (%struct._GimpUndo*, i32)* @gimp_undo_stack_free, void (%struct._GimpUndo*, i32)** %free, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_undo_stack_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %stack = alloca %struct._GimpUndoStack*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_undo_stack_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpUndoStack*
  store %struct._GimpUndoStack* %2, %struct._GimpUndoStack** %stack, align 8
  %3 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %stack, align 8
  %undos = getelementptr inbounds %struct._GimpUndoStack, %struct._GimpUndoStack* %3, i32 0, i32 1
  %4 = load %struct._GimpContainer*, %struct._GimpContainer** %undos, align 8
  %tobool = icmp ne %struct._GimpContainer* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %stack, align 8
  %undos2 = getelementptr inbounds %struct._GimpUndoStack, %struct._GimpUndoStack* %5, i32 0, i32 1
  %6 = load %struct._GimpContainer*, %struct._GimpContainer** %undos2, align 8
  %7 = bitcast %struct._GimpContainer* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %stack, align 8
  %undos3 = getelementptr inbounds %struct._GimpUndoStack, %struct._GimpUndoStack* %8, i32 0, i32 1
  store %struct._GimpContainer* null, %struct._GimpContainer** %undos3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** @gimp_undo_stack_parent_class, align 8
  %10 = bitcast i8* %9 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 80)
  %11 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 6
  %12 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %13 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %12(%struct._GObject* %13)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @gimp_undo_stack_get_memsize(%struct._GimpObject* %object, i64* %gui_size) #3 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %gui_size.addr = alloca i64*, align 8
  %stack = alloca %struct._GimpUndoStack*, align 8
  %memsize = alloca i64, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i64* %gui_size, i64** %gui_size.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_undo_stack_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpUndoStack*
  store %struct._GimpUndoStack* %2, %struct._GimpUndoStack** %stack, align 8
  store i64 0, i64* %memsize, align 8
  %3 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %stack, align 8
  %undos = getelementptr inbounds %struct._GimpUndoStack, %struct._GimpUndoStack* %3, i32 0, i32 1
  %4 = load %struct._GimpContainer*, %struct._GimpContainer** %undos, align 8
  %5 = bitcast %struct._GimpContainer* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_object_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpObject*
  %7 = load i64*, i64** %gui_size.addr, align 8
  %call4 = call i64 @gimp_object_get_memsize(%struct._GimpObject* %6, i64* %7)
  %8 = load i64, i64* %memsize, align 8
  %add = add nsw i64 %8, %call4
  store i64 %add, i64* %memsize, align 8
  %9 = load i64, i64* %memsize, align 8
  %10 = load i8*, i8** @gimp_undo_stack_parent_class, align 8
  %11 = bitcast i8* %10 to %struct._GTypeClass*
  %call5 = call i64 @gimp_object_get_type() #5
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
define internal void @gimp_undo_stack_pop(%struct._GimpUndo* %undo, i32 %undo_mode, %struct._GimpUndoAccumulator* %accum) #3 {
entry:
  %undo.addr = alloca %struct._GimpUndo*, align 8
  %undo_mode.addr = alloca i32, align 4
  %accum.addr = alloca %struct._GimpUndoAccumulator*, align 8
  %stack = alloca %struct._GimpUndoStack*, align 8
  %list = alloca %struct._GList*, align 8
  %child = alloca %struct._GimpUndo*, align 8
  store %struct._GimpUndo* %undo, %struct._GimpUndo** %undo.addr, align 8
  store i32 %undo_mode, i32* %undo_mode.addr, align 4
  store %struct._GimpUndoAccumulator* %accum, %struct._GimpUndoAccumulator** %accum.addr, align 8
  %0 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %1 = bitcast %struct._GimpUndo* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_undo_stack_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpUndoStack*
  store %struct._GimpUndoStack* %2, %struct._GimpUndoStack** %stack, align 8
  %3 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %stack, align 8
  %undos = getelementptr inbounds %struct._GimpUndoStack, %struct._GimpUndoStack* %3, i32 0, i32 1
  %4 = load %struct._GimpContainer*, %struct._GimpContainer** %undos, align 8
  %5 = bitcast %struct._GimpContainer* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_list_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpList*
  %list4 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %6, i32 0, i32 1
  %7 = load %struct._GList*, %struct._GList** %list4, align 8
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
  %11 = bitcast i8* %10 to %struct._GimpUndo*
  store %struct._GimpUndo* %11, %struct._GimpUndo** %child, align 8
  %12 = load %struct._GimpUndo*, %struct._GimpUndo** %child, align 8
  %13 = load i32, i32* %undo_mode.addr, align 4
  %14 = load %struct._GimpUndoAccumulator*, %struct._GimpUndoAccumulator** %accum.addr, align 8
  call void @gimp_undo_pop(%struct._GimpUndo* %12, i32 %13, %struct._GimpUndoAccumulator* %14)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool5 = icmp ne %struct._GList* %15, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %16, i32 0, i32 1
  %17 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %17, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_undo_stack_free(%struct._GimpUndo* %undo, i32 %undo_mode) #3 {
entry:
  %undo.addr = alloca %struct._GimpUndo*, align 8
  %undo_mode.addr = alloca i32, align 4
  %stack = alloca %struct._GimpUndoStack*, align 8
  %list = alloca %struct._GList*, align 8
  %child = alloca %struct._GimpUndo*, align 8
  store %struct._GimpUndo* %undo, %struct._GimpUndo** %undo.addr, align 8
  store i32 %undo_mode, i32* %undo_mode.addr, align 4
  %0 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %1 = bitcast %struct._GimpUndo* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_undo_stack_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpUndoStack*
  store %struct._GimpUndoStack* %2, %struct._GimpUndoStack** %stack, align 8
  %3 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %stack, align 8
  %undos = getelementptr inbounds %struct._GimpUndoStack, %struct._GimpUndoStack* %3, i32 0, i32 1
  %4 = load %struct._GimpContainer*, %struct._GimpContainer** %undos, align 8
  %5 = bitcast %struct._GimpContainer* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_list_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpList*
  %list4 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %6, i32 0, i32 1
  %7 = load %struct._GList*, %struct._GList** %list4, align 8
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
  %11 = bitcast i8* %10 to %struct._GimpUndo*
  store %struct._GimpUndo* %11, %struct._GimpUndo** %child, align 8
  %12 = load %struct._GimpUndo*, %struct._GimpUndo** %child, align 8
  %13 = load i32, i32* %undo_mode.addr, align 4
  call void @gimp_undo_free(%struct._GimpUndo* %12, i32 %13)
  %14 = load %struct._GimpUndo*, %struct._GimpUndo** %child, align 8
  %15 = bitcast %struct._GimpUndo* %14 to i8*
  call void @g_object_unref(i8* %15)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool5 = icmp ne %struct._GList* %16, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %17, i32 0, i32 1
  %18 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %18, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %stack, align 8
  %undos6 = getelementptr inbounds %struct._GimpUndoStack, %struct._GimpUndoStack* %19, i32 0, i32 1
  %20 = load %struct._GimpContainer*, %struct._GimpContainer** %undos6, align 8
  call void @gimp_container_clear(%struct._GimpContainer* %20)
  ret void
}

declare void @g_object_unref(i8*) #1

declare i64 @gimp_object_get_memsize(%struct._GimpObject*, i64*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_list_get_type() #2

declare void @gimp_container_clear(%struct._GimpContainer*) #1

declare %struct._GimpContainer* @gimp_list_new(i64, i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
