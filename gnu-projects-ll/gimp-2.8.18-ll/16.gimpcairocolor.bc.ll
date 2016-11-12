; ModuleID = './libgimpcolor/gimpcairocolor.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cairo = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._cairo_pattern = type opaque
%struct._cairo_surface = type opaque

@.str = private unnamed_addr constant [13 x i8] c"LibGimpColor\00", align 1
@__func__.gimp_cairo_checkerboard_create = private unnamed_addr constant [31 x i8] c"gimp_cairo_checkerboard_create\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"cr != NULL\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"size > 0\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_cairo_set_source_rgb(%struct._cairo* %cr, %struct._GimpRGB* %color) #0 {
entry:
  %cr.addr = alloca %struct._cairo*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  %0 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %1 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %1, i32 0, i32 0
  %2 = load double, double* %r, align 8
  %3 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %3, i32 0, i32 1
  %4 = load double, double* %g, align 8
  %5 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %5, i32 0, i32 2
  %6 = load double, double* %b, align 8
  call void @cairo_set_source_rgb(%struct._cairo* %0, double %2, double %4, double %6)
  ret void
}

declare void @cairo_set_source_rgb(%struct._cairo*, double, double, double) #1

; Function Attrs: nounwind uwtable
define void @gimp_cairo_set_source_rgba(%struct._cairo* %cr, %struct._GimpRGB* %color) #0 {
entry:
  %cr.addr = alloca %struct._cairo*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  %0 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %1 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %1, i32 0, i32 0
  %2 = load double, double* %r, align 8
  %3 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %3, i32 0, i32 1
  %4 = load double, double* %g, align 8
  %5 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %5, i32 0, i32 2
  %6 = load double, double* %b, align 8
  %7 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %7, i32 0, i32 3
  %8 = load double, double* %a, align 8
  call void @cairo_set_source_rgba(%struct._cairo* %0, double %2, double %4, double %6, double %8)
  ret void
}

declare void @cairo_set_source_rgba(%struct._cairo*, double, double, double, double) #1

; Function Attrs: nounwind uwtable
define %struct._cairo_pattern* @gimp_cairo_checkerboard_create(%struct._cairo* %cr, i32 %size, %struct._GimpRGB* %light, %struct._GimpRGB* %dark) #0 {
entry:
  %retval = alloca %struct._cairo_pattern*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %size.addr = alloca i32, align 4
  %light.addr = alloca %struct._GimpRGB*, align 8
  %dark.addr = alloca %struct._GimpRGB*, align 8
  %context = alloca %struct._cairo*, align 8
  %surface = alloca %struct._cairo_surface*, align 8
  %pattern = alloca %struct._cairo_pattern*, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store %struct._GimpRGB* %light, %struct._GimpRGB** %light.addr, align 8
  store %struct._GimpRGB* %dark, %struct._GimpRGB** %dark.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %cmp = icmp ne %struct._cairo* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_cairo_checkerboard_create, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store %struct._cairo_pattern* null, %struct._cairo_pattern** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i32, i32* %size.addr, align 4
  %cmp2 = icmp sgt i32 %1, 0
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_cairo_checkerboard_create, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0))
  store %struct._cairo_pattern* null, %struct._cairo_pattern** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %call = call %struct._cairo_surface* @cairo_get_target(%struct._cairo* %2)
  %3 = load i32, i32* %size.addr, align 4
  %mul = mul nsw i32 2, %3
  %4 = load i32, i32* %size.addr, align 4
  %mul7 = mul nsw i32 2, %4
  %call8 = call %struct._cairo_surface* @cairo_surface_create_similar(%struct._cairo_surface* %call, i32 4096, i32 %mul, i32 %mul7)
  store %struct._cairo_surface* %call8, %struct._cairo_surface** %surface, align 8
  %5 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  %call9 = call %struct._cairo* @cairo_create(%struct._cairo_surface* %5)
  store %struct._cairo* %call9, %struct._cairo** %context, align 8
  %6 = load %struct._GimpRGB*, %struct._GimpRGB** %light.addr, align 8
  %tobool = icmp ne %struct._GimpRGB* %6, null
  br i1 %tobool, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %do.end.6
  %7 = load %struct._cairo*, %struct._cairo** %context, align 8
  %8 = load %struct._GimpRGB*, %struct._GimpRGB** %light.addr, align 8
  call void @gimp_cairo_set_source_rgb(%struct._cairo* %7, %struct._GimpRGB* %8)
  br label %if.end.12

