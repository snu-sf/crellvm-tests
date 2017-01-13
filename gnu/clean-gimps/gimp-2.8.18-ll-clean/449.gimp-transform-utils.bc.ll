; ModuleID = './app/core/gimp-transform-utils.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpMatrix3 = type { [3 x [3 x double]] }

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_transform_get_rotate_center = private unnamed_addr constant [33 x i8] c"gimp_transform_get_rotate_center\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"center_x != NULL\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"center_y != NULL\00", align 1
@__func__.gimp_transform_get_flip_axis = private unnamed_addr constant [29 x i8] c"gimp_transform_get_flip_axis\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"axis != NULL\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"file %s: line %d (%s): should not be reached\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"gimp-transform-utils.c\00", align 1
@__func__.gimp_transform_matrix_flip = private unnamed_addr constant [27 x i8] c"gimp_transform_matrix_flip\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"matrix != NULL\00", align 1
@__func__.gimp_transform_matrix_flip_free = private unnamed_addr constant [32 x i8] c"gimp_transform_matrix_flip_free\00", align 1
@__func__.gimp_transform_matrix_rotate_rect = private unnamed_addr constant [34 x i8] c"gimp_transform_matrix_rotate_rect\00", align 1
@__func__.gimp_transform_matrix_rotate_center = private unnamed_addr constant [36 x i8] c"gimp_transform_matrix_rotate_center\00", align 1
@__func__.gimp_transform_matrix_scale = private unnamed_addr constant [28 x i8] c"gimp_transform_matrix_scale\00", align 1
@__func__.gimp_transform_matrix_shear = private unnamed_addr constant [28 x i8] c"gimp_transform_matrix_shear\00", align 1
@__func__.gimp_transform_matrix_perspective = private unnamed_addr constant [34 x i8] c"gimp_transform_matrix_perspective\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_transform_get_rotate_center(i32 %x, i32 %y, i32 %width, i32 %height, i32 %auto_center, double* %center_x, double* %center_y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %auto_center.addr = alloca i32, align 4
  %center_x.addr = alloca double*, align 8
  %center_y.addr = alloca double*, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %auto_center, i32* %auto_center.addr, align 4
  store double* %center_x, double** %center_x.addr, align 8
  store double* %center_y, double** %center_y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load double*, double** %center_x.addr, align 8
  %cmp = icmp ne double* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_transform_get_rotate_center, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.13

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load double*, double** %center_y.addr, align 8
  %cmp2 = icmp ne double* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_transform_get_rotate_center, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.13

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load i32, i32* %auto_center.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then.7, label %if.end.13

if.then.7:                                        ; preds = %do.end.6
  %3 = load i32, i32* %x.addr, align 4
  %conv = sitofp i32 %3 to double
  %4 = load i32, i32* %width.addr, align 4
  %conv8 = sitofp i32 %4 to double
  %div = fdiv double %conv8, 2.000000e+00
  %add = fadd double %conv, %div
  %5 = load double*, double** %center_x.addr, align 8
  store double %add, double* %5, align 8
  %6 = load i32, i32* %y.addr, align 4
  %conv9 = sitofp i32 %6 to double
  %7 = load i32, i32* %height.addr, align 4
  %conv10 = sitofp i32 %7 to double
  %div11 = fdiv double %conv10, 2.000000e+00
  %add12 = fadd double %conv9, %div11
  %8 = load double*, double** %center_y.addr, align 8
  store double %add12, double* %8, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.else.4, %if.then.7, %do.end.6
  ret void
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_transform_get_flip_axis(i32 %x, i32 %y, i32 %width, i32 %height, i32 %flip_type, i32 %auto_center, double* %axis) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %flip_type.addr = alloca i32, align 4
  %auto_center.addr = alloca i32, align 4
  %axis.addr = alloca double*, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %flip_type, i32* %flip_type.addr, align 4
  store i32 %auto_center, i32* %auto_center.addr, align 4
  store double* %axis, double** %axis.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load double*, double** %axis.addr, align 8
  %cmp = icmp ne double* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_transform_get_flip_axis, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.10

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i32, i32* %auto_center.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then.1, label %if.end.10

if.then.1:                                        ; preds = %do.end
  %2 = load i32, i32* %flip_type.addr, align 4
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %if.then.1
  %3 = load i32, i32* %x.addr, align 4
  %conv = sitofp i32 %3 to double
  %4 = load i32, i32* %width.addr, align 4
  %conv2 = sitofp i32 %4 to double
  %div = fdiv double %conv2, 2.000000e+00
  %add = fadd double %conv, %div
  %5 = load double*, double** %axis.addr, align 8
  store double %add, double* %5, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %if.then.1
  %6 = load i32, i32* %y.addr, align 4
  %conv4 = sitofp i32 %6 to double
  %7 = load i32, i32* %height.addr, align 4
  %conv5 = sitofp i32 %7 to double
  %div6 = fdiv double %conv5, 2.000000e+00
  %add7 = fadd double %conv4, %div6
  %8 = load double*, double** %axis.addr, align 8
  store double %add7, double* %8, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.1
  br label %do.body.8

