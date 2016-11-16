; ModuleID = './libgimpcolor/gimphsv.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpHSV = type { double, double, double, double }

@gimp_hsv_get_type.hsv_type = internal global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"GimpHSV\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"LibGimpColor\00", align 1
@__func__.gimp_hsv_set = private unnamed_addr constant [13 x i8] c"gimp_hsv_set\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"hsv != NULL\00", align 1
@__func__.gimp_hsv_clamp = private unnamed_addr constant [15 x i8] c"gimp_hsv_clamp\00", align 1
@__func__.gimp_hsva_set = private unnamed_addr constant [14 x i8] c"gimp_hsva_set\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"hsva != NULL\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_hsv_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_hsv_get_type.hsv_type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_boxed_type_register_static(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* (i8*)* bitcast (%struct._GimpHSV* (%struct._GimpHSV*)* @gimp_hsv_copy to i8* (i8*)*), void (i8*)* @g_free)
  store i64 %call, i64* @gimp_hsv_get_type.hsv_type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gimp_hsv_get_type.hsv_type, align 8
  ret i64 %1
}

declare i64 @g_boxed_type_register_static(i8*, i8* (i8*)*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpHSV* @gimp_hsv_copy(%struct._GimpHSV* %hsv) #2 {
entry:
  %hsv.addr = alloca %struct._GimpHSV*, align 8
  store %struct._GimpHSV* %hsv, %struct._GimpHSV** %hsv.addr, align 8
  %0 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %1 = bitcast %struct._GimpHSV* %0 to i8*
  %call = call noalias i8* @g_memdup(i8* %1, i32 32)
  %2 = bitcast i8* %call to %struct._GimpHSV*
  ret %struct._GimpHSV* %2
}

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_hsv_set(%struct._GimpHSV* %hsv, double %h, double %s, double %v) #2 {
entry:
  %hsv.addr = alloca %struct._GimpHSV*, align 8
  %h.addr = alloca double, align 8
  %s.addr = alloca double, align 8
  %v.addr = alloca double, align 8
  store %struct._GimpHSV* %hsv, %struct._GimpHSV** %hsv.addr, align 8
  store double %h, double* %h.addr, align 8
  store double %s, double* %s.addr, align 8
  store double %v, double* %v.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %cmp = icmp ne %struct._GimpHSV* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.gimp_hsv_set, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load double, double* %h.addr, align 8
  %2 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %h1 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %2, i32 0, i32 0
  store double %1, double* %h1, align 8
  %3 = load double, double* %s.addr, align 8
  %4 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %s2 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %4, i32 0, i32 1
  store double %3, double* %s2, align 8
  %5 = load double, double* %v.addr, align 8
  %6 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %v3 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %6, i32 0, i32 2
  store double %5, double* %v3, align 8
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_hsv_clamp(%struct._GimpHSV* %hsv) #2 {
entry:
  %hsv.addr = alloca %struct._GimpHSV*, align 8
  store %struct._GimpHSV* %hsv, %struct._GimpHSV** %hsv.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %cmp = icmp ne %struct._GimpHSV* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_hsv_clamp, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %h = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %1, i32 0, i32 0
  %2 = load double, double* %h, align 8
  %conv = fptosi double %2 to i32
  %conv1 = sitofp i32 %conv to double
  %3 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %h2 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %3, i32 0, i32 0
  %4 = load double, double* %h2, align 8
  %sub = fsub double %4, %conv1
  store double %sub, double* %h2, align 8
  %5 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %h3 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %5, i32 0, i32 0
  %6 = load double, double* %h3, align 8
  %cmp4 = fcmp olt double %6, 0.000000e+00
  br i1 %cmp4, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %do.end
  %7 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %h7 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %7, i32 0, i32 0
  %8 = load double, double* %h7, align 8
  %add = fadd double %8, 1.000000e+00
  store double %add, double* %h7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %do.end
  %9 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %s = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %9, i32 0, i32 1
  %10 = load double, double* %s, align 8
  %cmp9 = fcmp ogt double %10, 1.000000e+00
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.8
  br label %cond.end.17

cond.false:                                       ; preds = %if.end.8
  %11 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %s11 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %11, i32 0, i32 1
  %12 = load double, double* %s11, align 8
  %cmp12 = fcmp olt double %12, 0.000000e+00
  br i1 %cmp12, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %cond.false
  br label %cond.end

