; ModuleID = './libgimp/gimptextlayer_pdb.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }

@.str = private unnamed_addr constant [20 x i8] c"gimp-text-layer-new\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"gimp-text-layer-get-text\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"gimp-text-layer-set-text\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"gimp-text-layer-get-markup\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"gimp-text-layer-get-font\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"gimp-text-layer-set-font\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"gimp-text-layer-get-font-size\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"gimp-text-layer-set-font-size\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"gimp-text-layer-get-antialias\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"gimp-text-layer-set-antialias\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"gimp-text-layer-get-hint-style\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"gimp-text-layer-set-hint-style\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"gimp-text-layer-get-kerning\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"gimp-text-layer-set-kerning\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"gimp-text-layer-get-language\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"gimp-text-layer-set-language\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"gimp-text-layer-get-base-direction\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"gimp-text-layer-set-base-direction\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"gimp-text-layer-get-justification\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"gimp-text-layer-set-justification\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"gimp-text-layer-get-color\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"gimp-text-layer-set-color\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"gimp-text-layer-get-indent\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"gimp-text-layer-set-indent\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"gimp-text-layer-get-line-spacing\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"gimp-text-layer-set-line-spacing\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"gimp-text-layer-get-letter-spacing\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"gimp-text-layer-set-letter-spacing\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"gimp-text-layer-resize\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"gimp-text-layer-get-hinting\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"gimp-text-layer-set-hinting\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_text_layer_new(i32 %image_ID, i8* %text, i8* %fontname, double %size, i32 %unit) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %text.addr = alloca i8*, align 8
  %fontname.addr = alloca i8*, align 8
  %size.addr = alloca double, align 8
  %unit.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %layer_ID = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i8* %text, i8** %text.addr, align 8
  store i8* %fontname, i8** %fontname.addr, align 8
  store double %size, double* %size.addr, align 8
  store i32 %unit, i32* %unit.addr, align 4
  store i32 -1, i32* %layer_ID, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i8*, i8** %text.addr, align 8
  %2 = load i8*, i8** %fontname.addr, align 8
  %3 = load double, double* %size.addr, align 8
  %4 = load i32, i32* %unit.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 4, i8* %1, i32 4, i8* %2, i32 3, double %3, i32 0, i32 %4, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %6 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %6, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %7, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_layer = bitcast %union._GimpParamData* %data2 to i32*
  %8 = load i32, i32* %d_layer, align 4
  store i32 %8, i32* %layer_ID, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %10 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %9, i32 %10)
  %11 = load i32, i32* %layer_ID, align 4
  ret i32 %11
}

declare %struct._GimpParam* @gimp_run_procedure(i8*, i32*, ...) #1

declare void @gimp_destroy_params(%struct._GimpParam*, i32) #1

; Function Attrs: nounwind uwtable
define i8* @gimp_text_layer_get_text(i32 %layer_ID) #0 {
entry:
  %layer_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %text = alloca i8*, align 8
  store i32 %layer_ID, i32* %layer_ID.addr, align 4
  store i8* null, i8** %text, align 8
  %0 = load i32, i32* %layer_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0), i32* %nreturn_vals, i32 14, i32 %0, i32 22)
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
  %d_string = bitcast %union._GimpParamData* %data2 to i8**
  %4 = load i8*, i8** %d_string, align 8
  %call3 = call noalias i8* @g_strdup(i8* %4)
  store i8* %call3, i8** %text, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i8*, i8** %text, align 8
  ret i8* %7
}

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_text_layer_set_text(i32 %layer_ID, i8* %text) #0 {
entry:
  %layer_ID.addr = alloca i32, align 4
  %text.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %layer_ID, i32* %layer_ID.addr, align 4
  store i8* %text, i8** %text.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %layer_ID.addr, align 4
  %1 = load i8*, i8** %text.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0), i32* %nreturn_vals, i32 14, i32 %0, i32 4, i8* %1, i32 22)
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
define i8* @gimp_text_layer_get_markup(i32 %layer_ID) #0 {
entry:
  %layer_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %markup = alloca i8*, align 8
  store i32 %layer_ID, i32* %layer_ID.addr, align 4
  store i8* null, i8** %markup, align 8
  %0 = load i32, i32* %layer_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i32* %nreturn_vals, i32 14, i32 %0, i32 22)
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
  %d_string = bitcast %union._GimpParamData* %data2 to i8**
  %4 = load i8*, i8** %d_string, align 8
  %call3 = call noalias i8* @g_strdup(i8* %4)
  store i8* %call3, i8** %markup, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i8*, i8** %markup, align 8
  ret i8* %7
}