do.body.8:                                        ; preds = %sw.default
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0), i32 72, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_transform_get_flip_axis, i32 0, i32 0))
  br label %if.end.10

do.end.9:                                         ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.9, %sw.bb.3, %sw.bb
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %do.body.8, %sw.epilog, %do.end
  ret void
}

declare void @g_log(i8*, i32, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_transform_matrix_flip(%struct._GimpMatrix3* %matrix, i32 %flip_type, double %axis) #0 {
entry:
  %matrix.addr = alloca %struct._GimpMatrix3*, align 8
  %flip_type.addr = alloca i32, align 4
  %axis.addr = alloca double, align 8
  store %struct._GimpMatrix3* %matrix, %struct._GimpMatrix3** %matrix.addr, align 8
  store i32 %flip_type, i32* %flip_type.addr, align 4
  store double %axis, double* %axis.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %cmp = icmp ne %struct._GimpMatrix3* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_transform_matrix_flip, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0))
  br label %sw.epilog

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i32, i32* %flip_type.addr, align 4
  switch i32 %1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %do.end
  %2 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %3 = load double, double* %axis.addr, align 8
  %sub = fsub double -0.000000e+00, %3
  call void @gimp_matrix3_translate(%struct._GimpMatrix3* %2, double %sub, double 0.000000e+00)
  %4 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  call void @gimp_matrix3_scale(%struct._GimpMatrix3* %4, double -1.000000e+00, double 1.000000e+00)
  %5 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %6 = load double, double* %axis.addr, align 8
  call void @gimp_matrix3_translate(%struct._GimpMatrix3* %5, double %6, double 0.000000e+00)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %do.end
  %7 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %8 = load double, double* %axis.addr, align 8
  %sub2 = fsub double -0.000000e+00, %8
  call void @gimp_matrix3_translate(%struct._GimpMatrix3* %7, double 0.000000e+00, double %sub2)
  %9 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  call void @gimp_matrix3_scale(%struct._GimpMatrix3* %9, double 1.000000e+00, double -1.000000e+00)
  %10 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %11 = load double, double* %axis.addr, align 8
  call void @gimp_matrix3_translate(%struct._GimpMatrix3* %10, double 0.000000e+00, double %11)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %do.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %do.end, %sw.bb.3, %sw.bb.1, %sw.bb
  ret void
}

declare void @gimp_matrix3_translate(%struct._GimpMatrix3*, double, double) #1

declare void @gimp_matrix3_scale(%struct._GimpMatrix3*, double, double) #1

; Function Attrs: nounwind uwtable
define void @gimp_transform_matrix_flip_free(%struct._GimpMatrix3* %matrix, double %x1, double %y1, double %x2, double %y2) #0 {
entry:
  %matrix.addr = alloca %struct._GimpMatrix3*, align 8
  %x1.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %x2.addr = alloca double, align 8
  %y2.addr = alloca double, align 8
  %angle = alloca double, align 8
  store %struct._GimpMatrix3* %matrix, %struct._GimpMatrix3** %matrix.addr, align 8
  store double %x1, double* %x1.addr, align 8
  store double %y1, double* %y1.addr, align 8
  store double %x2, double* %x2.addr, align 8
  store double %y2, double* %y2.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %cmp = icmp ne %struct._GimpMatrix3* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_transform_matrix_flip_free, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load double, double* %y2.addr, align 8
  %2 = load double, double* %y1.addr, align 8
  %sub = fsub double %1, %2
  %3 = load double, double* %x2.addr, align 8
  %4 = load double, double* %x1.addr, align 8
  %sub1 = fsub double %3, %4
  %call = call double @atan2(double %sub, double %sub1) #3
  store double %call, double* %angle, align 8
  %5 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  call void @gimp_matrix3_identity(%struct._GimpMatrix3* %5)
  %6 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %7 = load double, double* %x1.addr, align 8
  %sub2 = fsub double -0.000000e+00, %7
  %8 = load double, double* %y1.addr, align 8
  %sub3 = fsub double -0.000000e+00, %8
  call void @gimp_matrix3_translate(%struct._GimpMatrix3* %6, double %sub2, double %sub3)
  %9 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %10 = load double, double* %angle, align 8
  %sub4 = fsub double -0.000000e+00, %10
  call void @gimp_matrix3_rotate(%struct._GimpMatrix3* %9, double %sub4)
  %11 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  call void @gimp_matrix3_scale(%struct._GimpMatrix3* %11, double 1.000000e+00, double -1.000000e+00)
  %12 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %13 = load double, double* %angle, align 8
  call void @gimp_matrix3_rotate(%struct._GimpMatrix3* %12, double %13)
  %14 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %15 = load double, double* %x1.addr, align 8
  %16 = load double, double* %y1.addr, align 8
  call void @gimp_matrix3_translate(%struct._GimpMatrix3* %14, double %15, double %16)
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

; Function Attrs: nounwind
declare double @atan2(double, double) #2

declare void @gimp_matrix3_identity(%struct._GimpMatrix3*) #1

declare void @gimp_matrix3_rotate(%struct._GimpMatrix3*, double) #1

