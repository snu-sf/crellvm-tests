; ModuleID = './libgimp/gimptexttool_pdb.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }

@.str = private unnamed_addr constant [19 x i8] c"gimp-text-fontname\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"gimp-text-get-extents-fontname\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"gimp-text\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"gimp-text-get-extents\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_text_fontname(i32 %image_ID, i32 %drawable_ID, double %x, double %y, i8* %text, i32 %border, i32 %antialias, double %size, i32 %size_type, i8* %fontname) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %drawable_ID.addr = alloca i32, align 4
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %text.addr = alloca i8*, align 8
  %border.addr = alloca i32, align 4
  %antialias.addr = alloca i32, align 4
  %size.addr = alloca double, align 8
  %size_type.addr = alloca i32, align 4
  %fontname.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %text_layer_ID = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store i8* %text, i8** %text.addr, align 8
  store i32 %border, i32* %border.addr, align 4
  store i32 %antialias, i32* %antialias.addr, align 4
  store double %size, double* %size.addr, align 8
  store i32 %size_type, i32* %size_type.addr, align 4
  store i8* %fontname, i8** %fontname.addr, align 8
  store i32 -1, i32* %text_layer_ID, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %drawable_ID.addr, align 4
  %2 = load double, double* %x.addr, align 8
  %3 = load double, double* %y.addr, align 8
  %4 = load i8*, i8** %text.addr, align 8
  %5 = load i32, i32* %border.addr, align 4
  %6 = load i32, i32* %antialias.addr, align 4
  %7 = load double, double* %size.addr, align 8
  %8 = load i32, i32* %size_type.addr, align 4
  %9 = load i8*, i8** %fontname.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 16, i32 %1, i32 3, double %2, i32 3, double %3, i32 4, i8* %4, i32 0, i32 %5, i32 0, i32 %6, i32 3, double %7, i32 0, i32 %8, i32 4, i8* %9, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %10 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %10, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %11 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %11, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %12, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_layer = bitcast %union._GimpParamData* %data2 to i32*
  %13 = load i32, i32* %d_layer, align 4
  store i32 %13, i32* %text_layer_ID, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %15 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %14, i32 %15)
  %16 = load i32, i32* %text_layer_ID, align 4
  ret i32 %16
}

declare %struct._GimpParam* @gimp_run_procedure(i8*, i32*, ...) #1

