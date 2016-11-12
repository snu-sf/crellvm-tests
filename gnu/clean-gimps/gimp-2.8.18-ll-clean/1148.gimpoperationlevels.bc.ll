; ModuleID = './app/gegl/gimpoperationlevels.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpOperationLevelsClass = type { %struct._GimpOperationPointFilterClass }
%struct._GimpOperationPointFilterClass = type { %struct._GeglOperationPointFilterClass }
%struct._GeglOperationPointFilterClass = type { %struct._GeglOperationFilterClass, i32 (%struct._GeglOperation*, i8*, i8*, i64, %struct._GeglRectangle*, i32)*, i32 (%struct._GeglOperation*, %struct._cl_mem*, %struct._cl_mem*, i64, %struct._GeglRectangle*, i32)*, [4 x i8*] }
%struct._GeglOperationFilterClass = type { %struct._GeglOperationClass, i32 (%struct._GeglOperation*, %struct._GeglBuffer*, %struct._GeglBuffer*, %struct._GeglRectangle*, i32)*, [4 x i8*] }
%struct._GeglOperationClass = type { %struct._GObjectClass, i8*, i8*, %struct._GHashTable*, i64, void (%struct._GeglOperation*)*, void (%struct._GeglOperation*)*, { i64, i64 } (%struct._GeglOperation*)*, { i64, i64 } (%struct._GeglOperation*, i8*, %struct._GeglRectangle*)*, { i64, i64 } (%struct._GeglOperation*, i8*, %struct._GeglRectangle*)*, { i64, i64 } (%struct._GeglOperation*, %struct._GeglRectangle*)*, i32 (%struct._GeglOperation*, %struct._GeglOperationContext*, i8*, %struct._GeglRectangle*, i32)*, %struct._GeglNode* (%struct._GeglOperation*, i32, i32)*, [10 x i8*] }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GHashTable = type opaque
%struct._GeglOperation = type { %struct._GObject, %struct._GeglNode* }
%struct._GeglNode = type opaque
%struct._GeglRectangle = type { i32, i32, i32, i32 }
%struct._GeglOperationContext = type opaque
%struct._GeglBuffer = type opaque
%struct._cl_mem = type opaque
%struct._GimpOperationLevels = type { %struct._GimpOperationPointFilter }
%struct._GimpOperationPointFilter = type { %struct._GeglOperationPointFilter, %struct._GObject* }
%struct._GeglOperationPointFilter = type { %struct._GeglOperationFilter }
%struct._GeglOperationFilter = type { %struct._GeglOperation }
%struct._GimpLevelsConfig = type { %struct._GimpImageMapConfig, i32, [5 x double], [5 x double], [5 x double], [5 x double], [5 x double] }
%struct._GimpImageMapConfig = type { %struct._GimpViewable, i32 }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque

