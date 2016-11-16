; ModuleID = './libgimp/gimpprogress.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpParamDef = type { i32, i8*, i8* }
%struct._GHashTable = type opaque
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpProgressVtable = type { void (i8*, i32, i8*)*, void (i8*)*, void (i8*, i8*)*, void (double, i8*)*, void (i8*)*, i32 (i8*)*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()* }
%struct.GimpProgressData = type { i8*, %struct._GimpProgressVtable, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [8 x i8] c"LibGimp\00", align 1
@__func__.gimp_progress_install = private unnamed_addr constant [22 x i8] c"gimp_progress_install\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"start_callback != NULL\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"end_callback != NULL\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"text_callback != NULL\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"value_callback != NULL\00", align 1
@gimp_progress_install_vtable.args = internal constant [3 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0) }], align 16
@.str.5 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@gimp_progress_install_vtable.values = internal constant [1 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0) }], align 16
@__func__.gimp_progress_install_vtable = private unnamed_addr constant [29 x i8] c"gimp_progress_install_vtable\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"vtable != NULL\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"vtable->start != NULL\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"vtable->end != NULL\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"vtable->set_text != NULL\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"vtable->set_value != NULL\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"Temporary progress callback procedure\00", align 1
@gimp_progress_ht = internal global %struct._GHashTable* null, align 8
@__func__.gimp_progress_uninstall = private unnamed_addr constant [24 x i8] c"gimp_progress_uninstall\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"progress_callback != NULL\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"gimp_progress_ht != NULL\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"Can't find internal progress data\00", align 1
@gimp_progress_current = internal global double 0.000000e+00, align 8
@__func__.gimp_progress_init_printf = private unnamed_addr constant [26 x i8] c"gimp_progress_init_printf\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"format != NULL\00", align 1
@__func__.gimp_progress_set_text_printf = private unnamed_addr constant [30 x i8] c"gimp_progress_set_text_printf\00", align 1
@gimp_temp_progress_run.values = internal global [2 x %struct._GimpParam] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i8* @gimp_progress_install(void (i8*, i32, i8*)* %start_callback, void (i8*)* %end_callback, void (i8*, i8*)* %text_callback, void (double, i8*)* %value_callback, i8* %user_data) #0 {
entry:
  %retval = alloca i8*, align 8
  %start_callback.addr = alloca void (i8*, i32, i8*)*, align 8
  %end_callback.addr = alloca void (i8*)*, align 8
  %text_callback.addr = alloca void (i8*, i8*)*, align 8
  %value_callback.addr = alloca void (double, i8*)*, align 8
  %user_data.addr = alloca i8*, align 8
  %vtable = alloca %struct._GimpProgressVtable, align 8
  store void (i8*, i32, i8*)* %start_callback, void (i8*, i32, i8*)** %start_callback.addr, align 8
  store void (i8*)* %end_callback, void (i8*)** %end_callback.addr, align 8
  store void (i8*, i8*)* %text_callback, void (i8*, i8*)** %text_callback.addr, align 8
  store void (double, i8*)* %value_callback, void (double, i8*)** %value_callback.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = bitcast %struct._GimpProgressVtable* %vtable to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 112, i32 8, i1 false)
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** %start_callback.addr, align 8
  %cmp = icmp ne void (i8*, i32, i8*)* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_progress_install, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %2 = load void (i8*)*, void (i8*)** %end_callback.addr, align 8
  %cmp2 = icmp ne void (i8*)* %2, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_progress_install, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %3 = load void (i8*, i8*)*, void (i8*, i8*)** %text_callback.addr, align 8
  %cmp8 = icmp ne void (i8*, i8*)* %3, null
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %do.body.7
  br label %if.end.11

if.else.10:                                       ; preds = %do.body.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_progress_install, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  br label %do.body.13

do.body.13:                                       ; preds = %do.end.12
  %4 = load void (double, i8*)*, void (double, i8*)** %value_callback.addr, align 8
  %cmp14 = icmp ne void (double, i8*)* %4, null
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.13
  br label %if.end.17

