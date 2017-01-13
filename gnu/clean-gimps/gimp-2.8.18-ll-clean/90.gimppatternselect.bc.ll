; ModuleID = './libgimp/gimppatternselect.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpParamDef = type { i32, i8*, i8* }
%struct._GHashTable = type opaque
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct.GimpPatternData = type { i8*, i32, i8*, i32, i32, i32, i8*, void (i8*, i32, i32, i32, i8*, i32, i8*)*, i32, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_pattern_select_new.args = internal constant [7 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [4 x i8] c"str\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"String\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"mask width\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Pattern width\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"mask height\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Pattern heigth\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"mask bpp\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Pattern bytes per pixel\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"mask len\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Length of pattern mask data\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"mask data\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"The pattern mask data\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"dialog status\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"If the dialog was closing [0 = No, 1 = Yes]\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"Temporary pattern popup callback procedure\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@gimp_pattern_select_ht = internal global %struct._GHashTable* null, align 8
@.str.16 = private unnamed_addr constant [8 x i8] c"LibGimp\00", align 1
@__func__.gimp_pattern_select_destroy = private unnamed_addr constant [28 x i8] c"gimp_pattern_select_destroy\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"pattern_callback != NULL\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"gimp_pattern_select_ht != NULL\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"Can't find internal pattern data\00", align 1
@gimp_temp_pattern_run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i8* @gimp_pattern_select_new(i8* %title, i8* %pattern_name, void (i8*, i32, i32, i32, i8*, i32, i8*)* %callback, i8* %data) #0 {
entry:
  %retval = alloca i8*, align 8
  %title.addr = alloca i8*, align 8
  %pattern_name.addr = alloca i8*, align 8
  %callback.addr = alloca void (i8*, i32, i32, i32, i8*, i32, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %pattern_callback = alloca i8*, align 8
  %pattern_data = alloca %struct.GimpPatternData*, align 8
  store i8* %title, i8** %title.addr, align 8
  store i8* %pattern_name, i8** %pattern_name.addr, align 8
  store void (i8*, i32, i32, i32, i8*, i32, i8*)* %callback, void (i8*, i32, i32, i32, i8*, i32, i8*)** %callback.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %call = call i8* @gimp_procedural_db_temp_name()
  store i8* %call, i8** %pattern_callback, align 8
  %0 = load i8*, i8** %pattern_callback, align 8
  call void @gimp_install_temp_proc(i8* %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0), i32 3, i32 7, i32 0, %struct._GimpParamDef* getelementptr inbounds ([7 x %struct._GimpParamDef], [7 x %struct._GimpParamDef]* @gimp_pattern_select_new.args, i32 0, i32 0), %struct._GimpParamDef* null, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @gimp_temp_pattern_run)
  %1 = load i8*, i8** %pattern_callback, align 8
  %2 = load i8*, i8** %title.addr, align 8
  %3 = load i8*, i8** %pattern_name.addr, align 8
  %call1 = call i32 @gimp_patterns_popup(i8* %1, i8* %2, i8* %3)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  call void @gimp_extension_enable()
  %4 = load %struct._GHashTable*, %struct._GHashTable** @gimp_pattern_select_ht, align 8
  %tobool2 = icmp ne %struct._GHashTable* %4, null
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  %call4 = call %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal, void (i8*)* @g_free, void (i8*)* bitcast (void (%struct.GimpPatternData*)* @gimp_pattern_data_free to void (i8*)*))
  store %struct._GHashTable* %call4, %struct._GHashTable** @gimp_pattern_select_ht, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %call5 = call noalias i8* @g_slice_alloc0(i64 72)
  %5 = bitcast i8* %call5 to %struct.GimpPatternData*
  store %struct.GimpPatternData* %5, %struct.GimpPatternData** %pattern_data, align 8
  %6 = load i8*, i8** %pattern_callback, align 8
  %7 = load %struct.GimpPatternData*, %struct.GimpPatternData** %pattern_data, align 8
  %pattern_callback6 = getelementptr inbounds %struct.GimpPatternData, %struct.GimpPatternData* %7, i32 0, i32 0
  store i8* %6, i8** %pattern_callback6, align 8
  %8 = load void (i8*, i32, i32, i32, i8*, i32, i8*)*, void (i8*, i32, i32, i32, i8*, i32, i8*)** %callback.addr, align 8
  %9 = load %struct.GimpPatternData*, %struct.GimpPatternData** %pattern_data, align 8
  %callback7 = getelementptr inbounds %struct.GimpPatternData, %struct.GimpPatternData* %9, i32 0, i32 7
  store void (i8*, i32, i32, i32, i8*, i32, i8*)* %8, void (i8*, i32, i32, i32, i8*, i32, i8*)** %callback7, align 8
  %10 = load i8*, i8** %data.addr, align 8
  %11 = load %struct.GimpPatternData*, %struct.GimpPatternData** %pattern_data, align 8
  %data8 = getelementptr inbounds %struct.GimpPatternData, %struct.GimpPatternData* %11, i32 0, i32 9
  store i8* %10, i8** %data8, align 8
  %12 = load %struct._GHashTable*, %struct._GHashTable** @gimp_pattern_select_ht, align 8
  %13 = load i8*, i8** %pattern_callback, align 8
  %14 = load %struct.GimpPatternData*, %struct.GimpPatternData** %pattern_data, align 8
  %15 = bitcast %struct.GimpPatternData* %14 to i8*
  %call9 = call i32 @g_hash_table_insert(%struct._GHashTable* %12, i8* %13, i8* %15)
  %16 = load i8*, i8** %pattern_callback, align 8
  store i8* %16, i8** %retval
  br label %return

if.end.10:                                        ; preds = %entry
  %17 = load i8*, i8** %pattern_callback, align 8
  call void @gimp_uninstall_temp_proc(i8* %17)
  %18 = load i8*, i8** %pattern_callback, align 8
  call void @g_free(i8* %18)
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.end
  %19 = load i8*, i8** %retval
  ret i8* %19
}

