; ModuleID = './app/widgets/gimpactionfactory.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpActionFactoryClass = type { %struct._GimpObjectClass }
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
%struct._GimpActionFactory = type { %struct._GimpObject, %struct._Gimp*, %struct._GList* }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpContext = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpActionGroup = type { %struct._GtkActionGroup, %struct._Gimp*, i8*, i8*, i8*, void (%struct._GimpActionGroup*, i8*)* }
%struct._GtkActionGroup = type { %struct._GObject, %struct._GtkActionGroupPrivate* }
%struct._GtkActionGroupPrivate = type opaque
%struct._GimpActionFactoryEntry = type { i8*, i8*, i8*, void (%struct._GimpActionGroup*)*, void (%struct._GimpActionGroup*, i8*)* }

@gimp_action_factory_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"GimpActionFactory\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_action_factory_new = private unnamed_addr constant [24 x i8] c"gimp_action_factory_new\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@__func__.gimp_action_factory_group_register = private unnamed_addr constant [35 x i8] c"gimp_action_factory_group_register\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"GIMP_IS_ACTION_FACTORY (factory)\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"identifier != NULL\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"label != NULL\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"setup_func != NULL\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"update_func != NULL\00", align 1
@__func__.gimp_action_factory_group_new = private unnamed_addr constant [30 x i8] c"gimp_action_factory_group_new\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"%s: no entry registered for \22%s\22\00", align 1
@gimp_action_factory_parent_class = internal global i8* null, align 8
@GimpActionFactory_private_offset = internal global i32 0, align 4

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_action_factory_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_action_factory_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_action_factory_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_object_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 160, void (i8*, i8*)* bitcast (void (i8*)* @gimp_action_factory_class_intern_init to void (i8*, i8*)*), i32 48, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpActionFactory*)* @gimp_action_factory_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_action_factory_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_action_factory_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_action_factory_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_action_factory_parent_class, align 8
  %1 = load i32, i32* @GimpActionFactory_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpActionFactory_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpActionFactoryClass*
  call void @gimp_action_factory_class_init(%struct._GimpActionFactoryClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_action_factory_init(%struct._GimpActionFactory* %factory) #3 {
entry:
  %factory.addr = alloca %struct._GimpActionFactory*, align 8
  store %struct._GimpActionFactory* %factory, %struct._GimpActionFactory** %factory.addr, align 8
  %0 = load %struct._GimpActionFactory*, %struct._GimpActionFactory** %factory.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpActionFactory, %struct._GimpActionFactory* %0, i32 0, i32 1
  store %struct._Gimp* null, %struct._Gimp** %gimp, align 8
  %1 = load %struct._GimpActionFactory*, %struct._GimpActionFactory** %factory.addr, align 8
  %registered_groups = getelementptr inbounds %struct._GimpActionFactory, %struct._GimpActionFactory* %1, i32 0, i32 2
  store %struct._GList* null, %struct._GList** %registered_groups, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpActionFactory* @gimp_action_factory_new(%struct._Gimp* %gimp) #3 {
entry:
  %retval = alloca %struct._GimpActionFactory*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %factory = alloca %struct._GimpActionFactory*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_action_factory_new, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpActionFactory* null, %struct._GimpActionFactory** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_action_factory_get_type() #6
  %call12 = call i8* (i64, i8*, ...) @g_object_new(i64 %call11, i8* null)
  %13 = bitcast i8* %call12 to %struct._GimpActionFactory*
  store %struct._GimpActionFactory* %13, %struct._GimpActionFactory** %factory, align 8
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %15 = load %struct._GimpActionFactory*, %struct._GimpActionFactory** %factory, align 8
  %gimp13 = getelementptr inbounds %struct._GimpActionFactory, %struct._GimpActionFactory* %15, i32 0, i32 1
  store %struct._Gimp* %14, %struct._Gimp** %gimp13, align 8
  %16 = load %struct._GimpActionFactory*, %struct._GimpActionFactory** %factory, align 8
  store %struct._GimpActionFactory* %16, %struct._GimpActionFactory** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load %struct._GimpActionFactory*, %struct._GimpActionFactory** %retval
  ret %struct._GimpActionFactory* %17
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_action_factory_group_register(%struct._GimpActionFactory* %factory, i8* %identifier, i8* %label, i8* %stock_id, void (%struct._GimpActionGroup*)* %setup_func, void (%struct._GimpActionGroup*, i8*)* %update_func) #3 {
entry:
  %factory.addr = alloca %struct._GimpActionFactory*, align 8
  %identifier.addr = alloca i8*, align 8
  %label.addr = alloca i8*, align 8
  %stock_id.addr = alloca i8*, align 8
  %setup_func.addr = alloca void (%struct._GimpActionGroup*)*, align 8
  %update_func.addr = alloca void (%struct._GimpActionGroup*, i8*)*, align 8
  %entry1 = alloca %struct._GimpActionFactoryEntry*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpActionFactory* %factory, %struct._GimpActionFactory** %factory.addr, align 8
  store i8* %identifier, i8** %identifier.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i8* %stock_id, i8** %stock_id.addr, align 8
  store void (%struct._GimpActionGroup*)* %setup_func, void (%struct._GimpActionGroup*)** %setup_func.addr, align 8
  store void (%struct._GimpActionGroup*, i8*)* %update_func, void (%struct._GimpActionGroup*, i8*)** %update_func.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpActionFactory*, %struct._GimpActionFactory** %factory.addr, align 8
  %1 = bitcast %struct._GimpActionFactory* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_action_factory_get_type() #6
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_action_factory_group_register, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %13 = load i8*, i8** %identifier.addr, align 8
  %cmp13 = icmp ne i8* %13, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.12
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_action_factory_group_register, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %14 = load i8*, i8** %label.addr, align 8
  %cmp19 = icmp ne i8* %14, null
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body.18
  br label %if.end.22

if.else.21:                                       ; preds = %do.body.18
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_action_factory_group_register, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.22:                                        ; preds = %if.then.20
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  br label %do.body.24

do.body.24:                                       ; preds = %do.end.23
  %15 = load void (%struct._GimpActionGroup*)*, void (%struct._GimpActionGroup*)** %setup_func.addr, align 8
  %cmp25 = icmp ne void (%struct._GimpActionGroup*)* %15, null
  br i1 %cmp25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %do.body.24
  br label %if.end.28

if.else.27:                                       ; preds = %do.body.24
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_action_factory_group_register, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.28:                                        ; preds = %if.then.26
  br label %do.end.29

do.end.29:                                        ; preds = %if.end.28
  br label %do.body.30

do.body.30:                                       ; preds = %do.end.29
  %16 = load void (%struct._GimpActionGroup*, i8*)*, void (%struct._GimpActionGroup*, i8*)** %update_func.addr, align 8
  %cmp31 = icmp ne void (%struct._GimpActionGroup*, i8*)* %16, null
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %do.body.30
  br label %if.end.34

if.else.33:                                       ; preds = %do.body.30
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_action_factory_group_register, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.34:                                        ; preds = %if.then.32
  br label %do.end.35

do.end.35:                                        ; preds = %if.end.34
  %call36 = call noalias i8* @g_slice_alloc0(i64 40)
  %17 = bitcast i8* %call36 to %struct._GimpActionFactoryEntry*
  store %struct._GimpActionFactoryEntry* %17, %struct._GimpActionFactoryEntry** %entry1, align 8
  %18 = load i8*, i8** %identifier.addr, align 8
  %call37 = call noalias i8* @g_strdup(i8* %18)
  %19 = load %struct._GimpActionFactoryEntry*, %struct._GimpActionFactoryEntry** %entry1, align 8
  %identifier38 = getelementptr inbounds %struct._GimpActionFactoryEntry, %struct._GimpActionFactoryEntry* %19, i32 0, i32 0
  store i8* %call37, i8** %identifier38, align 8
  %20 = load i8*, i8** %label.addr, align 8
  %call39 = call noalias i8* @g_strdup(i8* %20)
  %21 = load %struct._GimpActionFactoryEntry*, %struct._GimpActionFactoryEntry** %entry1, align 8
  %label40 = getelementptr inbounds %struct._GimpActionFactoryEntry, %struct._GimpActionFactoryEntry* %21, i32 0, i32 1
  store i8* %call39, i8** %label40, align 8
  %22 = load i8*, i8** %stock_id.addr, align 8
  %call41 = call noalias i8* @g_strdup(i8* %22)
  %23 = load %struct._GimpActionFactoryEntry*, %struct._GimpActionFactoryEntry** %entry1, align 8
  %stock_id42 = getelementptr inbounds %struct._GimpActionFactoryEntry, %struct._GimpActionFactoryEntry* %23, i32 0, i32 2
  store i8* %call41, i8** %stock_id42, align 8
  %24 = load void (%struct._GimpActionGroup*)*, void (%struct._GimpActionGroup*)** %setup_func.addr, align 8
  %25 = load %struct._GimpActionFactoryEntry*, %struct._GimpActionFactoryEntry** %entry1, align 8
  %setup_func43 = getelementptr inbounds %struct._GimpActionFactoryEntry, %struct._GimpActionFactoryEntry* %25, i32 0, i32 3
  store void (%struct._GimpActionGroup*)* %24, void (%struct._GimpActionGroup*)** %setup_func43, align 8
  %26 = load void (%struct._GimpActionGroup*, i8*)*, void (%struct._GimpActionGroup*, i8*)** %update_func.addr, align 8
  %27 = load %struct._GimpActionFactoryEntry*, %struct._GimpActionFactoryEntry** %entry1, align 8
  %update_func44 = getelementptr inbounds %struct._GimpActionFactoryEntry, %struct._GimpActionFactoryEntry* %27, i32 0, i32 4
  store void (%struct._GimpActionGroup*, i8*)* %26, void (%struct._GimpActionGroup*, i8*)** %update_func44, align 8
  %28 = load %struct._GimpActionFactory*, %struct._GimpActionFactory** %factory.addr, align 8
  %registered_groups = getelementptr inbounds %struct._GimpActionFactory, %struct._GimpActionFactory* %28, i32 0, i32 2
  %29 = load %struct._GList*, %struct._GList** %registered_groups, align 8
  %30 = load %struct._GimpActionFactoryEntry*, %struct._GimpActionFactoryEntry** %entry1, align 8
  %31 = bitcast %struct._GimpActionFactoryEntry* %30 to i8*
  %call45 = call %struct._GList* @g_list_prepend(%struct._GList* %29, i8* %31)
  %32 = load %struct._GimpActionFactory*, %struct._GimpActionFactory** %factory.addr, align 8
  %registered_groups46 = getelementptr inbounds %struct._GimpActionFactory, %struct._GimpActionFactory* %32, i32 0, i32 2
  store %struct._GList* %call45, %struct._GList** %registered_groups46, align 8
  br label %return

return:                                           ; preds = %do.end.35, %if.else.33, %if.else.27, %if.else.21, %if.else.15, %if.else.10
  ret void
}

