; ModuleID = './libgimp/gimpproceduraldb_pdb.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }

@.str = private unnamed_addr constant [29 x i8] c"gimp-procedural-db-temp-name\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"gimp-procedural-db-dump\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"gimp-procedural-db-query\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"gimp-procedural-db-proc-exists\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"gimp-procedural-db-proc-info\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"gimp-procedural-db-proc-arg\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"gimp-procedural-db-proc-val\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"gimp-procedural-db-get-data\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"gimp-procedural-db-get-data-size\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"gimp-procedural-db-set-data\00", align 1

; Function Attrs: nounwind uwtable
define i8* @gimp_procedural_db_temp_name() #0 {
entry:
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %temp_name = alloca i8*, align 8
  store i8* null, i8** %temp_name, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0), i32* %nreturn_vals, i32 22)
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
  %d_string = bitcast %union._GimpParamData* %data2 to i8**
  %3 = load i8*, i8** %d_string, align 8
  %call3 = call noalias i8* @g_strdup(i8* %3)
  store i8* %call3, i8** %temp_name, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %5 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %4, i32 %5)
  %6 = load i8*, i8** %temp_name, align 8
  ret i8* %6
}

declare %struct._GimpParam* @gimp_run_procedure(i8*, i32*, ...) #1

declare noalias i8* @g_strdup(i8*) #1

declare void @gimp_destroy_params(%struct._GimpParam*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_procedural_db_dump(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 22)
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
define i32 @gimp_procedural_db_query(i8* %name, i8* %blurb, i8* %help, i8* %author, i8* %copyright, i8* %date, i8* %proc_type, i32* %num_matches, i8*** %procedure_names) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %blurb.addr = alloca i8*, align 8
  %help.addr = alloca i8*, align 8
  %author.addr = alloca i8*, align 8
  %copyright.addr = alloca i8*, align 8
  %date.addr = alloca i8*, align 8
  %proc_type.addr = alloca i8*, align 8
  %num_matches.addr = alloca i32*, align 8
  %procedure_names.addr = alloca i8***, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i8* %blurb, i8** %blurb.addr, align 8
  store i8* %help, i8** %help.addr, align 8
  store i8* %author, i8** %author.addr, align 8
  store i8* %copyright, i8** %copyright.addr, align 8
  store i8* %date, i8** %date.addr, align 8
  store i8* %proc_type, i8** %proc_type.addr, align 8
  store i32* %num_matches, i32** %num_matches.addr, align 8
  store i8*** %procedure_names, i8**** %procedure_names.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i8*, i8** %blurb.addr, align 8
  %2 = load i8*, i8** %help.addr, align 8
  %3 = load i8*, i8** %author.addr, align 8
  %4 = load i8*, i8** %copyright.addr, align 8
  %5 = load i8*, i8** %date.addr, align 8
  %6 = load i8*, i8** %proc_type.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 4, i8* %1, i32 4, i8* %2, i32 4, i8* %3, i32 4, i8* %4, i32 4, i8* %5, i32 4, i8* %6, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %7 = load i32*, i32** %num_matches.addr, align 8
  store i32 0, i32* %7, align 4
  %8 = load i8***, i8**** %procedure_names.addr, align 8
  store i8** null, i8*** %8, align 8
  %9 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %9, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %10 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %10, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %11 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %12, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data2 to i32*
  %13 = load i32, i32* %d_int32, align 4
  %14 = load i32*, i32** %num_matches.addr, align 8
  store i32 %13, i32* %14, align 4
  %15 = load i32*, i32** %num_matches.addr, align 8
  %16 = load i32, i32* %15, align 4
  %conv3 = sext i32 %16 to i64
  %call4 = call noalias i8* @g_malloc_n(i64 %conv3, i64 8)
  %17 = bitcast i8* %call4 to i8**
  %18 = load i8***, i8**** %procedure_names.addr, align 8
  store i8** %17, i8*** %18, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %19 = load i32, i32* %i, align 4
  %20 = load i32*, i32** %num_matches.addr, align 8
  %21 = load i32, i32* %20, align 4
  %cmp5 = icmp slt i32 %19, %21
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %i, align 4
  %idxprom = sext i32 %22 to i64
  %23 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %23, i64 2
  %data8 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx7, i32 0, i32 1
  %d_stringarray = bitcast %union._GimpParamData* %data8 to i8***
  %24 = load i8**, i8*** %d_stringarray, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %24, i64 %idxprom
  %25 = load i8*, i8** %arrayidx9, align 8
  %call10 = call noalias i8* @g_strdup(i8* %25)
  %26 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %26 to i64
  %27 = load i8***, i8**** %procedure_names.addr, align 8
  %28 = load i8**, i8*** %27, align 8
  %arrayidx12 = getelementptr inbounds i8*, i8** %28, i64 %idxprom11
  store i8* %call10, i8** %arrayidx12, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i32, i32* %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %30 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %31 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %30, i32 %31)
  %32 = load i32, i32* %success, align 4
  ret i32 %32
}

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_procedural_db_proc_exists(i8* %procedure_name) #0 {
entry:
  %procedure_name.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %exists = alloca i32, align 4
  store i8* %procedure_name, i8** %procedure_name.addr, align 8
  store i32 0, i32* %exists, align 4
  %0 = load i8*, i8** %procedure_name.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 22)
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
  store i32 %4, i32* %exists, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i32, i32* %exists, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define hidden i32 @_gimp_procedural_db_proc_info(i8* %procedure_name, i8** %blurb, i8** %help, i8** %author, i8** %copyright, i8** %date, i32* %proc_type, i32* %num_args, i32* %num_values) #0 {
