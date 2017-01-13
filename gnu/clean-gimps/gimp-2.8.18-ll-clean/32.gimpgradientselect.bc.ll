; ModuleID = './libgimp/gimpgradientselect.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpParamDef = type { i32, i8*, i8* }
%struct._GHashTable = type opaque
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct.GimpGradientData = type { i8*, i32, i8*, i32, double*, void (i8*, i32, double*, i32, i8*)*, i32, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_gradient_select_new.args = internal constant [4 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [4 x i8] c"str\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"String\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"gradient width\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Gradient width\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"gradient data\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"The gradient mask data\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"dialog status\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"If the dialog was closing [0 = No, 1 = Yes]\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"Temporary gradient popup callback procedure\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@gimp_gradient_select_ht = internal global %struct._GHashTable* null, align 8
@.str.10 = private unnamed_addr constant [8 x i8] c"LibGimp\00", align 1
@__func__.gimp_gradient_select_destroy = private unnamed_addr constant [29 x i8] c"gimp_gradient_select_destroy\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"gradient_callback != NULL\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"gimp_gradient_select_ht != NULL\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"Can't find internal gradient data\00", align 1
@gimp_temp_gradient_run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i8* @gimp_gradient_select_new(i8* %title, i8* %gradient_name, i32 %sample_size, void (i8*, i32, double*, i32, i8*)* %callback, i8* %data) #0 {
entry:
  %retval = alloca i8*, align 8
  %title.addr = alloca i8*, align 8
  %gradient_name.addr = alloca i8*, align 8
  %sample_size.addr = alloca i32, align 4
  %callback.addr = alloca void (i8*, i32, double*, i32, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %gradient_callback = alloca i8*, align 8
  %gradient_data = alloca %struct.GimpGradientData*, align 8
  store i8* %title, i8** %title.addr, align 8
  store i8* %gradient_name, i8** %gradient_name.addr, align 8
  store i32 %sample_size, i32* %sample_size.addr, align 4
  store void (i8*, i32, double*, i32, i8*)* %callback, void (i8*, i32, double*, i32, i8*)** %callback.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %call = call i8* @gimp_procedural_db_temp_name()
  store i8* %call, i8** %gradient_callback, align 8
  %0 = load i8*, i8** %gradient_callback, align 8
  call void @gimp_install_temp_proc(i8* %0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0), i32 3, i32 4, i32 0, %struct._GimpParamDef* getelementptr inbounds ([4 x %struct._GimpParamDef], [4 x %struct._GimpParamDef]* @gimp_gradient_select_new.args, i32 0, i32 0), %struct._GimpParamDef* null, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @gimp_temp_gradient_run)
  %1 = load i8*, i8** %gradient_callback, align 8
  %2 = load i8*, i8** %title.addr, align 8
  %3 = load i8*, i8** %gradient_name.addr, align 8
  %4 = load i32, i32* %sample_size.addr, align 4
  %call1 = call i32 @gimp_gradients_popup(i8* %1, i8* %2, i8* %3, i32 %4)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  call void @gimp_extension_enable()
  %5 = load %struct._GHashTable*, %struct._GHashTable** @gimp_gradient_select_ht, align 8
  %tobool2 = icmp ne %struct._GHashTable* %5, null
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  %call4 = call %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal, void (i8*)* @g_free, void (i8*)* bitcast (void (%struct.GimpGradientData*)* @gimp_gradient_data_free to void (i8*)*))
  store %struct._GHashTable* %call4, %struct._GHashTable** @gimp_gradient_select_ht, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %call5 = call noalias i8* @g_slice_alloc0(i64 64)
  %6 = bitcast i8* %call5 to %struct.GimpGradientData*
  store %struct.GimpGradientData* %6, %struct.GimpGradientData** %gradient_data, align 8
  %7 = load i8*, i8** %gradient_callback, align 8
  %8 = load %struct.GimpGradientData*, %struct.GimpGradientData** %gradient_data, align 8
  %gradient_callback6 = getelementptr inbounds %struct.GimpGradientData, %struct.GimpGradientData* %8, i32 0, i32 0
  store i8* %7, i8** %gradient_callback6, align 8
  %9 = load void (i8*, i32, double*, i32, i8*)*, void (i8*, i32, double*, i32, i8*)** %callback.addr, align 8
  %10 = load %struct.GimpGradientData*, %struct.GimpGradientData** %gradient_data, align 8
  %callback7 = getelementptr inbounds %struct.GimpGradientData, %struct.GimpGradientData* %10, i32 0, i32 5
  store void (i8*, i32, double*, i32, i8*)* %9, void (i8*, i32, double*, i32, i8*)** %callback7, align 8
  %11 = load i8*, i8** %data.addr, align 8
  %12 = load %struct.GimpGradientData*, %struct.GimpGradientData** %gradient_data, align 8
  %data8 = getelementptr inbounds %struct.GimpGradientData, %struct.GimpGradientData* %12, i32 0, i32 7
  store i8* %11, i8** %data8, align 8
  %13 = load %struct._GHashTable*, %struct._GHashTable** @gimp_gradient_select_ht, align 8
  %14 = load i8*, i8** %gradient_callback, align 8
  %15 = load %struct.GimpGradientData*, %struct.GimpGradientData** %gradient_data, align 8
  %16 = bitcast %struct.GimpGradientData* %15 to i8*
  %call9 = call i32 @g_hash_table_insert(%struct._GHashTable* %13, i8* %14, i8* %16)
  %17 = load i8*, i8** %gradient_callback, align 8
  store i8* %17, i8** %retval
  br label %return

if.end.10:                                        ; preds = %entry
  %18 = load i8*, i8** %gradient_callback, align 8
  call void @gimp_uninstall_temp_proc(i8* %18)
  %19 = load i8*, i8** %gradient_callback, align 8
  call void @g_free(i8* %19)
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.end
  %20 = load i8*, i8** %retval
  ret i8* %20
}