@gimp_operation_levels_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"GimpOperationLevels\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-GEGL\00", align 1
@__func__.gimp_operation_levels_map_input = private unnamed_addr constant [32 x i8] c"gimp_operation_levels_map_input\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"GIMP_IS_LEVELS_CONFIG (config)\00", align 1
@gimp_operation_levels_parent_class = internal global i8* null, align 8
@GimpOperationLevels_private_offset = internal global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"gimp:levels\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"categories\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"GIMP Levels operation\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"Config\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"The config object\00", align 1
@__func__.gimp_operation_levels_process = private unnamed_addr constant [30 x i8] c"gimp_operation_levels_process\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"config->gamma[channel] != 0.0\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_operation_levels_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_operation_levels_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_operation_levels_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_operation_point_filter_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 400, void (i8*, i8*)* bitcast (void (i8*)* @gimp_operation_levels_class_intern_init to void (i8*, i8*)*), i32 40, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpOperationLevels*)* @gimp_operation_levels_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_operation_levels_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_operation_levels_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_operation_point_filter_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_levels_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_operation_levels_parent_class, align 8
  %1 = load i32, i32* @GimpOperationLevels_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpOperationLevels_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpOperationLevelsClass*
  call void @gimp_operation_levels_class_init(%struct._GimpOperationLevelsClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_levels_init(%struct._GimpOperationLevels* %self) #3 {
entry:
  %self.addr = alloca %struct._GimpOperationLevels*, align 8
  store %struct._GimpOperationLevels* %self, %struct._GimpOperationLevels** %self.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define double @gimp_operation_levels_map_input(%struct._GimpLevelsConfig* %config, i32 %channel, double %value) #3 {
entry:
  %retval = alloca double, align 8
  %config.addr = alloca %struct._GimpLevelsConfig*, align 8
  %channel.addr = alloca i32, align 4
  %value.addr = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpLevelsConfig* %config, %struct._GimpLevelsConfig** %config.addr, align 8
  store i32 %channel, i32* %channel.addr, align 4
  store double %value, double* %value.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpLevelsConfig* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_levels_config_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_operation_levels_map_input, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %channel.addr, align 4
  %idxprom = zext i32 %13 to i64
  %14 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %high_input = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %14, i32 0, i32 4
  %arrayidx = getelementptr inbounds [5 x double], [5 x double]* %high_input, i32 0, i64 %idxprom
  %15 = load double, double* %arrayidx, align 8
  %16 = load i32, i32* %channel.addr, align 4
  %idxprom11 = zext i32 %16 to i64
  %17 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %low_input = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %17, i32 0, i32 3
  %arrayidx12 = getelementptr inbounds [5 x double], [5 x double]* %low_input, i32 0, i64 %idxprom11
  %18 = load double, double* %arrayidx12, align 8
  %cmp13 = fcmp une double %15, %18
  br i1 %cmp13, label %if.then.14, label %if.else.25

if.then.14:                                       ; preds = %do.end
  %19 = load double, double* %value.addr, align 8
  %20 = load i32, i32* %channel.addr, align 4
  %idxprom15 = zext i32 %20 to i64
  %21 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %low_input16 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %21, i32 0, i32 3
  %arrayidx17 = getelementptr inbounds [5 x double], [5 x double]* %low_input16, i32 0, i64 %idxprom15
  %22 = load double, double* %arrayidx17, align 8
  %sub = fsub double %19, %22
  %23 = load i32, i32* %channel.addr, align 4
  %idxprom18 = zext i32 %23 to i64
  %24 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %high_input19 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %24, i32 0, i32 4
  %arrayidx20 = getelementptr inbounds [5 x double], [5 x double]* %high_input19, i32 0, i64 %idxprom18
  %25 = load double, double* %arrayidx20, align 8
  %26 = load i32, i32* %channel.addr, align 4
  %idxprom21 = zext i32 %26 to i64
  %27 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %low_input22 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %27, i32 0, i32 3
  %arrayidx23 = getelementptr inbounds [5 x double], [5 x double]* %low_input22, i32 0, i64 %idxprom21
  %28 = load double, double* %arrayidx23, align 8
  %sub24 = fsub double %25, %28
  %div = fdiv double %sub, %sub24
  store double %div, double* %value.addr, align 8
  br label %if.end.30

if.else.25:                                       ; preds = %do.end
  %29 = load double, double* %value.addr, align 8
  %30 = load i32, i32* %channel.addr, align 4
  %idxprom26 = zext i32 %30 to i64
  %31 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %low_input27 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %31, i32 0, i32 3
  %arrayidx28 = getelementptr inbounds [5 x double], [5 x double]* %low_input27, i32 0, i64 %idxprom26
  %32 = load double, double* %arrayidx28, align 8
  %sub29 = fsub double %29, %32
  store double %sub29, double* %value.addr, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.25, %if.then.14
  %33 = load double, double* %value.addr, align 8
  %cmp31 = fcmp ogt double %33, 1.000000e+00
  br i1 %cmp31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.30
  br label %cond.end.35

cond.false:                                       ; preds = %if.end.30
  %34 = load double, double* %value.addr, align 8
  %cmp32 = fcmp olt double %34, 0.000000e+00
  br i1 %cmp32, label %cond.true.33, label %cond.false.34

cond.true.33:                                     ; preds = %cond.false
  br label %cond.end

cond.false.34:                                    ; preds = %cond.false
  %35 = load double, double* %value.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.34, %cond.true.33
  %cond = phi double [ 0.000000e+00, %cond.true.33 ], [ %35, %cond.false.34 ]
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.end, %cond.true
  %cond36 = phi double [ 1.000000e+00, %cond.true ], [ %cond, %cond.end ]
  store double %cond36, double* %value.addr, align 8
  %36 = load i32, i32* %channel.addr, align 4
  %idxprom37 = zext i32 %36 to i64
  %37 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %gamma = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %37, i32 0, i32 2
  %arrayidx38 = getelementptr inbounds [5 x double], [5 x double]* %gamma, i32 0, i64 %idxprom37
  %38 = load double, double* %arrayidx38, align 8
  %cmp39 = fcmp une double %38, 0.000000e+00
  br i1 %cmp39, label %if.then.40, label %if.end.46

if.then.40:                                       ; preds = %cond.end.35
  %39 = load double, double* %value.addr, align 8
  %40 = load i32, i32* %channel.addr, align 4
  %idxprom41 = zext i32 %40 to i64
  %41 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %gamma42 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %41, i32 0, i32 2
  %arrayidx43 = getelementptr inbounds [5 x double], [5 x double]* %gamma42, i32 0, i64 %idxprom41
  %42 = load double, double* %arrayidx43, align 8
  %div44 = fdiv double 1.000000e+00, %42
  %call45 = call double @pow(double %39, double %div44) #9
  store double %call45, double* %value.addr, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.40, %cond.end.35
  %43 = load double, double* %value.addr, align 8
  store double %43, double* %retval
  br label %return

return:                                           ; preds = %if.end.46, %if.else.9
  %44 = load double, double* %retval
  ret double %44
}