entry:
  %procedure_name.addr = alloca i8*, align 8
  %blurb.addr = alloca i8**, align 8
  %help.addr = alloca i8**, align 8
  %author.addr = alloca i8**, align 8
  %copyright.addr = alloca i8**, align 8
  %date.addr = alloca i8**, align 8
  %proc_type.addr = alloca i32*, align 8
  %num_args.addr = alloca i32*, align 8
  %num_values.addr = alloca i32*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %procedure_name, i8** %procedure_name.addr, align 8
  store i8** %blurb, i8*** %blurb.addr, align 8
  store i8** %help, i8*** %help.addr, align 8
  store i8** %author, i8*** %author.addr, align 8
  store i8** %copyright, i8*** %copyright.addr, align 8
  store i8** %date, i8*** %date.addr, align 8
  store i32* %proc_type, i32** %proc_type.addr, align 8
  store i32* %num_args, i32** %num_args.addr, align 8
  store i32* %num_values, i32** %num_values.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %procedure_name.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %1 = load i8**, i8*** %blurb.addr, align 8
  store i8* null, i8** %1, align 8
  %2 = load i8**, i8*** %help.addr, align 8
  store i8* null, i8** %2, align 8
  %3 = load i8**, i8*** %author.addr, align 8
  store i8* null, i8** %3, align 8
  %4 = load i8**, i8*** %copyright.addr, align 8
  store i8* null, i8** %4, align 8
  %5 = load i8**, i8*** %date.addr, align 8
  store i8* null, i8** %5, align 8
  %6 = load i32*, i32** %proc_type.addr, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32*, i32** %num_args.addr, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32*, i32** %num_values.addr, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %9, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %10 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %10, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %11 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %12, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_string = bitcast %union._GimpParamData* %data2 to i8**
  %13 = load i8*, i8** %d_string, align 8
  %call3 = call noalias i8* @g_strdup(i8* %13)
  %14 = load i8**, i8*** %blurb.addr, align 8
  store i8* %call3, i8** %14, align 8
  %15 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %15, i64 2
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_string6 = bitcast %union._GimpParamData* %data5 to i8**
  %16 = load i8*, i8** %d_string6, align 8
  %call7 = call noalias i8* @g_strdup(i8* %16)
  %17 = load i8**, i8*** %help.addr, align 8
  store i8* %call7, i8** %17, align 8
  %18 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx8 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %18, i64 3
  %data9 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx8, i32 0, i32 1
  %d_string10 = bitcast %union._GimpParamData* %data9 to i8**
  %19 = load i8*, i8** %d_string10, align 8
  %call11 = call noalias i8* @g_strdup(i8* %19)
  %20 = load i8**, i8*** %author.addr, align 8
  store i8* %call11, i8** %20, align 8
  %21 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx12 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %21, i64 4
  %data13 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx12, i32 0, i32 1
  %d_string14 = bitcast %union._GimpParamData* %data13 to i8**
  %22 = load i8*, i8** %d_string14, align 8
  %call15 = call noalias i8* @g_strdup(i8* %22)
  %23 = load i8**, i8*** %copyright.addr, align 8
  store i8* %call15, i8** %23, align 8
  %24 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx16 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %24, i64 5
  %data17 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx16, i32 0, i32 1
  %d_string18 = bitcast %union._GimpParamData* %data17 to i8**
  %25 = load i8*, i8** %d_string18, align 8
  %call19 = call noalias i8* @g_strdup(i8* %25)
  %26 = load i8**, i8*** %date.addr, align 8
  store i8* %call19, i8** %26, align 8
  %27 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx20 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %27, i64 6
  %data21 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx20, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data21 to i32*
  %28 = load i32, i32* %d_int32, align 4
  %29 = load i32*, i32** %proc_type.addr, align 8
  store i32 %28, i32* %29, align 4
  %30 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx22 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %30, i64 7
  %data23 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx22, i32 0, i32 1
  %d_int3224 = bitcast %union._GimpParamData* %data23 to i32*
  %31 = load i32, i32* %d_int3224, align 4
  %32 = load i32*, i32** %num_args.addr, align 8
  store i32 %31, i32* %32, align 4
  %33 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx25 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %33, i64 8
  %data26 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx25, i32 0, i32 1
  %d_int3227 = bitcast %union._GimpParamData* %data26 to i32*
  %34 = load i32, i32* %d_int3227, align 4
  %35 = load i32*, i32** %num_values.addr, align 8
  store i32 %34, i32* %35, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %36 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %37 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %36, i32 %37)
  %38 = load i32, i32* %success, align 4
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define i32 @gimp_procedural_db_proc_arg(i8* %procedure_name, i32 %arg_num, i32* %arg_type, i8** %arg_name, i8** %arg_desc) #0 {
entry:
  %procedure_name.addr = alloca i8*, align 8
  %arg_num.addr = alloca i32, align 4
  %arg_type.addr = alloca i32*, align 8
  %arg_name.addr = alloca i8**, align 8
  %arg_desc.addr = alloca i8**, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %procedure_name, i8** %procedure_name.addr, align 8
  store i32 %arg_num, i32* %arg_num.addr, align 4
  store i32* %arg_type, i32** %arg_type.addr, align 8
  store i8** %arg_name, i8*** %arg_name.addr, align 8
  store i8** %arg_desc, i8*** %arg_desc.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %procedure_name.addr, align 8
  %1 = load i32, i32* %arg_num.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 0, i32 %1, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %2 = load i32*, i32** %arg_type.addr, align 8
  store i32 0, i32* %2, align 4
  %3 = load i8**, i8*** %arg_name.addr, align 8
  store i8* null, i8** %3, align 8
  %4 = load i8**, i8*** %arg_desc.addr, align 8
  store i8* null, i8** %4, align 8
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %6 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %6, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %7 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %8, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data2 to i32*
  %9 = load i32, i32* %d_int32, align 4
  %10 = load i32*, i32** %arg_type.addr, align 8
  store i32 %9, i32* %10, align 4
  %11 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx3 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %11, i64 2
  %data4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx3, i32 0, i32 1
  %d_string = bitcast %union._GimpParamData* %data4 to i8**
  %12 = load i8*, i8** %d_string, align 8
  %call5 = call noalias i8* @g_strdup(i8* %12)
  %13 = load i8**, i8*** %arg_name.addr, align 8
  store i8* %call5, i8** %13, align 8
  %14 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %14, i64 3
  %data7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx6, i32 0, i32 1
  %d_string8 = bitcast %union._GimpParamData* %data7 to i8**
  %15 = load i8*, i8** %d_string8, align 8
  %call9 = call noalias i8* @g_strdup(i8* %15)
  %16 = load i8**, i8*** %arg_desc.addr, align 8
  store i8* %call9, i8** %16, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %18 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %17, i32 %18)
  %19 = load i32, i32* %success, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define i32 @gimp_procedural_db_proc_val(i8* %procedure_name, i32 %val_num, i32* %val_type, i8** %val_name, i8** %val_desc) #0 {