if.else.16:                                       ; preds = %do.body.13
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_progress_install, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %5 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** %start_callback.addr, align 8
  %start = getelementptr inbounds %struct._GimpProgressVtable, %struct._GimpProgressVtable* %vtable, i32 0, i32 0
  store void (i8*, i32, i8*)* %5, void (i8*, i32, i8*)** %start, align 8
  %6 = load void (i8*)*, void (i8*)** %end_callback.addr, align 8
  %end = getelementptr inbounds %struct._GimpProgressVtable, %struct._GimpProgressVtable* %vtable, i32 0, i32 1
  store void (i8*)* %6, void (i8*)** %end, align 8
  %7 = load void (i8*, i8*)*, void (i8*, i8*)** %text_callback.addr, align 8
  %set_text = getelementptr inbounds %struct._GimpProgressVtable, %struct._GimpProgressVtable* %vtable, i32 0, i32 2
  store void (i8*, i8*)* %7, void (i8*, i8*)** %set_text, align 8
  %8 = load void (double, i8*)*, void (double, i8*)** %value_callback.addr, align 8
  %set_value = getelementptr inbounds %struct._GimpProgressVtable, %struct._GimpProgressVtable* %vtable, i32 0, i32 3
  store void (double, i8*)* %8, void (double, i8*)** %set_value, align 8
  %9 = load i8*, i8** %user_data.addr, align 8
  %call = call i8* @gimp_progress_install_vtable(%struct._GimpProgressVtable* %vtable, i8* %9)
  store i8* %call, i8** %retval
  br label %return

return:                                           ; preds = %do.end.18, %if.else.16, %if.else.10, %if.else.4, %if.else
  %10 = load i8*, i8** %retval
  ret i8* %10
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define i8* @gimp_progress_install_vtable(%struct._GimpProgressVtable* %vtable, i8* %user_data) #0 {
entry:
  %retval = alloca i8*, align 8
  %vtable.addr = alloca %struct._GimpProgressVtable*, align 8
  %user_data.addr = alloca i8*, align 8
  %progress_callback = alloca i8*, align 8
  %progress_data = alloca %struct.GimpProgressData*, align 8
  store %struct._GimpProgressVtable* %vtable, %struct._GimpProgressVtable** %vtable.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpProgressVtable*, %struct._GimpProgressVtable** %vtable.addr, align 8
  %cmp = icmp ne %struct._GimpProgressVtable* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_progress_install_vtable, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpProgressVtable*, %struct._GimpProgressVtable** %vtable.addr, align 8
  %start = getelementptr inbounds %struct._GimpProgressVtable, %struct._GimpProgressVtable* %1, i32 0, i32 0
  %2 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** %start, align 8
  %cmp2 = icmp ne void (i8*, i32, i8*)* %2, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_progress_install_vtable, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %3 = load %struct._GimpProgressVtable*, %struct._GimpProgressVtable** %vtable.addr, align 8
  %end = getelementptr inbounds %struct._GimpProgressVtable, %struct._GimpProgressVtable* %3, i32 0, i32 1
  %4 = load void (i8*)*, void (i8*)** %end, align 8
  %cmp8 = icmp ne void (i8*)* %4, null
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %do.body.7
  br label %if.end.11

if.else.10:                                       ; preds = %do.body.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_progress_install_vtable, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  br label %do.body.13

do.body.13:                                       ; preds = %do.end.12
  %5 = load %struct._GimpProgressVtable*, %struct._GimpProgressVtable** %vtable.addr, align 8
  %set_text = getelementptr inbounds %struct._GimpProgressVtable, %struct._GimpProgressVtable* %5, i32 0, i32 2
  %6 = load void (i8*, i8*)*, void (i8*, i8*)** %set_text, align 8
  %cmp14 = icmp ne void (i8*, i8*)* %6, null
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.13
  br label %if.end.17

if.else.16:                                       ; preds = %do.body.13
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_progress_install_vtable, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.18
  %7 = load %struct._GimpProgressVtable*, %struct._GimpProgressVtable** %vtable.addr, align 8
  %set_value = getelementptr inbounds %struct._GimpProgressVtable, %struct._GimpProgressVtable* %7, i32 0, i32 3
  %8 = load void (double, i8*)*, void (double, i8*)** %set_value, align 8
  %cmp20 = icmp ne void (double, i8*)* %8, null
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %do.body.19
  br label %if.end.23

if.else.22:                                       ; preds = %do.body.19
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_progress_install_vtable, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.23:                                        ; preds = %if.then.21
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  %call = call i8* @gimp_procedural_db_temp_name()
  store i8* %call, i8** %progress_callback, align 8
  %9 = load i8*, i8** %progress_callback, align 8
  call void @gimp_install_temp_proc(i8* %9, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0), i32 3, i32 3, i32 1, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @gimp_progress_install_vtable.args, i32 0, i32 0), %struct._GimpParamDef* getelementptr inbounds ([1 x %struct._GimpParamDef], [1 x %struct._GimpParamDef]* @gimp_progress_install_vtable.values, i32 0, i32 0), void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @gimp_temp_progress_run)
  %10 = load i8*, i8** %progress_callback, align 8
  %call25 = call i32 @_gimp_progress_install(i8* %10)
  %tobool = icmp ne i32 %call25, 0
  br i1 %tobool, label %if.then.26, label %if.end.50

