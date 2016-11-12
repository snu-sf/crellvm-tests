; ModuleID = './libgimp/gimpcontext_pdb.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }

@.str = private unnamed_addr constant [18 x i8] c"gimp-context-push\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"gimp-context-pop\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"gimp-context-set-defaults\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"gimp-context-list-paint-methods\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"gimp-context-get-paint-method\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"gimp-context-set-paint-method\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"gimp-context-get-foreground\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"gimp-context-set-foreground\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"gimp-context-get-background\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"gimp-context-set-background\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"gimp-context-set-default-colors\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"gimp-context-swap-colors\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"gimp-context-get-opacity\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"gimp-context-set-opacity\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"gimp-context-get-paint-mode\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"gimp-context-set-paint-mode\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"gimp-context-get-brush\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"gimp-context-set-brush\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"gimp-context-get-brush-size\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"gimp-context-set-brush-size\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"gimp-context-set-brush-default-size\00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"gimp-context-get-brush-aspect-ratio\00", align 1
@.str.22 = private unnamed_addr constant [36 x i8] c"gimp-context-set-brush-aspect-ratio\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"gimp-context-get-brush-angle\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"gimp-context-set-brush-angle\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"gimp-context-get-dynamics\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"gimp-context-set-dynamics\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"gimp-context-get-pattern\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"gimp-context-set-pattern\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"gimp-context-get-gradient\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"gimp-context-set-gradient\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"gimp-context-get-palette\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"gimp-context-set-palette\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"gimp-context-get-font\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"gimp-context-set-font\00", align 1
@.str.35 = private unnamed_addr constant [27 x i8] c"gimp-context-get-antialias\00", align 1
@.str.36 = private unnamed_addr constant [27 x i8] c"gimp-context-set-antialias\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"gimp-context-get-feather\00", align 1
@.str.38 = private unnamed_addr constant [25 x i8] c"gimp-context-set-feather\00", align 1
@.str.39 = private unnamed_addr constant [32 x i8] c"gimp-context-get-feather-radius\00", align 1
@.str.40 = private unnamed_addr constant [32 x i8] c"gimp-context-set-feather-radius\00", align 1
@.str.41 = private unnamed_addr constant [31 x i8] c"gimp-context-get-sample-merged\00", align 1
@.str.42 = private unnamed_addr constant [31 x i8] c"gimp-context-set-sample-merged\00", align 1
@.str.43 = private unnamed_addr constant [34 x i8] c"gimp-context-get-sample-criterion\00", align 1
@.str.44 = private unnamed_addr constant [34 x i8] c"gimp-context-set-sample-criterion\00", align 1
@.str.45 = private unnamed_addr constant [34 x i8] c"gimp-context-get-sample-threshold\00", align 1
@.str.46 = private unnamed_addr constant [34 x i8] c"gimp-context-set-sample-threshold\00", align 1
@.str.47 = private unnamed_addr constant [38 x i8] c"gimp-context-get-sample-threshold-int\00", align 1
@.str.48 = private unnamed_addr constant [38 x i8] c"gimp-context-set-sample-threshold-int\00", align 1
@.str.49 = private unnamed_addr constant [36 x i8] c"gimp-context-get-sample-transparent\00", align 1
@.str.50 = private unnamed_addr constant [36 x i8] c"gimp-context-set-sample-transparent\00", align 1
@.str.51 = private unnamed_addr constant [31 x i8] c"gimp-context-get-interpolation\00", align 1
@.str.52 = private unnamed_addr constant [31 x i8] c"gimp-context-set-interpolation\00", align 1
@.str.53 = private unnamed_addr constant [37 x i8] c"gimp-context-get-transform-direction\00", align 1
@.str.54 = private unnamed_addr constant [37 x i8] c"gimp-context-set-transform-direction\00", align 1
@.str.55 = private unnamed_addr constant [34 x i8] c"gimp-context-get-transform-resize\00", align 1
@.str.56 = private unnamed_addr constant [34 x i8] c"gimp-context-set-transform-resize\00", align 1
@.str.57 = private unnamed_addr constant [37 x i8] c"gimp-context-get-transform-recursion\00", align 1
@.str.58 = private unnamed_addr constant [37 x i8] c"gimp-context-set-transform-recursion\00", align 1
@.str.59 = private unnamed_addr constant [26 x i8] c"gimp-context-get-ink-size\00", align 1
@.str.60 = private unnamed_addr constant [26 x i8] c"gimp-context-set-ink-size\00", align 1
@.str.61 = private unnamed_addr constant [27 x i8] c"gimp-context-get-ink-angle\00", align 1
@.str.62 = private unnamed_addr constant [27 x i8] c"gimp-context-set-ink-angle\00", align 1
@.str.63 = private unnamed_addr constant [38 x i8] c"gimp-context-get-ink-size-sensitivity\00", align 1
@.str.64 = private unnamed_addr constant [38 x i8] c"gimp-context-set-ink-size-sensitivity\00", align 1
@.str.65 = private unnamed_addr constant [38 x i8] c"gimp-context-get-ink-tilt-sensitivity\00", align 1
@.str.66 = private unnamed_addr constant [38 x i8] c"gimp-context-set-ink-tilt-sensitivity\00", align 1
@.str.67 = private unnamed_addr constant [39 x i8] c"gimp-context-get-ink-speed-sensitivity\00", align 1
@.str.68 = private unnamed_addr constant [39 x i8] c"gimp-context-set-ink-speed-sensitivity\00", align 1
@.str.69 = private unnamed_addr constant [31 x i8] c"gimp-context-get-ink-blob-type\00", align 1
@.str.70 = private unnamed_addr constant [31 x i8] c"gimp-context-set-ink-blob-type\00", align 1
@.str.71 = private unnamed_addr constant [39 x i8] c"gimp-context-get-ink-blob-aspect-ratio\00", align 1
@.str.72 = private unnamed_addr constant [39 x i8] c"gimp-context-set-ink-blob-aspect-ratio\00", align 1
@.str.73 = private unnamed_addr constant [32 x i8] c"gimp-context-get-ink-blob-angle\00", align 1
@.str.74 = private unnamed_addr constant [32 x i8] c"gimp-context-set-ink-blob-angle\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_context_push() #0 {
entry:
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 1, i32* %success, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32* %nreturn_vals, i32 22)
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
define i32 @gimp_context_pop() #0 {
entry:
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 1, i32* %success, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32* %nreturn_vals, i32 22)
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