declare i8* @gimp_procedural_db_temp_name() #1

declare void @gimp_install_temp_proc(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, %struct._GimpParamDef*, %struct._GimpParamDef*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_temp_gradient_run(i8* %name, i32 %nparams, %struct._GimpParam* %param, i32* %nreturn_vals, %struct._GimpParam** %return_vals) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %nparams.addr = alloca i32, align 4
  %param.addr = alloca %struct._GimpParam*, align 8
  %nreturn_vals.addr = alloca i32*, align 8
  %return_vals.addr = alloca %struct._GimpParam**, align 8
  %gradient_data = alloca %struct.GimpGradientData*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  %0 = load %struct._GHashTable*, %struct._GHashTable** @gimp_gradient_select_ht, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %call = call i8* @g_hash_table_lookup(%struct._GHashTable* %0, i8* %1)
  %2 = bitcast i8* %call to %struct.GimpGradientData*
  store %struct.GimpGradientData* %2, %struct.GimpGradientData** %gradient_data, align 8
  %3 = load %struct.GimpGradientData*, %struct.GimpGradientData** %gradient_data, align 8
  %tobool = icmp ne %struct.GimpGradientData* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.21

if.else:                                          ; preds = %entry
  %4 = load %struct.GimpGradientData*, %struct.GimpGradientData** %gradient_data, align 8
  %gradient_name = getelementptr inbounds %struct.GimpGradientData, %struct.GimpGradientData* %4, i32 0, i32 2
  %5 = load i8*, i8** %gradient_name, align 8
  call void @g_free(i8* %5)
  %6 = load %struct.GimpGradientData*, %struct.GimpGradientData** %gradient_data, align 8
  %gradient_data1 = getelementptr inbounds %struct.GimpGradientData, %struct.GimpGradientData* %6, i32 0, i32 4
  %7 = load double*, double** %gradient_data1, align 8
  %8 = bitcast double* %7 to i8*
  call void @g_free(i8* %8)
  %9 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %9, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_string = bitcast %union._GimpParamData* %data to i8**
  %10 = load i8*, i8** %d_string, align 8
  %call2 = call noalias i8* @g_strdup(i8* %10)
  %11 = load %struct.GimpGradientData*, %struct.GimpGradientData** %gradient_data, align 8
  %gradient_name3 = getelementptr inbounds %struct.GimpGradientData, %struct.GimpGradientData* %11, i32 0, i32 2
  store i8* %call2, i8** %gradient_name3, align 8
  %12 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %12, i64 1
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data5 to i32*
  %13 = load i32, i32* %d_int32, align 4
  %14 = load %struct.GimpGradientData*, %struct.GimpGradientData** %gradient_data, align 8
  %width = getelementptr inbounds %struct.GimpGradientData, %struct.GimpGradientData* %14, i32 0, i32 3
  store i32 %13, i32* %width, align 4
  %15 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %15, i64 2
  %data7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx6, i32 0, i32 1
  %d_floatarray = bitcast %union._GimpParamData* %data7 to double**
  %16 = load double*, double** %d_floatarray, align 8
  %17 = bitcast double* %16 to i8*
  %18 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx8 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %18, i64 1
  %data9 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx8, i32 0, i32 1
  %d_int3210 = bitcast %union._GimpParamData* %data9 to i32*
  %19 = load i32, i32* %d_int3210, align 4
  %conv = sext i32 %19 to i64
  %mul = mul i64 %conv, 8
  %conv11 = trunc i64 %mul to i32
  %call12 = call noalias i8* @g_memdup(i8* %17, i32 %conv11)
  %20 = bitcast i8* %call12 to double*
  %21 = load %struct.GimpGradientData*, %struct.GimpGradientData** %gradient_data, align 8
  %gradient_data13 = getelementptr inbounds %struct.GimpGradientData, %struct.GimpGradientData* %21, i32 0, i32 4
  store double* %20, double** %gradient_data13, align 8
  %22 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %22, i64 3
  %data15 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx14, i32 0, i32 1
  %d_int3216 = bitcast %union._GimpParamData* %data15 to i32*
  %23 = load i32, i32* %d_int3216, align 4
  %24 = load %struct.GimpGradientData*, %struct.GimpGradientData** %gradient_data, align 8
  %closing = getelementptr inbounds %struct.GimpGradientData, %struct.GimpGradientData* %24, i32 0, i32 6
  store i32 %23, i32* %closing, align 4
  %25 = load %struct.GimpGradientData*, %struct.GimpGradientData** %gradient_data, align 8
  %idle_id = getelementptr inbounds %struct.GimpGradientData, %struct.GimpGradientData* %25, i32 0, i32 1
  %26 = load i32, i32* %idle_id, align 4
  %tobool17 = icmp ne i32 %26, 0
  br i1 %tobool17, label %if.end, label %if.then.18

if.then.18:                                       ; preds = %if.else
  %27 = load %struct.GimpGradientData*, %struct.GimpGradientData** %gradient_data, align 8
  %28 = bitcast %struct.GimpGradientData* %27 to i8*
  %call19 = call i32 @g_idle_add(i32 (i8*)* bitcast (i32 (%struct.GimpGradientData*)* @gimp_temp_gradient_run_idle to i32 (i8*)*), i8* %28)
  %29 = load %struct.GimpGradientData*, %struct.GimpGradientData** %gradient_data, align 8
  %idle_id20 = getelementptr inbounds %struct.GimpGradientData, %struct.GimpGradientData* %29, i32 0, i32 1
  store i32 %call19, i32* %idle_id20, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.18, %if.else
  br label %if.end.21

if.end.21:                                        ; preds = %if.end, %if.then
  %30 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %30, align 4
  %31 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @gimp_temp_gradient_run.values, i32 0, i32 0), %struct._GimpParam** %31, align 8
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @gimp_temp_gradient_run.values, i32 0, i64 0, i32 0), align 4
  store i32 3, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @gimp_temp_gradient_run.values, i32 0, i64 0, i32 1) to i32*), align 4
  ret void
}

