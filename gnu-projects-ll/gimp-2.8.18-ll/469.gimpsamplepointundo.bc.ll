; ModuleID = './app/core/gimpsamplepointundo.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpSamplePointUndoClass = type { %struct._GimpUndoClass }
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
%struct._GimpSamplePointUndo = type { %struct._GimpUndo, %struct._GimpSamplePoint*, i32, i32 }
%struct._GimpSamplePoint = type { i32, i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_sample_point_undo_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"GimpSamplePointUndo\00", align 1
@gimp_sample_point_undo_parent_class = internal global i8* null, align 8
@GimpSamplePointUndo_private_offset = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"sample-point\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"gimpsamplepointundo.c\00", align 1
@__func__.gimp_sample_point_undo_constructed = private unnamed_addr constant [35 x i8] c"gimp_sample_point_undo_constructed\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"sample_point_undo->sample_point != NULL\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"property\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_sample_point_undo_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_sample_point_undo_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_sample_point_undo_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_undo_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 296, void (i8*, i8*)* bitcast (void (i8*)* @gimp_sample_point_undo_class_intern_init to void (i8*, i8*)*), i32 88, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpSamplePointUndo*)* @gimp_sample_point_undo_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_sample_point_undo_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_sample_point_undo_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_undo_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_sample_point_undo_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_sample_point_undo_parent_class, align 8
  %1 = load i32, i32* @GimpSamplePointUndo_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpSamplePointUndo_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpSamplePointUndoClass*
  call void @gimp_sample_point_undo_class_init(%struct._GimpSamplePointUndoClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_sample_point_undo_init(%struct._GimpSamplePointUndo* %undo) #3 {
entry:
  %undo.addr = alloca %struct._GimpSamplePointUndo*, align 8
  store %struct._GimpSamplePointUndo* %undo, %struct._GimpSamplePointUndo** %undo.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_sample_point_undo_class_init(%struct._GimpSamplePointUndoClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpSamplePointUndoClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %undo_class = alloca %struct._GimpUndoClass*, align 8
  store %struct._GimpSamplePointUndoClass* %klass, %struct._GimpSamplePointUndoClass** %klass.addr, align 8
  %0 = load %struct._GimpSamplePointUndoClass*, %struct._GimpSamplePointUndoClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpSamplePointUndoClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpSamplePointUndoClass*, %struct._GimpSamplePointUndoClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpSamplePointUndoClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_undo_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpUndoClass*
  store %struct._GimpUndoClass* %5, %struct._GimpUndoClass** %undo_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_sample_point_undo_constructed, void (%struct._GObject*)** %constructed, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_sample_point_undo_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_sample_point_undo_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %9 = load %struct._GimpUndoClass*, %struct._GimpUndoClass** %undo_class, align 8
  %pop = getelementptr inbounds %struct._GimpUndoClass, %struct._GimpUndoClass* %9, i32 0, i32 1
  store void (%struct._GimpUndo*, i32, %struct._GimpUndoAccumulator*)* @gimp_sample_point_undo_pop, void (%struct._GimpUndo*, i32, %struct._GimpUndoAccumulator*)** %pop, align 8
  %10 = load %struct._GimpUndoClass*, %struct._GimpUndoClass** %undo_class, align 8
  %free = getelementptr inbounds %struct._GimpUndoClass, %struct._GimpUndoClass* %10, i32 0, i32 2
  store void (%struct._GimpUndo*, i32)* @gimp_sample_point_undo_free, void (%struct._GimpUndo*, i32)** %free, align 8
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call i64 @gimp_sample_point_get_type() #6
  %call4 = call %struct._GParamSpec* @g_param_spec_boxed(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* null, i64 %call3, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 1, %struct._GParamSpec* %call4)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_sample_point_undo_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %sample_point_undo = alloca %struct._GimpSamplePointUndo*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_sample_point_undo_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSamplePointUndo*
  store %struct._GimpSamplePointUndo* %2, %struct._GimpSamplePointUndo** %sample_point_undo, align 8
  %3 = load i8*, i8** @gimp_sample_point_undo_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_sample_point_undo_parent_class, align 8
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
  %12 = load %struct._GimpSamplePointUndo*, %struct._GimpSamplePointUndo** %sample_point_undo, align 8
  %sample_point = getelementptr inbounds %struct._GimpSamplePointUndo, %struct._GimpSamplePointUndo* %12, i32 0, i32 1
  %13 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %cmp = icmp ne %struct._GimpSamplePoint* %13, null
  br i1 %cmp, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.6

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 92, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_sample_point_undo_constructed, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i32 0, i32 0)) #7
  unreachable

if.end.6:                                         ; preds = %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  %14 = load %struct._GimpSamplePointUndo*, %struct._GimpSamplePointUndo** %sample_point_undo, align 8
  %sample_point7 = getelementptr inbounds %struct._GimpSamplePointUndo, %struct._GimpSamplePointUndo* %14, i32 0, i32 1
  %15 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point7, align 8
  %x = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %15, i32 0, i32 2
  %16 = load i32, i32* %x, align 4
  %17 = load %struct._GimpSamplePointUndo*, %struct._GimpSamplePointUndo** %sample_point_undo, align 8
  %x8 = getelementptr inbounds %struct._GimpSamplePointUndo, %struct._GimpSamplePointUndo* %17, i32 0, i32 2
  store i32 %16, i32* %x8, align 4
  %18 = load %struct._GimpSamplePointUndo*, %struct._GimpSamplePointUndo** %sample_point_undo, align 8
  %sample_point9 = getelementptr inbounds %struct._GimpSamplePointUndo, %struct._GimpSamplePointUndo* %18, i32 0, i32 1
  %19 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point9, align 8
  %y = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %19, i32 0, i32 3
  %20 = load i32, i32* %y, align 4
  %21 = load %struct._GimpSamplePointUndo*, %struct._GimpSamplePointUndo** %sample_point_undo, align 8
  %y10 = getelementptr inbounds %struct._GimpSamplePointUndo, %struct._GimpSamplePointUndo* %21, i32 0, i32 3
  store i32 %20, i32* %y10, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_sample_point_undo_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %sample_point_undo = alloca %struct._GimpSamplePointUndo*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_sample_point_undo_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSamplePointUndo*
  store %struct._GimpSamplePointUndo* %2, %struct._GimpSamplePointUndo** %sample_point_undo, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_dup_boxed(%struct._GValue* %4)
  %5 = bitcast i8* %call2 to %struct._GimpSamplePoint*
  %6 = load %struct._GimpSamplePointUndo*, %struct._GimpSamplePointUndo** %sample_point_undo, align 8
  %sample_point = getelementptr inbounds %struct._GimpSamplePointUndo, %struct._GimpSamplePointUndo* %6, i32 0, i32 1
  store %struct._GimpSamplePoint* %5, %struct._GimpSamplePoint** %sample_point, align 8
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
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 113, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 %10, i8* %12, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_sample_point_undo_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %sample_point_undo = alloca %struct._GimpSamplePointUndo*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_sample_point_undo_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSamplePointUndo*
  store %struct._GimpSamplePointUndo* %2, %struct._GimpSamplePointUndo** %sample_point_undo, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpSamplePointUndo*, %struct._GimpSamplePointUndo** %sample_point_undo, align 8
  %sample_point = getelementptr inbounds %struct._GimpSamplePointUndo, %struct._GimpSamplePointUndo* %5, i32 0, i32 1
  %6 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %7 = bitcast %struct._GimpSamplePoint* %6 to i8*
  call void @g_value_set_boxed(%struct._GValue* %4, i8* %7)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %8 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %8, %struct._GObject** %_glib__object, align 8
  %9 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %9, %struct._GParamSpec** %_glib__pspec, align 8
  %10 = load i32, i32* %property_id.addr, align 4
  store i32 %10, i32* %_glib__property_id, align 4
  %11 = load i32, i32* %_glib__property_id, align 4
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %12, i32 0, i32 1
  %13 = load i8*, i8** %name, align 8
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %15 = bitcast %struct._GParamSpec* %14 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %15, i32 0, i32 0
  %16 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %16, i32 0, i32 0
  %17 = load i64, i64* %g_type, align 8
  %call2 = call i8* @g_type_name(i64 %17)
  %18 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %19 = bitcast %struct._GObject* %18 to %struct._GTypeInstance*
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type4 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type4, align 8
  %call5 = call i8* @g_type_name(i64 %21)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 133, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 %11, i8* %13, i8* %call2, i8* %call5)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_sample_point_undo_pop(%struct._GimpUndo* %undo, i32 %undo_mode, %struct._GimpUndoAccumulator* %accum) #3 {