; Function Attrs: nounwind uwtable
define i8* @gimp_text_layer_get_font(i32 %layer_ID) #0 {
entry:
  %layer_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %font = alloca i8*, align 8
  store i32 %layer_ID, i32* %layer_ID.addr, align 4
  store i8* null, i8** %font, align 8
  %0 = load i32, i32* %layer_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0), i32* %nreturn_vals, i32 14, i32 %0, i32 22)
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
  %d_string = bitcast %union._GimpParamData* %data2 to i8**
  %4 = load i8*, i8** %d_string, align 8
  %call3 = call noalias i8* @g_strdup(i8* %4)
  store i8* %call3, i8** %font, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i8*, i8** %font, align 8
  ret i8* %7
}

; Function Attrs: nounwind uwtable
define i32 @gimp_text_layer_set_font(i32 %layer_ID, i8* %font) #0 {
entry:
  %layer_ID.addr = alloca i32, align 4
  %font.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %layer_ID, i32* %layer_ID.addr, align 4
  store i8* %font, i8** %font.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %layer_ID.addr, align 4
  %1 = load i8*, i8** %font.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), i32* %nreturn_vals, i32 14, i32 %0, i32 4, i8* %1, i32 22)
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
define double @gimp_text_layer_get_font_size(i32 %layer_ID, i32* %unit) #0 {
entry:
  %layer_ID.addr = alloca i32, align 4
  %unit.addr = alloca i32*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %font_size = alloca double, align 8
  store i32 %layer_ID, i32* %layer_ID.addr, align 4
  store i32* %unit, i32** %unit.addr, align 8
  store double 0.000000e+00, double* %font_size, align 8
  %0 = load i32, i32* %layer_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0), i32* %nreturn_vals, i32 14, i32 %0, i32 22)
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
  %d_float = bitcast %union._GimpParamData* %data2 to double*
  %4 = load double, double* %d_float, align 8
  store double %4, double* %font_size, align 8
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx3 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 2
  %data4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx3, i32 0, i32 1
  %d_unit = bitcast %union._GimpParamData* %data4 to i32*
  %6 = load i32, i32* %d_unit, align 4
  %7 = load i32*, i32** %unit.addr, align 8
  store i32 %6, i32* %7, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %9 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %8, i32 %9)
  %10 = load double, double* %font_size, align 8
  ret double %10
}

; Function Attrs: nounwind uwtable
define i32 @gimp_text_layer_set_font_size(i32 %layer_ID, double %font_size, i32 %unit) #0 {
entry:
  %layer_ID.addr = alloca i32, align 4
  %font_size.addr = alloca double, align 8
  %unit.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %layer_ID, i32* %layer_ID.addr, align 4
  store double %font_size, double* %font_size.addr, align 8
  store i32 %unit, i32* %unit.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %layer_ID.addr, align 4
  %1 = load double, double* %font_size.addr, align 8
  %2 = load i32, i32* %unit.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i32 0, i32 0), i32* %nreturn_vals, i32 14, i32 %0, i32 3, double %1, i32 0, i32 %2, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %3 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %3, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
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

; Function Attrs: nounwind uwtable
define i32 @gimp_text_layer_get_antialias(i32 %layer_ID) #0 {
entry:
  %layer_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %antialias = alloca i32, align 4
  store i32 %layer_ID, i32* %layer_ID.addr, align 4
  store i32 0, i32* %antialias, align 4
  %0 = load i32, i32* %layer_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0), i32* %nreturn_vals, i32 14, i32 %0, i32 22)
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
  store i32 %4, i32* %antialias, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i32, i32* %antialias, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @gimp_text_layer_set_antialias(i32 %layer_ID, i32 %antialias) #0 {