if.then.26:                                       ; preds = %do.end.24
  call void @gimp_extension_enable()
  %11 = load %struct._GHashTable*, %struct._GHashTable** @gimp_progress_ht, align 8
  %tobool27 = icmp ne %struct._GHashTable* %11, null
  br i1 %tobool27, label %if.end.30, label %if.then.28

if.then.28:                                       ; preds = %if.then.26
  %call29 = call %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal, void (i8*)* @g_free, void (i8*)* bitcast (void (%struct.GimpProgressData*)* @gimp_progress_data_free to void (i8*)*))
  store %struct._GHashTable* %call29, %struct._GHashTable** @gimp_progress_ht, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %if.then.26
  %call31 = call noalias i8* @g_slice_alloc0(i64 128)
  %12 = bitcast i8* %call31 to %struct.GimpProgressData*
  store %struct.GimpProgressData* %12, %struct.GimpProgressData** %progress_data, align 8
  %13 = load i8*, i8** %progress_callback, align 8
  %14 = load %struct.GimpProgressData*, %struct.GimpProgressData** %progress_data, align 8
  %progress_callback32 = getelementptr inbounds %struct.GimpProgressData, %struct.GimpProgressData* %14, i32 0, i32 0
  store i8* %13, i8** %progress_callback32, align 8
  %15 = load %struct._GimpProgressVtable*, %struct._GimpProgressVtable** %vtable.addr, align 8
  %start33 = getelementptr inbounds %struct._GimpProgressVtable, %struct._GimpProgressVtable* %15, i32 0, i32 0
  %16 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** %start33, align 8
  %17 = load %struct.GimpProgressData*, %struct.GimpProgressData** %progress_data, align 8
  %vtable34 = getelementptr inbounds %struct.GimpProgressData, %struct.GimpProgressData* %17, i32 0, i32 1
  %start35 = getelementptr inbounds %struct._GimpProgressVtable, %struct._GimpProgressVtable* %vtable34, i32 0, i32 0
  store void (i8*, i32, i8*)* %16, void (i8*, i32, i8*)** %start35, align 8
  %18 = load %struct._GimpProgressVtable*, %struct._GimpProgressVtable** %vtable.addr, align 8
  %end36 = getelementptr inbounds %struct._GimpProgressVtable, %struct._GimpProgressVtable* %18, i32 0, i32 1
  %19 = load void (i8*)*, void (i8*)** %end36, align 8
  %20 = load %struct.GimpProgressData*, %struct.GimpProgressData** %progress_data, align 8
  %vtable37 = getelementptr inbounds %struct.GimpProgressData, %struct.GimpProgressData* %20, i32 0, i32 1
  %end38 = getelementptr inbounds %struct._GimpProgressVtable, %struct._GimpProgressVtable* %vtable37, i32 0, i32 1
  store void (i8*)* %19, void (i8*)** %end38, align 8
  %21 = load %struct._GimpProgressVtable*, %struct._GimpProgressVtable** %vtable.addr, align 8
  %set_text39 = getelementptr inbounds %struct._GimpProgressVtable, %struct._GimpProgressVtable* %21, i32 0, i32 2
  %22 = load void (i8*, i8*)*, void (i8*, i8*)** %set_text39, align 8
  %23 = load %struct.GimpProgressData*, %struct.GimpProgressData** %progress_data, align 8
  %vtable40 = getelementptr inbounds %struct.GimpProgressData, %struct.GimpProgressData* %23, i32 0, i32 1
  %set_text41 = getelementptr inbounds %struct._GimpProgressVtable, %struct._GimpProgressVtable* %vtable40, i32 0, i32 2
  store void (i8*, i8*)* %22, void (i8*, i8*)** %set_text41, align 8
  %24 = load %struct._GimpProgressVtable*, %struct._GimpProgressVtable** %vtable.addr, align 8
  %set_value42 = getelementptr inbounds %struct._GimpProgressVtable, %struct._GimpProgressVtable* %24, i32 0, i32 3
  %25 = load void (double, i8*)*, void (double, i8*)** %set_value42, align 8
  %26 = load %struct.GimpProgressData*, %struct.GimpProgressData** %progress_data, align 8
  %vtable43 = getelementptr inbounds %struct.GimpProgressData, %struct.GimpProgressData* %26, i32 0, i32 1
  %set_value44 = getelementptr inbounds %struct._GimpProgressVtable, %struct._GimpProgressVtable* %vtable43, i32 0, i32 3
  store void (double, i8*)* %25, void (double, i8*)** %set_value44, align 8
  %27 = load %struct._GimpProgressVtable*, %struct._GimpProgressVtable** %vtable.addr, align 8
  %pulse = getelementptr inbounds %struct._GimpProgressVtable, %struct._GimpProgressVtable* %27, i32 0, i32 4
  %28 = load void (i8*)*, void (i8*)** %pulse, align 8
  %29 = load %struct.GimpProgressData*, %struct.GimpProgressData** %progress_data, align 8
  %vtable45 = getelementptr inbounds %struct.GimpProgressData, %struct.GimpProgressData* %29, i32 0, i32 1
  %pulse46 = getelementptr inbounds %struct._GimpProgressVtable, %struct._GimpProgressVtable* %vtable45, i32 0, i32 4
  store void (i8*)* %28, void (i8*)** %pulse46, align 8
  %30 = load %struct._GimpProgressVtable*, %struct._GimpProgressVtable** %vtable.addr, align 8
  %get_window = getelementptr inbounds %struct._GimpProgressVtable, %struct._GimpProgressVtable* %30, i32 0, i32 5
  %31 = load i32 (i8*)*, i32 (i8*)** %get_window, align 8
  %32 = load %struct.GimpProgressData*, %struct.GimpProgressData** %progress_data, align 8
  %vtable47 = getelementptr inbounds %struct.GimpProgressData, %struct.GimpProgressData* %32, i32 0, i32 1
  %get_window48 = getelementptr inbounds %struct._GimpProgressVtable, %struct._GimpProgressVtable* %vtable47, i32 0, i32 5
  store i32 (i8*)* %31, i32 (i8*)** %get_window48, align 8
  %33 = load i8*, i8** %user_data.addr, align 8
  %34 = load %struct.GimpProgressData*, %struct.GimpProgressData** %progress_data, align 8
  %data = getelementptr inbounds %struct.GimpProgressData, %struct.GimpProgressData* %34, i32 0, i32 2
  store i8* %33, i8** %data, align 8
  %35 = load %struct._GHashTable*, %struct._GHashTable** @gimp_progress_ht, align 8
  %36 = load i8*, i8** %progress_callback, align 8
  %37 = load %struct.GimpProgressData*, %struct.GimpProgressData** %progress_data, align 8
  %38 = bitcast %struct.GimpProgressData* %37 to i8*
  %call49 = call i32 @g_hash_table_insert(%struct._GHashTable* %35, i8* %36, i8* %38)
  %39 = load i8*, i8** %progress_callback, align 8
  store i8* %39, i8** %retval
  br label %return

