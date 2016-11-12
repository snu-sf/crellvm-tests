; ModuleID = './libgimpcolor/gimpcmyk.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpCMYK = type { double, double, double, double, double }

@gimp_cmyk_get_type.cmyk_type = internal global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"GimpCMYK\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"LibGimpColor\00", align 1
@__func__.gimp_cmyk_set = private unnamed_addr constant [14 x i8] c"gimp_cmyk_set\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"cmyk != NULL\00", align 1
@__func__.gimp_cmyk_set_uchar = private unnamed_addr constant [20 x i8] c"gimp_cmyk_set_uchar\00", align 1
@__func__.gimp_cmyk_get_uchar = private unnamed_addr constant [20 x i8] c"gimp_cmyk_get_uchar\00", align 1
@__func__.gimp_cmyka_set = private unnamed_addr constant [15 x i8] c"gimp_cmyka_set\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"cmyka != NULL\00", align 1
@__func__.gimp_cmyka_set_uchar = private unnamed_addr constant [21 x i8] c"gimp_cmyka_set_uchar\00", align 1
@__func__.gimp_cmyka_get_uchar = private unnamed_addr constant [21 x i8] c"gimp_cmyka_get_uchar\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_cmyk_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_cmyk_get_type.cmyk_type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_boxed_type_register_static(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* (i8*)* bitcast (%struct._GimpCMYK* (%struct._GimpCMYK*)* @gimp_cmyk_copy to i8* (i8*)*), void (i8*)* @g_free)
  store i64 %call, i64* @gimp_cmyk_get_type.cmyk_type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gimp_cmyk_get_type.cmyk_type, align 8
  ret i64 %1
}

