; ModuleID = './app/core/gimpdynamics.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpDynamicsClass = type { %struct._GimpDataClass }
%struct._GimpDataClass = type { %struct._GimpViewableClass, void (%struct._GimpData*)*, i32 (%struct._GimpData*, %struct._GError**)*, i8* (%struct._GimpData*)*, %struct._GimpData* (%struct._GimpData*)* }
%struct._GimpViewableClass = type { %struct._GimpObjectClass, i8*, i8*, void (%struct._GimpViewable*)*, void (%struct._GimpViewable*)*, i32 (%struct._GimpViewable*, i32*, i32*)*, void (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, i32 (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, i8* (%struct._GimpViewable*, i8**)*, %struct._GimpContainer* (%struct._GimpViewable*)*, void (%struct._GimpViewable*, i32)*, i32 (%struct._GimpViewable*)* }
%struct._GimpObjectClass = type { %struct._GObjectClass, void (%struct._GimpObject*)*, void (%struct._GimpObject*)*, i64 (%struct._GimpObject*, i64*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._TempBuf = type opaque
%struct._GimpContext = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpContainer = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpDynamics = type { %struct._GimpData }
%struct._GimpDynamicsPrivate = type { %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput* }
%struct._GimpDynamicsOutput = type { %struct._GimpObject }
%struct._GimpConfig = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }

@gimp_dynamics_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"GimpDynamics\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_dynamics_new = private unnamed_addr constant [18 x i8] c"gimp_dynamics_new\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"name != NULL\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"name[0] != '\5C0'\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@gimp_dynamics_get_standard.standard_dynamics = internal global %struct._GimpData* null, align 8
@.str.5 = private unnamed_addr constant [18 x i8] c"Standard dynamics\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"gimp-dynamics-standard\00", align 1
@__func__.gimp_dynamics_get_output = private unnamed_addr constant [25 x i8] c"gimp_dynamics_get_output\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"GIMP_IS_DYNAMICS (dynamics)\00", align 1
@gimp_dynamics_parent_class = internal global i8* null, align 8
@GimpDynamics_private_offset = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"gimp-dynamics\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Nameless dynamics\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"opacity-output\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"force-output\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"hardness-output\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"rate-output\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"flow-output\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"size-output\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"aspect-ratio-output\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"color-output\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"angle-output\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"jitter-output\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"spacing-output\00", align 1
@.str.21 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"gimpdynamics.c\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c".gdyn\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"notify\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_dynamics_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_dynamics_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_dynamics_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_data_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 312, void (i8*, i8*)* bitcast (void (i8*)* @gimp_dynamics_class_intern_init to void (i8*, i8*)*), i32 32, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpDynamics*)* @gimp_dynamics_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_dynamics_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_dynamics_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_data_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dynamics_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_dynamics_parent_class, align 8
  %1 = load i32, i32* @GimpDynamics_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpDynamics_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpDynamicsClass*
  call void @gimp_dynamics_class_init(%struct._GimpDynamicsClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dynamics_init(%struct._GimpDynamics* %dynamics) #3 {
entry:
  %dynamics.addr = alloca %struct._GimpDynamics*, align 8
  %private = alloca %struct._GimpDynamicsPrivate*, align 8
  store %struct._GimpDynamics* %dynamics, %struct._GimpDynamics** %dynamics.addr, align 8
  %0 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics.addr, align 8
  %1 = bitcast %struct._GimpDynamics* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dynamics_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDynamicsPrivate*
  store %struct._GimpDynamicsPrivate* %2, %struct._GimpDynamicsPrivate** %private, align 8
  %3 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics.addr, align 8
  %call2 = call %struct._GimpDynamicsOutput* @gimp_dynamics_create_output(%struct._GimpDynamics* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32 0)
  %4 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %opacity_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %4, i32 0, i32 0
  store %struct._GimpDynamicsOutput* %call2, %struct._GimpDynamicsOutput** %opacity_output, align 8
  %5 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics.addr, align 8
  %call3 = call %struct._GimpDynamicsOutput* @gimp_dynamics_create_output(%struct._GimpDynamics* %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i32 5)
  %6 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %force_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %6, i32 0, i32 2
  store %struct._GimpDynamicsOutput* %call3, %struct._GimpDynamicsOutput** %force_output, align 8
  %7 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics.addr, align 8
  %call4 = call %struct._GimpDynamicsOutput* @gimp_dynamics_create_output(%struct._GimpDynamics* %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i32 4)
  %8 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %hardness_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %8, i32 0, i32 1
  store %struct._GimpDynamicsOutput* %call4, %struct._GimpDynamicsOutput** %hardness_output, align 8
  %9 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics.addr, align 8
  %call5 = call %struct._GimpDynamicsOutput* @gimp_dynamics_create_output(%struct._GimpDynamics* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i32 8)
  %10 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %rate_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %10, i32 0, i32 3
  store %struct._GimpDynamicsOutput* %call5, %struct._GimpDynamicsOutput** %rate_output, align 8
  %11 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics.addr, align 8
  %call6 = call %struct._GimpDynamicsOutput* @gimp_dynamics_create_output(%struct._GimpDynamics* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i32 8)
  %12 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %flow_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %12, i32 0, i32 4
  store %struct._GimpDynamicsOutput* %call6, %struct._GimpDynamicsOutput** %flow_output, align 8
  %13 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics.addr, align 8
  %call7 = call %struct._GimpDynamicsOutput* @gimp_dynamics_create_output(%struct._GimpDynamics* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i32 1)
  %14 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %size_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %14, i32 0, i32 5
  store %struct._GimpDynamicsOutput* %call7, %struct._GimpDynamicsOutput** %size_output, align 8
  %15 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics.addr, align 8
  %call8 = call %struct._GimpDynamicsOutput* @gimp_dynamics_create_output(%struct._GimpDynamics* %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0), i32 6)
  %16 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %aspect_ratio_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %16, i32 0, i32 6
  store %struct._GimpDynamicsOutput* %call8, %struct._GimpDynamicsOutput** %aspect_ratio_output, align 8
  %17 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics.addr, align 8
  %call9 = call %struct._GimpDynamicsOutput* @gimp_dynamics_create_output(%struct._GimpDynamics* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), i32 3)
  %18 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %color_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %18, i32 0, i32 7
  store %struct._GimpDynamicsOutput* %call9, %struct._GimpDynamicsOutput** %color_output, align 8
  %19 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics.addr, align 8
  %call10 = call %struct._GimpDynamicsOutput* @gimp_dynamics_create_output(%struct._GimpDynamics* %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i32 2)
  %20 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %angle_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %20, i32 0, i32 8
  store %struct._GimpDynamicsOutput* %call10, %struct._GimpDynamicsOutput** %angle_output, align 8
  %21 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics.addr, align 8
  %call11 = call %struct._GimpDynamicsOutput* @gimp_dynamics_create_output(%struct._GimpDynamics* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i32 10)
  %22 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %jitter_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %22, i32 0, i32 9
  store %struct._GimpDynamicsOutput* %call11, %struct._GimpDynamicsOutput** %jitter_output, align 8
  %23 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics.addr, align 8
  %call12 = call %struct._GimpDynamicsOutput* @gimp_dynamics_create_output(%struct._GimpDynamics* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i32 7)
  %24 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %spacing_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %24, i32 0, i32 10
  store %struct._GimpDynamicsOutput* %call12, %struct._GimpDynamicsOutput** %spacing_output, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpData* @gimp_dynamics_new(%struct._GimpContext* %context, i8* %name) #3 {
entry:
  %retval = alloca %struct._GimpData*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %name.addr = alloca i8*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %name.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_dynamics_new, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpData* null, %struct._GimpData** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i8*, i8** %name.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp2 = icmp ne i32 %conv, 0
  br i1 %cmp2, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %do.body.1
  br label %if.end.6

if.else.5:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_dynamics_new, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpData* null, %struct._GimpData** %retval
  br label %return

if.end.6:                                         ; preds = %if.then.4
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  %call = call i64 @gimp_dynamics_get_type() #6
  %3 = load i8*, i8** %name.addr, align 8
  %call8 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* %3, i8* null)
  %4 = bitcast i8* %call8 to %struct._GimpData*
  store %struct._GimpData* %4, %struct._GimpData** %retval
  br label %return

return:                                           ; preds = %do.end.7, %if.else.5, %if.else
  %5 = load %struct._GimpData*, %struct._GimpData** %retval
  ret %struct._GimpData* %5
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct._GimpData* @gimp_dynamics_get_standard(%struct._GimpContext* %context) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpData*, %struct._GimpData** @gimp_dynamics_get_standard.standard_dynamics, align 8
  %tobool = icmp ne %struct._GimpData* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call = call %struct._GimpData* @gimp_dynamics_new(%struct._GimpContext* %1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GimpData* %call, %struct._GimpData** @gimp_dynamics_get_standard.standard_dynamics, align 8
  %2 = load %struct._GimpData*, %struct._GimpData** @gimp_dynamics_get_standard.standard_dynamics, align 8
  call void @gimp_data_clean(%struct._GimpData* %2)
  %3 = load %struct._GimpData*, %struct._GimpData** @gimp_dynamics_get_standard.standard_dynamics, align 8
  call void @gimp_data_make_internal(%struct._GimpData* %3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0))
  %4 = load %struct._GimpData*, %struct._GimpData** @gimp_dynamics_get_standard.standard_dynamics, align 8
  %5 = bitcast %struct._GimpData* %4 to %struct._GTypeInstance*
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 80)
  %6 = bitcast %struct._GTypeInstance* %call1 to %struct._GObject*
  call void @g_object_add_weak_pointer(%struct._GObject* %6, i8** bitcast (%struct._GimpData** @gimp_dynamics_get_standard.standard_dynamics to i8**))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._GimpData*, %struct._GimpData** @gimp_dynamics_get_standard.standard_dynamics, align 8
  ret %struct._GimpData* %7
}