entry:
  %undo.addr = alloca %struct._GimpUndo*, align 8
  %undo_mode.addr = alloca i32, align 4
  %accum.addr = alloca %struct._GimpUndoAccumulator*, align 8
  %sample_point_undo = alloca %struct._GimpSamplePointUndo*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store %struct._GimpUndo* %undo, %struct._GimpUndo** %undo.addr, align 8
  store i32 %undo_mode, i32* %undo_mode.addr, align 4
  store %struct._GimpUndoAccumulator* %accum, %struct._GimpUndoAccumulator** %accum.addr, align 8
  %0 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %1 = bitcast %struct._GimpUndo* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_sample_point_undo_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSamplePointUndo*
  store %struct._GimpSamplePointUndo* %2, %struct._GimpSamplePointUndo** %sample_point_undo, align 8
  %3 = load i8*, i8** @gimp_sample_point_undo_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gimp_undo_get_type() #6
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GimpUndoClass*
  %pop = getelementptr inbounds %struct._GimpUndoClass, %struct._GimpUndoClass* %5, i32 0, i32 1
  %6 = load void (%struct._GimpUndo*, i32, %struct._GimpUndoAccumulator*)*, void (%struct._GimpUndo*, i32, %struct._GimpUndoAccumulator*)** %pop, align 8
  %7 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %8 = load i32, i32* %undo_mode.addr, align 4
  %9 = load %struct._GimpUndoAccumulator*, %struct._GimpUndoAccumulator** %accum.addr, align 8
  call void %6(%struct._GimpUndo* %7, i32 %8, %struct._GimpUndoAccumulator* %9)
  %10 = load %struct._GimpSamplePointUndo*, %struct._GimpSamplePointUndo** %sample_point_undo, align 8
  %sample_point = getelementptr inbounds %struct._GimpSamplePointUndo, %struct._GimpSamplePointUndo* %10, i32 0, i32 1
  %11 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %x4 = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %11, i32 0, i32 2
  %12 = load i32, i32* %x4, align 4
  store i32 %12, i32* %x, align 4
  %13 = load %struct._GimpSamplePointUndo*, %struct._GimpSamplePointUndo** %sample_point_undo, align 8
  %sample_point5 = getelementptr inbounds %struct._GimpSamplePointUndo, %struct._GimpSamplePointUndo* %13, i32 0, i32 1
  %14 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point5, align 8
  %y6 = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %14, i32 0, i32 3
  %15 = load i32, i32* %y6, align 4
  store i32 %15, i32* %y, align 4
  %16 = load i32, i32* %x, align 4
  %cmp = icmp eq i32 %16, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %17 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %image = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %17, i32 0, i32 1
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %19 = load %struct._GimpSamplePointUndo*, %struct._GimpSamplePointUndo** %sample_point_undo, align 8
  %sample_point7 = getelementptr inbounds %struct._GimpSamplePointUndo, %struct._GimpSamplePointUndo* %19, i32 0, i32 1
  %20 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point7, align 8
  %21 = load %struct._GimpSamplePointUndo*, %struct._GimpSamplePointUndo** %sample_point_undo, align 8
  %x8 = getelementptr inbounds %struct._GimpSamplePointUndo, %struct._GimpSamplePointUndo* %21, i32 0, i32 2
  %22 = load i32, i32* %x8, align 4
  %23 = load %struct._GimpSamplePointUndo*, %struct._GimpSamplePointUndo** %sample_point_undo, align 8
  %y9 = getelementptr inbounds %struct._GimpSamplePointUndo, %struct._GimpSamplePointUndo* %23, i32 0, i32 3
  %24 = load i32, i32* %y9, align 4
  call void @gimp_image_add_sample_point(%struct._GimpImage* %18, %struct._GimpSamplePoint* %20, i32 %22, i32 %24)
  br label %if.end.24