if.end.50:                                        ; preds = %do.end.24
  %40 = load i8*, i8** %progress_callback, align 8
  call void @gimp_uninstall_temp_proc(i8* %40)
  %41 = load i8*, i8** %progress_callback, align 8
  call void @g_free(i8* %41)
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.50, %if.end.30, %if.else.22, %if.else.16, %if.else.10, %if.else.4, %if.else
  %42 = load i8*, i8** %retval
  ret i8* %42
}

declare i8* @gimp_procedural_db_temp_name() #2

declare void @gimp_install_temp_proc(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, %struct._GimpParamDef*, %struct._GimpParamDef*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)*) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_temp_progress_run(i8* %name, i32 %nparams, %struct._GimpParam* %param, i32* %nreturn_vals, %struct._GimpParam** %return_vals) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %nparams.addr = alloca i32, align 4
  %param.addr = alloca %struct._GimpParam*, align 8
  %nreturn_vals.addr = alloca i32*, align 8
  %return_vals.addr = alloca %struct._GimpParam**, align 8
  %progress_data = alloca %struct.GimpProgressData*, align 8
  %command = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  %0 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %0, align 4
  %1 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @gimp_temp_progress_run.values, i32 0, i32 0), %struct._GimpParam** %1, align 8
  store i32 21, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @gimp_temp_progress_run.values, i32 0, i64 0, i32 0), align 4
  store i32 3, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @gimp_temp_progress_run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %2 = load %struct._GHashTable*, %struct._GHashTable** @gimp_progress_ht, align 8
  %3 = load i8*, i8** %name.addr, align 8
  %call = call i8* @g_hash_table_lookup(%struct._GHashTable* %2, i8* %3)
  %4 = bitcast i8* %call to %struct.GimpProgressData*
  store %struct.GimpProgressData* %4, %struct.GimpProgressData** %progress_data, align 8
  %5 = load %struct.GimpProgressData*, %struct.GimpProgressData** %progress_data, align 8
  %tobool = icmp ne %struct.GimpProgressData* %5, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i32 0, i32 0))
  store i32 0, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @gimp_temp_progress_run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %if.end.43