declare void @gimp_data_clean(%struct._GimpData*) #1

declare void @gimp_data_make_internal(%struct._GimpData*, i8*) #1

declare void @g_object_add_weak_pointer(%struct._GObject*, i8**) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpDynamicsOutput* @gimp_dynamics_get_output(%struct._GimpDynamics* %dynamics, i32 %type_id) #3 {
entry:
  %retval = alloca %struct._GimpDynamicsOutput*, align 8
  %dynamics.addr = alloca %struct._GimpDynamics*, align 8
  %type_id.addr = alloca i32, align 4
  %private = alloca %struct._GimpDynamicsPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDynamics* %dynamics, %struct._GimpDynamics** %dynamics.addr, align 8
  store i32 %type_id, i32* %type_id.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics.addr, align 8
  %1 = bitcast %struct._GimpDynamics* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dynamics_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_dynamics_get_output, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GimpDynamicsOutput* null, %struct._GimpDynamicsOutput** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics.addr, align 8
  %14 = bitcast %struct._GimpDynamics* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_dynamics_get_type() #6
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpDynamicsPrivate*
  store %struct._GimpDynamicsPrivate* %15, %struct._GimpDynamicsPrivate** %private, align 8
  %16 = load i32, i32* %type_id.addr, align 4
  switch i32 %16, label %sw.default [
    i32 0, label %sw.bb
    i32 5, label %sw.bb.13
    i32 4, label %sw.bb.14
    i32 8, label %sw.bb.15
    i32 9, label %sw.bb.16
    i32 1, label %sw.bb.17
    i32 6, label %sw.bb.18
    i32 3, label %sw.bb.19
    i32 2, label %sw.bb.20
    i32 10, label %sw.bb.21
    i32 7, label %sw.bb.22
  ]