; Function Attrs: nounwind uwtable
define void @gimp_transform_matrix_rotate(%struct._GimpMatrix3* %matrix, i32 %rotate_type, double %center_x, double %center_y) #0 {
entry:
  %matrix.addr = alloca %struct._GimpMatrix3*, align 8
  %rotate_type.addr = alloca i32, align 4
  %center_x.addr = alloca double, align 8
  %center_y.addr = alloca double, align 8
  %angle = alloca double, align 8
  store %struct._GimpMatrix3* %matrix, %struct._GimpMatrix3** %matrix.addr, align 8
  store i32 %rotate_type, i32* %rotate_type.addr, align 4
  store double %center_x, double* %center_x.addr, align 8
  store double %center_y, double* %center_y.addr, align 8
  store double 0.000000e+00, double* %angle, align 8
  %0 = load i32, i32* %rotate_type.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  store double 0x3FF921FB54442D18, double* %angle, align 8
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  store double 0x400921FB54442D18, double* %angle, align 8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  store double 0xBFF921FB54442D18, double* %angle, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.2, %sw.bb.1, %sw.bb
  %1 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %2 = load double, double* %center_x.addr, align 8
  %3 = load double, double* %center_y.addr, align 8
  %4 = load double, double* %angle, align 8
  call void @gimp_transform_matrix_rotate_center(%struct._GimpMatrix3* %1, double %2, double %3, double %4)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_transform_matrix_rotate_center(%struct._GimpMatrix3* %matrix, double %center_x, double %center_y, double %angle) #0 {
entry:
  %matrix.addr = alloca %struct._GimpMatrix3*, align 8
  %center_x.addr = alloca double, align 8
  %center_y.addr = alloca double, align 8
  %angle.addr = alloca double, align 8
  store %struct._GimpMatrix3* %matrix, %struct._GimpMatrix3** %matrix.addr, align 8
  store double %center_x, double* %center_x.addr, align 8
  store double %center_y, double* %center_y.addr, align 8
  store double %angle, double* %angle.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %cmp = icmp ne %struct._GimpMatrix3* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_transform_matrix_rotate_center, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %2 = load double, double* %center_x.addr, align 8
  %sub = fsub double -0.000000e+00, %2
  %3 = load double, double* %center_y.addr, align 8
  %sub1 = fsub double -0.000000e+00, %3
  call void @gimp_matrix3_translate(%struct._GimpMatrix3* %1, double %sub, double %sub1)
  %4 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %5 = load double, double* %angle.addr, align 8
  call void @gimp_matrix3_rotate(%struct._GimpMatrix3* %4, double %5)
  %6 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %7 = load double, double* %center_x.addr, align 8
  %8 = load double, double* %center_y.addr, align 8
  call void @gimp_matrix3_translate(%struct._GimpMatrix3* %6, double %7, double %8)
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_transform_matrix_rotate_rect(%struct._GimpMatrix3* %matrix, i32 %x, i32 %y, i32 %width, i32 %height, double %angle) #0 {
entry:
  %matrix.addr = alloca %struct._GimpMatrix3*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %angle.addr = alloca double, align 8
  %center_x = alloca double, align 8
  %center_y = alloca double, align 8
  store %struct._GimpMatrix3* %matrix, %struct._GimpMatrix3** %matrix.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store double %angle, double* %angle.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %cmp = icmp ne %struct._GimpMatrix3* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_transform_matrix_rotate_rect, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i32, i32* %x.addr, align 4
  %conv = sitofp i32 %1 to double
  %2 = load i32, i32* %width.addr, align 4
  %conv1 = sitofp i32 %2 to double
  %div = fdiv double %conv1, 2.000000e+00
  %add = fadd double %conv, %div
  store double %add, double* %center_x, align 8
  %3 = load i32, i32* %y.addr, align 4
  %conv2 = sitofp i32 %3 to double
  %4 = load i32, i32* %height.addr, align 4
  %conv3 = sitofp i32 %4 to double
  %div4 = fdiv double %conv3, 2.000000e+00
  %add5 = fadd double %conv2, %div4
  store double %add5, double* %center_y, align 8
  %5 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %6 = load double, double* %center_x, align 8
  %sub = fsub double -0.000000e+00, %6
  %7 = load double, double* %center_y, align 8
  %sub6 = fsub double -0.000000e+00, %7
  call void @gimp_matrix3_translate(%struct._GimpMatrix3* %5, double %sub, double %sub6)
  %8 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %9 = load double, double* %angle.addr, align 8
  call void @gimp_matrix3_rotate(%struct._GimpMatrix3* %8, double %9)
  %10 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %11 = load double, double* %center_x, align 8
  %12 = load double, double* %center_y, align 8
  call void @gimp_matrix3_translate(%struct._GimpMatrix3* %10, double %11, double %12)
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_transform_matrix_scale(%struct._GimpMatrix3* %matrix, i32 %x, i32 %y, i32 %width, i32 %height, double %t_x, double %t_y, double %t_width, double %t_height) #0 {
entry:
  %matrix.addr = alloca %struct._GimpMatrix3*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %t_x.addr = alloca double, align 8
  %t_y.addr = alloca double, align 8
  %t_width.addr = alloca double, align 8
  %t_height.addr = alloca double, align 8
  %scale_x = alloca double, align 8
  %scale_y = alloca double, align 8
  store %struct._GimpMatrix3* %matrix, %struct._GimpMatrix3** %matrix.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store double %t_x, double* %t_x.addr, align 8
  store double %t_y, double* %t_y.addr, align 8
  store double %t_width, double* %t_width.addr, align 8
  store double %t_height, double* %t_height.addr, align 8
  store double 1.000000e+00, double* %scale_x, align 8
  store double 1.000000e+00, double* %scale_y, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %cmp = icmp ne %struct._GimpMatrix3* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_transform_matrix_scale, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i32, i32* %width.addr, align 4
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %do.end
  %2 = load double, double* %t_width.addr, align 8
  %3 = load i32, i32* %width.addr, align 4
  %conv = sitofp i32 %3 to double
  %div = fdiv double %2, %conv
  store double %div, double* %scale_x, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %do.end
  %4 = load i32, i32* %height.addr, align 4
  %cmp4 = icmp sgt i32 %4, 0
  br i1 %cmp4, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end.3
  %5 = load double, double* %t_height.addr, align 8
  %6 = load i32, i32* %height.addr, align 4
  %conv7 = sitofp i32 %6 to double
  %div8 = fdiv double %5, %conv7
  store double %div8, double* %scale_y, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %if.end.3
  %7 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  call void @gimp_matrix3_identity(%struct._GimpMatrix3* %7)
  %8 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %9 = load i32, i32* %x.addr, align 4
  %sub = sub nsw i32 0, %9
  %conv10 = sitofp i32 %sub to double
  %10 = load i32, i32* %y.addr, align 4
  %sub11 = sub nsw i32 0, %10
  %conv12 = sitofp i32 %sub11 to double
  call void @gimp_matrix3_translate(%struct._GimpMatrix3* %8, double %conv10, double %conv12)
  %11 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %12 = load double, double* %scale_x, align 8
  %13 = load double, double* %scale_y, align 8
  call void @gimp_matrix3_scale(%struct._GimpMatrix3* %11, double %12, double %13)
  %14 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %15 = load double, double* %t_x.addr, align 8
  %16 = load double, double* %t_y.addr, align 8
  call void @gimp_matrix3_translate(%struct._GimpMatrix3* %14, double %15, double %16)
  br label %return

