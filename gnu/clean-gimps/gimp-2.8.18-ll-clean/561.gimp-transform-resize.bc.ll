; ModuleID = './app/core/gimp-transform-resize.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpMatrix3 = type { [3 x [3 x double]] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.Point = type { double, double }
%struct.Rectangle = type { %struct.Point, %struct.Point, %struct.Point, %struct.Point, double, double }

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_transform_resize_boundary = private unnamed_addr constant [31 x i8] c"gimp_transform_resize_boundary\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"inv != NULL\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"invalid transform matrix\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"no rectangle found by algorithm, no cropping done\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_transform_resize_boundary(%struct._GimpMatrix3* %inv, i32 %resize, i32 %u1, i32 %v1, i32 %u2, i32 %v2, i32* %x1, i32* %y1, i32* %x2, i32* %y2) #0 {
entry:
  %inv.addr = alloca %struct._GimpMatrix3*, align 8
  %resize.addr = alloca i32, align 4
  %u1.addr = alloca i32, align 4
  %v1.addr = alloca i32, align 4
  %u2.addr = alloca i32, align 4
  %v2.addr = alloca i32, align 4
  %x1.addr = alloca i32*, align 8
  %y1.addr = alloca i32*, align 8
  %x2.addr = alloca i32*, align 8
  %y2.addr = alloca i32*, align 8
  %dx1 = alloca double, align 8
  %dx2 = alloca double, align 8
  %dx3 = alloca double, align 8
  %dx4 = alloca double, align 8
  %dy1 = alloca double, align 8
  %dy2 = alloca double, align 8
  %dy3 = alloca double, align 8
  %dy4 = alloca double, align 8
  store %struct._GimpMatrix3* %inv, %struct._GimpMatrix3** %inv.addr, align 8
  store i32 %resize, i32* %resize.addr, align 4
  store i32 %u1, i32* %u1.addr, align 4
  store i32 %v1, i32* %v1.addr, align 4
  store i32 %u2, i32* %u2.addr, align 4
  store i32 %v2, i32* %v2.addr, align 4
  store i32* %x1, i32** %x1.addr, align 8
  store i32* %y1, i32** %y1.addr, align 8
  store i32* %x2, i32** %x2.addr, align 8
  store i32* %y2, i32** %y2.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %inv.addr, align 8
  %cmp = icmp ne %struct._GimpMatrix3* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_transform_resize_boundary, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.48

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i32, i32* %u1.addr, align 4
  %2 = load i32*, i32** %x1.addr, align 8
  store i32 %1, i32* %2, align 4
  %3 = load i32, i32* %v1.addr, align 4
  %4 = load i32*, i32** %y1.addr, align 8
  store i32 %3, i32* %4, align 4
  %5 = load i32, i32* %u2.addr, align 4
  %6 = load i32*, i32** %x2.addr, align 8
  store i32 %5, i32* %6, align 4
  %7 = load i32, i32* %v2.addr, align 4
  %8 = load i32*, i32** %y2.addr, align 8
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* %resize.addr, align 4
  %cmp1 = icmp eq i32 %9, 1
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %do.end
  br label %if.end.48

if.end.3:                                         ; preds = %do.end
  %10 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %inv.addr, align 8
  %11 = load i32, i32* %u1.addr, align 4
  %conv = sitofp i32 %11 to double
  %12 = load i32, i32* %v1.addr, align 4
  %conv4 = sitofp i32 %12 to double
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %10, double %conv, double %conv4, double* %dx1, double* %dy1)
  %13 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %inv.addr, align 8
  %14 = load i32, i32* %u2.addr, align 4
  %conv5 = sitofp i32 %14 to double
  %15 = load i32, i32* %v1.addr, align 4
  %conv6 = sitofp i32 %15 to double
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %13, double %conv5, double %conv6, double* %dx2, double* %dy2)
  %16 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %inv.addr, align 8
  %17 = load i32, i32* %u1.addr, align 4
  %conv7 = sitofp i32 %17 to double
  %18 = load i32, i32* %v2.addr, align 4
  %conv8 = sitofp i32 %18 to double
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %16, double %conv7, double %conv8, double* %dx3, double* %dy3)
  %19 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %inv.addr, align 8
  %20 = load i32, i32* %u2.addr, align 4
  %conv9 = sitofp i32 %20 to double
  %21 = load i32, i32* %v2.addr, align 4
  %conv10 = sitofp i32 %21 to double
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %19, double %conv9, double %conv10, double* %dx4, double* %dy4)
  %22 = load double, double* %dx1, align 8
  %call = call i32 @finite(double %22) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then.31

lor.lhs.false:                                    ; preds = %if.end.3
  %23 = load double, double* %dy1, align 8
  %call11 = call i32 @finite(double %23) #5
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %lor.lhs.false.13, label %if.then.31

lor.lhs.false.13:                                 ; preds = %lor.lhs.false
  %24 = load double, double* %dx2, align 8
  %call14 = call i32 @finite(double %24) #5
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %lor.lhs.false.16, label %if.then.31

lor.lhs.false.16:                                 ; preds = %lor.lhs.false.13
  %25 = load double, double* %dy2, align 8
  %call17 = call i32 @finite(double %25) #5
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %lor.lhs.false.19, label %if.then.31

lor.lhs.false.19:                                 ; preds = %lor.lhs.false.16
  %26 = load double, double* %dx3, align 8
  %call20 = call i32 @finite(double %26) #5
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %lor.lhs.false.22, label %if.then.31

lor.lhs.false.22:                                 ; preds = %lor.lhs.false.19
  %27 = load double, double* %dy3, align 8
  %call23 = call i32 @finite(double %27) #5
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %lor.lhs.false.25, label %if.then.31

lor.lhs.false.25:                                 ; preds = %lor.lhs.false.22
  %28 = load double, double* %dx4, align 8
  %call26 = call i32 @finite(double %28) #5
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %lor.lhs.false.28, label %if.then.31

lor.lhs.false.28:                                 ; preds = %lor.lhs.false.25
  %29 = load double, double* %dy4, align 8
  %call29 = call i32 @finite(double %29) #5
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %lor.lhs.false.28, %lor.lhs.false.25, %lor.lhs.false.22, %lor.lhs.false.19, %lor.lhs.false.16, %lor.lhs.false.13, %lor.lhs.false, %if.end.3
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.48

if.end.32:                                        ; preds = %lor.lhs.false.28
  %30 = load i32, i32* %resize.addr, align 4
  switch i32 %30, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.33
    i32 3, label %sw.bb.34
    i32 1, label %sw.bb.39
  ]

sw.bb:                                            ; preds = %if.end.32
  %31 = load double, double* %dx1, align 8
  %32 = load double, double* %dy1, align 8
  %33 = load double, double* %dx2, align 8
  %34 = load double, double* %dy2, align 8
  %35 = load double, double* %dx3, align 8
  %36 = load double, double* %dy3, align 8
  %37 = load double, double* %dx4, align 8
  %38 = load double, double* %dy4, align 8
  %39 = load i32*, i32** %x1.addr, align 8
  %40 = load i32*, i32** %y1.addr, align 8
  %41 = load i32*, i32** %x2.addr, align 8
  %42 = load i32*, i32** %y2.addr, align 8
  call void @gimp_transform_resize_adjust(double %31, double %32, double %33, double %34, double %35, double %36, double %37, double %38, i32* %39, i32* %40, i32* %41, i32* %42)
  br label %sw.epilog

sw.bb.33:                                         ; preds = %if.end.32
  %43 = load double, double* %dx1, align 8
  %44 = load double, double* %dy1, align 8
  %45 = load double, double* %dx2, align 8
  %46 = load double, double* %dy2, align 8
  %47 = load double, double* %dx3, align 8
  %48 = load double, double* %dy3, align 8
  %49 = load double, double* %dx4, align 8
  %50 = load double, double* %dy4, align 8
  %51 = load i32*, i32** %x1.addr, align 8
  %52 = load i32*, i32** %y1.addr, align 8
  %53 = load i32*, i32** %x2.addr, align 8
  %54 = load i32*, i32** %y2.addr, align 8
  call void @gimp_transform_resize_crop(double %43, double %44, double %45, double %46, double %47, double %48, double %49, double %50, double 0.000000e+00, i32* %51, i32* %52, i32* %53, i32* %54)
  br label %sw.epilog

sw.bb.34:                                         ; preds = %if.end.32
  %55 = load double, double* %dx1, align 8
  %56 = load double, double* %dy1, align 8
  %57 = load double, double* %dx2, align 8
  %58 = load double, double* %dy2, align 8
  %59 = load double, double* %dx3, align 8
  %60 = load double, double* %dy3, align 8
  %61 = load double, double* %dx4, align 8
  %62 = load double, double* %dy4, align 8
  %63 = load i32, i32* %u2.addr, align 4
  %conv35 = sitofp i32 %63 to double
  %64 = load i32, i32* %u1.addr, align 4
  %conv36 = sitofp i32 %64 to double
  %sub = fsub double %conv35, %conv36
  %65 = load i32, i32* %v2.addr, align 4
  %66 = load i32, i32* %v1.addr, align 4
  %sub37 = sub nsw i32 %65, %66
  %conv38 = sitofp i32 %sub37 to double
  %div = fdiv double %sub, %conv38
  %67 = load i32*, i32** %x1.addr, align 8
  %68 = load i32*, i32** %y1.addr, align 8
  %69 = load i32*, i32** %x2.addr, align 8
  %70 = load i32*, i32** %y2.addr, align 8
  call void @gimp_transform_resize_crop(double %55, double %56, double %57, double %58, double %59, double %60, double %61, double %62, double %div, i32* %67, i32* %68, i32* %69, i32* %70)
  br label %sw.epilog

sw.bb.39:                                         ; preds = %if.end.32
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.32, %sw.bb.39, %sw.bb.34, %sw.bb.33, %sw.bb
  %71 = load i32*, i32** %x1.addr, align 8
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %x2.addr, align 8
  %74 = load i32, i32* %73, align 4
  %cmp40 = icmp eq i32 %72, %74
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %sw.epilog
  %75 = load i32*, i32** %x2.addr, align 8
  %76 = load i32, i32* %75, align 4
  %inc = add nsw i32 %76, 1
  store i32 %inc, i32* %75, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %sw.epilog
  %77 = load i32*, i32** %y1.addr, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %y2.addr, align 8
  %80 = load i32, i32* %79, align 4
  %cmp44 = icmp eq i32 %78, %80
  br i1 %cmp44, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %if.end.43
  %81 = load i32*, i32** %y2.addr, align 8
  %82 = load i32, i32* %81, align 4
  %inc47 = add nsw i32 %82, 1
  store i32 %inc47, i32* %81, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.else, %if.then.2, %if.then.31, %if.then.46, %if.end.43
  ret void
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare void @gimp_matrix3_transform_point(%struct._GimpMatrix3*, double, double, double*, double*) #1

; Function Attrs: nounwind readnone
declare i32 @finite(double) #2

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
  call void @g_logv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_transform_resize_adjust(double %dx1, double %dy1, double %dx2, double %dy2, double %dx3, double %dy3, double %dx4, double %dy4, i32* %x1, i32* %y1, i32* %x2, i32* %y2) #0 {
entry:
  %dx1.addr = alloca double, align 8
  %dy1.addr = alloca double, align 8
  %dx2.addr = alloca double, align 8
  %dy2.addr = alloca double, align 8
  %dx3.addr = alloca double, align 8
  %dy3.addr = alloca double, align 8
  %dx4.addr = alloca double, align 8
  %dy4.addr = alloca double, align 8
  %x1.addr = alloca i32*, align 8
  %y1.addr = alloca i32*, align 8
  %x2.addr = alloca i32*, align 8
  %y2.addr = alloca i32*, align 8
  store double %dx1, double* %dx1.addr, align 8
  store double %dy1, double* %dy1.addr, align 8
  store double %dx2, double* %dx2.addr, align 8
  store double %dy2, double* %dy2.addr, align 8
  store double %dx3, double* %dx3.addr, align 8
  store double %dy3, double* %dy3.addr, align 8
  store double %dx4, double* %dx4.addr, align 8
  store double %dy4, double* %dy4.addr, align 8
  store i32* %x1, i32** %x1.addr, align 8
  store i32* %y1, i32** %y1.addr, align 8
  store i32* %x2, i32** %x2.addr, align 8
  store i32* %y2, i32** %y2.addr, align 8
  %0 = load double, double* %dx1.addr, align 8
  %1 = load double, double* %dx2.addr, align 8
  %cmp = fcmp olt double %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load double, double* %dx1.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load double, double* %dx2.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %2, %cond.true ], [ %3, %cond.false ]
  %4 = load double, double* %dx3.addr, align 8
  %5 = load double, double* %dx4.addr, align 8
  %cmp1 = fcmp olt double %4, %5
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  %6 = load double, double* %dx3.addr, align 8
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  %7 = load double, double* %dx4.addr, align 8
  br label %cond.end.4

cond.end.4:                                       ; preds = %cond.false.3, %cond.true.2
  %cond5 = phi double [ %6, %cond.true.2 ], [ %7, %cond.false.3 ]
  %cmp6 = fcmp olt double %cond, %cond5
  br i1 %cmp6, label %cond.true.7, label %cond.false.13

cond.true.7:                                      ; preds = %cond.end.4
  %8 = load double, double* %dx1.addr, align 8
  %9 = load double, double* %dx2.addr, align 8
  %cmp8 = fcmp olt double %8, %9
  br i1 %cmp8, label %cond.true.9, label %cond.false.10

cond.true.9:                                      ; preds = %cond.true.7
  %10 = load double, double* %dx1.addr, align 8
  br label %cond.end.11

cond.false.10:                                    ; preds = %cond.true.7
  %11 = load double, double* %dx2.addr, align 8
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.false.10, %cond.true.9
  %cond12 = phi double [ %10, %cond.true.9 ], [ %11, %cond.false.10 ]
  br label %cond.end.19

cond.false.13:                                    ; preds = %cond.end.4
  %12 = load double, double* %dx3.addr, align 8
  %13 = load double, double* %dx4.addr, align 8
  %cmp14 = fcmp olt double %12, %13
  br i1 %cmp14, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %cond.false.13
  %14 = load double, double* %dx3.addr, align 8
  br label %cond.end.17

cond.false.16:                                    ; preds = %cond.false.13
  %15 = load double, double* %dx4.addr, align 8
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.16, %cond.true.15
  %cond18 = phi double [ %14, %cond.true.15 ], [ %15, %cond.false.16 ]
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.end.17, %cond.end.11
  %cond20 = phi double [ %cond12, %cond.end.11 ], [ %cond18, %cond.end.17 ]
  %call = call double @floor(double %cond20) #5
  %conv = fptosi double %call to i32
  %16 = load i32*, i32** %x1.addr, align 8
  store i32 %conv, i32* %16, align 4
  %17 = load double, double* %dy1.addr, align 8
  %18 = load double, double* %dy2.addr, align 8
  %cmp21 = fcmp olt double %17, %18
  br i1 %cmp21, label %cond.true.23, label %cond.false.24

cond.true.23:                                     ; preds = %cond.end.19
  %19 = load double, double* %dy1.addr, align 8
  br label %cond.end.25

cond.false.24:                                    ; preds = %cond.end.19
  %20 = load double, double* %dy2.addr, align 8
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.24, %cond.true.23
  %cond26 = phi double [ %19, %cond.true.23 ], [ %20, %cond.false.24 ]
  %21 = load double, double* %dy3.addr, align 8
  %22 = load double, double* %dy4.addr, align 8
  %cmp27 = fcmp olt double %21, %22
  br i1 %cmp27, label %cond.true.29, label %cond.false.30

cond.true.29:                                     ; preds = %cond.end.25
  %23 = load double, double* %dy3.addr, align 8
  br label %cond.end.31

cond.false.30:                                    ; preds = %cond.end.25
  %24 = load double, double* %dy4.addr, align 8
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.30, %cond.true.29
  %cond32 = phi double [ %23, %cond.true.29 ], [ %24, %cond.false.30 ]
  %cmp33 = fcmp olt double %cond26, %cond32
  br i1 %cmp33, label %cond.true.35, label %cond.false.42

cond.true.35:                                     ; preds = %cond.end.31
  %25 = load double, double* %dy1.addr, align 8
  %26 = load double, double* %dy2.addr, align 8
  %cmp36 = fcmp olt double %25, %26
  br i1 %cmp36, label %cond.true.38, label %cond.false.39

cond.true.38:                                     ; preds = %cond.true.35
  %27 = load double, double* %dy1.addr, align 8
  br label %cond.end.40

cond.false.39:                                    ; preds = %cond.true.35
  %28 = load double, double* %dy2.addr, align 8
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.39, %cond.true.38
  %cond41 = phi double [ %27, %cond.true.38 ], [ %28, %cond.false.39 ]
  br label %cond.end.49

cond.false.42:                                    ; preds = %cond.end.31
  %29 = load double, double* %dy3.addr, align 8
  %30 = load double, double* %dy4.addr, align 8
  %cmp43 = fcmp olt double %29, %30
  br i1 %cmp43, label %cond.true.45, label %cond.false.46

cond.true.45:                                     ; preds = %cond.false.42
  %31 = load double, double* %dy3.addr, align 8
  br label %cond.end.47

cond.false.46:                                    ; preds = %cond.false.42
  %32 = load double, double* %dy4.addr, align 8
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.46, %cond.true.45
  %cond48 = phi double [ %31, %cond.true.45 ], [ %32, %cond.false.46 ]
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.end.47, %cond.end.40
  %cond50 = phi double [ %cond41, %cond.end.40 ], [ %cond48, %cond.end.47 ]
  %call51 = call double @floor(double %cond50) #5
  %conv52 = fptosi double %call51 to i32
  %33 = load i32*, i32** %y1.addr, align 8
  store i32 %conv52, i32* %33, align 4
  %34 = load double, double* %dx1.addr, align 8
  %35 = load double, double* %dx2.addr, align 8
  %cmp53 = fcmp ogt double %34, %35
  br i1 %cmp53, label %cond.true.55, label %cond.false.56

cond.true.55:                                     ; preds = %cond.end.49
  %36 = load double, double* %dx1.addr, align 8
  br label %cond.end.57

cond.false.56:                                    ; preds = %cond.end.49
  %37 = load double, double* %dx2.addr, align 8
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.56, %cond.true.55
  %cond58 = phi double [ %36, %cond.true.55 ], [ %37, %cond.false.56 ]
  %38 = load double, double* %dx3.addr, align 8
  %39 = load double, double* %dx4.addr, align 8
  %cmp59 = fcmp ogt double %38, %39
  br i1 %cmp59, label %cond.true.61, label %cond.false.62

cond.true.61:                                     ; preds = %cond.end.57
  %40 = load double, double* %dx3.addr, align 8
  br label %cond.end.63

cond.false.62:                                    ; preds = %cond.end.57
  %41 = load double, double* %dx4.addr, align 8
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.62, %cond.true.61
  %cond64 = phi double [ %40, %cond.true.61 ], [ %41, %cond.false.62 ]
  %cmp65 = fcmp ogt double %cond58, %cond64
  br i1 %cmp65, label %cond.true.67, label %cond.false.74

cond.true.67:                                     ; preds = %cond.end.63
  %42 = load double, double* %dx1.addr, align 8
  %43 = load double, double* %dx2.addr, align 8
  %cmp68 = fcmp ogt double %42, %43
  br i1 %cmp68, label %cond.true.70, label %cond.false.71

cond.true.70:                                     ; preds = %cond.true.67
  %44 = load double, double* %dx1.addr, align 8
  br label %cond.end.72

cond.false.71:                                    ; preds = %cond.true.67
  %45 = load double, double* %dx2.addr, align 8
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.false.71, %cond.true.70
  %cond73 = phi double [ %44, %cond.true.70 ], [ %45, %cond.false.71 ]
  br label %cond.end.81

cond.false.74:                                    ; preds = %cond.end.63
  %46 = load double, double* %dx3.addr, align 8
  %47 = load double, double* %dx4.addr, align 8
  %cmp75 = fcmp ogt double %46, %47
  br i1 %cmp75, label %cond.true.77, label %cond.false.78

cond.true.77:                                     ; preds = %cond.false.74
  %48 = load double, double* %dx3.addr, align 8
  br label %cond.end.79

cond.false.78:                                    ; preds = %cond.false.74
  %49 = load double, double* %dx4.addr, align 8
  br label %cond.end.79

cond.end.79:                                      ; preds = %cond.false.78, %cond.true.77
  %cond80 = phi double [ %48, %cond.true.77 ], [ %49, %cond.false.78 ]
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.end.79, %cond.end.72
  %cond82 = phi double [ %cond73, %cond.end.72 ], [ %cond80, %cond.end.79 ]
  %call83 = call double @ceil(double %cond82) #5
  %conv84 = fptosi double %call83 to i32
  %50 = load i32*, i32** %x2.addr, align 8
  store i32 %conv84, i32* %50, align 4
  %51 = load double, double* %dy1.addr, align 8
  %52 = load double, double* %dy2.addr, align 8
  %cmp85 = fcmp ogt double %51, %52
  br i1 %cmp85, label %cond.true.87, label %cond.false.88

cond.true.87:                                     ; preds = %cond.end.81
  %53 = load double, double* %dy1.addr, align 8
  br label %cond.end.89

cond.false.88:                                    ; preds = %cond.end.81
  %54 = load double, double* %dy2.addr, align 8
  br label %cond.end.89

cond.end.89:                                      ; preds = %cond.false.88, %cond.true.87
  %cond90 = phi double [ %53, %cond.true.87 ], [ %54, %cond.false.88 ]
  %55 = load double, double* %dy3.addr, align 8
  %56 = load double, double* %dy4.addr, align 8
  %cmp91 = fcmp ogt double %55, %56
  br i1 %cmp91, label %cond.true.93, label %cond.false.94

cond.true.93:                                     ; preds = %cond.end.89
  %57 = load double, double* %dy3.addr, align 8
  br label %cond.end.95

cond.false.94:                                    ; preds = %cond.end.89
  %58 = load double, double* %dy4.addr, align 8
  br label %cond.end.95

cond.end.95:                                      ; preds = %cond.false.94, %cond.true.93
  %cond96 = phi double [ %57, %cond.true.93 ], [ %58, %cond.false.94 ]
  %cmp97 = fcmp ogt double %cond90, %cond96
  br i1 %cmp97, label %cond.true.99, label %cond.false.106

cond.true.99:                                     ; preds = %cond.end.95
  %59 = load double, double* %dy1.addr, align 8
  %60 = load double, double* %dy2.addr, align 8
  %cmp100 = fcmp ogt double %59, %60
  br i1 %cmp100, label %cond.true.102, label %cond.false.103

cond.true.102:                                    ; preds = %cond.true.99
  %61 = load double, double* %dy1.addr, align 8
  br label %cond.end.104

cond.false.103:                                   ; preds = %cond.true.99
  %62 = load double, double* %dy2.addr, align 8
  br label %cond.end.104

cond.end.104:                                     ; preds = %cond.false.103, %cond.true.102
  %cond105 = phi double [ %61, %cond.true.102 ], [ %62, %cond.false.103 ]
  br label %cond.end.113

cond.false.106:                                   ; preds = %cond.end.95
  %63 = load double, double* %dy3.addr, align 8
  %64 = load double, double* %dy4.addr, align 8
  %cmp107 = fcmp ogt double %63, %64
  br i1 %cmp107, label %cond.true.109, label %cond.false.110

cond.true.109:                                    ; preds = %cond.false.106
  %65 = load double, double* %dy3.addr, align 8
  br label %cond.end.111

cond.false.110:                                   ; preds = %cond.false.106
  %66 = load double, double* %dy4.addr, align 8
  br label %cond.end.111

cond.end.111:                                     ; preds = %cond.false.110, %cond.true.109
  %cond112 = phi double [ %65, %cond.true.109 ], [ %66, %cond.false.110 ]
  br label %cond.end.113

cond.end.113:                                     ; preds = %cond.end.111, %cond.end.104
  %cond114 = phi double [ %cond105, %cond.end.104 ], [ %cond112, %cond.end.111 ]
  %call115 = call double @ceil(double %cond114) #5
  %conv116 = fptosi double %call115 to i32
  %67 = load i32*, i32** %y2.addr, align 8
  store i32 %conv116, i32* %67, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_transform_resize_crop(double %dx1, double %dy1, double %dx2, double %dy2, double %dx3, double %dy3, double %dx4, double %dy4, double %aspect, i32* %x1, i32* %y1, i32* %x2, i32* %y2) #0 {
entry:
  %dx1.addr = alloca double, align 8
  %dy1.addr = alloca double, align 8
  %dx2.addr = alloca double, align 8
  %dy2.addr = alloca double, align 8
  %dx3.addr = alloca double, align 8
  %dy3.addr = alloca double, align 8
  %dx4.addr = alloca double, align 8
  %dy4.addr = alloca double, align 8
  %aspect.addr = alloca double, align 8
  %x1.addr = alloca i32*, align 8
  %y1.addr = alloca i32*, align 8
  %x2.addr = alloca i32*, align 8
  %y2.addr = alloca i32*, align 8
  %points = alloca [4 x %struct.Point], align 16
  %r = alloca %struct.Rectangle, align 8
  %t = alloca %struct.Point, align 8
  %a = alloca %struct.Point, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %min = alloca i32, align 4
  %min_theta = alloca double, align 8
  %min_mag = alloca double, align 8
  %next = alloca i32, align 4
  %theta = alloca double, align 8
  %sy = alloca double, align 8
  %sx = alloca double, align 8
  %mag = alloca double, align 8
  store double %dx1, double* %dx1.addr, align 8
  store double %dy1, double* %dy1.addr, align 8
  store double %dx2, double* %dx2.addr, align 8
  store double %dy2, double* %dy2.addr, align 8
  store double %dx3, double* %dx3.addr, align 8
  store double %dy3, double* %dy3.addr, align 8
  store double %dx4, double* %dx4.addr, align 8
  store double %dy4, double* %dy4.addr, align 8
  store double %aspect, double* %aspect.addr, align 8
  store i32* %x1, i32** %x1.addr, align 8
  store i32* %y1, i32** %y1.addr, align 8
  store i32* %x2, i32** %x2.addr, align 8
  store i32* %y2, i32** %y2.addr, align 8
  %0 = load double, double* %dx1.addr, align 8
  %arrayidx = getelementptr inbounds [4 x %struct.Point], [4 x %struct.Point]* %points, i32 0, i64 0
  %x = getelementptr inbounds %struct.Point, %struct.Point* %arrayidx, i32 0, i32 0
  store double %0, double* %x, align 8
  %1 = load double, double* %dy1.addr, align 8
  %arrayidx1 = getelementptr inbounds [4 x %struct.Point], [4 x %struct.Point]* %points, i32 0, i64 0
  %y = getelementptr inbounds %struct.Point, %struct.Point* %arrayidx1, i32 0, i32 1
  store double %1, double* %y, align 8
  %2 = load double, double* %dx2.addr, align 8
  %arrayidx2 = getelementptr inbounds [4 x %struct.Point], [4 x %struct.Point]* %points, i32 0, i64 1
  %x3 = getelementptr inbounds %struct.Point, %struct.Point* %arrayidx2, i32 0, i32 0
  store double %2, double* %x3, align 8
  %3 = load double, double* %dy2.addr, align 8
  %arrayidx4 = getelementptr inbounds [4 x %struct.Point], [4 x %struct.Point]* %points, i32 0, i64 1
  %y5 = getelementptr inbounds %struct.Point, %struct.Point* %arrayidx4, i32 0, i32 1
  store double %3, double* %y5, align 8
  %4 = load double, double* %dx3.addr, align 8
  %arrayidx6 = getelementptr inbounds [4 x %struct.Point], [4 x %struct.Point]* %points, i32 0, i64 2
  %x7 = getelementptr inbounds %struct.Point, %struct.Point* %arrayidx6, i32 0, i32 0
  store double %4, double* %x7, align 8
  %5 = load double, double* %dy3.addr, align 8
  %arrayidx8 = getelementptr inbounds [4 x %struct.Point], [4 x %struct.Point]* %points, i32 0, i64 2
  %y9 = getelementptr inbounds %struct.Point, %struct.Point* %arrayidx8, i32 0, i32 1
  store double %5, double* %y9, align 8
  %6 = load double, double* %dx4.addr, align 8
  %arrayidx10 = getelementptr inbounds [4 x %struct.Point], [4 x %struct.Point]* %points, i32 0, i64 3
  %x11 = getelementptr inbounds %struct.Point, %struct.Point* %arrayidx10, i32 0, i32 0
  store double %6, double* %x11, align 8
  %7 = load double, double* %dy4.addr, align 8
  %arrayidx12 = getelementptr inbounds [4 x %struct.Point], [4 x %struct.Point]* %points, i32 0, i64 3
  %y13 = getelementptr inbounds %struct.Point, %struct.Point* %arrayidx12, i32 0, i32 1
  store double %7, double* %y13, align 8
  %x14 = getelementptr inbounds %struct.Point, %struct.Point* %a, i32 0, i32 0
  store double 0.000000e+00, double* %x14, align 8
  %y15 = getelementptr inbounds %struct.Point, %struct.Point* %a, i32 0, i32 1
  store double 0.000000e+00, double* %y15, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %8, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx16 = getelementptr inbounds [4 x %struct.Point], [4 x %struct.Point]* %points, i32 0, i64 %idxprom
  %x17 = getelementptr inbounds %struct.Point, %struct.Point* %arrayidx16, i32 0, i32 0
  %10 = load double, double* %x17, align 8
  %x18 = getelementptr inbounds %struct.Point, %struct.Point* %a, i32 0, i32 0
  %11 = load double, double* %x18, align 8
  %cmp19 = fcmp olt double %10, %11
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %12 to i64
  %arrayidx21 = getelementptr inbounds [4 x %struct.Point], [4 x %struct.Point]* %points, i32 0, i64 %idxprom20
  %x22 = getelementptr inbounds %struct.Point, %struct.Point* %arrayidx21, i32 0, i32 0
  %13 = load double, double* %x22, align 8
  %x23 = getelementptr inbounds %struct.Point, %struct.Point* %a, i32 0, i32 0
  store double %13, double* %x23, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %14 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %14 to i64
  %arrayidx25 = getelementptr inbounds [4 x %struct.Point], [4 x %struct.Point]* %points, i32 0, i64 %idxprom24
  %y26 = getelementptr inbounds %struct.Point, %struct.Point* %arrayidx25, i32 0, i32 1
  %15 = load double, double* %y26, align 8
  %y27 = getelementptr inbounds %struct.Point, %struct.Point* %a, i32 0, i32 1
  %16 = load double, double* %y27, align 8
  %cmp28 = fcmp olt double %15, %16
  br i1 %cmp28, label %if.then.29, label %if.end.34

if.then.29:                                       ; preds = %if.end
  %17 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %17 to i64
  %arrayidx31 = getelementptr inbounds [4 x %struct.Point], [4 x %struct.Point]* %points, i32 0, i64 %idxprom30
  %y32 = getelementptr inbounds %struct.Point, %struct.Point* %arrayidx31, i32 0, i32 1
  %18 = load double, double* %y32, align 8
  %y33 = getelementptr inbounds %struct.Point, %struct.Point* %a, i32 0, i32 1
  store double %18, double* %y33, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.29, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.34
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.49, %for.end
  %20 = load i32, i32* %i, align 4
  %cmp36 = icmp slt i32 %20, 4
  br i1 %cmp36, label %for.body.37, label %for.end.51

for.body.37:                                      ; preds = %for.cond.35
  %x38 = getelementptr inbounds %struct.Point, %struct.Point* %a, i32 0, i32 0
  %21 = load double, double* %x38, align 8
  %sub = fsub double -0.000000e+00, %21
  %mul = fmul double %sub, 2.000000e+00
  %22 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %22 to i64
  %arrayidx40 = getelementptr inbounds [4 x %struct.Point], [4 x %struct.Point]* %points, i32 0, i64 %idxprom39
  %x41 = getelementptr inbounds %struct.Point, %struct.Point* %arrayidx40, i32 0, i32 0
  %23 = load double, double* %x41, align 8
  %add = fadd double %23, %mul
  store double %add, double* %x41, align 8
  %y42 = getelementptr inbounds %struct.Point, %struct.Point* %a, i32 0, i32 1
  %24 = load double, double* %y42, align 8
  %sub43 = fsub double -0.000000e+00, %24
  %mul44 = fmul double %sub43, 2.000000e+00
  %25 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %25 to i64
  %arrayidx46 = getelementptr inbounds [4 x %struct.Point], [4 x %struct.Point]* %points, i32 0, i64 %idxprom45
  %y47 = getelementptr inbounds %struct.Point, %struct.Point* %arrayidx46, i32 0, i32 1
  %26 = load double, double* %y47, align 8
  %add48 = fadd double %26, %mul44
  store double %add48, double* %y47, align 8
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.body.37
  %27 = load i32, i32* %i, align 4
  %inc50 = add nsw i32 %27, 1
  store i32 %inc50, i32* %i, align 4
  br label %for.cond.35

for.end.51:                                       ; preds = %for.cond.35
  store i32 0, i32* %min, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.64, %for.end.51
  %28 = load i32, i32* %i, align 4
  %cmp53 = icmp slt i32 %28, 4
  br i1 %cmp53, label %for.body.54, label %for.end.66