sw.bb:                                            ; preds = %do.end
  %17 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %opacity_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %17, i32 0, i32 0
  %18 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %opacity_output, align 8
  store %struct._GimpDynamicsOutput* %18, %struct._GimpDynamicsOutput** %retval
  br label %return

sw.bb.13:                                         ; preds = %do.end
  %19 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %force_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %19, i32 0, i32 2
  %20 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %force_output, align 8
  store %struct._GimpDynamicsOutput* %20, %struct._GimpDynamicsOutput** %retval
  br label %return

sw.bb.14:                                         ; preds = %do.end
  %21 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %hardness_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %21, i32 0, i32 1
  %22 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %hardness_output, align 8
  store %struct._GimpDynamicsOutput* %22, %struct._GimpDynamicsOutput** %retval
  br label %return

sw.bb.15:                                         ; preds = %do.end
  %23 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %rate_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %23, i32 0, i32 3
  %24 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %rate_output, align 8
  store %struct._GimpDynamicsOutput* %24, %struct._GimpDynamicsOutput** %retval
  br label %return

sw.bb.16:                                         ; preds = %do.end
  %25 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %flow_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %25, i32 0, i32 4
  %26 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %flow_output, align 8
  store %struct._GimpDynamicsOutput* %26, %struct._GimpDynamicsOutput** %retval
  br label %return

sw.bb.17:                                         ; preds = %do.end
  %27 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %size_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %27, i32 0, i32 5
  %28 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %size_output, align 8
  store %struct._GimpDynamicsOutput* %28, %struct._GimpDynamicsOutput** %retval
  br label %return

sw.bb.18:                                         ; preds = %do.end
  %29 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %aspect_ratio_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %29, i32 0, i32 6
  %30 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %aspect_ratio_output, align 8
  store %struct._GimpDynamicsOutput* %30, %struct._GimpDynamicsOutput** %retval
  br label %return

sw.bb.19:                                         ; preds = %do.end
  %31 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %color_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %31, i32 0, i32 7
  %32 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %color_output, align 8
  store %struct._GimpDynamicsOutput* %32, %struct._GimpDynamicsOutput** %retval
  br label %return

sw.bb.20:                                         ; preds = %do.end
  %33 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %angle_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %33, i32 0, i32 8
  %34 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %angle_output, align 8
  store %struct._GimpDynamicsOutput* %34, %struct._GimpDynamicsOutput** %retval
  br label %return

sw.bb.21:                                         ; preds = %do.end
  %35 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %jitter_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %35, i32 0, i32 9
  %36 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %jitter_output, align 8
  store %struct._GimpDynamicsOutput* %36, %struct._GimpDynamicsOutput** %retval
  br label %return

sw.bb.22:                                         ; preds = %do.end
  %37 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %spacing_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %37, i32 0, i32 10
  %38 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %spacing_output, align 8
  store %struct._GimpDynamicsOutput* %38, %struct._GimpDynamicsOutput** %retval
  br label %return