declare i32 @gimp_gradients_popup(i8*, i8*, i8*, i32) #1

declare void @gimp_extension_enable() #1

declare %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, void (i8*)*) #1

declare i32 @g_str_hash(i8*) #1

declare i32 @g_str_equal(i8*, i8*) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_gradient_data_free(%struct.GimpGradientData* %data) #0 {
entry:
  %data.addr = alloca %struct.GimpGradientData*, align 8
  store %struct.GimpGradientData* %data, %struct.GimpGradientData** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.GimpGradientData*, %struct.GimpGradientData** %data.addr, align 8
  %1 = bitcast %struct.GimpGradientData* %0 to i8*
  call void @g_slice_free1(i64 64, i8* %1)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

declare noalias i8* @g_slice_alloc0(i64) #1

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #1

declare void @gimp_uninstall_temp_proc(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_gradient_select_destroy(i8* %gradient_callback) #0 {
entry:
  %gradient_callback.addr = alloca i8*, align 8
  %gradient_data = alloca %struct.GimpGradientData*, align 8
  store i8* %gradient_callback, i8** %gradient_callback.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %gradient_callback.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_gradient_select_destroy, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GHashTable*, %struct._GHashTable** @gimp_gradient_select_ht, align 8
  %cmp2 = icmp ne %struct._GHashTable* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_gradient_select_destroy, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load %struct._GHashTable*, %struct._GHashTable** @gimp_gradient_select_ht, align 8
  %3 = load i8*, i8** %gradient_callback.addr, align 8
  %call = call i8* @g_hash_table_lookup(%struct._GHashTable* %2, i8* %3)
  %4 = bitcast i8* %call to %struct.GimpGradientData*
  store %struct.GimpGradientData* %4, %struct.GimpGradientData** %gradient_data, align 8
  %5 = load %struct.GimpGradientData*, %struct.GimpGradientData** %gradient_data, align 8
  %tobool = icmp ne %struct.GimpGradientData* %5, null
  br i1 %tobool, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %do.end.6
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i32 0, i32 0))
  br label %return

