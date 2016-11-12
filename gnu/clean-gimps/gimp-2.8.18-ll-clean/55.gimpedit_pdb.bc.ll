; ModuleID = './libgimp/gimpedit_pdb.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }

@.str = private unnamed_addr constant [14 x i8] c"gimp-edit-cut\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"gimp-edit-copy\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"gimp-edit-copy-visible\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"gimp-edit-paste\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"gimp-edit-paste-as-new\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"gimp-edit-named-cut\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"gimp-edit-named-copy\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"gimp-edit-named-copy-visible\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"gimp-edit-named-paste\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"gimp-edit-named-paste-as-new\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"gimp-edit-clear\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"gimp-edit-fill\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"gimp-edit-bucket-fill\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"gimp-edit-bucket-fill-full\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"gimp-edit-blend\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"gimp-edit-stroke\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"gimp-edit-stroke-vectors\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_edit_cut(i32 %drawable_ID) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %non_empty = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 0, i32* %non_empty, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %1 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %1, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %2 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %2, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %3, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data2 to i32*
  %4 = load i32, i32* %d_int32, align 4
  store i32 %4, i32* %non_empty, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i32, i32* %non_empty, align 4
  ret i32 %7
}

declare %struct._GimpParam* @gimp_run_procedure(i8*, i32*, ...) #1

declare void @gimp_destroy_params(%struct._GimpParam*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_edit_copy(i32 %drawable_ID) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %non_empty = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 0, i32* %non_empty, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %1 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %1, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %2 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %2, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %3, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data2 to i32*
  %4 = load i32, i32* %d_int32, align 4
  store i32 %4, i32* %non_empty, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i32, i32* %non_empty, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @gimp_edit_copy_visible(i32 %image_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %non_empty = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 0, i32* %non_empty, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %1 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %1, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %2 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %2, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %3, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data2 to i32*
  %4 = load i32, i32* %d_int32, align 4
  store i32 %4, i32* %non_empty, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i32, i32* %non_empty, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @gimp_edit_paste(i32 %drawable_ID, i32 %paste_into) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %paste_into.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %floating_sel_ID = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %paste_into, i32* %paste_into.addr, align 4
  store i32 -1, i32* %floating_sel_ID, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i32, i32* %paste_into.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 0, i32 %1, i32 22)
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
  %d_layer = bitcast %union._GimpParamData* %data2 to i32*
  %5 = load i32, i32* %d_layer, align 4
  store i32 %5, i32* %floating_sel_ID, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %7 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %6, i32 %7)
  %8 = load i32, i32* %floating_sel_ID, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @gimp_edit_paste_as_new() #0 {
entry:
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %image_ID = alloca i32, align 4
  store i32 -1, i32* %image_ID, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i32* %nreturn_vals, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %0 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_image = bitcast %union._GimpParamData* %data2 to i32*
  %3 = load i32, i32* %d_image, align 4
  store i32 %3, i32* %image_ID, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %5 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %4, i32 %5)
  %6 = load i32, i32* %image_ID, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i8* @gimp_edit_named_cut(i32 %drawable_ID, i8* %buffer_name) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %buffer_name.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %real_name = alloca i8*, align 8
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i8* %buffer_name, i8** %buffer_name.addr, align 8
  store i8* null, i8** %real_name, align 8
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i8*, i8** %buffer_name.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 4, i8* %1, i32 22)
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
  %d_string = bitcast %union._GimpParamData* %data2 to i8**
  %5 = load i8*, i8** %d_string, align 8
  %call3 = call noalias i8* @g_strdup(i8* %5)
  store i8* %call3, i8** %real_name, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %7 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %6, i32 %7)
  %8 = load i8*, i8** %real_name, align 8
  ret i8* %8
}

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind uwtable
define i8* @gimp_edit_named_copy(i32 %drawable_ID, i8* %buffer_name) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %buffer_name.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %real_name = alloca i8*, align 8
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i8* %buffer_name, i8** %buffer_name.addr, align 8
  store i8* null, i8** %real_name, align 8
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i8*, i8** %buffer_name.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 4, i8* %1, i32 22)
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
  %d_string = bitcast %union._GimpParamData* %data2 to i8**
  %5 = load i8*, i8** %d_string, align 8
  %call3 = call noalias i8* @g_strdup(i8* %5)
  store i8* %call3, i8** %real_name, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %7 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %6, i32 %7)
  %8 = load i8*, i8** %real_name, align 8
  ret i8* %8
}