sw.default:                                       ; preds = %do.end
  store %struct._GimpDynamicsOutput* null, %struct._GimpDynamicsOutput** %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.22, %sw.bb.21, %sw.bb.20, %sw.bb.19, %sw.bb.18, %sw.bb.17, %sw.bb.16, %sw.bb.15, %sw.bb.14, %sw.bb.13, %sw.bb, %if.else.9
  %39 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %retval
  ret %struct._GimpDynamicsOutput* %39
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dynamics_class_init(%struct._GimpDynamicsClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpDynamicsClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %data_class = alloca %struct._GimpDataClass*, align 8
  %viewable_class = alloca %struct._GimpViewableClass*, align 8
  store %struct._GimpDynamicsClass* %klass, %struct._GimpDynamicsClass** %klass.addr, align 8
  %0 = load %struct._GimpDynamicsClass*, %struct._GimpDynamicsClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpDynamicsClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpDynamicsClass*, %struct._GimpDynamicsClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpDynamicsClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_data_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpDataClass*
  store %struct._GimpDataClass* %5, %struct._GimpDataClass** %data_class, align 8
  %6 = load %struct._GimpDynamicsClass*, %struct._GimpDynamicsClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpDynamicsClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_viewable_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpViewableClass*
  store %struct._GimpViewableClass* %8, %struct._GimpViewableClass** %viewable_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_dynamics_finalize, void (%struct._GObject*)** %finalize, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_dynamics_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_dynamics_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispatch_properties_changed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 7
  store void (%struct._GObject*, i32, %struct._GParamSpec**)* @gimp_dynamics_dispatch_properties_changed, void (%struct._GObject*, i32, %struct._GParamSpec**)** %dispatch_properties_changed, align 8
  %13 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %default_stock_id = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %13, i32 0, i32 1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i8** %default_stock_id, align 8
  %14 = load %struct._GimpDataClass*, %struct._GimpDataClass** %data_class, align 8
  %save = getelementptr inbounds %struct._GimpDataClass, %struct._GimpDataClass* %14, i32 0, i32 2
  store i32 (%struct._GimpData*, %struct._GError**)* @gimp_dynamics_save, i32 (%struct._GimpData*, %struct._GError**)** %save, align 8
  %15 = load %struct._GimpDataClass*, %struct._GimpDataClass** %data_class, align 8
  %get_extension = getelementptr inbounds %struct._GimpDataClass, %struct._GimpDataClass* %15, i32 0, i32 3
  store i8* (%struct._GimpData*)* @gimp_dynamics_get_extension, i8* (%struct._GimpData*)** %get_extension, align 8
  %16 = load %struct._GimpDataClass*, %struct._GimpDataClass** %data_class, align 8
  %duplicate = getelementptr inbounds %struct._GimpDataClass, %struct._GimpDataClass* %16, i32 0, i32 4
  store %struct._GimpData* (%struct._GimpData*)* @gimp_dynamics_duplicate, %struct._GimpData* (%struct._GimpData*)** %duplicate, align 8
  %17 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %17, i32 1, %struct._GParamSpec* %call5)
  %18 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call i64 @gimp_dynamics_output_get_type() #6
  %call7 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* null, i64 %call6, i32 771)
  call void @g_object_class_install_property(%struct._GObjectClass* %18, i32 2, %struct._GParamSpec* %call7)
  %19 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call8 = call i64 @gimp_dynamics_output_get_type() #6
  %call9 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* null, i64 %call8, i32 771)
  call void @g_object_class_install_property(%struct._GObjectClass* %19, i32 6, %struct._GParamSpec* %call9)
  %20 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call10 = call i64 @gimp_dynamics_output_get_type() #6
  %call11 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* null, i64 %call10, i32 771)
  call void @g_object_class_install_property(%struct._GObjectClass* %20, i32 7, %struct._GParamSpec* %call11)
  %21 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call12 = call i64 @gimp_dynamics_output_get_type() #6
  %call13 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i8* null, i8* null, i64 %call12, i32 771)
  call void @g_object_class_install_property(%struct._GObjectClass* %21, i32 10, %struct._GParamSpec* %call13)
  %22 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call14 = call i64 @gimp_dynamics_output_get_type() #6
  %call15 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i8* null, i8* null, i64 %call14, i32 771)
  call void @g_object_class_install_property(%struct._GObjectClass* %22, i32 11, %struct._GParamSpec* %call15)
  %23 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call16 = call i64 @gimp_dynamics_output_get_type() #6
  %call17 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* null, i64 %call16, i32 771)
  call void @g_object_class_install_property(%struct._GObjectClass* %23, i32 3, %struct._GParamSpec* %call17)
  %24 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call18 = call i64 @gimp_dynamics_output_get_type() #6
  %call19 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0), i8* null, i8* null, i64 %call18, i32 771)
  call void @g_object_class_install_property(%struct._GObjectClass* %24, i32 8, %struct._GParamSpec* %call19)
  %25 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call20 = call i64 @gimp_dynamics_output_get_type() #6
  %call21 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), i8* null, i8* null, i64 %call20, i32 771)
  call void @g_object_class_install_property(%struct._GObjectClass* %25, i32 5, %struct._GParamSpec* %call21)
  %26 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call22 = call i64 @gimp_dynamics_output_get_type() #6
  %call23 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i8* null, i8* null, i64 %call22, i32 771)
  call void @g_object_class_install_property(%struct._GObjectClass* %26, i32 4, %struct._GParamSpec* %call23)
  %27 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call24 = call i64 @gimp_dynamics_output_get_type() #6
  %call25 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i8* null, i8* null, i64 %call24, i32 771)
  call void @g_object_class_install_property(%struct._GObjectClass* %27, i32 12, %struct._GParamSpec* %call25)
  %28 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call26 = call i64 @gimp_dynamics_output_get_type() #6
  %call27 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i8* null, i8* null, i64 %call26, i32 771)
  call void @g_object_class_install_property(%struct._GObjectClass* %28, i32 9, %struct._GParamSpec* %call27)
  %29 = load %struct._GimpDynamicsClass*, %struct._GimpDynamicsClass** %klass.addr, align 8
  %30 = bitcast %struct._GimpDynamicsClass* %29 to i8*
  call void @g_type_class_add_private(i8* %30, i64 88)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_dynamics_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %private = alloca %struct._GimpDynamicsPrivate*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dynamics_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDynamicsPrivate*
  store %struct._GimpDynamicsPrivate* %2, %struct._GimpDynamicsPrivate** %private, align 8
  %3 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %opacity_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %3, i32 0, i32 0
  %4 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %opacity_output, align 8
  %5 = bitcast %struct._GimpDynamicsOutput* %4 to i8*
  call void @g_object_unref(i8* %5)
  %6 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %force_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %6, i32 0, i32 2
  %7 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %force_output, align 8
  %8 = bitcast %struct._GimpDynamicsOutput* %7 to i8*
  call void @g_object_unref(i8* %8)
  %9 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %hardness_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %9, i32 0, i32 1
  %10 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %hardness_output, align 8
  %11 = bitcast %struct._GimpDynamicsOutput* %10 to i8*
  call void @g_object_unref(i8* %11)
  %12 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %rate_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %12, i32 0, i32 3
  %13 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %rate_output, align 8
  %14 = bitcast %struct._GimpDynamicsOutput* %13 to i8*
  call void @g_object_unref(i8* %14)
  %15 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %flow_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %15, i32 0, i32 4
  %16 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %flow_output, align 8
  %17 = bitcast %struct._GimpDynamicsOutput* %16 to i8*
  call void @g_object_unref(i8* %17)
  %18 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %size_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %18, i32 0, i32 5
  %19 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %size_output, align 8
  %20 = bitcast %struct._GimpDynamicsOutput* %19 to i8*
  call void @g_object_unref(i8* %20)
  %21 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %aspect_ratio_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %21, i32 0, i32 6
  %22 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %aspect_ratio_output, align 8
  %23 = bitcast %struct._GimpDynamicsOutput* %22 to i8*
  call void @g_object_unref(i8* %23)
  %24 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %color_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %24, i32 0, i32 7
  %25 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %color_output, align 8
  %26 = bitcast %struct._GimpDynamicsOutput* %25 to i8*
  call void @g_object_unref(i8* %26)
  %27 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %angle_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %27, i32 0, i32 8
  %28 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %angle_output, align 8
  %29 = bitcast %struct._GimpDynamicsOutput* %28 to i8*
  call void @g_object_unref(i8* %29)
  %30 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %jitter_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %30, i32 0, i32 9
  %31 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %jitter_output, align 8
  %32 = bitcast %struct._GimpDynamicsOutput* %31 to i8*
  call void @g_object_unref(i8* %32)
  %33 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %spacing_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %33, i32 0, i32 10
  %34 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %spacing_output, align 8
  %35 = bitcast %struct._GimpDynamicsOutput* %34 to i8*
  call void @g_object_unref(i8* %35)
  %36 = load i8*, i8** @gimp_dynamics_parent_class, align 8
  %37 = bitcast i8* %36 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %37, i64 80)
  %38 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %38, i32 0, i32 6
  %39 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %40 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %39(%struct._GObject* %40)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dynamics_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpDynamicsPrivate*, align 8
  %src_output = alloca %struct._GimpDynamicsOutput*, align 8
  %dest_output = alloca %struct._GimpDynamicsOutput*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dynamics_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDynamicsPrivate*
  store %struct._GimpDynamicsPrivate* %2, %struct._GimpDynamicsPrivate** %private, align 8
  store %struct._GimpDynamicsOutput* null, %struct._GimpDynamicsOutput** %src_output, align 8
  store %struct._GimpDynamicsOutput* null, %struct._GimpDynamicsOutput** %dest_output, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.5
    i32 6, label %sw.bb.7
    i32 7, label %sw.bb.9
    i32 10, label %sw.bb.11
    i32 11, label %sw.bb.13
    i32 3, label %sw.bb.15
    i32 8, label %sw.bb.17
    i32 5, label %sw.bb.19
    i32 4, label %sw.bb.21
    i32 12, label %sw.bb.23
    i32 9, label %sw.bb.25
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %5 = bitcast %struct._GObject* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_object_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpObject*
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i8* @g_value_get_string(%struct._GValue* %7)
  call void @gimp_object_set_name(%struct._GimpObject* %6, i8* %call4)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call i8* @g_value_get_object(%struct._GValue* %8)
  %9 = bitcast i8* %call6 to %struct._GimpDynamicsOutput*
  store %struct._GimpDynamicsOutput* %9, %struct._GimpDynamicsOutput** %src_output, align 8
  %10 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %opacity_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %10, i32 0, i32 0
  %11 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %opacity_output, align 8
  store %struct._GimpDynamicsOutput* %11, %struct._GimpDynamicsOutput** %dest_output, align 8
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %12 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call8 = call i8* @g_value_get_object(%struct._GValue* %12)
  %13 = bitcast i8* %call8 to %struct._GimpDynamicsOutput*
  store %struct._GimpDynamicsOutput* %13, %struct._GimpDynamicsOutput** %src_output, align 8
  %14 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %force_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %14, i32 0, i32 2
  %15 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %force_output, align 8
  store %struct._GimpDynamicsOutput* %15, %struct._GimpDynamicsOutput** %dest_output, align 8
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call10 = call i8* @g_value_get_object(%struct._GValue* %16)
  %17 = bitcast i8* %call10 to %struct._GimpDynamicsOutput*
  store %struct._GimpDynamicsOutput* %17, %struct._GimpDynamicsOutput** %src_output, align 8
  %18 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %hardness_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %18, i32 0, i32 1
  %19 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %hardness_output, align 8
  store %struct._GimpDynamicsOutput* %19, %struct._GimpDynamicsOutput** %dest_output, align 8
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %20 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call12 = call i8* @g_value_get_object(%struct._GValue* %20)
  %21 = bitcast i8* %call12 to %struct._GimpDynamicsOutput*
  store %struct._GimpDynamicsOutput* %21, %struct._GimpDynamicsOutput** %src_output, align 8
  %22 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %rate_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %22, i32 0, i32 3
  %23 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %rate_output, align 8
  store %struct._GimpDynamicsOutput* %23, %struct._GimpDynamicsOutput** %dest_output, align 8
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %24 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call14 = call i8* @g_value_get_object(%struct._GValue* %24)
  %25 = bitcast i8* %call14 to %struct._GimpDynamicsOutput*
  store %struct._GimpDynamicsOutput* %25, %struct._GimpDynamicsOutput** %src_output, align 8
  %26 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %flow_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %26, i32 0, i32 4
  %27 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %flow_output, align 8
  store %struct._GimpDynamicsOutput* %27, %struct._GimpDynamicsOutput** %dest_output, align 8
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %28 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call16 = call i8* @g_value_get_object(%struct._GValue* %28)
  %29 = bitcast i8* %call16 to %struct._GimpDynamicsOutput*
  store %struct._GimpDynamicsOutput* %29, %struct._GimpDynamicsOutput** %src_output, align 8
  %30 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %size_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %30, i32 0, i32 5
  %31 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %size_output, align 8
  store %struct._GimpDynamicsOutput* %31, %struct._GimpDynamicsOutput** %dest_output, align 8
  br label %sw.epilog