declare i64 @g_boxed_type_register_static(i8*, i8* (i8*)*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpCMYK* @gimp_cmyk_copy(%struct._GimpCMYK* %cmyk) #2 {
entry:
  %cmyk.addr = alloca %struct._GimpCMYK*, align 8
  store %struct._GimpCMYK* %cmyk, %struct._GimpCMYK** %cmyk.addr, align 8
  %0 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyk.addr, align 8
  %1 = bitcast %struct._GimpCMYK* %0 to i8*
  %call = call noalias i8* @g_memdup(i8* %1, i32 40)
  %2 = bitcast i8* %call to %struct._GimpCMYK*
  ret %struct._GimpCMYK* %2
}

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_cmyk_set(%struct._GimpCMYK* %cmyk, double %cyan, double %magenta, double %yellow, double %black) #2 {
entry:
  %cmyk.addr = alloca %struct._GimpCMYK*, align 8
  %cyan.addr = alloca double, align 8
  %magenta.addr = alloca double, align 8
  %yellow.addr = alloca double, align 8
  %black.addr = alloca double, align 8
  store %struct._GimpCMYK* %cmyk, %struct._GimpCMYK** %cmyk.addr, align 8
  store double %cyan, double* %cyan.addr, align 8
  store double %magenta, double* %magenta.addr, align 8
  store double %yellow, double* %yellow.addr, align 8
  store double %black, double* %black.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyk.addr, align 8
  %cmp = icmp ne %struct._GimpCMYK* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.gimp_cmyk_set, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load double, double* %cyan.addr, align 8
  %2 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyk.addr, align 8
  %c = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %2, i32 0, i32 0
  store double %1, double* %c, align 8
  %3 = load double, double* %magenta.addr, align 8
  %4 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyk.addr, align 8
  %m = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %4, i32 0, i32 1
  store double %3, double* %m, align 8
  %5 = load double, double* %yellow.addr, align 8
  %6 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyk.addr, align 8
  %y = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %6, i32 0, i32 2
  store double %5, double* %y, align 8
  %7 = load double, double* %black.addr, align 8
  %8 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyk.addr, align 8
  %k = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %8, i32 0, i32 3
  store double %7, double* %k, align 8
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_cmyk_set_uchar(%struct._GimpCMYK* %cmyk, i8 zeroext %cyan, i8 zeroext %magenta, i8 zeroext %yellow, i8 zeroext %black) #2 {
entry:
  %cmyk.addr = alloca %struct._GimpCMYK*, align 8
  %cyan.addr = alloca i8, align 1
  %magenta.addr = alloca i8, align 1
  %yellow.addr = alloca i8, align 1
  %black.addr = alloca i8, align 1
  store %struct._GimpCMYK* %cmyk, %struct._GimpCMYK** %cmyk.addr, align 8
  store i8 %cyan, i8* %cyan.addr, align 1
  store i8 %magenta, i8* %magenta.addr, align 1
  store i8 %yellow, i8* %yellow.addr, align 1
  store i8 %black, i8* %black.addr, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyk.addr, align 8
  %cmp = icmp ne %struct._GimpCMYK* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_cmyk_set_uchar, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i8, i8* %cyan.addr, align 1
  %conv = uitofp i8 %1 to double
  %div = fdiv double %conv, 2.550000e+02
  %2 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyk.addr, align 8
  %c = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %2, i32 0, i32 0
  store double %div, double* %c, align 8
  %3 = load i8, i8* %magenta.addr, align 1
  %conv1 = uitofp i8 %3 to double
  %div2 = fdiv double %conv1, 2.550000e+02
  %4 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyk.addr, align 8
  %m = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %4, i32 0, i32 1
  store double %div2, double* %m, align 8
  %5 = load i8, i8* %yellow.addr, align 1
  %conv3 = uitofp i8 %5 to double
  %div4 = fdiv double %conv3, 2.550000e+02
  %6 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyk.addr, align 8
  %y = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %6, i32 0, i32 2
  store double %div4, double* %y, align 8
  %7 = load i8, i8* %black.addr, align 1
  %conv5 = uitofp i8 %7 to double
  %div6 = fdiv double %conv5, 2.550000e+02
  %8 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyk.addr, align 8
  %k = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %8, i32 0, i32 3
  store double %div6, double* %k, align 8
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_cmyk_get_uchar(%struct._GimpCMYK* %cmyk, i8* %cyan, i8* %magenta, i8* %yellow, i8* %black) #2 {
entry:
  %cmyk.addr = alloca %struct._GimpCMYK*, align 8
  %cyan.addr = alloca i8*, align 8
  %magenta.addr = alloca i8*, align 8
  %yellow.addr = alloca i8*, align 8
  %black.addr = alloca i8*, align 8
  store %struct._GimpCMYK* %cmyk, %struct._GimpCMYK** %cmyk.addr, align 8
  store i8* %cyan, i8** %cyan.addr, align 8
  store i8* %magenta, i8** %magenta.addr, align 8
  store i8* %yellow, i8** %yellow.addr, align 8
  store i8* %black, i8** %black.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyk.addr, align 8
  %cmp = icmp ne %struct._GimpCMYK* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_cmyk_get_uchar, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.74

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i8*, i8** %cyan.addr, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then.1, label %if.end.11

if.then.1:                                        ; preds = %do.end
  %2 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyk.addr, align 8
  %c = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %2, i32 0, i32 0
  %3 = load double, double* %c, align 8
  %cmp2 = fcmp ogt double %3, 1.000000e+00
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.1
  br label %cond.end.8

cond.false:                                       ; preds = %if.then.1
  %4 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyk.addr, align 8
  %c3 = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %4, i32 0, i32 0
  %5 = load double, double* %c3, align 8
  %cmp4 = fcmp olt double %5, 0.000000e+00
  br i1 %cmp4, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %cond.false
  br label %cond.end

cond.false.6:                                     ; preds = %cond.false
  %6 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyk.addr, align 8
  %c7 = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %6, i32 0, i32 0
  %7 = load double, double* %c7, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.6, %cond.true.5
  %cond = phi double [ 0.000000e+00, %cond.true.5 ], [ %7, %cond.false.6 ]
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.end, %cond.true
  %cond9 = phi double [ 1.000000e+00, %cond.true ], [ %cond, %cond.end ]
  %mul = fmul double %cond9, 2.550000e+02
  %add = fadd double %mul, 5.000000e-01
  %conv = fptosi double %add to i32
  %conv10 = trunc i32 %conv to i8
  %8 = load i8*, i8** %cyan.addr, align 8
  store i8 %conv10, i8* %8, align 1
  br label %if.end.11