if.else:                                          ; preds = %entry
  %25 = load %struct._GimpSamplePointUndo*, %struct._GimpSamplePointUndo** %sample_point_undo, align 8
  %x10 = getelementptr inbounds %struct._GimpSamplePointUndo, %struct._GimpSamplePointUndo* %25, i32 0, i32 2
  %26 = load i32, i32* %x10, align 4
  %cmp11 = icmp eq i32 %26, -1
  br i1 %cmp11, label %if.then.12, label %if.else.15

if.then.12:                                       ; preds = %if.else
  %27 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %image13 = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %27, i32 0, i32 1
  %28 = load %struct._GimpImage*, %struct._GimpImage** %image13, align 8
  %29 = load %struct._GimpSamplePointUndo*, %struct._GimpSamplePointUndo** %sample_point_undo, align 8
  %sample_point14 = getelementptr inbounds %struct._GimpSamplePointUndo, %struct._GimpSamplePointUndo* %29, i32 0, i32 1
  %30 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point14, align 8
  call void @gimp_image_remove_sample_point(%struct._GimpImage* %28, %struct._GimpSamplePoint* %30, i32 0)
  br label %if.end

if.else.15:                                       ; preds = %if.else
  %31 = load %struct._GimpSamplePointUndo*, %struct._GimpSamplePointUndo** %sample_point_undo, align 8
  %x16 = getelementptr inbounds %struct._GimpSamplePointUndo, %struct._GimpSamplePointUndo* %31, i32 0, i32 2
  %32 = load i32, i32* %x16, align 4
  %33 = load %struct._GimpSamplePointUndo*, %struct._GimpSamplePointUndo** %sample_point_undo, align 8
  %sample_point17 = getelementptr inbounds %struct._GimpSamplePointUndo, %struct._GimpSamplePointUndo* %33, i32 0, i32 1
  %34 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point17, align 8
  %x18 = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %34, i32 0, i32 2
  store i32 %32, i32* %x18, align 4
  %35 = load %struct._GimpSamplePointUndo*, %struct._GimpSamplePointUndo** %sample_point_undo, align 8
  %y19 = getelementptr inbounds %struct._GimpSamplePointUndo, %struct._GimpSamplePointUndo* %35, i32 0, i32 3
  %36 = load i32, i32* %y19, align 4
  %37 = load %struct._GimpSamplePointUndo*, %struct._GimpSamplePointUndo** %sample_point_undo, align 8
  %sample_point20 = getelementptr inbounds %struct._GimpSamplePointUndo, %struct._GimpSamplePointUndo* %37, i32 0, i32 1
  %38 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point20, align 8
  %y21 = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %38, i32 0, i32 3
  store i32 %36, i32* %y21, align 4
  %39 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %image22 = getelementptr inbounds %struct._GimpUndo, %struct._GimpUndo* %39, i32 0, i32 1
  %40 = load %struct._GimpImage*, %struct._GimpImage** %image22, align 8
  %41 = load %struct._GimpSamplePointUndo*, %struct._GimpSamplePointUndo** %sample_point_undo, align 8
  %sample_point23 = getelementptr inbounds %struct._GimpSamplePointUndo, %struct._GimpSamplePointUndo* %41, i32 0, i32 1
  %42 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point23, align 8
  call void @gimp_image_sample_point_moved(%struct._GimpImage* %40, %struct._GimpSamplePoint* %42)
  br label %if.end