; Function Attrs: nounwind uwtable
define i32 @gimp_context_set_defaults() #0 {
entry:
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 1, i32* %success, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i32* %nreturn_vals, i32 22)
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

; Function Attrs: nounwind uwtable
define i32 @gimp_context_list_paint_methods(i32* %num_paint_methods, i8*** %paint_methods) #0 {
entry:
  %num_paint_methods.addr = alloca i32*, align 8
  %paint_methods.addr = alloca i8***, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %num_paint_methods, i32** %num_paint_methods.addr, align 8
  store i8*** %paint_methods, i8**** %paint_methods.addr, align 8
  store i32 1, i32* %success, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0), i32* %nreturn_vals, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %0 = load i32*, i32** %num_paint_methods.addr, align 8
  store i32 0, i32* %0, align 4
  %1 = load i8***, i8**** %paint_methods.addr, align 8
  store i8** null, i8*** %1, align 8
  %2 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %3 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %3, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %4 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data2 to i32*
  %6 = load i32, i32* %d_int32, align 4
  %7 = load i32*, i32** %num_paint_methods.addr, align 8
  store i32 %6, i32* %7, align 4
  %8 = load i32*, i32** %num_paint_methods.addr, align 8
  %9 = load i32, i32* %8, align 4
  %conv3 = sext i32 %9 to i64
  %call4 = call noalias i8* @g_malloc_n(i64 %conv3, i64 8)
  %10 = bitcast i8* %call4 to i8**
  %11 = load i8***, i8**** %paint_methods.addr, align 8
  store i8** %10, i8*** %11, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %12 = load i32, i32* %i, align 4
  %13 = load i32*, i32** %num_paint_methods.addr, align 8
  %14 = load i32, i32* %13, align 4
  %cmp5 = icmp slt i32 %12, %14
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %16, i64 2
  %data8 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx7, i32 0, i32 1
  %d_stringarray = bitcast %union._GimpParamData* %data8 to i8***
  %17 = load i8**, i8*** %d_stringarray, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %17, i64 %idxprom
  %18 = load i8*, i8** %arrayidx9, align 8
  %call10 = call noalias i8* @g_strdup(i8* %18)
  %19 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %19 to i64
  %20 = load i8***, i8**** %paint_methods.addr, align 8
  %21 = load i8**, i8*** %20, align 8
  %arrayidx12 = getelementptr inbounds i8*, i8** %21, i64 %idxprom11
  store i8* %call10, i8** %arrayidx12, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %23 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %24 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %23, i32 %24)
  %25 = load i32, i32* %success, align 4
  ret i32 %25
}