if.end.8:                                         ; preds = %do.end.6
  %6 = load %struct.GimpGradientData*, %struct.GimpGradientData** %gradient_data, align 8
  %idle_id = getelementptr inbounds %struct.GimpGradientData, %struct.GimpGradientData* %6, i32 0, i32 1
  %7 = load i32, i32* %idle_id, align 4
  %tobool9 = icmp ne i32 %7, 0
  br i1 %tobool9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end.8
  %8 = load %struct.GimpGradientData*, %struct.GimpGradientData** %gradient_data, align 8
  %idle_id11 = getelementptr inbounds %struct.GimpGradientData, %struct.GimpGradientData* %8, i32 0, i32 1
  %9 = load i32, i32* %idle_id11, align 4
  %call12 = call i32 @g_source_remove(i32 %9)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.end.8
  %10 = load %struct.GimpGradientData*, %struct.GimpGradientData** %gradient_data, align 8
  %gradient_name = getelementptr inbounds %struct.GimpGradientData, %struct.GimpGradientData* %10, i32 0, i32 2
  %11 = load i8*, i8** %gradient_name, align 8
  call void @g_free(i8* %11)
  %12 = load %struct.GimpGradientData*, %struct.GimpGradientData** %gradient_data, align 8
  %gradient_data14 = getelementptr inbounds %struct.GimpGradientData, %struct.GimpGradientData* %12, i32 0, i32 4
  %13 = load double*, double** %gradient_data14, align 8
  %14 = bitcast double* %13 to i8*
  call void @g_free(i8* %14)
  %15 = load %struct.GimpGradientData*, %struct.GimpGradientData** %gradient_data, align 8
  %gradient_callback15 = getelementptr inbounds %struct.GimpGradientData, %struct.GimpGradientData* %15, i32 0, i32 0
  %16 = load i8*, i8** %gradient_callback15, align 8
  %tobool16 = icmp ne i8* %16, null
  br i1 %tobool16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.end.13
  %17 = load %struct.GimpGradientData*, %struct.GimpGradientData** %gradient_data, align 8
  %gradient_callback18 = getelementptr inbounds %struct.GimpGradientData, %struct.GimpGradientData* %17, i32 0, i32 0
  %18 = load i8*, i8** %gradient_callback18, align 8
  %call19 = call i32 @gimp_gradients_close_popup(i8* %18)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %if.end.13
  %19 = load i8*, i8** %gradient_callback.addr, align 8
  call void @gimp_uninstall_temp_proc(i8* %19)
  %20 = load %struct._GHashTable*, %struct._GHashTable** @gimp_gradient_select_ht, align 8
  %21 = load i8*, i8** %gradient_callback.addr, align 8
  %call21 = call i32 @g_hash_table_remove(%struct._GHashTable* %20, i8* %21)
  br label %return

return:                                           ; preds = %if.end.20, %if.then.7, %if.else.4, %if.else
  ret void
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i32 @g_source_remove(i32) #1

declare i32 @gimp_gradients_close_popup(i8*) #1