declare noalias i8* @g_slice_alloc0(i64) #1

declare noalias i8* @g_strdup(i8*) #1

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpActionGroup* @gimp_action_factory_group_new(%struct._GimpActionFactory* %factory, i8* %identifier, i8* %user_data) #3 {
entry:
  %retval = alloca %struct._GimpActionGroup*, align 8
  %factory.addr = alloca %struct._GimpActionFactory*, align 8
  %identifier.addr = alloca i8*, align 8
  %user_data.addr = alloca i8*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %entry19 = alloca %struct._GimpActionFactoryEntry*, align 8
  %group = alloca %struct._GimpActionGroup*, align 8
  store %struct._GimpActionFactory* %factory, %struct._GimpActionFactory** %factory.addr, align 8
  store i8* %identifier, i8** %identifier.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpActionFactory*, %struct._GimpActionFactory** %factory.addr, align 8
  %1 = bitcast %struct._GimpActionFactory* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_action_factory_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_action_factory_group_new, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpActionGroup* null, %struct._GimpActionGroup** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %identifier.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_action_factory_group_new, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpActionGroup* null, %struct._GimpActionGroup** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpActionFactory*, %struct._GimpActionFactory** %factory.addr, align 8
  %registered_groups = getelementptr inbounds %struct._GimpActionFactory, %struct._GimpActionFactory* %14, i32 0, i32 2
  %15 = load %struct._GList*, %struct._GList** %registered_groups, align 8
  store %struct._GList* %15, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end.16
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool17 = icmp ne %struct._GList* %16, null
  br i1 %tobool17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %17, i32 0, i32 0
  %18 = load i8*, i8** %data, align 8
  %19 = bitcast i8* %18 to %struct._GimpActionFactoryEntry*
  store %struct._GimpActionFactoryEntry* %19, %struct._GimpActionFactoryEntry** %entry19, align 8
  %20 = load %struct._GimpActionFactoryEntry*, %struct._GimpActionFactoryEntry** %entry19, align 8
  %identifier20 = getelementptr inbounds %struct._GimpActionFactoryEntry, %struct._GimpActionFactoryEntry* %20, i32 0, i32 0
  %21 = load i8*, i8** %identifier20, align 8
  %22 = load i8*, i8** %identifier.addr, align 8
  %call21 = call i32 @strcmp(i8* %21, i8* %22) #7
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.31, label %if.then.23