for.body.54:                                      ; preds = %for.cond.52
  %29 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %29 to i64
  %arrayidx56 = getelementptr inbounds [4 x %struct.Point], [4 x %struct.Point]* %points, i32 0, i64 %idxprom55
  %y57 = getelementptr inbounds %struct.Point, %struct.Point* %arrayidx56, i32 0, i32 1
  %30 = load double, double* %y57, align 8
  %31 = load i32, i32* %min, align 4
  %idxprom58 = sext i32 %31 to i64
  %arrayidx59 = getelementptr inbounds [4 x %struct.Point], [4 x %struct.Point]* %points, i32 0, i64 %idxprom58
  %y60 = getelementptr inbounds %struct.Point, %struct.Point* %arrayidx59, i32 0, i32 1
  %32 = load double, double* %y60, align 8
  %cmp61 = fcmp olt double %30, %32
  br i1 %cmp61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %for.body.54
  %33 = load i32, i32* %i, align 4
  store i32 %33, i32* %min, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.62, %for.body.54
  br label %for.inc.64

for.inc.64:                                       ; preds = %if.end.63
  %34 = load i32, i32* %i, align 4
  %inc65 = add nsw i32 %34, 1
  store i32 %inc65, i32* %i, align 4
  br label %for.cond.52

for.end.66:                                       ; preds = %for.cond.52
  %arrayidx67 = getelementptr inbounds [4 x %struct.Point], [4 x %struct.Point]* %points, i32 0, i64 0
  %35 = bitcast %struct.Point* %t to i8*
  %36 = bitcast %struct.Point* %arrayidx67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 16, i32 8, i1 false)
  %arrayidx68 = getelementptr inbounds [4 x %struct.Point], [4 x %struct.Point]* %points, i32 0, i64 0
  %37 = load i32, i32* %min, align 4
  %idxprom69 = sext i32 %37 to i64
  %arrayidx70 = getelementptr inbounds [4 x %struct.Point], [4 x %struct.Point]* %points, i32 0, i64 %idxprom69
  %38 = bitcast %struct.Point* %arrayidx68 to i8*
  %39 = bitcast %struct.Point* %arrayidx70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 16, i32 8, i1 false)
  %40 = load i32, i32* %min, align 4
  %idxprom71 = sext i32 %40 to i64
  %arrayidx72 = getelementptr inbounds [4 x %struct.Point], [4 x %struct.Point]* %points, i32 0, i64 %idxprom71
  %41 = bitcast %struct.Point* %arrayidx72 to i8*
  %42 = bitcast %struct.Point* %t to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 16, i32 8, i1 false)
  store i32 1, i32* %i, align 4
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.121, %for.end.66
  %43 = load i32, i32* %i, align 4
  %cmp74 = icmp slt i32 %43, 3
  br i1 %cmp74, label %for.body.75, label %for.end.123

for.body.75:                                      ; preds = %for.cond.73
  store i32 3, i32* %next, align 4
  store double 0x401921FB54442D18, double* %min_theta, align 8
  store double 0x7FEFFFFFFFFFFFFF, double* %min_mag, align 8
  %44 = load i32, i32* %i, align 4
  store i32 %44, i32* %j, align 4
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.110, %for.body.75
  %45 = load i32, i32* %j, align 4
  %cmp77 = icmp slt i32 %45, 4
  br i1 %cmp77, label %for.body.78, label %for.end.112

for.body.78:                                      ; preds = %for.cond.76
  %46 = load i32, i32* %j, align 4
  %idxprom79 = sext i32 %46 to i64
  %arrayidx80 = getelementptr inbounds [4 x %struct.Point], [4 x %struct.Point]* %points, i32 0, i64 %idxprom79
  %y81 = getelementptr inbounds %struct.Point, %struct.Point* %arrayidx80, i32 0, i32 1
  %47 = load double, double* %y81, align 8
  %48 = load i32, i32* %i, align 4
  %sub82 = sub nsw i32 %48, 1
  %idxprom83 = sext i32 %sub82 to i64
  %arrayidx84 = getelementptr inbounds [4 x %struct.Point], [4 x %struct.Point]* %points, i32 0, i64 %idxprom83
  %y85 = getelementptr inbounds %struct.Point, %struct.Point* %arrayidx84, i32 0, i32 1
  %49 = load double, double* %y85, align 8
  %sub86 = fsub double %47, %49
  store double %sub86, double* %sy, align 8
  %50 = load i32, i32* %j, align 4
  %idxprom87 = sext i32 %50 to i64
  %arrayidx88 = getelementptr inbounds [4 x %struct.Point], [4 x %struct.Point]* %points, i32 0, i64 %idxprom87
  %x89 = getelementptr inbounds %struct.Point, %struct.Point* %arrayidx88, i32 0, i32 0
  %51 = load double, double* %x89, align 8
  %52 = load i32, i32* %i, align 4
  %sub90 = sub nsw i32 %52, 1
  %idxprom91 = sext i32 %sub90 to i64
  %arrayidx92 = getelementptr inbounds [4 x %struct.Point], [4 x %struct.Point]* %points, i32 0, i64 %idxprom91
  %x93 = getelementptr inbounds %struct.Point, %struct.Point* %arrayidx92, i32 0, i32 0
  %53 = load double, double* %x93, align 8
  %sub94 = fsub double %51, %53
  store double %sub94, double* %sx, align 8
  %54 = load double, double* %sx, align 8
  %cmp95 = fcmp oeq double %54, 0.000000e+00
  br i1 %cmp95, label %land.lhs.true, label %if.end.98

land.lhs.true:                                    ; preds = %for.body.78
  %55 = load double, double* %sy, align 8
  %cmp96 = fcmp oeq double %55, 0.000000e+00
  br i1 %cmp96, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %land.lhs.true
  %56 = load i32, i32* %j, align 4
  store i32 %56, i32* %next, align 4
  br label %for.end.112

if.end.98:                                        ; preds = %land.lhs.true, %for.body.78
  %57 = load double, double* %sy, align 8
  %sub99 = fsub double -0.000000e+00, %57
  %58 = load double, double* %sx, align 8
  %sub100 = fsub double -0.000000e+00, %58
  %call = call double @atan2(double %sub99, double %sub100) #3
  store double %call, double* %theta, align 8
  %59 = load double, double* %sx, align 8
  %60 = load double, double* %sx, align 8
  %mul101 = fmul double %59, %60
  %61 = load double, double* %sy, align 8
  %62 = load double, double* %sy, align 8
  %mul102 = fmul double %61, %62
  %add103 = fadd double %mul101, %mul102
  store double %add103, double* %mag, align 8
  %63 = load double, double* %theta, align 8
  %64 = load double, double* %min_theta, align 8
  %cmp104 = fcmp olt double %63, %64
  br i1 %cmp104, label %if.then.108, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.98
  %65 = load double, double* %theta, align 8
  %66 = load double, double* %min_theta, align 8
  %cmp105 = fcmp oeq double %65, %66
  br i1 %cmp105, label %land.lhs.true.106, label %if.end.109

land.lhs.true.106:                                ; preds = %lor.lhs.false
  %67 = load double, double* %mag, align 8
  %68 = load double, double* %min_mag, align 8
  %cmp107 = fcmp olt double %67, %68
  br i1 %cmp107, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %land.lhs.true.106, %if.end.98
  %69 = load double, double* %theta, align 8
  store double %69, double* %min_theta, align 8
  %70 = load double, double* %mag, align 8
  store double %70, double* %min_mag, align 8
  %71 = load i32, i32* %j, align 4
  store i32 %71, i32* %next, align 4
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.108, %land.lhs.true.106, %lor.lhs.false
  br label %for.inc.110

for.inc.110:                                      ; preds = %if.end.109
  %72 = load i32, i32* %j, align 4
  %inc111 = add nsw i32 %72, 1
  store i32 %inc111, i32* %j, align 4
  br label %for.cond.76

for.end.112:                                      ; preds = %if.then.97, %for.cond.76
  %73 = load i32, i32* %i, align 4
  %idxprom113 = sext i32 %73 to i64
  %arrayidx114 = getelementptr inbounds [4 x %struct.Point], [4 x %struct.Point]* %points, i32 0, i64 %idxprom113
  %74 = bitcast %struct.Point* %t to i8*
  %75 = bitcast %struct.Point* %arrayidx114 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %74, i8* %75, i64 16, i32 8, i1 false)
  %76 = load i32, i32* %i, align 4
  %idxprom115 = sext i32 %76 to i64
  %arrayidx116 = getelementptr inbounds [4 x %struct.Point], [4 x %struct.Point]* %points, i32 0, i64 %idxprom115
  %77 = load i32, i32* %next, align 4
  %idxprom117 = sext i32 %77 to i64
  %arrayidx118 = getelementptr inbounds [4 x %struct.Point], [4 x %struct.Point]* %points, i32 0, i64 %idxprom117
  %78 = bitcast %struct.Point* %arrayidx116 to i8*
  %79 = bitcast %struct.Point* %arrayidx118 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %78, i8* %79, i64 16, i32 8, i1 false)
  %80 = load i32, i32* %next, align 4
  %idxprom119 = sext i32 %80 to i64
  %arrayidx120 = getelementptr inbounds [4 x %struct.Point], [4 x %struct.Point]* %points, i32 0, i64 %idxprom119
  %81 = bitcast %struct.Point* %arrayidx120 to i8*
  %82 = bitcast %struct.Point* %t to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %81, i8* %82, i64 16, i32 8, i1 false)
  br label %for.inc.121

for.inc.121:                                      ; preds = %for.end.112
  %83 = load i32, i32* %i, align 4
  %inc122 = add nsw i32 %83, 1
  store i32 %inc122, i32* %i, align 4
  br label %for.cond.73

for.end.123:                                      ; preds = %for.cond.73
  %arrayidx124 = getelementptr inbounds [4 x %struct.Point], [4 x %struct.Point]* %points, i32 0, i64 0
  %84 = bitcast %struct.Point* %t to i8*
  %85 = bitcast %struct.Point* %arrayidx124 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %84, i8* %85, i64 16, i32 8, i1 false)
  %arrayidx125 = getelementptr inbounds [4 x %struct.Point], [4 x %struct.Point]* %points, i32 0, i64 0
  %arrayidx126 = getelementptr inbounds [4 x %struct.Point], [4 x %struct.Point]* %points, i32 0, i64 3
  %86 = bitcast %struct.Point* %arrayidx125 to i8*
  %87 = bitcast %struct.Point* %arrayidx126 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %86, i8* %87, i64 16, i32 8, i1 false)
  %arrayidx127 = getelementptr inbounds [4 x %struct.Point], [4 x %struct.Point]* %points, i32 0, i64 3
  %88 = bitcast %struct.Point* %arrayidx127 to i8*
  %89 = bitcast %struct.Point* %t to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %88, i8* %89, i64 16, i32 8, i1 false)
  %arrayidx128 = getelementptr inbounds [4 x %struct.Point], [4 x %struct.Point]* %points, i32 0, i64 1
  %90 = bitcast %struct.Point* %t to i8*
  %91 = bitcast %struct.Point* %arrayidx128 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %90, i8* %91, i64 16, i32 8, i1 false)
  %arrayidx129 = getelementptr inbounds [4 x %struct.Point], [4 x %struct.Point]* %points, i32 0, i64 1
  %arrayidx130 = getelementptr inbounds [4 x %struct.Point], [4 x %struct.Point]* %points, i32 0, i64 2
  %92 = bitcast %struct.Point* %arrayidx129 to i8*
  %93 = bitcast %struct.Point* %arrayidx130 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %92, i8* %93, i64 16, i32 8, i1 false)
  %arrayidx131 = getelementptr inbounds [4 x %struct.Point], [4 x %struct.Point]* %points, i32 0, i64 2
  %94 = bitcast %struct.Point* %arrayidx131 to i8*
  %95 = bitcast %struct.Point* %t to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %94, i8* %95, i64 16, i32 8, i1 false)
  %area = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %r, i32 0, i32 4
  store double 0.000000e+00, double* %area, align 8
  %d = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %r, i32 0, i32 3
  %y132 = getelementptr inbounds %struct.Point, %struct.Point* %d, i32 0, i32 1
  store double 0.000000e+00, double* %y132, align 8
  %d133 = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %r, i32 0, i32 3
  %x134 = getelementptr inbounds %struct.Point, %struct.Point* %d133, i32 0, i32 0
  store double 0.000000e+00, double* %x134, align 8
  %c = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %r, i32 0, i32 2
  %y135 = getelementptr inbounds %struct.Point, %struct.Point* %c, i32 0, i32 1
  store double 0.000000e+00, double* %y135, align 8
  %c136 = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %r, i32 0, i32 2
  %x137 = getelementptr inbounds %struct.Point, %struct.Point* %c136, i32 0, i32 0
  store double 0.000000e+00, double* %x137, align 8
  %b = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %r, i32 0, i32 1
  %y138 = getelementptr inbounds %struct.Point, %struct.Point* %b, i32 0, i32 1
  store double 0.000000e+00, double* %y138, align 8
  %b139 = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %r, i32 0, i32 1
  %x140 = getelementptr inbounds %struct.Point, %struct.Point* %b139, i32 0, i32 0
  store double 0.000000e+00, double* %x140, align 8
  %a141 = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %r, i32 0, i32 0
  %y142 = getelementptr inbounds %struct.Point, %struct.Point* %a141, i32 0, i32 1
  store double 0.000000e+00, double* %y142, align 8
  %a143 = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %r, i32 0, i32 0
  %x144 = getelementptr inbounds %struct.Point, %struct.Point* %a143, i32 0, i32 0
  store double 0.000000e+00, double* %x144, align 8
  %96 = load double, double* %aspect.addr, align 8
  %aspect145 = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %r, i32 0, i32 5
  store double %96, double* %aspect145, align 8
  %97 = load double, double* %aspect.addr, align 8
  %cmp146 = fcmp une double %97, 0.000000e+00
  br i1 %cmp146, label %if.then.147, label %if.else

if.then.147:                                      ; preds = %for.end.123
  store i32 0, i32* %i, align 4
  br label %for.cond.148

for.cond.148:                                     ; preds = %for.inc.151, %if.then.147
  %98 = load i32, i32* %i, align 4
  %cmp149 = icmp slt i32 %98, 4
  br i1 %cmp149, label %for.body.150, label %for.end.153

for.body.150:                                     ; preds = %for.cond.148
  %arraydecay = getelementptr inbounds [4 x %struct.Point], [4 x %struct.Point]* %points, i32 0, i32 0
  %99 = load i32, i32* %i, align 4
  call void @find_maximum_aspect_rectangle(%struct.Rectangle* %r, %struct.Point* %arraydecay, i32 %99)
  br label %for.inc.151

for.inc.151:                                      ; preds = %for.body.150
  %100 = load i32, i32* %i, align 4
  %inc152 = add nsw i32 %100, 1
  store i32 %inc152, i32* %i, align 4
  br label %for.cond.148

for.end.153:                                      ; preds = %for.cond.148
  br label %if.end.164

if.else:                                          ; preds = %for.end.123
  store i32 0, i32* %i, align 4
  br label %for.cond.154

for.cond.154:                                     ; preds = %for.inc.161, %if.else
  %101 = load i32, i32* %i, align 4
  %cmp155 = icmp slt i32 %101, 4
  br i1 %cmp155, label %for.body.156, label %for.end.163

for.body.156:                                     ; preds = %for.cond.154
  %arraydecay157 = getelementptr inbounds [4 x %struct.Point], [4 x %struct.Point]* %points, i32 0, i32 0
  %102 = load i32, i32* %i, align 4
  call void @find_three_point_rectangle(%struct.Rectangle* %r, %struct.Point* %arraydecay157, i32 %102)
  %arraydecay158 = getelementptr inbounds [4 x %struct.Point], [4 x %struct.Point]* %points, i32 0, i32 0
  %103 = load i32, i32* %i, align 4
  call void @find_three_point_rectangle_corner(%struct.Rectangle* %r, %struct.Point* %arraydecay158, i32 %103)
  %arraydecay159 = getelementptr inbounds [4 x %struct.Point], [4 x %struct.Point]* %points, i32 0, i32 0
  %104 = load i32, i32* %i, align 4
  call void @find_two_point_rectangle(%struct.Rectangle* %r, %struct.Point* %arraydecay159, i32 %104)
  %arraydecay160 = getelementptr inbounds [4 x %struct.Point], [4 x %struct.Point]* %points, i32 0, i32 0
  %105 = load i32, i32* %i, align 4
  call void @find_three_point_rectangle_triangle(%struct.Rectangle* %r, %struct.Point* %arraydecay160, i32 %105)
  br label %for.inc.161

for.inc.161:                                      ; preds = %for.body.156
  %106 = load i32, i32* %i, align 4
  %inc162 = add nsw i32 %106, 1
  store i32 %inc162, i32* %i, align 4
  br label %for.cond.154

for.end.163:                                      ; preds = %for.cond.154
  br label %if.end.164

if.end.164:                                       ; preds = %for.end.163, %for.end.153
  %area165 = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %r, i32 0, i32 4
  %107 = load double, double* %area165, align 8
  %cmp166 = fcmp oeq double %107, 0.000000e+00
  br i1 %cmp166, label %if.then.167, label %if.else.168

if.then.167:                                      ; preds = %if.end.164
  %108 = load double, double* %dx1.addr, align 8
  %109 = load double, double* %dy1.addr, align 8
  %110 = load double, double* %dx2.addr, align 8
  %111 = load double, double* %dy2.addr, align 8
  %112 = load double, double* %dx3.addr, align 8
  %113 = load double, double* %dy3.addr, align 8
  %114 = load double, double* %dx4.addr, align 8
  %115 = load double, double* %dy4.addr, align 8
  %116 = load i32*, i32** %x1.addr, align 8
  %117 = load i32*, i32** %y1.addr, align 8
  %118 = load i32*, i32** %x2.addr, align 8
  %119 = load i32*, i32** %y2.addr, align 8
  call void @gimp_transform_resize_adjust(double %108, double %109, double %110, double %111, double %112, double %113, double %114, double %115, i32* %116, i32* %117, i32* %118, i32* %119)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.else.168:                                      ; preds = %if.end.164
  %a169 = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %r, i32 0, i32 0
  %x170 = getelementptr inbounds %struct.Point, %struct.Point* %a169, i32 0, i32 0
  %120 = load double, double* %x170, align 8
  %add171 = fadd double %120, 5.000000e-01
  %call172 = call double @floor(double %add171) #5
  %conv = fptosi double %call172 to i32
  %121 = load i32*, i32** %x1.addr, align 8
  store i32 %conv, i32* %121, align 4
  %a173 = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %r, i32 0, i32 0
  %y174 = getelementptr inbounds %struct.Point, %struct.Point* %a173, i32 0, i32 1
  %122 = load double, double* %y174, align 8
  %add175 = fadd double %122, 5.000000e-01
  %call176 = call double @floor(double %add175) #5
  %conv177 = fptosi double %call176 to i32
  %123 = load i32*, i32** %y1.addr, align 8
  store i32 %conv177, i32* %123, align 4
  %c178 = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %r, i32 0, i32 2
  %x179 = getelementptr inbounds %struct.Point, %struct.Point* %c178, i32 0, i32 0
  %124 = load double, double* %x179, align 8
  %sub180 = fsub double %124, 5.000000e-01
  %call181 = call double @ceil(double %sub180) #5
  %conv182 = fptosi double %call181 to i32
  %125 = load i32*, i32** %x2.addr, align 8
  store i32 %conv182, i32* %125, align 4
  %c183 = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %r, i32 0, i32 2
  %y184 = getelementptr inbounds %struct.Point, %struct.Point* %c183, i32 0, i32 1
  %126 = load double, double* %y184, align 8
  %sub185 = fsub double %126, 5.000000e-01
  %call186 = call double @ceil(double %sub185) #5
  %conv187 = fptosi double %call186 to i32
  %127 = load i32*, i32** %y2.addr, align 8
  store i32 %conv187, i32* %127, align 4
  %128 = load i32*, i32** %x1.addr, align 8
  %129 = load i32, i32* %128, align 4
  %conv188 = sitofp i32 %129 to double
  %x189 = getelementptr inbounds %struct.Point, %struct.Point* %a, i32 0, i32 0
  %130 = load double, double* %x189, align 8
  %sub190 = fsub double -0.000000e+00, %130
  %mul191 = fmul double %sub190, 2.000000e+00
  %sub192 = fsub double %conv188, %mul191
  %conv193 = fptosi double %sub192 to i32
  %131 = load i32*, i32** %x1.addr, align 8
  store i32 %conv193, i32* %131, align 4
  %132 = load i32*, i32** %y1.addr, align 8
  %133 = load i32, i32* %132, align 4
  %conv194 = sitofp i32 %133 to double
  %y195 = getelementptr inbounds %struct.Point, %struct.Point* %a, i32 0, i32 1
  %134 = load double, double* %y195, align 8
  %sub196 = fsub double -0.000000e+00, %134
  %mul197 = fmul double %sub196, 2.000000e+00
  %sub198 = fsub double %conv194, %mul197
  %conv199 = fptosi double %sub198 to i32
  %135 = load i32*, i32** %y1.addr, align 8
  store i32 %conv199, i32* %135, align 4
  %136 = load i32*, i32** %x2.addr, align 8
  %137 = load i32, i32* %136, align 4
  %conv200 = sitofp i32 %137 to double
  %x201 = getelementptr inbounds %struct.Point, %struct.Point* %a, i32 0, i32 0
  %138 = load double, double* %x201, align 8
  %sub202 = fsub double -0.000000e+00, %138
  %mul203 = fmul double %sub202, 2.000000e+00
  %sub204 = fsub double %conv200, %mul203
  %conv205 = fptosi double %sub204 to i32
  %139 = load i32*, i32** %x2.addr, align 8
  store i32 %conv205, i32* %139, align 4
  %140 = load i32*, i32** %y2.addr, align 8
  %141 = load i32, i32* %140, align 4
  %conv206 = sitofp i32 %141 to double
  %y207 = getelementptr inbounds %struct.Point, %struct.Point* %a, i32 0, i32 1
  %142 = load double, double* %y207, align 8
  %sub208 = fsub double -0.000000e+00, %142
  %mul209 = fmul double %sub208, 2.000000e+00
  %sub210 = fsub double %conv206, %mul209
  %conv211 = fptosi double %sub210 to i32
  %143 = load i32*, i32** %y2.addr, align 8
  store i32 %conv211, i32* %143, align 4
  br label %return

return:                                           ; preds = %if.else.168, %if.then.167
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

; Function Attrs: nounwind readnone
declare double @floor(double) #2

; Function Attrs: nounwind readnone
declare double @ceil(double) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind
declare double @atan2(double, double) #4