if.else:                                          ; preds = %entry
  %6 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %6, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %7 = load i32, i32* %d_int32, align 4
  store i32 %7, i32* %command, align 4
  %8 = load i32, i32* %command, align 4
  switch i32 %8, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.6
    i32 2, label %sw.bb.9
    i32 3, label %sw.bb.15
    i32 4, label %sw.bb.21
    i32 5, label %sw.bb.32
  ]

sw.bb:                                            ; preds = %if.else
  %9 = load %struct.GimpProgressData*, %struct.GimpProgressData** %progress_data, align 8
  %vtable = getelementptr inbounds %struct.GimpProgressData, %struct.GimpProgressData* %9, i32 0, i32 1
  %start = getelementptr inbounds %struct._GimpProgressVtable, %struct._GimpProgressVtable* %vtable, i32 0, i32 0
  %10 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** %start, align 8
  %11 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %11, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_string = bitcast %union._GimpParamData* %data2 to i8**
  %12 = load i8*, i8** %d_string, align 8
  %13 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx3 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %13, i64 2
  %data4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx3, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data4 to double*
  %14 = load double, double* %d_float, align 8
  %cmp = fcmp une double %14, 0.000000e+00
  %conv = zext i1 %cmp to i32
  %15 = load %struct.GimpProgressData*, %struct.GimpProgressData** %progress_data, align 8
  %data5 = getelementptr inbounds %struct.GimpProgressData, %struct.GimpProgressData* %15, i32 0, i32 2
  %16 = load i8*, i8** %data5, align 8
  call void %10(i8* %12, i32 %conv, i8* %16)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.else
  %17 = load %struct.GimpProgressData*, %struct.GimpProgressData** %progress_data, align 8
  %vtable7 = getelementptr inbounds %struct.GimpProgressData, %struct.GimpProgressData* %17, i32 0, i32 1
  %end = getelementptr inbounds %struct._GimpProgressVtable, %struct._GimpProgressVtable* %vtable7, i32 0, i32 1
  %18 = load void (i8*)*, void (i8*)** %end, align 8
  %19 = load %struct.GimpProgressData*, %struct.GimpProgressData** %progress_data, align 8
  %data8 = getelementptr inbounds %struct.GimpProgressData, %struct.GimpProgressData* %19, i32 0, i32 2
  %20 = load i8*, i8** %data8, align 8
  call void %18(i8* %20)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %if.else
  %21 = load %struct.GimpProgressData*, %struct.GimpProgressData** %progress_data, align 8
  %vtable10 = getelementptr inbounds %struct.GimpProgressData, %struct.GimpProgressData* %21, i32 0, i32 1
  %set_text = getelementptr inbounds %struct._GimpProgressVtable, %struct._GimpProgressVtable* %vtable10, i32 0, i32 2
  %22 = load void (i8*, i8*)*, void (i8*, i8*)** %set_text, align 8
  %23 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %23, i64 1
  %data12 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx11, i32 0, i32 1
  %d_string13 = bitcast %union._GimpParamData* %data12 to i8**
  %24 = load i8*, i8** %d_string13, align 8
  %25 = load %struct.GimpProgressData*, %struct.GimpProgressData** %progress_data, align 8
  %data14 = getelementptr inbounds %struct.GimpProgressData, %struct.GimpProgressData* %25, i32 0, i32 2
  %26 = load i8*, i8** %data14, align 8
  call void %22(i8* %24, i8* %26)
  br label %sw.epilog

sw.bb.15:                                         ; preds = %if.else
  %27 = load %struct.GimpProgressData*, %struct.GimpProgressData** %progress_data, align 8
  %vtable16 = getelementptr inbounds %struct.GimpProgressData, %struct.GimpProgressData* %27, i32 0, i32 1
  %set_value = getelementptr inbounds %struct._GimpProgressVtable, %struct._GimpProgressVtable* %vtable16, i32 0, i32 3
  %28 = load void (double, i8*)*, void (double, i8*)** %set_value, align 8
  %29 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %29, i64 2
  %data18 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx17, i32 0, i32 1
  %d_float19 = bitcast %union._GimpParamData* %data18 to double*
  %30 = load double, double* %d_float19, align 8
  %31 = load %struct.GimpProgressData*, %struct.GimpProgressData** %progress_data, align 8
  %data20 = getelementptr inbounds %struct.GimpProgressData, %struct.GimpProgressData* %31, i32 0, i32 2
  %32 = load i8*, i8** %data20, align 8
  call void %28(double %30, i8* %32)
  br label %sw.epilog