entry:
  %procedure_name.addr = alloca i8*, align 8
  %val_num.addr = alloca i32, align 4
  %val_type.addr = alloca i32*, align 8
  %val_name.addr = alloca i8**, align 8
  %val_desc.addr = alloca i8**, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %procedure_name, i8** %procedure_name.addr, align 8
  store i32 %val_num, i32* %val_num.addr, align 4
  store i32* %val_type, i32** %val_type.addr, align 8
  store i8** %val_name, i8*** %val_name.addr, align 8
  store i8** %val_desc, i8*** %val_desc.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %procedure_name.addr, align 8
  %1 = load i32, i32* %val_num.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 0, i32 %1, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %2 = load i32*, i32** %val_type.addr, align 8
  store i32 0, i32* %2, align 4
  %3 = load i8**, i8*** %val_name.addr, align 8
  store i8* null, i8** %3, align 8
  %4 = load i8**, i8*** %val_desc.addr, align 8
  store i8* null, i8** %4, align 8
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %6 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %6, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %7 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %8, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data2 to i32*
  %9 = load i32, i32* %d_int32, align 4
  %10 = load i32*, i32** %val_type.addr, align 8
  store i32 %9, i32* %10, align 4
  %11 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx3 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %11, i64 2
  %data4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx3, i32 0, i32 1
  %d_string = bitcast %union._GimpParamData* %data4 to i8**
  %12 = load i8*, i8** %d_string, align 8
  %call5 = call noalias i8* @g_strdup(i8* %12)
  %13 = load i8**, i8*** %val_name.addr, align 8
  store i8* %call5, i8** %13, align 8
  %14 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %14, i64 3
  %data7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx6, i32 0, i32 1
  %d_string8 = bitcast %union._GimpParamData* %data7 to i8**
  %15 = load i8*, i8** %d_string8, align 8
  %call9 = call noalias i8* @g_strdup(i8* %15)
  %16 = load i8**, i8*** %val_desc.addr, align 8
  store i8* %call9, i8** %16, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %18 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %17, i32 %18)
  %19 = load i32, i32* %success, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define hidden i32 @_gimp_procedural_db_get_data(i8* %identifier, i32* %bytes, i8** %data) #0 {