; Function Attrs: nounwind readnone
declare i64 @gimp_levels_config_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare double @pow(double, double) #5

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_levels_class_init(%struct._GimpOperationLevelsClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpOperationLevelsClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %operation_class = alloca %struct._GeglOperationClass*, align 8
  %point_class = alloca %struct._GeglOperationPointFilterClass*, align 8
  store %struct._GimpOperationLevelsClass* %klass, %struct._GimpOperationLevelsClass** %klass.addr, align 8
  %0 = load %struct._GimpOperationLevelsClass*, %struct._GimpOperationLevelsClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpOperationLevelsClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpOperationLevelsClass*, %struct._GimpOperationLevelsClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpOperationLevelsClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gegl_operation_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GeglOperationClass*
  store %struct._GeglOperationClass* %5, %struct._GeglOperationClass** %operation_class, align 8
  %6 = load %struct._GimpOperationLevelsClass*, %struct._GimpOperationLevelsClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpOperationLevelsClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gegl_operation_point_filter_get_type() #7
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GeglOperationPointFilterClass*
  store %struct._GeglOperationPointFilterClass* %8, %struct._GeglOperationPointFilterClass** %point_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_operation_point_filter_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_operation_point_filter_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %11 = load %struct._GeglOperationClass*, %struct._GeglOperationClass** %operation_class, align 8
  call void (%struct._GeglOperationClass*, i8*, ...) @gegl_operation_class_set_keys(%struct._GeglOperationClass* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i8* null)
  %12 = load %struct._GeglOperationPointFilterClass*, %struct._GeglOperationPointFilterClass** %point_class, align 8
  %process = getelementptr inbounds %struct._GeglOperationPointFilterClass, %struct._GeglOperationPointFilterClass* %12, i32 0, i32 1
  store i32 (%struct._GeglOperation*, i8*, i8*, i64, %struct._GeglRectangle*, i32)* @gimp_operation_levels_process, i32 (%struct._GeglOperation*, i8*, i8*, i64, %struct._GeglRectangle*, i32)** %process, align 8
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call i64 @gimp_levels_config_get_type() #7
  %call6 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), i64 %call5, i32 7)
  call void @g_object_class_install_property(%struct._GObjectClass* %13, i32 1, %struct._GParamSpec* %call6)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gegl_operation_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gegl_operation_point_filter_get_type() #2

declare void @gimp_operation_point_filter_set_property(%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*) #1

declare void @gimp_operation_point_filter_get_property(%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*) #1