if.end.11:                                        ; preds = %cond.end.8, %do.end
  %9 = load i8*, i8** %magenta.addr, align 8
  %tobool12 = icmp ne i8* %9, null
  br i1 %tobool12, label %if.then.13, label %if.end.32

if.then.13:                                       ; preds = %if.end.11
  %10 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyk.addr, align 8
  %m = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %10, i32 0, i32 1
  %11 = load double, double* %m, align 8
  %cmp14 = fcmp ogt double %11, 1.000000e+00
  br i1 %cmp14, label %cond.true.16, label %cond.false.17

cond.true.16:                                     ; preds = %if.then.13
  br label %cond.end.26

cond.false.17:                                    ; preds = %if.then.13
  %12 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyk.addr, align 8
  %m18 = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %12, i32 0, i32 1
  %13 = load double, double* %m18, align 8
  %cmp19 = fcmp olt double %13, 0.000000e+00
  br i1 %cmp19, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %cond.false.17
  br label %cond.end.24

cond.false.22:                                    ; preds = %cond.false.17
  %14 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyk.addr, align 8
  %m23 = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %14, i32 0, i32 1
  %15 = load double, double* %m23, align 8
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.22, %cond.true.21
  %cond25 = phi double [ 0.000000e+00, %cond.true.21 ], [ %15, %cond.false.22 ]
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.end.24, %cond.true.16
  %cond27 = phi double [ 1.000000e+00, %cond.true.16 ], [ %cond25, %cond.end.24 ]
  %mul28 = fmul double %cond27, 2.550000e+02
  %add29 = fadd double %mul28, 5.000000e-01
  %conv30 = fptosi double %add29 to i32
  %conv31 = trunc i32 %conv30 to i8
  %16 = load i8*, i8** %magenta.addr, align 8
  store i8 %conv31, i8* %16, align 1
  br label %if.end.32

if.end.32:                                        ; preds = %cond.end.26, %if.end.11
  %17 = load i8*, i8** %yellow.addr, align 8
  %tobool33 = icmp ne i8* %17, null
  br i1 %tobool33, label %if.then.34, label %if.end.53

if.then.34:                                       ; preds = %if.end.32
  %18 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyk.addr, align 8
  %y = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %18, i32 0, i32 2
  %19 = load double, double* %y, align 8
  %cmp35 = fcmp ogt double %19, 1.000000e+00
  br i1 %cmp35, label %cond.true.37, label %cond.false.38

cond.true.37:                                     ; preds = %if.then.34
  br label %cond.end.47

cond.false.38:                                    ; preds = %if.then.34
  %20 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyk.addr, align 8
  %y39 = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %20, i32 0, i32 2
  %21 = load double, double* %y39, align 8
  %cmp40 = fcmp olt double %21, 0.000000e+00
  br i1 %cmp40, label %cond.true.42, label %cond.false.43

cond.true.42:                                     ; preds = %cond.false.38
  br label %cond.end.45

cond.false.43:                                    ; preds = %cond.false.38
  %22 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyk.addr, align 8
  %y44 = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %22, i32 0, i32 2
  %23 = load double, double* %y44, align 8
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.43, %cond.true.42
  %cond46 = phi double [ 0.000000e+00, %cond.true.42 ], [ %23, %cond.false.43 ]
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.end.45, %cond.true.37
  %cond48 = phi double [ 1.000000e+00, %cond.true.37 ], [ %cond46, %cond.end.45 ]
  %mul49 = fmul double %cond48, 2.550000e+02
  %add50 = fadd double %mul49, 5.000000e-01
  %conv51 = fptosi double %add50 to i32
  %conv52 = trunc i32 %conv51 to i8
  %24 = load i8*, i8** %yellow.addr, align 8
  store i8 %conv52, i8* %24, align 1
  br label %if.end.53

if.end.53:                                        ; preds = %cond.end.47, %if.end.32
  %25 = load i8*, i8** %black.addr, align 8
  %tobool54 = icmp ne i8* %25, null
  br i1 %tobool54, label %if.then.55, label %if.end.74

