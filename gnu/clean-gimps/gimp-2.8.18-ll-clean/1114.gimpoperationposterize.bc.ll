; ModuleID = './app/gegl/gimpoperationposterize.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpOperationPosterizeClass = type { %struct._GimpOperationPointFilterClass }
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
%struct._GimpOperationPosterize = type { %struct._GimpOperationPointFilter }
%struct._GimpOperationPointFilter = type { %struct._GeglOperationPointFilter, %struct._GObject* }
%struct._GeglOperationPointFilter = type { %struct._GeglOperationFilter }
%struct._GeglOperationFilter = type { %struct._GeglOperation }
%struct._GimpPosterizeConfig = type { %struct._GimpImageMapConfig, i32 }
%struct._GimpImageMapConfig = type { %struct._GimpViewable, i32 }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque

@gimp_operation_posterize_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"GimpOperationPosterize\00", align 1
@gimp_operation_posterize_parent_class = internal global i8* null, align 8
@GimpOperationPosterize_private_offset = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"gimp:posterize\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"categories\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"GIMP Posterize operation\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Config\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"The config object\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_operation_posterize_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_operation_posterize_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_operation_posterize_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_operation_point_filter_get_type() #4
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 400, void (i8*, i8*)* bitcast (void (i8*)* @gimp_operation_posterize_class_intern_init to void (i8*, i8*)*), i32 40, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpOperationPosterize*)* @gimp_operation_posterize_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_operation_posterize_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_operation_posterize_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_operation_point_filter_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_posterize_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_operation_posterize_parent_class, align 8
  %1 = load i32, i32* @GimpOperationPosterize_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpOperationPosterize_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpOperationPosterizeClass*
  call void @gimp_operation_posterize_class_init(%struct._GimpOperationPosterizeClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_posterize_init(%struct._GimpOperationPosterize* %self) #3 {
entry:
  %self.addr = alloca %struct._GimpOperationPosterize*, align 8
  store %struct._GimpOperationPosterize* %self, %struct._GimpOperationPosterize** %self.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_posterize_class_init(%struct._GimpOperationPosterizeClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpOperationPosterizeClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %operation_class = alloca %struct._GeglOperationClass*, align 8
  %point_class = alloca %struct._GeglOperationPointFilterClass*, align 8
  store %struct._GimpOperationPosterizeClass* %klass, %struct._GimpOperationPosterizeClass** %klass.addr, align 8
  %0 = load %struct._GimpOperationPosterizeClass*, %struct._GimpOperationPosterizeClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpOperationPosterizeClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpOperationPosterizeClass*, %struct._GimpOperationPosterizeClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpOperationPosterizeClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gegl_operation_get_type() #4
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GeglOperationClass*
  store %struct._GeglOperationClass* %5, %struct._GeglOperationClass** %operation_class, align 8
  %6 = load %struct._GimpOperationPosterizeClass*, %struct._GimpOperationPosterizeClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpOperationPosterizeClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gegl_operation_point_filter_get_type() #4
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
  call void (%struct._GeglOperationClass*, i8*, ...) @gegl_operation_class_set_keys(%struct._GeglOperationClass* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0), i8* null)
  %12 = load %struct._GeglOperationPointFilterClass*, %struct._GeglOperationPointFilterClass** %point_class, align 8
  %process = getelementptr inbounds %struct._GeglOperationPointFilterClass, %struct._GeglOperationPointFilterClass* %12, i32 0, i32 1
  store i32 (%struct._GeglOperation*, i8*, i8*, i64, %struct._GeglRectangle*, i32)* @gimp_operation_posterize_process, i32 (%struct._GeglOperation*, i8*, i8*, i64, %struct._GeglRectangle*, i32)** %process, align 8
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call i64 @gimp_posterize_config_get_type() #4
  %call6 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i64 %call5, i32 7)
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
define internal i32 @gimp_operation_posterize_process(%struct._GeglOperation* %operation, i8* %in_buf, i8* %out_buf, i64 %samples, %struct._GeglRectangle* %roi, i32 %level) #3 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct._GeglOperation*, align 8
  %in_buf.addr = alloca i8*, align 8
  %out_buf.addr = alloca i8*, align 8
  %samples.addr = alloca i64, align 8
  %roi.addr = alloca %struct._GeglRectangle*, align 8
  %level.addr = alloca i32, align 4
  %point = alloca %struct._GimpOperationPointFilter*, align 8
  %config = alloca %struct._GimpPosterizeConfig*, align 8
  %src = alloca float*, align 8
  %dest = alloca float*, align 8
  %levels = alloca float, align 4
  store %struct._GeglOperation* %operation, %struct._GeglOperation** %operation.addr, align 8
  store i8* %in_buf, i8** %in_buf.addr, align 8
  store i8* %out_buf, i8** %out_buf.addr, align 8
  store i64 %samples, i64* %samples.addr, align 8
  store %struct._GeglRectangle* %roi, %struct._GeglRectangle** %roi.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  %0 = load %struct._GeglOperation*, %struct._GeglOperation** %operation.addr, align 8
  %1 = bitcast %struct._GeglOperation* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_operation_point_filter_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpOperationPointFilter*
  store %struct._GimpOperationPointFilter* %2, %struct._GimpOperationPointFilter** %point, align 8
  %3 = load %struct._GimpOperationPointFilter*, %struct._GimpOperationPointFilter** %point, align 8
  %config2 = getelementptr inbounds %struct._GimpOperationPointFilter, %struct._GimpOperationPointFilter* %3, i32 0, i32 1
  %4 = load %struct._GObject*, %struct._GObject** %config2, align 8
  %5 = bitcast %struct._GObject* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_posterize_config_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpPosterizeConfig*
  store %struct._GimpPosterizeConfig* %6, %struct._GimpPosterizeConfig** %config, align 8
  %7 = load i8*, i8** %in_buf.addr, align 8
  %8 = bitcast i8* %7 to float*
  store float* %8, float** %src, align 8
  %9 = load i8*, i8** %out_buf.addr, align 8
  %10 = bitcast i8* %9 to float*
  store float* %10, float** %dest, align 8
  %11 = load %struct._GimpPosterizeConfig*, %struct._GimpPosterizeConfig** %config, align 8
  %tobool = icmp ne %struct._GimpPosterizeConfig* %11, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %12 = load %struct._GimpPosterizeConfig*, %struct._GimpPosterizeConfig** %config, align 8
  %levels5 = getelementptr inbounds %struct._GimpPosterizeConfig, %struct._GimpPosterizeConfig* %12, i32 0, i32 1
  %13 = load i32, i32* %levels5, align 4
  %conv = sitofp i32 %13 to double
  %sub = fsub double %conv, 1.000000e+00
  %conv6 = fptrunc double %sub to float
  store float %conv6, float* %levels, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %14 = load i64, i64* %samples.addr, align 8
  %dec = add nsw i64 %14, -1
  store i64 %dec, i64* %samples.addr, align 8
  %tobool7 = icmp ne i64 %14, 0
  br i1 %tobool7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load float*, float** %src, align 8
  %arrayidx = getelementptr inbounds float, float* %15, i64 0
  %16 = load float, float* %arrayidx, align 4
  %17 = load float, float* %levels, align 4
  %mul = fmul float %16, %17
  %conv8 = fpext float %mul to double
  %call9 = call double @rint(double %conv8) #4
  %18 = load float, float* %levels, align 4
  %conv10 = fpext float %18 to double
  %div = fdiv double %call9, %conv10
  %conv11 = fptrunc double %div to float
  %19 = load float*, float** %dest, align 8
  %arrayidx12 = getelementptr inbounds float, float* %19, i64 0
  store float %conv11, float* %arrayidx12, align 4
  %20 = load float*, float** %src, align 8
  %arrayidx13 = getelementptr inbounds float, float* %20, i64 1
  %21 = load float, float* %arrayidx13, align 4
  %22 = load float, float* %levels, align 4
  %mul14 = fmul float %21, %22
  %conv15 = fpext float %mul14 to double
  %call16 = call double @rint(double %conv15) #4
  %23 = load float, float* %levels, align 4
  %conv17 = fpext float %23 to double
  %div18 = fdiv double %call16, %conv17
  %conv19 = fptrunc double %div18 to float
  %24 = load float*, float** %dest, align 8
  %arrayidx20 = getelementptr inbounds float, float* %24, i64 1
  store float %conv19, float* %arrayidx20, align 4
  %25 = load float*, float** %src, align 8
  %arrayidx21 = getelementptr inbounds float, float* %25, i64 2
  %26 = load float, float* %arrayidx21, align 4
  %27 = load float, float* %levels, align 4
  %mul22 = fmul float %26, %27
  %conv23 = fpext float %mul22 to double
  %call24 = call double @rint(double %conv23) #4
  %28 = load float, float* %levels, align 4
  %conv25 = fpext float %28 to double
  %div26 = fdiv double %call24, %conv25
  %conv27 = fptrunc double %div26 to float
  %29 = load float*, float** %dest, align 8
  %arrayidx28 = getelementptr inbounds float, float* %29, i64 2
  store float %conv27, float* %arrayidx28, align 4
  %30 = load float*, float** %src, align 8
  %arrayidx29 = getelementptr inbounds float, float* %30, i64 3
  %31 = load float, float* %arrayidx29, align 4
  %32 = load float*, float** %dest, align 8
  %arrayidx30 = getelementptr inbounds float, float* %32, i64 3
  store float %31, float* %arrayidx30, align 4
  %33 = load float*, float** %src, align 8
  %add.ptr = getelementptr inbounds float, float* %33, i64 4
  store float* %add.ptr, float** %src, align 8
  %34 = load float*, float** %dest, align 8
  %add.ptr31 = getelementptr inbounds float, float* %34, i64 4
  store float* %add.ptr31, float** %dest, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %35 = load i32, i32* %retval
  ret i32 %35
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_posterize_config_get_type() #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare double @rint(double) #2

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