; Function Attrs: nounwind uwtable
define internal void @find_maximum_aspect_rectangle(%struct.Rectangle* %r, %struct.Point* %points, i32 %p) #0 {
entry:
  %r.addr = alloca %struct.Rectangle*, align 8
  %points.addr = alloca %struct.Point*, align 8
  %p.addr = alloca i32, align 4
  %a = alloca %struct.Point, align 8
  %b = alloca %struct.Point, align 8
  %c = alloca %struct.Point, align 8
  %d = alloca %struct.Point, align 8
  %i1 = alloca %struct.Point, align 8
  %i2 = alloca %struct.Point, align 8
  %i3 = alloca %struct.Point, align 8
  store %struct.Rectangle* %r, %struct.Rectangle** %r.addr, align 8
  store %struct.Point* %points, %struct.Point** %points.addr, align 8
  store i32 %p, i32* %p.addr, align 4
  %0 = load i32, i32* %p.addr, align 4
  %rem = srem i32 %0, 4
  %idxprom = sext i32 %rem to i64
  %1 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %arrayidx = getelementptr inbounds %struct.Point, %struct.Point* %1, i64 %idxprom
  %2 = bitcast %struct.Point* %a to i8*
  %3 = bitcast %struct.Point* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 16, i32 8, i1 false)
  %4 = load i32, i32* %p.addr, align 4
  %add = add nsw i32 %4, 1
  %rem1 = srem i32 %add, 4
  %idxprom2 = sext i32 %rem1 to i64
  %5 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %arrayidx3 = getelementptr inbounds %struct.Point, %struct.Point* %5, i64 %idxprom2
  %6 = bitcast %struct.Point* %b to i8*
  %7 = bitcast %struct.Point* %arrayidx3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false)
  %8 = load i32, i32* %p.addr, align 4
  %add4 = add nsw i32 %8, 2
  %rem5 = srem i32 %add4, 4
  %idxprom6 = sext i32 %rem5 to i64
  %9 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct.Point, %struct.Point* %9, i64 %idxprom6
  %10 = bitcast %struct.Point* %c to i8*
  %11 = bitcast %struct.Point* %arrayidx7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 16, i32 8, i1 false)
  %12 = load i32, i32* %p.addr, align 4
  %add8 = add nsw i32 %12, 3
  %rem9 = srem i32 %add8, 4
  %idxprom10 = sext i32 %rem9 to i64
  %13 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct.Point, %struct.Point* %13, i64 %idxprom10
  %14 = bitcast %struct.Point* %d to i8*
  %15 = bitcast %struct.Point* %arrayidx11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 16, i32 8, i1 false)
  %16 = bitcast %struct.Point* %b to { double, double }*
  %17 = getelementptr { double, double }, { double, double }* %16, i32 0, i32 0
  %18 = load double, double* %17, align 1
  %19 = getelementptr { double, double }, { double, double }* %16, i32 0, i32 1
  %20 = load double, double* %19, align 1
  %21 = bitcast %struct.Point* %c to { double, double }*
  %22 = getelementptr { double, double }, { double, double }* %21, i32 0, i32 0
  %23 = load double, double* %22, align 1
  %24 = getelementptr { double, double }, { double, double }* %21, i32 0, i32 1
  %25 = load double, double* %24, align 1
  %26 = bitcast %struct.Point* %a to { double, double }*
  %27 = getelementptr { double, double }, { double, double }* %26, i32 0, i32 0
  %28 = load double, double* %27, align 1
  %29 = getelementptr { double, double }, { double, double }* %26, i32 0, i32 1
  %30 = load double, double* %29, align 1
  %call = call i32 @intersect_x(double %18, double %20, double %23, double %25, double %28, double %30, %struct.Point* %i1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.46

if.then:                                          ; preds = %entry
  %x = getelementptr inbounds %struct.Point, %struct.Point* %i1, i32 0, i32 0
  %31 = load double, double* %x, align 8
  %32 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %aspect = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %32, i32 0, i32 5
  %33 = load double, double* %aspect, align 8
  %mul = fmul double 1.000000e+00, %33
  %add12 = fadd double %31, %mul
  %x13 = getelementptr inbounds %struct.Point, %struct.Point* %i2, i32 0, i32 0
  store double %add12, double* %x13, align 8
  %y = getelementptr inbounds %struct.Point, %struct.Point* %i1, i32 0, i32 1
  %34 = load double, double* %y, align 8
  %add14 = fadd double %34, 1.000000e+00
  %y15 = getelementptr inbounds %struct.Point, %struct.Point* %i2, i32 0, i32 1
  store double %add14, double* %y15, align 8
  %35 = bitcast %struct.Point* %d to { double, double }*
  %36 = getelementptr { double, double }, { double, double }* %35, i32 0, i32 0
  %37 = load double, double* %36, align 1
  %38 = getelementptr { double, double }, { double, double }* %35, i32 0, i32 1
  %39 = load double, double* %38, align 1
  %40 = bitcast %struct.Point* %a to { double, double }*
  %41 = getelementptr { double, double }, { double, double }* %40, i32 0, i32 0
  %42 = load double, double* %41, align 1
  %43 = getelementptr { double, double }, { double, double }* %40, i32 0, i32 1
  %44 = load double, double* %43, align 1
  %45 = bitcast %struct.Point* %i1 to { double, double }*
  %46 = getelementptr { double, double }, { double, double }* %45, i32 0, i32 0
  %47 = load double, double* %46, align 1
  %48 = getelementptr { double, double }, { double, double }* %45, i32 0, i32 1
  %49 = load double, double* %48, align 1
  %50 = bitcast %struct.Point* %i2 to { double, double }*
  %51 = getelementptr { double, double }, { double, double }* %50, i32 0, i32 0
  %52 = load double, double* %51, align 1
  %53 = getelementptr { double, double }, { double, double }* %50, i32 0, i32 1
  %54 = load double, double* %53, align 1
  %call16 = call i32 @intersect(double %37, double %39, double %42, double %44, double %47, double %49, double %52, double %54, %struct.Point* %i3)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %if.then
  %55 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %56 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %57 = bitcast %struct.Point* %i1 to { double, double }*
  %58 = getelementptr { double, double }, { double, double }* %57, i32 0, i32 0
  %59 = load double, double* %58, align 1
  %60 = getelementptr { double, double }, { double, double }* %57, i32 0, i32 1
  %61 = load double, double* %60, align 1
  %62 = bitcast %struct.Point* %i3 to { double, double }*
  %63 = getelementptr { double, double }, { double, double }* %62, i32 0, i32 0
  %64 = load double, double* %63, align 1
  %65 = getelementptr { double, double }, { double, double }* %62, i32 0, i32 1
  %66 = load double, double* %65, align 1
  %67 = bitcast %struct.Point* %i1 to { double, double }*
  %68 = getelementptr { double, double }, { double, double }* %67, i32 0, i32 0
  %69 = load double, double* %68, align 1
  %70 = getelementptr { double, double }, { double, double }* %67, i32 0, i32 1
  %71 = load double, double* %70, align 1
  %72 = bitcast %struct.Point* %i3 to { double, double }*
  %73 = getelementptr { double, double }, { double, double }* %72, i32 0, i32 0
  %74 = load double, double* %73, align 1
  %75 = getelementptr { double, double }, { double, double }* %72, i32 0, i32 1
  %76 = load double, double* %75, align 1
  call void @add_rectangle(%struct.Point* %55, %struct.Rectangle* %56, double %59, double %61, double %64, double %66, double %69, double %71, double %74, double %76)
  br label %if.end

if.end:                                           ; preds = %if.then.18, %if.then
  %77 = bitcast %struct.Point* %a to { double, double }*
  %78 = getelementptr { double, double }, { double, double }* %77, i32 0, i32 0
  %79 = load double, double* %78, align 1
  %80 = getelementptr { double, double }, { double, double }* %77, i32 0, i32 1
  %81 = load double, double* %80, align 1
  %82 = bitcast %struct.Point* %b to { double, double }*
  %83 = getelementptr { double, double }, { double, double }* %82, i32 0, i32 0
  %84 = load double, double* %83, align 1
  %85 = getelementptr { double, double }, { double, double }* %82, i32 0, i32 1
  %86 = load double, double* %85, align 1
  %87 = bitcast %struct.Point* %i1 to { double, double }*
  %88 = getelementptr { double, double }, { double, double }* %87, i32 0, i32 0
  %89 = load double, double* %88, align 1
  %90 = getelementptr { double, double }, { double, double }* %87, i32 0, i32 1
  %91 = load double, double* %90, align 1
  %92 = bitcast %struct.Point* %i2 to { double, double }*
  %93 = getelementptr { double, double }, { double, double }* %92, i32 0, i32 0
  %94 = load double, double* %93, align 1
  %95 = getelementptr { double, double }, { double, double }* %92, i32 0, i32 1
  %96 = load double, double* %95, align 1
  %call19 = call i32 @intersect(double %79, double %81, double %84, double %86, double %89, double %91, double %94, double %96, %struct.Point* %i3)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end
  %97 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %98 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %99 = bitcast %struct.Point* %i1 to { double, double }*
  %100 = getelementptr { double, double }, { double, double }* %99, i32 0, i32 0
  %101 = load double, double* %100, align 1
  %102 = getelementptr { double, double }, { double, double }* %99, i32 0, i32 1
  %103 = load double, double* %102, align 1
  %104 = bitcast %struct.Point* %i3 to { double, double }*
  %105 = getelementptr { double, double }, { double, double }* %104, i32 0, i32 0
  %106 = load double, double* %105, align 1
  %107 = getelementptr { double, double }, { double, double }* %104, i32 0, i32 1
  %108 = load double, double* %107, align 1
  %109 = bitcast %struct.Point* %i1 to { double, double }*
  %110 = getelementptr { double, double }, { double, double }* %109, i32 0, i32 0
  %111 = load double, double* %110, align 1
  %112 = getelementptr { double, double }, { double, double }* %109, i32 0, i32 1
  %113 = load double, double* %112, align 1
  %114 = bitcast %struct.Point* %i3 to { double, double }*
  %115 = getelementptr { double, double }, { double, double }* %114, i32 0, i32 0
  %116 = load double, double* %115, align 1
  %117 = getelementptr { double, double }, { double, double }* %114, i32 0, i32 1
  %118 = load double, double* %117, align 1
  call void @add_rectangle(%struct.Point* %97, %struct.Rectangle* %98, double %101, double %103, double %106, double %108, double %111, double %113, double %116, double %118)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end
  %119 = bitcast %struct.Point* %c to { double, double }*
  %120 = getelementptr { double, double }, { double, double }* %119, i32 0, i32 0
  %121 = load double, double* %120, align 1
  %122 = getelementptr { double, double }, { double, double }* %119, i32 0, i32 1
  %123 = load double, double* %122, align 1
  %124 = bitcast %struct.Point* %d to { double, double }*
  %125 = getelementptr { double, double }, { double, double }* %124, i32 0, i32 0
  %126 = load double, double* %125, align 1
  %127 = getelementptr { double, double }, { double, double }* %124, i32 0, i32 1
  %128 = load double, double* %127, align 1
  %129 = bitcast %struct.Point* %i1 to { double, double }*
  %130 = getelementptr { double, double }, { double, double }* %129, i32 0, i32 0
  %131 = load double, double* %130, align 1
  %132 = getelementptr { double, double }, { double, double }* %129, i32 0, i32 1
  %133 = load double, double* %132, align 1
  %134 = bitcast %struct.Point* %i2 to { double, double }*
  %135 = getelementptr { double, double }, { double, double }* %134, i32 0, i32 0
  %136 = load double, double* %135, align 1
  %137 = getelementptr { double, double }, { double, double }* %134, i32 0, i32 1
  %138 = load double, double* %137, align 1
  %call23 = call i32 @intersect(double %121, double %123, double %126, double %128, double %131, double %133, double %136, double %138, %struct.Point* %i3)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.22
  %139 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %140 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %141 = bitcast %struct.Point* %i1 to { double, double }*
  %142 = getelementptr { double, double }, { double, double }* %141, i32 0, i32 0
  %143 = load double, double* %142, align 1
  %144 = getelementptr { double, double }, { double, double }* %141, i32 0, i32 1
  %145 = load double, double* %144, align 1
  %146 = bitcast %struct.Point* %i3 to { double, double }*
  %147 = getelementptr { double, double }, { double, double }* %146, i32 0, i32 0
  %148 = load double, double* %147, align 1
  %149 = getelementptr { double, double }, { double, double }* %146, i32 0, i32 1
  %150 = load double, double* %149, align 1
  %151 = bitcast %struct.Point* %i1 to { double, double }*
  %152 = getelementptr { double, double }, { double, double }* %151, i32 0, i32 0
  %153 = load double, double* %152, align 1
  %154 = getelementptr { double, double }, { double, double }* %151, i32 0, i32 1
  %155 = load double, double* %154, align 1
  %156 = bitcast %struct.Point* %i3 to { double, double }*
  %157 = getelementptr { double, double }, { double, double }* %156, i32 0, i32 0
  %158 = load double, double* %157, align 1
  %159 = getelementptr { double, double }, { double, double }* %156, i32 0, i32 1
  %160 = load double, double* %159, align 1
  call void @add_rectangle(%struct.Point* %139, %struct.Rectangle* %140, double %143, double %145, double %148, double %150, double %153, double %155, double %158, double %160)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.end.22
  %x27 = getelementptr inbounds %struct.Point, %struct.Point* %i1, i32 0, i32 0
  %161 = load double, double* %x27, align 8
  %162 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %aspect28 = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %162, i32 0, i32 5
  %163 = load double, double* %aspect28, align 8
  %mul29 = fmul double 1.000000e+00, %163
  %sub = fsub double %161, %mul29
  %x30 = getelementptr inbounds %struct.Point, %struct.Point* %i2, i32 0, i32 0
  store double %sub, double* %x30, align 8
  %y31 = getelementptr inbounds %struct.Point, %struct.Point* %i1, i32 0, i32 1
  %164 = load double, double* %y31, align 8
  %add32 = fadd double %164, 1.000000e+00
  %y33 = getelementptr inbounds %struct.Point, %struct.Point* %i2, i32 0, i32 1
  store double %add32, double* %y33, align 8
  %165 = bitcast %struct.Point* %d to { double, double }*
  %166 = getelementptr { double, double }, { double, double }* %165, i32 0, i32 0
  %167 = load double, double* %166, align 1
  %168 = getelementptr { double, double }, { double, double }* %165, i32 0, i32 1
  %169 = load double, double* %168, align 1
  %170 = bitcast %struct.Point* %a to { double, double }*
  %171 = getelementptr { double, double }, { double, double }* %170, i32 0, i32 0
  %172 = load double, double* %171, align 1
  %173 = getelementptr { double, double }, { double, double }* %170, i32 0, i32 1
  %174 = load double, double* %173, align 1
  %175 = bitcast %struct.Point* %i1 to { double, double }*
  %176 = getelementptr { double, double }, { double, double }* %175, i32 0, i32 0
  %177 = load double, double* %176, align 1
  %178 = getelementptr { double, double }, { double, double }* %175, i32 0, i32 1
  %179 = load double, double* %178, align 1
  %180 = bitcast %struct.Point* %i2 to { double, double }*
  %181 = getelementptr { double, double }, { double, double }* %180, i32 0, i32 0
  %182 = load double, double* %181, align 1
  %183 = getelementptr { double, double }, { double, double }* %180, i32 0, i32 1
  %184 = load double, double* %183, align 1
  %call34 = call i32 @intersect(double %167, double %169, double %172, double %174, double %177, double %179, double %182, double %184, %struct.Point* %i3)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.26
  %185 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %186 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %187 = bitcast %struct.Point* %i1 to { double, double }*
  %188 = getelementptr { double, double }, { double, double }* %187, i32 0, i32 0
  %189 = load double, double* %188, align 1
  %190 = getelementptr { double, double }, { double, double }* %187, i32 0, i32 1
  %191 = load double, double* %190, align 1
  %192 = bitcast %struct.Point* %i3 to { double, double }*
  %193 = getelementptr { double, double }, { double, double }* %192, i32 0, i32 0
  %194 = load double, double* %193, align 1
  %195 = getelementptr { double, double }, { double, double }* %192, i32 0, i32 1
  %196 = load double, double* %195, align 1
  %197 = bitcast %struct.Point* %i1 to { double, double }*
  %198 = getelementptr { double, double }, { double, double }* %197, i32 0, i32 0
  %199 = load double, double* %198, align 1
  %200 = getelementptr { double, double }, { double, double }* %197, i32 0, i32 1
  %201 = load double, double* %200, align 1
  %202 = bitcast %struct.Point* %i3 to { double, double }*
  %203 = getelementptr { double, double }, { double, double }* %202, i32 0, i32 0
  %204 = load double, double* %203, align 1
  %205 = getelementptr { double, double }, { double, double }* %202, i32 0, i32 1
  %206 = load double, double* %205, align 1
  call void @add_rectangle(%struct.Point* %185, %struct.Rectangle* %186, double %189, double %191, double %194, double %196, double %199, double %201, double %204, double %206)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.end.26
  %207 = bitcast %struct.Point* %a to { double, double }*
  %208 = getelementptr { double, double }, { double, double }* %207, i32 0, i32 0
  %209 = load double, double* %208, align 1
  %210 = getelementptr { double, double }, { double, double }* %207, i32 0, i32 1
  %211 = load double, double* %210, align 1
  %212 = bitcast %struct.Point* %b to { double, double }*
  %213 = getelementptr { double, double }, { double, double }* %212, i32 0, i32 0
  %214 = load double, double* %213, align 1
  %215 = getelementptr { double, double }, { double, double }* %212, i32 0, i32 1
  %216 = load double, double* %215, align 1
  %217 = bitcast %struct.Point* %i1 to { double, double }*
  %218 = getelementptr { double, double }, { double, double }* %217, i32 0, i32 0
  %219 = load double, double* %218, align 1
  %220 = getelementptr { double, double }, { double, double }* %217, i32 0, i32 1
  %221 = load double, double* %220, align 1
  %222 = bitcast %struct.Point* %i2 to { double, double }*
  %223 = getelementptr { double, double }, { double, double }* %222, i32 0, i32 0
  %224 = load double, double* %223, align 1
  %225 = getelementptr { double, double }, { double, double }* %222, i32 0, i32 1
  %226 = load double, double* %225, align 1
  %call38 = call i32 @intersect(double %209, double %211, double %214, double %216, double %219, double %221, double %224, double %226, %struct.Point* %i3)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.37
  %227 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %228 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %229 = bitcast %struct.Point* %i1 to { double, double }*
  %230 = getelementptr { double, double }, { double, double }* %229, i32 0, i32 0
  %231 = load double, double* %230, align 1
  %232 = getelementptr { double, double }, { double, double }* %229, i32 0, i32 1
  %233 = load double, double* %232, align 1
  %234 = bitcast %struct.Point* %i3 to { double, double }*
  %235 = getelementptr { double, double }, { double, double }* %234, i32 0, i32 0
  %236 = load double, double* %235, align 1
  %237 = getelementptr { double, double }, { double, double }* %234, i32 0, i32 1
  %238 = load double, double* %237, align 1
  %239 = bitcast %struct.Point* %i1 to { double, double }*
  %240 = getelementptr { double, double }, { double, double }* %239, i32 0, i32 0
  %241 = load double, double* %240, align 1
  %242 = getelementptr { double, double }, { double, double }* %239, i32 0, i32 1
  %243 = load double, double* %242, align 1
  %244 = bitcast %struct.Point* %i3 to { double, double }*
  %245 = getelementptr { double, double }, { double, double }* %244, i32 0, i32 0
  %246 = load double, double* %245, align 1
  %247 = getelementptr { double, double }, { double, double }* %244, i32 0, i32 1
  %248 = load double, double* %247, align 1
  call void @add_rectangle(%struct.Point* %227, %struct.Rectangle* %228, double %231, double %233, double %236, double %238, double %241, double %243, double %246, double %248)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %if.end.37
  %249 = bitcast %struct.Point* %c to { double, double }*
  %250 = getelementptr { double, double }, { double, double }* %249, i32 0, i32 0
  %251 = load double, double* %250, align 1
  %252 = getelementptr { double, double }, { double, double }* %249, i32 0, i32 1
  %253 = load double, double* %252, align 1
  %254 = bitcast %struct.Point* %d to { double, double }*
  %255 = getelementptr { double, double }, { double, double }* %254, i32 0, i32 0
  %256 = load double, double* %255, align 1
  %257 = getelementptr { double, double }, { double, double }* %254, i32 0, i32 1
  %258 = load double, double* %257, align 1
  %259 = bitcast %struct.Point* %i1 to { double, double }*
  %260 = getelementptr { double, double }, { double, double }* %259, i32 0, i32 0
  %261 = load double, double* %260, align 1
  %262 = getelementptr { double, double }, { double, double }* %259, i32 0, i32 1
  %263 = load double, double* %262, align 1
  %264 = bitcast %struct.Point* %i2 to { double, double }*
  %265 = getelementptr { double, double }, { double, double }* %264, i32 0, i32 0
  %266 = load double, double* %265, align 1
  %267 = getelementptr { double, double }, { double, double }* %264, i32 0, i32 1
  %268 = load double, double* %267, align 1
  %call42 = call i32 @intersect(double %251, double %253, double %256, double %258, double %261, double %263, double %266, double %268, %struct.Point* %i3)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end.41
  %269 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %270 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %271 = bitcast %struct.Point* %i1 to { double, double }*
  %272 = getelementptr { double, double }, { double, double }* %271, i32 0, i32 0
  %273 = load double, double* %272, align 1
  %274 = getelementptr { double, double }, { double, double }* %271, i32 0, i32 1
  %275 = load double, double* %274, align 1
  %276 = bitcast %struct.Point* %i3 to { double, double }*
  %277 = getelementptr { double, double }, { double, double }* %276, i32 0, i32 0
  %278 = load double, double* %277, align 1
  %279 = getelementptr { double, double }, { double, double }* %276, i32 0, i32 1
  %280 = load double, double* %279, align 1
  %281 = bitcast %struct.Point* %i1 to { double, double }*
  %282 = getelementptr { double, double }, { double, double }* %281, i32 0, i32 0
  %283 = load double, double* %282, align 1
  %284 = getelementptr { double, double }, { double, double }* %281, i32 0, i32 1
  %285 = load double, double* %284, align 1
  %286 = bitcast %struct.Point* %i3 to { double, double }*
  %287 = getelementptr { double, double }, { double, double }* %286, i32 0, i32 0
  %288 = load double, double* %287, align 1
  %289 = getelementptr { double, double }, { double, double }* %286, i32 0, i32 1
  %290 = load double, double* %289, align 1
  call void @add_rectangle(%struct.Point* %269, %struct.Rectangle* %270, double %273, double %275, double %278, double %280, double %283, double %285, double %288, double %290)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %if.end.41
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %entry
  %291 = bitcast %struct.Point* %b to { double, double }*
  %292 = getelementptr { double, double }, { double, double }* %291, i32 0, i32 0
  %293 = load double, double* %292, align 1
  %294 = getelementptr { double, double }, { double, double }* %291, i32 0, i32 1
  %295 = load double, double* %294, align 1
  %296 = bitcast %struct.Point* %c to { double, double }*
  %297 = getelementptr { double, double }, { double, double }* %296, i32 0, i32 0
  %298 = load double, double* %297, align 1
  %299 = getelementptr { double, double }, { double, double }* %296, i32 0, i32 1
  %300 = load double, double* %299, align 1
  %301 = bitcast %struct.Point* %a to { double, double }*
  %302 = getelementptr { double, double }, { double, double }* %301, i32 0, i32 0
  %303 = load double, double* %302, align 1
  %304 = getelementptr { double, double }, { double, double }* %301, i32 0, i32 1
  %305 = load double, double* %304, align 1
  %call47 = call i32 @intersect_y(double %293, double %295, double %298, double %300, double %303, double %305, %struct.Point* %i1)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then.49, label %if.end.90

if.then.49:                                       ; preds = %if.end.46
  %x50 = getelementptr inbounds %struct.Point, %struct.Point* %i1, i32 0, i32 0
  %306 = load double, double* %x50, align 8
  %307 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %aspect51 = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %307, i32 0, i32 5
  %308 = load double, double* %aspect51, align 8
  %mul52 = fmul double 1.000000e+00, %308
  %add53 = fadd double %306, %mul52
  %x54 = getelementptr inbounds %struct.Point, %struct.Point* %i2, i32 0, i32 0
  store double %add53, double* %x54, align 8
  %y55 = getelementptr inbounds %struct.Point, %struct.Point* %i1, i32 0, i32 1
  %309 = load double, double* %y55, align 8
  %add56 = fadd double %309, 1.000000e+00
  %y57 = getelementptr inbounds %struct.Point, %struct.Point* %i2, i32 0, i32 1
  store double %add56, double* %y57, align 8
  %310 = bitcast %struct.Point* %d to { double, double }*
  %311 = getelementptr { double, double }, { double, double }* %310, i32 0, i32 0
  %312 = load double, double* %311, align 1
  %313 = getelementptr { double, double }, { double, double }* %310, i32 0, i32 1
  %314 = load double, double* %313, align 1
  %315 = bitcast %struct.Point* %a to { double, double }*
  %316 = getelementptr { double, double }, { double, double }* %315, i32 0, i32 0
  %317 = load double, double* %316, align 1
  %318 = getelementptr { double, double }, { double, double }* %315, i32 0, i32 1
  %319 = load double, double* %318, align 1
  %320 = bitcast %struct.Point* %i1 to { double, double }*
  %321 = getelementptr { double, double }, { double, double }* %320, i32 0, i32 0
  %322 = load double, double* %321, align 1
  %323 = getelementptr { double, double }, { double, double }* %320, i32 0, i32 1
  %324 = load double, double* %323, align 1
  %325 = bitcast %struct.Point* %i2 to { double, double }*
  %326 = getelementptr { double, double }, { double, double }* %325, i32 0, i32 0
  %327 = load double, double* %326, align 1
  %328 = getelementptr { double, double }, { double, double }* %325, i32 0, i32 1
  %329 = load double, double* %328, align 1
  %call58 = call i32 @intersect(double %312, double %314, double %317, double %319, double %322, double %324, double %327, double %329, %struct.Point* %i3)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.then.49
  %330 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %331 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %332 = bitcast %struct.Point* %i1 to { double, double }*
  %333 = getelementptr { double, double }, { double, double }* %332, i32 0, i32 0
  %334 = load double, double* %333, align 1
  %335 = getelementptr { double, double }, { double, double }* %332, i32 0, i32 1
  %336 = load double, double* %335, align 1
  %337 = bitcast %struct.Point* %i3 to { double, double }*
  %338 = getelementptr { double, double }, { double, double }* %337, i32 0, i32 0
  %339 = load double, double* %338, align 1
  %340 = getelementptr { double, double }, { double, double }* %337, i32 0, i32 1
  %341 = load double, double* %340, align 1
  %342 = bitcast %struct.Point* %i1 to { double, double }*
  %343 = getelementptr { double, double }, { double, double }* %342, i32 0, i32 0
  %344 = load double, double* %343, align 1
  %345 = getelementptr { double, double }, { double, double }* %342, i32 0, i32 1
  %346 = load double, double* %345, align 1
  %347 = bitcast %struct.Point* %i3 to { double, double }*
  %348 = getelementptr { double, double }, { double, double }* %347, i32 0, i32 0
  %349 = load double, double* %348, align 1
  %350 = getelementptr { double, double }, { double, double }* %347, i32 0, i32 1
  %351 = load double, double* %350, align 1
  call void @add_rectangle(%struct.Point* %330, %struct.Rectangle* %331, double %334, double %336, double %339, double %341, double %344, double %346, double %349, double %351)
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %if.then.49
  %352 = bitcast %struct.Point* %a to { double, double }*
  %353 = getelementptr { double, double }, { double, double }* %352, i32 0, i32 0
  %354 = load double, double* %353, align 1
  %355 = getelementptr { double, double }, { double, double }* %352, i32 0, i32 1
  %356 = load double, double* %355, align 1
  %357 = bitcast %struct.Point* %b to { double, double }*
  %358 = getelementptr { double, double }, { double, double }* %357, i32 0, i32 0
  %359 = load double, double* %358, align 1
  %360 = getelementptr { double, double }, { double, double }* %357, i32 0, i32 1
  %361 = load double, double* %360, align 1
  %362 = bitcast %struct.Point* %i1 to { double, double }*
  %363 = getelementptr { double, double }, { double, double }* %362, i32 0, i32 0
  %364 = load double, double* %363, align 1
  %365 = getelementptr { double, double }, { double, double }* %362, i32 0, i32 1
  %366 = load double, double* %365, align 1
  %367 = bitcast %struct.Point* %i2 to { double, double }*
  %368 = getelementptr { double, double }, { double, double }* %367, i32 0, i32 0
  %369 = load double, double* %368, align 1
  %370 = getelementptr { double, double }, { double, double }* %367, i32 0, i32 1
  %371 = load double, double* %370, align 1
  %call62 = call i32 @intersect(double %354, double %356, double %359, double %361, double %364, double %366, double %369, double %371, %struct.Point* %i3)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.end.61
  %372 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %373 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %374 = bitcast %struct.Point* %i1 to { double, double }*
  %375 = getelementptr { double, double }, { double, double }* %374, i32 0, i32 0
  %376 = load double, double* %375, align 1
  %377 = getelementptr { double, double }, { double, double }* %374, i32 0, i32 1
  %378 = load double, double* %377, align 1
  %379 = bitcast %struct.Point* %i3 to { double, double }*
  %380 = getelementptr { double, double }, { double, double }* %379, i32 0, i32 0
  %381 = load double, double* %380, align 1
  %382 = getelementptr { double, double }, { double, double }* %379, i32 0, i32 1
  %383 = load double, double* %382, align 1
  %384 = bitcast %struct.Point* %i1 to { double, double }*
  %385 = getelementptr { double, double }, { double, double }* %384, i32 0, i32 0
  %386 = load double, double* %385, align 1
  %387 = getelementptr { double, double }, { double, double }* %384, i32 0, i32 1
  %388 = load double, double* %387, align 1
  %389 = bitcast %struct.Point* %i3 to { double, double }*
  %390 = getelementptr { double, double }, { double, double }* %389, i32 0, i32 0
  %391 = load double, double* %390, align 1
  %392 = getelementptr { double, double }, { double, double }* %389, i32 0, i32 1
  %393 = load double, double* %392, align 1
  call void @add_rectangle(%struct.Point* %372, %struct.Rectangle* %373, double %376, double %378, double %381, double %383, double %386, double %388, double %391, double %393)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.64, %if.end.61
  %394 = bitcast %struct.Point* %c to { double, double }*
  %395 = getelementptr { double, double }, { double, double }* %394, i32 0, i32 0
  %396 = load double, double* %395, align 1
  %397 = getelementptr { double, double }, { double, double }* %394, i32 0, i32 1
  %398 = load double, double* %397, align 1
  %399 = bitcast %struct.Point* %d to { double, double }*
  %400 = getelementptr { double, double }, { double, double }* %399, i32 0, i32 0
  %401 = load double, double* %400, align 1
  %402 = getelementptr { double, double }, { double, double }* %399, i32 0, i32 1
  %403 = load double, double* %402, align 1
  %404 = bitcast %struct.Point* %i1 to { double, double }*
  %405 = getelementptr { double, double }, { double, double }* %404, i32 0, i32 0
  %406 = load double, double* %405, align 1
  %407 = getelementptr { double, double }, { double, double }* %404, i32 0, i32 1
  %408 = load double, double* %407, align 1
  %409 = bitcast %struct.Point* %i2 to { double, double }*
  %410 = getelementptr { double, double }, { double, double }* %409, i32 0, i32 0
  %411 = load double, double* %410, align 1
  %412 = getelementptr { double, double }, { double, double }* %409, i32 0, i32 1
  %413 = load double, double* %412, align 1
  %call66 = call i32 @intersect(double %396, double %398, double %401, double %403, double %406, double %408, double %411, double %413, %struct.Point* %i3)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %if.end.65
  %414 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %415 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %416 = bitcast %struct.Point* %i1 to { double, double }*
  %417 = getelementptr { double, double }, { double, double }* %416, i32 0, i32 0
  %418 = load double, double* %417, align 1
  %419 = getelementptr { double, double }, { double, double }* %416, i32 0, i32 1
  %420 = load double, double* %419, align 1
  %421 = bitcast %struct.Point* %i3 to { double, double }*
  %422 = getelementptr { double, double }, { double, double }* %421, i32 0, i32 0
  %423 = load double, double* %422, align 1
  %424 = getelementptr { double, double }, { double, double }* %421, i32 0, i32 1
  %425 = load double, double* %424, align 1
  %426 = bitcast %struct.Point* %i1 to { double, double }*
  %427 = getelementptr { double, double }, { double, double }* %426, i32 0, i32 0
  %428 = load double, double* %427, align 1
  %429 = getelementptr { double, double }, { double, double }* %426, i32 0, i32 1
  %430 = load double, double* %429, align 1
  %431 = bitcast %struct.Point* %i3 to { double, double }*
  %432 = getelementptr { double, double }, { double, double }* %431, i32 0, i32 0
  %433 = load double, double* %432, align 1
  %434 = getelementptr { double, double }, { double, double }* %431, i32 0, i32 1
  %435 = load double, double* %434, align 1
  call void @add_rectangle(%struct.Point* %414, %struct.Rectangle* %415, double %418, double %420, double %423, double %425, double %428, double %430, double %433, double %435)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.68, %if.end.65
  %x70 = getelementptr inbounds %struct.Point, %struct.Point* %i1, i32 0, i32 0
  %436 = load double, double* %x70, align 8
  %437 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %aspect71 = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %437, i32 0, i32 5
  %438 = load double, double* %aspect71, align 8
  %mul72 = fmul double 1.000000e+00, %438
  %sub73 = fsub double %436, %mul72
  %x74 = getelementptr inbounds %struct.Point, %struct.Point* %i2, i32 0, i32 0
  store double %sub73, double* %x74, align 8
  %y75 = getelementptr inbounds %struct.Point, %struct.Point* %i1, i32 0, i32 1
  %439 = load double, double* %y75, align 8
  %add76 = fadd double %439, 1.000000e+00
  %y77 = getelementptr inbounds %struct.Point, %struct.Point* %i2, i32 0, i32 1
  store double %add76, double* %y77, align 8
  %440 = bitcast %struct.Point* %d to { double, double }*
  %441 = getelementptr { double, double }, { double, double }* %440, i32 0, i32 0
  %442 = load double, double* %441, align 1
  %443 = getelementptr { double, double }, { double, double }* %440, i32 0, i32 1
  %444 = load double, double* %443, align 1
  %445 = bitcast %struct.Point* %a to { double, double }*
  %446 = getelementptr { double, double }, { double, double }* %445, i32 0, i32 0
  %447 = load double, double* %446, align 1
  %448 = getelementptr { double, double }, { double, double }* %445, i32 0, i32 1
  %449 = load double, double* %448, align 1
  %450 = bitcast %struct.Point* %i1 to { double, double }*
  %451 = getelementptr { double, double }, { double, double }* %450, i32 0, i32 0
  %452 = load double, double* %451, align 1
  %453 = getelementptr { double, double }, { double, double }* %450, i32 0, i32 1
  %454 = load double, double* %453, align 1
  %455 = bitcast %struct.Point* %i2 to { double, double }*
  %456 = getelementptr { double, double }, { double, double }* %455, i32 0, i32 0
  %457 = load double, double* %456, align 1
  %458 = getelementptr { double, double }, { double, double }* %455, i32 0, i32 1
  %459 = load double, double* %458, align 1
  %call78 = call i32 @intersect(double %442, double %444, double %447, double %449, double %452, double %454, double %457, double %459, %struct.Point* %i3)
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %if.end.69
  %460 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %461 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %462 = bitcast %struct.Point* %i1 to { double, double }*
  %463 = getelementptr { double, double }, { double, double }* %462, i32 0, i32 0
  %464 = load double, double* %463, align 1
  %465 = getelementptr { double, double }, { double, double }* %462, i32 0, i32 1
  %466 = load double, double* %465, align 1
  %467 = bitcast %struct.Point* %i3 to { double, double }*
  %468 = getelementptr { double, double }, { double, double }* %467, i32 0, i32 0
  %469 = load double, double* %468, align 1
  %470 = getelementptr { double, double }, { double, double }* %467, i32 0, i32 1
  %471 = load double, double* %470, align 1
  %472 = bitcast %struct.Point* %i1 to { double, double }*
  %473 = getelementptr { double, double }, { double, double }* %472, i32 0, i32 0
  %474 = load double, double* %473, align 1
  %475 = getelementptr { double, double }, { double, double }* %472, i32 0, i32 1
  %476 = load double, double* %475, align 1
  %477 = bitcast %struct.Point* %i3 to { double, double }*
  %478 = getelementptr { double, double }, { double, double }* %477, i32 0, i32 0
  %479 = load double, double* %478, align 1
  %480 = getelementptr { double, double }, { double, double }* %477, i32 0, i32 1
  %481 = load double, double* %480, align 1
  call void @add_rectangle(%struct.Point* %460, %struct.Rectangle* %461, double %464, double %466, double %469, double %471, double %474, double %476, double %479, double %481)
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.80, %if.end.69
  %482 = bitcast %struct.Point* %a to { double, double }*
  %483 = getelementptr { double, double }, { double, double }* %482, i32 0, i32 0
  %484 = load double, double* %483, align 1
  %485 = getelementptr { double, double }, { double, double }* %482, i32 0, i32 1
  %486 = load double, double* %485, align 1
  %487 = bitcast %struct.Point* %b to { double, double }*
  %488 = getelementptr { double, double }, { double, double }* %487, i32 0, i32 0
  %489 = load double, double* %488, align 1
  %490 = getelementptr { double, double }, { double, double }* %487, i32 0, i32 1
  %491 = load double, double* %490, align 1
  %492 = bitcast %struct.Point* %i1 to { double, double }*
  %493 = getelementptr { double, double }, { double, double }* %492, i32 0, i32 0
  %494 = load double, double* %493, align 1
  %495 = getelementptr { double, double }, { double, double }* %492, i32 0, i32 1
  %496 = load double, double* %495, align 1
  %497 = bitcast %struct.Point* %i2 to { double, double }*
  %498 = getelementptr { double, double }, { double, double }* %497, i32 0, i32 0
  %499 = load double, double* %498, align 1
  %500 = getelementptr { double, double }, { double, double }* %497, i32 0, i32 1
  %501 = load double, double* %500, align 1
  %call82 = call i32 @intersect(double %484, double %486, double %489, double %491, double %494, double %496, double %499, double %501, %struct.Point* %i3)
  %tobool83 = icmp ne i32 %call82, 0
  br i1 %tobool83, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.end.81
  %502 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %503 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %504 = bitcast %struct.Point* %i1 to { double, double }*
  %505 = getelementptr { double, double }, { double, double }* %504, i32 0, i32 0
  %506 = load double, double* %505, align 1
  %507 = getelementptr { double, double }, { double, double }* %504, i32 0, i32 1
  %508 = load double, double* %507, align 1
  %509 = bitcast %struct.Point* %i3 to { double, double }*
  %510 = getelementptr { double, double }, { double, double }* %509, i32 0, i32 0
  %511 = load double, double* %510, align 1
  %512 = getelementptr { double, double }, { double, double }* %509, i32 0, i32 1
  %513 = load double, double* %512, align 1
  %514 = bitcast %struct.Point* %i1 to { double, double }*
  %515 = getelementptr { double, double }, { double, double }* %514, i32 0, i32 0
  %516 = load double, double* %515, align 1
  %517 = getelementptr { double, double }, { double, double }* %514, i32 0, i32 1
  %518 = load double, double* %517, align 1
  %519 = bitcast %struct.Point* %i3 to { double, double }*
  %520 = getelementptr { double, double }, { double, double }* %519, i32 0, i32 0
  %521 = load double, double* %520, align 1
  %522 = getelementptr { double, double }, { double, double }* %519, i32 0, i32 1
  %523 = load double, double* %522, align 1
  call void @add_rectangle(%struct.Point* %502, %struct.Rectangle* %503, double %506, double %508, double %511, double %513, double %516, double %518, double %521, double %523)
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.84, %if.end.81
  %524 = bitcast %struct.Point* %c to { double, double }*
  %525 = getelementptr { double, double }, { double, double }* %524, i32 0, i32 0
  %526 = load double, double* %525, align 1
  %527 = getelementptr { double, double }, { double, double }* %524, i32 0, i32 1
  %528 = load double, double* %527, align 1
  %529 = bitcast %struct.Point* %d to { double, double }*
  %530 = getelementptr { double, double }, { double, double }* %529, i32 0, i32 0
  %531 = load double, double* %530, align 1
  %532 = getelementptr { double, double }, { double, double }* %529, i32 0, i32 1
  %533 = load double, double* %532, align 1
  %534 = bitcast %struct.Point* %i1 to { double, double }*
  %535 = getelementptr { double, double }, { double, double }* %534, i32 0, i32 0
  %536 = load double, double* %535, align 1
  %537 = getelementptr { double, double }, { double, double }* %534, i32 0, i32 1
  %538 = load double, double* %537, align 1
  %539 = bitcast %struct.Point* %i2 to { double, double }*
  %540 = getelementptr { double, double }, { double, double }* %539, i32 0, i32 0
  %541 = load double, double* %540, align 1
  %542 = getelementptr { double, double }, { double, double }* %539, i32 0, i32 1
  %543 = load double, double* %542, align 1
  %call86 = call i32 @intersect(double %526, double %528, double %531, double %533, double %536, double %538, double %541, double %543, %struct.Point* %i3)
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %if.end.85
  %544 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %545 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %546 = bitcast %struct.Point* %i1 to { double, double }*
  %547 = getelementptr { double, double }, { double, double }* %546, i32 0, i32 0
  %548 = load double, double* %547, align 1
  %549 = getelementptr { double, double }, { double, double }* %546, i32 0, i32 1
  %550 = load double, double* %549, align 1
  %551 = bitcast %struct.Point* %i3 to { double, double }*
  %552 = getelementptr { double, double }, { double, double }* %551, i32 0, i32 0
  %553 = load double, double* %552, align 1
  %554 = getelementptr { double, double }, { double, double }* %551, i32 0, i32 1
  %555 = load double, double* %554, align 1
  %556 = bitcast %struct.Point* %i1 to { double, double }*
  %557 = getelementptr { double, double }, { double, double }* %556, i32 0, i32 0
  %558 = load double, double* %557, align 1
  %559 = getelementptr { double, double }, { double, double }* %556, i32 0, i32 1
  %560 = load double, double* %559, align 1
  %561 = bitcast %struct.Point* %i3 to { double, double }*
  %562 = getelementptr { double, double }, { double, double }* %561, i32 0, i32 0
  %563 = load double, double* %562, align 1
  %564 = getelementptr { double, double }, { double, double }* %561, i32 0, i32 1
  %565 = load double, double* %564, align 1
  call void @add_rectangle(%struct.Point* %544, %struct.Rectangle* %545, double %548, double %550, double %553, double %555, double %558, double %560, double %563, double %565)
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.88, %if.end.85
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.end.46
  %566 = bitcast %struct.Point* %c to { double, double }*
  %567 = getelementptr { double, double }, { double, double }* %566, i32 0, i32 0
  %568 = load double, double* %567, align 1
  %569 = getelementptr { double, double }, { double, double }* %566, i32 0, i32 1
  %570 = load double, double* %569, align 1
  %571 = bitcast %struct.Point* %d to { double, double }*
  %572 = getelementptr { double, double }, { double, double }* %571, i32 0, i32 0
  %573 = load double, double* %572, align 1
  %574 = getelementptr { double, double }, { double, double }* %571, i32 0, i32 1
  %575 = load double, double* %574, align 1
  %576 = bitcast %struct.Point* %a to { double, double }*
  %577 = getelementptr { double, double }, { double, double }* %576, i32 0, i32 0
  %578 = load double, double* %577, align 1
  %579 = getelementptr { double, double }, { double, double }* %576, i32 0, i32 1
  %580 = load double, double* %579, align 1
  %call91 = call i32 @intersect_x(double %568, double %570, double %573, double %575, double %578, double %580, %struct.Point* %i1)
  %tobool92 = icmp ne i32 %call91, 0
  br i1 %tobool92, label %if.then.93, label %if.end.134

if.then.93:                                       ; preds = %if.end.90
  %x94 = getelementptr inbounds %struct.Point, %struct.Point* %i1, i32 0, i32 0
  %581 = load double, double* %x94, align 8
  %582 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %aspect95 = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %582, i32 0, i32 5
  %583 = load double, double* %aspect95, align 8
  %mul96 = fmul double 1.000000e+00, %583
  %add97 = fadd double %581, %mul96
  %x98 = getelementptr inbounds %struct.Point, %struct.Point* %i2, i32 0, i32 0
  store double %add97, double* %x98, align 8
  %y99 = getelementptr inbounds %struct.Point, %struct.Point* %i1, i32 0, i32 1
  %584 = load double, double* %y99, align 8
  %add100 = fadd double %584, 1.000000e+00
  %y101 = getelementptr inbounds %struct.Point, %struct.Point* %i2, i32 0, i32 1
  store double %add100, double* %y101, align 8
  %585 = bitcast %struct.Point* %d to { double, double }*
  %586 = getelementptr { double, double }, { double, double }* %585, i32 0, i32 0
  %587 = load double, double* %586, align 1
  %588 = getelementptr { double, double }, { double, double }* %585, i32 0, i32 1
  %589 = load double, double* %588, align 1
  %590 = bitcast %struct.Point* %a to { double, double }*
  %591 = getelementptr { double, double }, { double, double }* %590, i32 0, i32 0
  %592 = load double, double* %591, align 1
  %593 = getelementptr { double, double }, { double, double }* %590, i32 0, i32 1
  %594 = load double, double* %593, align 1
  %595 = bitcast %struct.Point* %i1 to { double, double }*
  %596 = getelementptr { double, double }, { double, double }* %595, i32 0, i32 0
  %597 = load double, double* %596, align 1
  %598 = getelementptr { double, double }, { double, double }* %595, i32 0, i32 1
  %599 = load double, double* %598, align 1
  %600 = bitcast %struct.Point* %i2 to { double, double }*
  %601 = getelementptr { double, double }, { double, double }* %600, i32 0, i32 0
  %602 = load double, double* %601, align 1
  %603 = getelementptr { double, double }, { double, double }* %600, i32 0, i32 1
  %604 = load double, double* %603, align 1
  %call102 = call i32 @intersect(double %587, double %589, double %592, double %594, double %597, double %599, double %602, double %604, %struct.Point* %i3)
  %tobool103 = icmp ne i32 %call102, 0
  br i1 %tobool103, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %if.then.93
  %605 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %606 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %607 = bitcast %struct.Point* %i1 to { double, double }*
  %608 = getelementptr { double, double }, { double, double }* %607, i32 0, i32 0
  %609 = load double, double* %608, align 1
  %610 = getelementptr { double, double }, { double, double }* %607, i32 0, i32 1
  %611 = load double, double* %610, align 1
  %612 = bitcast %struct.Point* %i3 to { double, double }*
  %613 = getelementptr { double, double }, { double, double }* %612, i32 0, i32 0
  %614 = load double, double* %613, align 1
  %615 = getelementptr { double, double }, { double, double }* %612, i32 0, i32 1
  %616 = load double, double* %615, align 1
  %617 = bitcast %struct.Point* %i1 to { double, double }*
  %618 = getelementptr { double, double }, { double, double }* %617, i32 0, i32 0
  %619 = load double, double* %618, align 1
  %620 = getelementptr { double, double }, { double, double }* %617, i32 0, i32 1
  %621 = load double, double* %620, align 1
  %622 = bitcast %struct.Point* %i3 to { double, double }*
  %623 = getelementptr { double, double }, { double, double }* %622, i32 0, i32 0
  %624 = load double, double* %623, align 1
  %625 = getelementptr { double, double }, { double, double }* %622, i32 0, i32 1
  %626 = load double, double* %625, align 1
  call void @add_rectangle(%struct.Point* %605, %struct.Rectangle* %606, double %609, double %611, double %614, double %616, double %619, double %621, double %624, double %626)
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.104, %if.then.93
  %627 = bitcast %struct.Point* %a to { double, double }*
  %628 = getelementptr { double, double }, { double, double }* %627, i32 0, i32 0
  %629 = load double, double* %628, align 1
  %630 = getelementptr { double, double }, { double, double }* %627, i32 0, i32 1
  %631 = load double, double* %630, align 1
  %632 = bitcast %struct.Point* %b to { double, double }*
  %633 = getelementptr { double, double }, { double, double }* %632, i32 0, i32 0
  %634 = load double, double* %633, align 1
  %635 = getelementptr { double, double }, { double, double }* %632, i32 0, i32 1
  %636 = load double, double* %635, align 1
  %637 = bitcast %struct.Point* %i1 to { double, double }*
  %638 = getelementptr { double, double }, { double, double }* %637, i32 0, i32 0
  %639 = load double, double* %638, align 1
  %640 = getelementptr { double, double }, { double, double }* %637, i32 0, i32 1
  %641 = load double, double* %640, align 1
  %642 = bitcast %struct.Point* %i2 to { double, double }*
  %643 = getelementptr { double, double }, { double, double }* %642, i32 0, i32 0
  %644 = load double, double* %643, align 1
  %645 = getelementptr { double, double }, { double, double }* %642, i32 0, i32 1
  %646 = load double, double* %645, align 1
  %call106 = call i32 @intersect(double %629, double %631, double %634, double %636, double %639, double %641, double %644, double %646, %struct.Point* %i3)
  %tobool107 = icmp ne i32 %call106, 0
  br i1 %tobool107, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %if.end.105
  %647 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %648 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %649 = bitcast %struct.Point* %i1 to { double, double }*
  %650 = getelementptr { double, double }, { double, double }* %649, i32 0, i32 0
  %651 = load double, double* %650, align 1
  %652 = getelementptr { double, double }, { double, double }* %649, i32 0, i32 1
  %653 = load double, double* %652, align 1
  %654 = bitcast %struct.Point* %i3 to { double, double }*
  %655 = getelementptr { double, double }, { double, double }* %654, i32 0, i32 0
  %656 = load double, double* %655, align 1
  %657 = getelementptr { double, double }, { double, double }* %654, i32 0, i32 1
  %658 = load double, double* %657, align 1
  %659 = bitcast %struct.Point* %i1 to { double, double }*
  %660 = getelementptr { double, double }, { double, double }* %659, i32 0, i32 0
  %661 = load double, double* %660, align 1
  %662 = getelementptr { double, double }, { double, double }* %659, i32 0, i32 1
  %663 = load double, double* %662, align 1
  %664 = bitcast %struct.Point* %i3 to { double, double }*
  %665 = getelementptr { double, double }, { double, double }* %664, i32 0, i32 0
  %666 = load double, double* %665, align 1
  %667 = getelementptr { double, double }, { double, double }* %664, i32 0, i32 1
  %668 = load double, double* %667, align 1
  call void @add_rectangle(%struct.Point* %647, %struct.Rectangle* %648, double %651, double %653, double %656, double %658, double %661, double %663, double %666, double %668)
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.108, %if.end.105
  %669 = bitcast %struct.Point* %b to { double, double }*
  %670 = getelementptr { double, double }, { double, double }* %669, i32 0, i32 0
  %671 = load double, double* %670, align 1
  %672 = getelementptr { double, double }, { double, double }* %669, i32 0, i32 1
  %673 = load double, double* %672, align 1
  %674 = bitcast %struct.Point* %c to { double, double }*
  %675 = getelementptr { double, double }, { double, double }* %674, i32 0, i32 0
  %676 = load double, double* %675, align 1
  %677 = getelementptr { double, double }, { double, double }* %674, i32 0, i32 1
  %678 = load double, double* %677, align 1
  %679 = bitcast %struct.Point* %i1 to { double, double }*
  %680 = getelementptr { double, double }, { double, double }* %679, i32 0, i32 0
  %681 = load double, double* %680, align 1
  %682 = getelementptr { double, double }, { double, double }* %679, i32 0, i32 1
  %683 = load double, double* %682, align 1
  %684 = bitcast %struct.Point* %i2 to { double, double }*
  %685 = getelementptr { double, double }, { double, double }* %684, i32 0, i32 0
  %686 = load double, double* %685, align 1
  %687 = getelementptr { double, double }, { double, double }* %684, i32 0, i32 1
  %688 = load double, double* %687, align 1
  %call110 = call i32 @intersect(double %671, double %673, double %676, double %678, double %681, double %683, double %686, double %688, %struct.Point* %i3)
  %tobool111 = icmp ne i32 %call110, 0
  br i1 %tobool111, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %if.end.109
  %689 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %690 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %691 = bitcast %struct.Point* %i1 to { double, double }*
  %692 = getelementptr { double, double }, { double, double }* %691, i32 0, i32 0
  %693 = load double, double* %692, align 1
  %694 = getelementptr { double, double }, { double, double }* %691, i32 0, i32 1
  %695 = load double, double* %694, align 1
  %696 = bitcast %struct.Point* %i3 to { double, double }*
  %697 = getelementptr { double, double }, { double, double }* %696, i32 0, i32 0
  %698 = load double, double* %697, align 1
  %699 = getelementptr { double, double }, { double, double }* %696, i32 0, i32 1
  %700 = load double, double* %699, align 1
  %701 = bitcast %struct.Point* %i1 to { double, double }*
  %702 = getelementptr { double, double }, { double, double }* %701, i32 0, i32 0
  %703 = load double, double* %702, align 1
  %704 = getelementptr { double, double }, { double, double }* %701, i32 0, i32 1
  %705 = load double, double* %704, align 1
  %706 = bitcast %struct.Point* %i3 to { double, double }*
  %707 = getelementptr { double, double }, { double, double }* %706, i32 0, i32 0
  %708 = load double, double* %707, align 1
  %709 = getelementptr { double, double }, { double, double }* %706, i32 0, i32 1
  %710 = load double, double* %709, align 1
  call void @add_rectangle(%struct.Point* %689, %struct.Rectangle* %690, double %693, double %695, double %698, double %700, double %703, double %705, double %708, double %710)
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.112, %if.end.109
  %x114 = getelementptr inbounds %struct.Point, %struct.Point* %i1, i32 0, i32 0
  %711 = load double, double* %x114, align 8
  %712 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %aspect115 = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %712, i32 0, i32 5
  %713 = load double, double* %aspect115, align 8
  %mul116 = fmul double 1.000000e+00, %713
  %sub117 = fsub double %711, %mul116
  %x118 = getelementptr inbounds %struct.Point, %struct.Point* %i2, i32 0, i32 0
  store double %sub117, double* %x118, align 8
  %y119 = getelementptr inbounds %struct.Point, %struct.Point* %i1, i32 0, i32 1
  %714 = load double, double* %y119, align 8
  %add120 = fadd double %714, 1.000000e+00
  %y121 = getelementptr inbounds %struct.Point, %struct.Point* %i2, i32 0, i32 1
  store double %add120, double* %y121, align 8
  %715 = bitcast %struct.Point* %d to { double, double }*
  %716 = getelementptr { double, double }, { double, double }* %715, i32 0, i32 0
  %717 = load double, double* %716, align 1
  %718 = getelementptr { double, double }, { double, double }* %715, i32 0, i32 1
  %719 = load double, double* %718, align 1
  %720 = bitcast %struct.Point* %a to { double, double }*
  %721 = getelementptr { double, double }, { double, double }* %720, i32 0, i32 0
  %722 = load double, double* %721, align 1
  %723 = getelementptr { double, double }, { double, double }* %720, i32 0, i32 1
  %724 = load double, double* %723, align 1
  %725 = bitcast %struct.Point* %i1 to { double, double }*
  %726 = getelementptr { double, double }, { double, double }* %725, i32 0, i32 0
  %727 = load double, double* %726, align 1
  %728 = getelementptr { double, double }, { double, double }* %725, i32 0, i32 1
  %729 = load double, double* %728, align 1
  %730 = bitcast %struct.Point* %i2 to { double, double }*
  %731 = getelementptr { double, double }, { double, double }* %730, i32 0, i32 0
  %732 = load double, double* %731, align 1
  %733 = getelementptr { double, double }, { double, double }* %730, i32 0, i32 1
  %734 = load double, double* %733, align 1
  %call122 = call i32 @intersect(double %717, double %719, double %722, double %724, double %727, double %729, double %732, double %734, %struct.Point* %i3)
  %tobool123 = icmp ne i32 %call122, 0
  br i1 %tobool123, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %if.end.113
  %735 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %736 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %737 = bitcast %struct.Point* %i1 to { double, double }*
  %738 = getelementptr { double, double }, { double, double }* %737, i32 0, i32 0
  %739 = load double, double* %738, align 1
  %740 = getelementptr { double, double }, { double, double }* %737, i32 0, i32 1
  %741 = load double, double* %740, align 1
  %742 = bitcast %struct.Point* %i3 to { double, double }*
  %743 = getelementptr { double, double }, { double, double }* %742, i32 0, i32 0
  %744 = load double, double* %743, align 1
  %745 = getelementptr { double, double }, { double, double }* %742, i32 0, i32 1
  %746 = load double, double* %745, align 1
  %747 = bitcast %struct.Point* %i1 to { double, double }*
  %748 = getelementptr { double, double }, { double, double }* %747, i32 0, i32 0
  %749 = load double, double* %748, align 1
  %750 = getelementptr { double, double }, { double, double }* %747, i32 0, i32 1
  %751 = load double, double* %750, align 1
  %752 = bitcast %struct.Point* %i3 to { double, double }*
  %753 = getelementptr { double, double }, { double, double }* %752, i32 0, i32 0
  %754 = load double, double* %753, align 1
  %755 = getelementptr { double, double }, { double, double }* %752, i32 0, i32 1
  %756 = load double, double* %755, align 1
  call void @add_rectangle(%struct.Point* %735, %struct.Rectangle* %736, double %739, double %741, double %744, double %746, double %749, double %751, double %754, double %756)
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.124, %if.end.113
  %757 = bitcast %struct.Point* %a to { double, double }*
  %758 = getelementptr { double, double }, { double, double }* %757, i32 0, i32 0
  %759 = load double, double* %758, align 1
  %760 = getelementptr { double, double }, { double, double }* %757, i32 0, i32 1
  %761 = load double, double* %760, align 1
  %762 = bitcast %struct.Point* %b to { double, double }*
  %763 = getelementptr { double, double }, { double, double }* %762, i32 0, i32 0
  %764 = load double, double* %763, align 1
  %765 = getelementptr { double, double }, { double, double }* %762, i32 0, i32 1
  %766 = load double, double* %765, align 1
  %767 = bitcast %struct.Point* %i1 to { double, double }*
  %768 = getelementptr { double, double }, { double, double }* %767, i32 0, i32 0
  %769 = load double, double* %768, align 1
  %770 = getelementptr { double, double }, { double, double }* %767, i32 0, i32 1
  %771 = load double, double* %770, align 1
  %772 = bitcast %struct.Point* %i2 to { double, double }*
  %773 = getelementptr { double, double }, { double, double }* %772, i32 0, i32 0
  %774 = load double, double* %773, align 1
  %775 = getelementptr { double, double }, { double, double }* %772, i32 0, i32 1
  %776 = load double, double* %775, align 1
  %call126 = call i32 @intersect(double %759, double %761, double %764, double %766, double %769, double %771, double %774, double %776, %struct.Point* %i3)
  %tobool127 = icmp ne i32 %call126, 0
  br i1 %tobool127, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %if.end.125
  %777 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %778 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %779 = bitcast %struct.Point* %i1 to { double, double }*
  %780 = getelementptr { double, double }, { double, double }* %779, i32 0, i32 0
  %781 = load double, double* %780, align 1
  %782 = getelementptr { double, double }, { double, double }* %779, i32 0, i32 1
  %783 = load double, double* %782, align 1
  %784 = bitcast %struct.Point* %i3 to { double, double }*
  %785 = getelementptr { double, double }, { double, double }* %784, i32 0, i32 0
  %786 = load double, double* %785, align 1
  %787 = getelementptr { double, double }, { double, double }* %784, i32 0, i32 1
  %788 = load double, double* %787, align 1
  %789 = bitcast %struct.Point* %i1 to { double, double }*
  %790 = getelementptr { double, double }, { double, double }* %789, i32 0, i32 0
  %791 = load double, double* %790, align 1
  %792 = getelementptr { double, double }, { double, double }* %789, i32 0, i32 1
  %793 = load double, double* %792, align 1
  %794 = bitcast %struct.Point* %i3 to { double, double }*
  %795 = getelementptr { double, double }, { double, double }* %794, i32 0, i32 0
  %796 = load double, double* %795, align 1
  %797 = getelementptr { double, double }, { double, double }* %794, i32 0, i32 1
  %798 = load double, double* %797, align 1
  call void @add_rectangle(%struct.Point* %777, %struct.Rectangle* %778, double %781, double %783, double %786, double %788, double %791, double %793, double %796, double %798)
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.128, %if.end.125
  %799 = bitcast %struct.Point* %b to { double, double }*
  %800 = getelementptr { double, double }, { double, double }* %799, i32 0, i32 0
  %801 = load double, double* %800, align 1
  %802 = getelementptr { double, double }, { double, double }* %799, i32 0, i32 1
  %803 = load double, double* %802, align 1
  %804 = bitcast %struct.Point* %c to { double, double }*
  %805 = getelementptr { double, double }, { double, double }* %804, i32 0, i32 0
  %806 = load double, double* %805, align 1
  %807 = getelementptr { double, double }, { double, double }* %804, i32 0, i32 1
  %808 = load double, double* %807, align 1
  %809 = bitcast %struct.Point* %i1 to { double, double }*
  %810 = getelementptr { double, double }, { double, double }* %809, i32 0, i32 0
  %811 = load double, double* %810, align 1
  %812 = getelementptr { double, double }, { double, double }* %809, i32 0, i32 1
  %813 = load double, double* %812, align 1
  %814 = bitcast %struct.Point* %i2 to { double, double }*
  %815 = getelementptr { double, double }, { double, double }* %814, i32 0, i32 0
  %816 = load double, double* %815, align 1
  %817 = getelementptr { double, double }, { double, double }* %814, i32 0, i32 1
  %818 = load double, double* %817, align 1
  %call130 = call i32 @intersect(double %801, double %803, double %806, double %808, double %811, double %813, double %816, double %818, %struct.Point* %i3)
  %tobool131 = icmp ne i32 %call130, 0
  br i1 %tobool131, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %if.end.129
  %819 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %820 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %821 = bitcast %struct.Point* %i1 to { double, double }*
  %822 = getelementptr { double, double }, { double, double }* %821, i32 0, i32 0
  %823 = load double, double* %822, align 1
  %824 = getelementptr { double, double }, { double, double }* %821, i32 0, i32 1
  %825 = load double, double* %824, align 1
  %826 = bitcast %struct.Point* %i3 to { double, double }*
  %827 = getelementptr { double, double }, { double, double }* %826, i32 0, i32 0
  %828 = load double, double* %827, align 1
  %829 = getelementptr { double, double }, { double, double }* %826, i32 0, i32 1
  %830 = load double, double* %829, align 1
  %831 = bitcast %struct.Point* %i1 to { double, double }*
  %832 = getelementptr { double, double }, { double, double }* %831, i32 0, i32 0
  %833 = load double, double* %832, align 1
  %834 = getelementptr { double, double }, { double, double }* %831, i32 0, i32 1
  %835 = load double, double* %834, align 1
  %836 = bitcast %struct.Point* %i3 to { double, double }*
  %837 = getelementptr { double, double }, { double, double }* %836, i32 0, i32 0
  %838 = load double, double* %837, align 1
  %839 = getelementptr { double, double }, { double, double }* %836, i32 0, i32 1
  %840 = load double, double* %839, align 1
  call void @add_rectangle(%struct.Point* %819, %struct.Rectangle* %820, double %823, double %825, double %828, double %830, double %833, double %835, double %838, double %840)
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.132, %if.end.129
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %if.end.90
  %841 = bitcast %struct.Point* %c to { double, double }*
  %842 = getelementptr { double, double }, { double, double }* %841, i32 0, i32 0
  %843 = load double, double* %842, align 1
  %844 = getelementptr { double, double }, { double, double }* %841, i32 0, i32 1
  %845 = load double, double* %844, align 1
  %846 = bitcast %struct.Point* %d to { double, double }*
  %847 = getelementptr { double, double }, { double, double }* %846, i32 0, i32 0
  %848 = load double, double* %847, align 1
  %849 = getelementptr { double, double }, { double, double }* %846, i32 0, i32 1
  %850 = load double, double* %849, align 1
  %851 = bitcast %struct.Point* %a to { double, double }*
  %852 = getelementptr { double, double }, { double, double }* %851, i32 0, i32 0
  %853 = load double, double* %852, align 1
  %854 = getelementptr { double, double }, { double, double }* %851, i32 0, i32 1
  %855 = load double, double* %854, align 1
  %call135 = call i32 @intersect_y(double %843, double %845, double %848, double %850, double %853, double %855, %struct.Point* %i1)
  %tobool136 = icmp ne i32 %call135, 0
  br i1 %tobool136, label %if.then.137, label %if.end.178

if.then.137:                                      ; preds = %if.end.134
  %x138 = getelementptr inbounds %struct.Point, %struct.Point* %i1, i32 0, i32 0
  %856 = load double, double* %x138, align 8
  %857 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %aspect139 = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %857, i32 0, i32 5
  %858 = load double, double* %aspect139, align 8
  %mul140 = fmul double 1.000000e+00, %858
  %add141 = fadd double %856, %mul140
  %x142 = getelementptr inbounds %struct.Point, %struct.Point* %i2, i32 0, i32 0
  store double %add141, double* %x142, align 8
  %y143 = getelementptr inbounds %struct.Point, %struct.Point* %i1, i32 0, i32 1
  %859 = load double, double* %y143, align 8
  %add144 = fadd double %859, 1.000000e+00
  %y145 = getelementptr inbounds %struct.Point, %struct.Point* %i2, i32 0, i32 1
  store double %add144, double* %y145, align 8
  %860 = bitcast %struct.Point* %d to { double, double }*
  %861 = getelementptr { double, double }, { double, double }* %860, i32 0, i32 0
  %862 = load double, double* %861, align 1
  %863 = getelementptr { double, double }, { double, double }* %860, i32 0, i32 1
  %864 = load double, double* %863, align 1
  %865 = bitcast %struct.Point* %a to { double, double }*
  %866 = getelementptr { double, double }, { double, double }* %865, i32 0, i32 0
  %867 = load double, double* %866, align 1
  %868 = getelementptr { double, double }, { double, double }* %865, i32 0, i32 1
  %869 = load double, double* %868, align 1
  %870 = bitcast %struct.Point* %i1 to { double, double }*
  %871 = getelementptr { double, double }, { double, double }* %870, i32 0, i32 0
  %872 = load double, double* %871, align 1
  %873 = getelementptr { double, double }, { double, double }* %870, i32 0, i32 1
  %874 = load double, double* %873, align 1
  %875 = bitcast %struct.Point* %i2 to { double, double }*
  %876 = getelementptr { double, double }, { double, double }* %875, i32 0, i32 0
  %877 = load double, double* %876, align 1
  %878 = getelementptr { double, double }, { double, double }* %875, i32 0, i32 1
  %879 = load double, double* %878, align 1
  %call146 = call i32 @intersect(double %862, double %864, double %867, double %869, double %872, double %874, double %877, double %879, %struct.Point* %i3)
  %tobool147 = icmp ne i32 %call146, 0
  br i1 %tobool147, label %if.then.148, label %if.end.149

if.then.148:                                      ; preds = %if.then.137
  %880 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %881 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %882 = bitcast %struct.Point* %i1 to { double, double }*
  %883 = getelementptr { double, double }, { double, double }* %882, i32 0, i32 0
  %884 = load double, double* %883, align 1
  %885 = getelementptr { double, double }, { double, double }* %882, i32 0, i32 1
  %886 = load double, double* %885, align 1
  %887 = bitcast %struct.Point* %i3 to { double, double }*
  %888 = getelementptr { double, double }, { double, double }* %887, i32 0, i32 0
  %889 = load double, double* %888, align 1
  %890 = getelementptr { double, double }, { double, double }* %887, i32 0, i32 1
  %891 = load double, double* %890, align 1
  %892 = bitcast %struct.Point* %i1 to { double, double }*
  %893 = getelementptr { double, double }, { double, double }* %892, i32 0, i32 0
  %894 = load double, double* %893, align 1
  %895 = getelementptr { double, double }, { double, double }* %892, i32 0, i32 1
  %896 = load double, double* %895, align 1
  %897 = bitcast %struct.Point* %i3 to { double, double }*
  %898 = getelementptr { double, double }, { double, double }* %897, i32 0, i32 0
  %899 = load double, double* %898, align 1
  %900 = getelementptr { double, double }, { double, double }* %897, i32 0, i32 1
  %901 = load double, double* %900, align 1
  call void @add_rectangle(%struct.Point* %880, %struct.Rectangle* %881, double %884, double %886, double %889, double %891, double %894, double %896, double %899, double %901)
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.148, %if.then.137
  %902 = bitcast %struct.Point* %a to { double, double }*
  %903 = getelementptr { double, double }, { double, double }* %902, i32 0, i32 0
  %904 = load double, double* %903, align 1
  %905 = getelementptr { double, double }, { double, double }* %902, i32 0, i32 1
  %906 = load double, double* %905, align 1
  %907 = bitcast %struct.Point* %b to { double, double }*
  %908 = getelementptr { double, double }, { double, double }* %907, i32 0, i32 0
  %909 = load double, double* %908, align 1
  %910 = getelementptr { double, double }, { double, double }* %907, i32 0, i32 1
  %911 = load double, double* %910, align 1
  %912 = bitcast %struct.Point* %i1 to { double, double }*
  %913 = getelementptr { double, double }, { double, double }* %912, i32 0, i32 0
  %914 = load double, double* %913, align 1
  %915 = getelementptr { double, double }, { double, double }* %912, i32 0, i32 1
  %916 = load double, double* %915, align 1
  %917 = bitcast %struct.Point* %i2 to { double, double }*
  %918 = getelementptr { double, double }, { double, double }* %917, i32 0, i32 0
  %919 = load double, double* %918, align 1
  %920 = getelementptr { double, double }, { double, double }* %917, i32 0, i32 1
  %921 = load double, double* %920, align 1
  %call150 = call i32 @intersect(double %904, double %906, double %909, double %911, double %914, double %916, double %919, double %921, %struct.Point* %i3)
  %tobool151 = icmp ne i32 %call150, 0
  br i1 %tobool151, label %if.then.152, label %if.end.153

if.then.152:                                      ; preds = %if.end.149
  %922 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %923 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %924 = bitcast %struct.Point* %i1 to { double, double }*
  %925 = getelementptr { double, double }, { double, double }* %924, i32 0, i32 0
  %926 = load double, double* %925, align 1
  %927 = getelementptr { double, double }, { double, double }* %924, i32 0, i32 1
  %928 = load double, double* %927, align 1
  %929 = bitcast %struct.Point* %i3 to { double, double }*
  %930 = getelementptr { double, double }, { double, double }* %929, i32 0, i32 0
  %931 = load double, double* %930, align 1
  %932 = getelementptr { double, double }, { double, double }* %929, i32 0, i32 1
  %933 = load double, double* %932, align 1
  %934 = bitcast %struct.Point* %i1 to { double, double }*
  %935 = getelementptr { double, double }, { double, double }* %934, i32 0, i32 0
  %936 = load double, double* %935, align 1
  %937 = getelementptr { double, double }, { double, double }* %934, i32 0, i32 1
  %938 = load double, double* %937, align 1
  %939 = bitcast %struct.Point* %i3 to { double, double }*
  %940 = getelementptr { double, double }, { double, double }* %939, i32 0, i32 0
  %941 = load double, double* %940, align 1
  %942 = getelementptr { double, double }, { double, double }* %939, i32 0, i32 1
  %943 = load double, double* %942, align 1
  call void @add_rectangle(%struct.Point* %922, %struct.Rectangle* %923, double %926, double %928, double %931, double %933, double %936, double %938, double %941, double %943)
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.152, %if.end.149
  %944 = bitcast %struct.Point* %b to { double, double }*
  %945 = getelementptr { double, double }, { double, double }* %944, i32 0, i32 0
  %946 = load double, double* %945, align 1
  %947 = getelementptr { double, double }, { double, double }* %944, i32 0, i32 1
  %948 = load double, double* %947, align 1
  %949 = bitcast %struct.Point* %c to { double, double }*
  %950 = getelementptr { double, double }, { double, double }* %949, i32 0, i32 0
  %951 = load double, double* %950, align 1
  %952 = getelementptr { double, double }, { double, double }* %949, i32 0, i32 1
  %953 = load double, double* %952, align 1
  %954 = bitcast %struct.Point* %i1 to { double, double }*
  %955 = getelementptr { double, double }, { double, double }* %954, i32 0, i32 0
  %956 = load double, double* %955, align 1
  %957 = getelementptr { double, double }, { double, double }* %954, i32 0, i32 1
  %958 = load double, double* %957, align 1
  %959 = bitcast %struct.Point* %i2 to { double, double }*
  %960 = getelementptr { double, double }, { double, double }* %959, i32 0, i32 0
  %961 = load double, double* %960, align 1
  %962 = getelementptr { double, double }, { double, double }* %959, i32 0, i32 1
  %963 = load double, double* %962, align 1
  %call154 = call i32 @intersect(double %946, double %948, double %951, double %953, double %956, double %958, double %961, double %963, %struct.Point* %i3)
  %tobool155 = icmp ne i32 %call154, 0
  br i1 %tobool155, label %if.then.156, label %if.end.157

if.then.156:                                      ; preds = %if.end.153
  %964 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %965 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %966 = bitcast %struct.Point* %i1 to { double, double }*
  %967 = getelementptr { double, double }, { double, double }* %966, i32 0, i32 0
  %968 = load double, double* %967, align 1
  %969 = getelementptr { double, double }, { double, double }* %966, i32 0, i32 1
  %970 = load double, double* %969, align 1
  %971 = bitcast %struct.Point* %i3 to { double, double }*
  %972 = getelementptr { double, double }, { double, double }* %971, i32 0, i32 0
  %973 = load double, double* %972, align 1
  %974 = getelementptr { double, double }, { double, double }* %971, i32 0, i32 1
  %975 = load double, double* %974, align 1
  %976 = bitcast %struct.Point* %i1 to { double, double }*
  %977 = getelementptr { double, double }, { double, double }* %976, i32 0, i32 0
  %978 = load double, double* %977, align 1
  %979 = getelementptr { double, double }, { double, double }* %976, i32 0, i32 1
  %980 = load double, double* %979, align 1
  %981 = bitcast %struct.Point* %i3 to { double, double }*
  %982 = getelementptr { double, double }, { double, double }* %981, i32 0, i32 0
  %983 = load double, double* %982, align 1
  %984 = getelementptr { double, double }, { double, double }* %981, i32 0, i32 1
  %985 = load double, double* %984, align 1
  call void @add_rectangle(%struct.Point* %964, %struct.Rectangle* %965, double %968, double %970, double %973, double %975, double %978, double %980, double %983, double %985)
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.156, %if.end.153
  %x158 = getelementptr inbounds %struct.Point, %struct.Point* %i1, i32 0, i32 0
  %986 = load double, double* %x158, align 8
  %987 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %aspect159 = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %987, i32 0, i32 5
  %988 = load double, double* %aspect159, align 8
  %mul160 = fmul double 1.000000e+00, %988
  %sub161 = fsub double %986, %mul160
  %x162 = getelementptr inbounds %struct.Point, %struct.Point* %i2, i32 0, i32 0
  store double %sub161, double* %x162, align 8
  %y163 = getelementptr inbounds %struct.Point, %struct.Point* %i1, i32 0, i32 1
  %989 = load double, double* %y163, align 8
  %add164 = fadd double %989, 1.000000e+00
  %y165 = getelementptr inbounds %struct.Point, %struct.Point* %i2, i32 0, i32 1
  store double %add164, double* %y165, align 8
  %990 = bitcast %struct.Point* %d to { double, double }*
  %991 = getelementptr { double, double }, { double, double }* %990, i32 0, i32 0
  %992 = load double, double* %991, align 1
  %993 = getelementptr { double, double }, { double, double }* %990, i32 0, i32 1
  %994 = load double, double* %993, align 1
  %995 = bitcast %struct.Point* %a to { double, double }*
  %996 = getelementptr { double, double }, { double, double }* %995, i32 0, i32 0
  %997 = load double, double* %996, align 1
  %998 = getelementptr { double, double }, { double, double }* %995, i32 0, i32 1
  %999 = load double, double* %998, align 1
  %1000 = bitcast %struct.Point* %i1 to { double, double }*
  %1001 = getelementptr { double, double }, { double, double }* %1000, i32 0, i32 0
  %1002 = load double, double* %1001, align 1
  %1003 = getelementptr { double, double }, { double, double }* %1000, i32 0, i32 1
  %1004 = load double, double* %1003, align 1
  %1005 = bitcast %struct.Point* %i2 to { double, double }*
  %1006 = getelementptr { double, double }, { double, double }* %1005, i32 0, i32 0
  %1007 = load double, double* %1006, align 1
  %1008 = getelementptr { double, double }, { double, double }* %1005, i32 0, i32 1
  %1009 = load double, double* %1008, align 1
  %call166 = call i32 @intersect(double %992, double %994, double %997, double %999, double %1002, double %1004, double %1007, double %1009, %struct.Point* %i3)
  %tobool167 = icmp ne i32 %call166, 0
  br i1 %tobool167, label %if.then.168, label %if.end.169

if.then.168:                                      ; preds = %if.end.157
  %1010 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %1011 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %1012 = bitcast %struct.Point* %i1 to { double, double }*
  %1013 = getelementptr { double, double }, { double, double }* %1012, i32 0, i32 0
  %1014 = load double, double* %1013, align 1
  %1015 = getelementptr { double, double }, { double, double }* %1012, i32 0, i32 1
  %1016 = load double, double* %1015, align 1
  %1017 = bitcast %struct.Point* %i3 to { double, double }*
  %1018 = getelementptr { double, double }, { double, double }* %1017, i32 0, i32 0
  %1019 = load double, double* %1018, align 1
  %1020 = getelementptr { double, double }, { double, double }* %1017, i32 0, i32 1
  %1021 = load double, double* %1020, align 1
  %1022 = bitcast %struct.Point* %i1 to { double, double }*
  %1023 = getelementptr { double, double }, { double, double }* %1022, i32 0, i32 0
  %1024 = load double, double* %1023, align 1
  %1025 = getelementptr { double, double }, { double, double }* %1022, i32 0, i32 1
  %1026 = load double, double* %1025, align 1
  %1027 = bitcast %struct.Point* %i3 to { double, double }*
  %1028 = getelementptr { double, double }, { double, double }* %1027, i32 0, i32 0
  %1029 = load double, double* %1028, align 1
  %1030 = getelementptr { double, double }, { double, double }* %1027, i32 0, i32 1
  %1031 = load double, double* %1030, align 1
  call void @add_rectangle(%struct.Point* %1010, %struct.Rectangle* %1011, double %1014, double %1016, double %1019, double %1021, double %1024, double %1026, double %1029, double %1031)
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.168, %if.end.157
  %1032 = bitcast %struct.Point* %a to { double, double }*
  %1033 = getelementptr { double, double }, { double, double }* %1032, i32 0, i32 0
  %1034 = load double, double* %1033, align 1
  %1035 = getelementptr { double, double }, { double, double }* %1032, i32 0, i32 1
  %1036 = load double, double* %1035, align 1
  %1037 = bitcast %struct.Point* %b to { double, double }*
  %1038 = getelementptr { double, double }, { double, double }* %1037, i32 0, i32 0
  %1039 = load double, double* %1038, align 1
  %1040 = getelementptr { double, double }, { double, double }* %1037, i32 0, i32 1
  %1041 = load double, double* %1040, align 1
  %1042 = bitcast %struct.Point* %i1 to { double, double }*
  %1043 = getelementptr { double, double }, { double, double }* %1042, i32 0, i32 0
  %1044 = load double, double* %1043, align 1
  %1045 = getelementptr { double, double }, { double, double }* %1042, i32 0, i32 1
  %1046 = load double, double* %1045, align 1
  %1047 = bitcast %struct.Point* %i2 to { double, double }*
  %1048 = getelementptr { double, double }, { double, double }* %1047, i32 0, i32 0
  %1049 = load double, double* %1048, align 1
  %1050 = getelementptr { double, double }, { double, double }* %1047, i32 0, i32 1
  %1051 = load double, double* %1050, align 1
  %call170 = call i32 @intersect(double %1034, double %1036, double %1039, double %1041, double %1044, double %1046, double %1049, double %1051, %struct.Point* %i3)
  %tobool171 = icmp ne i32 %call170, 0
  br i1 %tobool171, label %if.then.172, label %if.end.173

if.then.172:                                      ; preds = %if.end.169
  %1052 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %1053 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %1054 = bitcast %struct.Point* %i1 to { double, double }*
  %1055 = getelementptr { double, double }, { double, double }* %1054, i32 0, i32 0
  %1056 = load double, double* %1055, align 1
  %1057 = getelementptr { double, double }, { double, double }* %1054, i32 0, i32 1
  %1058 = load double, double* %1057, align 1
  %1059 = bitcast %struct.Point* %i3 to { double, double }*
  %1060 = getelementptr { double, double }, { double, double }* %1059, i32 0, i32 0
  %1061 = load double, double* %1060, align 1
  %1062 = getelementptr { double, double }, { double, double }* %1059, i32 0, i32 1
  %1063 = load double, double* %1062, align 1
  %1064 = bitcast %struct.Point* %i1 to { double, double }*
  %1065 = getelementptr { double, double }, { double, double }* %1064, i32 0, i32 0
  %1066 = load double, double* %1065, align 1
  %1067 = getelementptr { double, double }, { double, double }* %1064, i32 0, i32 1
  %1068 = load double, double* %1067, align 1
  %1069 = bitcast %struct.Point* %i3 to { double, double }*
  %1070 = getelementptr { double, double }, { double, double }* %1069, i32 0, i32 0
  %1071 = load double, double* %1070, align 1
  %1072 = getelementptr { double, double }, { double, double }* %1069, i32 0, i32 1
  %1073 = load double, double* %1072, align 1
  call void @add_rectangle(%struct.Point* %1052, %struct.Rectangle* %1053, double %1056, double %1058, double %1061, double %1063, double %1066, double %1068, double %1071, double %1073)
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.172, %if.end.169
  %1074 = bitcast %struct.Point* %b to { double, double }*
  %1075 = getelementptr { double, double }, { double, double }* %1074, i32 0, i32 0
  %1076 = load double, double* %1075, align 1
  %1077 = getelementptr { double, double }, { double, double }* %1074, i32 0, i32 1
  %1078 = load double, double* %1077, align 1
  %1079 = bitcast %struct.Point* %c to { double, double }*
  %1080 = getelementptr { double, double }, { double, double }* %1079, i32 0, i32 0
  %1081 = load double, double* %1080, align 1
  %1082 = getelementptr { double, double }, { double, double }* %1079, i32 0, i32 1
  %1083 = load double, double* %1082, align 1
  %1084 = bitcast %struct.Point* %i1 to { double, double }*
  %1085 = getelementptr { double, double }, { double, double }* %1084, i32 0, i32 0
  %1086 = load double, double* %1085, align 1
  %1087 = getelementptr { double, double }, { double, double }* %1084, i32 0, i32 1
  %1088 = load double, double* %1087, align 1
  %1089 = bitcast %struct.Point* %i2 to { double, double }*
  %1090 = getelementptr { double, double }, { double, double }* %1089, i32 0, i32 0
  %1091 = load double, double* %1090, align 1
  %1092 = getelementptr { double, double }, { double, double }* %1089, i32 0, i32 1
  %1093 = load double, double* %1092, align 1
  %call174 = call i32 @intersect(double %1076, double %1078, double %1081, double %1083, double %1086, double %1088, double %1091, double %1093, %struct.Point* %i3)
  %tobool175 = icmp ne i32 %call174, 0
  br i1 %tobool175, label %if.then.176, label %if.end.177

if.then.176:                                      ; preds = %if.end.173
  %1094 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %1095 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %1096 = bitcast %struct.Point* %i1 to { double, double }*
  %1097 = getelementptr { double, double }, { double, double }* %1096, i32 0, i32 0
  %1098 = load double, double* %1097, align 1
  %1099 = getelementptr { double, double }, { double, double }* %1096, i32 0, i32 1
  %1100 = load double, double* %1099, align 1
  %1101 = bitcast %struct.Point* %i3 to { double, double }*
  %1102 = getelementptr { double, double }, { double, double }* %1101, i32 0, i32 0
  %1103 = load double, double* %1102, align 1
  %1104 = getelementptr { double, double }, { double, double }* %1101, i32 0, i32 1
  %1105 = load double, double* %1104, align 1
  %1106 = bitcast %struct.Point* %i1 to { double, double }*
  %1107 = getelementptr { double, double }, { double, double }* %1106, i32 0, i32 0
  %1108 = load double, double* %1107, align 1
  %1109 = getelementptr { double, double }, { double, double }* %1106, i32 0, i32 1
  %1110 = load double, double* %1109, align 1
  %1111 = bitcast %struct.Point* %i3 to { double, double }*
  %1112 = getelementptr { double, double }, { double, double }* %1111, i32 0, i32 0
  %1113 = load double, double* %1112, align 1
  %1114 = getelementptr { double, double }, { double, double }* %1111, i32 0, i32 1
  %1115 = load double, double* %1114, align 1
  call void @add_rectangle(%struct.Point* %1094, %struct.Rectangle* %1095, double %1098, double %1100, double %1103, double %1105, double %1108, double %1110, double %1113, double %1115)
  br label %if.end.177

if.end.177:                                       ; preds = %if.then.176, %if.end.173
  br label %if.end.178

if.end.178:                                       ; preds = %if.end.177, %if.end.134
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @find_three_point_rectangle(%struct.Rectangle* %r, %struct.Point* %points, i32 %p) #0 {
entry:
  %r.addr = alloca %struct.Rectangle*, align 8
  %points.addr = alloca %struct.Point*, align 8
  %p.addr = alloca i32, align 4
  %a = alloca %struct.Point, align 8
  %b = alloca %struct.Point, align 8
  %c = alloca %struct.Point, align 8
  %d = alloca %struct.Point, align 8
  %i1 = alloca %struct.Point, align 8
  %i2 = alloca %struct.Point, align 8
  %i3 = alloca %struct.Point, align 8
  store %struct.Rectangle* %r, %struct.Rectangle** %r.addr, align 8
  store %struct.Point* %points, %struct.Point** %points.addr, align 8
  store i32 %p, i32* %p.addr, align 4
  %0 = load i32, i32* %p.addr, align 4
  %rem = srem i32 %0, 4
  %idxprom = sext i32 %rem to i64
  %1 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %arrayidx = getelementptr inbounds %struct.Point, %struct.Point* %1, i64 %idxprom
  %2 = bitcast %struct.Point* %a to i8*
  %3 = bitcast %struct.Point* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 16, i32 8, i1 false)
  %4 = load i32, i32* %p.addr, align 4
  %add = add nsw i32 %4, 1
  %rem1 = srem i32 %add, 4
  %idxprom2 = sext i32 %rem1 to i64
  %5 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %arrayidx3 = getelementptr inbounds %struct.Point, %struct.Point* %5, i64 %idxprom2
  %6 = bitcast %struct.Point* %b to i8*
  %7 = bitcast %struct.Point* %arrayidx3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false)
  %8 = load i32, i32* %p.addr, align 4
  %add4 = add nsw i32 %8, 2
  %rem5 = srem i32 %add4, 4
  %idxprom6 = sext i32 %rem5 to i64
  %9 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct.Point, %struct.Point* %9, i64 %idxprom6
  %10 = bitcast %struct.Point* %c to i8*
  %11 = bitcast %struct.Point* %arrayidx7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 16, i32 8, i1 false)
  %12 = load i32, i32* %p.addr, align 4
  %add8 = add nsw i32 %12, 3
  %rem9 = srem i32 %add8, 4
  %idxprom10 = sext i32 %rem9 to i64
  %13 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct.Point, %struct.Point* %13, i64 %idxprom10
  %14 = bitcast %struct.Point* %d to i8*
  %15 = bitcast %struct.Point* %arrayidx11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 16, i32 8, i1 false)
  %16 = bitcast %struct.Point* %b to { double, double }*
  %17 = getelementptr { double, double }, { double, double }* %16, i32 0, i32 0
  %18 = load double, double* %17, align 1
  %19 = getelementptr { double, double }, { double, double }* %16, i32 0, i32 1
  %20 = load double, double* %19, align 1
  %21 = bitcast %struct.Point* %c to { double, double }*
  %22 = getelementptr { double, double }, { double, double }* %21, i32 0, i32 0
  %23 = load double, double* %22, align 1
  %24 = getelementptr { double, double }, { double, double }* %21, i32 0, i32 1
  %25 = load double, double* %24, align 1
  %26 = bitcast %struct.Point* %a to { double, double }*
  %27 = getelementptr { double, double }, { double, double }* %26, i32 0, i32 0
  %28 = load double, double* %27, align 1
  %29 = getelementptr { double, double }, { double, double }* %26, i32 0, i32 1
  %30 = load double, double* %29, align 1
  %call = call i32 @intersect_x(double %18, double %20, double %23, double %25, double %28, double %30, %struct.Point* %i1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %31 = bitcast %struct.Point* %c to { double, double }*
  %32 = getelementptr { double, double }, { double, double }* %31, i32 0, i32 0
  %33 = load double, double* %32, align 1
  %34 = getelementptr { double, double }, { double, double }* %31, i32 0, i32 1
  %35 = load double, double* %34, align 1
  %36 = bitcast %struct.Point* %d to { double, double }*
  %37 = getelementptr { double, double }, { double, double }* %36, i32 0, i32 0
  %38 = load double, double* %37, align 1
  %39 = getelementptr { double, double }, { double, double }* %36, i32 0, i32 1
  %40 = load double, double* %39, align 1
  %41 = bitcast %struct.Point* %i1 to { double, double }*
  %42 = getelementptr { double, double }, { double, double }* %41, i32 0, i32 0
  %43 = load double, double* %42, align 1
  %44 = getelementptr { double, double }, { double, double }* %41, i32 0, i32 1
  %45 = load double, double* %44, align 1
  %call12 = call i32 @intersect_y(double %33, double %35, double %38, double %40, double %43, double %45, %struct.Point* %i2)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %land.lhs.true.14, label %if.end

land.lhs.true.14:                                 ; preds = %land.lhs.true
  %46 = bitcast %struct.Point* %d to { double, double }*
  %47 = getelementptr { double, double }, { double, double }* %46, i32 0, i32 0
  %48 = load double, double* %47, align 1
  %49 = getelementptr { double, double }, { double, double }* %46, i32 0, i32 1
  %50 = load double, double* %49, align 1
  %51 = bitcast %struct.Point* %a to { double, double }*
  %52 = getelementptr { double, double }, { double, double }* %51, i32 0, i32 0
  %53 = load double, double* %52, align 1
  %54 = getelementptr { double, double }, { double, double }* %51, i32 0, i32 1
  %55 = load double, double* %54, align 1
  %56 = bitcast %struct.Point* %i2 to { double, double }*
  %57 = getelementptr { double, double }, { double, double }* %56, i32 0, i32 0
  %58 = load double, double* %57, align 1
  %59 = getelementptr { double, double }, { double, double }* %56, i32 0, i32 1
  %60 = load double, double* %59, align 1
  %call15 = call i32 @intersect_x(double %48, double %50, double %53, double %55, double %58, double %60, %struct.Point* %i3)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.14
  %61 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %62 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %63 = bitcast %struct.Point* %i3 to { double, double }*
  %64 = getelementptr { double, double }, { double, double }* %63, i32 0, i32 0
  %65 = load double, double* %64, align 1
  %66 = getelementptr { double, double }, { double, double }* %63, i32 0, i32 1
  %67 = load double, double* %66, align 1
  %68 = bitcast %struct.Point* %i3 to { double, double }*
  %69 = getelementptr { double, double }, { double, double }* %68, i32 0, i32 0
  %70 = load double, double* %69, align 1
  %71 = getelementptr { double, double }, { double, double }* %68, i32 0, i32 1
  %72 = load double, double* %71, align 1
  %73 = bitcast %struct.Point* %i1 to { double, double }*
  %74 = getelementptr { double, double }, { double, double }* %73, i32 0, i32 0
  %75 = load double, double* %74, align 1
  %76 = getelementptr { double, double }, { double, double }* %73, i32 0, i32 1
  %77 = load double, double* %76, align 1
  %78 = bitcast %struct.Point* %i1 to { double, double }*
  %79 = getelementptr { double, double }, { double, double }* %78, i32 0, i32 0
  %80 = load double, double* %79, align 1
  %81 = getelementptr { double, double }, { double, double }* %78, i32 0, i32 1
  %82 = load double, double* %81, align 1
  call void @add_rectangle(%struct.Point* %61, %struct.Rectangle* %62, double %65, double %67, double %70, double %72, double %75, double %77, double %80, double %82)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.14, %land.lhs.true, %entry
  %83 = bitcast %struct.Point* %b to { double, double }*
  %84 = getelementptr { double, double }, { double, double }* %83, i32 0, i32 0
  %85 = load double, double* %84, align 1
  %86 = getelementptr { double, double }, { double, double }* %83, i32 0, i32 1
  %87 = load double, double* %86, align 1
  %88 = bitcast %struct.Point* %c to { double, double }*
  %89 = getelementptr { double, double }, { double, double }* %88, i32 0, i32 0
  %90 = load double, double* %89, align 1
  %91 = getelementptr { double, double }, { double, double }* %88, i32 0, i32 1
  %92 = load double, double* %91, align 1
  %93 = bitcast %struct.Point* %a to { double, double }*
  %94 = getelementptr { double, double }, { double, double }* %93, i32 0, i32 0
  %95 = load double, double* %94, align 1
  %96 = getelementptr { double, double }, { double, double }* %93, i32 0, i32 1
  %97 = load double, double* %96, align 1
  %call17 = call i32 @intersect_y(double %85, double %87, double %90, double %92, double %95, double %97, %struct.Point* %i1)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %land.lhs.true.19, label %if.end.26

land.lhs.true.19:                                 ; preds = %if.end
  %98 = bitcast %struct.Point* %c to { double, double }*
  %99 = getelementptr { double, double }, { double, double }* %98, i32 0, i32 0
  %100 = load double, double* %99, align 1
  %101 = getelementptr { double, double }, { double, double }* %98, i32 0, i32 1
  %102 = load double, double* %101, align 1
  %103 = bitcast %struct.Point* %d to { double, double }*
  %104 = getelementptr { double, double }, { double, double }* %103, i32 0, i32 0
  %105 = load double, double* %104, align 1
  %106 = getelementptr { double, double }, { double, double }* %103, i32 0, i32 1
  %107 = load double, double* %106, align 1
  %108 = bitcast %struct.Point* %i1 to { double, double }*
  %109 = getelementptr { double, double }, { double, double }* %108, i32 0, i32 0
  %110 = load double, double* %109, align 1
  %111 = getelementptr { double, double }, { double, double }* %108, i32 0, i32 1
  %112 = load double, double* %111, align 1
  %call20 = call i32 @intersect_x(double %100, double %102, double %105, double %107, double %110, double %112, %struct.Point* %i2)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %land.lhs.true.22, label %if.end.26

land.lhs.true.22:                                 ; preds = %land.lhs.true.19
  %113 = bitcast %struct.Point* %d to { double, double }*
  %114 = getelementptr { double, double }, { double, double }* %113, i32 0, i32 0
  %115 = load double, double* %114, align 1
  %116 = getelementptr { double, double }, { double, double }* %113, i32 0, i32 1
  %117 = load double, double* %116, align 1
  %118 = bitcast %struct.Point* %a to { double, double }*
  %119 = getelementptr { double, double }, { double, double }* %118, i32 0, i32 0
  %120 = load double, double* %119, align 1
  %121 = getelementptr { double, double }, { double, double }* %118, i32 0, i32 1
  %122 = load double, double* %121, align 1
  %123 = bitcast %struct.Point* %i2 to { double, double }*
  %124 = getelementptr { double, double }, { double, double }* %123, i32 0, i32 0
  %125 = load double, double* %124, align 1
  %126 = getelementptr { double, double }, { double, double }* %123, i32 0, i32 1
  %127 = load double, double* %126, align 1
  %call23 = call i32 @intersect_y(double %115, double %117, double %120, double %122, double %125, double %127, %struct.Point* %i3)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %land.lhs.true.22
  %128 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %129 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %130 = bitcast %struct.Point* %i3 to { double, double }*
  %131 = getelementptr { double, double }, { double, double }* %130, i32 0, i32 0
  %132 = load double, double* %131, align 1
  %133 = getelementptr { double, double }, { double, double }* %130, i32 0, i32 1
  %134 = load double, double* %133, align 1
  %135 = bitcast %struct.Point* %i3 to { double, double }*
  %136 = getelementptr { double, double }, { double, double }* %135, i32 0, i32 0
  %137 = load double, double* %136, align 1
  %138 = getelementptr { double, double }, { double, double }* %135, i32 0, i32 1
  %139 = load double, double* %138, align 1
  %140 = bitcast %struct.Point* %i1 to { double, double }*
  %141 = getelementptr { double, double }, { double, double }* %140, i32 0, i32 0
  %142 = load double, double* %141, align 1
  %143 = getelementptr { double, double }, { double, double }* %140, i32 0, i32 1
  %144 = load double, double* %143, align 1
  %145 = bitcast %struct.Point* %i1 to { double, double }*
  %146 = getelementptr { double, double }, { double, double }* %145, i32 0, i32 0
  %147 = load double, double* %146, align 1
  %148 = getelementptr { double, double }, { double, double }* %145, i32 0, i32 1
  %149 = load double, double* %148, align 1
  call void @add_rectangle(%struct.Point* %128, %struct.Rectangle* %129, double %132, double %134, double %137, double %139, double %142, double %144, double %147, double %149)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %land.lhs.true.22, %land.lhs.true.19, %if.end
  %150 = bitcast %struct.Point* %d to { double, double }*
  %151 = getelementptr { double, double }, { double, double }* %150, i32 0, i32 0
  %152 = load double, double* %151, align 1
  %153 = getelementptr { double, double }, { double, double }* %150, i32 0, i32 1
  %154 = load double, double* %153, align 1
  %155 = bitcast %struct.Point* %c to { double, double }*
  %156 = getelementptr { double, double }, { double, double }* %155, i32 0, i32 0
  %157 = load double, double* %156, align 1
  %158 = getelementptr { double, double }, { double, double }* %155, i32 0, i32 1
  %159 = load double, double* %158, align 1
  %160 = bitcast %struct.Point* %a to { double, double }*
  %161 = getelementptr { double, double }, { double, double }* %160, i32 0, i32 0
  %162 = load double, double* %161, align 1
  %163 = getelementptr { double, double }, { double, double }* %160, i32 0, i32 1
  %164 = load double, double* %163, align 1
  %call27 = call i32 @intersect_x(double %152, double %154, double %157, double %159, double %162, double %164, %struct.Point* %i1)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %land.lhs.true.29, label %if.end.36

land.lhs.true.29:                                 ; preds = %if.end.26
  %165 = bitcast %struct.Point* %c to { double, double }*
  %166 = getelementptr { double, double }, { double, double }* %165, i32 0, i32 0
  %167 = load double, double* %166, align 1
  %168 = getelementptr { double, double }, { double, double }* %165, i32 0, i32 1
  %169 = load double, double* %168, align 1
  %170 = bitcast %struct.Point* %b to { double, double }*
  %171 = getelementptr { double, double }, { double, double }* %170, i32 0, i32 0
  %172 = load double, double* %171, align 1
  %173 = getelementptr { double, double }, { double, double }* %170, i32 0, i32 1
  %174 = load double, double* %173, align 1
  %175 = bitcast %struct.Point* %i1 to { double, double }*
  %176 = getelementptr { double, double }, { double, double }* %175, i32 0, i32 0
  %177 = load double, double* %176, align 1
  %178 = getelementptr { double, double }, { double, double }* %175, i32 0, i32 1
  %179 = load double, double* %178, align 1
  %call30 = call i32 @intersect_y(double %167, double %169, double %172, double %174, double %177, double %179, %struct.Point* %i2)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %land.lhs.true.32, label %if.end.36

land.lhs.true.32:                                 ; preds = %land.lhs.true.29
  %180 = bitcast %struct.Point* %b to { double, double }*
  %181 = getelementptr { double, double }, { double, double }* %180, i32 0, i32 0
  %182 = load double, double* %181, align 1
  %183 = getelementptr { double, double }, { double, double }* %180, i32 0, i32 1
  %184 = load double, double* %183, align 1
  %185 = bitcast %struct.Point* %a to { double, double }*
  %186 = getelementptr { double, double }, { double, double }* %185, i32 0, i32 0
  %187 = load double, double* %186, align 1
  %188 = getelementptr { double, double }, { double, double }* %185, i32 0, i32 1
  %189 = load double, double* %188, align 1
  %190 = bitcast %struct.Point* %i2 to { double, double }*
  %191 = getelementptr { double, double }, { double, double }* %190, i32 0, i32 0
  %192 = load double, double* %191, align 1
  %193 = getelementptr { double, double }, { double, double }* %190, i32 0, i32 1
  %194 = load double, double* %193, align 1
  %call33 = call i32 @intersect_x(double %182, double %184, double %187, double %189, double %192, double %194, %struct.Point* %i3)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %land.lhs.true.32
  %195 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %196 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %197 = bitcast %struct.Point* %i3 to { double, double }*
  %198 = getelementptr { double, double }, { double, double }* %197, i32 0, i32 0
  %199 = load double, double* %198, align 1
  %200 = getelementptr { double, double }, { double, double }* %197, i32 0, i32 1
  %201 = load double, double* %200, align 1
  %202 = bitcast %struct.Point* %i3 to { double, double }*
  %203 = getelementptr { double, double }, { double, double }* %202, i32 0, i32 0
  %204 = load double, double* %203, align 1
  %205 = getelementptr { double, double }, { double, double }* %202, i32 0, i32 1
  %206 = load double, double* %205, align 1
  %207 = bitcast %struct.Point* %i1 to { double, double }*
  %208 = getelementptr { double, double }, { double, double }* %207, i32 0, i32 0
  %209 = load double, double* %208, align 1
  %210 = getelementptr { double, double }, { double, double }* %207, i32 0, i32 1
  %211 = load double, double* %210, align 1
  %212 = bitcast %struct.Point* %i1 to { double, double }*
  %213 = getelementptr { double, double }, { double, double }* %212, i32 0, i32 0
  %214 = load double, double* %213, align 1
  %215 = getelementptr { double, double }, { double, double }* %212, i32 0, i32 1
  %216 = load double, double* %215, align 1
  call void @add_rectangle(%struct.Point* %195, %struct.Rectangle* %196, double %199, double %201, double %204, double %206, double %209, double %211, double %214, double %216)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %land.lhs.true.32, %land.lhs.true.29, %if.end.26
  %217 = bitcast %struct.Point* %d to { double, double }*
  %218 = getelementptr { double, double }, { double, double }* %217, i32 0, i32 0
  %219 = load double, double* %218, align 1
  %220 = getelementptr { double, double }, { double, double }* %217, i32 0, i32 1
  %221 = load double, double* %220, align 1
  %222 = bitcast %struct.Point* %c to { double, double }*
  %223 = getelementptr { double, double }, { double, double }* %222, i32 0, i32 0
  %224 = load double, double* %223, align 1
  %225 = getelementptr { double, double }, { double, double }* %222, i32 0, i32 1
  %226 = load double, double* %225, align 1
  %227 = bitcast %struct.Point* %a to { double, double }*
  %228 = getelementptr { double, double }, { double, double }* %227, i32 0, i32 0
  %229 = load double, double* %228, align 1
  %230 = getelementptr { double, double }, { double, double }* %227, i32 0, i32 1
  %231 = load double, double* %230, align 1
  %call37 = call i32 @intersect_y(double %219, double %221, double %224, double %226, double %229, double %231, %struct.Point* %i1)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %land.lhs.true.39, label %if.end.46

land.lhs.true.39:                                 ; preds = %if.end.36
  %232 = bitcast %struct.Point* %c to { double, double }*
  %233 = getelementptr { double, double }, { double, double }* %232, i32 0, i32 0
  %234 = load double, double* %233, align 1
  %235 = getelementptr { double, double }, { double, double }* %232, i32 0, i32 1
  %236 = load double, double* %235, align 1
  %237 = bitcast %struct.Point* %b to { double, double }*
  %238 = getelementptr { double, double }, { double, double }* %237, i32 0, i32 0
  %239 = load double, double* %238, align 1
  %240 = getelementptr { double, double }, { double, double }* %237, i32 0, i32 1
  %241 = load double, double* %240, align 1
  %242 = bitcast %struct.Point* %i1 to { double, double }*
  %243 = getelementptr { double, double }, { double, double }* %242, i32 0, i32 0
  %244 = load double, double* %243, align 1
  %245 = getelementptr { double, double }, { double, double }* %242, i32 0, i32 1
  %246 = load double, double* %245, align 1
  %call40 = call i32 @intersect_x(double %234, double %236, double %239, double %241, double %244, double %246, %struct.Point* %i2)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %land.lhs.true.42, label %if.end.46

land.lhs.true.42:                                 ; preds = %land.lhs.true.39
  %247 = bitcast %struct.Point* %b to { double, double }*
  %248 = getelementptr { double, double }, { double, double }* %247, i32 0, i32 0
  %249 = load double, double* %248, align 1
  %250 = getelementptr { double, double }, { double, double }* %247, i32 0, i32 1
  %251 = load double, double* %250, align 1
  %252 = bitcast %struct.Point* %a to { double, double }*
  %253 = getelementptr { double, double }, { double, double }* %252, i32 0, i32 0
  %254 = load double, double* %253, align 1
  %255 = getelementptr { double, double }, { double, double }* %252, i32 0, i32 1
  %256 = load double, double* %255, align 1
  %257 = bitcast %struct.Point* %i2 to { double, double }*
  %258 = getelementptr { double, double }, { double, double }* %257, i32 0, i32 0
  %259 = load double, double* %258, align 1
  %260 = getelementptr { double, double }, { double, double }* %257, i32 0, i32 1
  %261 = load double, double* %260, align 1
  %call43 = call i32 @intersect_y(double %249, double %251, double %254, double %256, double %259, double %261, %struct.Point* %i3)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %land.lhs.true.42
  %262 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %263 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %264 = bitcast %struct.Point* %i3 to { double, double }*
  %265 = getelementptr { double, double }, { double, double }* %264, i32 0, i32 0
  %266 = load double, double* %265, align 1
  %267 = getelementptr { double, double }, { double, double }* %264, i32 0, i32 1
  %268 = load double, double* %267, align 1
  %269 = bitcast %struct.Point* %i3 to { double, double }*
  %270 = getelementptr { double, double }, { double, double }* %269, i32 0, i32 0
  %271 = load double, double* %270, align 1
  %272 = getelementptr { double, double }, { double, double }* %269, i32 0, i32 1
  %273 = load double, double* %272, align 1
  %274 = bitcast %struct.Point* %i1 to { double, double }*
  %275 = getelementptr { double, double }, { double, double }* %274, i32 0, i32 0
  %276 = load double, double* %275, align 1
  %277 = getelementptr { double, double }, { double, double }* %274, i32 0, i32 1
  %278 = load double, double* %277, align 1
  %279 = bitcast %struct.Point* %i1 to { double, double }*
  %280 = getelementptr { double, double }, { double, double }* %279, i32 0, i32 0
  %281 = load double, double* %280, align 1
  %282 = getelementptr { double, double }, { double, double }* %279, i32 0, i32 1
  %283 = load double, double* %282, align 1
  call void @add_rectangle(%struct.Point* %262, %struct.Rectangle* %263, double %266, double %268, double %271, double %273, double %276, double %278, double %281, double %283)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %land.lhs.true.42, %land.lhs.true.39, %if.end.36
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @find_three_point_rectangle_corner(%struct.Rectangle* %r, %struct.Point* %points, i32 %p) #0 {
entry:
  %r.addr = alloca %struct.Rectangle*, align 8
  %points.addr = alloca %struct.Point*, align 8
  %p.addr = alloca i32, align 4
  %a = alloca %struct.Point, align 8
  %b = alloca %struct.Point, align 8
  %c = alloca %struct.Point, align 8
  %d = alloca %struct.Point, align 8
  %i1 = alloca %struct.Point, align 8
  %i2 = alloca %struct.Point, align 8
  store %struct.Rectangle* %r, %struct.Rectangle** %r.addr, align 8
  store %struct.Point* %points, %struct.Point** %points.addr, align 8
  store i32 %p, i32* %p.addr, align 4
  %0 = load i32, i32* %p.addr, align 4
  %rem = srem i32 %0, 4
  %idxprom = sext i32 %rem to i64
  %1 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %arrayidx = getelementptr inbounds %struct.Point, %struct.Point* %1, i64 %idxprom
  %2 = bitcast %struct.Point* %a to i8*
  %3 = bitcast %struct.Point* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 16, i32 8, i1 false)
  %4 = load i32, i32* %p.addr, align 4
  %add = add nsw i32 %4, 1
  %rem1 = srem i32 %add, 4
  %idxprom2 = sext i32 %rem1 to i64
  %5 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %arrayidx3 = getelementptr inbounds %struct.Point, %struct.Point* %5, i64 %idxprom2
  %6 = bitcast %struct.Point* %b to i8*
  %7 = bitcast %struct.Point* %arrayidx3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false)
  %8 = load i32, i32* %p.addr, align 4
  %add4 = add nsw i32 %8, 2
  %rem5 = srem i32 %add4, 4
  %idxprom6 = sext i32 %rem5 to i64
  %9 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct.Point, %struct.Point* %9, i64 %idxprom6
  %10 = bitcast %struct.Point* %c to i8*
  %11 = bitcast %struct.Point* %arrayidx7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 16, i32 8, i1 false)
  %12 = load i32, i32* %p.addr, align 4
  %add8 = add nsw i32 %12, 3
  %rem9 = srem i32 %add8, 4
  %idxprom10 = sext i32 %rem9 to i64
  %13 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct.Point, %struct.Point* %13, i64 %idxprom10
  %14 = bitcast %struct.Point* %d to i8*
  %15 = bitcast %struct.Point* %arrayidx11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 16, i32 8, i1 false)
  %16 = bitcast %struct.Point* %b to { double, double }*
  %17 = getelementptr { double, double }, { double, double }* %16, i32 0, i32 0
  %18 = load double, double* %17, align 1
  %19 = getelementptr { double, double }, { double, double }* %16, i32 0, i32 1
  %20 = load double, double* %19, align 1
  %21 = bitcast %struct.Point* %c to { double, double }*
  %22 = getelementptr { double, double }, { double, double }* %21, i32 0, i32 0
  %23 = load double, double* %22, align 1
  %24 = getelementptr { double, double }, { double, double }* %21, i32 0, i32 1
  %25 = load double, double* %24, align 1
  %26 = bitcast %struct.Point* %a to { double, double }*
  %27 = getelementptr { double, double }, { double, double }* %26, i32 0, i32 0
  %28 = load double, double* %27, align 1
  %29 = getelementptr { double, double }, { double, double }* %26, i32 0, i32 1
  %30 = load double, double* %29, align 1
  %call = call i32 @intersect_x(double %18, double %20, double %23, double %25, double %28, double %30, %struct.Point* %i1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %31 = bitcast %struct.Point* %c to { double, double }*
  %32 = getelementptr { double, double }, { double, double }* %31, i32 0, i32 0
  %33 = load double, double* %32, align 1
  %34 = getelementptr { double, double }, { double, double }* %31, i32 0, i32 1
  %35 = load double, double* %34, align 1
  %36 = bitcast %struct.Point* %d to { double, double }*
  %37 = getelementptr { double, double }, { double, double }* %36, i32 0, i32 0
  %38 = load double, double* %37, align 1
  %39 = getelementptr { double, double }, { double, double }* %36, i32 0, i32 1
  %40 = load double, double* %39, align 1
  %41 = bitcast %struct.Point* %i1 to { double, double }*
  %42 = getelementptr { double, double }, { double, double }* %41, i32 0, i32 0
  %43 = load double, double* %42, align 1
  %44 = getelementptr { double, double }, { double, double }* %41, i32 0, i32 1
  %45 = load double, double* %44, align 1
  %call12 = call i32 @intersect_y(double %33, double %35, double %38, double %40, double %43, double %45, %struct.Point* %i2)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %46 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %47 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %48 = bitcast %struct.Point* %a to { double, double }*
  %49 = getelementptr { double, double }, { double, double }* %48, i32 0, i32 0
  %50 = load double, double* %49, align 1
  %51 = getelementptr { double, double }, { double, double }* %48, i32 0, i32 1
  %52 = load double, double* %51, align 1
  %53 = bitcast %struct.Point* %a to { double, double }*
  %54 = getelementptr { double, double }, { double, double }* %53, i32 0, i32 0
  %55 = load double, double* %54, align 1
  %56 = getelementptr { double, double }, { double, double }* %53, i32 0, i32 1
  %57 = load double, double* %56, align 1
  %58 = bitcast %struct.Point* %i1 to { double, double }*
  %59 = getelementptr { double, double }, { double, double }* %58, i32 0, i32 0
  %60 = load double, double* %59, align 1
  %61 = getelementptr { double, double }, { double, double }* %58, i32 0, i32 1
  %62 = load double, double* %61, align 1
  %63 = bitcast %struct.Point* %i2 to { double, double }*
  %64 = getelementptr { double, double }, { double, double }* %63, i32 0, i32 0
  %65 = load double, double* %64, align 1
  %66 = getelementptr { double, double }, { double, double }* %63, i32 0, i32 1
  %67 = load double, double* %66, align 1
  call void @add_rectangle(%struct.Point* %46, %struct.Rectangle* %47, double %50, double %52, double %55, double %57, double %60, double %62, double %65, double %67)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %68 = bitcast %struct.Point* %b to { double, double }*
  %69 = getelementptr { double, double }, { double, double }* %68, i32 0, i32 0
  %70 = load double, double* %69, align 1
  %71 = getelementptr { double, double }, { double, double }* %68, i32 0, i32 1
  %72 = load double, double* %71, align 1
  %73 = bitcast %struct.Point* %c to { double, double }*
  %74 = getelementptr { double, double }, { double, double }* %73, i32 0, i32 0
  %75 = load double, double* %74, align 1
  %76 = getelementptr { double, double }, { double, double }* %73, i32 0, i32 1
  %77 = load double, double* %76, align 1
  %78 = bitcast %struct.Point* %a to { double, double }*
  %79 = getelementptr { double, double }, { double, double }* %78, i32 0, i32 0
  %80 = load double, double* %79, align 1
  %81 = getelementptr { double, double }, { double, double }* %78, i32 0, i32 1
  %82 = load double, double* %81, align 1
  %call14 = call i32 @intersect_y(double %70, double %72, double %75, double %77, double %80, double %82, %struct.Point* %i1)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %land.lhs.true.16, label %if.end.20

land.lhs.true.16:                                 ; preds = %if.end
  %83 = bitcast %struct.Point* %c to { double, double }*
  %84 = getelementptr { double, double }, { double, double }* %83, i32 0, i32 0
  %85 = load double, double* %84, align 1
  %86 = getelementptr { double, double }, { double, double }* %83, i32 0, i32 1
  %87 = load double, double* %86, align 1
  %88 = bitcast %struct.Point* %d to { double, double }*
  %89 = getelementptr { double, double }, { double, double }* %88, i32 0, i32 0
  %90 = load double, double* %89, align 1
  %91 = getelementptr { double, double }, { double, double }* %88, i32 0, i32 1
  %92 = load double, double* %91, align 1
  %93 = bitcast %struct.Point* %i1 to { double, double }*
  %94 = getelementptr { double, double }, { double, double }* %93, i32 0, i32 0
  %95 = load double, double* %94, align 1
  %96 = getelementptr { double, double }, { double, double }* %93, i32 0, i32 1
  %97 = load double, double* %96, align 1
  %call17 = call i32 @intersect_x(double %85, double %87, double %90, double %92, double %95, double %97, %struct.Point* %i2)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %land.lhs.true.16
  %98 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %99 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %100 = bitcast %struct.Point* %a to { double, double }*
  %101 = getelementptr { double, double }, { double, double }* %100, i32 0, i32 0
  %102 = load double, double* %101, align 1
  %103 = getelementptr { double, double }, { double, double }* %100, i32 0, i32 1
  %104 = load double, double* %103, align 1
  %105 = bitcast %struct.Point* %a to { double, double }*
  %106 = getelementptr { double, double }, { double, double }* %105, i32 0, i32 0
  %107 = load double, double* %106, align 1
  %108 = getelementptr { double, double }, { double, double }* %105, i32 0, i32 1
  %109 = load double, double* %108, align 1
  %110 = bitcast %struct.Point* %i1 to { double, double }*
  %111 = getelementptr { double, double }, { double, double }* %110, i32 0, i32 0
  %112 = load double, double* %111, align 1
  %113 = getelementptr { double, double }, { double, double }* %110, i32 0, i32 1
  %114 = load double, double* %113, align 1
  %115 = bitcast %struct.Point* %i2 to { double, double }*
  %116 = getelementptr { double, double }, { double, double }* %115, i32 0, i32 0
  %117 = load double, double* %116, align 1
  %118 = getelementptr { double, double }, { double, double }* %115, i32 0, i32 1
  %119 = load double, double* %118, align 1
  call void @add_rectangle(%struct.Point* %98, %struct.Rectangle* %99, double %102, double %104, double %107, double %109, double %112, double %114, double %117, double %119)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %land.lhs.true.16, %if.end
  %120 = bitcast %struct.Point* %c to { double, double }*
  %121 = getelementptr { double, double }, { double, double }* %120, i32 0, i32 0
  %122 = load double, double* %121, align 1
  %123 = getelementptr { double, double }, { double, double }* %120, i32 0, i32 1
  %124 = load double, double* %123, align 1
  %125 = bitcast %struct.Point* %d to { double, double }*
  %126 = getelementptr { double, double }, { double, double }* %125, i32 0, i32 0
  %127 = load double, double* %126, align 1
  %128 = getelementptr { double, double }, { double, double }* %125, i32 0, i32 1
  %129 = load double, double* %128, align 1
  %130 = bitcast %struct.Point* %a to { double, double }*
  %131 = getelementptr { double, double }, { double, double }* %130, i32 0, i32 0
  %132 = load double, double* %131, align 1
  %133 = getelementptr { double, double }, { double, double }* %130, i32 0, i32 1
  %134 = load double, double* %133, align 1
  %call21 = call i32 @intersect_x(double %122, double %124, double %127, double %129, double %132, double %134, %struct.Point* %i1)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %land.lhs.true.23, label %if.end.27

land.lhs.true.23:                                 ; preds = %if.end.20
  %135 = bitcast %struct.Point* %b to { double, double }*
  %136 = getelementptr { double, double }, { double, double }* %135, i32 0, i32 0
  %137 = load double, double* %136, align 1
  %138 = getelementptr { double, double }, { double, double }* %135, i32 0, i32 1
  %139 = load double, double* %138, align 1
  %140 = bitcast %struct.Point* %c to { double, double }*
  %141 = getelementptr { double, double }, { double, double }* %140, i32 0, i32 0
  %142 = load double, double* %141, align 1
  %143 = getelementptr { double, double }, { double, double }* %140, i32 0, i32 1
  %144 = load double, double* %143, align 1
  %145 = bitcast %struct.Point* %i1 to { double, double }*
  %146 = getelementptr { double, double }, { double, double }* %145, i32 0, i32 0
  %147 = load double, double* %146, align 1
  %148 = getelementptr { double, double }, { double, double }* %145, i32 0, i32 1
  %149 = load double, double* %148, align 1
  %call24 = call i32 @intersect_y(double %137, double %139, double %142, double %144, double %147, double %149, %struct.Point* %i2)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %land.lhs.true.23
  %150 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %151 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %152 = bitcast %struct.Point* %a to { double, double }*
  %153 = getelementptr { double, double }, { double, double }* %152, i32 0, i32 0
  %154 = load double, double* %153, align 1
  %155 = getelementptr { double, double }, { double, double }* %152, i32 0, i32 1
  %156 = load double, double* %155, align 1
  %157 = bitcast %struct.Point* %a to { double, double }*
  %158 = getelementptr { double, double }, { double, double }* %157, i32 0, i32 0
  %159 = load double, double* %158, align 1
  %160 = getelementptr { double, double }, { double, double }* %157, i32 0, i32 1
  %161 = load double, double* %160, align 1
  %162 = bitcast %struct.Point* %i1 to { double, double }*
  %163 = getelementptr { double, double }, { double, double }* %162, i32 0, i32 0
  %164 = load double, double* %163, align 1
  %165 = getelementptr { double, double }, { double, double }* %162, i32 0, i32 1
  %166 = load double, double* %165, align 1
  %167 = bitcast %struct.Point* %i2 to { double, double }*
  %168 = getelementptr { double, double }, { double, double }* %167, i32 0, i32 0
  %169 = load double, double* %168, align 1
  %170 = getelementptr { double, double }, { double, double }* %167, i32 0, i32 1
  %171 = load double, double* %170, align 1
  call void @add_rectangle(%struct.Point* %150, %struct.Rectangle* %151, double %154, double %156, double %159, double %161, double %164, double %166, double %169, double %171)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %land.lhs.true.23, %if.end.20
  %172 = bitcast %struct.Point* %c to { double, double }*
  %173 = getelementptr { double, double }, { double, double }* %172, i32 0, i32 0
  %174 = load double, double* %173, align 1
  %175 = getelementptr { double, double }, { double, double }* %172, i32 0, i32 1
  %176 = load double, double* %175, align 1
  %177 = bitcast %struct.Point* %d to { double, double }*
  %178 = getelementptr { double, double }, { double, double }* %177, i32 0, i32 0
  %179 = load double, double* %178, align 1
  %180 = getelementptr { double, double }, { double, double }* %177, i32 0, i32 1
  %181 = load double, double* %180, align 1
  %182 = bitcast %struct.Point* %a to { double, double }*
  %183 = getelementptr { double, double }, { double, double }* %182, i32 0, i32 0
  %184 = load double, double* %183, align 1
  %185 = getelementptr { double, double }, { double, double }* %182, i32 0, i32 1
  %186 = load double, double* %185, align 1
  %call28 = call i32 @intersect_y(double %174, double %176, double %179, double %181, double %184, double %186, %struct.Point* %i1)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %land.lhs.true.30, label %if.end.34

land.lhs.true.30:                                 ; preds = %if.end.27
  %187 = bitcast %struct.Point* %b to { double, double }*
  %188 = getelementptr { double, double }, { double, double }* %187, i32 0, i32 0
  %189 = load double, double* %188, align 1
  %190 = getelementptr { double, double }, { double, double }* %187, i32 0, i32 1
  %191 = load double, double* %190, align 1
  %192 = bitcast %struct.Point* %c to { double, double }*
  %193 = getelementptr { double, double }, { double, double }* %192, i32 0, i32 0
  %194 = load double, double* %193, align 1
  %195 = getelementptr { double, double }, { double, double }* %192, i32 0, i32 1
  %196 = load double, double* %195, align 1
  %197 = bitcast %struct.Point* %i1 to { double, double }*
  %198 = getelementptr { double, double }, { double, double }* %197, i32 0, i32 0
  %199 = load double, double* %198, align 1
  %200 = getelementptr { double, double }, { double, double }* %197, i32 0, i32 1
  %201 = load double, double* %200, align 1
  %call31 = call i32 @intersect_x(double %189, double %191, double %194, double %196, double %199, double %201, %struct.Point* %i2)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %land.lhs.true.30
  %202 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %203 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %204 = bitcast %struct.Point* %a to { double, double }*
  %205 = getelementptr { double, double }, { double, double }* %204, i32 0, i32 0
  %206 = load double, double* %205, align 1
  %207 = getelementptr { double, double }, { double, double }* %204, i32 0, i32 1
  %208 = load double, double* %207, align 1
  %209 = bitcast %struct.Point* %a to { double, double }*
  %210 = getelementptr { double, double }, { double, double }* %209, i32 0, i32 0
  %211 = load double, double* %210, align 1
  %212 = getelementptr { double, double }, { double, double }* %209, i32 0, i32 1
  %213 = load double, double* %212, align 1
  %214 = bitcast %struct.Point* %i1 to { double, double }*
  %215 = getelementptr { double, double }, { double, double }* %214, i32 0, i32 0
  %216 = load double, double* %215, align 1
  %217 = getelementptr { double, double }, { double, double }* %214, i32 0, i32 1
  %218 = load double, double* %217, align 1
  %219 = bitcast %struct.Point* %i2 to { double, double }*
  %220 = getelementptr { double, double }, { double, double }* %219, i32 0, i32 0
  %221 = load double, double* %220, align 1
  %222 = getelementptr { double, double }, { double, double }* %219, i32 0, i32 1
  %223 = load double, double* %222, align 1
  call void @add_rectangle(%struct.Point* %202, %struct.Rectangle* %203, double %206, double %208, double %211, double %213, double %216, double %218, double %221, double %223)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %land.lhs.true.30, %if.end.27
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @find_two_point_rectangle(%struct.Rectangle* %r, %struct.Point* %points, i32 %p) #0 {
entry:
  %r.addr = alloca %struct.Rectangle*, align 8
  %points.addr = alloca %struct.Point*, align 8
  %p.addr = alloca i32, align 4
  %a = alloca %struct.Point, align 8
  %b = alloca %struct.Point, align 8
  %c = alloca %struct.Point, align 8
  %d = alloca %struct.Point, align 8
  %i1 = alloca %struct.Point, align 8
  %i2 = alloca %struct.Point, align 8
  %mid = alloca %struct.Point, align 8
  store %struct.Rectangle* %r, %struct.Rectangle** %r.addr, align 8
  store %struct.Point* %points, %struct.Point** %points.addr, align 8
  store i32 %p, i32* %p.addr, align 4
  %0 = load i32, i32* %p.addr, align 4
  %rem = srem i32 %0, 4
  %idxprom = sext i32 %rem to i64
  %1 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %arrayidx = getelementptr inbounds %struct.Point, %struct.Point* %1, i64 %idxprom
  %2 = bitcast %struct.Point* %a to i8*
  %3 = bitcast %struct.Point* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 16, i32 8, i1 false)
  %4 = load i32, i32* %p.addr, align 4
  %add = add nsw i32 %4, 1
  %rem1 = srem i32 %add, 4
  %idxprom2 = sext i32 %rem1 to i64
  %5 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %arrayidx3 = getelementptr inbounds %struct.Point, %struct.Point* %5, i64 %idxprom2
  %6 = bitcast %struct.Point* %b to i8*
  %7 = bitcast %struct.Point* %arrayidx3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false)
  %8 = load i32, i32* %p.addr, align 4
  %add4 = add nsw i32 %8, 2
  %rem5 = srem i32 %add4, 4
  %idxprom6 = sext i32 %rem5 to i64
  %9 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct.Point, %struct.Point* %9, i64 %idxprom6
  %10 = bitcast %struct.Point* %c to i8*
  %11 = bitcast %struct.Point* %arrayidx7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 16, i32 8, i1 false)
  %12 = load i32, i32* %p.addr, align 4
  %add8 = add nsw i32 %12, 3
  %rem9 = srem i32 %add8, 4
  %idxprom10 = sext i32 %rem9 to i64
  %13 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct.Point, %struct.Point* %13, i64 %idxprom10
  %14 = bitcast %struct.Point* %d to i8*
  %15 = bitcast %struct.Point* %arrayidx11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 16, i32 8, i1 false)
  %16 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %17 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %18 = bitcast %struct.Point* %a to { double, double }*
  %19 = getelementptr { double, double }, { double, double }* %18, i32 0, i32 0
  %20 = load double, double* %19, align 1
  %21 = getelementptr { double, double }, { double, double }* %18, i32 0, i32 1
  %22 = load double, double* %21, align 1
  %23 = bitcast %struct.Point* %a to { double, double }*
  %24 = getelementptr { double, double }, { double, double }* %23, i32 0, i32 0
  %25 = load double, double* %24, align 1
  %26 = getelementptr { double, double }, { double, double }* %23, i32 0, i32 1
  %27 = load double, double* %26, align 1
  %28 = bitcast %struct.Point* %c to { double, double }*
  %29 = getelementptr { double, double }, { double, double }* %28, i32 0, i32 0
  %30 = load double, double* %29, align 1
  %31 = getelementptr { double, double }, { double, double }* %28, i32 0, i32 1
  %32 = load double, double* %31, align 1
  %33 = bitcast %struct.Point* %c to { double, double }*
  %34 = getelementptr { double, double }, { double, double }* %33, i32 0, i32 0
  %35 = load double, double* %34, align 1
  %36 = getelementptr { double, double }, { double, double }* %33, i32 0, i32 1
  %37 = load double, double* %36, align 1
  call void @add_rectangle(%struct.Point* %16, %struct.Rectangle* %17, double %20, double %22, double %25, double %27, double %30, double %32, double %35, double %37)
  %38 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %39 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %40 = bitcast %struct.Point* %b to { double, double }*
  %41 = getelementptr { double, double }, { double, double }* %40, i32 0, i32 0
  %42 = load double, double* %41, align 1
  %43 = getelementptr { double, double }, { double, double }* %40, i32 0, i32 1
  %44 = load double, double* %43, align 1
  %45 = bitcast %struct.Point* %b to { double, double }*
  %46 = getelementptr { double, double }, { double, double }* %45, i32 0, i32 0
  %47 = load double, double* %46, align 1
  %48 = getelementptr { double, double }, { double, double }* %45, i32 0, i32 1
  %49 = load double, double* %48, align 1
  %50 = bitcast %struct.Point* %d to { double, double }*
  %51 = getelementptr { double, double }, { double, double }* %50, i32 0, i32 0
  %52 = load double, double* %51, align 1
  %53 = getelementptr { double, double }, { double, double }* %50, i32 0, i32 1
  %54 = load double, double* %53, align 1
  %55 = bitcast %struct.Point* %d to { double, double }*
  %56 = getelementptr { double, double }, { double, double }* %55, i32 0, i32 0
  %57 = load double, double* %56, align 1
  %58 = getelementptr { double, double }, { double, double }* %55, i32 0, i32 1
  %59 = load double, double* %58, align 1
  call void @add_rectangle(%struct.Point* %38, %struct.Rectangle* %39, double %42, double %44, double %47, double %49, double %52, double %54, double %57, double %59)
  %60 = bitcast %struct.Point* %c to { double, double }*
  %61 = getelementptr { double, double }, { double, double }* %60, i32 0, i32 0
  %62 = load double, double* %61, align 1
  %63 = getelementptr { double, double }, { double, double }* %60, i32 0, i32 1
  %64 = load double, double* %63, align 1
  %65 = bitcast %struct.Point* %b to { double, double }*
  %66 = getelementptr { double, double }, { double, double }* %65, i32 0, i32 0
  %67 = load double, double* %66, align 1
  %68 = getelementptr { double, double }, { double, double }* %65, i32 0, i32 1
  %69 = load double, double* %68, align 1
  %70 = bitcast %struct.Point* %a to { double, double }*
  %71 = getelementptr { double, double }, { double, double }* %70, i32 0, i32 0
  %72 = load double, double* %71, align 1
  %73 = getelementptr { double, double }, { double, double }* %70, i32 0, i32 1
  %74 = load double, double* %73, align 1
  %call = call i32 @intersect_x(double %62, double %64, double %67, double %69, double %72, double %74, %struct.Point* %i1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %75 = bitcast %struct.Point* %c to { double, double }*
  %76 = getelementptr { double, double }, { double, double }* %75, i32 0, i32 0
  %77 = load double, double* %76, align 1
  %78 = getelementptr { double, double }, { double, double }* %75, i32 0, i32 1
  %79 = load double, double* %78, align 1
  %80 = bitcast %struct.Point* %b to { double, double }*
  %81 = getelementptr { double, double }, { double, double }* %80, i32 0, i32 0
  %82 = load double, double* %81, align 1
  %83 = getelementptr { double, double }, { double, double }* %80, i32 0, i32 1
  %84 = load double, double* %83, align 1
  %85 = bitcast %struct.Point* %a to { double, double }*
  %86 = getelementptr { double, double }, { double, double }* %85, i32 0, i32 0
  %87 = load double, double* %86, align 1
  %88 = getelementptr { double, double }, { double, double }* %85, i32 0, i32 1
  %89 = load double, double* %88, align 1
  %call12 = call i32 @intersect_y(double %77, double %79, double %82, double %84, double %87, double %89, %struct.Point* %i2)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %x = getelementptr inbounds %struct.Point, %struct.Point* %i1, i32 0, i32 0
  %90 = load double, double* %x, align 8
  %x14 = getelementptr inbounds %struct.Point, %struct.Point* %i2, i32 0, i32 0
  %91 = load double, double* %x14, align 8
  %add15 = fadd double %90, %91
  %div = fdiv double %add15, 2.000000e+00
  %x16 = getelementptr inbounds %struct.Point, %struct.Point* %mid, i32 0, i32 0
  store double %div, double* %x16, align 8
  %y = getelementptr inbounds %struct.Point, %struct.Point* %i1, i32 0, i32 1
  %92 = load double, double* %y, align 8
  %y17 = getelementptr inbounds %struct.Point, %struct.Point* %i2, i32 0, i32 1
  %93 = load double, double* %y17, align 8
  %add18 = fadd double %92, %93
  %div19 = fdiv double %add18, 2.000000e+00
  %y20 = getelementptr inbounds %struct.Point, %struct.Point* %mid, i32 0, i32 1
  store double %div19, double* %y20, align 8
  %94 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %95 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %96 = bitcast %struct.Point* %a to { double, double }*
  %97 = getelementptr { double, double }, { double, double }* %96, i32 0, i32 0
  %98 = load double, double* %97, align 1
  %99 = getelementptr { double, double }, { double, double }* %96, i32 0, i32 1
  %100 = load double, double* %99, align 1
  %101 = bitcast %struct.Point* %a to { double, double }*
  %102 = getelementptr { double, double }, { double, double }* %101, i32 0, i32 0
  %103 = load double, double* %102, align 1
  %104 = getelementptr { double, double }, { double, double }* %101, i32 0, i32 1
  %105 = load double, double* %104, align 1
  %106 = bitcast %struct.Point* %mid to { double, double }*
  %107 = getelementptr { double, double }, { double, double }* %106, i32 0, i32 0
  %108 = load double, double* %107, align 1
  %109 = getelementptr { double, double }, { double, double }* %106, i32 0, i32 1
  %110 = load double, double* %109, align 1
  %111 = bitcast %struct.Point* %mid to { double, double }*
  %112 = getelementptr { double, double }, { double, double }* %111, i32 0, i32 0
  %113 = load double, double* %112, align 1
  %114 = getelementptr { double, double }, { double, double }* %111, i32 0, i32 1
  %115 = load double, double* %114, align 1
  call void @add_rectangle(%struct.Point* %94, %struct.Rectangle* %95, double %98, double %100, double %103, double %105, double %108, double %110, double %113, double %115)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @find_three_point_rectangle_triangle(%struct.Rectangle* %r, %struct.Point* %points, i32 %p) #0 {
entry:
  %r.addr = alloca %struct.Rectangle*, align 8
  %points.addr = alloca %struct.Point*, align 8
  %p.addr = alloca i32, align 4
  %a = alloca %struct.Point, align 8
  %b = alloca %struct.Point, align 8
  %c = alloca %struct.Point, align 8
  %d = alloca %struct.Point, align 8
  %i1 = alloca %struct.Point, align 8
  %i2 = alloca %struct.Point, align 8
  %mid = alloca %struct.Point, align 8
  store %struct.Rectangle* %r, %struct.Rectangle** %r.addr, align 8
  store %struct.Point* %points, %struct.Point** %points.addr, align 8
  store i32 %p, i32* %p.addr, align 4
  %0 = load i32, i32* %p.addr, align 4
  %rem = srem i32 %0, 4
  %idxprom = sext i32 %rem to i64
  %1 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %arrayidx = getelementptr inbounds %struct.Point, %struct.Point* %1, i64 %idxprom
  %2 = bitcast %struct.Point* %a to i8*
  %3 = bitcast %struct.Point* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 16, i32 8, i1 false)
  %4 = load i32, i32* %p.addr, align 4
  %add = add nsw i32 %4, 1
  %rem1 = srem i32 %add, 4
  %idxprom2 = sext i32 %rem1 to i64
  %5 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %arrayidx3 = getelementptr inbounds %struct.Point, %struct.Point* %5, i64 %idxprom2
  %6 = bitcast %struct.Point* %b to i8*
  %7 = bitcast %struct.Point* %arrayidx3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false)
  %8 = load i32, i32* %p.addr, align 4
  %add4 = add nsw i32 %8, 2
  %rem5 = srem i32 %add4, 4
  %idxprom6 = sext i32 %rem5 to i64
  %9 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct.Point, %struct.Point* %9, i64 %idxprom6
  %10 = bitcast %struct.Point* %c to i8*
  %11 = bitcast %struct.Point* %arrayidx7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 16, i32 8, i1 false)
  %12 = load i32, i32* %p.addr, align 4
  %add8 = add nsw i32 %12, 3
  %rem9 = srem i32 %add8, 4
  %idxprom10 = sext i32 %rem9 to i64
  %13 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct.Point, %struct.Point* %13, i64 %idxprom10
  %14 = bitcast %struct.Point* %d to i8*
  %15 = bitcast %struct.Point* %arrayidx11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 16, i32 8, i1 false)
  %x = getelementptr inbounds %struct.Point, %struct.Point* %a, i32 0, i32 0
  %16 = load double, double* %x, align 8
  %x12 = getelementptr inbounds %struct.Point, %struct.Point* %b, i32 0, i32 0
  %17 = load double, double* %x12, align 8
  %add13 = fadd double %16, %17
  %div = fdiv double %add13, 2.000000e+00
  %x14 = getelementptr inbounds %struct.Point, %struct.Point* %mid, i32 0, i32 0
  store double %div, double* %x14, align 8
  %y = getelementptr inbounds %struct.Point, %struct.Point* %a, i32 0, i32 1
  %18 = load double, double* %y, align 8
  %y15 = getelementptr inbounds %struct.Point, %struct.Point* %b, i32 0, i32 1
  %19 = load double, double* %y15, align 8
  %add16 = fadd double %18, %19
  %div17 = fdiv double %add16, 2.000000e+00
  %y18 = getelementptr inbounds %struct.Point, %struct.Point* %mid, i32 0, i32 1
  store double %div17, double* %y18, align 8
  %20 = bitcast %struct.Point* %b to { double, double }*
  %21 = getelementptr { double, double }, { double, double }* %20, i32 0, i32 0
  %22 = load double, double* %21, align 1
  %23 = getelementptr { double, double }, { double, double }* %20, i32 0, i32 1
  %24 = load double, double* %23, align 1
  %25 = bitcast %struct.Point* %c to { double, double }*
  %26 = getelementptr { double, double }, { double, double }* %25, i32 0, i32 0
  %27 = load double, double* %26, align 1
  %28 = getelementptr { double, double }, { double, double }* %25, i32 0, i32 1
  %29 = load double, double* %28, align 1
  %30 = bitcast %struct.Point* %mid to { double, double }*
  %31 = getelementptr { double, double }, { double, double }* %30, i32 0, i32 0
  %32 = load double, double* %31, align 1
  %33 = getelementptr { double, double }, { double, double }* %30, i32 0, i32 1
  %34 = load double, double* %33, align 1
  %call = call i32 @intersect_x(double %22, double %24, double %27, double %29, double %32, double %34, %struct.Point* %i1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %35 = bitcast %struct.Point* %a to { double, double }*
  %36 = getelementptr { double, double }, { double, double }* %35, i32 0, i32 0
  %37 = load double, double* %36, align 1
  %38 = getelementptr { double, double }, { double, double }* %35, i32 0, i32 1
  %39 = load double, double* %38, align 1
  %40 = bitcast %struct.Point* %d to { double, double }*
  %41 = getelementptr { double, double }, { double, double }* %40, i32 0, i32 0
  %42 = load double, double* %41, align 1
  %43 = getelementptr { double, double }, { double, double }* %40, i32 0, i32 1
  %44 = load double, double* %43, align 1
  %45 = bitcast %struct.Point* %mid to { double, double }*
  %46 = getelementptr { double, double }, { double, double }* %45, i32 0, i32 0
  %47 = load double, double* %46, align 1
  %48 = getelementptr { double, double }, { double, double }* %45, i32 0, i32 1
  %49 = load double, double* %48, align 1
  %call19 = call i32 @intersect_y(double %37, double %39, double %42, double %44, double %47, double %49, %struct.Point* %i2)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %50 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %51 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %52 = bitcast %struct.Point* %mid to { double, double }*
  %53 = getelementptr { double, double }, { double, double }* %52, i32 0, i32 0
  %54 = load double, double* %53, align 1
  %55 = getelementptr { double, double }, { double, double }* %52, i32 0, i32 1
  %56 = load double, double* %55, align 1
  %57 = bitcast %struct.Point* %mid to { double, double }*
  %58 = getelementptr { double, double }, { double, double }* %57, i32 0, i32 0
  %59 = load double, double* %58, align 1
  %60 = getelementptr { double, double }, { double, double }* %57, i32 0, i32 1
  %61 = load double, double* %60, align 1
  %62 = bitcast %struct.Point* %i1 to { double, double }*
  %63 = getelementptr { double, double }, { double, double }* %62, i32 0, i32 0
  %64 = load double, double* %63, align 1
  %65 = getelementptr { double, double }, { double, double }* %62, i32 0, i32 1
  %66 = load double, double* %65, align 1
  %67 = bitcast %struct.Point* %i2 to { double, double }*
  %68 = getelementptr { double, double }, { double, double }* %67, i32 0, i32 0
  %69 = load double, double* %68, align 1
  %70 = getelementptr { double, double }, { double, double }* %67, i32 0, i32 1
  %71 = load double, double* %70, align 1
  call void @add_rectangle(%struct.Point* %50, %struct.Rectangle* %51, double %54, double %56, double %59, double %61, double %64, double %66, double %69, double %71)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %72 = bitcast %struct.Point* %b to { double, double }*
  %73 = getelementptr { double, double }, { double, double }* %72, i32 0, i32 0
  %74 = load double, double* %73, align 1
  %75 = getelementptr { double, double }, { double, double }* %72, i32 0, i32 1
  %76 = load double, double* %75, align 1
  %77 = bitcast %struct.Point* %c to { double, double }*
  %78 = getelementptr { double, double }, { double, double }* %77, i32 0, i32 0
  %79 = load double, double* %78, align 1
  %80 = getelementptr { double, double }, { double, double }* %77, i32 0, i32 1
  %81 = load double, double* %80, align 1
  %82 = bitcast %struct.Point* %mid to { double, double }*
  %83 = getelementptr { double, double }, { double, double }* %82, i32 0, i32 0
  %84 = load double, double* %83, align 1
  %85 = getelementptr { double, double }, { double, double }* %82, i32 0, i32 1
  %86 = load double, double* %85, align 1
  %call21 = call i32 @intersect_y(double %74, double %76, double %79, double %81, double %84, double %86, %struct.Point* %i1)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %land.lhs.true.23, label %if.end.27

land.lhs.true.23:                                 ; preds = %if.end
  %87 = bitcast %struct.Point* %a to { double, double }*
  %88 = getelementptr { double, double }, { double, double }* %87, i32 0, i32 0
  %89 = load double, double* %88, align 1
  %90 = getelementptr { double, double }, { double, double }* %87, i32 0, i32 1
  %91 = load double, double* %90, align 1
  %92 = bitcast %struct.Point* %d to { double, double }*
  %93 = getelementptr { double, double }, { double, double }* %92, i32 0, i32 0
  %94 = load double, double* %93, align 1
  %95 = getelementptr { double, double }, { double, double }* %92, i32 0, i32 1
  %96 = load double, double* %95, align 1
  %97 = bitcast %struct.Point* %mid to { double, double }*
  %98 = getelementptr { double, double }, { double, double }* %97, i32 0, i32 0
  %99 = load double, double* %98, align 1
  %100 = getelementptr { double, double }, { double, double }* %97, i32 0, i32 1
  %101 = load double, double* %100, align 1
  %call24 = call i32 @intersect_x(double %89, double %91, double %94, double %96, double %99, double %101, %struct.Point* %i2)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %land.lhs.true.23
  %102 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %103 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %104 = bitcast %struct.Point* %mid to { double, double }*
  %105 = getelementptr { double, double }, { double, double }* %104, i32 0, i32 0
  %106 = load double, double* %105, align 1
  %107 = getelementptr { double, double }, { double, double }* %104, i32 0, i32 1
  %108 = load double, double* %107, align 1
  %109 = bitcast %struct.Point* %mid to { double, double }*
  %110 = getelementptr { double, double }, { double, double }* %109, i32 0, i32 0
  %111 = load double, double* %110, align 1
  %112 = getelementptr { double, double }, { double, double }* %109, i32 0, i32 1
  %113 = load double, double* %112, align 1
  %114 = bitcast %struct.Point* %i1 to { double, double }*
  %115 = getelementptr { double, double }, { double, double }* %114, i32 0, i32 0
  %116 = load double, double* %115, align 1
  %117 = getelementptr { double, double }, { double, double }* %114, i32 0, i32 1
  %118 = load double, double* %117, align 1
  %119 = bitcast %struct.Point* %i2 to { double, double }*
  %120 = getelementptr { double, double }, { double, double }* %119, i32 0, i32 0
  %121 = load double, double* %120, align 1
  %122 = getelementptr { double, double }, { double, double }* %119, i32 0, i32 1
  %123 = load double, double* %122, align 1
  call void @add_rectangle(%struct.Point* %102, %struct.Rectangle* %103, double %106, double %108, double %111, double %113, double %116, double %118, double %121, double %123)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %land.lhs.true.23, %if.end
  %124 = bitcast %struct.Point* %a to { double, double }*
  %125 = getelementptr { double, double }, { double, double }* %124, i32 0, i32 0
  %126 = load double, double* %125, align 1
  %127 = getelementptr { double, double }, { double, double }* %124, i32 0, i32 1
  %128 = load double, double* %127, align 1
  %129 = bitcast %struct.Point* %d to { double, double }*
  %130 = getelementptr { double, double }, { double, double }* %129, i32 0, i32 0
  %131 = load double, double* %130, align 1
  %132 = getelementptr { double, double }, { double, double }* %129, i32 0, i32 1
  %133 = load double, double* %132, align 1
  %134 = bitcast %struct.Point* %mid to { double, double }*
  %135 = getelementptr { double, double }, { double, double }* %134, i32 0, i32 0
  %136 = load double, double* %135, align 1
  %137 = getelementptr { double, double }, { double, double }* %134, i32 0, i32 1
  %138 = load double, double* %137, align 1
  %call28 = call i32 @intersect_x(double %126, double %128, double %131, double %133, double %136, double %138, %struct.Point* %i1)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %land.lhs.true.30, label %if.end.34

land.lhs.true.30:                                 ; preds = %if.end.27
  %139 = bitcast %struct.Point* %b to { double, double }*
  %140 = getelementptr { double, double }, { double, double }* %139, i32 0, i32 0
  %141 = load double, double* %140, align 1
  %142 = getelementptr { double, double }, { double, double }* %139, i32 0, i32 1
  %143 = load double, double* %142, align 1
  %144 = bitcast %struct.Point* %c to { double, double }*
  %145 = getelementptr { double, double }, { double, double }* %144, i32 0, i32 0
  %146 = load double, double* %145, align 1
  %147 = getelementptr { double, double }, { double, double }* %144, i32 0, i32 1
  %148 = load double, double* %147, align 1
  %149 = bitcast %struct.Point* %mid to { double, double }*
  %150 = getelementptr { double, double }, { double, double }* %149, i32 0, i32 0
  %151 = load double, double* %150, align 1
  %152 = getelementptr { double, double }, { double, double }* %149, i32 0, i32 1
  %153 = load double, double* %152, align 1
  %call31 = call i32 @intersect_y(double %141, double %143, double %146, double %148, double %151, double %153, %struct.Point* %i2)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %land.lhs.true.30
  %154 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %155 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %156 = bitcast %struct.Point* %mid to { double, double }*
  %157 = getelementptr { double, double }, { double, double }* %156, i32 0, i32 0
  %158 = load double, double* %157, align 1
  %159 = getelementptr { double, double }, { double, double }* %156, i32 0, i32 1
  %160 = load double, double* %159, align 1
  %161 = bitcast %struct.Point* %mid to { double, double }*
  %162 = getelementptr { double, double }, { double, double }* %161, i32 0, i32 0
  %163 = load double, double* %162, align 1
  %164 = getelementptr { double, double }, { double, double }* %161, i32 0, i32 1
  %165 = load double, double* %164, align 1
  %166 = bitcast %struct.Point* %i1 to { double, double }*
  %167 = getelementptr { double, double }, { double, double }* %166, i32 0, i32 0
  %168 = load double, double* %167, align 1
  %169 = getelementptr { double, double }, { double, double }* %166, i32 0, i32 1
  %170 = load double, double* %169, align 1
  %171 = bitcast %struct.Point* %i2 to { double, double }*
  %172 = getelementptr { double, double }, { double, double }* %171, i32 0, i32 0
  %173 = load double, double* %172, align 1
  %174 = getelementptr { double, double }, { double, double }* %171, i32 0, i32 1
  %175 = load double, double* %174, align 1
  call void @add_rectangle(%struct.Point* %154, %struct.Rectangle* %155, double %158, double %160, double %163, double %165, double %168, double %170, double %173, double %175)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %land.lhs.true.30, %if.end.27
  %176 = bitcast %struct.Point* %a to { double, double }*
  %177 = getelementptr { double, double }, { double, double }* %176, i32 0, i32 0
  %178 = load double, double* %177, align 1
  %179 = getelementptr { double, double }, { double, double }* %176, i32 0, i32 1
  %180 = load double, double* %179, align 1
  %181 = bitcast %struct.Point* %d to { double, double }*
  %182 = getelementptr { double, double }, { double, double }* %181, i32 0, i32 0
  %183 = load double, double* %182, align 1
  %184 = getelementptr { double, double }, { double, double }* %181, i32 0, i32 1
  %185 = load double, double* %184, align 1
  %186 = bitcast %struct.Point* %mid to { double, double }*
  %187 = getelementptr { double, double }, { double, double }* %186, i32 0, i32 0
  %188 = load double, double* %187, align 1
  %189 = getelementptr { double, double }, { double, double }* %186, i32 0, i32 1
  %190 = load double, double* %189, align 1
  %call35 = call i32 @intersect_y(double %178, double %180, double %183, double %185, double %188, double %190, %struct.Point* %i1)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %land.lhs.true.37, label %if.end.41

land.lhs.true.37:                                 ; preds = %if.end.34
  %191 = bitcast %struct.Point* %b to { double, double }*
  %192 = getelementptr { double, double }, { double, double }* %191, i32 0, i32 0
  %193 = load double, double* %192, align 1
  %194 = getelementptr { double, double }, { double, double }* %191, i32 0, i32 1
  %195 = load double, double* %194, align 1
  %196 = bitcast %struct.Point* %c to { double, double }*
  %197 = getelementptr { double, double }, { double, double }* %196, i32 0, i32 0
  %198 = load double, double* %197, align 1
  %199 = getelementptr { double, double }, { double, double }* %196, i32 0, i32 1
  %200 = load double, double* %199, align 1
  %201 = bitcast %struct.Point* %mid to { double, double }*
  %202 = getelementptr { double, double }, { double, double }* %201, i32 0, i32 0
  %203 = load double, double* %202, align 1
  %204 = getelementptr { double, double }, { double, double }* %201, i32 0, i32 1
  %205 = load double, double* %204, align 1
  %call38 = call i32 @intersect_x(double %193, double %195, double %198, double %200, double %203, double %205, %struct.Point* %i2)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %land.lhs.true.37
  %206 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %207 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %208 = bitcast %struct.Point* %mid to { double, double }*
  %209 = getelementptr { double, double }, { double, double }* %208, i32 0, i32 0
  %210 = load double, double* %209, align 1
  %211 = getelementptr { double, double }, { double, double }* %208, i32 0, i32 1
  %212 = load double, double* %211, align 1
  %213 = bitcast %struct.Point* %mid to { double, double }*
  %214 = getelementptr { double, double }, { double, double }* %213, i32 0, i32 0
  %215 = load double, double* %214, align 1
  %216 = getelementptr { double, double }, { double, double }* %213, i32 0, i32 1
  %217 = load double, double* %216, align 1
  %218 = bitcast %struct.Point* %i1 to { double, double }*
  %219 = getelementptr { double, double }, { double, double }* %218, i32 0, i32 0
  %220 = load double, double* %219, align 1
  %221 = getelementptr { double, double }, { double, double }* %218, i32 0, i32 1
  %222 = load double, double* %221, align 1
  %223 = bitcast %struct.Point* %i2 to { double, double }*
  %224 = getelementptr { double, double }, { double, double }* %223, i32 0, i32 0
  %225 = load double, double* %224, align 1
  %226 = getelementptr { double, double }, { double, double }* %223, i32 0, i32 1
  %227 = load double, double* %226, align 1
  call void @add_rectangle(%struct.Point* %206, %struct.Rectangle* %207, double %210, double %212, double %215, double %217, double %220, double %222, double %225, double %227)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %land.lhs.true.37, %if.end.34
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @intersect_x(double %a.coerce0, double %a.coerce1, double %b.coerce0, double %b.coerce1, double %c.coerce0, double %c.coerce1, %struct.Point* %i) #0 {
entry:
  %a = alloca %struct.Point, align 8
  %b = alloca %struct.Point, align 8
  %c = alloca %struct.Point, align 8
  %i.addr = alloca %struct.Point*, align 8
  %d = alloca %struct.Point, align 8
  %0 = bitcast %struct.Point* %a to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %a.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %a.coerce1, double* %2
  %3 = bitcast %struct.Point* %b to { double, double }*
  %4 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 0
  store double %b.coerce0, double* %4
  %5 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 1
  store double %b.coerce1, double* %5
  %6 = bitcast %struct.Point* %c to { double, double }*
  %7 = getelementptr { double, double }, { double, double }* %6, i32 0, i32 0
  store double %c.coerce0, double* %7
  %8 = getelementptr { double, double }, { double, double }* %6, i32 0, i32 1
  store double %c.coerce1, double* %8
  store %struct.Point* %i, %struct.Point** %i.addr, align 8
  %9 = bitcast %struct.Point* %d to i8*
  %10 = bitcast %struct.Point* %c to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 16, i32 8, i1 false)
  %y = getelementptr inbounds %struct.Point, %struct.Point* %d, i32 0, i32 1
  %11 = load double, double* %y, align 8
  %add = fadd double %11, 1.000000e+00
  store double %add, double* %y, align 8
  %12 = load %struct.Point*, %struct.Point** %i.addr, align 8
  %13 = bitcast %struct.Point* %a to { double, double }*
  %14 = getelementptr { double, double }, { double, double }* %13, i32 0, i32 0
  %15 = load double, double* %14, align 1
  %16 = getelementptr { double, double }, { double, double }* %13, i32 0, i32 1
  %17 = load double, double* %16, align 1
  %18 = bitcast %struct.Point* %b to { double, double }*
  %19 = getelementptr { double, double }, { double, double }* %18, i32 0, i32 0
  %20 = load double, double* %19, align 1
  %21 = getelementptr { double, double }, { double, double }* %18, i32 0, i32 1
  %22 = load double, double* %21, align 1
  %23 = bitcast %struct.Point* %c to { double, double }*
  %24 = getelementptr { double, double }, { double, double }* %23, i32 0, i32 0
  %25 = load double, double* %24, align 1
  %26 = getelementptr { double, double }, { double, double }* %23, i32 0, i32 1
  %27 = load double, double* %26, align 1
  %28 = bitcast %struct.Point* %d to { double, double }*
  %29 = getelementptr { double, double }, { double, double }* %28, i32 0, i32 0
  %30 = load double, double* %29, align 1
  %31 = getelementptr { double, double }, { double, double }* %28, i32 0, i32 1
  %32 = load double, double* %31, align 1
  %call = call i32 @intersect(double %15, double %17, double %20, double %22, double %25, double %27, double %30, double %32, %struct.Point* %12)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @intersect(double %a.coerce0, double %a.coerce1, double %b.coerce0, double %b.coerce1, double %c.coerce0, double %c.coerce1, double %d.coerce0, double %d.coerce1, %struct.Point* %i) #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca %struct.Point, align 8
  %b = alloca %struct.Point, align 8
  %c = alloca %struct.Point, align 8
  %d = alloca %struct.Point, align 8
  %i.addr = alloca %struct.Point*, align 8
  %a1 = alloca double, align 8
  %b1 = alloca double, align 8
  %c1 = alloca double, align 8
  %a2 = alloca double, align 8
  %b2 = alloca double, align 8
  %c2 = alloca double, align 8
  %det = alloca double, align 8
  %0 = bitcast %struct.Point* %a to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %a.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %a.coerce1, double* %2
  %3 = bitcast %struct.Point* %b to { double, double }*
  %4 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 0
  store double %b.coerce0, double* %4
  %5 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 1
  store double %b.coerce1, double* %5
  %6 = bitcast %struct.Point* %c to { double, double }*
  %7 = getelementptr { double, double }, { double, double }* %6, i32 0, i32 0
  store double %c.coerce0, double* %7
  %8 = getelementptr { double, double }, { double, double }* %6, i32 0, i32 1
  store double %c.coerce1, double* %8
  %9 = bitcast %struct.Point* %d to { double, double }*
  %10 = getelementptr { double, double }, { double, double }* %9, i32 0, i32 0
  store double %d.coerce0, double* %10
  %11 = getelementptr { double, double }, { double, double }* %9, i32 0, i32 1
  store double %d.coerce1, double* %11
  store %struct.Point* %i, %struct.Point** %i.addr, align 8
  %y = getelementptr inbounds %struct.Point, %struct.Point* %b, i32 0, i32 1
  %12 = load double, double* %y, align 8
  %y1 = getelementptr inbounds %struct.Point, %struct.Point* %a, i32 0, i32 1
  %13 = load double, double* %y1, align 8
  %sub = fsub double %12, %13
  store double %sub, double* %a1, align 8
  %x = getelementptr inbounds %struct.Point, %struct.Point* %a, i32 0, i32 0
  %14 = load double, double* %x, align 8
  %x2 = getelementptr inbounds %struct.Point, %struct.Point* %b, i32 0, i32 0
  %15 = load double, double* %x2, align 8
  %sub3 = fsub double %14, %15
  store double %sub3, double* %b1, align 8
  %16 = load double, double* %a1, align 8
  %x4 = getelementptr inbounds %struct.Point, %struct.Point* %a, i32 0, i32 0
  %17 = load double, double* %x4, align 8
  %mul = fmul double %16, %17
  %18 = load double, double* %b1, align 8
  %y5 = getelementptr inbounds %struct.Point, %struct.Point* %a, i32 0, i32 1
  %19 = load double, double* %y5, align 8
  %mul6 = fmul double %18, %19
  %add = fadd double %mul, %mul6
  store double %add, double* %c1, align 8
  %y7 = getelementptr inbounds %struct.Point, %struct.Point* %d, i32 0, i32 1
  %20 = load double, double* %y7, align 8
  %y8 = getelementptr inbounds %struct.Point, %struct.Point* %c, i32 0, i32 1
  %21 = load double, double* %y8, align 8
  %sub9 = fsub double %20, %21
  store double %sub9, double* %a2, align 8
  %x10 = getelementptr inbounds %struct.Point, %struct.Point* %c, i32 0, i32 0
  %22 = load double, double* %x10, align 8
  %x11 = getelementptr inbounds %struct.Point, %struct.Point* %d, i32 0, i32 0
  %23 = load double, double* %x11, align 8
  %sub12 = fsub double %22, %23
  store double %sub12, double* %b2, align 8
  %24 = load double, double* %a2, align 8
  %x13 = getelementptr inbounds %struct.Point, %struct.Point* %c, i32 0, i32 0
  %25 = load double, double* %x13, align 8
  %mul14 = fmul double %24, %25
  %26 = load double, double* %b2, align 8
  %y15 = getelementptr inbounds %struct.Point, %struct.Point* %c, i32 0, i32 1
  %27 = load double, double* %y15, align 8
  %mul16 = fmul double %26, %27
  %add17 = fadd double %mul14, %mul16
  store double %add17, double* %c2, align 8
  %28 = load double, double* %a1, align 8
  %29 = load double, double* %b2, align 8
  %mul18 = fmul double %28, %29
  %30 = load double, double* %a2, align 8
  %31 = load double, double* %b1, align 8
  %mul19 = fmul double %30, %31
  %sub20 = fsub double %mul18, %mul19
  store double %sub20, double* %det, align 8
  %32 = load double, double* %det, align 8
  %cmp = fcmp oeq double %32, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %33 = load double, double* %b2, align 8
  %34 = load double, double* %c1, align 8
  %mul21 = fmul double %33, %34
  %35 = load double, double* %b1, align 8
  %36 = load double, double* %c2, align 8
  %mul22 = fmul double %35, %36
  %sub23 = fsub double %mul21, %mul22
  %37 = load double, double* %det, align 8
  %div = fdiv double %sub23, %37
  %38 = load %struct.Point*, %struct.Point** %i.addr, align 8
  %x24 = getelementptr inbounds %struct.Point, %struct.Point* %38, i32 0, i32 0
  store double %div, double* %x24, align 8
  %39 = load double, double* %a1, align 8
  %40 = load double, double* %c2, align 8
  %mul25 = fmul double %39, %40
  %41 = load double, double* %a2, align 8
  %42 = load double, double* %c1, align 8
  %mul26 = fmul double %41, %42
  %sub27 = fsub double %mul25, %mul26
  %43 = load double, double* %det, align 8
  %div28 = fdiv double %sub27, %43
  %44 = load %struct.Point*, %struct.Point** %i.addr, align 8
  %y29 = getelementptr inbounds %struct.Point, %struct.Point* %44, i32 0, i32 1
  store double %div28, double* %y29, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %45 = load i32, i32* %retval
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define internal void @add_rectangle(%struct.Point* %points, %struct.Rectangle* %r, double %a.coerce0, double %a.coerce1, double %b.coerce0, double %b.coerce1, double %c.coerce0, double %c.coerce1, double %d.coerce0, double %d.coerce1) #0 {
entry:
  %a = alloca %struct.Point, align 8
  %b = alloca %struct.Point, align 8
  %c = alloca %struct.Point, align 8
  %d = alloca %struct.Point, align 8
  %points.addr = alloca %struct.Point*, align 8
  %r.addr = alloca %struct.Rectangle*, align 8
  %width = alloca double, align 8
  %height = alloca double, align 8
  %minx = alloca double, align 8
  %maxx = alloca double, align 8
  %miny = alloca double, align 8
  %maxy = alloca double, align 8
  %area = alloca double, align 8
  %0 = bitcast %struct.Point* %a to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %a.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %a.coerce1, double* %2
  %3 = bitcast %struct.Point* %b to { double, double }*
  %4 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 0
  store double %b.coerce0, double* %4
  %5 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 1
  store double %b.coerce1, double* %5
  %6 = bitcast %struct.Point* %c to { double, double }*
  %7 = getelementptr { double, double }, { double, double }* %6, i32 0, i32 0
  store double %c.coerce0, double* %7
  %8 = getelementptr { double, double }, { double, double }* %6, i32 0, i32 1
  store double %c.coerce1, double* %8
  %9 = bitcast %struct.Point* %d to { double, double }*
  %10 = getelementptr { double, double }, { double, double }* %9, i32 0, i32 0
  store double %d.coerce0, double* %10
  %11 = getelementptr { double, double }, { double, double }* %9, i32 0, i32 1
  store double %d.coerce1, double* %11
  store %struct.Point* %points, %struct.Point** %points.addr, align 8
  store %struct.Rectangle* %r, %struct.Rectangle** %r.addr, align 8
  %x = getelementptr inbounds %struct.Point, %struct.Point* %a, i32 0, i32 0
  %12 = load double, double* %x, align 8
  %x1 = getelementptr inbounds %struct.Point, %struct.Point* %b, i32 0, i32 0
  %13 = load double, double* %x1, align 8
  %cmp = fcmp olt double %12, %13
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %x2 = getelementptr inbounds %struct.Point, %struct.Point* %a, i32 0, i32 0
  %14 = load double, double* %x2, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %x3 = getelementptr inbounds %struct.Point, %struct.Point* %b, i32 0, i32 0
  %15 = load double, double* %x3, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %14, %cond.true ], [ %15, %cond.false ]
  %x4 = getelementptr inbounds %struct.Point, %struct.Point* %c, i32 0, i32 0
  %16 = load double, double* %x4, align 8
  %x5 = getelementptr inbounds %struct.Point, %struct.Point* %d, i32 0, i32 0
  %17 = load double, double* %x5, align 8
  %cmp6 = fcmp olt double %16, %17
  br i1 %cmp6, label %cond.true.7, label %cond.false.9

