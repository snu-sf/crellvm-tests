; ModuleID = './app/gegl/gimpoperationdesaturate.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpOperationDesaturateClass = type { %struct._GimpOperationPointFilterClass }
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
%struct._GimpOperationDesaturate = type { %struct._GimpOperationPointFilter }
%struct._GimpOperationPointFilter = type { %struct._GeglOperationPointFilter, %struct._GObject* }
%struct._GeglOperationPointFilter = type { %struct._GeglOperationFilter }
%struct._GeglOperationFilter = type { %struct._GeglOperation }
%struct._GimpDesaturateConfig = type { %struct._GimpImageMapConfig, i32 }
%struct._GimpImageMapConfig = type { %struct._GimpViewable, i32 }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque

@gimp_operation_desaturate_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"GimpOperationDesaturate\00", align 1
@gimp_operation_desaturate_parent_class = internal global i8* null, align 8
@GimpOperationDesaturate_private_offset = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"gimp:desaturate\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"categories\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"GIMP Desaturate operation\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Config\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"The config object\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_operation_desaturate_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_operation_desaturate_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_operation_desaturate_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 400, void (i8*, i8*)* bitcast (void (i8*)* @gimp_operation_desaturate_class_intern_init to void (i8*, i8*)*), i32 40, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpOperationDesaturate*)* @gimp_operation_desaturate_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_operation_desaturate_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_operation_desaturate_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_operation_point_filter_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_desaturate_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_operation_desaturate_parent_class, align 8
  %1 = load i32, i32* @GimpOperationDesaturate_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpOperationDesaturate_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpOperationDesaturateClass*
  call void @gimp_operation_desaturate_class_init(%struct._GimpOperationDesaturateClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_desaturate_init(%struct._GimpOperationDesaturate* %self) #3 {
entry:
  %self.addr = alloca %struct._GimpOperationDesaturate*, align 8
  store %struct._GimpOperationDesaturate* %self, %struct._GimpOperationDesaturate** %self.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_desaturate_class_init(%struct._GimpOperationDesaturateClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpOperationDesaturateClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %operation_class = alloca %struct._GeglOperationClass*, align 8
  %point_class = alloca %struct._GeglOperationPointFilterClass*, align 8
  store %struct._GimpOperationDesaturateClass* %klass, %struct._GimpOperationDesaturateClass** %klass.addr, align 8
  %0 = load %struct._GimpOperationDesaturateClass*, %struct._GimpOperationDesaturateClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpOperationDesaturateClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpOperationDesaturateClass*, %struct._GimpOperationDesaturateClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpOperationDesaturateClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gegl_operation_get_type() #4
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GeglOperationClass*
  store %struct._GeglOperationClass* %5, %struct._GeglOperationClass** %operation_class, align 8
  %6 = load %struct._GimpOperationDesaturateClass*, %struct._GimpOperationDesaturateClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpOperationDesaturateClass* %6 to %struct._GTypeClass*
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
  call void (%struct._GeglOperationClass*, i8*, ...) @gegl_operation_class_set_keys(%struct._GeglOperationClass* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0), i8* null)
  %12 = load %struct._GeglOperationPointFilterClass*, %struct._GeglOperationPointFilterClass** %point_class, align 8
  %process = getelementptr inbounds %struct._GeglOperationPointFilterClass, %struct._GeglOperationPointFilterClass* %12, i32 0, i32 1
  store i32 (%struct._GeglOperation*, i8*, i8*, i64, %struct._GeglRectangle*, i32)* @gimp_operation_desaturate_process, i32 (%struct._GeglOperation*, i8*, i8*, i64, %struct._GeglRectangle*, i32)** %process, align 8
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call i64 @gimp_desaturate_config_get_type() #4
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
define internal i32 @gimp_operation_desaturate_process(%struct._GeglOperation* %operation, i8* %in_buf, i8* %out_buf, i64 %samples, %struct._GeglRectangle* %roi, i32 %level) #3 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct._GeglOperation*, align 8
  %in_buf.addr = alloca i8*, align 8
  %out_buf.addr = alloca i8*, align 8
  %samples.addr = alloca i64, align 8
  %roi.addr = alloca %struct._GeglRectangle*, align 8
  %level.addr = alloca i32, align 4
  %point = alloca %struct._GimpOperationPointFilter*, align 8
  %config = alloca %struct._GimpDesaturateConfig*, align 8
  %src = alloca float*, align 8
  %dest = alloca float*, align 8
  %min = alloca float, align 4
  %max = alloca float, align 4
  %value = alloca float, align 4
  %value43 = alloca float, align 4
  %value67 = alloca float, align 4
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
  %call3 = call i64 @gimp_desaturate_config_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpDesaturateConfig*
  store %struct._GimpDesaturateConfig* %6, %struct._GimpDesaturateConfig** %config, align 8
  %7 = load i8*, i8** %in_buf.addr, align 8
  %8 = bitcast i8* %7 to float*
  store float* %8, float** %src, align 8
  %9 = load i8*, i8** %out_buf.addr, align 8
  %10 = bitcast i8* %9 to float*
  store float* %10, float** %dest, align 8
  %11 = load %struct._GimpDesaturateConfig*, %struct._GimpDesaturateConfig** %config, align 8
  %tobool = icmp ne %struct._GimpDesaturateConfig* %11, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %12 = load %struct._GimpDesaturateConfig*, %struct._GimpDesaturateConfig** %config, align 8
  %mode = getelementptr inbounds %struct._GimpDesaturateConfig, %struct._GimpDesaturateConfig* %12, i32 0, i32 1
  %13 = load i32, i32* %mode, align 4
  switch i32 %13, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.38
    i32 2, label %sw.bb.62
  ]

