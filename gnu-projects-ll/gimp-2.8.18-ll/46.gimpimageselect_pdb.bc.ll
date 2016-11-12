; ModuleID = './libgimp/gimpimageselect_pdb.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }

@.str = private unnamed_addr constant [24 x i8] c"gimp-image-select-color\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"gimp-image-select-contiguous-color\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"gimp-image-select-rectangle\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"gimp-image-select-round-rectangle\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"gimp-image-select-ellipse\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"gimp-image-select-polygon\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"gimp-image-select-item\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_image_select_color(i32 %image_ID, i32 %operation, i32 %drawable_ID, %struct._GimpRGB* %color) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %operation.addr = alloca i32, align 4
  %drawable_ID.addr = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %operation, i32* %operation.addr, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %operation.addr, align 4
  %2 = load i32, i32* %drawable_ID.addr, align 4
  %3 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 0, i32 %1, i32 16, i32 %2, i32 10, %struct._GimpRGB* %3, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %4, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %5 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %5, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %6 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %7 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %6, i32 %7)
  %8 = load i32, i32* %success, align 4
  ret i32 %8
}

declare %struct._GimpParam* @gimp_run_procedure(i8*, i32*, ...) #1

declare void @gimp_destroy_params(%struct._GimpParam*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_image_select_contiguous_color(i32 %image_ID, i32 %operation, i32 %drawable_ID, double %x, double %y) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %operation.addr = alloca i32, align 4
  %drawable_ID.addr = alloca i32, align 4
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %operation, i32* %operation.addr, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %operation.addr, align 4
  %2 = load i32, i32* %drawable_ID.addr, align 4
  %3 = load double, double* %x.addr, align 8
  %4 = load double, double* %y.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 0, i32 %1, i32 16, i32 %2, i32 3, double %3, i32 3, double %4, i32 22)
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

; Function Attrs: nounwind uwtable
define i32 @gimp_image_select_rectangle(i32 %image_ID, i32 %operation, double %x, double %y, double %width, double %height) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %operation.addr = alloca i32, align 4
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %width.addr = alloca double, align 8
  %height.addr = alloca double, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %operation, i32* %operation.addr, align 4
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store double %width, double* %width.addr, align 8
  store double %height, double* %height.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %operation.addr, align 4
  %2 = load double, double* %x.addr, align 8
  %3 = load double, double* %y.addr, align 8
  %4 = load double, double* %width.addr, align 8
  %5 = load double, double* %height.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 0, i32 %1, i32 3, double %2, i32 3, double %3, i32 3, double %4, i32 3, double %5, i32 22)
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

; Function Attrs: nounwind uwtable
define i32 @gimp_image_select_round_rectangle(i32 %image_ID, i32 %operation, double %x, double %y, double %width, double %height, double %corner_radius_x, double %corner_radius_y) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %operation.addr = alloca i32, align 4
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %width.addr = alloca double, align 8
  %height.addr = alloca double, align 8
  %corner_radius_x.addr = alloca double, align 8
  %corner_radius_y.addr = alloca double, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %operation, i32* %operation.addr, align 4
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store double %width, double* %width.addr, align 8
  store double %height, double* %height.addr, align 8
  store double %corner_radius_x, double* %corner_radius_x.addr, align 8
  store double %corner_radius_y, double* %corner_radius_y.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %operation.addr, align 4
  %2 = load double, double* %x.addr, align 8
  %3 = load double, double* %y.addr, align 8
  %4 = load double, double* %width.addr, align 8
  %5 = load double, double* %height.addr, align 8
  %6 = load double, double* %corner_radius_x.addr, align 8
  %7 = load double, double* %corner_radius_y.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 0, i32 %1, i32 3, double %2, i32 3, double %3, i32 3, double %4, i32 3, double %5, i32 3, double %6, i32 3, double %7, i32 22)
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
define i32 @gimp_image_select_ellipse(i32 %image_ID, i32 %operation, double %x, double %y, double %width, double %height) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %operation.addr = alloca i32, align 4
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %width.addr = alloca double, align 8
  %height.addr = alloca double, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %operation, i32* %operation.addr, align 4
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store double %width, double* %width.addr, align 8
  store double %height, double* %height.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %operation.addr, align 4
  %2 = load double, double* %x.addr, align 8
  %3 = load double, double* %y.addr, align 8
  %4 = load double, double* %width.addr, align 8
  %5 = load double, double* %height.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 0, i32 %1, i32 3, double %2, i32 3, double %3, i32 3, double %4, i32 3, double %5, i32 22)
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

; Function Attrs: nounwind uwtable
define i32 @gimp_image_select_polygon(i32 %image_ID, i32 %operation, i32 %num_segs, double* %segs) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %operation.addr = alloca i32, align 4
  %num_segs.addr = alloca i32, align 4
  %segs.addr = alloca double*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %operation, i32* %operation.addr, align 4
  store i32 %num_segs, i32* %num_segs.addr, align 4
  store double* %segs, double** %segs.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %operation.addr, align 4
  %2 = load i32, i32* %num_segs.addr, align 4
  %3 = load double*, double** %segs.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 0, i32 %1, i32 0, i32 %2, i32 8, double* %3, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %4, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %5 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %5, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %6 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %7 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %6, i32 %7)
  %8 = load i32, i32* %success, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @gimp_image_select_item(i32 %image_ID, i32 %operation, i32 %item_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %operation.addr = alloca i32, align 4
  %item_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %operation, i32* %operation.addr, align 4
  store i32 %item_ID, i32* %item_ID.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %operation.addr, align 4
  %2 = load i32, i32* %item_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 0, i32 %1, i32 11, i32 %2, i32 22)
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

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