cond.true.7:                                      ; preds = %cond.end
  %x8 = getelementptr inbounds %struct.Point, %struct.Point* %c, i32 0, i32 0
  %18 = load double, double* %x8, align 8
  br label %cond.end.11

cond.false.9:                                     ; preds = %cond.end
  %x10 = getelementptr inbounds %struct.Point, %struct.Point* %d, i32 0, i32 0
  %19 = load double, double* %x10, align 8
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.false.9, %cond.true.7
  %cond12 = phi double [ %18, %cond.true.7 ], [ %19, %cond.false.9 ]
  %cmp13 = fcmp olt double %cond, %cond12
  br i1 %cmp13, label %cond.true.14, label %cond.false.24

cond.true.14:                                     ; preds = %cond.end.11
  %x15 = getelementptr inbounds %struct.Point, %struct.Point* %a, i32 0, i32 0
  %20 = load double, double* %x15, align 8
  %x16 = getelementptr inbounds %struct.Point, %struct.Point* %b, i32 0, i32 0
  %21 = load double, double* %x16, align 8
  %cmp17 = fcmp olt double %20, %21
  br i1 %cmp17, label %cond.true.18, label %cond.false.20

cond.true.18:                                     ; preds = %cond.true.14
  %x19 = getelementptr inbounds %struct.Point, %struct.Point* %a, i32 0, i32 0
  %22 = load double, double* %x19, align 8
  br label %cond.end.22