sw.bb:                                            ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %cond.end.30, %sw.bb
  %14 = load i64, i64* %samples.addr, align 8
  %dec = add nsw i64 %14, -1
  store i64 %dec, i64* %samples.addr, align 8
  %tobool5 = icmp ne i64 %14, 0
  br i1 %tobool5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load float*, float** %src, align 8
  %arrayidx = getelementptr inbounds float, float* %15, i64 0
  %16 = load float, float* %arrayidx, align 4
  %17 = load float*, float** %src, align 8
  %arrayidx6 = getelementptr inbounds float, float* %17, i64 1
  %18 = load float, float* %arrayidx6, align 4
  %cmp = fcmp ogt float %16, %18
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %19 = load float*, float** %src, align 8
  %arrayidx7 = getelementptr inbounds float, float* %19, i64 0
  %20 = load float, float* %arrayidx7, align 4
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %21 = load float*, float** %src, align 8
  %arrayidx8 = getelementptr inbounds float, float* %21, i64 1
  %22 = load float, float* %arrayidx8, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %20, %cond.true ], [ %22, %cond.false ]
  store float %cond, float* %max, align 4
  %23 = load float, float* %max, align 4
  %24 = load float*, float** %src, align 8
  %arrayidx9 = getelementptr inbounds float, float* %24, i64 2
  %25 = load float, float* %arrayidx9, align 4
  %cmp10 = fcmp ogt float %23, %25
  br i1 %cmp10, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %cond.end
  %26 = load float, float* %max, align 4
  br label %cond.end.14

cond.false.12:                                    ; preds = %cond.end
  %27 = load float*, float** %src, align 8
  %arrayidx13 = getelementptr inbounds float, float* %27, i64 2
  %28 = load float, float* %arrayidx13, align 4
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.12, %cond.true.11
  %cond15 = phi float [ %26, %cond.true.11 ], [ %28, %cond.false.12 ]
  store float %cond15, float* %max, align 4
  %29 = load float*, float** %src, align 8
  %arrayidx16 = getelementptr inbounds float, float* %29, i64 0
  %30 = load float, float* %arrayidx16, align 4
  %31 = load float*, float** %src, align 8
  %arrayidx17 = getelementptr inbounds float, float* %31, i64 1
  %32 = load float, float* %arrayidx17, align 4
  %cmp18 = fcmp olt float %30, %32
  br i1 %cmp18, label %cond.true.19, label %cond.false.21

cond.true.19:                                     ; preds = %cond.end.14
  %33 = load float*, float** %src, align 8
  %arrayidx20 = getelementptr inbounds float, float* %33, i64 0
  %34 = load float, float* %arrayidx20, align 4
  br label %cond.end.23