if.then.55:                                       ; preds = %if.end.53
  %26 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyk.addr, align 8
  %k = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %26, i32 0, i32 3
  %27 = load double, double* %k, align 8
  %cmp56 = fcmp ogt double %27, 1.000000e+00
  br i1 %cmp56, label %cond.true.58, label %cond.false.59

cond.true.58:                                     ; preds = %if.then.55
  br label %cond.end.68

cond.false.59:                                    ; preds = %if.then.55
  %28 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyk.addr, align 8
  %k60 = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %28, i32 0, i32 3
  %29 = load double, double* %k60, align 8
  %cmp61 = fcmp olt double %29, 0.000000e+00
  br i1 %cmp61, label %cond.true.63, label %cond.false.64

cond.true.63:                                     ; preds = %cond.false.59
  br label %cond.end.66

cond.false.64:                                    ; preds = %cond.false.59
  %30 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyk.addr, align 8
  %k65 = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %30, i32 0, i32 3
  %31 = load double, double* %k65, align 8
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.false.64, %cond.true.63
  %cond67 = phi double [ 0.000000e+00, %cond.true.63 ], [ %31, %cond.false.64 ]
  br label %cond.end.68

cond.end.68:                                      ; preds = %cond.end.66, %cond.true.58
  %cond69 = phi double [ 1.000000e+00, %cond.true.58 ], [ %cond67, %cond.end.66 ]
  %mul70 = fmul double %cond69, 2.550000e+02
  %add71 = fadd double %mul70, 5.000000e-01
  %conv72 = fptosi double %add71 to i32
  %conv73 = trunc i32 %conv72 to i8
  %32 = load i8*, i8** %black.addr, align 8
  store i8 %conv73, i8* %32, align 1
  br label %if.end.74