cond.false.20:                                    ; preds = %cond.true.14
  %x21 = getelementptr inbounds %struct.Point, %struct.Point* %b, i32 0, i32 0
  %23 = load double, double* %x21, align 8
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.20, %cond.true.18
  %cond23 = phi double [ %22, %cond.true.18 ], [ %23, %cond.false.20 ]
  br label %cond.end.34

cond.false.24:                                    ; preds = %cond.end.11
  %x25 = getelementptr inbounds %struct.Point, %struct.Point* %c, i32 0, i32 0
  %24 = load double, double* %x25, align 8
  %x26 = getelementptr inbounds %struct.Point, %struct.Point* %d, i32 0, i32 0
  %25 = load double, double* %x26, align 8
  %cmp27 = fcmp olt double %24, %25
  br i1 %cmp27, label %cond.true.28, label %cond.false.30

cond.true.28:                                     ; preds = %cond.false.24
  %x29 = getelementptr inbounds %struct.Point, %struct.Point* %c, i32 0, i32 0
  %26 = load double, double* %x29, align 8
  br label %cond.end.32

cond.false.30:                                    ; preds = %cond.false.24
  %x31 = getelementptr inbounds %struct.Point, %struct.Point* %d, i32 0, i32 0
  %27 = load double, double* %x31, align 8
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.30, %cond.true.28
  %cond33 = phi double [ %26, %cond.true.28 ], [ %27, %cond.false.30 ]
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.end.32, %cond.end.22
  %cond35 = phi double [ %cond23, %cond.end.22 ], [ %cond33, %cond.end.32 ]
  store double %cond35, double* %minx, align 8
  %x36 = getelementptr inbounds %struct.Point, %struct.Point* %a, i32 0, i32 0
  %28 = load double, double* %x36, align 8
  %x37 = getelementptr inbounds %struct.Point, %struct.Point* %b, i32 0, i32 0
  %29 = load double, double* %x37, align 8
  %cmp38 = fcmp ogt double %28, %29
  br i1 %cmp38, label %cond.true.39, label %cond.false.41