cond.false.21:                                    ; preds = %cond.end.14
  %35 = load float*, float** %src, align 8
  %arrayidx22 = getelementptr inbounds float, float* %35, i64 1
  %36 = load float, float* %arrayidx22, align 4
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.21, %cond.true.19
  %cond24 = phi float [ %34, %cond.true.19 ], [ %36, %cond.false.21 ]
  store float %cond24, float* %min, align 4
  %37 = load float, float* %min, align 4
  %38 = load float*, float** %src, align 8
  %arrayidx25 = getelementptr inbounds float, float* %38, i64 2
  %39 = load float, float* %arrayidx25, align 4
  %cmp26 = fcmp olt float %37, %39
  br i1 %cmp26, label %cond.true.27, label %cond.false.28

cond.true.27:                                     ; preds = %cond.end.23
  %40 = load float, float* %min, align 4
  br label %cond.end.30

cond.false.28:                                    ; preds = %cond.end.23
  %41 = load float*, float** %src, align 8
  %arrayidx29 = getelementptr inbounds float, float* %41, i64 2
  %42 = load float, float* %arrayidx29, align 4
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.28, %cond.true.27
  %cond31 = phi float [ %40, %cond.true.27 ], [ %42, %cond.false.28 ]
  store float %cond31, float* %min, align 4
  %43 = load float, float* %max, align 4
  %44 = load float, float* %min, align 4
  %add = fadd float %43, %44
  %div = fdiv float %add, 2.000000e+00
  store float %div, float* %value, align 4
  %45 = load float, float* %value, align 4
  %46 = load float*, float** %dest, align 8
  %arrayidx32 = getelementptr inbounds float, float* %46, i64 0
  store float %45, float* %arrayidx32, align 4
  %47 = load float, float* %value, align 4
  %48 = load float*, float** %dest, align 8
  %arrayidx33 = getelementptr inbounds float, float* %48, i64 1
  store float %47, float* %arrayidx33, align 4
  %49 = load float, float* %value, align 4
  %50 = load float*, float** %dest, align 8
  %arrayidx34 = getelementptr inbounds float, float* %50, i64 2
  store float %49, float* %arrayidx34, align 4
  %51 = load float*, float** %src, align 8
  %arrayidx35 = getelementptr inbounds float, float* %51, i64 3
  %52 = load float, float* %arrayidx35, align 4
  %53 = load float*, float** %dest, align 8
  %arrayidx36 = getelementptr inbounds float, float* %53, i64 3
  store float %52, float* %arrayidx36, align 4
  %54 = load float*, float** %src, align 8
  %add.ptr = getelementptr inbounds float, float* %54, i64 4
  store float* %add.ptr, float** %src, align 8
  %55 = load float*, float** %dest, align 8
  %add.ptr37 = getelementptr inbounds float, float* %55, i64 4
  store float* %add.ptr37, float** %dest, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %sw.epilog

sw.bb.38:                                         ; preds = %if.end
  br label %while.cond.39

while.cond.39:                                    ; preds = %while.body.42, %sw.bb.38
  %56 = load i64, i64* %samples.addr, align 8
  %dec40 = add nsw i64 %56, -1
  store i64 %dec40, i64* %samples.addr, align 8
  %tobool41 = icmp ne i64 %56, 0
  br i1 %tobool41, label %while.body.42, label %while.end.61