declare noalias i8* @g_malloc_n(i64, i64) #1

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind uwtable
define i8* @gimp_context_get_paint_method() #0 {
entry:
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %name = alloca i8*, align 8
  store i8* null, i8** %name, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i32 0, i32 0), i32* %nreturn_vals, i32 22)
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
  store i8* %call3, i8** %name, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %5 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %4, i32 %5)
  %6 = load i8*, i8** %name, align 8
  ret i8* %6
}

; Function Attrs: nounwind uwtable
define i32 @gimp_context_set_paint_method(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 22)
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
define i32 @gimp_context_get_foreground(%struct._GimpRGB* %foreground) #0 {
entry:
  %foreground.addr = alloca %struct._GimpRGB*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store %struct._GimpRGB* %foreground, %struct._GimpRGB** %foreground.addr, align 8
  store i32 1, i32* %success, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0), i32* %nreturn_vals, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %0 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %1, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpRGB*, %struct._GimpRGB** %foreground.addr, align 8
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %4, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_color = bitcast %union._GimpParamData* %data2 to %struct._GimpRGB*
  %5 = bitcast %struct._GimpRGB* %3 to i8*
  %6 = bitcast %struct._GimpRGB* %d_color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 32, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %8 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %7, i32 %8)
  %9 = load i32, i32* %success, align 4
  ret i32 %9
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @gimp_context_set_foreground(%struct._GimpRGB* %foreground) #0 {
entry:
  %foreground.addr = alloca %struct._GimpRGB*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store %struct._GimpRGB* %foreground, %struct._GimpRGB** %foreground.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %foreground.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0), i32* %nreturn_vals, i32 10, %struct._GimpRGB* %0, i32 22)
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
define i32 @gimp_context_get_background(%struct._GimpRGB* %background) #0 {
entry:
  %background.addr = alloca %struct._GimpRGB*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store %struct._GimpRGB* %background, %struct._GimpRGB** %background.addr, align 8
  store i32 1, i32* %success, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0), i32* %nreturn_vals, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %0 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %1, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpRGB*, %struct._GimpRGB** %background.addr, align 8
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %4, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_color = bitcast %union._GimpParamData* %data2 to %struct._GimpRGB*
  %5 = bitcast %struct._GimpRGB* %3 to i8*
  %6 = bitcast %struct._GimpRGB* %d_color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 32, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %8 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %7, i32 %8)
  %9 = load i32, i32* %success, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @gimp_context_set_background(%struct._GimpRGB* %background) #0 {
entry:
  %background.addr = alloca %struct._GimpRGB*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store %struct._GimpRGB* %background, %struct._GimpRGB** %background.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %background.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0), i32* %nreturn_vals, i32 10, %struct._GimpRGB* %0, i32 22)
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
define i32 @gimp_context_set_default_colors() #0 {
entry:
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 1, i32* %success, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0), i32* %nreturn_vals, i32 22)
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

; Function Attrs: nounwind uwtable
define i32 @gimp_context_swap_colors() #0 {
entry:
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 1, i32* %success, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i32 0, i32 0), i32* %nreturn_vals, i32 22)
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

; Function Attrs: nounwind uwtable
define double @gimp_context_get_opacity() #0 {
entry:
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %opacity = alloca double, align 8
  store double 0.000000e+00, double* %opacity, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0), i32* %nreturn_vals, i32 22)
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
  %d_float = bitcast %union._GimpParamData* %data2 to double*
  %3 = load double, double* %d_float, align 8
  store double %3, double* %opacity, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %5 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %4, i32 %5)
  %6 = load double, double* %opacity, align 8
  ret double %6
}

; Function Attrs: nounwind uwtable
define i32 @gimp_context_set_opacity(double %opacity) #0 {
entry:
  %opacity.addr = alloca double, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store double %opacity, double* %opacity.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load double, double* %opacity.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0), i32* %nreturn_vals, i32 3, double %0, i32 22)
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
define i32 @gimp_context_get_paint_mode() #0 {
entry:
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %paint_mode = alloca i32, align 4
  store i32 0, i32* %paint_mode, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i32 0, i32 0), i32* %nreturn_vals, i32 22)
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
  %d_int32 = bitcast %union._GimpParamData* %data2 to i32*
  %3 = load i32, i32* %d_int32, align 4
  store i32 %3, i32* %paint_mode, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %5 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %4, i32 %5)
  %6 = load i32, i32* %paint_mode, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @gimp_context_set_paint_mode(i32 %paint_mode) #0 {