cond.true.39:                                     ; preds = %cond.end.34
  %x40 = getelementptr inbounds %struct.Point, %struct.Point* %a, i32 0, i32 0
  %30 = load double, double* %x40, align 8
  br label %cond.end.43

cond.false.41:                                    ; preds = %cond.end.34
  %x42 = getelementptr inbounds %struct.Point, %struct.Point* %b, i32 0, i32 0
  %31 = load double, double* %x42, align 8
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.41, %cond.true.39
  %cond44 = phi double [ %30, %cond.true.39 ], [ %31, %cond.false.41 ]
  %x45 = getelementptr inbounds %struct.Point, %struct.Point* %c, i32 0, i32 0
  %32 = load double, double* %x45, align 8
  %x46 = getelementptr inbounds %struct.Point, %struct.Point* %d, i32 0, i32 0
  %33 = load double, double* %x46, align 8
  %cmp47 = fcmp ogt double %32, %33
  br i1 %cmp47, label %cond.true.48, label %cond.false.50

cond.true.48:                                     ; preds = %cond.end.43
  %x49 = getelementptr inbounds %struct.Point, %struct.Point* %c, i32 0, i32 0
  %34 = load double, double* %x49, align 8
  br label %cond.end.52

cond.false.50:                                    ; preds = %cond.end.43
  %x51 = getelementptr inbounds %struct.Point, %struct.Point* %d, i32 0, i32 0
  %35 = load double, double* %x51, align 8
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.50, %cond.true.48
  %cond53 = phi double [ %34, %cond.true.48 ], [ %35, %cond.false.50 ]
  %cmp54 = fcmp ogt double %cond44, %cond53
  br i1 %cmp54, label %cond.true.55, label %cond.false.65