declare i8* @gimp_procedural_db_temp_name() #1

declare void @gimp_install_temp_proc(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, %struct._GimpParamDef*, %struct._GimpParamDef*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_temp_pattern_run(i8* %name, i32 %nparams, %struct._GimpParam* %param, i32* %nreturn_vals, %struct._GimpParam** %return_vals) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %nparams.addr = alloca i32, align 4
  %param.addr = alloca %struct._GimpParam*, align 8
  %nreturn_vals.addr = alloca i32*, align 8
  %return_vals.addr = alloca %struct._GimpParam**, align 8
  %pattern_data = alloca %struct.GimpPatternData*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  %0 = load %struct._GHashTable*, %struct._GHashTable** @gimp_pattern_select_ht, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %call = call i8* @g_hash_table_lookup(%struct._GHashTable* %0, i8* %1)
  %2 = bitcast i8* %call to %struct.GimpPatternData*
  store %struct.GimpPatternData* %2, %struct.GimpPatternData** %pattern_data, align 8
  %3 = load %struct.GimpPatternData*, %struct.GimpPatternData** %pattern_data, align 8
  %tobool = icmp ne %struct.GimpPatternData* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end.25

if.else:                                          ; preds = %entry
  %4 = load %struct.GimpPatternData*, %struct.GimpPatternData** %pattern_data, align 8
  %pattern_name = getelementptr inbounds %struct.GimpPatternData, %struct.GimpPatternData* %4, i32 0, i32 2
  %5 = load i8*, i8** %pattern_name, align 8
  call void @g_free(i8* %5)
  %6 = load %struct.GimpPatternData*, %struct.GimpPatternData** %pattern_data, align 8
  %pattern_mask_data = getelementptr inbounds %struct.GimpPatternData, %struct.GimpPatternData* %6, i32 0, i32 6
  %7 = load i8*, i8** %pattern_mask_data, align 8
  call void @g_free(i8* %7)
  %8 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %8, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_string = bitcast %union._GimpParamData* %data to i8**
  %9 = load i8*, i8** %d_string, align 8
  %call1 = call noalias i8* @g_strdup(i8* %9)
  %10 = load %struct.GimpPatternData*, %struct.GimpPatternData** %pattern_data, align 8
  %pattern_name2 = getelementptr inbounds %struct.GimpPatternData, %struct.GimpPatternData* %10, i32 0, i32 2
  store i8* %call1, i8** %pattern_name2, align 8
  %11 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx3 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %11, i64 1
  %data4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx3, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data4 to i32*
  %12 = load i32, i32* %d_int32, align 4
  %13 = load %struct.GimpPatternData*, %struct.GimpPatternData** %pattern_data, align 8
  %width = getelementptr inbounds %struct.GimpPatternData, %struct.GimpPatternData* %13, i32 0, i32 3
  store i32 %12, i32* %width, align 4
  %14 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %14, i64 2
  %data6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx5, i32 0, i32 1
  %d_int327 = bitcast %union._GimpParamData* %data6 to i32*
  %15 = load i32, i32* %d_int327, align 4
  %16 = load %struct.GimpPatternData*, %struct.GimpPatternData** %pattern_data, align 8
  %height = getelementptr inbounds %struct.GimpPatternData, %struct.GimpPatternData* %16, i32 0, i32 4
  store i32 %15, i32* %height, align 4
  %17 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx8 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %17, i64 3
  %data9 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx8, i32 0, i32 1
  %d_int3210 = bitcast %union._GimpParamData* %data9 to i32*
  %18 = load i32, i32* %d_int3210, align 4
  %19 = load %struct.GimpPatternData*, %struct.GimpPatternData** %pattern_data, align 8
  %bytes = getelementptr inbounds %struct.GimpPatternData, %struct.GimpPatternData* %19, i32 0, i32 5
  store i32 %18, i32* %bytes, align 4
  %20 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %20, i64 5
  %data12 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx11, i32 0, i32 1
  %d_int8array = bitcast %union._GimpParamData* %data12 to i8**
  %21 = load i8*, i8** %d_int8array, align 8
  %22 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx13 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %22, i64 4
  %data14 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx13, i32 0, i32 1
  %d_int3215 = bitcast %union._GimpParamData* %data14 to i32*
  %23 = load i32, i32* %d_int3215, align 4
  %call16 = call noalias i8* @g_memdup(i8* %21, i32 %23)
  %24 = load %struct.GimpPatternData*, %struct.GimpPatternData** %pattern_data, align 8
  %pattern_mask_data17 = getelementptr inbounds %struct.GimpPatternData, %struct.GimpPatternData* %24, i32 0, i32 6
  store i8* %call16, i8** %pattern_mask_data17, align 8
  %25 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx18 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %25, i64 6
  %data19 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx18, i32 0, i32 1
  %d_int3220 = bitcast %union._GimpParamData* %data19 to i32*
  %26 = load i32, i32* %d_int3220, align 4
  %27 = load %struct.GimpPatternData*, %struct.GimpPatternData** %pattern_data, align 8
  %closing = getelementptr inbounds %struct.GimpPatternData, %struct.GimpPatternData* %27, i32 0, i32 8
  store i32 %26, i32* %closing, align 4
  %28 = load %struct.GimpPatternData*, %struct.GimpPatternData** %pattern_data, align 8
  %idle_id = getelementptr inbounds %struct.GimpPatternData, %struct.GimpPatternData* %28, i32 0, i32 1
  %29 = load i32, i32* %idle_id, align 4
  %tobool21 = icmp ne i32 %29, 0
  br i1 %tobool21, label %if.end, label %if.then.22

if.then.22:                                       ; preds = %if.else
  %30 = load %struct.GimpPatternData*, %struct.GimpPatternData** %pattern_data, align 8
  %31 = bitcast %struct.GimpPatternData* %30 to i8*
  %call23 = call i32 @g_idle_add(i32 (i8*)* bitcast (i32 (%struct.GimpPatternData*)* @gimp_temp_pattern_run_idle to i32 (i8*)*), i8* %31)
  %32 = load %struct.GimpPatternData*, %struct.GimpPatternData** %pattern_data, align 8
  %idle_id24 = getelementptr inbounds %struct.GimpPatternData, %struct.GimpPatternData* %32, i32 0, i32 1
  store i32 %call23, i32* %idle_id24, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.22, %if.else
  br label %if.end.25

if.end.25:                                        ; preds = %if.end, %if.then
  %33 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %33, align 4
  %34 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @gimp_temp_pattern_run.values, i32 0, i32 0), %struct._GimpParam** %34, align 8
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @gimp_temp_pattern_run.values, i32 0, i64 0, i32 0), align 4
  store i32 3, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @gimp_temp_pattern_run.values, i32 0, i64 0, i32 1) to i32*), align 4
  ret void
}