return:                                           ; preds = %if.end.9, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_transform_matrix_shear(%struct._GimpMatrix3* %matrix, i32 %x, i32 %y, i32 %width, i32 %height, i32 %orientation, double %amount) #0 {
entry:
  %matrix.addr = alloca %struct._GimpMatrix3*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %orientation.addr = alloca i32, align 4
  %amount.addr = alloca double, align 8
  %center_x = alloca double, align 8
  %center_y = alloca double, align 8
  store %struct._GimpMatrix3* %matrix, %struct._GimpMatrix3** %matrix.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %orientation, i32* %orientation.addr, align 4
  store double %amount, double* %amount.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %cmp = icmp ne %struct._GimpMatrix3* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_transform_matrix_shear, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i32, i32* %width.addr, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %do.end
  store i32 1, i32* %width.addr, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %do.end
  %2 = load i32, i32* %height.addr, align 4
  %cmp4 = icmp eq i32 %2, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  store i32 1, i32* %height.addr, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end.3
  %3 = load i32, i32* %x.addr, align 4
  %conv = sitofp i32 %3 to double
  %4 = load i32, i32* %width.addr, align 4
  %conv7 = sitofp i32 %4 to double
  %div = fdiv double %conv7, 2.000000e+00
  %add = fadd double %conv, %div
  store double %add, double* %center_x, align 8
  %5 = load i32, i32* %y.addr, align 4
  %conv8 = sitofp i32 %5 to double
  %6 = load i32, i32* %height.addr, align 4
  %conv9 = sitofp i32 %6 to double
  %div10 = fdiv double %conv9, 2.000000e+00
  %add11 = fadd double %conv8, %div10
  store double %add11, double* %center_y, align 8
  %7 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  call void @gimp_matrix3_identity(%struct._GimpMatrix3* %7)
  %8 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %9 = load double, double* %center_x, align 8
  %sub = fsub double -0.000000e+00, %9
  %10 = load double, double* %center_y, align 8
  %sub12 = fsub double -0.000000e+00, %10
  call void @gimp_matrix3_translate(%struct._GimpMatrix3* %8, double %sub, double %sub12)
  %11 = load i32, i32* %orientation.addr, align 4
  %cmp13 = icmp eq i32 %11, 0
  br i1 %cmp13, label %if.then.15, label %if.else.18

if.then.15:                                       ; preds = %if.end.6
  %12 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %13 = load double, double* %amount.addr, align 8
  %14 = load i32, i32* %height.addr, align 4
  %conv16 = sitofp i32 %14 to double
  %div17 = fdiv double %13, %conv16
  call void @gimp_matrix3_xshear(%struct._GimpMatrix3* %12, double %div17)
  br label %if.end.21

