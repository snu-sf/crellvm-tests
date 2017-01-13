; ModuleID = './app/gegl/gimpoperationdarkenonlymode.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpOperationDarkenOnlyModeClass = type { %struct._GimpOperationPointLayerModeClass }
%struct._GimpOperationPointLayerModeClass = type { %struct._GeglOperationPointComposerClass }
%struct._GeglOperationPointComposerClass = type { %struct._GeglOperationComposerClass, i32 (%struct._GeglOperation*, i8*, i8*, i8*, i64, %struct._GeglRectangle*, i32)*, i32 (%struct._GeglOperation*, %struct._cl_mem*, %struct._cl_mem*, %struct._cl_mem*, i64, %struct._GeglRectangle*, i32)*, [4 x i8*] }
%struct._GeglOperationComposerClass = type { %struct._GeglOperationClass, i32 (%struct._GeglOperation*, %struct._GeglBuffer*, %struct._GeglBuffer*, %struct._GeglBuffer*, %struct._GeglRectangle*, i32)*, [4 x i8*] }
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
%struct._GimpOperationDarkenOnlyMode = type { %struct._GimpOperationPointLayerMode }
%struct._GimpOperationPointLayerMode = type { %struct._GeglOperationPointComposer, i32 }
%struct._GeglOperationPointComposer = type { %struct._GeglOperationComposer }
%struct._GeglOperationComposer = type { %struct._GeglOperation }