; Function Attrs: nounwind uwtable
define i8* @gimp_edit_named_copy_visible(i32 %image_ID, i8* %buffer_name) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %buffer_name.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %real_name = alloca i8*, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i8* %buffer_name, i8** %buffer_name.addr, align 8
  store i8* null, i8** %real_name, align 8
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i8*, i8** %buffer_name.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 4, i8* %1, i32 22)
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
  %d_string = bitcast %union._GimpParamData* %data2 to i8**
  %5 = load i8*, i8** %d_string, align 8
  %call3 = call noalias i8* @g_strdup(i8* %5)
  store i8* %call3, i8** %real_name, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %7 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %6, i32 %7)
  %8 = load i8*, i8** %real_name, align 8
  ret i8* %8
}

; Function Attrs: nounwind uwtable
define i32 @gimp_edit_named_paste(i32 %drawable_ID, i8* %buffer_name, i32 %paste_into) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %buffer_name.addr = alloca i8*, align 8
  %paste_into.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %floating_sel_ID = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i8* %buffer_name, i8** %buffer_name.addr, align 8
  store i32 %paste_into, i32* %paste_into.addr, align 4
  store i32 -1, i32* %floating_sel_ID, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i8*, i8** %buffer_name.addr, align 8
  %2 = load i32, i32* %paste_into.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 4, i8* %1, i32 0, i32 %2, i32 22)
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
  %d_layer = bitcast %union._GimpParamData* %data2 to i32*
  %6 = load i32, i32* %d_layer, align 4
  store i32 %6, i32* %floating_sel_ID, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %8 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %7, i32 %8)
  %9 = load i32, i32* %floating_sel_ID, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @gimp_edit_named_paste_as_new(i8* %buffer_name) #0 {