entry:
  %paint_mode.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %paint_mode, i32* %paint_mode.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %paint_mode.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i32 0, i32 0), i32* %nreturn_vals, i32 0, i32 %0, i32 22)
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
define i8* @gimp_context_get_brush() #0 {
entry:
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %name = alloca i8*, align 8
  store i8* null, i8** %name, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0), i32* %nreturn_vals, i32 22)
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
  store i8* %call3, i8** %name, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %5 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %4, i32 %5)
  %6 = load i8*, i8** %name, align 8
  ret i8* %6
}

; Function Attrs: nounwind uwtable
define i32 @gimp_context_set_brush(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 22)
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
define double @gimp_context_get_brush_size() #0 {
entry:
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %size = alloca double, align 8
  store double 0.000000e+00, double* %size, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i32 0, i32 0), i32* %nreturn_vals, i32 22)
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
  %d_float = bitcast %union._GimpParamData* %data2 to double*
  %3 = load double, double* %d_float, align 8
  store double %3, double* %size, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %5 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %4, i32 %5)
  %6 = load double, double* %size, align 8
  ret double %6
}

; Function Attrs: nounwind uwtable
define i32 @gimp_context_set_brush_size(double %size) #0 {
entry:
  %size.addr = alloca double, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store double %size, double* %size.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load double, double* %size.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i32 0, i32 0), i32* %nreturn_vals, i32 3, double %0, i32 22)
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
define i32 @gimp_context_set_brush_default_size() #0 {
entry:
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 1, i32* %success, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i32 0, i32 0), i32* %nreturn_vals, i32 22)
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

; Function Attrs: nounwind uwtable
define double @gimp_context_get_brush_aspect_ratio() #0 {
entry:
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %aspect = alloca double, align 8
  store double 0.000000e+00, double* %aspect, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.21, i32 0, i32 0), i32* %nreturn_vals, i32 22)
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
  %d_float = bitcast %union._GimpParamData* %data2 to double*
  %3 = load double, double* %d_float, align 8
  store double %3, double* %aspect, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %5 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %4, i32 %5)
  %6 = load double, double* %aspect, align 8
  ret double %6
}

; Function Attrs: nounwind uwtable
define i32 @gimp_context_set_brush_aspect_ratio(double %aspect) #0 {
entry:
  %aspect.addr = alloca double, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store double %aspect, double* %aspect.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load double, double* %aspect.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.22, i32 0, i32 0), i32* %nreturn_vals, i32 3, double %0, i32 22)
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
define double @gimp_context_get_brush_angle() #0 {
entry:
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %angle = alloca double, align 8
  store double 0.000000e+00, double* %angle, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i32 0, i32 0), i32* %nreturn_vals, i32 22)
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
  %d_float = bitcast %union._GimpParamData* %data2 to double*
  %3 = load double, double* %d_float, align 8
  store double %3, double* %angle, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %5 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %4, i32 %5)
  %6 = load double, double* %angle, align 8
  ret double %6
}

; Function Attrs: nounwind uwtable
define i32 @gimp_context_set_brush_angle(double %angle) #0 {
entry:
  %angle.addr = alloca double, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store double %angle, double* %angle.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load double, double* %angle.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.24, i32 0, i32 0), i32* %nreturn_vals, i32 3, double %0, i32 22)
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
define i8* @gimp_context_get_dynamics() #0 {
entry:
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %name = alloca i8*, align 8
  store i8* null, i8** %name, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.25, i32 0, i32 0), i32* %nreturn_vals, i32 22)
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
  store i8* %call3, i8** %name, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %5 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %4, i32 %5)
  %6 = load i8*, i8** %name, align 8
  ret i8* %6
}

; Function Attrs: nounwind uwtable
define i32 @gimp_context_set_dynamics(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 22)
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
define i8* @gimp_context_get_pattern() #0 {
entry:
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %name = alloca i8*, align 8
  store i8* null, i8** %name, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i32 0, i32 0), i32* %nreturn_vals, i32 22)
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
  store i8* %call3, i8** %name, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %5 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %4, i32 %5)
  %6 = load i8*, i8** %name, align 8
  ret i8* %6
}

; Function Attrs: nounwind uwtable
define i32 @gimp_context_set_pattern(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 22)
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
define i8* @gimp_context_get_gradient() #0 {
entry:
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %name = alloca i8*, align 8
  store i8* null, i8** %name, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i32 0, i32 0), i32* %nreturn_vals, i32 22)
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
  store i8* %call3, i8** %name, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %5 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %4, i32 %5)
  %6 = load i8*, i8** %name, align 8
  ret i8* %6
}