entry:
  %layer_ID.addr = alloca i32, align 4
  %antialias.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %layer_ID, i32* %layer_ID.addr, align 4
  store i32 %antialias, i32* %antialias.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %layer_ID.addr, align 4
  %1 = load i32, i32* %antialias.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0), i32* %nreturn_vals, i32 14, i32 %0, i32 0, i32 %1, i32 22)
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
define i32 @gimp_text_layer_get_hint_style(i32 %layer_ID) #0 {
entry:
  %layer_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %style = alloca i32, align 4
  store i32 %layer_ID, i32* %layer_ID.addr, align 4
  store i32 0, i32* %style, align 4
  %0 = load i32, i32* %layer_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i32 0, i32 0), i32* %nreturn_vals, i32 14, i32 %0, i32 22)
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
  store i32 %4, i32* %style, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i32, i32* %style, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @gimp_text_layer_set_hint_style(i32 %layer_ID, i32 %style) #0 {
entry:
  %layer_ID.addr = alloca i32, align 4
  %style.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %layer_ID, i32* %layer_ID.addr, align 4
  store i32 %style, i32* %style.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %layer_ID.addr, align 4
  %1 = load i32, i32* %style.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0), i32* %nreturn_vals, i32 14, i32 %0, i32 0, i32 %1, i32 22)
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
define i32 @gimp_text_layer_get_kerning(i32 %layer_ID) #0 {
entry:
  %layer_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %kerning = alloca i32, align 4
  store i32 %layer_ID, i32* %layer_ID.addr, align 4
  store i32 0, i32* %kerning, align 4
  %0 = load i32, i32* %layer_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i32 0, i32 0), i32* %nreturn_vals, i32 14, i32 %0, i32 22)
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
  store i32 %4, i32* %kerning, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i32, i32* %kerning, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @gimp_text_layer_set_kerning(i32 %layer_ID, i32 %kerning) #0 {
entry:
  %layer_ID.addr = alloca i32, align 4
  %kerning.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %layer_ID, i32* %layer_ID.addr, align 4
  store i32 %kerning, i32* %kerning.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %layer_ID.addr, align 4
  %1 = load i32, i32* %kerning.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i32 0, i32 0), i32* %nreturn_vals, i32 14, i32 %0, i32 0, i32 %1, i32 22)
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
define i8* @gimp_text_layer_get_language(i32 %layer_ID) #0 {
entry:
  %layer_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %language = alloca i8*, align 8
  store i32 %layer_ID, i32* %layer_ID.addr, align 4
  store i8* null, i8** %language, align 8
  %0 = load i32, i32* %layer_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0), i32* %nreturn_vals, i32 14, i32 %0, i32 22)
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
  %d_string = bitcast %union._GimpParamData* %data2 to i8**
  %4 = load i8*, i8** %d_string, align 8
  %call3 = call noalias i8* @g_strdup(i8* %4)
  store i8* %call3, i8** %language, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i8*, i8** %language, align 8
  ret i8* %7
}

; Function Attrs: nounwind uwtable
define i32 @gimp_text_layer_set_language(i32 %layer_ID, i8* %language) #0 {
entry:
  %layer_ID.addr = alloca i32, align 4
  %language.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %layer_ID, i32* %layer_ID.addr, align 4
  store i8* %language, i8** %language.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %layer_ID.addr, align 4
  %1 = load i8*, i8** %language.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i32 0, i32 0), i32* %nreturn_vals, i32 14, i32 %0, i32 4, i8* %1, i32 22)
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
define i32 @gimp_text_layer_get_base_direction(i32 %layer_ID) #0 {
entry:
  %layer_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %direction = alloca i32, align 4
  store i32 %layer_ID, i32* %layer_ID.addr, align 4
  store i32 0, i32* %direction, align 4
  %0 = load i32, i32* %layer_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i32 0, i32 0), i32* %nreturn_vals, i32 14, i32 %0, i32 22)
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
  store i32 %4, i32* %direction, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i32, i32* %direction, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @gimp_text_layer_set_base_direction(i32 %layer_ID, i32 %direction) #0 {