entry:
  %buffer_name.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %image_ID = alloca i32, align 4
  store i8* %buffer_name, i8** %buffer_name.addr, align 8
  store i32 -1, i32* %image_ID, align 4
  %0 = load i8*, i8** %buffer_name.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %1 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %1, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %2 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %2, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %3, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_image = bitcast %union._GimpParamData* %data2 to i32*
  %4 = load i32, i32* %d_image, align 4
  store i32 %4, i32* %image_ID, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i32, i32* %image_ID, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @gimp_edit_clear(i32 %drawable_ID) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %1 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %1, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %2 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %2, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %3 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %4 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %3, i32 %4)
  %5 = load i32, i32* %success, align 4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @gimp_edit_fill(i32 %drawable_ID, i32 %fill_type) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %fill_type.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %fill_type, i32* %fill_type.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i32, i32* %fill_type.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 0, i32 %1, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %2 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %3 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %3, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %5 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %4, i32 %5)
  %6 = load i32, i32* %success, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @gimp_edit_bucket_fill(i32 %drawable_ID, i32 %fill_mode, i32 %paint_mode, double %opacity, double %threshold, i32 %sample_merged, double %x, double %y) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %fill_mode.addr = alloca i32, align 4
  %paint_mode.addr = alloca i32, align 4
  %opacity.addr = alloca double, align 8
  %threshold.addr = alloca double, align 8
  %sample_merged.addr = alloca i32, align 4
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %fill_mode, i32* %fill_mode.addr, align 4
  store i32 %paint_mode, i32* %paint_mode.addr, align 4
  store double %opacity, double* %opacity.addr, align 8
  store double %threshold, double* %threshold.addr, align 8
  store i32 %sample_merged, i32* %sample_merged.addr, align 4
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i32, i32* %fill_mode.addr, align 4
  %2 = load i32, i32* %paint_mode.addr, align 4
  %3 = load double, double* %opacity.addr, align 8
  %4 = load double, double* %threshold.addr, align 8
  %5 = load i32, i32* %sample_merged.addr, align 4
  %6 = load double, double* %x.addr, align 8
  %7 = load double, double* %y.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 0, i32 %1, i32 0, i32 %2, i32 3, double %3, i32 3, double %4, i32 0, i32 %5, i32 3, double %6, i32 3, double %7, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %8 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %8, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %9 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %9, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %10 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %11 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %10, i32 %11)
  %12 = load i32, i32* %success, align 4
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define i32 @gimp_edit_bucket_fill_full(i32 %drawable_ID, i32 %fill_mode, i32 %paint_mode, double %opacity, double %threshold, i32 %sample_merged, i32 %fill_transparent, i32 %select_criterion, double %x, double %y) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %fill_mode.addr = alloca i32, align 4
  %paint_mode.addr = alloca i32, align 4
  %opacity.addr = alloca double, align 8
  %threshold.addr = alloca double, align 8
  %sample_merged.addr = alloca i32, align 4
  %fill_transparent.addr = alloca i32, align 4
  %select_criterion.addr = alloca i32, align 4
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %fill_mode, i32* %fill_mode.addr, align 4
  store i32 %paint_mode, i32* %paint_mode.addr, align 4
  store double %opacity, double* %opacity.addr, align 8
  store double %threshold, double* %threshold.addr, align 8
  store i32 %sample_merged, i32* %sample_merged.addr, align 4
  store i32 %fill_transparent, i32* %fill_transparent.addr, align 4
  store i32 %select_criterion, i32* %select_criterion.addr, align 4
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i32, i32* %fill_mode.addr, align 4
  %2 = load i32, i32* %paint_mode.addr, align 4
  %3 = load double, double* %opacity.addr, align 8
  %4 = load double, double* %threshold.addr, align 8
  %5 = load i32, i32* %sample_merged.addr, align 4
  %6 = load i32, i32* %fill_transparent.addr, align 4
  %7 = load i32, i32* %select_criterion.addr, align 4
  %8 = load double, double* %x.addr, align 8
  %9 = load double, double* %y.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 0, i32 %1, i32 0, i32 %2, i32 3, double %3, i32 3, double %4, i32 0, i32 %5, i32 0, i32 %6, i32 0, i32 %7, i32 3, double %8, i32 3, double %9, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %10 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %10, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %11 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %11, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %12 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %13 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %12, i32 %13)
  %14 = load i32, i32* %success, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i32 @gimp_edit_blend(i32 %drawable_ID, i32 %blend_mode, i32 %paint_mode, i32 %gradient_type, double %opacity, double %offset, i32 %repeat, i32 %reverse, i32 %supersample, i32 %max_depth, double %threshold, i32 %dither, double %x1, double %y1, double %x2, double %y2) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %blend_mode.addr = alloca i32, align 4
  %paint_mode.addr = alloca i32, align 4
  %gradient_type.addr = alloca i32, align 4
  %opacity.addr = alloca double, align 8
  %offset.addr = alloca double, align 8
  %repeat.addr = alloca i32, align 4
  %reverse.addr = alloca i32, align 4
  %supersample.addr = alloca i32, align 4
  %max_depth.addr = alloca i32, align 4
  %threshold.addr = alloca double, align 8
  %dither.addr = alloca i32, align 4
  %x1.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %x2.addr = alloca double, align 8
  %y2.addr = alloca double, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %blend_mode, i32* %blend_mode.addr, align 4
  store i32 %paint_mode, i32* %paint_mode.addr, align 4
  store i32 %gradient_type, i32* %gradient_type.addr, align 4
  store double %opacity, double* %opacity.addr, align 8
  store double %offset, double* %offset.addr, align 8
  store i32 %repeat, i32* %repeat.addr, align 4
  store i32 %reverse, i32* %reverse.addr, align 4
  store i32 %supersample, i32* %supersample.addr, align 4
  store i32 %max_depth, i32* %max_depth.addr, align 4
  store double %threshold, double* %threshold.addr, align 8
  store i32 %dither, i32* %dither.addr, align 4
  store double %x1, double* %x1.addr, align 8
  store double %y1, double* %y1.addr, align 8
  store double %x2, double* %x2.addr, align 8
  store double %y2, double* %y2.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i32, i32* %blend_mode.addr, align 4
  %2 = load i32, i32* %paint_mode.addr, align 4
  %3 = load i32, i32* %gradient_type.addr, align 4
  %4 = load double, double* %opacity.addr, align 8
  %5 = load double, double* %offset.addr, align 8
  %6 = load i32, i32* %repeat.addr, align 4
  %7 = load i32, i32* %reverse.addr, align 4
  %8 = load i32, i32* %supersample.addr, align 4
  %9 = load i32, i32* %max_depth.addr, align 4
  %10 = load double, double* %threshold.addr, align 8
  %11 = load i32, i32* %dither.addr, align 4
  %12 = load double, double* %x1.addr, align 8
  %13 = load double, double* %y1.addr, align 8
  %14 = load double, double* %x2.addr, align 8
  %15 = load double, double* %y2.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 0, i32 %1, i32 0, i32 %2, i32 0, i32 %3, i32 3, double %4, i32 3, double %5, i32 0, i32 %6, i32 0, i32 %7, i32 0, i32 %8, i32 0, i32 %9, i32 3, double %10, i32 0, i32 %11, i32 3, double %12, i32 3, double %13, i32 3, double %14, i32 3, double %15, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %16 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %16, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %17 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %17, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %18 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %19 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %18, i32 %19)
  %20 = load i32, i32* %success, align 4
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define i32 @gimp_edit_stroke(i32 %drawable_ID) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %1 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %1, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %2 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %2, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %3 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %4 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %3, i32 %4)
  %5 = load i32, i32* %success, align 4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @gimp_edit_stroke_vectors(i32 %drawable_ID, i32 %vectors_ID) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %vectors_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %vectors_ID, i32* %vectors_ID.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i32, i32* %vectors_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 19, i32 %1, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %2 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %3 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %3, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %5 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %4, i32 %5)
  %6 = load i32, i32* %success, align 4
  ret i32 %6
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