if.end:                                           ; preds = %if.else.15, %if.then.12
  br label %if.end.24

if.end.24:                                        ; preds = %if.end, %if.then
  %43 = load i32, i32* %x, align 4
  %44 = load %struct._GimpSamplePointUndo*, %struct._GimpSamplePointUndo** %sample_point_undo, align 8
  %x25 = getelementptr inbounds %struct._GimpSamplePointUndo, %struct._GimpSamplePointUndo* %44, i32 0, i32 2
  store i32 %43, i32* %x25, align 4
  %45 = load i32, i32* %y, align 4
  %46 = load %struct._GimpSamplePointUndo*, %struct._GimpSamplePointUndo** %sample_point_undo, align 8
  %y26 = getelementptr inbounds %struct._GimpSamplePointUndo, %struct._GimpSamplePointUndo* %46, i32 0, i32 3
  store i32 %45, i32* %y26, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_sample_point_undo_free(%struct._GimpUndo* %undo, i32 %undo_mode) #3 {
entry:
  %undo.addr = alloca %struct._GimpUndo*, align 8
  %undo_mode.addr = alloca i32, align 4
  %sample_point_undo = alloca %struct._GimpSamplePointUndo*, align 8
  store %struct._GimpUndo* %undo, %struct._GimpUndo** %undo.addr, align 8
  store i32 %undo_mode, i32* %undo_mode.addr, align 4
  %0 = load %struct._GimpUndo*, %struct._GimpUndo** %undo.addr, align 8
  %1 = bitcast %struct._GimpUndo* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_sample_point_undo_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSamplePointUndo*
  store %struct._GimpSamplePointUndo* %2, %struct._GimpSamplePointUndo** %sample_point_undo, align 8
  %3 = load %struct._GimpSamplePointUndo*, %struct._GimpSamplePointUndo** %sample_point_undo, align 8
  %sample_point = getelementptr inbounds %struct._GimpSamplePointUndo, %struct._GimpSamplePointUndo* %3, i32 0, i32 1
  %4 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %tobool = icmp ne %struct._GimpSamplePoint* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpSamplePointUndo*, %struct._GimpSamplePointUndo** %sample_point_undo, align 8
  %sample_point2 = getelementptr inbounds %struct._GimpSamplePointUndo, %struct._GimpSamplePointUndo* %5, i32 0, i32 1
  %6 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point2, align 8
  call void @gimp_sample_point_unref(%struct._GimpSamplePoint* %6)
  %7 = load %struct._GimpSamplePointUndo*, %struct._GimpSamplePointUndo** %sample_point_undo, align 8
  %sample_point3 = getelementptr inbounds %struct._GimpSamplePointUndo, %struct._GimpSamplePointUndo* %7, i32 0, i32 1
  store %struct._GimpSamplePoint* null, %struct._GimpSamplePoint** %sample_point3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** @gimp_sample_point_undo_parent_class, align 8
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

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_boxed(i8*, i8*, i8*, i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_sample_point_get_type() #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #4

declare i8* @g_value_dup_boxed(%struct._GValue*) #1

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

declare void @g_value_set_boxed(%struct._GValue*, i8*) #1

declare void @gimp_image_add_sample_point(%struct._GimpImage*, %struct._GimpSamplePoint*, i32, i32) #1

declare void @gimp_image_remove_sample_point(%struct._GimpImage*, %struct._GimpSamplePoint*, i32) #1

declare void @gimp_image_sample_point_moved(%struct._GimpImage*, %struct._GimpSamplePoint*) #1

declare void @gimp_sample_point_unref(%struct._GimpSamplePoint*) #1

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