sw.bb.17:                                         ; preds = %entry
  %32 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call18 = call i8* @g_value_get_object(%struct._GValue* %32)
  %33 = bitcast i8* %call18 to %struct._GimpDynamicsOutput*
  store %struct._GimpDynamicsOutput* %33, %struct._GimpDynamicsOutput** %src_output, align 8
  %34 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %aspect_ratio_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %34, i32 0, i32 6
  %35 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %aspect_ratio_output, align 8
  store %struct._GimpDynamicsOutput* %35, %struct._GimpDynamicsOutput** %dest_output, align 8
  br label %sw.epilog

sw.bb.19:                                         ; preds = %entry
  %36 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call20 = call i8* @g_value_get_object(%struct._GValue* %36)
  %37 = bitcast i8* %call20 to %struct._GimpDynamicsOutput*
  store %struct._GimpDynamicsOutput* %37, %struct._GimpDynamicsOutput** %src_output, align 8
  %38 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %color_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %38, i32 0, i32 7
  %39 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %color_output, align 8
  store %struct._GimpDynamicsOutput* %39, %struct._GimpDynamicsOutput** %dest_output, align 8
  br label %sw.epilog

sw.bb.21:                                         ; preds = %entry
  %40 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call22 = call i8* @g_value_get_object(%struct._GValue* %40)
  %41 = bitcast i8* %call22 to %struct._GimpDynamicsOutput*
  store %struct._GimpDynamicsOutput* %41, %struct._GimpDynamicsOutput** %src_output, align 8
  %42 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %angle_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %42, i32 0, i32 8
  %43 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %angle_output, align 8
  store %struct._GimpDynamicsOutput* %43, %struct._GimpDynamicsOutput** %dest_output, align 8
  br label %sw.epilog