if.else.18:                                       ; preds = %if.end.6
  %15 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %16 = load double, double* %amount.addr, align 8
  %17 = load i32, i32* %width.addr, align 4
  %conv19 = sitofp i32 %17 to double
  %div20 = fdiv double %16, %conv19
  call void @gimp_matrix3_yshear(%struct._GimpMatrix3* %15, double %div20)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.15
  %18 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %19 = load double, double* %center_x, align 8
  %20 = load double, double* %center_y, align 8
  call void @gimp_matrix3_translate(%struct._GimpMatrix3* %18, double %19, double %20)
  br label %return

return:                                           ; preds = %if.end.21, %if.else
  ret void
}

declare void @gimp_matrix3_xshear(%struct._GimpMatrix3*, double) #1

declare void @gimp_matrix3_yshear(%struct._GimpMatrix3*, double) #1

; Function Attrs: nounwind uwtable
define void @gimp_transform_matrix_perspective(%struct._GimpMatrix3* %matrix, i32 %x, i32 %y, i32 %width, i32 %height, double %t_x1, double %t_y1, double %t_x2, double %t_y2, double %t_x3, double %t_y3, double %t_x4, double %t_y4) #0 {
entry:
  %matrix.addr = alloca %struct._GimpMatrix3*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %t_x1.addr = alloca double, align 8
  %t_y1.addr = alloca double, align 8
  %t_x2.addr = alloca double, align 8
  %t_y2.addr = alloca double, align 8
  %t_x3.addr = alloca double, align 8
  %t_y3.addr = alloca double, align 8
  %t_x4.addr = alloca double, align 8
  %t_y4.addr = alloca double, align 8
  %trafo = alloca %struct._GimpMatrix3, align 8
  %scalex = alloca double, align 8
  %scaley = alloca double, align 8
  %dx1 = alloca double, align 8
  %dx2 = alloca double, align 8
  %dx3 = alloca double, align 8
  %dy1 = alloca double, align 8
  %dy2 = alloca double, align 8
  %dy3 = alloca double, align 8
  %det1 = alloca double, align 8
  %det2 = alloca double, align 8
  store %struct._GimpMatrix3* %matrix, %struct._GimpMatrix3** %matrix.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store double %t_x1, double* %t_x1.addr, align 8
  store double %t_y1, double* %t_y1.addr, align 8
  store double %t_x2, double* %t_x2.addr, align 8
  store double %t_y2, double* %t_y2.addr, align 8
  store double %t_x3, double* %t_x3.addr, align 8
  store double %t_y3, double* %t_y3.addr, align 8
  store double %t_x4, double* %t_x4.addr, align 8
  store double %t_y4, double* %t_y4.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %cmp = icmp ne %struct._GimpMatrix3* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_transform_matrix_perspective, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  store double 1.000000e+00, double* %scaley, align 8
  store double 1.000000e+00, double* %scalex, align 8
  %1 = load i32, i32* %width.addr, align 4
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %do.end
  %2 = load i32, i32* %width.addr, align 4
  %conv = sitofp i32 %2 to double
  %div = fdiv double 1.000000e+00, %conv
  store double %div, double* %scalex, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %do.end
  %3 = load i32, i32* %height.addr, align 4
  %cmp4 = icmp sgt i32 %3, 0
  br i1 %cmp4, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end.3
  %4 = load i32, i32* %height.addr, align 4
  %conv7 = sitofp i32 %4 to double
  %div8 = fdiv double 1.000000e+00, %conv7
  store double %div8, double* %scaley, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %if.end.3
  %5 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %6 = load i32, i32* %x.addr, align 4
  %sub = sub nsw i32 0, %6
  %conv10 = sitofp i32 %sub to double
  %7 = load i32, i32* %y.addr, align 4
  %sub11 = sub nsw i32 0, %7
  %conv12 = sitofp i32 %sub11 to double
  call void @gimp_matrix3_translate(%struct._GimpMatrix3* %5, double %conv10, double %conv12)
  %8 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %9 = load double, double* %scalex, align 8
  %10 = load double, double* %scaley, align 8
  call void @gimp_matrix3_scale(%struct._GimpMatrix3* %8, double %9, double %10)
  %11 = load double, double* %t_x2.addr, align 8
  %12 = load double, double* %t_x4.addr, align 8
  %sub13 = fsub double %11, %12
  store double %sub13, double* %dx1, align 8
  %13 = load double, double* %t_x3.addr, align 8
  %14 = load double, double* %t_x4.addr, align 8
  %sub14 = fsub double %13, %14
  store double %sub14, double* %dx2, align 8
  %15 = load double, double* %t_x1.addr, align 8
  %16 = load double, double* %t_x2.addr, align 8
  %sub15 = fsub double %15, %16
  %17 = load double, double* %t_x4.addr, align 8
  %add = fadd double %sub15, %17
  %18 = load double, double* %t_x3.addr, align 8
  %sub16 = fsub double %add, %18
  store double %sub16, double* %dx3, align 8
  %19 = load double, double* %t_y2.addr, align 8
  %20 = load double, double* %t_y4.addr, align 8
  %sub17 = fsub double %19, %20
  store double %sub17, double* %dy1, align 8
  %21 = load double, double* %t_y3.addr, align 8
  %22 = load double, double* %t_y4.addr, align 8
  %sub18 = fsub double %21, %22
  store double %sub18, double* %dy2, align 8
  %23 = load double, double* %t_y1.addr, align 8
  %24 = load double, double* %t_y2.addr, align 8
  %sub19 = fsub double %23, %24
  %25 = load double, double* %t_y4.addr, align 8
  %add20 = fadd double %sub19, %25
  %26 = load double, double* %t_y3.addr, align 8
  %sub21 = fsub double %add20, %26
  store double %sub21, double* %dy3, align 8
  %27 = load double, double* %dx3, align 8
  %cmp22 = fcmp oeq double %27, 0.000000e+00
  br i1 %cmp22, label %land.lhs.true, label %if.else.53