cond.false.15:                                    ; preds = %cond.false
  %13 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %s16 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %13, i32 0, i32 1
  %14 = load double, double* %s16, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.15, %cond.true.14
  %cond = phi double [ 0.000000e+00, %cond.true.14 ], [ %14, %cond.false.15 ]
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.end, %cond.true
  %cond18 = phi double [ 1.000000e+00, %cond.true ], [ %cond, %cond.end ]
  %15 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %s19 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %15, i32 0, i32 1
  store double %cond18, double* %s19, align 8
  %16 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %v = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %16, i32 0, i32 2
  %17 = load double, double* %v, align 8
  %cmp20 = fcmp ogt double %17, 1.000000e+00
  br i1 %cmp20, label %cond.true.22, label %cond.false.23

cond.true.22:                                     ; preds = %cond.end.17
  br label %cond.end.32

cond.false.23:                                    ; preds = %cond.end.17
  %18 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %v24 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %18, i32 0, i32 2
  %19 = load double, double* %v24, align 8
  %cmp25 = fcmp olt double %19, 0.000000e+00
  br i1 %cmp25, label %cond.true.27, label %cond.false.28

cond.true.27:                                     ; preds = %cond.false.23
  br label %cond.end.30

cond.false.28:                                    ; preds = %cond.false.23
  %20 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %v29 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %20, i32 0, i32 2
  %21 = load double, double* %v29, align 8
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.28, %cond.true.27
  %cond31 = phi double [ 0.000000e+00, %cond.true.27 ], [ %21, %cond.false.28 ]
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.end.30, %cond.true.22
  %cond33 = phi double [ 1.000000e+00, %cond.true.22 ], [ %cond31, %cond.end.30 ]
  %22 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %v34 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %22, i32 0, i32 2
  store double %cond33, double* %v34, align 8
  %23 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %a = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %23, i32 0, i32 3
  %24 = load double, double* %a, align 8
  %cmp35 = fcmp ogt double %24, 1.000000e+00
  br i1 %cmp35, label %cond.true.37, label %cond.false.38

cond.true.37:                                     ; preds = %cond.end.32
  br label %cond.end.47

cond.false.38:                                    ; preds = %cond.end.32
  %25 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %a39 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %25, i32 0, i32 3
  %26 = load double, double* %a39, align 8
  %cmp40 = fcmp olt double %26, 0.000000e+00
  br i1 %cmp40, label %cond.true.42, label %cond.false.43

cond.true.42:                                     ; preds = %cond.false.38
  br label %cond.end.45

cond.false.43:                                    ; preds = %cond.false.38
  %27 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %a44 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %27, i32 0, i32 3
  %28 = load double, double* %a44, align 8
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.43, %cond.true.42
  %cond46 = phi double [ 0.000000e+00, %cond.true.42 ], [ %28, %cond.false.43 ]
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.end.45, %cond.true.37
  %cond48 = phi double [ 1.000000e+00, %cond.true.37 ], [ %cond46, %cond.end.45 ]
  %29 = load %struct._GimpHSV*, %struct._GimpHSV** %hsv.addr, align 8
  %a49 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %29, i32 0, i32 3
  store double %cond48, double* %a49, align 8
  br label %return

return:                                           ; preds = %cond.end.47, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_hsva_set(%struct._GimpHSV* %hsva, double %h, double %s, double %v, double %a) #2 {
entry:
  %hsva.addr = alloca %struct._GimpHSV*, align 8
  %h.addr = alloca double, align 8
  %s.addr = alloca double, align 8
  %v.addr = alloca double, align 8
  %a.addr = alloca double, align 8
  store %struct._GimpHSV* %hsva, %struct._GimpHSV** %hsva.addr, align 8
  store double %h, double* %h.addr, align 8
  store double %s, double* %s.addr, align 8
  store double %v, double* %v.addr, align 8
  store double %a, double* %a.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpHSV*, %struct._GimpHSV** %hsva.addr, align 8
  %cmp = icmp ne %struct._GimpHSV* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.gimp_hsva_set, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load double, double* %h.addr, align 8
  %2 = load %struct._GimpHSV*, %struct._GimpHSV** %hsva.addr, align 8
  %h1 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %2, i32 0, i32 0
  store double %1, double* %h1, align 8
  %3 = load double, double* %s.addr, align 8
  %4 = load %struct._GimpHSV*, %struct._GimpHSV** %hsva.addr, align 8
  %s2 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %4, i32 0, i32 1
  store double %3, double* %s2, align 8
  %5 = load double, double* %v.addr, align 8
  %6 = load %struct._GimpHSV*, %struct._GimpHSV** %hsva.addr, align 8
  %v3 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %6, i32 0, i32 2
  store double %5, double* %v3, align 8
  %7 = load double, double* %a.addr, align 8
  %8 = load %struct._GimpHSV*, %struct._GimpHSV** %hsva.addr, align 8
  %a4 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %8, i32 0, i32 3
  store double %7, double* %a4, align 8
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

declare noalias i8* @g_memdup(i8*, i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