sw.bb.23:                                         ; preds = %entry
  %44 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call24 = call i8* @g_value_get_object(%struct._GValue* %44)
  %45 = bitcast i8* %call24 to %struct._GimpDynamicsOutput*
  store %struct._GimpDynamicsOutput* %45, %struct._GimpDynamicsOutput** %src_output, align 8
  %46 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %jitter_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %46, i32 0, i32 9
  %47 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %jitter_output, align 8
  store %struct._GimpDynamicsOutput* %47, %struct._GimpDynamicsOutput** %dest_output, align 8
  br label %sw.epilog

sw.bb.25:                                         ; preds = %entry
  %48 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call26 = call i8* @g_value_get_object(%struct._GValue* %48)
  %49 = bitcast i8* %call26 to %struct._GimpDynamicsOutput*
  store %struct._GimpDynamicsOutput* %49, %struct._GimpDynamicsOutput** %src_output, align 8
  %50 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %spacing_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %50, i32 0, i32 10
  %51 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %spacing_output, align 8
  store %struct._GimpDynamicsOutput* %51, %struct._GimpDynamicsOutput** %dest_output, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %52 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %52, %struct._GObject** %_glib__object, align 8
  %53 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %53, %struct._GParamSpec** %_glib__pspec, align 8
  %54 = load i32, i32* %property_id.addr, align 4
  store i32 %54, i32* %_glib__property_id, align 4
  %55 = load i32, i32* %_glib__property_id, align 4
  %56 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %56, i32 0, i32 1
  %57 = load i8*, i8** %name, align 8
  %58 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %59 = bitcast %struct._GParamSpec* %58 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %59, i32 0, i32 0
  %60 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %60, i32 0, i32 0
  %61 = load i64, i64* %g_type, align 8
  %call27 = call i8* @g_type_name(i64 %61)
  %62 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %63 = bitcast %struct._GObject* %62 to %struct._GTypeInstance*
  %g_class28 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %63, i32 0, i32 0
  %64 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class28, align 8
  %g_type29 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %64, i32 0, i32 0
  %65 = load i64, i64* %g_type29, align 8
  %call30 = call i8* @g_type_name(i64 %65)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), i32 347, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 %55, i8* %57, i8* %call27, i8* %call30)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.25, %sw.bb.23, %sw.bb.21, %sw.bb.19, %sw.bb.17, %sw.bb.15, %sw.bb.13, %sw.bb.11, %sw.bb.9, %sw.bb.7, %sw.bb.5, %sw.bb
  %66 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %src_output, align 8
  %tobool = icmp ne %struct._GimpDynamicsOutput* %66, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.epilog
  %67 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %dest_output, align 8
  %tobool31 = icmp ne %struct._GimpDynamicsOutput* %67, null
  br i1 %tobool31, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %68 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %src_output, align 8
  %69 = bitcast %struct._GimpDynamicsOutput* %68 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_config_interface_get_type() #6
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call32)
  %70 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpConfig*
  %71 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %dest_output, align 8
  %72 = bitcast %struct._GimpDynamicsOutput* %71 to %struct._GTypeInstance*
  %call34 = call i64 @gimp_config_interface_get_type() #6
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call34)
  %73 = bitcast %struct._GTypeInstance* %call35 to %struct._GimpConfig*
  %call36 = call i32 @gimp_config_copy(%struct._GimpConfig* %70, %struct._GimpConfig* %73, i32 256)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %sw.epilog
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dynamics_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpDynamicsPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dynamics_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDynamicsPrivate*
  store %struct._GimpDynamicsPrivate* %2, %struct._GimpDynamicsPrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 6, label %sw.bb.4
    i32 7, label %sw.bb.5
    i32 10, label %sw.bb.6
    i32 11, label %sw.bb.7
    i32 3, label %sw.bb.8
    i32 8, label %sw.bb.9
    i32 5, label %sw.bb.10
    i32 4, label %sw.bb.11
    i32 12, label %sw.bb.12
    i32 9, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %6 = bitcast %struct._GObject* %5 to i8*
  %call2 = call i8* @gimp_object_get_name(i8* %6)
  call void @g_value_set_string(%struct._GValue* %4, i8* %call2)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %opacity_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %8, i32 0, i32 0
  %9 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %opacity_output, align 8
  %10 = bitcast %struct._GimpDynamicsOutput* %9 to i8*
  call void @g_value_set_object(%struct._GValue* %7, i8* %10)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %11 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %12 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %force_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %12, i32 0, i32 2
  %13 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %force_output, align 8
  %14 = bitcast %struct._GimpDynamicsOutput* %13 to i8*
  call void @g_value_set_object(%struct._GValue* %11, i8* %14)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %15 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %16 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %hardness_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %16, i32 0, i32 1
  %17 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %hardness_output, align 8
  %18 = bitcast %struct._GimpDynamicsOutput* %17 to i8*
  call void @g_value_set_object(%struct._GValue* %15, i8* %18)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %19 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %20 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %rate_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %20, i32 0, i32 3
  %21 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %rate_output, align 8
  %22 = bitcast %struct._GimpDynamicsOutput* %21 to i8*
  call void @g_value_set_object(%struct._GValue* %19, i8* %22)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %23 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %24 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %flow_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %24, i32 0, i32 4
  %25 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %flow_output, align 8
  %26 = bitcast %struct._GimpDynamicsOutput* %25 to i8*
  call void @g_value_set_object(%struct._GValue* %23, i8* %26)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %27 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %28 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %size_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %28, i32 0, i32 5
  %29 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %size_output, align 8
  %30 = bitcast %struct._GimpDynamicsOutput* %29 to i8*
  call void @g_value_set_object(%struct._GValue* %27, i8* %30)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %31 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %32 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %aspect_ratio_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %32, i32 0, i32 6
  %33 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %aspect_ratio_output, align 8
  %34 = bitcast %struct._GimpDynamicsOutput* %33 to i8*
  call void @g_value_set_object(%struct._GValue* %31, i8* %34)
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  %35 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %36 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %color_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %36, i32 0, i32 7
  %37 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %color_output, align 8
  %38 = bitcast %struct._GimpDynamicsOutput* %37 to i8*
  call void @g_value_set_object(%struct._GValue* %35, i8* %38)
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %39 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %40 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %angle_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %40, i32 0, i32 8
  %41 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %angle_output, align 8
  %42 = bitcast %struct._GimpDynamicsOutput* %41 to i8*
  call void @g_value_set_object(%struct._GValue* %39, i8* %42)
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  %43 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %44 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %jitter_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %44, i32 0, i32 9
  %45 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %jitter_output, align 8
  %46 = bitcast %struct._GimpDynamicsOutput* %45 to i8*
  call void @g_value_set_object(%struct._GValue* %43, i8* %46)
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %47 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %48 = load %struct._GimpDynamicsPrivate*, %struct._GimpDynamicsPrivate** %private, align 8
  %spacing_output = getelementptr inbounds %struct._GimpDynamicsPrivate, %struct._GimpDynamicsPrivate* %48, i32 0, i32 10
  %49 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %spacing_output, align 8
  %50 = bitcast %struct._GimpDynamicsOutput* %49 to i8*
  call void @g_value_set_object(%struct._GValue* %47, i8* %50)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %51 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %51, %struct._GObject** %_glib__object, align 8
  %52 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %52, %struct._GParamSpec** %_glib__pspec, align 8
  %53 = load i32, i32* %property_id.addr, align 4
  store i32 %53, i32* %_glib__property_id, align 4
  %54 = load i32, i32* %_glib__property_id, align 4
  %55 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %55, i32 0, i32 1
  %56 = load i8*, i8** %name, align 8
  %57 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %58 = bitcast %struct._GParamSpec* %57 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %58, i32 0, i32 0
  %59 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %59, i32 0, i32 0
  %60 = load i64, i64* %g_type, align 8
  %call14 = call i8* @g_type_name(i64 %60)
  %61 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %62 = bitcast %struct._GObject* %61 to %struct._GTypeInstance*
  %g_class15 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %62, i32 0, i32 0
  %63 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class15, align 8
  %g_type16 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %63, i32 0, i32 0
  %64 = load i64, i64* %g_type16, align 8
  %call17 = call i8* @g_type_name(i64 %64)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), i32 418, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 %54, i8* %56, i8* %call14, i8* %call17)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dynamics_dispatch_properties_changed(%struct._GObject* %object, i32 %n_pspecs, %struct._GParamSpec** %pspecs) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %n_pspecs.addr = alloca i32, align 4
  %pspecs.addr = alloca %struct._GParamSpec**, align 8
  %i = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %n_pspecs, i32* %n_pspecs.addr, align 4
  store %struct._GParamSpec** %pspecs, %struct._GParamSpec*** %pspecs.addr, align 8
  %0 = load i8*, i8** @gimp_dynamics_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  %dispatch_properties_changed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %2, i32 0, i32 7
  %3 = load void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, i32, %struct._GParamSpec**)** %dispatch_properties_changed, align 8
  %4 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %5 = load i32, i32* %n_pspecs.addr, align 4
  %6 = load %struct._GParamSpec**, %struct._GParamSpec*** %pspecs.addr, align 8
  call void %3(%struct._GObject* %4, i32 %5, %struct._GParamSpec** %6)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %n_pspecs.addr, align 4
  %cmp = icmp ult i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct._GParamSpec**, %struct._GParamSpec*** %pspecs.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %10, i64 %idxprom
  %11 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx, align 8
  %flags = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %11, i32 0, i32 2
  %12 = load i32, i32* %flags, align 4
  %and = and i32 %12, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %13 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %14 = bitcast %struct._GObject* %13 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_data_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call1)
  %15 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpData*
  call void @gimp_data_dirty(%struct._GimpData* %15)
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