declare i32 @gimp_patterns_popup(i8*, i8*, i8*) #1

declare void @gimp_extension_enable() #1

declare %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, void (i8*)*) #1

declare i32 @g_str_hash(i8*) #1

declare i32 @g_str_equal(i8*, i8*) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_pattern_data_free(%struct.GimpPatternData* %data) #0 {
entry:
  %data.addr = alloca %struct.GimpPatternData*, align 8
  store %struct.GimpPatternData* %data, %struct.GimpPatternData** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.GimpPatternData*, %struct.GimpPatternData** %data.addr, align 8
  %1 = bitcast %struct.GimpPatternData* %0 to i8*
  call void @g_slice_free1(i64 72, i8* %1)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

declare noalias i8* @g_slice_alloc0(i64) #1

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #1

declare void @gimp_uninstall_temp_proc(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_pattern_select_destroy(i8* %pattern_callback) #0 {
entry:
  %pattern_callback.addr = alloca i8*, align 8
  %pattern_data = alloca %struct.GimpPatternData*, align 8
  store i8* %pattern_callback, i8** %pattern_callback.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %pattern_callback.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_pattern_select_destroy, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GHashTable*, %struct._GHashTable** @gimp_pattern_select_ht, align 8
  %cmp2 = icmp ne %struct._GHashTable* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_pattern_select_destroy, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load %struct._GHashTable*, %struct._GHashTable** @gimp_pattern_select_ht, align 8
  %3 = load i8*, i8** %pattern_callback.addr, align 8
  %call = call i8* @g_hash_table_lookup(%struct._GHashTable* %2, i8* %3)
  %4 = bitcast i8* %call to %struct.GimpPatternData*
  store %struct.GimpPatternData* %4, %struct.GimpPatternData** %pattern_data, align 8
  %5 = load %struct.GimpPatternData*, %struct.GimpPatternData** %pattern_data, align 8
  %tobool = icmp ne %struct.GimpPatternData* %5, null
  br i1 %tobool, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %do.end.6
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i32 0, i32 0))
  br label %return