land.lhs.true:                                    ; preds = %if.end.9
  %28 = load double, double* %dy3, align 8
  %cmp24 = fcmp oeq double %28, 0.000000e+00
  br i1 %cmp24, label %if.then.26, label %if.else.53

if.then.26:                                       ; preds = %land.lhs.true
  %29 = load double, double* %t_x2.addr, align 8
  %30 = load double, double* %t_x1.addr, align 8
  %sub27 = fsub double %29, %30
  %coeff = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %trafo, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff, i32 0, i64 0
  %arrayidx28 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx, i32 0, i64 0
  store double %sub27, double* %arrayidx28, align 8
  %31 = load double, double* %t_x4.addr, align 8
  %32 = load double, double* %t_x2.addr, align 8
  %sub29 = fsub double %31, %32
  %coeff30 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %trafo, i32 0, i32 0
  %arrayidx31 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff30, i32 0, i64 0
  %arrayidx32 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx31, i32 0, i64 1
  store double %sub29, double* %arrayidx32, align 8
  %33 = load double, double* %t_x1.addr, align 8
  %coeff33 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %trafo, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff33, i32 0, i64 0
  %arrayidx35 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx34, i32 0, i64 2
  store double %33, double* %arrayidx35, align 8
  %34 = load double, double* %t_y2.addr, align 8
  %35 = load double, double* %t_y1.addr, align 8
  %sub36 = fsub double %34, %35
  %coeff37 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %trafo, i32 0, i32 0
  %arrayidx38 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff37, i32 0, i64 1
  %arrayidx39 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx38, i32 0, i64 0
  store double %sub36, double* %arrayidx39, align 8
  %36 = load double, double* %t_y4.addr, align 8
  %37 = load double, double* %t_y2.addr, align 8
  %sub40 = fsub double %36, %37
  %coeff41 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %trafo, i32 0, i32 0
  %arrayidx42 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff41, i32 0, i64 1
  %arrayidx43 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx42, i32 0, i64 1
  store double %sub40, double* %arrayidx43, align 8
  %38 = load double, double* %t_y1.addr, align 8
  %coeff44 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %trafo, i32 0, i32 0
  %arrayidx45 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff44, i32 0, i64 1
  %arrayidx46 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx45, i32 0, i64 2
  store double %38, double* %arrayidx46, align 8
  %coeff47 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %trafo, i32 0, i32 0
  %arrayidx48 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff47, i32 0, i64 2
  %arrayidx49 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx48, i32 0, i64 0
  store double 0.000000e+00, double* %arrayidx49, align 8
  %coeff50 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %trafo, i32 0, i32 0
  %arrayidx51 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff50, i32 0, i64 2
  %arrayidx52 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx51, i32 0, i64 1
  store double 0.000000e+00, double* %arrayidx52, align 8
  br label %if.end.120

if.else.53:                                       ; preds = %land.lhs.true, %if.end.9
  %39 = load double, double* %dx3, align 8
  %40 = load double, double* %dy2, align 8
  %mul = fmul double %39, %40
  %41 = load double, double* %dy3, align 8
  %42 = load double, double* %dx2, align 8
  %mul54 = fmul double %41, %42
  %sub55 = fsub double %mul, %mul54
  store double %sub55, double* %det1, align 8
  %43 = load double, double* %dx1, align 8
  %44 = load double, double* %dy2, align 8
  %mul56 = fmul double %43, %44
  %45 = load double, double* %dy1, align 8
  %46 = load double, double* %dx2, align 8
  %mul57 = fmul double %45, %46
  %sub58 = fsub double %mul56, %mul57
  store double %sub58, double* %det2, align 8
  %47 = load double, double* %det2, align 8
  %cmp59 = fcmp oeq double %47, 0.000000e+00
  br i1 %cmp59, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.53
  br label %cond.end