if.end.74:                                        ; preds = %if.else, %cond.end.68, %if.end.53
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_cmyka_set(%struct._GimpCMYK* %cmyka, double %cyan, double %magenta, double %yellow, double %black, double %alpha) #2 {
entry:
  %cmyka.addr = alloca %struct._GimpCMYK*, align 8
  %cyan.addr = alloca double, align 8
  %magenta.addr = alloca double, align 8
  %yellow.addr = alloca double, align 8
  %black.addr = alloca double, align 8
  %alpha.addr = alloca double, align 8
  store %struct._GimpCMYK* %cmyka, %struct._GimpCMYK** %cmyka.addr, align 8
  store double %cyan, double* %cyan.addr, align 8
  store double %magenta, double* %magenta.addr, align 8
  store double %yellow, double* %yellow.addr, align 8
  store double %black, double* %black.addr, align 8
  store double %alpha, double* %alpha.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyka.addr, align 8
  %cmp = icmp ne %struct._GimpCMYK* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_cmyka_set, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load double, double* %cyan.addr, align 8
  %2 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyka.addr, align 8
  %c = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %2, i32 0, i32 0
  store double %1, double* %c, align 8
  %3 = load double, double* %magenta.addr, align 8
  %4 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyka.addr, align 8
  %m = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %4, i32 0, i32 1
  store double %3, double* %m, align 8
  %5 = load double, double* %yellow.addr, align 8
  %6 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyka.addr, align 8
  %y = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %6, i32 0, i32 2
  store double %5, double* %y, align 8
  %7 = load double, double* %black.addr, align 8
  %8 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyka.addr, align 8
  %k = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %8, i32 0, i32 3
  store double %7, double* %k, align 8
  %9 = load double, double* %alpha.addr, align 8
  %10 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyka.addr, align 8
  %a = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %10, i32 0, i32 4
  store double %9, double* %a, align 8
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_cmyka_set_uchar(%struct._GimpCMYK* %cmyka, i8 zeroext %cyan, i8 zeroext %magenta, i8 zeroext %yellow, i8 zeroext %black, i8 zeroext %alpha) #2 {
entry:
  %cmyka.addr = alloca %struct._GimpCMYK*, align 8
  %cyan.addr = alloca i8, align 1
  %magenta.addr = alloca i8, align 1
  %yellow.addr = alloca i8, align 1
  %black.addr = alloca i8, align 1
  %alpha.addr = alloca i8, align 1
  store %struct._GimpCMYK* %cmyka, %struct._GimpCMYK** %cmyka.addr, align 8
  store i8 %cyan, i8* %cyan.addr, align 1
  store i8 %magenta, i8* %magenta.addr, align 1
  store i8 %yellow, i8* %yellow.addr, align 1
  store i8 %black, i8* %black.addr, align 1
  store i8 %alpha, i8* %alpha.addr, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyka.addr, align 8
  %cmp = icmp ne %struct._GimpCMYK* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_cmyka_set_uchar, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i8, i8* %cyan.addr, align 1
  %conv = uitofp i8 %1 to double
  %div = fdiv double %conv, 2.550000e+02
  %2 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyka.addr, align 8
  %c = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %2, i32 0, i32 0
  store double %div, double* %c, align 8
  %3 = load i8, i8* %magenta.addr, align 1
  %conv1 = uitofp i8 %3 to double
  %div2 = fdiv double %conv1, 2.550000e+02
  %4 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyka.addr, align 8
  %m = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %4, i32 0, i32 1
  store double %div2, double* %m, align 8
  %5 = load i8, i8* %yellow.addr, align 1
  %conv3 = uitofp i8 %5 to double
  %div4 = fdiv double %conv3, 2.550000e+02
  %6 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyka.addr, align 8
  %y = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %6, i32 0, i32 2
  store double %div4, double* %y, align 8
  %7 = load i8, i8* %black.addr, align 1
  %conv5 = uitofp i8 %7 to double
  %div6 = fdiv double %conv5, 2.550000e+02
  %8 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyka.addr, align 8
  %k = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %8, i32 0, i32 3
  store double %div6, double* %k, align 8
  %9 = load i8, i8* %alpha.addr, align 1
  %conv7 = uitofp i8 %9 to double
  %div8 = fdiv double %conv7, 2.550000e+02
  %10 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyka.addr, align 8
  %a = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %10, i32 0, i32 4
  store double %div8, double* %a, align 8
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_cmyka_get_uchar(%struct._GimpCMYK* %cmyka, i8* %cyan, i8* %magenta, i8* %yellow, i8* %black, i8* %alpha) #2 {
entry:
  %cmyka.addr = alloca %struct._GimpCMYK*, align 8
  %cyan.addr = alloca i8*, align 8
  %magenta.addr = alloca i8*, align 8
  %yellow.addr = alloca i8*, align 8
  %black.addr = alloca i8*, align 8
  %alpha.addr = alloca i8*, align 8
  store %struct._GimpCMYK* %cmyka, %struct._GimpCMYK** %cmyka.addr, align 8
  store i8* %cyan, i8** %cyan.addr, align 8
  store i8* %magenta, i8** %magenta.addr, align 8
  store i8* %yellow, i8** %yellow.addr, align 8
  store i8* %black, i8** %black.addr, align 8
  store i8* %alpha, i8** %alpha.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyka.addr, align 8
  %cmp = icmp ne %struct._GimpCMYK* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_cmyka_get_uchar, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.95

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i8*, i8** %cyan.addr, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then.1, label %if.end.11

if.then.1:                                        ; preds = %do.end
  %2 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyka.addr, align 8
  %c = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %2, i32 0, i32 0
  %3 = load double, double* %c, align 8
  %cmp2 = fcmp ogt double %3, 1.000000e+00
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.1
  br label %cond.end.8

cond.false:                                       ; preds = %if.then.1
  %4 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyka.addr, align 8
  %c3 = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %4, i32 0, i32 0
  %5 = load double, double* %c3, align 8
  %cmp4 = fcmp olt double %5, 0.000000e+00
  br i1 %cmp4, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %cond.false
  br label %cond.end

cond.false.6:                                     ; preds = %cond.false
  %6 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyka.addr, align 8
  %c7 = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %6, i32 0, i32 0
  %7 = load double, double* %c7, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.6, %cond.true.5
  %cond = phi double [ 0.000000e+00, %cond.true.5 ], [ %7, %cond.false.6 ]
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.end, %cond.true
  %cond9 = phi double [ 1.000000e+00, %cond.true ], [ %cond, %cond.end ]
  %mul = fmul double %cond9, 2.550000e+02
  %add = fadd double %mul, 5.000000e-01
  %conv = fptosi double %add to i32
  %conv10 = trunc i32 %conv to i8
  %8 = load i8*, i8** %cyan.addr, align 8
  store i8 %conv10, i8* %8, align 1
  br label %if.end.11