declare i32 @gimp_dynamics_save(%struct._GimpData*, %struct._GError**) #1

; Function Attrs: nounwind uwtable
define internal i8* @gimp_dynamics_get_extension(%struct._GimpData* %data) #3 {
entry:
  %data.addr = alloca %struct._GimpData*, align 8
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  ret i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpData* @gimp_dynamics_duplicate(%struct._GimpData* %data) #3 {
entry:
  %data.addr = alloca %struct._GimpData*, align 8
  %dest = alloca %struct._GimpData*, align 8
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  %call = call i64 @gimp_dynamics_get_type() #6
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %0 = bitcast i8* %call1 to %struct._GimpData*
  store %struct._GimpData* %0, %struct._GimpData** %dest, align 8
  %1 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %2 = bitcast %struct._GimpData* %1 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_config_interface_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call2)
  %3 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpConfig*
  %4 = load %struct._GimpData*, %struct._GimpData** %dest, align 8
  %5 = bitcast %struct._GimpData* %4 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_config_interface_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call4)
  %6 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpConfig*
  %call6 = call i32 @gimp_config_copy(%struct._GimpConfig* %3, %struct._GimpConfig* %6, i32 0)
  %7 = load %struct._GimpData*, %struct._GimpData** %dest, align 8
  %8 = bitcast %struct._GimpData* %7 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_data_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call7)
  %9 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpData*
  ret %struct._GimpData* %9
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_string(i8*, i8*, i8*, i8*, i32) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dynamics_output_get_type() #2