cond.false:                                       ; preds = %if.else.53
  %48 = load double, double* %det1, align 8
  %49 = load double, double* %det2, align 8
  %div61 = fdiv double %48, %49
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 1.000000e+00, %cond.true ], [ %div61, %cond.false ]
  %coeff62 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %trafo, i32 0, i32 0
  %arrayidx63 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff62, i32 0, i64 2
  %arrayidx64 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx63, i32 0, i64 0
  store double %cond, double* %arrayidx64, align 8
  %50 = load double, double* %dx1, align 8
  %51 = load double, double* %dy3, align 8
  %mul65 = fmul double %50, %51
  %52 = load double, double* %dy1, align 8
  %53 = load double, double* %dx3, align 8
  %mul66 = fmul double %52, %53
  %sub67 = fsub double %mul65, %mul66
  store double %sub67, double* %det1, align 8
  %54 = load double, double* %det2, align 8
  %cmp68 = fcmp oeq double %54, 0.000000e+00
  br i1 %cmp68, label %cond.true.70, label %cond.false.71

cond.true.70:                                     ; preds = %cond.end
  br label %cond.end.73

cond.false.71:                                    ; preds = %cond.end
  %55 = load double, double* %det1, align 8
  %56 = load double, double* %det2, align 8
  %div72 = fdiv double %55, %56
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.false.71, %cond.true.70
  %cond74 = phi double [ 1.000000e+00, %cond.true.70 ], [ %div72, %cond.false.71 ]
  %coeff75 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %trafo, i32 0, i32 0
  %arrayidx76 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff75, i32 0, i64 2
  %arrayidx77 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx76, i32 0, i64 1
  store double %cond74, double* %arrayidx77, align 8
  %57 = load double, double* %t_x2.addr, align 8
  %58 = load double, double* %t_x1.addr, align 8
  %sub78 = fsub double %57, %58
  %coeff79 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %trafo, i32 0, i32 0
  %arrayidx80 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff79, i32 0, i64 2
  %arrayidx81 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx80, i32 0, i64 0
  %59 = load double, double* %arrayidx81, align 8
  %60 = load double, double* %t_x2.addr, align 8
  %mul82 = fmul double %59, %60
  %add83 = fadd double %sub78, %mul82
  %coeff84 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %trafo, i32 0, i32 0
  %arrayidx85 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff84, i32 0, i64 0
  %arrayidx86 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx85, i32 0, i64 0
  store double %add83, double* %arrayidx86, align 8
  %61 = load double, double* %t_x3.addr, align 8
  %62 = load double, double* %t_x1.addr, align 8
  %sub87 = fsub double %61, %62
  %coeff88 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %trafo, i32 0, i32 0
  %arrayidx89 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff88, i32 0, i64 2
  %arrayidx90 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx89, i32 0, i64 1
  %63 = load double, double* %arrayidx90, align 8
  %64 = load double, double* %t_x3.addr, align 8
  %mul91 = fmul double %63, %64
  %add92 = fadd double %sub87, %mul91
  %coeff93 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %trafo, i32 0, i32 0
  %arrayidx94 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff93, i32 0, i64 0
  %arrayidx95 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx94, i32 0, i64 1
  store double %add92, double* %arrayidx95, align 8
  %65 = load double, double* %t_x1.addr, align 8
  %coeff96 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %trafo, i32 0, i32 0
  %arrayidx97 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff96, i32 0, i64 0
  %arrayidx98 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx97, i32 0, i64 2
  store double %65, double* %arrayidx98, align 8
  %66 = load double, double* %t_y2.addr, align 8
  %67 = load double, double* %t_y1.addr, align 8
  %sub99 = fsub double %66, %67
  %coeff100 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %trafo, i32 0, i32 0
  %arrayidx101 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff100, i32 0, i64 2
  %arrayidx102 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx101, i32 0, i64 0
  %68 = load double, double* %arrayidx102, align 8
  %69 = load double, double* %t_y2.addr, align 8
  %mul103 = fmul double %68, %69
  %add104 = fadd double %sub99, %mul103
  %coeff105 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %trafo, i32 0, i32 0
  %arrayidx106 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff105, i32 0, i64 1
  %arrayidx107 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx106, i32 0, i64 0
  store double %add104, double* %arrayidx107, align 8
  %70 = load double, double* %t_y3.addr, align 8
  %71 = load double, double* %t_y1.addr, align 8
  %sub108 = fsub double %70, %71
  %coeff109 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %trafo, i32 0, i32 0
  %arrayidx110 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff109, i32 0, i64 2
  %arrayidx111 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx110, i32 0, i64 1
  %72 = load double, double* %arrayidx111, align 8
  %73 = load double, double* %t_y3.addr, align 8
  %mul112 = fmul double %72, %73
  %add113 = fadd double %sub108, %mul112
  %coeff114 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %trafo, i32 0, i32 0
  %arrayidx115 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff114, i32 0, i64 1
  %arrayidx116 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx115, i32 0, i64 1
  store double %add113, double* %arrayidx116, align 8
  %74 = load double, double* %t_y1.addr, align 8
  %coeff117 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %trafo, i32 0, i32 0
  %arrayidx118 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff117, i32 0, i64 1
  %arrayidx119 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx118, i32 0, i64 2
  store double %74, double* %arrayidx119, align 8
  br label %if.end.120

if.end.120:                                       ; preds = %cond.end.73, %if.then.26
  %coeff121 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %trafo, i32 0, i32 0
  %arrayidx122 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff121, i32 0, i64 2
  %arrayidx123 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx122, i32 0, i64 2
  store double 1.000000e+00, double* %arrayidx123, align 8
  %75 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  call void @gimp_matrix3_mult(%struct._GimpMatrix3* %trafo, %struct._GimpMatrix3* %75)
  br label %return