sw.bb.21:                                         ; preds = %if.else
  %33 = load %struct.GimpProgressData*, %struct.GimpProgressData** %progress_data, align 8
  %vtable22 = getelementptr inbounds %struct.GimpProgressData, %struct.GimpProgressData* %33, i32 0, i32 1
  %pulse = getelementptr inbounds %struct._GimpProgressVtable, %struct._GimpProgressVtable* %vtable22, i32 0, i32 4
  %34 = load void (i8*)*, void (i8*)** %pulse, align 8
  %tobool23 = icmp ne void (i8*)* %34, null
  br i1 %tobool23, label %if.then.24, label %if.else.28

if.then.24:                                       ; preds = %sw.bb.21
  %35 = load %struct.GimpProgressData*, %struct.GimpProgressData** %progress_data, align 8
  %vtable25 = getelementptr inbounds %struct.GimpProgressData, %struct.GimpProgressData* %35, i32 0, i32 1
  %pulse26 = getelementptr inbounds %struct._GimpProgressVtable, %struct._GimpProgressVtable* %vtable25, i32 0, i32 4
  %36 = load void (i8*)*, void (i8*)** %pulse26, align 8
  %37 = load %struct.GimpProgressData*, %struct.GimpProgressData** %progress_data, align 8
  %data27 = getelementptr inbounds %struct.GimpProgressData, %struct.GimpProgressData* %37, i32 0, i32 2
  %38 = load i8*, i8** %data27, align 8
  call void %36(i8* %38)
  br label %if.end

if.else.28:                                       ; preds = %sw.bb.21
  %39 = load %struct.GimpProgressData*, %struct.GimpProgressData** %progress_data, align 8
  %vtable29 = getelementptr inbounds %struct.GimpProgressData, %struct.GimpProgressData* %39, i32 0, i32 1
  %set_value30 = getelementptr inbounds %struct._GimpProgressVtable, %struct._GimpProgressVtable* %vtable29, i32 0, i32 3
  %40 = load void (double, i8*)*, void (double, i8*)** %set_value30, align 8
  %41 = load %struct.GimpProgressData*, %struct.GimpProgressData** %progress_data, align 8
  %data31 = getelementptr inbounds %struct.GimpProgressData, %struct.GimpProgressData* %41, i32 0, i32 2
  %42 = load i8*, i8** %data31, align 8
  call void %40(double -1.000000e+00, i8* %42)
  br label %if.end

if.end:                                           ; preds = %if.else.28, %if.then.24
  br label %sw.epilog

sw.bb.32:                                         ; preds = %if.else
  %43 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %43, align 4
  store i32 3, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @gimp_temp_progress_run.values, i32 0, i64 1, i32 0), align 4
  %44 = load %struct.GimpProgressData*, %struct.GimpProgressData** %progress_data, align 8
  %vtable33 = getelementptr inbounds %struct.GimpProgressData, %struct.GimpProgressData* %44, i32 0, i32 1
  %get_window = getelementptr inbounds %struct._GimpProgressVtable, %struct._GimpProgressVtable* %vtable33, i32 0, i32 5
  %45 = load i32 (i8*)*, i32 (i8*)** %get_window, align 8
  %tobool34 = icmp ne i32 (i8*)* %45, null
  br i1 %tobool34, label %if.then.35, label %if.else.41

if.then.35:                                       ; preds = %sw.bb.32
  %46 = load %struct.GimpProgressData*, %struct.GimpProgressData** %progress_data, align 8
  %vtable36 = getelementptr inbounds %struct.GimpProgressData, %struct.GimpProgressData* %46, i32 0, i32 1
  %get_window37 = getelementptr inbounds %struct._GimpProgressVtable, %struct._GimpProgressVtable* %vtable36, i32 0, i32 5
  %47 = load i32 (i8*)*, i32 (i8*)** %get_window37, align 8
  %48 = load %struct.GimpProgressData*, %struct.GimpProgressData** %progress_data, align 8
  %data38 = getelementptr inbounds %struct.GimpProgressData, %struct.GimpProgressData* %48, i32 0, i32 2
  %49 = load i8*, i8** %data38, align 8
  %call39 = call i32 %47(i8* %49)
  %conv40 = uitofp i32 %call39 to double
  store double %conv40, double* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @gimp_temp_progress_run.values, i32 0, i64 1, i32 1, i32 0, i32 0), align 8
  br label %if.end.42