declare void @g_type_class_add_private(i8*, i64) #1

declare void @g_object_unref(i8*) #1

declare void @gimp_object_set_name(%struct._GimpObject*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare i8* @g_value_get_string(%struct._GValue*) #1

declare i8* @g_value_get_object(%struct._GValue*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #1

declare i32 @gimp_config_copy(%struct._GimpConfig*, %struct._GimpConfig*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare void @g_value_set_string(%struct._GValue*, i8*) #1

declare i8* @gimp_object_get_name(i8*) #1

declare void @g_value_set_object(%struct._GValue*, i8*) #1

declare void @gimp_data_dirty(%struct._GimpData*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpDynamicsOutput* @gimp_dynamics_create_output(%struct._GimpDynamics* %dynamics, i8* %name, i32 %type) #3 {
entry:
  %dynamics.addr = alloca %struct._GimpDynamics*, align 8
  %name.addr = alloca i8*, align 8
  %type.addr = alloca i32, align 4
  %output = alloca %struct._GimpDynamicsOutput*, align 8
  store %struct._GimpDynamics* %dynamics, %struct._GimpDynamics** %dynamics.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i32, i32* %type.addr, align 4
  %call = call %struct._GimpDynamicsOutput* @gimp_dynamics_output_new(i8* %0, i32 %1)
  store %struct._GimpDynamicsOutput* %call, %struct._GimpDynamicsOutput** %output, align 8
  %2 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %output, align 8
  %3 = bitcast %struct._GimpDynamicsOutput* %2 to i8*
  %4 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics.addr, align 8
  %5 = bitcast %struct._GimpDynamics* %4 to i8*
  %call1 = call i64 @g_signal_connect_data(i8* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GimpDynamics*)* @gimp_dynamics_output_notify to void ()*), i8* %5, void (i8*, %struct._GClosure*)* null, i32 0)
  %6 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %output, align 8
  ret %struct._GimpDynamicsOutput* %6
}

declare %struct._GimpDynamicsOutput* @gimp_dynamics_output_new(i8*, i32) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dynamics_output_notify(%struct._GObject* %output, %struct._GParamSpec* %pspec, %struct._GimpDynamics* %dynamics) #3 {
entry:
  %output.addr = alloca %struct._GObject*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %dynamics.addr = alloca %struct._GimpDynamics*, align 8
  store %struct._GObject* %output, %struct._GObject** %output.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpDynamics* %dynamics, %struct._GimpDynamics** %dynamics.addr, align 8
  %0 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics.addr, align 8
  %1 = bitcast %struct._GimpDynamics* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %3 = load %struct._GObject*, %struct._GObject** %output.addr, align 8
  %4 = bitcast %struct._GObject* %3 to i8*
  %call1 = call i8* @gimp_object_get_name(i8* %4)
  call void @g_object_notify(%struct._GObject* %2, i8* %call1)
  ret void
}

declare void @g_object_notify(%struct._GObject*, i8*) #1

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