declare void @gegl_operation_class_set_keys(%struct._GeglOperationClass*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_operation_levels_process(%struct._GeglOperation* %operation, i8* %in_buf, i8* %out_buf, i64 %samples, %struct._GeglRectangle* %roi, i32 %level) #3 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct._GeglOperation*, align 8
  %in_buf.addr = alloca i8*, align 8
  %out_buf.addr = alloca i8*, align 8
  %samples.addr = alloca i64, align 8
  %roi.addr = alloca %struct._GeglRectangle*, align 8
  %level.addr = alloca i32, align 4
  %point = alloca %struct._GimpOperationPointFilter*, align 8
  %config = alloca %struct._GimpLevelsConfig*, align 8
  %src = alloca float*, align 8
  %dest = alloca float*, align 8
  %inv_gamma = alloca [5 x float], align 16
  %channel = alloca i32, align 4
  %value = alloca double, align 8
  store %struct._GeglOperation* %operation, %struct._GeglOperation** %operation.addr, align 8
  store i8* %in_buf, i8** %in_buf.addr, align 8
  store i8* %out_buf, i8** %out_buf.addr, align 8
  store i64 %samples, i64* %samples.addr, align 8
  store %struct._GeglRectangle* %roi, %struct._GeglRectangle** %roi.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  %0 = load %struct._GeglOperation*, %struct._GeglOperation** %operation.addr, align 8
  %1 = bitcast %struct._GeglOperation* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_operation_point_filter_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpOperationPointFilter*
  store %struct._GimpOperationPointFilter* %2, %struct._GimpOperationPointFilter** %point, align 8
  %3 = load %struct._GimpOperationPointFilter*, %struct._GimpOperationPointFilter** %point, align 8
  %config2 = getelementptr inbounds %struct._GimpOperationPointFilter, %struct._GimpOperationPointFilter* %3, i32 0, i32 1
  %4 = load %struct._GObject*, %struct._GObject** %config2, align 8
  %5 = bitcast %struct._GObject* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_levels_config_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpLevelsConfig*
  store %struct._GimpLevelsConfig* %6, %struct._GimpLevelsConfig** %config, align 8
  %7 = load i8*, i8** %in_buf.addr, align 8
  %8 = bitcast i8* %7 to float*
  store float* %8, float** %src, align 8
  %9 = load i8*, i8** %out_buf.addr, align 8
  %10 = bitcast i8* %9 to float*
  store float* %10, float** %dest, align 8
  %11 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %tobool = icmp ne %struct._GimpLevelsConfig* %11, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %channel, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load i32, i32* %channel, align 4
  %cmp = icmp slt i32 %12, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %13 = load i32, i32* %channel, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %gamma = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %14, i32 0, i32 2
  %arrayidx = getelementptr inbounds [5 x double], [5 x double]* %gamma, i32 0, i64 %idxprom
  %15 = load double, double* %arrayidx, align 8
  %cmp5 = fcmp une double %15, 0.000000e+00
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body
  br label %if.end.7

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_operation_levels_process, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.7
  %16 = load i32, i32* %channel, align 4
  %idxprom8 = sext i32 %16 to i64
  %17 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %gamma9 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %17, i32 0, i32 2
  %arrayidx10 = getelementptr inbounds [5 x double], [5 x double]* %gamma9, i32 0, i64 %idxprom8
  %18 = load double, double* %arrayidx10, align 8
  %div = fdiv double 1.000000e+00, %18
  %conv = fptrunc double %div to float
  %19 = load i32, i32* %channel, align 4
  %idxprom11 = sext i32 %19 to i64
  %arrayidx12 = getelementptr inbounds [5 x float], [5 x float]* %inv_gamma, i32 0, i64 %idxprom11
  store float %conv, float* %arrayidx12, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %20 = load i32, i32* %channel, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %channel, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %for.end.57, %for.end
  %21 = load i64, i64* %samples.addr, align 8
  %dec = add nsw i64 %21, -1
  store i64 %dec, i64* %samples.addr, align 8
  %tobool13 = icmp ne i64 %21, 0
  br i1 %tobool13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %channel, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.55, %while.body
  %22 = load i32, i32* %channel, align 4
  %cmp15 = icmp slt i32 %22, 4
  br i1 %cmp15, label %for.body.17, label %for.end.57

for.body.17:                                      ; preds = %for.cond.14
  %23 = load i32, i32* %channel, align 4
  %idxprom18 = sext i32 %23 to i64
  %24 = load float*, float** %src, align 8
  %arrayidx19 = getelementptr inbounds float, float* %24, i64 %idxprom18
  %25 = load float, float* %arrayidx19, align 4
  %conv20 = fpext float %25 to double
  %26 = load i32, i32* %channel, align 4
  %add = add nsw i32 %26, 1
  %idxprom21 = sext i32 %add to i64
  %arrayidx22 = getelementptr inbounds [5 x float], [5 x float]* %inv_gamma, i32 0, i64 %idxprom21
  %27 = load float, float* %arrayidx22, align 4
  %conv23 = fpext float %27 to double
  %28 = load i32, i32* %channel, align 4
  %add24 = add nsw i32 %28, 1
  %idxprom25 = sext i32 %add24 to i64
  %29 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %low_input = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %29, i32 0, i32 3
  %arrayidx26 = getelementptr inbounds [5 x double], [5 x double]* %low_input, i32 0, i64 %idxprom25
  %30 = load double, double* %arrayidx26, align 8
  %31 = load i32, i32* %channel, align 4
  %add27 = add nsw i32 %31, 1
  %idxprom28 = sext i32 %add27 to i64
  %32 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %high_input = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %32, i32 0, i32 4
  %arrayidx29 = getelementptr inbounds [5 x double], [5 x double]* %high_input, i32 0, i64 %idxprom28
  %33 = load double, double* %arrayidx29, align 8
  %34 = load i32, i32* %channel, align 4
  %add30 = add nsw i32 %34, 1
  %idxprom31 = sext i32 %add30 to i64
  %35 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %low_output = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %35, i32 0, i32 5
  %arrayidx32 = getelementptr inbounds [5 x double], [5 x double]* %low_output, i32 0, i64 %idxprom31
  %36 = load double, double* %arrayidx32, align 8
  %37 = load i32, i32* %channel, align 4
  %add33 = add nsw i32 %37, 1
  %idxprom34 = sext i32 %add33 to i64
  %38 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %high_output = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %38, i32 0, i32 6
  %arrayidx35 = getelementptr inbounds [5 x double], [5 x double]* %high_output, i32 0, i64 %idxprom34
  %39 = load double, double* %arrayidx35, align 8
  %call36 = call double @gimp_operation_levels_map(double %conv20, double %conv23, double %30, double %33, double %36, double %39)
  store double %call36, double* %value, align 8
  %40 = load i32, i32* %channel, align 4
  %cmp37 = icmp ne i32 %40, 3
  br i1 %cmp37, label %if.then.39, label %if.end.51

if.then.39:                                       ; preds = %for.body.17
  %41 = load double, double* %value, align 8
  %arrayidx40 = getelementptr inbounds [5 x float], [5 x float]* %inv_gamma, i32 0, i64 0
  %42 = load float, float* %arrayidx40, align 4
  %conv41 = fpext float %42 to double
  %43 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %low_input42 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %43, i32 0, i32 3
  %arrayidx43 = getelementptr inbounds [5 x double], [5 x double]* %low_input42, i32 0, i64 0
  %44 = load double, double* %arrayidx43, align 8
  %45 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %high_input44 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %45, i32 0, i32 4
  %arrayidx45 = getelementptr inbounds [5 x double], [5 x double]* %high_input44, i32 0, i64 0
  %46 = load double, double* %arrayidx45, align 8
  %47 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %low_output46 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %47, i32 0, i32 5
  %arrayidx47 = getelementptr inbounds [5 x double], [5 x double]* %low_output46, i32 0, i64 0
  %48 = load double, double* %arrayidx47, align 8
  %49 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %high_output48 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %49, i32 0, i32 6
  %arrayidx49 = getelementptr inbounds [5 x double], [5 x double]* %high_output48, i32 0, i64 0
  %50 = load double, double* %arrayidx49, align 8
  %call50 = call double @gimp_operation_levels_map(double %41, double %conv41, double %44, double %46, double %48, double %50)
  store double %call50, double* %value, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.39, %for.body.17
  %51 = load double, double* %value, align 8
  %conv52 = fptrunc double %51 to float
  %52 = load i32, i32* %channel, align 4
  %idxprom53 = sext i32 %52 to i64
  %53 = load float*, float** %dest, align 8
  %arrayidx54 = getelementptr inbounds float, float* %53, i64 %idxprom53
  store float %conv52, float* %arrayidx54, align 4
  br label %for.inc.55

for.inc.55:                                       ; preds = %if.end.51
  %54 = load i32, i32* %channel, align 4
  %inc56 = add nsw i32 %54, 1
  store i32 %inc56, i32* %channel, align 4
  br label %for.cond.14

for.end.57:                                       ; preds = %for.cond.14
  %55 = load float*, float** %src, align 8
  %add.ptr = getelementptr inbounds float, float* %55, i64 4
  store float* %add.ptr, float** %src, align 8
  %56 = load float*, float** %dest, align 8
  %add.ptr58 = getelementptr inbounds float, float* %56, i64 4
  store float* %add.ptr58, float** %dest, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.else, %if.then
  %57 = load i32, i32* %retval
  ret i32 %57
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: inlinehint nounwind uwtable
define internal double @gimp_operation_levels_map(double %value, double %inv_gamma, double %low_input, double %high_input, double %low_output, double %high_output) #6 {
entry:
  %value.addr = alloca double, align 8
  %inv_gamma.addr = alloca double, align 8
  %low_input.addr = alloca double, align 8
  %high_input.addr = alloca double, align 8
  %low_output.addr = alloca double, align 8
  %high_output.addr = alloca double, align 8
  store double %value, double* %value.addr, align 8
  store double %inv_gamma, double* %inv_gamma.addr, align 8
  store double %low_input, double* %low_input.addr, align 8
  store double %high_input, double* %high_input.addr, align 8
  store double %low_output, double* %low_output.addr, align 8
  store double %high_output, double* %high_output.addr, align 8
  %0 = load double, double* %high_input.addr, align 8
  %1 = load double, double* %low_input.addr, align 8
  %cmp = fcmp une double %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load double, double* %value.addr, align 8
  %3 = load double, double* %low_input.addr, align 8
  %sub = fsub double %2, %3
  %4 = load double, double* %high_input.addr, align 8
  %5 = load double, double* %low_input.addr, align 8
  %sub1 = fsub double %4, %5
  %div = fdiv double %sub, %sub1
  store double %div, double* %value.addr, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load double, double* %value.addr, align 8
  %7 = load double, double* %low_input.addr, align 8
  %sub2 = fsub double %6, %7
  store double %sub2, double* %value.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load double, double* %value.addr, align 8
  %cmp3 = fcmp ogt double %8, 1.000000e+00
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end.7

cond.false:                                       ; preds = %if.end
  %9 = load double, double* %value.addr, align 8
  %cmp4 = fcmp olt double %9, 0.000000e+00
  br i1 %cmp4, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %cond.false
  br label %cond.end

cond.false.6:                                     ; preds = %cond.false
  %10 = load double, double* %value.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.6, %cond.true.5
  %cond = phi double [ 0.000000e+00, %cond.true.5 ], [ %10, %cond.false.6 ]
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.end, %cond.true
  %cond8 = phi double [ 1.000000e+00, %cond.true ], [ %cond, %cond.end ]
  store double %cond8, double* %value.addr, align 8
  %11 = load double, double* %inv_gamma.addr, align 8
  %cmp9 = fcmp une double %11, 1.000000e+00
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %cond.end.7
  %12 = load double, double* %value.addr, align 8
  %13 = load double, double* %inv_gamma.addr, align 8
  %call = call double @pow(double %12, double %13) #9
  store double %call, double* %value.addr, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %cond.end.7
  %14 = load double, double* %high_output.addr, align 8
  %15 = load double, double* %low_output.addr, align 8
  %cmp12 = fcmp oge double %14, %15
  br i1 %cmp12, label %if.then.13, label %if.else.15

if.then.13:                                       ; preds = %if.end.11
  %16 = load double, double* %value.addr, align 8
  %17 = load double, double* %high_output.addr, align 8
  %18 = load double, double* %low_output.addr, align 8
  %sub14 = fsub double %17, %18
  %mul = fmul double %16, %sub14
  %19 = load double, double* %low_output.addr, align 8
  %add = fadd double %mul, %19
  store double %add, double* %value.addr, align 8
  br label %if.end.22

if.else.15:                                       ; preds = %if.end.11
  %20 = load double, double* %high_output.addr, align 8
  %21 = load double, double* %low_output.addr, align 8
  %cmp16 = fcmp olt double %20, %21
  br i1 %cmp16, label %if.then.17, label %if.end.21

if.then.17:                                       ; preds = %if.else.15
  %22 = load double, double* %low_output.addr, align 8
  %23 = load double, double* %value.addr, align 8
  %24 = load double, double* %low_output.addr, align 8
  %25 = load double, double* %high_output.addr, align 8
  %sub18 = fsub double %24, %25
  %mul19 = fmul double %23, %sub18
  %sub20 = fsub double %22, %mul19
  store double %sub20, double* %value.addr, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.17, %if.else.15
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.13
  %26 = load double, double* %value.addr, align 8
  ret double %26
}

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