if.end.11:                                        ; preds = %cond.end.8, %do.end
  %9 = load i8*, i8** %magenta.addr, align 8
  %tobool12 = icmp ne i8* %9, null
  br i1 %tobool12, label %if.then.13, label %if.end.32

if.then.13:                                       ; preds = %if.end.11
  %10 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyka.addr, align 8
  %m = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %10, i32 0, i32 1
  %11 = load double, double* %m, align 8
  %cmp14 = fcmp ogt double %11, 1.000000e+00
  br i1 %cmp14, label %cond.true.16, label %cond.false.17

cond.true.16:                                     ; preds = %if.then.13
  br label %cond.end.26

cond.false.17:                                    ; preds = %if.then.13
  %12 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyka.addr, align 8
  %m18 = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %12, i32 0, i32 1
  %13 = load double, double* %m18, align 8
  %cmp19 = fcmp olt double %13, 0.000000e+00
  br i1 %cmp19, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %cond.false.17
  br label %cond.end.24

cond.false.22:                                    ; preds = %cond.false.17
  %14 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyka.addr, align 8
  %m23 = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %14, i32 0, i32 1
  %15 = load double, double* %m23, align 8
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.22, %cond.true.21
  %cond25 = phi double [ 0.000000e+00, %cond.true.21 ], [ %15, %cond.false.22 ]
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.end.24, %cond.true.16
  %cond27 = phi double [ 1.000000e+00, %cond.true.16 ], [ %cond25, %cond.end.24 ]
  %mul28 = fmul double %cond27, 2.550000e+02
  %add29 = fadd double %mul28, 5.000000e-01
  %conv30 = fptosi double %add29 to i32
  %conv31 = trunc i32 %conv30 to i8
  %16 = load i8*, i8** %magenta.addr, align 8
  store i8 %conv31, i8* %16, align 1
  br label %if.end.32

if.end.32:                                        ; preds = %cond.end.26, %if.end.11
  %17 = load i8*, i8** %yellow.addr, align 8
  %tobool33 = icmp ne i8* %17, null
  br i1 %tobool33, label %if.then.34, label %if.end.53

if.then.34:                                       ; preds = %if.end.32
  %18 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyka.addr, align 8
  %y = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %18, i32 0, i32 2
  %19 = load double, double* %y, align 8
  %cmp35 = fcmp ogt double %19, 1.000000e+00
  br i1 %cmp35, label %cond.true.37, label %cond.false.38

cond.true.37:                                     ; preds = %if.then.34
  br label %cond.end.47

cond.false.38:                                    ; preds = %if.then.34
  %20 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyka.addr, align 8
  %y39 = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %20, i32 0, i32 2
  %21 = load double, double* %y39, align 8
  %cmp40 = fcmp olt double %21, 0.000000e+00
  br i1 %cmp40, label %cond.true.42, label %cond.false.43

cond.true.42:                                     ; preds = %cond.false.38
  br label %cond.end.45

cond.false.43:                                    ; preds = %cond.false.38
  %22 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyka.addr, align 8
  %y44 = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %22, i32 0, i32 2
  %23 = load double, double* %y44, align 8
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.43, %cond.true.42
  %cond46 = phi double [ 0.000000e+00, %cond.true.42 ], [ %23, %cond.false.43 ]
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.end.45, %cond.true.37
  %cond48 = phi double [ 1.000000e+00, %cond.true.37 ], [ %cond46, %cond.end.45 ]
  %mul49 = fmul double %cond48, 2.550000e+02
  %add50 = fadd double %mul49, 5.000000e-01
  %conv51 = fptosi double %add50 to i32
  %conv52 = trunc i32 %conv51 to i8
  %24 = load i8*, i8** %yellow.addr, align 8
  store i8 %conv52, i8* %24, align 1
  br label %if.end.53

if.end.53:                                        ; preds = %cond.end.47, %if.end.32
  %25 = load i8*, i8** %black.addr, align 8
  %tobool54 = icmp ne i8* %25, null
  br i1 %tobool54, label %if.then.55, label %if.end.74