while.body.42:                                    ; preds = %while.cond.39
  %57 = load float*, float** %src, align 8
  %arrayidx44 = getelementptr inbounds float, float* %57, i64 0
  %58 = load float, float* %arrayidx44, align 4
  %conv = fpext float %58 to double
  %mul = fmul double %conv, 2.126000e-01
  %59 = load float*, float** %src, align 8
  %arrayidx45 = getelementptr inbounds float, float* %59, i64 1
  %60 = load float, float* %arrayidx45, align 4
  %conv46 = fpext float %60 to double
  %mul47 = fmul double %conv46, 7.152000e-01
  %add48 = fadd double %mul, %mul47
  %61 = load float*, float** %src, align 8
  %arrayidx49 = getelementptr inbounds float, float* %61, i64 2
  %62 = load float, float* %arrayidx49, align 4
  %conv50 = fpext float %62 to double
  %mul51 = fmul double %conv50, 7.220000e-02
  %add52 = fadd double %add48, %mul51
  %conv53 = fptrunc double %add52 to float
  store float %conv53, float* %value43, align 4
  %63 = load float, float* %value43, align 4
  %64 = load float*, float** %dest, align 8
  %arrayidx54 = getelementptr inbounds float, float* %64, i64 0
  store float %63, float* %arrayidx54, align 4
  %65 = load float, float* %value43, align 4
  %66 = load float*, float** %dest, align 8
  %arrayidx55 = getelementptr inbounds float, float* %66, i64 1
  store float %65, float* %arrayidx55, align 4
  %67 = load float, float* %value43, align 4
  %68 = load float*, float** %dest, align 8
  %arrayidx56 = getelementptr inbounds float, float* %68, i64 2
  store float %67, float* %arrayidx56, align 4
  %69 = load float*, float** %src, align 8
  %arrayidx57 = getelementptr inbounds float, float* %69, i64 3
  %70 = load float, float* %arrayidx57, align 4
  %71 = load float*, float** %dest, align 8
  %arrayidx58 = getelementptr inbounds float, float* %71, i64 3
  store float %70, float* %arrayidx58, align 4
  %72 = load float*, float** %src, align 8
  %add.ptr59 = getelementptr inbounds float, float* %72, i64 4
  store float* %add.ptr59, float** %src, align 8
  %73 = load float*, float** %dest, align 8
  %add.ptr60 = getelementptr inbounds float, float* %73, i64 4
  store float* %add.ptr60, float** %dest, align 8
  br label %while.cond.39

while.end.61:                                     ; preds = %while.cond.39
  br label %sw.epilog

sw.bb.62:                                         ; preds = %if.end
  br label %while.cond.63

while.cond.63:                                    ; preds = %while.body.66, %sw.bb.62
  %74 = load i64, i64* %samples.addr, align 8
  %dec64 = add nsw i64 %74, -1
  store i64 %dec64, i64* %samples.addr, align 8
  %tobool65 = icmp ne i64 %74, 0
  br i1 %tobool65, label %while.body.66, label %while.end.81

while.body.66:                                    ; preds = %while.cond.63
  %75 = load float*, float** %src, align 8
  %arrayidx68 = getelementptr inbounds float, float* %75, i64 0
  %76 = load float, float* %arrayidx68, align 4
  %77 = load float*, float** %src, align 8
  %arrayidx69 = getelementptr inbounds float, float* %77, i64 1
  %78 = load float, float* %arrayidx69, align 4
  %add70 = fadd float %76, %78
  %79 = load float*, float** %src, align 8
  %arrayidx71 = getelementptr inbounds float, float* %79, i64 2
  %80 = load float, float* %arrayidx71, align 4
  %add72 = fadd float %add70, %80
  %div73 = fdiv float %add72, 3.000000e+00
  store float %div73, float* %value67, align 4
  %81 = load float, float* %value67, align 4
  %82 = load float*, float** %dest, align 8
  %arrayidx74 = getelementptr inbounds float, float* %82, i64 0
  store float %81, float* %arrayidx74, align 4
  %83 = load float, float* %value67, align 4
  %84 = load float*, float** %dest, align 8
  %arrayidx75 = getelementptr inbounds float, float* %84, i64 1
  store float %83, float* %arrayidx75, align 4
  %85 = load float, float* %value67, align 4
  %86 = load float*, float** %dest, align 8
  %arrayidx76 = getelementptr inbounds float, float* %86, i64 2
  store float %85, float* %arrayidx76, align 4
  %87 = load float*, float** %src, align 8
  %arrayidx77 = getelementptr inbounds float, float* %87, i64 3
  %88 = load float, float* %arrayidx77, align 4
  %89 = load float*, float** %dest, align 8
  %arrayidx78 = getelementptr inbounds float, float* %89, i64 3
  store float %88, float* %arrayidx78, align 4
  %90 = load float*, float** %src, align 8
  %add.ptr79 = getelementptr inbounds float, float* %90, i64 4
  store float* %add.ptr79, float** %src, align 8
  %91 = load float*, float** %dest, align 8
  %add.ptr80 = getelementptr inbounds float, float* %91, i64 4
  store float* %add.ptr80, float** %dest, align 8
  br label %while.cond.63

while.end.81:                                     ; preds = %while.cond.63
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %while.end.81, %while.end.61, %while.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then
  %92 = load i32, i32* %retval
  ret i32 %92
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_desaturate_config_get_type() #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