declare i32 @g_hash_table_remove(%struct._GHashTable*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

declare void @g_slice_free1(i64, i8*) #1

declare noalias i8* @g_strdup(i8*) #1

declare noalias i8* @g_memdup(i8*, i32) #1

declare i32 @g_idle_add(i32 (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_temp_gradient_run_idle(%struct.GimpGradientData* %gradient_data) #0 {
entry:
  %gradient_data.addr = alloca %struct.GimpGradientData*, align 8
  %gradient_callback = alloca i8*, align 8
  store %struct.GimpGradientData* %gradient_data, %struct.GimpGradientData** %gradient_data.addr, align 8
  %0 = load %struct.GimpGradientData*, %struct.GimpGradientData** %gradient_data.addr, align 8
  %idle_id = getelementptr inbounds %struct.GimpGradientData, %struct.GimpGradientData* %0, i32 0, i32 1
  store i32 0, i32* %idle_id, align 4
  %1 = load %struct.GimpGradientData*, %struct.GimpGradientData** %gradient_data.addr, align 8
  %callback = getelementptr inbounds %struct.GimpGradientData, %struct.GimpGradientData* %1, i32 0, i32 5
  %2 = load void (i8*, i32, double*, i32, i8*)*, void (i8*, i32, double*, i32, i8*)** %callback, align 8
  %tobool = icmp ne void (i8*, i32, double*, i32, i8*)* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.GimpGradientData*, %struct.GimpGradientData** %gradient_data.addr, align 8
  %callback1 = getelementptr inbounds %struct.GimpGradientData, %struct.GimpGradientData* %3, i32 0, i32 5
  %4 = load void (i8*, i32, double*, i32, i8*)*, void (i8*, i32, double*, i32, i8*)** %callback1, align 8
  %5 = load %struct.GimpGradientData*, %struct.GimpGradientData** %gradient_data.addr, align 8
  %gradient_name = getelementptr inbounds %struct.GimpGradientData, %struct.GimpGradientData* %5, i32 0, i32 2
  %6 = load i8*, i8** %gradient_name, align 8
  %7 = load %struct.GimpGradientData*, %struct.GimpGradientData** %gradient_data.addr, align 8
  %width = getelementptr inbounds %struct.GimpGradientData, %struct.GimpGradientData* %7, i32 0, i32 3
  %8 = load i32, i32* %width, align 4
  %9 = load %struct.GimpGradientData*, %struct.GimpGradientData** %gradient_data.addr, align 8
  %gradient_data2 = getelementptr inbounds %struct.GimpGradientData, %struct.GimpGradientData* %9, i32 0, i32 4
  %10 = load double*, double** %gradient_data2, align 8
  %11 = load %struct.GimpGradientData*, %struct.GimpGradientData** %gradient_data.addr, align 8
  %closing = getelementptr inbounds %struct.GimpGradientData, %struct.GimpGradientData* %11, i32 0, i32 6
  %12 = load i32, i32* %closing, align 4
  %13 = load %struct.GimpGradientData*, %struct.GimpGradientData** %gradient_data.addr, align 8
  %data = getelementptr inbounds %struct.GimpGradientData, %struct.GimpGradientData* %13, i32 0, i32 7
  %14 = load i8*, i8** %data, align 8
  call void %4(i8* %6, i32 %8, double* %10, i32 %12, i8* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load %struct.GimpGradientData*, %struct.GimpGradientData** %gradient_data.addr, align 8
  %closing3 = getelementptr inbounds %struct.GimpGradientData, %struct.GimpGradientData* %15, i32 0, i32 6
  %16 = load i32, i32* %closing3, align 4
  %tobool4 = icmp ne i32 %16, 0
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %17 = load %struct.GimpGradientData*, %struct.GimpGradientData** %gradient_data.addr, align 8
  %gradient_callback6 = getelementptr inbounds %struct.GimpGradientData, %struct.GimpGradientData* %17, i32 0, i32 0
  %18 = load i8*, i8** %gradient_callback6, align 8
  store i8* %18, i8** %gradient_callback, align 8
  %19 = load %struct.GimpGradientData*, %struct.GimpGradientData** %gradient_data.addr, align 8
  %gradient_callback7 = getelementptr inbounds %struct.GimpGradientData, %struct.GimpGradientData* %19, i32 0, i32 0
  store i8* null, i8** %gradient_callback7, align 8
  %20 = load i8*, i8** %gradient_callback, align 8
  call void @gimp_gradient_select_destroy(i8* %20)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