if.then.55:                                       ; preds = %if.end.53
  %26 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyka.addr, align 8
  %k = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %26, i32 0, i32 3
  %27 = load double, double* %k, align 8
  %cmp56 = fcmp ogt double %27, 1.000000e+00
  br i1 %cmp56, label %cond.true.58, label %cond.false.59

cond.true.58:                                     ; preds = %if.then.55
  br label %cond.end.68

cond.false.59:                                    ; preds = %if.then.55
  %28 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyka.addr, align 8
  %k60 = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %28, i32 0, i32 3
  %29 = load double, double* %k60, align 8
  %cmp61 = fcmp olt double %29, 0.000000e+00
  br i1 %cmp61, label %cond.true.63, label %cond.false.64

cond.true.63:                                     ; preds = %cond.false.59
  br label %cond.end.66

cond.false.64:                                    ; preds = %cond.false.59
  %30 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyka.addr, align 8
  %k65 = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %30, i32 0, i32 3
  %31 = load double, double* %k65, align 8
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.false.64, %cond.true.63
  %cond67 = phi double [ 0.000000e+00, %cond.true.63 ], [ %31, %cond.false.64 ]
  br label %cond.end.68

cond.end.68:                                      ; preds = %cond.end.66, %cond.true.58
  %cond69 = phi double [ 1.000000e+00, %cond.true.58 ], [ %cond67, %cond.end.66 ]
  %mul70 = fmul double %cond69, 2.550000e+02
  %add71 = fadd double %mul70, 5.000000e-01
  %conv72 = fptosi double %add71 to i32
  %conv73 = trunc i32 %conv72 to i8
  %32 = load i8*, i8** %black.addr, align 8
  store i8 %conv73, i8* %32, align 1
  br label %if.end.74

if.end.74:                                        ; preds = %cond.end.68, %if.end.53
  %33 = load i8*, i8** %alpha.addr, align 8
  %tobool75 = icmp ne i8* %33, null
  br i1 %tobool75, label %if.then.76, label %if.end.95

if.then.76:                                       ; preds = %if.end.74
  %34 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyka.addr, align 8
  %a = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %34, i32 0, i32 4
  %35 = load double, double* %a, align 8
  %cmp77 = fcmp ogt double %35, 1.000000e+00
  br i1 %cmp77, label %cond.true.79, label %cond.false.80

cond.true.79:                                     ; preds = %if.then.76
  br label %cond.end.89

cond.false.80:                                    ; preds = %if.then.76
  %36 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyka.addr, align 8
  %a81 = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %36, i32 0, i32 4
  %37 = load double, double* %a81, align 8
  %cmp82 = fcmp olt double %37, 0.000000e+00
  br i1 %cmp82, label %cond.true.84, label %cond.false.85

cond.true.84:                                     ; preds = %cond.false.80
  br label %cond.end.87

cond.false.85:                                    ; preds = %cond.false.80
  %38 = load %struct._GimpCMYK*, %struct._GimpCMYK** %cmyka.addr, align 8
  %a86 = getelementptr inbounds %struct._GimpCMYK, %struct._GimpCMYK* %38, i32 0, i32 4
  %39 = load double, double* %a86, align 8
  br label %cond.end.87

cond.end.87:                                      ; preds = %cond.false.85, %cond.true.84
  %cond88 = phi double [ 0.000000e+00, %cond.true.84 ], [ %39, %cond.false.85 ]
  br label %cond.end.89

cond.end.89:                                      ; preds = %cond.end.87, %cond.true.79
  %cond90 = phi double [ 1.000000e+00, %cond.true.79 ], [ %cond88, %cond.end.87 ]
  %mul91 = fmul double %cond90, 2.550000e+02
  %add92 = fadd double %mul91, 5.000000e-01
  %conv93 = fptosi double %add92 to i32
  %conv94 = trunc i32 %conv93 to i8
  %40 = load i8*, i8** %alpha.addr, align 8
  store i8 %conv94, i8* %40, align 1
  br label %if.end.95

if.end.95:                                        ; preds = %if.else, %cond.end.89, %if.end.74
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