if.else.11:                                       ; preds = %do.end.6
  %9 = load %struct._cairo*, %struct._cairo** %context, align 8
  call void @cairo_set_source_rgb(%struct._cairo* %9, double 6.000000e-01, double 6.000000e-01, double 6.000000e-01)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.11, %if.then.10
  %10 = load %struct._cairo*, %struct._cairo** %context, align 8
  %11 = load i32, i32* %size.addr, align 4
  %conv = sitofp i32 %11 to double
  %12 = load i32, i32* %size.addr, align 4
  %conv13 = sitofp i32 %12 to double
  call void @cairo_rectangle(%struct._cairo* %10, double 0.000000e+00, double 0.000000e+00, double %conv, double %conv13)
  %13 = load %struct._cairo*, %struct._cairo** %context, align 8
  %14 = load i32, i32* %size.addr, align 4
  %conv14 = sitofp i32 %14 to double
  %15 = load i32, i32* %size.addr, align 4
  %conv15 = sitofp i32 %15 to double
  %16 = load i32, i32* %size.addr, align 4
  %conv16 = sitofp i32 %16 to double
  %17 = load i32, i32* %size.addr, align 4
  %conv17 = sitofp i32 %17 to double
  call void @cairo_rectangle(%struct._cairo* %13, double %conv14, double %conv15, double %conv16, double %conv17)
  %18 = load %struct._cairo*, %struct._cairo** %context, align 8
  call void @cairo_fill(%struct._cairo* %18)
  %19 = load %struct._GimpRGB*, %struct._GimpRGB** %dark.addr, align 8
  %tobool18 = icmp ne %struct._GimpRGB* %19, null
  br i1 %tobool18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %if.end.12
  %20 = load %struct._cairo*, %struct._cairo** %context, align 8
  %21 = load %struct._GimpRGB*, %struct._GimpRGB** %dark.addr, align 8
  call void @gimp_cairo_set_source_rgb(%struct._cairo* %20, %struct._GimpRGB* %21)
  br label %if.end.21

if.else.20:                                       ; preds = %if.end.12
  %22 = load %struct._cairo*, %struct._cairo** %context, align 8
  call void @cairo_set_source_rgb(%struct._cairo* %22, double 4.000000e-01, double 4.000000e-01, double 4.000000e-01)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.20, %if.then.19
  %23 = load %struct._cairo*, %struct._cairo** %context, align 8
  %24 = load i32, i32* %size.addr, align 4
  %conv22 = sitofp i32 %24 to double
  %25 = load i32, i32* %size.addr, align 4
  %conv23 = sitofp i32 %25 to double
  %26 = load i32, i32* %size.addr, align 4
  %conv24 = sitofp i32 %26 to double
  call void @cairo_rectangle(%struct._cairo* %23, double 0.000000e+00, double %conv22, double %conv23, double %conv24)
  %27 = load %struct._cairo*, %struct._cairo** %context, align 8
  %28 = load i32, i32* %size.addr, align 4
  %conv25 = sitofp i32 %28 to double
  %29 = load i32, i32* %size.addr, align 4
  %conv26 = sitofp i32 %29 to double
  %30 = load i32, i32* %size.addr, align 4
  %conv27 = sitofp i32 %30 to double
  call void @cairo_rectangle(%struct._cairo* %27, double %conv25, double 0.000000e+00, double %conv26, double %conv27)
  %31 = load %struct._cairo*, %struct._cairo** %context, align 8
  call void @cairo_fill(%struct._cairo* %31)
  %32 = load %struct._cairo*, %struct._cairo** %context, align 8
  call void @cairo_destroy(%struct._cairo* %32)
  %33 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  %call28 = call %struct._cairo_pattern* @cairo_pattern_create_for_surface(%struct._cairo_surface* %33)
  store %struct._cairo_pattern* %call28, %struct._cairo_pattern** %pattern, align 8
  %34 = load %struct._cairo_pattern*, %struct._cairo_pattern** %pattern, align 8
  call void @cairo_pattern_set_extend(%struct._cairo_pattern* %34, i32 1)
  %35 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  call void @cairo_surface_destroy(%struct._cairo_surface* %35)
  %36 = load %struct._cairo_pattern*, %struct._cairo_pattern** %pattern, align 8
  store %struct._cairo_pattern* %36, %struct._cairo_pattern** %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.else.4, %if.else
  %37 = load %struct._cairo_pattern*, %struct._cairo_pattern** %retval
  ret %struct._cairo_pattern* %37
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare %struct._cairo_surface* @cairo_surface_create_similar(%struct._cairo_surface*, i32, i32, i32) #1

declare %struct._cairo_surface* @cairo_get_target(%struct._cairo*) #1

declare %struct._cairo* @cairo_create(%struct._cairo_surface*) #1

declare void @cairo_rectangle(%struct._cairo*, double, double, double, double) #1

declare void @cairo_fill(%struct._cairo*) #1

declare void @cairo_destroy(%struct._cairo*) #1

declare %struct._cairo_pattern* @cairo_pattern_create_for_surface(%struct._cairo_surface*) #1

declare void @cairo_pattern_set_extend(%struct._cairo_pattern*, i32) #1

declare void @cairo_surface_destroy(%struct._cairo_surface*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
