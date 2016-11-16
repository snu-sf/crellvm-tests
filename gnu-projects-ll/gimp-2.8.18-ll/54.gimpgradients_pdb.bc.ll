; ModuleID = './libgimp/gimpgradients_pdb.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }

@.str = private unnamed_addr constant [23 x i8] c"gimp-gradients-refresh\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"gimp-gradients-get-list\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"gimp-gradients-sample-uniform\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"gimp-gradients-sample-custom\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"gimp-gradients-get-gradient-data\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_gradients_refresh() #0 {
entry:
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 1, i32* %success, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), i32* %nreturn_vals, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %0 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %1, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %2 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %3 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %2, i32 %3)
  %4 = load i32, i32* %success, align 4
  ret i32 %4
}

declare %struct._GimpParam* @gimp_run_procedure(i8*, i32*, ...) #1

declare void @gimp_destroy_params(%struct._GimpParam*, i32) #1

; Function Attrs: nounwind uwtable
define i8** @gimp_gradients_get_list(i8* %filter, i32* %num_gradients) #0 {
entry:
  %filter.addr = alloca i8*, align 8
  %num_gradients.addr = alloca i32*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %gradient_list = alloca i8**, align 8
  %i = alloca i32, align 4
  store i8* %filter, i8** %filter.addr, align 8
  store i32* %num_gradients, i32** %num_gradients.addr, align 8
  store i8** null, i8*** %gradient_list, align 8
  %0 = load i8*, i8** %filter.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %1 = load i32*, i32** %num_gradients.addr, align 8
  store i32 0, i32* %1, align 4
  %2 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %3 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %4, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data2 to i32*
  %5 = load i32, i32* %d_int32, align 4
  %6 = load i32*, i32** %num_gradients.addr, align 8
  store i32 %5, i32* %6, align 4
  %7 = load i32*, i32** %num_gradients.addr, align 8
  %8 = load i32, i32* %7, align 4
  %conv = sext i32 %8 to i64
  %call3 = call noalias i8* @g_malloc_n(i64 %conv, i64 8)
  %9 = bitcast i8* %call3 to i8**
  store i8** %9, i8*** %gradient_list, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %10 = load i32, i32* %i, align 4
  %11 = load i32*, i32** %num_gradients.addr, align 8
  %12 = load i32, i32* %11, align 4
  %cmp4 = icmp slt i32 %10, %12
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %14, i64 2
  %data7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx6, i32 0, i32 1
  %d_stringarray = bitcast %union._GimpParamData* %data7 to i8***
  %15 = load i8**, i8*** %d_stringarray, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %15, i64 %idxprom
  %16 = load i8*, i8** %arrayidx8, align 8
  %call9 = call noalias i8* @g_strdup(i8* %16)
  %17 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %17 to i64
  %18 = load i8**, i8*** %gradient_list, align 8
  %arrayidx11 = getelementptr inbounds i8*, i8** %18, i64 %idxprom10
  store i8* %call9, i8** %arrayidx11, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %20 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %21 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %20, i32 %21)
  %22 = load i8**, i8*** %gradient_list, align 8
  ret i8** %22
}