; Function Attrs: nounwind uwtable
define i32 @gimp_context_set_gradient(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 22)
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
define i8* @gimp_context_get_palette() #0 {
entry:
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %name = alloca i8*, align 8
  store i8* null, i8** %name, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.31, i32 0, i32 0), i32* %nreturn_vals, i32 22)
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
  store i8* %call3, i8** %name, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %5 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %4, i32 %5)
  %6 = load i8*, i8** %name, align 8
  ret i8* %6
}

; Function Attrs: nounwind uwtable
define i32 @gimp_context_set_palette(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 22)
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
define i8* @gimp_context_get_font() #0 {
entry:
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %name = alloca i8*, align 8
  store i8* null, i8** %name, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.33, i32 0, i32 0), i32* %nreturn_vals, i32 22)
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
  store i8* %call3, i8** %name, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %5 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %4, i32 %5)
  %6 = load i8*, i8** %name, align 8
  ret i8* %6
}

; Function Attrs: nounwind uwtable
define i32 @gimp_context_set_font(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 22)
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
define i32 @gimp_context_get_antialias() #0 {
entry:
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %antialias = alloca i32, align 4
  store i32 0, i32* %antialias, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.35, i32 0, i32 0), i32* %nreturn_vals, i32 22)
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
  %d_int32 = bitcast %union._GimpParamData* %data2 to i32*
  %3 = load i32, i32* %d_int32, align 4
  store i32 %3, i32* %antialias, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %5 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %4, i32 %5)
  %6 = load i32, i32* %antialias, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @gimp_context_set_antialias(i32 %antialias) #0 {
entry:
  %antialias.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %antialias, i32* %antialias.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %antialias.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.36, i32 0, i32 0), i32* %nreturn_vals, i32 0, i32 %0, i32 22)
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
define i32 @gimp_context_get_feather() #0 {
entry:
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %feather = alloca i32, align 4
  store i32 0, i32* %feather, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.37, i32 0, i32 0), i32* %nreturn_vals, i32 22)
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
  %d_int32 = bitcast %union._GimpParamData* %data2 to i32*
  %3 = load i32, i32* %d_int32, align 4
  store i32 %3, i32* %feather, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %5 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %4, i32 %5)
  %6 = load i32, i32* %feather, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @gimp_context_set_feather(i32 %feather) #0 {
entry:
  %feather.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %feather, i32* %feather.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %feather.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.38, i32 0, i32 0), i32* %nreturn_vals, i32 0, i32 %0, i32 22)
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
define i32 @gimp_context_get_feather_radius(double* %feather_radius_x, double* %feather_radius_y) #0 {
entry:
  %feather_radius_x.addr = alloca double*, align 8
  %feather_radius_y.addr = alloca double*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store double* %feather_radius_x, double** %feather_radius_x.addr, align 8
  store double* %feather_radius_y, double** %feather_radius_y.addr, align 8
  store i32 1, i32* %success, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.39, i32 0, i32 0), i32* %nreturn_vals, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %0 = load double*, double** %feather_radius_x.addr, align 8
  store double 0.000000e+00, double* %0, align 8
  %1 = load double*, double** %feather_radius_y.addr, align 8
  store double 0.000000e+00, double* %1, align 8
  %2 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %3 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %3, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %4 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data2 to double*
  %6 = load double, double* %d_float, align 8
  %7 = load double*, double** %feather_radius_x.addr, align 8
  store double %6, double* %7, align 8
  %8 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx3 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %8, i64 2
  %data4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx3, i32 0, i32 1
  %d_float5 = bitcast %union._GimpParamData* %data4 to double*
  %9 = load double, double* %d_float5, align 8
  %10 = load double*, double** %feather_radius_y.addr, align 8
  store double %9, double* %10, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %12 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %11, i32 %12)
  %13 = load i32, i32* %success, align 4
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @gimp_context_set_feather_radius(double %feather_radius_x, double %feather_radius_y) #0 {
entry:
  %feather_radius_x.addr = alloca double, align 8
  %feather_radius_y.addr = alloca double, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store double %feather_radius_x, double* %feather_radius_x.addr, align 8
  store double %feather_radius_y, double* %feather_radius_y.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load double, double* %feather_radius_x.addr, align 8
  %1 = load double, double* %feather_radius_y.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.40, i32 0, i32 0), i32* %nreturn_vals, i32 3, double %0, i32 3, double %1, i32 22)
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
define i32 @gimp_context_get_sample_merged() #0 {
entry:
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %sample_merged = alloca i32, align 4
  store i32 0, i32* %sample_merged, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.41, i32 0, i32 0), i32* %nreturn_vals, i32 22)
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
  %d_int32 = bitcast %union._GimpParamData* %data2 to i32*
  %3 = load i32, i32* %d_int32, align 4
  store i32 %3, i32* %sample_merged, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %5 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %4, i32 %5)
  %6 = load i32, i32* %sample_merged, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @gimp_context_set_sample_merged(i32 %sample_merged) #0 {