cond.true.55:                                     ; preds = %cond.end.52
  %x56 = getelementptr inbounds %struct.Point, %struct.Point* %a, i32 0, i32 0
  %36 = load double, double* %x56, align 8
  %x57 = getelementptr inbounds %struct.Point, %struct.Point* %b, i32 0, i32 0
  %37 = load double, double* %x57, align 8
  %cmp58 = fcmp ogt double %36, %37
  br i1 %cmp58, label %cond.true.59, label %cond.false.61

cond.true.59:                                     ; preds = %cond.true.55
  %x60 = getelementptr inbounds %struct.Point, %struct.Point* %a, i32 0, i32 0
  %38 = load double, double* %x60, align 8
  br label %cond.end.63

cond.false.61:                                    ; preds = %cond.true.55
  %x62 = getelementptr inbounds %struct.Point, %struct.Point* %b, i32 0, i32 0
  %39 = load double, double* %x62, align 8
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.61, %cond.true.59
  %cond64 = phi double [ %38, %cond.true.59 ], [ %39, %cond.false.61 ]
  br label %cond.end.75

cond.false.65:                                    ; preds = %cond.end.52
  %x66 = getelementptr inbounds %struct.Point, %struct.Point* %c, i32 0, i32 0
  %40 = load double, double* %x66, align 8
  %x67 = getelementptr inbounds %struct.Point, %struct.Point* %d, i32 0, i32 0
  %41 = load double, double* %x67, align 8
  %cmp68 = fcmp ogt double %40, %41
  br i1 %cmp68, label %cond.true.69, label %cond.false.71

cond.true.69:                                     ; preds = %cond.false.65
  %x70 = getelementptr inbounds %struct.Point, %struct.Point* %c, i32 0, i32 0
  %42 = load double, double* %x70, align 8
  br label %cond.end.73

cond.false.71:                                    ; preds = %cond.false.65
  %x72 = getelementptr inbounds %struct.Point, %struct.Point* %d, i32 0, i32 0
  %43 = load double, double* %x72, align 8
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.false.71, %cond.true.69
  %cond74 = phi double [ %42, %cond.true.69 ], [ %43, %cond.false.71 ]
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.end.73, %cond.end.63
  %cond76 = phi double [ %cond64, %cond.end.63 ], [ %cond74, %cond.end.73 ]
  store double %cond76, double* %maxx, align 8
  %y = getelementptr inbounds %struct.Point, %struct.Point* %a, i32 0, i32 1
  %44 = load double, double* %y, align 8
  %y77 = getelementptr inbounds %struct.Point, %struct.Point* %b, i32 0, i32 1
  %45 = load double, double* %y77, align 8
  %cmp78 = fcmp olt double %44, %45
  br i1 %cmp78, label %cond.true.79, label %cond.false.81

cond.true.79:                                     ; preds = %cond.end.75
  %y80 = getelementptr inbounds %struct.Point, %struct.Point* %a, i32 0, i32 1
  %46 = load double, double* %y80, align 8
  br label %cond.end.83

cond.false.81:                                    ; preds = %cond.end.75
  %y82 = getelementptr inbounds %struct.Point, %struct.Point* %b, i32 0, i32 1
  %47 = load double, double* %y82, align 8
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.false.81, %cond.true.79
  %cond84 = phi double [ %46, %cond.true.79 ], [ %47, %cond.false.81 ]
  %y85 = getelementptr inbounds %struct.Point, %struct.Point* %c, i32 0, i32 1
  %48 = load double, double* %y85, align 8
  %y86 = getelementptr inbounds %struct.Point, %struct.Point* %d, i32 0, i32 1
  %49 = load double, double* %y86, align 8
  %cmp87 = fcmp olt double %48, %49
  br i1 %cmp87, label %cond.true.88, label %cond.false.90

cond.true.88:                                     ; preds = %cond.end.83
  %y89 = getelementptr inbounds %struct.Point, %struct.Point* %c, i32 0, i32 1
  %50 = load double, double* %y89, align 8
  br label %cond.end.92

cond.false.90:                                    ; preds = %cond.end.83
  %y91 = getelementptr inbounds %struct.Point, %struct.Point* %d, i32 0, i32 1
  %51 = load double, double* %y91, align 8
  br label %cond.end.92

cond.end.92:                                      ; preds = %cond.false.90, %cond.true.88
  %cond93 = phi double [ %50, %cond.true.88 ], [ %51, %cond.false.90 ]
  %cmp94 = fcmp olt double %cond84, %cond93
  br i1 %cmp94, label %cond.true.95, label %cond.false.105

cond.true.95:                                     ; preds = %cond.end.92
  %y96 = getelementptr inbounds %struct.Point, %struct.Point* %a, i32 0, i32 1
  %52 = load double, double* %y96, align 8
  %y97 = getelementptr inbounds %struct.Point, %struct.Point* %b, i32 0, i32 1
  %53 = load double, double* %y97, align 8
  %cmp98 = fcmp olt double %52, %53
  br i1 %cmp98, label %cond.true.99, label %cond.false.101

cond.true.99:                                     ; preds = %cond.true.95
  %y100 = getelementptr inbounds %struct.Point, %struct.Point* %a, i32 0, i32 1
  %54 = load double, double* %y100, align 8
  br label %cond.end.103

cond.false.101:                                   ; preds = %cond.true.95
  %y102 = getelementptr inbounds %struct.Point, %struct.Point* %b, i32 0, i32 1
  %55 = load double, double* %y102, align 8
  br label %cond.end.103

cond.end.103:                                     ; preds = %cond.false.101, %cond.true.99
  %cond104 = phi double [ %54, %cond.true.99 ], [ %55, %cond.false.101 ]
  br label %cond.end.115

cond.false.105:                                   ; preds = %cond.end.92
  %y106 = getelementptr inbounds %struct.Point, %struct.Point* %c, i32 0, i32 1
  %56 = load double, double* %y106, align 8
  %y107 = getelementptr inbounds %struct.Point, %struct.Point* %d, i32 0, i32 1
  %57 = load double, double* %y107, align 8
  %cmp108 = fcmp olt double %56, %57
  br i1 %cmp108, label %cond.true.109, label %cond.false.111

cond.true.109:                                    ; preds = %cond.false.105
  %y110 = getelementptr inbounds %struct.Point, %struct.Point* %c, i32 0, i32 1
  %58 = load double, double* %y110, align 8
  br label %cond.end.113

cond.false.111:                                   ; preds = %cond.false.105
  %y112 = getelementptr inbounds %struct.Point, %struct.Point* %d, i32 0, i32 1
  %59 = load double, double* %y112, align 8
  br label %cond.end.113

cond.end.113:                                     ; preds = %cond.false.111, %cond.true.109
  %cond114 = phi double [ %58, %cond.true.109 ], [ %59, %cond.false.111 ]
  br label %cond.end.115