declare noalias i8* @g_malloc_n(i64, i64) #1

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind uwtable
define double* @gimp_gradients_sample_uniform(i32 %num_samples, i32 %reverse) #0 {
entry:
  %num_samples.addr = alloca i32, align 4
  %reverse.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %color_samples = alloca double*, align 8
  %num_color_samples = alloca i32, align 4
  store i32 %num_samples, i32* %num_samples.addr, align 4
  store i32 %reverse, i32* %reverse.addr, align 4
  store double* null, double** %color_samples, align 8
  %0 = load i32, i32* %num_samples.addr, align 4
  %1 = load i32, i32* %reverse.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0), i32* %nreturn_vals, i32 0, i32 %0, i32 0, i32 %1, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %2 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %3 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %4, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data2 to i32*
  %5 = load i32, i32* %d_int32, align 4
  store i32 %5, i32* %num_color_samples, align 4
  %6 = load i32, i32* %num_color_samples, align 4
  %conv = sext i32 %6 to i64
  %call3 = call noalias i8* @g_malloc_n(i64 %conv, i64 8)
  %7 = bitcast i8* %call3 to double*
  store double* %7, double** %color_samples, align 8
  %8 = load double*, double** %color_samples, align 8
  %9 = bitcast double* %8 to i8*
  %10 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %10, i64 2
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_floatarray = bitcast %union._GimpParamData* %data5 to double**
  %11 = load double*, double** %d_floatarray, align 8
  %12 = bitcast double* %11 to i8*
  %13 = load i32, i32* %num_color_samples, align 4
  %conv6 = sext i32 %13 to i64
  %mul = mul i64 %conv6, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %12, i64 %mul, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %15 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %14, i32 %15)
  %16 = load double*, double** %color_samples, align 8
  ret double* %16
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define double* @gimp_gradients_sample_custom(i32 %num_samples, double* %positions, i32 %reverse) #0 {
entry:
  %num_samples.addr = alloca i32, align 4
  %positions.addr = alloca double*, align 8
  %reverse.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %color_samples = alloca double*, align 8
  %num_color_samples = alloca i32, align 4
  store i32 %num_samples, i32* %num_samples.addr, align 4
  store double* %positions, double** %positions.addr, align 8
  store i32 %reverse, i32* %reverse.addr, align 4
  store double* null, double** %color_samples, align 8
  %0 = load i32, i32* %num_samples.addr, align 4
  %1 = load double*, double** %positions.addr, align 8
  %2 = load i32, i32* %reverse.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0), i32* %nreturn_vals, i32 0, i32 %0, i32 8, double* %1, i32 0, i32 %2, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %3 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %3, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %4 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %4, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data2 to i32*
  %6 = load i32, i32* %d_int32, align 4
  store i32 %6, i32* %num_color_samples, align 4
  %7 = load i32, i32* %num_color_samples, align 4
  %conv = sext i32 %7 to i64
  %call3 = call noalias i8* @g_malloc_n(i64 %conv, i64 8)
  %8 = bitcast i8* %call3 to double*
  store double* %8, double** %color_samples, align 8
  %9 = load double*, double** %color_samples, align 8
  %10 = bitcast double* %9 to i8*
  %11 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %11, i64 2
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_floatarray = bitcast %union._GimpParamData* %data5 to double**
  %12 = load double*, double** %d_floatarray, align 8
  %13 = bitcast double* %12 to i8*
  %14 = load i32, i32* %num_color_samples, align 4
  %conv6 = sext i32 %14 to i64
  %mul = mul i64 %conv6, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %13, i64 %mul, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %16 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %15, i32 %16)
  %17 = load double*, double** %color_samples, align 8
  ret double* %17
}

; Function Attrs: nounwind uwtable
define i8* @gimp_gradients_get_gradient_data(i8* %name, i32 %sample_size, i32 %reverse, i32* %width, double** %grad_data) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %sample_size.addr = alloca i32, align 4
  %reverse.addr = alloca i32, align 4
  %width.addr = alloca i32*, align 8
  %grad_data.addr = alloca double**, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %actual_name = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %sample_size, i32* %sample_size.addr, align 4
  store i32 %reverse, i32* %reverse.addr, align 4
  store i32* %width, i32** %width.addr, align 8
  store double** %grad_data, double*** %grad_data.addr, align 8
  store i8* null, i8** %actual_name, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i32, i32* %sample_size.addr, align 4
  %2 = load i32, i32* %reverse.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 0, i32 %1, i32 0, i32 %2, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %3 = load i32*, i32** %width.addr, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %4, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %5 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %5, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %6, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_string = bitcast %union._GimpParamData* %data2 to i8**
  %7 = load i8*, i8** %d_string, align 8
  %call3 = call noalias i8* @g_strdup(i8* %7)
  store i8* %call3, i8** %actual_name, align 8
  %8 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %8, i64 2
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data5 to i32*
  %9 = load i32, i32* %d_int32, align 4
  %10 = load i32*, i32** %width.addr, align 8
  store i32 %9, i32* %10, align 4
  %11 = load i32*, i32** %width.addr, align 8
  %12 = load i32, i32* %11, align 4
  %conv = sext i32 %12 to i64
  %call6 = call noalias i8* @g_malloc_n(i64 %conv, i64 8)
  %13 = bitcast i8* %call6 to double*
  %14 = load double**, double*** %grad_data.addr, align 8
  store double* %13, double** %14, align 8
  %15 = load double**, double*** %grad_data.addr, align 8
  %16 = load double*, double** %15, align 8
  %17 = bitcast double* %16 to i8*
  %18 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %18, i64 3
  %data8 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx7, i32 0, i32 1
  %d_floatarray = bitcast %union._GimpParamData* %data8 to double**
  %19 = load double*, double** %d_floatarray, align 8
  %20 = bitcast double* %19 to i8*
  %21 = load i32*, i32** %width.addr, align 8
  %22 = load i32, i32* %21, align 4
  %conv9 = sext i32 %22 to i64
  %mul = mul i64 %conv9, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %20, i64 %mul, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %23 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %24 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %23, i32 %24)
  %25 = load i8*, i8** %actual_name, align 8
  ret i8* %25
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