if.then.23:                                       ; preds = %for.body
  %23 = load %struct._GimpActionFactory*, %struct._GimpActionFactory** %factory.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpActionFactory, %struct._GimpActionFactory* %23, i32 0, i32 1
  %24 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %25 = load %struct._GimpActionFactoryEntry*, %struct._GimpActionFactoryEntry** %entry19, align 8
  %identifier25 = getelementptr inbounds %struct._GimpActionFactoryEntry, %struct._GimpActionFactoryEntry* %25, i32 0, i32 0
  %26 = load i8*, i8** %identifier25, align 8
  %27 = load %struct._GimpActionFactoryEntry*, %struct._GimpActionFactoryEntry** %entry19, align 8
  %label = getelementptr inbounds %struct._GimpActionFactoryEntry, %struct._GimpActionFactoryEntry* %27, i32 0, i32 1
  %28 = load i8*, i8** %label, align 8
  %29 = load %struct._GimpActionFactoryEntry*, %struct._GimpActionFactoryEntry** %entry19, align 8
  %stock_id = getelementptr inbounds %struct._GimpActionFactoryEntry, %struct._GimpActionFactoryEntry* %29, i32 0, i32 2
  %30 = load i8*, i8** %stock_id, align 8
  %31 = load i8*, i8** %user_data.addr, align 8
  %32 = load %struct._GimpActionFactoryEntry*, %struct._GimpActionFactoryEntry** %entry19, align 8
  %update_func = getelementptr inbounds %struct._GimpActionFactoryEntry, %struct._GimpActionFactoryEntry* %32, i32 0, i32 4
  %33 = load void (%struct._GimpActionGroup*, i8*)*, void (%struct._GimpActionGroup*, i8*)** %update_func, align 8
  %call26 = call %struct._GimpActionGroup* @gimp_action_group_new(%struct._Gimp* %24, i8* %26, i8* %28, i8* %30, i8* %31, void (%struct._GimpActionGroup*, i8*)* %33)
  store %struct._GimpActionGroup* %call26, %struct._GimpActionGroup** %group, align 8
  %34 = load %struct._GimpActionFactoryEntry*, %struct._GimpActionFactoryEntry** %entry19, align 8
  %setup_func = getelementptr inbounds %struct._GimpActionFactoryEntry, %struct._GimpActionFactoryEntry* %34, i32 0, i32 3
  %35 = load void (%struct._GimpActionGroup*)*, void (%struct._GimpActionGroup*)** %setup_func, align 8
  %tobool27 = icmp ne void (%struct._GimpActionGroup*)* %35, null
  br i1 %tobool27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.then.23
  %36 = load %struct._GimpActionFactoryEntry*, %struct._GimpActionFactoryEntry** %entry19, align 8
  %setup_func29 = getelementptr inbounds %struct._GimpActionFactoryEntry, %struct._GimpActionFactoryEntry* %36, i32 0, i32 3
  %37 = load void (%struct._GimpActionGroup*)*, void (%struct._GimpActionGroup*)** %setup_func29, align 8
  %38 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group, align 8
  call void %37(%struct._GimpActionGroup* %38)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %if.then.23
  %39 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group, align 8
  store %struct._GimpActionGroup* %39, %struct._GimpActionGroup** %retval
  br label %return