@gimp_operation_darken_only_mode_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"GimpOperationDarkenOnlyMode\00", align 1
@gimp_operation_darken_only_mode_parent_class = internal global i8* null, align 8
@GimpOperationDarkenOnlyMode_private_offset = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"gimp:darken-only-mode\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"GIMP darken only mode operation\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_operation_darken_only_mode_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_operation_darken_only_mode_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_operation_darken_only_mode_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_operation_point_layer_mode_get_type() #4
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 400, void (i8*, i8*)* bitcast (void (i8*)* @gimp_operation_darken_only_mode_class_intern_init to void (i8*, i8*)*), i32 40, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpOperationDarkenOnlyMode*)* @gimp_operation_darken_only_mode_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_operation_darken_only_mode_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_operation_darken_only_mode_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_operation_point_layer_mode_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_darken_only_mode_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_operation_darken_only_mode_parent_class, align 8
  %1 = load i32, i32* @GimpOperationDarkenOnlyMode_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpOperationDarkenOnlyMode_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpOperationDarkenOnlyModeClass*
  call void @gimp_operation_darken_only_mode_class_init(%struct._GimpOperationDarkenOnlyModeClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_darken_only_mode_init(%struct._GimpOperationDarkenOnlyMode* %self) #3 {
entry:
  %self.addr = alloca %struct._GimpOperationDarkenOnlyMode*, align 8
  store %struct._GimpOperationDarkenOnlyMode* %self, %struct._GimpOperationDarkenOnlyMode** %self.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_darken_only_mode_class_init(%struct._GimpOperationDarkenOnlyModeClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpOperationDarkenOnlyModeClass*, align 8
  %operation_class = alloca %struct._GeglOperationClass*, align 8
  %point_class = alloca %struct._GeglOperationPointComposerClass*, align 8
  store %struct._GimpOperationDarkenOnlyModeClass* %klass, %struct._GimpOperationDarkenOnlyModeClass** %klass.addr, align 8
  %0 = load %struct._GimpOperationDarkenOnlyModeClass*, %struct._GimpOperationDarkenOnlyModeClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpOperationDarkenOnlyModeClass* %0 to %struct._GTypeClass*
  %call = call i64 @gegl_operation_get_type() #4
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GeglOperationClass*
  store %struct._GeglOperationClass* %2, %struct._GeglOperationClass** %operation_class, align 8
  %3 = load %struct._GimpOperationDarkenOnlyModeClass*, %struct._GimpOperationDarkenOnlyModeClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpOperationDarkenOnlyModeClass* %3 to %struct._GTypeClass*
  %call2 = call i64 @gegl_operation_point_composer_get_type() #4
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GeglOperationPointComposerClass*
  store %struct._GeglOperationPointComposerClass* %5, %struct._GeglOperationPointComposerClass** %point_class, align 8
  %6 = load %struct._GeglOperationClass*, %struct._GeglOperationClass** %operation_class, align 8
  call void (%struct._GeglOperationClass*, i8*, ...) @gegl_operation_class_set_keys(%struct._GeglOperationClass* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %7 = load %struct._GeglOperationPointComposerClass*, %struct._GeglOperationPointComposerClass** %point_class, align 8
  %process = getelementptr inbounds %struct._GeglOperationPointComposerClass, %struct._GeglOperationPointComposerClass* %7, i32 0, i32 1
  store i32 (%struct._GeglOperation*, i8*, i8*, i8*, i64, %struct._GeglRectangle*, i32)* @gimp_operation_darken_only_mode_process, i32 (%struct._GeglOperation*, i8*, i8*, i8*, i64, %struct._GeglRectangle*, i32)** %process, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gegl_operation_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gegl_operation_point_composer_get_type() #2

declare void @gegl_operation_class_set_keys(%struct._GeglOperationClass*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_operation_darken_only_mode_process(%struct._GeglOperation* %operation, i8* %in_buf, i8* %aux_buf, i8* %out_buf, i64 %samples, %struct._GeglRectangle* %roi, i32 %level) #3 {
entry:
  %operation.addr = alloca %struct._GeglOperation*, align 8
  %in_buf.addr = alloca i8*, align 8
  %aux_buf.addr = alloca i8*, align 8
  %out_buf.addr = alloca i8*, align 8
  %samples.addr = alloca i64, align 8
  %roi.addr = alloca %struct._GeglRectangle*, align 8
  %level.addr = alloca i32, align 4
  %in = alloca float*, align 8
  %layer = alloca float*, align 8
  %out = alloca float*, align 8
  store %struct._GeglOperation* %operation, %struct._GeglOperation** %operation.addr, align 8
  store i8* %in_buf, i8** %in_buf.addr, align 8
  store i8* %aux_buf, i8** %aux_buf.addr, align 8
  store i8* %out_buf, i8** %out_buf.addr, align 8
  store i64 %samples, i64* %samples.addr, align 8
  store %struct._GeglRectangle* %roi, %struct._GeglRectangle** %roi.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  %0 = load i8*, i8** %in_buf.addr, align 8
  %1 = bitcast i8* %0 to float*
  store float* %1, float** %in, align 8
  %2 = load i8*, i8** %aux_buf.addr, align 8
  %3 = bitcast i8* %2 to float*
  store float* %3, float** %layer, align 8
  %4 = load i8*, i8** %out_buf.addr, align 8
  %5 = bitcast i8* %4 to float*
  store float* %5, float** %out, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %6 = load i64, i64* %samples.addr, align 8
  %dec = add nsw i64 %6, -1
  store i64 %dec, i64* %samples.addr, align 8
  %tobool = icmp ne i64 %6, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load float*, float** %in, align 8
  %arrayidx = getelementptr inbounds float, float* %7, i64 0
  %8 = load float, float* %arrayidx, align 4
  %9 = load float*, float** %out, align 8
  %arrayidx1 = getelementptr inbounds float, float* %9, i64 0
  store float %8, float* %arrayidx1, align 4
  %10 = load float*, float** %in, align 8
  %arrayidx2 = getelementptr inbounds float, float* %10, i64 1
  %11 = load float, float* %arrayidx2, align 4
  %12 = load float*, float** %out, align 8
  %arrayidx3 = getelementptr inbounds float, float* %12, i64 1
  store float %11, float* %arrayidx3, align 4
  %13 = load float*, float** %in, align 8
  %arrayidx4 = getelementptr inbounds float, float* %13, i64 2
  %14 = load float, float* %arrayidx4, align 4
  %15 = load float*, float** %out, align 8
  %arrayidx5 = getelementptr inbounds float, float* %15, i64 2
  store float %14, float* %arrayidx5, align 4
  %16 = load float*, float** %in, align 8
  %arrayidx6 = getelementptr inbounds float, float* %16, i64 3
  %17 = load float, float* %arrayidx6, align 4
  %18 = load float*, float** %out, align 8
  %arrayidx7 = getelementptr inbounds float, float* %18, i64 3
  store float %17, float* %arrayidx7, align 4
  %19 = load float*, float** %in, align 8
  %add.ptr = getelementptr inbounds float, float* %19, i64 4
  store float* %add.ptr, float** %in, align 8
  %20 = load float*, float** %layer, align 8
  %add.ptr8 = getelementptr inbounds float, float* %20, i64 4
  store float* %add.ptr8, float** %layer, align 8
  %21 = load float*, float** %out, align 8
  %add.ptr9 = getelementptr inbounds float, float* %21, i64 4
  store float* %add.ptr9, float** %out, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret i32 1
}

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