entry:
  %identifier.addr = alloca i8*, align 8
  %bytes.addr = alloca i32*, align 8
  %data.addr = alloca i8**, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %identifier, i8** %identifier.addr, align 8
  store i32* %bytes, i32** %bytes.addr, align 8
  store i8** %data, i8*** %data.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %identifier.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %1 = load i32*, i32** %bytes.addr, align 8
  store i32 0, i32* %1, align 4
  %2 = load i8**, i8*** %data.addr, align 8
  store i8* null, i8** %2, align 8
  %3 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %3, i64 0
  %data1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data1 to i32*
  %4 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %4, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %6, i64 1
  %data3 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx2, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data3 to i32*
  %7 = load i32, i32* %d_int32, align 4
  %8 = load i32*, i32** %bytes.addr, align 8
  store i32 %7, i32* %8, align 4
  %9 = load i32*, i32** %bytes.addr, align 8
  %10 = load i32, i32* %9, align 4
  %conv4 = sext i32 %10 to i64
  %call5 = call noalias i8* @g_malloc_n(i64 %conv4, i64 1)
  %11 = load i8**, i8*** %data.addr, align 8
  store i8* %call5, i8** %11, align 8
  %12 = load i8**, i8*** %data.addr, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %14, i64 2
  %data7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx6, i32 0, i32 1
  %d_int8array = bitcast %union._GimpParamData* %data7 to i8**
  %15 = load i8*, i8** %d_int8array, align 8
  %16 = load i32*, i32** %bytes.addr, align 8
  %17 = load i32, i32* %16, align 4
  %conv8 = sext i32 %17 to i64
  %mul = mul i64 %conv8, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %15, i64 %mul, i32 1, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %19 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %18, i32 %19)
  %20 = load i32, i32* %success, align 4
  ret i32 %20
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @gimp_procedural_db_get_data_size(i8* %identifier) #0 {
entry:
  %identifier.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %bytes = alloca i32, align 4
  store i8* %identifier, i8** %identifier.addr, align 8
  store i32 0, i32* %bytes, align 4
  %0 = load i8*, i8** %identifier.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 22)
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
  store i32 %4, i32* %bytes, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i32, i32* %bytes, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define hidden i32 @_gimp_procedural_db_set_data(i8* %identifier, i32 %bytes, i8* %data) #0 {
entry:
  %identifier.addr = alloca i8*, align 8
  %bytes.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %identifier, i8** %identifier.addr, align 8
  store i32 %bytes, i32* %bytes.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %identifier.addr, align 8
  %1 = load i32, i32* %bytes.addr, align 4
  %2 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 0, i32 %1, i32 7, i8* %2, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %3 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %3, i64 0
  %data1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data1 to i32*
  %4 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %4, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i32, i32* %success, align 4
  ret i32 %7
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