entry:
  %layer_ID.addr = alloca i32, align 4
  %direction.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %layer_ID, i32* %layer_ID.addr, align 4
  store i32 %direction, i32* %direction.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %layer_ID.addr, align 4
  %1 = load i32, i32* %direction.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i32 0, i32 0), i32* %nreturn_vals, i32 14, i32 %0, i32 0, i32 %1, i32 22)
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
define i32 @gimp_text_layer_get_justification(i32 %layer_ID) #0 {
entry:
  %layer_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %justify = alloca i32, align 4
  store i32 %layer_ID, i32* %layer_ID.addr, align 4
  store i32 0, i32* %justify, align 4
  %0 = load i32, i32* %layer_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i32 0, i32 0), i32* %nreturn_vals, i32 14, i32 %0, i32 22)
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
  store i32 %4, i32* %justify, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i32, i32* %justify, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @gimp_text_layer_set_justification(i32 %layer_ID, i32 %justify) #0 {
entry:
  %layer_ID.addr = alloca i32, align 4
  %justify.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %layer_ID, i32* %layer_ID.addr, align 4
  store i32 %justify, i32* %justify.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %layer_ID.addr, align 4
  %1 = load i32, i32* %justify.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i32 0, i32 0), i32* %nreturn_vals, i32 14, i32 %0, i32 0, i32 %1, i32 22)
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
define i32 @gimp_text_layer_get_color(i32 %layer_ID, %struct._GimpRGB* %color) #0 {
entry:
  %layer_ID.addr = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %layer_ID, i32* %layer_ID.addr, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %layer_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i32 0, i32 0), i32* %nreturn_vals, i32 14, i32 %0, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %1 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %1, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %2 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %2, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_color = bitcast %union._GimpParamData* %data2 to %struct._GimpRGB*
  %6 = bitcast %struct._GimpRGB* %4 to i8*
  %7 = bitcast %struct._GimpRGB* %d_color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 32, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %9 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %8, i32 %9)
  %10 = load i32, i32* %success, align 4
  ret i32 %10
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @gimp_text_layer_set_color(i32 %layer_ID, %struct._GimpRGB* %color) #0 {
entry:
  %layer_ID.addr = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %layer_ID, i32* %layer_ID.addr, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %layer_ID.addr, align 4
  %1 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i32 0, i32 0), i32* %nreturn_vals, i32 14, i32 %0, i32 10, %struct._GimpRGB* %1, i32 22)
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
define double @gimp_text_layer_get_indent(i32 %layer_ID) #0 {
entry:
  %layer_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %indent = alloca double, align 8
  store i32 %layer_ID, i32* %layer_ID.addr, align 4
  store double 0.000000e+00, double* %indent, align 8
  %0 = load i32, i32* %layer_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i32 0, i32 0), i32* %nreturn_vals, i32 14, i32 %0, i32 22)
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
  %d_float = bitcast %union._GimpParamData* %data2 to double*
  %4 = load double, double* %d_float, align 8
  store double %4, double* %indent, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load double, double* %indent, align 8
  ret double %7
}

; Function Attrs: nounwind uwtable
define i32 @gimp_text_layer_set_indent(i32 %layer_ID, double %indent) #0 {
entry:
  %layer_ID.addr = alloca i32, align 4
  %indent.addr = alloca double, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %layer_ID, i32* %layer_ID.addr, align 4
  store double %indent, double* %indent.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %layer_ID.addr, align 4
  %1 = load double, double* %indent.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i32 0, i32 0), i32* %nreturn_vals, i32 14, i32 %0, i32 3, double %1, i32 22)
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
define double @gimp_text_layer_get_line_spacing(i32 %layer_ID) #0 {
entry:
  %layer_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %line_spacing = alloca double, align 8
  store i32 %layer_ID, i32* %layer_ID.addr, align 4
  store double 0.000000e+00, double* %line_spacing, align 8
  %0 = load i32, i32* %layer_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i32 0, i32 0), i32* %nreturn_vals, i32 14, i32 %0, i32 22)
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
  %d_float = bitcast %union._GimpParamData* %data2 to double*
  %4 = load double, double* %d_float, align 8
  store double %4, double* %line_spacing, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load double, double* %line_spacing, align 8
  ret double %7
}

