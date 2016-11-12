; ModuleID = './libgimp/gimpbrushselect_pdb.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }

@.str = private unnamed_addr constant [19 x i8] c"gimp-brushes-popup\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"gimp-brushes-close-popup\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"gimp-brushes-set-popup\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_brushes_popup(i8* %brush_callback, i8* %popup_title, i8* %initial_brush, double %opacity, i32 %spacing, i32 %paint_mode) #0 {
entry:
  %brush_callback.addr = alloca i8*, align 8
  %popup_title.addr = alloca i8*, align 8
  %initial_brush.addr = alloca i8*, align 8
  %opacity.addr = alloca double, align 8
  %spacing.addr = alloca i32, align 4
  %paint_mode.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %brush_callback, i8** %brush_callback.addr, align 8
  store i8* %popup_title, i8** %popup_title.addr, align 8
  store i8* %initial_brush, i8** %initial_brush.addr, align 8
  store double %opacity, double* %opacity.addr, align 8
  store i32 %spacing, i32* %spacing.addr, align 4
  store i32 %paint_mode, i32* %paint_mode.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %brush_callback.addr, align 8
  %1 = load i8*, i8** %popup_title.addr, align 8
  %2 = load i8*, i8** %initial_brush.addr, align 8
  %3 = load double, double* %opacity.addr, align 8
  %4 = load i32, i32* %spacing.addr, align 4
  %5 = load i32, i32* %paint_mode.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 4, i8* %1, i32 4, i8* %2, i32 3, double %3, i32 0, i32 %4, i32 0, i32 %5, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %6 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %6, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %7 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %7, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %8 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %9 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %8, i32 %9)
  %10 = load i32, i32* %success, align 4
  ret i32 %10
}

declare %struct._GimpParam* @gimp_run_procedure(i8*, i32*, ...) #1

declare void @gimp_destroy_params(%struct._GimpParam*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_brushes_close_popup(i8* %brush_callback) #0 {
entry:
  %brush_callback.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %brush_callback, i8** %brush_callback.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %brush_callback.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 22)
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
define i32 @gimp_brushes_set_popup(i8* %brush_callback, i8* %brush_name, double %opacity, i32 %spacing, i32 %paint_mode) #0 {
entry:
  %brush_callback.addr = alloca i8*, align 8
  %brush_name.addr = alloca i8*, align 8
  %opacity.addr = alloca double, align 8
  %spacing.addr = alloca i32, align 4
  %paint_mode.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %brush_callback, i8** %brush_callback.addr, align 8
  store i8* %brush_name, i8** %brush_name.addr, align 8
  store double %opacity, double* %opacity.addr, align 8
  store i32 %spacing, i32* %spacing.addr, align 4
  store i32 %paint_mode, i32* %paint_mode.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %brush_callback.addr, align 8
  %1 = load i8*, i8** %brush_name.addr, align 8
  %2 = load double, double* %opacity.addr, align 8
  %3 = load i32, i32* %spacing.addr, align 4
  %4 = load i32, i32* %paint_mode.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 4, i8* %1, i32 3, double %2, i32 0, i32 %3, i32 0, i32 %4, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %6 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %6, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %7 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %8 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %7, i32 %8)
  %9 = load i32, i32* %success, align 4
  ret i32 %9
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