entry:
  %sample_merged.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %sample_merged, i32* %sample_merged.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %sample_merged.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.42, i32 0, i32 0), i32* %nreturn_vals, i32 0, i32 %0, i32 22)
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
define i32 @gimp_context_get_sample_criterion() #0 {
entry:
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %sample_criterion = alloca i32, align 4
  store i32 0, i32* %sample_criterion, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.43, i32 0, i32 0), i32* %nreturn_vals, i32 22)
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
  %d_int32 = bitcast %union._GimpParamData* %data2 to i32*
  %3 = load i32, i32* %d_int32, align 4
  store i32 %3, i32* %sample_criterion, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %5 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %4, i32 %5)
  %6 = load i32, i32* %sample_criterion, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @gimp_context_set_sample_criterion(i32 %sample_criterion) #0 {
entry:
  %sample_criterion.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %sample_criterion, i32* %sample_criterion.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %sample_criterion.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.44, i32 0, i32 0), i32* %nreturn_vals, i32 0, i32 %0, i32 22)
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
define double @gimp_context_get_sample_threshold() #0 {
entry:
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %sample_threshold = alloca double, align 8
  store double 0.000000e+00, double* %sample_threshold, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.45, i32 0, i32 0), i32* %nreturn_vals, i32 22)
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
  %d_float = bitcast %union._GimpParamData* %data2 to double*
  %3 = load double, double* %d_float, align 8
  store double %3, double* %sample_threshold, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %5 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %4, i32 %5)
  %6 = load double, double* %sample_threshold, align 8
  ret double %6
}

; Function Attrs: nounwind uwtable
define i32 @gimp_context_set_sample_threshold(double %sample_threshold) #0 {
entry:
  %sample_threshold.addr = alloca double, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store double %sample_threshold, double* %sample_threshold.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load double, double* %sample_threshold.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.46, i32 0, i32 0), i32* %nreturn_vals, i32 3, double %0, i32 22)
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
define i32 @gimp_context_get_sample_threshold_int() #0 {
entry:
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %sample_threshold = alloca i32, align 4
  store i32 0, i32* %sample_threshold, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.47, i32 0, i32 0), i32* %nreturn_vals, i32 22)
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
  %d_int32 = bitcast %union._GimpParamData* %data2 to i32*
  %3 = load i32, i32* %d_int32, align 4
  store i32 %3, i32* %sample_threshold, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %5 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %4, i32 %5)
  %6 = load i32, i32* %sample_threshold, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @gimp_context_set_sample_threshold_int(i32 %sample_threshold) #0 {
entry:
  %sample_threshold.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %sample_threshold, i32* %sample_threshold.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %sample_threshold.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.48, i32 0, i32 0), i32* %nreturn_vals, i32 0, i32 %0, i32 22)
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
define i32 @gimp_context_get_sample_transparent() #0 {
entry:
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %sample_transparent = alloca i32, align 4
  store i32 0, i32* %sample_transparent, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.49, i32 0, i32 0), i32* %nreturn_vals, i32 22)
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
  %d_int32 = bitcast %union._GimpParamData* %data2 to i32*
  %3 = load i32, i32* %d_int32, align 4
  store i32 %3, i32* %sample_transparent, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %5 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %4, i32 %5)
  %6 = load i32, i32* %sample_transparent, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @gimp_context_set_sample_transparent(i32 %sample_transparent) #0 {
entry:
  %sample_transparent.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %sample_transparent, i32* %sample_transparent.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %sample_transparent.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.50, i32 0, i32 0), i32* %nreturn_vals, i32 0, i32 %0, i32 22)
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
define i32 @gimp_context_get_interpolation() #0 {
entry:
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %interpolation = alloca i32, align 4
  store i32 0, i32* %interpolation, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.51, i32 0, i32 0), i32* %nreturn_vals, i32 22)
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
  %d_int32 = bitcast %union._GimpParamData* %data2 to i32*
  %3 = load i32, i32* %d_int32, align 4
  store i32 %3, i32* %interpolation, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %5 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %4, i32 %5)
  %6 = load i32, i32* %interpolation, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @gimp_context_set_interpolation(i32 %interpolation) #0 {