declare void @gimp_destroy_params(%struct._GimpParam*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_text_get_extents_fontname(i8* %text, double %size, i32 %size_type, i8* %fontname, i32* %width, i32* %height, i32* %ascent, i32* %descent) #0 {
entry:
  %text.addr = alloca i8*, align 8
  %size.addr = alloca double, align 8
  %size_type.addr = alloca i32, align 4
  %fontname.addr = alloca i8*, align 8
  %width.addr = alloca i32*, align 8
  %height.addr = alloca i32*, align 8
  %ascent.addr = alloca i32*, align 8
  %descent.addr = alloca i32*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %text, i8** %text.addr, align 8
  store double %size, double* %size.addr, align 8
  store i32 %size_type, i32* %size_type.addr, align 4
  store i8* %fontname, i8** %fontname.addr, align 8
  store i32* %width, i32** %width.addr, align 8
  store i32* %height, i32** %height.addr, align 8
  store i32* %ascent, i32** %ascent.addr, align 8
  store i32* %descent, i32** %descent.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %text.addr, align 8
  %1 = load double, double* %size.addr, align 8
  %2 = load i32, i32* %size_type.addr, align 4
  %3 = load i8*, i8** %fontname.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 3, double %1, i32 0, i32 %2, i32 4, i8* %3, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %4 = load i32*, i32** %width.addr, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32*, i32** %height.addr, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32*, i32** %ascent.addr, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32*, i32** %descent.addr, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %8, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %9 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %9, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %10 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %11, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data2 to i32*
  %12 = load i32, i32* %d_int32, align 4
  %13 = load i32*, i32** %width.addr, align 8
  store i32 %12, i32* %13, align 4
  %14 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx3 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %14, i64 2
  %data4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx3, i32 0, i32 1
  %d_int325 = bitcast %union._GimpParamData* %data4 to i32*
  %15 = load i32, i32* %d_int325, align 4
  %16 = load i32*, i32** %height.addr, align 8
  store i32 %15, i32* %16, align 4
  %17 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %17, i64 3
  %data7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx6, i32 0, i32 1
  %d_int328 = bitcast %union._GimpParamData* %data7 to i32*
  %18 = load i32, i32* %d_int328, align 4
  %19 = load i32*, i32** %ascent.addr, align 8
  store i32 %18, i32* %19, align 4
  %20 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx9 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %20, i64 4
  %data10 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx9, i32 0, i32 1
  %d_int3211 = bitcast %union._GimpParamData* %data10 to i32*
  %21 = load i32, i32* %d_int3211, align 4
  %22 = load i32*, i32** %descent.addr, align 8
  store i32 %21, i32* %22, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %23 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %24 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %23, i32 %24)
  %25 = load i32, i32* %success, align 4
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define i32 @gimp_text(i32 %image_ID, i32 %drawable_ID, double %x, double %y, i8* %text, i32 %border, i32 %antialias, double %size, i32 %size_type, i8* %foundry, i8* %family, i8* %weight, i8* %slant, i8* %set_width, i8* %spacing, i8* %registry, i8* %encoding) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %drawable_ID.addr = alloca i32, align 4
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %text.addr = alloca i8*, align 8
  %border.addr = alloca i32, align 4
  %antialias.addr = alloca i32, align 4
  %size.addr = alloca double, align 8
  %size_type.addr = alloca i32, align 4
  %foundry.addr = alloca i8*, align 8
  %family.addr = alloca i8*, align 8
  %weight.addr = alloca i8*, align 8
  %slant.addr = alloca i8*, align 8
  %set_width.addr = alloca i8*, align 8
  %spacing.addr = alloca i8*, align 8
  %registry.addr = alloca i8*, align 8
  %encoding.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %text_layer_ID = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store i8* %text, i8** %text.addr, align 8
  store i32 %border, i32* %border.addr, align 4
  store i32 %antialias, i32* %antialias.addr, align 4
  store double %size, double* %size.addr, align 8
  store i32 %size_type, i32* %size_type.addr, align 4
  store i8* %foundry, i8** %foundry.addr, align 8
  store i8* %family, i8** %family.addr, align 8
  store i8* %weight, i8** %weight.addr, align 8
  store i8* %slant, i8** %slant.addr, align 8
  store i8* %set_width, i8** %set_width.addr, align 8
  store i8* %spacing, i8** %spacing.addr, align 8
  store i8* %registry, i8** %registry.addr, align 8
  store i8* %encoding, i8** %encoding.addr, align 8
  store i32 -1, i32* %text_layer_ID, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %drawable_ID.addr, align 4
  %2 = load double, double* %x.addr, align 8
  %3 = load double, double* %y.addr, align 8
  %4 = load i8*, i8** %text.addr, align 8
  %5 = load i32, i32* %border.addr, align 4
  %6 = load i32, i32* %antialias.addr, align 4
  %7 = load double, double* %size.addr, align 8
  %8 = load i32, i32* %size_type.addr, align 4
  %9 = load i8*, i8** %foundry.addr, align 8
  %10 = load i8*, i8** %family.addr, align 8
  %11 = load i8*, i8** %weight.addr, align 8
  %12 = load i8*, i8** %slant.addr, align 8
  %13 = load i8*, i8** %set_width.addr, align 8
  %14 = load i8*, i8** %spacing.addr, align 8
  %15 = load i8*, i8** %registry.addr, align 8
  %16 = load i8*, i8** %encoding.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 16, i32 %1, i32 3, double %2, i32 3, double %3, i32 4, i8* %4, i32 0, i32 %5, i32 0, i32 %6, i32 3, double %7, i32 0, i32 %8, i32 4, i8* %9, i32 4, i8* %10, i32 4, i8* %11, i32 4, i8* %12, i32 4, i8* %13, i32 4, i8* %14, i32 4, i8* %15, i32 4, i8* %16, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %17 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %17, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %18 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %18, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %19 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %19, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_layer = bitcast %union._GimpParamData* %data2 to i32*
  %20 = load i32, i32* %d_layer, align 4
  store i32 %20, i32* %text_layer_ID, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %21 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %22 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %21, i32 %22)
  %23 = load i32, i32* %text_layer_ID, align 4
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define i32 @gimp_text_get_extents(i8* %text, double %size, i32 %size_type, i8* %foundry, i8* %family, i8* %weight, i8* %slant, i8* %set_width, i8* %spacing, i8* %registry, i8* %encoding, i32* %width, i32* %height, i32* %ascent, i32* %descent) #0 {
entry:
  %text.addr = alloca i8*, align 8
  %size.addr = alloca double, align 8
  %size_type.addr = alloca i32, align 4
  %foundry.addr = alloca i8*, align 8
  %family.addr = alloca i8*, align 8
  %weight.addr = alloca i8*, align 8
  %slant.addr = alloca i8*, align 8
  %set_width.addr = alloca i8*, align 8
  %spacing.addr = alloca i8*, align 8
  %registry.addr = alloca i8*, align 8
  %encoding.addr = alloca i8*, align 8
  %width.addr = alloca i32*, align 8
  %height.addr = alloca i32*, align 8
  %ascent.addr = alloca i32*, align 8
  %descent.addr = alloca i32*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %text, i8** %text.addr, align 8
  store double %size, double* %size.addr, align 8
  store i32 %size_type, i32* %size_type.addr, align 4
  store i8* %foundry, i8** %foundry.addr, align 8
  store i8* %family, i8** %family.addr, align 8
  store i8* %weight, i8** %weight.addr, align 8
  store i8* %slant, i8** %slant.addr, align 8
  store i8* %set_width, i8** %set_width.addr, align 8
  store i8* %spacing, i8** %spacing.addr, align 8
  store i8* %registry, i8** %registry.addr, align 8
  store i8* %encoding, i8** %encoding.addr, align 8
  store i32* %width, i32** %width.addr, align 8
  store i32* %height, i32** %height.addr, align 8
  store i32* %ascent, i32** %ascent.addr, align 8
  store i32* %descent, i32** %descent.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %text.addr, align 8
  %1 = load double, double* %size.addr, align 8
  %2 = load i32, i32* %size_type.addr, align 4
  %3 = load i8*, i8** %foundry.addr, align 8
  %4 = load i8*, i8** %family.addr, align 8
  %5 = load i8*, i8** %weight.addr, align 8
  %6 = load i8*, i8** %slant.addr, align 8
  %7 = load i8*, i8** %set_width.addr, align 8
  %8 = load i8*, i8** %spacing.addr, align 8
  %9 = load i8*, i8** %registry.addr, align 8
  %10 = load i8*, i8** %encoding.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 3, double %1, i32 0, i32 %2, i32 4, i8* %3, i32 4, i8* %4, i32 4, i8* %5, i32 4, i8* %6, i32 4, i8* %7, i32 4, i8* %8, i32 4, i8* %9, i32 4, i8* %10, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %11 = load i32*, i32** %width.addr, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32*, i32** %height.addr, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32*, i32** %ascent.addr, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32*, i32** %descent.addr, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %15, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %16 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %16, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %17 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %18 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %18, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data2 to i32*
  %19 = load i32, i32* %d_int32, align 4
  %20 = load i32*, i32** %width.addr, align 8
  store i32 %19, i32* %20, align 4
  %21 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx3 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %21, i64 2
  %data4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx3, i32 0, i32 1
  %d_int325 = bitcast %union._GimpParamData* %data4 to i32*
  %22 = load i32, i32* %d_int325, align 4
  %23 = load i32*, i32** %height.addr, align 8
  store i32 %22, i32* %23, align 4
  %24 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %24, i64 3
  %data7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx6, i32 0, i32 1
  %d_int328 = bitcast %union._GimpParamData* %data7 to i32*
  %25 = load i32, i32* %d_int328, align 4
  %26 = load i32*, i32** %ascent.addr, align 8
  store i32 %25, i32* %26, align 4
  %27 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx9 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %27, i64 4
  %data10 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx9, i32 0, i32 1
  %d_int3211 = bitcast %union._GimpParamData* %data10 to i32*
  %28 = load i32, i32* %d_int3211, align 4
  %29 = load i32*, i32** %descent.addr, align 8
  store i32 %28, i32* %29, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %30 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %31 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %30, i32 %31)
  %32 = load i32, i32* %success, align 4
  ret i32 %32
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