cond.end.115:                                     ; preds = %cond.end.113, %cond.end.103
  %cond116 = phi double [ %cond104, %cond.end.103 ], [ %cond114, %cond.end.113 ]
  store double %cond116, double* %miny, align 8
  %y117 = getelementptr inbounds %struct.Point, %struct.Point* %a, i32 0, i32 1
  %60 = load double, double* %y117, align 8
  %y118 = getelementptr inbounds %struct.Point, %struct.Point* %b, i32 0, i32 1
  %61 = load double, double* %y118, align 8
  %cmp119 = fcmp ogt double %60, %61
  br i1 %cmp119, label %cond.true.120, label %cond.false.122

cond.true.120:                                    ; preds = %cond.end.115
  %y121 = getelementptr inbounds %struct.Point, %struct.Point* %a, i32 0, i32 1
  %62 = load double, double* %y121, align 8
  br label %cond.end.124

cond.false.122:                                   ; preds = %cond.end.115
  %y123 = getelementptr inbounds %struct.Point, %struct.Point* %b, i32 0, i32 1
  %63 = load double, double* %y123, align 8
  br label %cond.end.124

cond.end.124:                                     ; preds = %cond.false.122, %cond.true.120
  %cond125 = phi double [ %62, %cond.true.120 ], [ %63, %cond.false.122 ]
  %y126 = getelementptr inbounds %struct.Point, %struct.Point* %c, i32 0, i32 1
  %64 = load double, double* %y126, align 8
  %y127 = getelementptr inbounds %struct.Point, %struct.Point* %d, i32 0, i32 1
  %65 = load double, double* %y127, align 8
  %cmp128 = fcmp ogt double %64, %65
  br i1 %cmp128, label %cond.true.129, label %cond.false.131

cond.true.129:                                    ; preds = %cond.end.124
  %y130 = getelementptr inbounds %struct.Point, %struct.Point* %c, i32 0, i32 1
  %66 = load double, double* %y130, align 8
  br label %cond.end.133

cond.false.131:                                   ; preds = %cond.end.124
  %y132 = getelementptr inbounds %struct.Point, %struct.Point* %d, i32 0, i32 1
  %67 = load double, double* %y132, align 8
  br label %cond.end.133

cond.end.133:                                     ; preds = %cond.false.131, %cond.true.129
  %cond134 = phi double [ %66, %cond.true.129 ], [ %67, %cond.false.131 ]
  %cmp135 = fcmp ogt double %cond125, %cond134
  br i1 %cmp135, label %cond.true.136, label %cond.false.146

cond.true.136:                                    ; preds = %cond.end.133
  %y137 = getelementptr inbounds %struct.Point, %struct.Point* %a, i32 0, i32 1
  %68 = load double, double* %y137, align 8
  %y138 = getelementptr inbounds %struct.Point, %struct.Point* %b, i32 0, i32 1
  %69 = load double, double* %y138, align 8
  %cmp139 = fcmp ogt double %68, %69
  br i1 %cmp139, label %cond.true.140, label %cond.false.142

cond.true.140:                                    ; preds = %cond.true.136
  %y141 = getelementptr inbounds %struct.Point, %struct.Point* %a, i32 0, i32 1
  %70 = load double, double* %y141, align 8
  br label %cond.end.144

cond.false.142:                                   ; preds = %cond.true.136
  %y143 = getelementptr inbounds %struct.Point, %struct.Point* %b, i32 0, i32 1
  %71 = load double, double* %y143, align 8
  br label %cond.end.144

cond.end.144:                                     ; preds = %cond.false.142, %cond.true.140
  %cond145 = phi double [ %70, %cond.true.140 ], [ %71, %cond.false.142 ]
  br label %cond.end.156

cond.false.146:                                   ; preds = %cond.end.133
  %y147 = getelementptr inbounds %struct.Point, %struct.Point* %c, i32 0, i32 1
  %72 = load double, double* %y147, align 8
  %y148 = getelementptr inbounds %struct.Point, %struct.Point* %d, i32 0, i32 1
  %73 = load double, double* %y148, align 8
  %cmp149 = fcmp ogt double %72, %73
  br i1 %cmp149, label %cond.true.150, label %cond.false.152

cond.true.150:                                    ; preds = %cond.false.146
  %y151 = getelementptr inbounds %struct.Point, %struct.Point* %c, i32 0, i32 1
  %74 = load double, double* %y151, align 8
  br label %cond.end.154

cond.false.152:                                   ; preds = %cond.false.146
  %y153 = getelementptr inbounds %struct.Point, %struct.Point* %d, i32 0, i32 1
  %75 = load double, double* %y153, align 8
  br label %cond.end.154

cond.end.154:                                     ; preds = %cond.false.152, %cond.true.150
  %cond155 = phi double [ %74, %cond.true.150 ], [ %75, %cond.false.152 ]
  br label %cond.end.156

cond.end.156:                                     ; preds = %cond.end.154, %cond.end.144
  %cond157 = phi double [ %cond145, %cond.end.144 ], [ %cond155, %cond.end.154 ]
  store double %cond157, double* %maxy, align 8
  %76 = load double, double* %minx, align 8
  %x158 = getelementptr inbounds %struct.Point, %struct.Point* %a, i32 0, i32 0
  store double %76, double* %x158, align 8
  %77 = load double, double* %miny, align 8
  %y159 = getelementptr inbounds %struct.Point, %struct.Point* %a, i32 0, i32 1
  store double %77, double* %y159, align 8
  %78 = load double, double* %maxx, align 8
  %x160 = getelementptr inbounds %struct.Point, %struct.Point* %b, i32 0, i32 0
  store double %78, double* %x160, align 8
  %79 = load double, double* %miny, align 8
  %y161 = getelementptr inbounds %struct.Point, %struct.Point* %b, i32 0, i32 1
  store double %79, double* %y161, align 8
  %80 = load double, double* %maxx, align 8
  %x162 = getelementptr inbounds %struct.Point, %struct.Point* %c, i32 0, i32 0
  store double %80, double* %x162, align 8
  %81 = load double, double* %maxy, align 8
  %y163 = getelementptr inbounds %struct.Point, %struct.Point* %c, i32 0, i32 1
  store double %81, double* %y163, align 8
  %82 = load double, double* %minx, align 8
  %x164 = getelementptr inbounds %struct.Point, %struct.Point* %d, i32 0, i32 0
  store double %82, double* %x164, align 8
  %83 = load double, double* %maxy, align 8
  %y165 = getelementptr inbounds %struct.Point, %struct.Point* %d, i32 0, i32 1
  store double %83, double* %y165, align 8
  %84 = load double, double* %maxx, align 8
  %85 = load double, double* %minx, align 8
  %sub = fsub double %84, %85
  store double %sub, double* %width, align 8
  %86 = load double, double* %maxy, align 8
  %87 = load double, double* %miny, align 8
  %sub166 = fsub double %86, %87
  store double %sub166, double* %height, align 8
  %88 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %89 = bitcast %struct.Point* %a to { double, double }*
  %90 = getelementptr { double, double }, { double, double }* %89, i32 0, i32 0
  %91 = load double, double* %90, align 1
  %92 = getelementptr { double, double }, { double, double }* %89, i32 0, i32 1
  %93 = load double, double* %92, align 1
  %call = call i32 @in_poly(%struct.Point* %88, double %91, double %93)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.203

land.lhs.true:                                    ; preds = %cond.end.156
  %94 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %95 = bitcast %struct.Point* %b to { double, double }*
  %96 = getelementptr { double, double }, { double, double }* %95, i32 0, i32 0
  %97 = load double, double* %96, align 1
  %98 = getelementptr { double, double }, { double, double }* %95, i32 0, i32 1
  %99 = load double, double* %98, align 1
  %call167 = call i32 @in_poly(%struct.Point* %94, double %97, double %99)
  %tobool168 = icmp ne i32 %call167, 0
  br i1 %tobool168, label %land.lhs.true.169, label %if.end.203

land.lhs.true.169:                                ; preds = %land.lhs.true
  %100 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %101 = bitcast %struct.Point* %c to { double, double }*
  %102 = getelementptr { double, double }, { double, double }* %101, i32 0, i32 0
  %103 = load double, double* %102, align 1
  %104 = getelementptr { double, double }, { double, double }* %101, i32 0, i32 1
  %105 = load double, double* %104, align 1
  %call170 = call i32 @in_poly(%struct.Point* %100, double %103, double %105)
  %tobool171 = icmp ne i32 %call170, 0
  br i1 %tobool171, label %land.lhs.true.172, label %if.end.203

land.lhs.true.172:                                ; preds = %land.lhs.true.169
  %106 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %107 = bitcast %struct.Point* %d to { double, double }*
  %108 = getelementptr { double, double }, { double, double }* %107, i32 0, i32 0
  %109 = load double, double* %108, align 1
  %110 = getelementptr { double, double }, { double, double }* %107, i32 0, i32 1
  %111 = load double, double* %110, align 1
  %call173 = call i32 @in_poly(%struct.Point* %106, double %109, double %111)
  %tobool174 = icmp ne i32 %call173, 0
  br i1 %tobool174, label %if.then, label %if.end.203

if.then:                                          ; preds = %land.lhs.true.172
  %112 = load double, double* %width, align 8
  %113 = load double, double* %height, align 8
  %mul = fmul double %112, %113
  store double %mul, double* %area, align 8
  %114 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %area175 = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %114, i32 0, i32 4
  %115 = load double, double* %area175, align 8
  %116 = load double, double* %area, align 8
  %cmp176 = fcmp ole double %115, %116
  br i1 %cmp176, label %if.then.177, label %if.end

if.then.177:                                      ; preds = %if.then
  %x178 = getelementptr inbounds %struct.Point, %struct.Point* %a, i32 0, i32 0
  %117 = load double, double* %x178, align 8
  %118 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %a179 = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %118, i32 0, i32 0
  %x180 = getelementptr inbounds %struct.Point, %struct.Point* %a179, i32 0, i32 0
  store double %117, double* %x180, align 8
  %y181 = getelementptr inbounds %struct.Point, %struct.Point* %a, i32 0, i32 1
  %119 = load double, double* %y181, align 8
  %120 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %a182 = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %120, i32 0, i32 0
  %y183 = getelementptr inbounds %struct.Point, %struct.Point* %a182, i32 0, i32 1
  store double %119, double* %y183, align 8
  %x184 = getelementptr inbounds %struct.Point, %struct.Point* %b, i32 0, i32 0
  %121 = load double, double* %x184, align 8
  %122 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %b185 = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %122, i32 0, i32 1
  %x186 = getelementptr inbounds %struct.Point, %struct.Point* %b185, i32 0, i32 0
  store double %121, double* %x186, align 8
  %y187 = getelementptr inbounds %struct.Point, %struct.Point* %b, i32 0, i32 1
  %123 = load double, double* %y187, align 8
  %124 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %b188 = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %124, i32 0, i32 1
  %y189 = getelementptr inbounds %struct.Point, %struct.Point* %b188, i32 0, i32 1
  store double %123, double* %y189, align 8
  %x190 = getelementptr inbounds %struct.Point, %struct.Point* %c, i32 0, i32 0
  %125 = load double, double* %x190, align 8
  %126 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %c191 = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %126, i32 0, i32 2
  %x192 = getelementptr inbounds %struct.Point, %struct.Point* %c191, i32 0, i32 0
  store double %125, double* %x192, align 8
  %y193 = getelementptr inbounds %struct.Point, %struct.Point* %c, i32 0, i32 1
  %127 = load double, double* %y193, align 8
  %128 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %c194 = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %128, i32 0, i32 2
  %y195 = getelementptr inbounds %struct.Point, %struct.Point* %c194, i32 0, i32 1
  store double %127, double* %y195, align 8
  %x196 = getelementptr inbounds %struct.Point, %struct.Point* %d, i32 0, i32 0
  %129 = load double, double* %x196, align 8
  %130 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %d197 = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %130, i32 0, i32 3
  %x198 = getelementptr inbounds %struct.Point, %struct.Point* %d197, i32 0, i32 0
  store double %129, double* %x198, align 8
  %y199 = getelementptr inbounds %struct.Point, %struct.Point* %d, i32 0, i32 1
  %131 = load double, double* %y199, align 8
  %132 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %d200 = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %132, i32 0, i32 3
  %y201 = getelementptr inbounds %struct.Point, %struct.Point* %d200, i32 0, i32 1
  store double %131, double* %y201, align 8
  %133 = load double, double* %area, align 8
  %134 = load %struct.Rectangle*, %struct.Rectangle** %r.addr, align 8
  %area202 = getelementptr inbounds %struct.Rectangle, %struct.Rectangle* %134, i32 0, i32 4
  store double %133, double* %area202, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.177, %if.then
  br label %if.end.203

if.end.203:                                       ; preds = %if.end, %land.lhs.true.172, %land.lhs.true.169, %land.lhs.true, %cond.end.156
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @intersect_y(double %a.coerce0, double %a.coerce1, double %b.coerce0, double %b.coerce1, double %c.coerce0, double %c.coerce1, %struct.Point* %i) #0 {
entry:
  %a = alloca %struct.Point, align 8
  %b = alloca %struct.Point, align 8
  %c = alloca %struct.Point, align 8
  %i.addr = alloca %struct.Point*, align 8
  %d = alloca %struct.Point, align 8
  %0 = bitcast %struct.Point* %a to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %a.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %a.coerce1, double* %2
  %3 = bitcast %struct.Point* %b to { double, double }*
  %4 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 0
  store double %b.coerce0, double* %4
  %5 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 1
  store double %b.coerce1, double* %5
  %6 = bitcast %struct.Point* %c to { double, double }*
  %7 = getelementptr { double, double }, { double, double }* %6, i32 0, i32 0
  store double %c.coerce0, double* %7
  %8 = getelementptr { double, double }, { double, double }* %6, i32 0, i32 1
  store double %c.coerce1, double* %8
  store %struct.Point* %i, %struct.Point** %i.addr, align 8
  %9 = bitcast %struct.Point* %d to i8*
  %10 = bitcast %struct.Point* %c to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 16, i32 8, i1 false)
  %x = getelementptr inbounds %struct.Point, %struct.Point* %d, i32 0, i32 0
  %11 = load double, double* %x, align 8
  %add = fadd double %11, 1.000000e+00
  store double %add, double* %x, align 8
  %12 = load %struct.Point*, %struct.Point** %i.addr, align 8
  %13 = bitcast %struct.Point* %a to { double, double }*
  %14 = getelementptr { double, double }, { double, double }* %13, i32 0, i32 0
  %15 = load double, double* %14, align 1
  %16 = getelementptr { double, double }, { double, double }* %13, i32 0, i32 1
  %17 = load double, double* %16, align 1
  %18 = bitcast %struct.Point* %b to { double, double }*
  %19 = getelementptr { double, double }, { double, double }* %18, i32 0, i32 0
  %20 = load double, double* %19, align 1
  %21 = getelementptr { double, double }, { double, double }* %18, i32 0, i32 1
  %22 = load double, double* %21, align 1
  %23 = bitcast %struct.Point* %c to { double, double }*
  %24 = getelementptr { double, double }, { double, double }* %23, i32 0, i32 0
  %25 = load double, double* %24, align 1
  %26 = getelementptr { double, double }, { double, double }* %23, i32 0, i32 1
  %27 = load double, double* %26, align 1
  %28 = bitcast %struct.Point* %d to { double, double }*
  %29 = getelementptr { double, double }, { double, double }* %28, i32 0, i32 0
  %30 = load double, double* %29, align 1
  %31 = getelementptr { double, double }, { double, double }* %28, i32 0, i32 1
  %32 = load double, double* %31, align 1
  %call = call i32 @intersect(double %15, double %17, double %20, double %22, double %25, double %27, double %30, double %32, %struct.Point* %12)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @in_poly(%struct.Point* %points, double %p.coerce0, double %p.coerce1) #0 {
entry:
  %retval = alloca i32, align 4
  %p = alloca %struct.Point, align 8
  %points.addr = alloca %struct.Point*, align 8
  %p1 = alloca %struct.Point, align 8
  %p2 = alloca %struct.Point, align 8
  %counter = alloca i32, align 4
  %i = alloca i32, align 4
  %xinters = alloca double, align 8
  %0 = bitcast %struct.Point* %p to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %p.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %p.coerce1, double* %2
  store %struct.Point* %points, %struct.Point** %points.addr, align 8
  store i32 0, i32* %counter, align 4
  %3 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %arrayidx = getelementptr inbounds %struct.Point, %struct.Point* %3, i64 0
  %4 = bitcast %struct.Point* %p1 to i8*
  %5 = bitcast %struct.Point* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 16, i32 8, i1 false)
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %6, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %rem = srem i32 %7, 4
  %idxprom = sext i32 %rem to i64
  %8 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %arrayidx1 = getelementptr inbounds %struct.Point, %struct.Point* %8, i64 %idxprom
  %9 = bitcast %struct.Point* %p2 to i8*
  %10 = bitcast %struct.Point* %arrayidx1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 16, i32 8, i1 false)
  %y = getelementptr inbounds %struct.Point, %struct.Point* %p, i32 0, i32 1
  %11 = load double, double* %y, align 8
  %y2 = getelementptr inbounds %struct.Point, %struct.Point* %p1, i32 0, i32 1
  %12 = load double, double* %y2, align 8
  %y3 = getelementptr inbounds %struct.Point, %struct.Point* %p2, i32 0, i32 1
  %13 = load double, double* %y3, align 8
  %cmp4 = fcmp olt double %12, %13
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %y5 = getelementptr inbounds %struct.Point, %struct.Point* %p1, i32 0, i32 1
  %14 = load double, double* %y5, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %y6 = getelementptr inbounds %struct.Point, %struct.Point* %p2, i32 0, i32 1
  %15 = load double, double* %y6, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %14, %cond.true ], [ %15, %cond.false ]
  %cmp7 = fcmp ogt double %11, %cond
  br i1 %cmp7, label %if.then, label %if.end.53

if.then:                                          ; preds = %cond.end
  %y8 = getelementptr inbounds %struct.Point, %struct.Point* %p, i32 0, i32 1
  %16 = load double, double* %y8, align 8
  %y9 = getelementptr inbounds %struct.Point, %struct.Point* %p1, i32 0, i32 1
  %17 = load double, double* %y9, align 8
  %y10 = getelementptr inbounds %struct.Point, %struct.Point* %p2, i32 0, i32 1
  %18 = load double, double* %y10, align 8
  %cmp11 = fcmp ogt double %17, %18
  br i1 %cmp11, label %cond.true.12, label %cond.false.14

cond.true.12:                                     ; preds = %if.then
  %y13 = getelementptr inbounds %struct.Point, %struct.Point* %p1, i32 0, i32 1
  %19 = load double, double* %y13, align 8
  br label %cond.end.16

cond.false.14:                                    ; preds = %if.then
  %y15 = getelementptr inbounds %struct.Point, %struct.Point* %p2, i32 0, i32 1
  %20 = load double, double* %y15, align 8
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.14, %cond.true.12
  %cond17 = phi double [ %19, %cond.true.12 ], [ %20, %cond.false.14 ]
  %cmp18 = fcmp ole double %16, %cond17
  br i1 %cmp18, label %if.then.19, label %if.end.52

if.then.19:                                       ; preds = %cond.end.16
  %x = getelementptr inbounds %struct.Point, %struct.Point* %p, i32 0, i32 0
  %21 = load double, double* %x, align 8
  %x20 = getelementptr inbounds %struct.Point, %struct.Point* %p1, i32 0, i32 0
  %22 = load double, double* %x20, align 8
  %x21 = getelementptr inbounds %struct.Point, %struct.Point* %p2, i32 0, i32 0
  %23 = load double, double* %x21, align 8
  %cmp22 = fcmp ogt double %22, %23
  br i1 %cmp22, label %cond.true.23, label %cond.false.25

cond.true.23:                                     ; preds = %if.then.19
  %x24 = getelementptr inbounds %struct.Point, %struct.Point* %p1, i32 0, i32 0
  %24 = load double, double* %x24, align 8
  br label %cond.end.27

cond.false.25:                                    ; preds = %if.then.19
  %x26 = getelementptr inbounds %struct.Point, %struct.Point* %p2, i32 0, i32 0
  %25 = load double, double* %x26, align 8
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.25, %cond.true.23
  %cond28 = phi double [ %24, %cond.true.23 ], [ %25, %cond.false.25 ]
  %cmp29 = fcmp ole double %21, %cond28
  br i1 %cmp29, label %if.then.30, label %if.end.51

if.then.30:                                       ; preds = %cond.end.27
  %y31 = getelementptr inbounds %struct.Point, %struct.Point* %p1, i32 0, i32 1
  %26 = load double, double* %y31, align 8
  %y32 = getelementptr inbounds %struct.Point, %struct.Point* %p2, i32 0, i32 1
  %27 = load double, double* %y32, align 8
  %cmp33 = fcmp une double %26, %27
  br i1 %cmp33, label %if.then.34, label %if.end.50

if.then.34:                                       ; preds = %if.then.30
  %y35 = getelementptr inbounds %struct.Point, %struct.Point* %p, i32 0, i32 1
  %28 = load double, double* %y35, align 8
  %y36 = getelementptr inbounds %struct.Point, %struct.Point* %p1, i32 0, i32 1
  %29 = load double, double* %y36, align 8
  %sub = fsub double %28, %29
  %x37 = getelementptr inbounds %struct.Point, %struct.Point* %p2, i32 0, i32 0
  %30 = load double, double* %x37, align 8
  %x38 = getelementptr inbounds %struct.Point, %struct.Point* %p1, i32 0, i32 0
  %31 = load double, double* %x38, align 8
  %sub39 = fsub double %30, %31
  %mul = fmul double %sub, %sub39
  %y40 = getelementptr inbounds %struct.Point, %struct.Point* %p2, i32 0, i32 1
  %32 = load double, double* %y40, align 8
  %y41 = getelementptr inbounds %struct.Point, %struct.Point* %p1, i32 0, i32 1
  %33 = load double, double* %y41, align 8
  %sub42 = fsub double %32, %33
  %div = fdiv double %mul, %sub42
  %x43 = getelementptr inbounds %struct.Point, %struct.Point* %p1, i32 0, i32 0
  %34 = load double, double* %x43, align 8
  %add = fadd double %div, %34
  store double %add, double* %xinters, align 8
  %x44 = getelementptr inbounds %struct.Point, %struct.Point* %p1, i32 0, i32 0
  %35 = load double, double* %x44, align 8
  %x45 = getelementptr inbounds %struct.Point, %struct.Point* %p2, i32 0, i32 0
  %36 = load double, double* %x45, align 8
  %cmp46 = fcmp oeq double %35, %36
  br i1 %cmp46, label %if.then.49, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.34
  %x47 = getelementptr inbounds %struct.Point, %struct.Point* %p, i32 0, i32 0
  %37 = load double, double* %x47, align 8
  %38 = load double, double* %xinters, align 8
  %cmp48 = fcmp ole double %37, %38
  br i1 %cmp48, label %if.then.49, label %if.end

if.then.49:                                       ; preds = %lor.lhs.false, %if.then.34
  %39 = load i32, i32* %counter, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %counter, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.49, %lor.lhs.false
  br label %if.end.50

if.end.50:                                        ; preds = %if.end, %if.then.30
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %cond.end.27
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %cond.end.16
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %cond.end
  %40 = bitcast %struct.Point* %p1 to i8*
  %41 = bitcast %struct.Point* %p2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 16, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %if.end.53
  %42 = load i32, i32* %i, align 4
  %inc54 = add nsw i32 %42, 1
  store i32 %inc54, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %44 = bitcast %struct.Point* %p to { double, double }*
  %45 = getelementptr { double, double }, { double, double }* %44, i32 0, i32 0
  %46 = load double, double* %45, align 1
  %47 = getelementptr { double, double }, { double, double }* %44, i32 0, i32 1
  %48 = load double, double* %47, align 1
  %call = call i32 @point_on_border(%struct.Point* %43, double %46, double %48)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %for.end
  store i32 1, i32* %retval
  br label %return

if.end.56:                                        ; preds = %for.end
  %49 = load i32, i32* %counter, align 4
  %rem57 = srem i32 %49, 2
  %cmp58 = icmp ne i32 %rem57, 0
  %conv = zext i1 %cmp58 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %if.end.56, %if.then.55
  %50 = load i32, i32* %retval
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define internal i32 @point_on_border(%struct.Point* %points, double %p.coerce0, double %p.coerce1) #0 {
entry:
  %retval = alloca i32, align 4
  %p = alloca %struct.Point, align 8
  %points.addr = alloca %struct.Point*, align 8
  %i = alloca i32, align 4
  %a = alloca %struct.Point, align 8
  %b = alloca %struct.Point, align 8
  %a1 = alloca double, align 8
  %b1 = alloca double, align 8
  %c1 = alloca double, align 8
  %c2 = alloca double, align 8
  %0 = bitcast %struct.Point* %p to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %p.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %p.coerce1, double* %2
  store %struct.Point* %points, %struct.Point** %points.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %3, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %rem = srem i32 %4, 4
  %idxprom = sext i32 %rem to i64
  %5 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %arrayidx = getelementptr inbounds %struct.Point, %struct.Point* %5, i64 %idxprom
  %6 = bitcast %struct.Point* %a to i8*
  %7 = bitcast %struct.Point* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false)
  %8 = load i32, i32* %i, align 4
  %add = add nsw i32 %8, 1
  %rem1 = srem i32 %add, 4
  %idxprom2 = sext i32 %rem1 to i64
  %9 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %arrayidx3 = getelementptr inbounds %struct.Point, %struct.Point* %9, i64 %idxprom2
  %10 = bitcast %struct.Point* %b to i8*
  %11 = bitcast %struct.Point* %arrayidx3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 16, i32 8, i1 false)
  %y = getelementptr inbounds %struct.Point, %struct.Point* %b, i32 0, i32 1
  %12 = load double, double* %y, align 8
  %y4 = getelementptr inbounds %struct.Point, %struct.Point* %a, i32 0, i32 1
  %13 = load double, double* %y4, align 8
  %sub = fsub double %12, %13
  store double %sub, double* %a1, align 8
  %x = getelementptr inbounds %struct.Point, %struct.Point* %a, i32 0, i32 0
  %14 = load double, double* %x, align 8
  %x5 = getelementptr inbounds %struct.Point, %struct.Point* %b, i32 0, i32 0
  %15 = load double, double* %x5, align 8
  %sub6 = fsub double %14, %15
  store double %sub6, double* %b1, align 8
  %16 = load double, double* %a1, align 8
  %x7 = getelementptr inbounds %struct.Point, %struct.Point* %a, i32 0, i32 0
  %17 = load double, double* %x7, align 8
  %mul = fmul double %16, %17
  %18 = load double, double* %b1, align 8
  %y8 = getelementptr inbounds %struct.Point, %struct.Point* %a, i32 0, i32 1
  %19 = load double, double* %y8, align 8
  %mul9 = fmul double %18, %19
  %add10 = fadd double %mul, %mul9
  store double %add10, double* %c1, align 8
  %20 = load double, double* %a1, align 8
  %x11 = getelementptr inbounds %struct.Point, %struct.Point* %p, i32 0, i32 0
  %21 = load double, double* %x11, align 8
  %mul12 = fmul double %20, %21
  %22 = load double, double* %b1, align 8
  %y13 = getelementptr inbounds %struct.Point, %struct.Point* %p, i32 0, i32 1
  %23 = load double, double* %y13, align 8
  %mul14 = fmul double %22, %23
  %add15 = fadd double %mul12, %mul14
  store double %add15, double* %c2, align 8
  %24 = load double, double* %c1, align 8
  %25 = load double, double* %c2, align 8
  %sub16 = fsub double %24, %25
  %cmp17 = fcmp olt double %sub16, 0.000000e+00
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %26 = load double, double* %c1, align 8
  %27 = load double, double* %c2, align 8
  %sub18 = fsub double %26, %27
  %sub19 = fsub double -0.000000e+00, %sub18
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %28 = load double, double* %c1, align 8
  %29 = load double, double* %c2, align 8
  %sub20 = fsub double %28, %29
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub19, %cond.true ], [ %sub20, %cond.false ]
  %cmp21 = fcmp olt double %cond, 1.000000e-08
  br i1 %cmp21, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end
  %x22 = getelementptr inbounds %struct.Point, %struct.Point* %a, i32 0, i32 0
  %30 = load double, double* %x22, align 8
  %x23 = getelementptr inbounds %struct.Point, %struct.Point* %b, i32 0, i32 0
  %31 = load double, double* %x23, align 8
  %cmp24 = fcmp olt double %30, %31
  br i1 %cmp24, label %cond.true.25, label %cond.false.27

cond.true.25:                                     ; preds = %land.lhs.true
  %x26 = getelementptr inbounds %struct.Point, %struct.Point* %a, i32 0, i32 0
  %32 = load double, double* %x26, align 8
  br label %cond.end.29

cond.false.27:                                    ; preds = %land.lhs.true
  %x28 = getelementptr inbounds %struct.Point, %struct.Point* %b, i32 0, i32 0
  %33 = load double, double* %x28, align 8
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.false.27, %cond.true.25
  %cond30 = phi double [ %32, %cond.true.25 ], [ %33, %cond.false.27 ]
  %x31 = getelementptr inbounds %struct.Point, %struct.Point* %p, i32 0, i32 0
  %34 = load double, double* %x31, align 8
  %cmp32 = fcmp ole double %cond30, %34
  br i1 %cmp32, label %land.lhs.true.33, label %if.end

land.lhs.true.33:                                 ; preds = %cond.end.29
  %x34 = getelementptr inbounds %struct.Point, %struct.Point* %a, i32 0, i32 0
  %35 = load double, double* %x34, align 8
  %x35 = getelementptr inbounds %struct.Point, %struct.Point* %b, i32 0, i32 0
  %36 = load double, double* %x35, align 8
  %cmp36 = fcmp ogt double %35, %36
  br i1 %cmp36, label %cond.true.37, label %cond.false.39

cond.true.37:                                     ; preds = %land.lhs.true.33
  %x38 = getelementptr inbounds %struct.Point, %struct.Point* %a, i32 0, i32 0
  %37 = load double, double* %x38, align 8
  br label %cond.end.41

cond.false.39:                                    ; preds = %land.lhs.true.33
  %x40 = getelementptr inbounds %struct.Point, %struct.Point* %b, i32 0, i32 0
  %38 = load double, double* %x40, align 8
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.39, %cond.true.37
  %cond42 = phi double [ %37, %cond.true.37 ], [ %38, %cond.false.39 ]
  %x43 = getelementptr inbounds %struct.Point, %struct.Point* %p, i32 0, i32 0
  %39 = load double, double* %x43, align 8
  %cmp44 = fcmp oge double %cond42, %39
  br i1 %cmp44, label %land.lhs.true.45, label %if.end

land.lhs.true.45:                                 ; preds = %cond.end.41
  %y46 = getelementptr inbounds %struct.Point, %struct.Point* %a, i32 0, i32 1
  %40 = load double, double* %y46, align 8
  %y47 = getelementptr inbounds %struct.Point, %struct.Point* %b, i32 0, i32 1
  %41 = load double, double* %y47, align 8
  %cmp48 = fcmp olt double %40, %41
  br i1 %cmp48, label %cond.true.49, label %cond.false.51

cond.true.49:                                     ; preds = %land.lhs.true.45
  %y50 = getelementptr inbounds %struct.Point, %struct.Point* %a, i32 0, i32 1
  %42 = load double, double* %y50, align 8
  br label %cond.end.53

cond.false.51:                                    ; preds = %land.lhs.true.45
  %y52 = getelementptr inbounds %struct.Point, %struct.Point* %b, i32 0, i32 1
  %43 = load double, double* %y52, align 8
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.false.51, %cond.true.49
  %cond54 = phi double [ %42, %cond.true.49 ], [ %43, %cond.false.51 ]
  %y55 = getelementptr inbounds %struct.Point, %struct.Point* %p, i32 0, i32 1
  %44 = load double, double* %y55, align 8
  %cmp56 = fcmp ole double %cond54, %44
  br i1 %cmp56, label %land.lhs.true.57, label %if.end

land.lhs.true.57:                                 ; preds = %cond.end.53
  %y58 = getelementptr inbounds %struct.Point, %struct.Point* %a, i32 0, i32 1
  %45 = load double, double* %y58, align 8
  %y59 = getelementptr inbounds %struct.Point, %struct.Point* %b, i32 0, i32 1
  %46 = load double, double* %y59, align 8
  %cmp60 = fcmp ogt double %45, %46
  br i1 %cmp60, label %cond.true.61, label %cond.false.63

cond.true.61:                                     ; preds = %land.lhs.true.57
  %y62 = getelementptr inbounds %struct.Point, %struct.Point* %a, i32 0, i32 1
  %47 = load double, double* %y62, align 8
  br label %cond.end.65

cond.false.63:                                    ; preds = %land.lhs.true.57
  %y64 = getelementptr inbounds %struct.Point, %struct.Point* %b, i32 0, i32 1
  %48 = load double, double* %y64, align 8
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.63, %cond.true.61
  %cond66 = phi double [ %47, %cond.true.61 ], [ %48, %cond.false.63 ]
  %y67 = getelementptr inbounds %struct.Point, %struct.Point* %p, i32 0, i32 1
  %49 = load double, double* %y67, align 8
  %cmp68 = fcmp oge double %cond66, %49
  br i1 %cmp68, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.65
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end.65, %cond.end.53, %cond.end.41, %cond.end.29, %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %50 = load i32, i32* %i, align 4
  %inc = add nsw i32 %50, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %51 = load i32, i32* %retval
  ret i32 %51
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