entry:
  %interpolation.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %interpolation, i32* %interpolation.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %interpolation.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.52, i32 0, i32 0), i32* %nreturn_vals, i32 0, i32 %0, i32 22)
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
define i32 @gimp_context_get_transform_direction() #0 {
entry:
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %transform_direction = alloca i32, align 4
  store i32 0, i32* %transform_direction, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.53, i32 0, i32 0), i32* %nreturn_vals, i32 22)
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
  %d_int32 = bitcast %union._GimpParamData* %data2 to i32*
  %3 = load i32, i32* %d_int32, align 4
  store i32 %3, i32* %transform_direction, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %5 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %4, i32 %5)
  %6 = load i32, i32* %transform_direction, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @gimp_context_set_transform_direction(i32 %transform_direction) #0 {
entry:
  %transform_direction.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %transform_direction, i32* %transform_direction.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %transform_direction.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.54, i32 0, i32 0), i32* %nreturn_vals, i32 0, i32 %0, i32 22)
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
define i32 @gimp_context_get_transform_resize() #0 {
entry:
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %transform_resize = alloca i32, align 4
  store i32 0, i32* %transform_resize, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.55, i32 0, i32 0), i32* %nreturn_vals, i32 22)
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
  %d_int32 = bitcast %union._GimpParamData* %data2 to i32*
  %3 = load i32, i32* %d_int32, align 4
  store i32 %3, i32* %transform_resize, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %5 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %4, i32 %5)
  %6 = load i32, i32* %transform_resize, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @gimp_context_set_transform_resize(i32 %transform_resize) #0 {
entry:
  %transform_resize.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %transform_resize, i32* %transform_resize.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %transform_resize.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.56, i32 0, i32 0), i32* %nreturn_vals, i32 0, i32 %0, i32 22)
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
define i32 @gimp_context_get_transform_recursion() #0 {
entry:
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %transform_recursion = alloca i32, align 4
  store i32 0, i32* %transform_recursion, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.57, i32 0, i32 0), i32* %nreturn_vals, i32 22)
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
  %d_int32 = bitcast %union._GimpParamData* %data2 to i32*
  %3 = load i32, i32* %d_int32, align 4
  store i32 %3, i32* %transform_recursion, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %5 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %4, i32 %5)
  %6 = load i32, i32* %transform_recursion, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @gimp_context_set_transform_recursion(i32 %transform_recursion) #0 {
entry:
  %transform_recursion.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %transform_recursion, i32* %transform_recursion.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %transform_recursion.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.58, i32 0, i32 0), i32* %nreturn_vals, i32 0, i32 %0, i32 22)
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
define double @gimp_context_get_ink_size() #0 {
entry:
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %size = alloca double, align 8
  store double 0.000000e+00, double* %size, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.59, i32 0, i32 0), i32* %nreturn_vals, i32 22)
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
  %d_float = bitcast %union._GimpParamData* %data2 to double*
  %3 = load double, double* %d_float, align 8
  store double %3, double* %size, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %5 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %4, i32 %5)
  %6 = load double, double* %size, align 8
  ret double %6
}

; Function Attrs: nounwind uwtable
define i32 @gimp_context_set_ink_size(double %size) #0 {
entry:
  %size.addr = alloca double, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store double %size, double* %size.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load double, double* %size.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.60, i32 0, i32 0), i32* %nreturn_vals, i32 3, double %0, i32 22)
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
define double @gimp_context_get_ink_angle() #0 {
entry:
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %angle = alloca double, align 8
  store double 0.000000e+00, double* %angle, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.61, i32 0, i32 0), i32* %nreturn_vals, i32 22)
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
  %d_float = bitcast %union._GimpParamData* %data2 to double*
  %3 = load double, double* %d_float, align 8
  store double %3, double* %angle, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %5 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %4, i32 %5)
  %6 = load double, double* %angle, align 8
  ret double %6
}

; Function Attrs: nounwind uwtable
define i32 @gimp_context_set_ink_angle(double %angle) #0 {
entry:
  %angle.addr = alloca double, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store double %angle, double* %angle.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load double, double* %angle.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.62, i32 0, i32 0), i32* %nreturn_vals, i32 3, double %0, i32 22)
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
define double @gimp_context_get_ink_size_sensitivity() #0 {
entry:
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %size = alloca double, align 8
  store double 0.000000e+00, double* %size, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.63, i32 0, i32 0), i32* %nreturn_vals, i32 22)
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
  %d_float = bitcast %union._GimpParamData* %data2 to double*
  %3 = load double, double* %d_float, align 8
  store double %3, double* %size, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %5 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %4, i32 %5)
  %6 = load double, double* %size, align 8
  ret double %6
}