if.end.8:                                         ; preds = %do.end.6
  %6 = load %struct.GimpPatternData*, %struct.GimpPatternData** %pattern_data, align 8
  %idle_id = getelementptr inbounds %struct.GimpPatternData, %struct.GimpPatternData* %6, i32 0, i32 1
  %7 = load i32, i32* %idle_id, align 4
  %tobool9 = icmp ne i32 %7, 0
  br i1 %tobool9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end.8
  %8 = load %struct.GimpPatternData*, %struct.GimpPatternData** %pattern_data, align 8
  %idle_id11 = getelementptr inbounds %struct.GimpPatternData, %struct.GimpPatternData* %8, i32 0, i32 1
  %9 = load i32, i32* %idle_id11, align 4
  %call12 = call i32 @g_source_remove(i32 %9)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.end.8
  %10 = load %struct.GimpPatternData*, %struct.GimpPatternData** %pattern_data, align 8
  %pattern_name = getelementptr inbounds %struct.GimpPatternData, %struct.GimpPatternData* %10, i32 0, i32 2
  %11 = load i8*, i8** %pattern_name, align 8
  call void @g_free(i8* %11)
  %12 = load %struct.GimpPatternData*, %struct.GimpPatternData** %pattern_data, align 8
  %pattern_mask_data = getelementptr inbounds %struct.GimpPatternData, %struct.GimpPatternData* %12, i32 0, i32 6
  %13 = load i8*, i8** %pattern_mask_data, align 8
  call void @g_free(i8* %13)
  %14 = load %struct.GimpPatternData*, %struct.GimpPatternData** %pattern_data, align 8
  %pattern_callback14 = getelementptr inbounds %struct.GimpPatternData, %struct.GimpPatternData* %14, i32 0, i32 0
  %15 = load i8*, i8** %pattern_callback14, align 8
  %tobool15 = icmp ne i8* %15, null
  br i1 %tobool15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.end.13
  %16 = load %struct.GimpPatternData*, %struct.GimpPatternData** %pattern_data, align 8
  %pattern_callback17 = getelementptr inbounds %struct.GimpPatternData, %struct.GimpPatternData* %16, i32 0, i32 0
  %17 = load i8*, i8** %pattern_callback17, align 8
  %call18 = call i32 @gimp_patterns_close_popup(i8* %17)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %if.end.13
  %18 = load i8*, i8** %pattern_callback.addr, align 8
  call void @gimp_uninstall_temp_proc(i8* %18)
  %19 = load %struct._GHashTable*, %struct._GHashTable** @gimp_pattern_select_ht, align 8
  %20 = load i8*, i8** %pattern_callback.addr, align 8
  %call20 = call i32 @g_hash_table_remove(%struct._GHashTable* %19, i8* %20)
  br label %return

return:                                           ; preds = %if.end.19, %if.then.7, %if.else.4, %if.else
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
  call void @g_logv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i32 @g_source_remove(i32) #1