if.else.41:                                       ; preds = %sw.bb.32
  store double 0.000000e+00, double* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @gimp_temp_progress_run.values, i32 0, i64 1, i32 1, i32 0, i32 0), align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.41, %if.then.35
  br label %sw.epilog

sw.default:                                       ; preds = %if.else
  store i32 1, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @gimp_temp_progress_run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.42, %if.end, %sw.bb.15, %sw.bb.9, %sw.bb.6, %sw.bb
  br label %if.end.43

if.end.43:                                        ; preds = %sw.epilog, %if.then
  ret void
}

declare hidden i32 @_gimp_progress_install(i8*) #2

declare void @gimp_extension_enable() #2

declare %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, void (i8*)*) #2

declare i32 @g_str_hash(i8*) #2

declare i32 @g_str_equal(i8*, i8*) #2

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_progress_data_free(%struct.GimpProgressData* %data) #0 {
entry:
  %data.addr = alloca %struct.GimpProgressData*, align 8
  store %struct.GimpProgressData* %data, %struct.GimpProgressData** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.GimpProgressData*, %struct.GimpProgressData** %data.addr, align 8
  %1 = bitcast %struct.GimpProgressData* %0 to i8*
  call void @g_slice_free1(i64 128, i8* %1)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

declare noalias i8* @g_slice_alloc0(i64) #2

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #2

declare void @gimp_uninstall_temp_proc(i8*) #2

; Function Attrs: nounwind uwtable
define i8* @gimp_progress_uninstall(i8* %progress_callback) #0 {
entry:
  %retval = alloca i8*, align 8
  %progress_callback.addr = alloca i8*, align 8
  %progress_data = alloca %struct.GimpProgressData*, align 8
  %user_data = alloca i8*, align 8
  store i8* %progress_callback, i8** %progress_callback.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %progress_callback.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_progress_uninstall, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GHashTable*, %struct._GHashTable** @gimp_progress_ht, align 8
  %cmp2 = icmp ne %struct._GHashTable* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_progress_uninstall, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load %struct._GHashTable*, %struct._GHashTable** @gimp_progress_ht, align 8
  %3 = load i8*, i8** %progress_callback.addr, align 8
  %call = call i8* @g_hash_table_lookup(%struct._GHashTable* %2, i8* %3)
  %4 = bitcast i8* %call to %struct.GimpProgressData*
  store %struct.GimpProgressData* %4, %struct.GimpProgressData** %progress_data, align 8
  %5 = load %struct.GimpProgressData*, %struct.GimpProgressData** %progress_data, align 8
  %tobool = icmp ne %struct.GimpProgressData* %5, null
  br i1 %tobool, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %do.end.6
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.8:                                         ; preds = %do.end.6
  %6 = load i8*, i8** %progress_callback.addr, align 8
  %call9 = call i32 @_gimp_progress_uninstall(i8* %6)
  %7 = load i8*, i8** %progress_callback.addr, align 8
  call void @gimp_uninstall_temp_proc(i8* %7)
  %8 = load %struct.GimpProgressData*, %struct.GimpProgressData** %progress_data, align 8
  %data = getelementptr inbounds %struct.GimpProgressData, %struct.GimpProgressData* %8, i32 0, i32 2
  %9 = load i8*, i8** %data, align 8
  store i8* %9, i8** %user_data, align 8
  %10 = load %struct._GHashTable*, %struct._GHashTable** @gimp_progress_ht, align 8
  %11 = load i8*, i8** %progress_callback.addr, align 8
  %call10 = call i32 @g_hash_table_remove(%struct._GHashTable* %10, i8* %11)
  %12 = load i8*, i8** %user_data, align 8
  store i8* %12, i8** %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7, %if.else.4, %if.else
  %13 = load i8*, i8** %retval
  ret i8* %13
}

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #2

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
  call void @g_logv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare hidden i32 @_gimp_progress_uninstall(i8*) #2

declare i32 @g_hash_table_remove(%struct._GHashTable*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @gimp_progress_init(i8* %message) #0 {
entry:
  %message.addr = alloca i8*, align 8
  store i8* %message, i8** %message.addr, align 8
  store double 0.000000e+00, double* @gimp_progress_current, align 8
  %0 = load i8*, i8** %message.addr, align 8
  %call = call i32 @gimp_default_display() #4
  %call1 = call i32 @_gimp_progress_init(i8* %0, i32 %call)
  ret i32 %call1
}