; Function Attrs: nounwind uwtable
define i32 @gimp_context_set_ink_size_sensitivity(double %size) #0 {
entry:
  %size.addr = alloca double, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store double %size, double* %size.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load double, double* %size.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.64, i32 0, i32 0), i32* %nreturn_vals, i32 3, double %0, i32 22)
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
define double @gimp_context_get_ink_tilt_sensitivity() #0 {
entry:
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %tilt = alloca double, align 8
  store double 0.000000e+00, double* %tilt, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.65, i32 0, i32 0), i32* %nreturn_vals, i32 22)
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
  %d_float = bitcast %union._GimpParamData* %data2 to double*
  %3 = load double, double* %d_float, align 8
  store double %3, double* %tilt, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %5 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %4, i32 %5)
  %6 = load double, double* %tilt, align 8
  ret double %6
}

; Function Attrs: nounwind uwtable
define i32 @gimp_context_set_ink_tilt_sensitivity(double %tilt) #0 {
entry:
  %tilt.addr = alloca double, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store double %tilt, double* %tilt.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load double, double* %tilt.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.66, i32 0, i32 0), i32* %nreturn_vals, i32 3, double %0, i32 22)
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
define double @gimp_context_get_ink_speed_sensitivity() #0 {
entry:
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %speed = alloca double, align 8
  store double 0.000000e+00, double* %speed, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.67, i32 0, i32 0), i32* %nreturn_vals, i32 22)
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
  %d_float = bitcast %union._GimpParamData* %data2 to double*
  %3 = load double, double* %d_float, align 8
  store double %3, double* %speed, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %5 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %4, i32 %5)
  %6 = load double, double* %speed, align 8
  ret double %6
}

; Function Attrs: nounwind uwtable
define i32 @gimp_context_set_ink_speed_sensitivity(double %speed) #0 {
entry:
  %speed.addr = alloca double, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store double %speed, double* %speed.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load double, double* %speed.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.68, i32 0, i32 0), i32* %nreturn_vals, i32 3, double %0, i32 22)
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
define i32 @gimp_context_get_ink_blob_type() #0 {
entry:
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %type = alloca i32, align 4
  store i32 0, i32* %type, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.69, i32 0, i32 0), i32* %nreturn_vals, i32 22)
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
  %d_int32 = bitcast %union._GimpParamData* %data2 to i32*
  %3 = load i32, i32* %d_int32, align 4
  store i32 %3, i32* %type, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %5 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %4, i32 %5)
  %6 = load i32, i32* %type, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @gimp_context_set_ink_blob_type(i32 %type) #0 {
entry:
  %type.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %type.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.70, i32 0, i32 0), i32* %nreturn_vals, i32 0, i32 %0, i32 22)
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
define double @gimp_context_get_ink_blob_aspect_ratio() #0 {
entry:
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %aspect = alloca double, align 8
  store double 0.000000e+00, double* %aspect, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.71, i32 0, i32 0), i32* %nreturn_vals, i32 22)
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
  %d_float = bitcast %union._GimpParamData* %data2 to double*
  %3 = load double, double* %d_float, align 8
  store double %3, double* %aspect, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %5 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %4, i32 %5)
  %6 = load double, double* %aspect, align 8
  ret double %6
}

; Function Attrs: nounwind uwtable
define i32 @gimp_context_set_ink_blob_aspect_ratio(double %aspect) #0 {
entry:
  %aspect.addr = alloca double, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store double %aspect, double* %aspect.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load double, double* %aspect.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.72, i32 0, i32 0), i32* %nreturn_vals, i32 3, double %0, i32 22)
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
define double @gimp_context_get_ink_blob_angle() #0 {
entry:
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %angle = alloca double, align 8
  store double 0.000000e+00, double* %angle, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.73, i32 0, i32 0), i32* %nreturn_vals, i32 22)
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
  %d_float = bitcast %union._GimpParamData* %data2 to double*
  %3 = load double, double* %d_float, align 8
  store double %3, double* %angle, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %5 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %4, i32 %5)
  %6 = load double, double* %angle, align 8
  ret double %6
}

; Function Attrs: nounwind uwtable
define i32 @gimp_context_set_ink_blob_angle(double %angle) #0 {
entry:
  %angle.addr = alloca double, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store double %angle, double* %angle.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load double, double* %angle.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.74, i32 0, i32 0), i32* %nreturn_vals, i32 3, double %0, i32 22)
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

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