; Function Attrs: nounwind uwtable
define i32 @gimp_text_layer_set_line_spacing(i32 %layer_ID, double %line_spacing) #0 {
entry:
  %layer_ID.addr = alloca i32, align 4
  %line_spacing.addr = alloca double, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %layer_ID, i32* %layer_ID.addr, align 4
  store double %line_spacing, double* %line_spacing.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %layer_ID.addr, align 4
  %1 = load double, double* %line_spacing.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i32 0, i32 0), i32* %nreturn_vals, i32 14, i32 %0, i32 3, double %1, i32 22)
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
define double @gimp_text_layer_get_letter_spacing(i32 %layer_ID) #0 {
entry:
  %layer_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %letter_spacing = alloca double, align 8
  store i32 %layer_ID, i32* %layer_ID.addr, align 4
  store double 0.000000e+00, double* %letter_spacing, align 8
  %0 = load i32, i32* %layer_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i32 0, i32 0), i32* %nreturn_vals, i32 14, i32 %0, i32 22)
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
  %d_float = bitcast %union._GimpParamData* %data2 to double*
  %4 = load double, double* %d_float, align 8
  store double %4, double* %letter_spacing, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load double, double* %letter_spacing, align 8
  ret double %7
}

; Function Attrs: nounwind uwtable
define i32 @gimp_text_layer_set_letter_spacing(i32 %layer_ID, double %letter_spacing) #0 {
entry:
  %layer_ID.addr = alloca i32, align 4
  %letter_spacing.addr = alloca double, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %layer_ID, i32* %layer_ID.addr, align 4
  store double %letter_spacing, double* %letter_spacing.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %layer_ID.addr, align 4
  %1 = load double, double* %letter_spacing.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.27, i32 0, i32 0), i32* %nreturn_vals, i32 14, i32 %0, i32 3, double %1, i32 22)
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
define i32 @gimp_text_layer_resize(i32 %layer_ID, double %width, double %height) #0 {
entry:
  %layer_ID.addr = alloca i32, align 4
  %width.addr = alloca double, align 8
  %height.addr = alloca double, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %layer_ID, i32* %layer_ID.addr, align 4
  store double %width, double* %width.addr, align 8
  store double %height, double* %height.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %layer_ID.addr, align 4
  %1 = load double, double* %width.addr, align 8
  %2 = load double, double* %height.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i32 0, i32 0), i32* %nreturn_vals, i32 14, i32 %0, i32 3, double %1, i32 3, double %2, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %3 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %3, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
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

; Function Attrs: nounwind uwtable
define i32 @gimp_text_layer_get_hinting(i32 %layer_ID, i32* %autohint) #0 {
entry:
  %layer_ID.addr = alloca i32, align 4
  %autohint.addr = alloca i32*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %hinting = alloca i32, align 4
  store i32 %layer_ID, i32* %layer_ID.addr, align 4
  store i32* %autohint, i32** %autohint.addr, align 8
  store i32 0, i32* %hinting, align 4
  %0 = load i32, i32* %layer_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i32 0, i32 0), i32* %nreturn_vals, i32 14, i32 %0, i32 22)
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
  store i32 %4, i32* %hinting, align 4
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx3 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 2
  %data4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx3, i32 0, i32 1
  %d_int325 = bitcast %union._GimpParamData* %data4 to i32*
  %6 = load i32, i32* %d_int325, align 4
  %7 = load i32*, i32** %autohint.addr, align 8
  store i32 %6, i32* %7, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %9 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %8, i32 %9)
  %10 = load i32, i32* %hinting, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @gimp_text_layer_set_hinting(i32 %layer_ID, i32 %hinting, i32 %autohint) #0 {
entry:
  %layer_ID.addr = alloca i32, align 4
  %hinting.addr = alloca i32, align 4
  %autohint.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %layer_ID, i32* %layer_ID.addr, align 4
  store i32 %hinting, i32* %hinting.addr, align 4
  store i32 %autohint, i32* %autohint.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %layer_ID.addr, align 4
  %1 = load i32, i32* %hinting.addr, align 4
  %2 = load i32, i32* %autohint.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.30, i32 0, i32 0), i32* %nreturn_vals, i32 14, i32 %0, i32 0, i32 %1, i32 0, i32 %2, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %3 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %3, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
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