declare i32 @gimp_patterns_close_popup(i8*) #1

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
define internal i32 @gimp_temp_pattern_run_idle(%struct.GimpPatternData* %pattern_data) #0 {
entry:
  %pattern_data.addr = alloca %struct.GimpPatternData*, align 8
  %pattern_callback = alloca i8*, align 8
  store %struct.GimpPatternData* %pattern_data, %struct.GimpPatternData** %pattern_data.addr, align 8
  %0 = load %struct.GimpPatternData*, %struct.GimpPatternData** %pattern_data.addr, align 8
  %idle_id = getelementptr inbounds %struct.GimpPatternData, %struct.GimpPatternData* %0, i32 0, i32 1
  store i32 0, i32* %idle_id, align 4
  %1 = load %struct.GimpPatternData*, %struct.GimpPatternData** %pattern_data.addr, align 8
  %callback = getelementptr inbounds %struct.GimpPatternData, %struct.GimpPatternData* %1, i32 0, i32 7
  %2 = load void (i8*, i32, i32, i32, i8*, i32, i8*)*, void (i8*, i32, i32, i32, i8*, i32, i8*)** %callback, align 8
  %tobool = icmp ne void (i8*, i32, i32, i32, i8*, i32, i8*)* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.GimpPatternData*, %struct.GimpPatternData** %pattern_data.addr, align 8
  %callback1 = getelementptr inbounds %struct.GimpPatternData, %struct.GimpPatternData* %3, i32 0, i32 7
  %4 = load void (i8*, i32, i32, i32, i8*, i32, i8*)*, void (i8*, i32, i32, i32, i8*, i32, i8*)** %callback1, align 8
  %5 = load %struct.GimpPatternData*, %struct.GimpPatternData** %pattern_data.addr, align 8
  %pattern_name = getelementptr inbounds %struct.GimpPatternData, %struct.GimpPatternData* %5, i32 0, i32 2
  %6 = load i8*, i8** %pattern_name, align 8
  %7 = load %struct.GimpPatternData*, %struct.GimpPatternData** %pattern_data.addr, align 8
  %width = getelementptr inbounds %struct.GimpPatternData, %struct.GimpPatternData* %7, i32 0, i32 3
  %8 = load i32, i32* %width, align 4
  %9 = load %struct.GimpPatternData*, %struct.GimpPatternData** %pattern_data.addr, align 8
  %height = getelementptr inbounds %struct.GimpPatternData, %struct.GimpPatternData* %9, i32 0, i32 4
  %10 = load i32, i32* %height, align 4
  %11 = load %struct.GimpPatternData*, %struct.GimpPatternData** %pattern_data.addr, align 8
  %bytes = getelementptr inbounds %struct.GimpPatternData, %struct.GimpPatternData* %11, i32 0, i32 5
  %12 = load i32, i32* %bytes, align 4
  %13 = load %struct.GimpPatternData*, %struct.GimpPatternData** %pattern_data.addr, align 8
  %pattern_mask_data = getelementptr inbounds %struct.GimpPatternData, %struct.GimpPatternData* %13, i32 0, i32 6
  %14 = load i8*, i8** %pattern_mask_data, align 8
  %15 = load %struct.GimpPatternData*, %struct.GimpPatternData** %pattern_data.addr, align 8
  %closing = getelementptr inbounds %struct.GimpPatternData, %struct.GimpPatternData* %15, i32 0, i32 8
  %16 = load i32, i32* %closing, align 4
  %17 = load %struct.GimpPatternData*, %struct.GimpPatternData** %pattern_data.addr, align 8
  %data = getelementptr inbounds %struct.GimpPatternData, %struct.GimpPatternData* %17, i32 0, i32 9
  %18 = load i8*, i8** %data, align 8
  call void %4(i8* %6, i32 %8, i32 %10, i32 %12, i8* %14, i32 %16, i8* %18)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %19 = load %struct.GimpPatternData*, %struct.GimpPatternData** %pattern_data.addr, align 8
  %closing2 = getelementptr inbounds %struct.GimpPatternData, %struct.GimpPatternData* %19, i32 0, i32 8
  %20 = load i32, i32* %closing2, align 4
  %tobool3 = icmp ne i32 %20, 0
  br i1 %tobool3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %if.end
  %21 = load %struct.GimpPatternData*, %struct.GimpPatternData** %pattern_data.addr, align 8
  %pattern_callback5 = getelementptr inbounds %struct.GimpPatternData, %struct.GimpPatternData* %21, i32 0, i32 0
  %22 = load i8*, i8** %pattern_callback5, align 8
  store i8* %22, i8** %pattern_callback, align 8
  %23 = load %struct.GimpPatternData*, %struct.GimpPatternData** %pattern_data.addr, align 8
  %pattern_callback6 = getelementptr inbounds %struct.GimpPatternData, %struct.GimpPatternData* %23, i32 0, i32 0
  store i8* null, i8** %pattern_callback6, align 8
  %24 = load i8*, i8** %pattern_callback, align 8
  call void @gimp_pattern_select_destroy(i8* %24)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %if.end
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