if.end.31:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.31
  %40 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool32 = icmp ne %struct._GList* %40, null
  br i1 %tobool32, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %41 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %41, i32 0, i32 1
  %42 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %42, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = load i8*, i8** %identifier.addr, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_action_factory_group_new, i32 0, i32 0), i8* %43)
  store %struct._GimpActionGroup* null, %struct._GimpActionGroup** %retval
  br label %return

return:                                           ; preds = %for.end, %if.end.30, %if.else.14, %if.else.9
  %44 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %retval
  ret %struct._GimpActionGroup* %44
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare %struct._GimpActionGroup* @gimp_action_group_new(%struct._Gimp*, i8*, i8*, i8*, i8*, void (%struct._GimpActionGroup*, i8*)*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_action_factory_class_init(%struct._GimpActionFactoryClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpActionFactoryClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpActionFactoryClass* %klass, %struct._GimpActionFactoryClass** %klass.addr, align 8
  %0 = load %struct._GimpActionFactoryClass*, %struct._GimpActionFactoryClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpActionFactoryClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_action_factory_finalize, void (%struct._GObject*)** %finalize, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_action_factory_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %factory = alloca %struct._GimpActionFactory*, align 8
  %list = alloca %struct._GList*, align 8
  %entry2 = alloca %struct._GimpActionFactoryEntry*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_action_factory_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpActionFactory*
  store %struct._GimpActionFactory* %2, %struct._GimpActionFactory** %factory, align 8
  %3 = load %struct._GimpActionFactory*, %struct._GimpActionFactory** %factory, align 8
  %registered_groups = getelementptr inbounds %struct._GimpActionFactory, %struct._GimpActionFactory* %3, i32 0, i32 2
  %4 = load %struct._GList*, %struct._GList** %registered_groups, align 8
  store %struct._GList* %4, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %5 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %6, i32 0, i32 0
  %7 = load i8*, i8** %data, align 8
  %8 = bitcast i8* %7 to %struct._GimpActionFactoryEntry*
  store %struct._GimpActionFactoryEntry* %8, %struct._GimpActionFactoryEntry** %entry2, align 8
  %9 = load %struct._GimpActionFactoryEntry*, %struct._GimpActionFactoryEntry** %entry2, align 8
  %identifier = getelementptr inbounds %struct._GimpActionFactoryEntry, %struct._GimpActionFactoryEntry* %9, i32 0, i32 0
  %10 = load i8*, i8** %identifier, align 8
  call void @g_free(i8* %10)
  %11 = load %struct._GimpActionFactoryEntry*, %struct._GimpActionFactoryEntry** %entry2, align 8
  %label = getelementptr inbounds %struct._GimpActionFactoryEntry, %struct._GimpActionFactoryEntry* %11, i32 0, i32 1
  %12 = load i8*, i8** %label, align 8
  call void @g_free(i8* %12)
  %13 = load %struct._GimpActionFactoryEntry*, %struct._GimpActionFactoryEntry** %entry2, align 8
  %stock_id = getelementptr inbounds %struct._GimpActionFactoryEntry, %struct._GimpActionFactoryEntry* %13, i32 0, i32 2
  %14 = load i8*, i8** %stock_id, align 8
  call void @g_free(i8* %14)
  br label %do.body

do.body:                                          ; preds = %for.body
  %15 = load %struct._GimpActionFactoryEntry*, %struct._GimpActionFactoryEntry** %entry2, align 8
  %16 = bitcast %struct._GimpActionFactoryEntry* %15 to i8*
  call void @g_slice_free1(i64 40, i8* %16)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool3 = icmp ne %struct._GList* %17, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 1
  %19 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %19, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct._GimpActionFactory*, %struct._GimpActionFactory** %factory, align 8
  %registered_groups4 = getelementptr inbounds %struct._GimpActionFactory, %struct._GimpActionFactory* %20, i32 0, i32 2
  %21 = load %struct._GList*, %struct._GList** %registered_groups4, align 8
  call void @g_list_free(%struct._GList* %21)
  %22 = load %struct._GimpActionFactory*, %struct._GimpActionFactory** %factory, align 8
  %registered_groups5 = getelementptr inbounds %struct._GimpActionFactory, %struct._GimpActionFactory* %22, i32 0, i32 2
  store %struct._GList* null, %struct._GList** %registered_groups5, align 8
  %23 = load i8*, i8** @gimp_action_factory_parent_class, align 8
  %24 = bitcast i8* %23 to %struct._GTypeClass*
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %24, i64 80)
  %25 = bitcast %struct._GTypeClass* %call6 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %25, i32 0, i32 6
  %26 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %27 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %26(%struct._GObject* %27)
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @g_free(i8*) #1

declare void @g_slice_free1(i64, i8*) #1

declare void @g_list_free(%struct._GList*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