declare hidden i32 @_gimp_progress_init(i8*, i32) #2

; Function Attrs: nounwind readnone
declare i32 @gimp_default_display() #3

; Function Attrs: nounwind uwtable
define i32 @gimp_progress_init_printf(i8* %format, ...) #0 {
entry:
  %retval = alloca i32, align 4
  %format.addr = alloca i8*, align 8
  %text = alloca i8*, align 8
  %retval1 = alloca i32, align 4
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %format.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_progress_init_printf, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay2 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay2)
  %1 = load i8*, i8** %format.addr, align 8
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call = call noalias i8* @g_strdup_vprintf(i8* %1, %struct.__va_list_tag* %arraydecay3)
  store i8* %call, i8** %text, align 8
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay45 = bitcast %struct.__va_list_tag* %arraydecay4 to i8*
  call void @llvm.va_end(i8* %arraydecay45)
  %2 = load i8*, i8** %text, align 8
  %call6 = call i32 @gimp_progress_init(i8* %2)
  store i32 %call6, i32* %retval1, align 4
  %3 = load i8*, i8** %text, align 8
  call void @g_free(i8* %3)
  %4 = load i32, i32* %retval1, align 4
  store i32 %4, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #1

declare noalias i8* @g_strdup_vprintf(i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_progress_set_text_printf(i8* %format, ...) #0 {
entry:
  %retval = alloca i32, align 4
  %format.addr = alloca i8*, align 8
  %text = alloca i8*, align 8
  %retval1 = alloca i32, align 4
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %format.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_progress_set_text_printf, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay2 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay2)
  %1 = load i8*, i8** %format.addr, align 8
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call = call noalias i8* @g_strdup_vprintf(i8* %1, %struct.__va_list_tag* %arraydecay3)
  store i8* %call, i8** %text, align 8
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay45 = bitcast %struct.__va_list_tag* %arraydecay4 to i8*
  call void @llvm.va_end(i8* %arraydecay45)
  %2 = load i8*, i8** %text, align 8
  %call6 = call i32 @gimp_progress_set_text(i8* %2)
  store i32 %call6, i32* %retval1, align 4
  %3 = load i8*, i8** %text, align 8
  call void @g_free(i8* %3)
  %4 = load i32, i32* %retval1, align 4
  store i32 %4, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %5 = load i32, i32* %retval
  ret i32 %5
}

declare i32 @gimp_progress_set_text(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @gimp_progress_update(double %percentage) #0 {
entry:
  %retval = alloca i32, align 4
  %percentage.addr = alloca double, align 8
  %changed = alloca i32, align 4
  store double %percentage, double* %percentage.addr, align 8
  %0 = load double, double* %percentage.addr, align 8
  %cmp = fcmp ole double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load double, double* @gimp_progress_current, align 8
  %cmp1 = fcmp une double %1, 0.000000e+00
  %conv = zext i1 %cmp1 to i32
  store i32 %conv, i32* %changed, align 4
  store double 0.000000e+00, double* %percentage.addr, align 8
  br label %if.end.10

if.else:                                          ; preds = %entry
  %2 = load double, double* %percentage.addr, align 8
  %cmp2 = fcmp oge double %2, 1.000000e+00
  br i1 %cmp2, label %if.then.4, label %if.else.7

if.then.4:                                        ; preds = %if.else
  %3 = load double, double* @gimp_progress_current, align 8
  %cmp5 = fcmp une double %3, 1.000000e+00
  %conv6 = zext i1 %cmp5 to i32
  store i32 %conv6, i32* %changed, align 4
  store double 1.000000e+00, double* %percentage.addr, align 8
  br label %if.end

if.else.7:                                        ; preds = %if.else
  %4 = load double, double* @gimp_progress_current, align 8
  %5 = load double, double* %percentage.addr, align 8
  %sub = fsub double %4, %5
  %call = call double @fabs(double %sub) #4
  %cmp8 = fcmp ogt double %call, 3.906250e-03
  %conv9 = zext i1 %cmp8 to i32
  store i32 %conv9, i32* %changed, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.7, %if.then.4
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then
  %6 = load i32, i32* %changed, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end.10
  store i32 1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.10
  %7 = load double, double* %percentage.addr, align 8
  store double %7, double* @gimp_progress_current, align 8
  %8 = load double, double* @gimp_progress_current, align 8
  %call13 = call i32 @_gimp_progress_update(double %8)
  store i32 %call13, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.11
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

declare hidden i32 @_gimp_progress_update(double) #2

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #2

declare void @g_slice_free1(i64, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
