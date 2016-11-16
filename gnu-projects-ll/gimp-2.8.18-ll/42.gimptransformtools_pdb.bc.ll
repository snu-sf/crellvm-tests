; ModuleID = './libgimp/gimptransformtools_pdb.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }

@.str = private unnamed_addr constant [10 x i8] c"gimp-flip\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"gimp-perspective\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"gimp-rotate\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"gimp-scale\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"gimp-shear\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"gimp-transform-2d\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_flip(i32 %drawable_ID, i32 %flip_type) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %flip_type.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %ret_drawable_ID = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %flip_type, i32* %flip_type.addr, align 4
  store i32 -1, i32* %ret_drawable_ID, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i32, i32* %flip_type.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 0, i32 %1, i32 22)
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
  %d_drawable = bitcast %union._GimpParamData* %data2 to i32*
  %5 = load i32, i32* %d_drawable, align 4
  store i32 %5, i32* %ret_drawable_ID, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %7 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %6, i32 %7)
  %8 = load i32, i32* %ret_drawable_ID, align 4
  ret i32 %8
}

declare %struct._GimpParam* @gimp_run_procedure(i8*, i32*, ...) #1

declare void @gimp_destroy_params(%struct._GimpParam*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_perspective(i32 %drawable_ID, i32 %interpolation, double %x0, double %y0, double %x1, double %y1, double %x2, double %y2, double %x3, double %y3) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %interpolation.addr = alloca i32, align 4
  %x0.addr = alloca double, align 8
  %y0.addr = alloca double, align 8
  %x1.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %x2.addr = alloca double, align 8
  %y2.addr = alloca double, align 8
  %x3.addr = alloca double, align 8
  %y3.addr = alloca double, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %ret_drawable_ID = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %interpolation, i32* %interpolation.addr, align 4
  store double %x0, double* %x0.addr, align 8
  store double %y0, double* %y0.addr, align 8
  store double %x1, double* %x1.addr, align 8
  store double %y1, double* %y1.addr, align 8
  store double %x2, double* %x2.addr, align 8
  store double %y2, double* %y2.addr, align 8
  store double %x3, double* %x3.addr, align 8
  store double %y3, double* %y3.addr, align 8
  store i32 -1, i32* %ret_drawable_ID, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i32, i32* %interpolation.addr, align 4
  %2 = load double, double* %x0.addr, align 8
  %3 = load double, double* %y0.addr, align 8
  %4 = load double, double* %x1.addr, align 8
  %5 = load double, double* %y1.addr, align 8
  %6 = load double, double* %x2.addr, align 8
  %7 = load double, double* %y2.addr, align 8
  %8 = load double, double* %x3.addr, align 8
  %9 = load double, double* %y3.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 0, i32 %1, i32 3, double %2, i32 3, double %3, i32 3, double %4, i32 3, double %5, i32 3, double %6, i32 3, double %7, i32 3, double %8, i32 3, double %9, i32 22)
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
  %d_drawable = bitcast %union._GimpParamData* %data2 to i32*
  %13 = load i32, i32* %d_drawable, align 4
  store i32 %13, i32* %ret_drawable_ID, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %15 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %14, i32 %15)
  %16 = load i32, i32* %ret_drawable_ID, align 4
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define i32 @gimp_rotate(i32 %drawable_ID, i32 %interpolation, double %angle) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %interpolation.addr = alloca i32, align 4
  %angle.addr = alloca double, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %ret_drawable_ID = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %interpolation, i32* %interpolation.addr, align 4
  store double %angle, double* %angle.addr, align 8
  store i32 -1, i32* %ret_drawable_ID, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i32, i32* %interpolation.addr, align 4
  %2 = load double, double* %angle.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 0, i32 %1, i32 3, double %2, i32 22)
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
  %d_drawable = bitcast %union._GimpParamData* %data2 to i32*
  %6 = load i32, i32* %d_drawable, align 4
  store i32 %6, i32* %ret_drawable_ID, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %8 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %7, i32 %8)
  %9 = load i32, i32* %ret_drawable_ID, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @gimp_scale(i32 %drawable_ID, i32 %interpolation, double %x0, double %y0, double %x1, double %y1) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %interpolation.addr = alloca i32, align 4
  %x0.addr = alloca double, align 8
  %y0.addr = alloca double, align 8
  %x1.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %ret_drawable_ID = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %interpolation, i32* %interpolation.addr, align 4
  store double %x0, double* %x0.addr, align 8
  store double %y0, double* %y0.addr, align 8
  store double %x1, double* %x1.addr, align 8
  store double %y1, double* %y1.addr, align 8
  store i32 -1, i32* %ret_drawable_ID, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i32, i32* %interpolation.addr, align 4
  %2 = load double, double* %x0.addr, align 8
  %3 = load double, double* %y0.addr, align 8
  %4 = load double, double* %x1.addr, align 8
  %5 = load double, double* %y1.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 0, i32 %1, i32 3, double %2, i32 3, double %3, i32 3, double %4, i32 3, double %5, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %6 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %6, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %7 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %7, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %8, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data2 to i32*
  %9 = load i32, i32* %d_drawable, align 4
  store i32 %9, i32* %ret_drawable_ID, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %11 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %10, i32 %11)
  %12 = load i32, i32* %ret_drawable_ID, align 4
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define i32 @gimp_shear(i32 %drawable_ID, i32 %interpolation, i32 %shear_type, double %magnitude) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %interpolation.addr = alloca i32, align 4
  %shear_type.addr = alloca i32, align 4
  %magnitude.addr = alloca double, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %ret_drawable_ID = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %interpolation, i32* %interpolation.addr, align 4
  store i32 %shear_type, i32* %shear_type.addr, align 4
  store double %magnitude, double* %magnitude.addr, align 8
  store i32 -1, i32* %ret_drawable_ID, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i32, i32* %interpolation.addr, align 4
  %2 = load i32, i32* %shear_type.addr, align 4
  %3 = load double, double* %magnitude.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 0, i32 %1, i32 0, i32 %2, i32 3, double %3, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %4, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %5 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %5, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %6, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data2 to i32*
  %7 = load i32, i32* %d_drawable, align 4
  store i32 %7, i32* %ret_drawable_ID, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %9 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %8, i32 %9)
  %10 = load i32, i32* %ret_drawable_ID, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @gimp_transform_2d(i32 %drawable_ID, i32 %interpolation, double %source_x, double %source_y, double %scale_x, double %scale_y, double %angle, double %dest_x, double %dest_y) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %interpolation.addr = alloca i32, align 4
  %source_x.addr = alloca double, align 8
  %source_y.addr = alloca double, align 8
  %scale_x.addr = alloca double, align 8
  %scale_y.addr = alloca double, align 8
  %angle.addr = alloca double, align 8
  %dest_x.addr = alloca double, align 8
  %dest_y.addr = alloca double, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %ret_drawable_ID = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %interpolation, i32* %interpolation.addr, align 4
  store double %source_x, double* %source_x.addr, align 8
  store double %source_y, double* %source_y.addr, align 8
  store double %scale_x, double* %scale_x.addr, align 8
  store double %scale_y, double* %scale_y.addr, align 8
  store double %angle, double* %angle.addr, align 8
  store double %dest_x, double* %dest_x.addr, align 8
  store double %dest_y, double* %dest_y.addr, align 8
  store i32 -1, i32* %ret_drawable_ID, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i32, i32* %interpolation.addr, align 4
  %2 = load double, double* %source_x.addr, align 8
  %3 = load double, double* %source_y.addr, align 8
  %4 = load double, double* %scale_x.addr, align 8
  %5 = load double, double* %scale_y.addr, align 8
  %6 = load double, double* %angle.addr, align 8
  %7 = load double, double* %dest_x.addr, align 8
  %8 = load double, double* %dest_y.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 0, i32 %1, i32 3, double %2, i32 3, double %3, i32 3, double %4, i32 3, double %5, i32 3, double %6, i32 3, double %7, i32 3, double %8, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %9 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %9, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %10 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %10, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %11, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data2 to i32*
  %12 = load i32, i32* %d_drawable, align 4
  store i32 %12, i32* %ret_drawable_ID, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %14 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %13, i32 %14)
  %15 = load i32, i32* %ret_drawable_ID, align 4
  ret i32 %15
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