return:                                           ; preds = %if.end.120, %if.else
  ret void
}

declare void @gimp_matrix3_mult(%struct._GimpMatrix3*, %struct._GimpMatrix3*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_transform_polygon_is_convex(double %x1, double %y1, double %x2, double %y2, double %x3, double %y3, double %x4, double %y4) #0 {
entry:
  %x1.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %x2.addr = alloca double, align 8
  %y2.addr = alloca double, align 8
  %x3.addr = alloca double, align 8
  %y3.addr = alloca double, align 8
  %x4.addr = alloca double, align 8
  %y4.addr = alloca double, align 8
  %z1 = alloca double, align 8
  %z2 = alloca double, align 8
  %z3 = alloca double, align 8
  %z4 = alloca double, align 8
  store double %x1, double* %x1.addr, align 8
  store double %y1, double* %y1.addr, align 8
  store double %x2, double* %x2.addr, align 8
  store double %y2, double* %y2.addr, align 8
  store double %x3, double* %x3.addr, align 8
  store double %y3, double* %y3.addr, align 8
  store double %x4, double* %x4.addr, align 8
  store double %y4, double* %y4.addr, align 8
  %0 = load double, double* %x2.addr, align 8
  %1 = load double, double* %x1.addr, align 8
  %sub = fsub double %0, %1
  %2 = load double, double* %y4.addr, align 8
  %3 = load double, double* %y1.addr, align 8
  %sub1 = fsub double %2, %3
  %mul = fmul double %sub, %sub1
  %4 = load double, double* %x4.addr, align 8
  %5 = load double, double* %x1.addr, align 8
  %sub2 = fsub double %4, %5
  %6 = load double, double* %y2.addr, align 8
  %7 = load double, double* %y1.addr, align 8
  %sub3 = fsub double %6, %7
  %mul4 = fmul double %sub2, %sub3
  %sub5 = fsub double %mul, %mul4
  store double %sub5, double* %z1, align 8
  %8 = load double, double* %x4.addr, align 8
  %9 = load double, double* %x1.addr, align 8
  %sub6 = fsub double %8, %9
  %10 = load double, double* %y3.addr, align 8
  %11 = load double, double* %y1.addr, align 8
  %sub7 = fsub double %10, %11
  %mul8 = fmul double %sub6, %sub7
  %12 = load double, double* %x3.addr, align 8
  %13 = load double, double* %x1.addr, align 8
  %sub9 = fsub double %12, %13
  %14 = load double, double* %y4.addr, align 8
  %15 = load double, double* %y1.addr, align 8
  %sub10 = fsub double %14, %15
  %mul11 = fmul double %sub9, %sub10
  %sub12 = fsub double %mul8, %mul11
  store double %sub12, double* %z2, align 8
  %16 = load double, double* %x4.addr, align 8
  %17 = load double, double* %x2.addr, align 8
  %sub13 = fsub double %16, %17
  %18 = load double, double* %y3.addr, align 8
  %19 = load double, double* %y2.addr, align 8
  %sub14 = fsub double %18, %19
  %mul15 = fmul double %sub13, %sub14
  %20 = load double, double* %x3.addr, align 8
  %21 = load double, double* %x2.addr, align 8
  %sub16 = fsub double %20, %21
  %22 = load double, double* %y4.addr, align 8
  %23 = load double, double* %y2.addr, align 8
  %sub17 = fsub double %22, %23
  %mul18 = fmul double %sub16, %sub17
  %sub19 = fsub double %mul15, %mul18
  store double %sub19, double* %z3, align 8
  %24 = load double, double* %x3.addr, align 8
  %25 = load double, double* %x2.addr, align 8
  %sub20 = fsub double %24, %25
  %26 = load double, double* %y1.addr, align 8
  %27 = load double, double* %y2.addr, align 8
  %sub21 = fsub double %26, %27
  %mul22 = fmul double %sub20, %sub21
  %28 = load double, double* %x1.addr, align 8
  %29 = load double, double* %x2.addr, align 8
  %sub23 = fsub double %28, %29
  %30 = load double, double* %y3.addr, align 8
  %31 = load double, double* %y2.addr, align 8
  %sub24 = fsub double %30, %31
  %mul25 = fmul double %sub23, %sub24
  %sub26 = fsub double %mul22, %mul25
  store double %sub26, double* %z4, align 8
  %32 = load double, double* %z1, align 8
  %33 = load double, double* %z2, align 8
  %mul27 = fmul double %32, %33
  %cmp = fcmp ogt double %mul27, 0.000000e+00
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %34 = load double, double* %z3, align 8
  %35 = load double, double* %z4, align 8
  %mul28 = fmul double %34, %35
  %cmp29 = fcmp ogt double %mul28, 0.000000e+00
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %36 = phi i1 [ false, %entry ], [ %cmp29, %land.rhs ]
  %land.ext = zext i1 %36 to i32
  ret i32 %land.ext
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
