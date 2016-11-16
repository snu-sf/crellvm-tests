; ModuleID = './libgimpcolor/gimprgb.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInfo = type { i16, void (i8*)*, void (i8*)*, void (i8*, i8*)*, void (i8*, i8*)*, i8*, i16, i16, void (%struct._GTypeInstance*, i8*)*, %struct._GTypeValueTable* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GTypeValueTable = type { void (%struct._GValue*)*, void (%struct._GValue*)*, void (%struct._GValue*, %struct._GValue*)*, i8* (%struct._GValue*)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%union._GTypeCValue = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GParamSpecClass = type { %struct._GTypeClass, i64, void (%struct._GParamSpec*)*, void (%struct._GParamSpec*, %struct._GValue*)*, i32 (%struct._GParamSpec*, %struct._GValue*)*, i32 (%struct._GParamSpec*, %struct._GValue*, %struct._GValue*)*, [4 x i8*] }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GData = type opaque
%struct._GimpParamSpecRGB = type { %struct._GParamSpecBoxed, i32, %struct._GimpRGB }
%struct._GParamSpecBoxed = type { %struct._GParamSpec }

@gimp_rgb_get_type.rgb_type = internal global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"GimpRGB\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"LibGimpColor\00", align 1
@__func__.gimp_value_get_rgb = private unnamed_addr constant [19 x i8] c"gimp_value_get_rgb\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"GIMP_VALUE_HOLDS_RGB (value)\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"rgb != NULL\00", align 1
@__func__.gimp_value_set_rgb = private unnamed_addr constant [19 x i8] c"gimp_value_set_rgb\00", align 1
@__func__.gimp_rgb_set = private unnamed_addr constant [13 x i8] c"gimp_rgb_set\00", align 1
@__func__.gimp_rgb_set_alpha = private unnamed_addr constant [19 x i8] c"gimp_rgb_set_alpha\00", align 1
@__func__.gimp_rgb_set_uchar = private unnamed_addr constant [19 x i8] c"gimp_rgb_set_uchar\00", align 1
@__func__.gimp_rgb_get_uchar = private unnamed_addr constant [19 x i8] c"gimp_rgb_get_uchar\00", align 1
@__func__.gimp_rgb_add = private unnamed_addr constant [13 x i8] c"gimp_rgb_add\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"rgb1 != NULL\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"rgb2 != NULL\00", align 1
@__func__.gimp_rgb_subtract = private unnamed_addr constant [18 x i8] c"gimp_rgb_subtract\00", align 1
@__func__.gimp_rgb_multiply = private unnamed_addr constant [18 x i8] c"gimp_rgb_multiply\00", align 1
@__func__.gimp_rgb_distance = private unnamed_addr constant [18 x i8] c"gimp_rgb_distance\00", align 1
@__func__.gimp_rgb_max = private unnamed_addr constant [13 x i8] c"gimp_rgb_max\00", align 1
@__func__.gimp_rgb_min = private unnamed_addr constant [13 x i8] c"gimp_rgb_min\00", align 1
@__func__.gimp_rgb_clamp = private unnamed_addr constant [15 x i8] c"gimp_rgb_clamp\00", align 1
@__func__.gimp_rgb_gamma = private unnamed_addr constant [15 x i8] c"gimp_rgb_gamma\00", align 1
@__func__.gimp_rgb_luminance = private unnamed_addr constant [19 x i8] c"gimp_rgb_luminance\00", align 1
@__func__.gimp_rgb_luminance_uchar = private unnamed_addr constant [25 x i8] c"gimp_rgb_luminance_uchar\00", align 1
@__func__.gimp_rgb_intensity = private unnamed_addr constant [19 x i8] c"gimp_rgb_intensity\00", align 1
@__func__.gimp_rgb_intensity_uchar = private unnamed_addr constant [25 x i8] c"gimp_rgb_intensity_uchar\00", align 1
@__func__.gimp_rgb_composite = private unnamed_addr constant [19 x i8] c"gimp_rgb_composite\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"color1 != NULL\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"color2 != NULL\00", align 1
@__func__.gimp_rgba_set = private unnamed_addr constant [14 x i8] c"gimp_rgba_set\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"rgba != NULL\00", align 1
@__func__.gimp_rgba_set_uchar = private unnamed_addr constant [20 x i8] c"gimp_rgba_set_uchar\00", align 1
@__func__.gimp_rgba_get_uchar = private unnamed_addr constant [20 x i8] c"gimp_rgba_get_uchar\00", align 1
@__func__.gimp_rgba_add = private unnamed_addr constant [14 x i8] c"gimp_rgba_add\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"rgba1 != NULL\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"rgba2 != NULL\00", align 1
@__func__.gimp_rgba_subtract = private unnamed_addr constant [19 x i8] c"gimp_rgba_subtract\00", align 1
@__func__.gimp_rgba_multiply = private unnamed_addr constant [19 x i8] c"gimp_rgba_multiply\00", align 1
@__func__.gimp_rgba_distance = private unnamed_addr constant [19 x i8] c"gimp_rgba_distance\00", align 1
@gimp_param_rgb_get_type.spec_type = internal global i64 0, align 8
@gimp_param_rgb_get_type.type_info = internal constant %struct._GTypeInfo { i16 80, void (i8*)* null, void (i8*)* null, void (i8*, i8*)* bitcast (void (%struct._GParamSpecClass*)* @gimp_param_rgb_class_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null, i16 112, i16 0, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GParamSpec*)* @gimp_param_rgb_init to void (%struct._GTypeInstance*, i8*)*), %struct._GTypeValueTable* null }, align 8
@g_param_spec_types = external global i64*, align 8
@.str.11 = private unnamed_addr constant [13 x i8] c"GimpParamRGB\00", align 1
@__func__.gimp_param_spec_rgb_has_alpha = private unnamed_addr constant [30 x i8] c"gimp_param_spec_rgb_has_alpha\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"GIMP_IS_PARAM_SPEC_RGB (pspec)\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_rgb_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_rgb_get_type.rgb_type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_boxed_type_register_static(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* (i8*)* bitcast (%struct._GimpRGB* (%struct._GimpRGB*)* @gimp_rgb_copy to i8* (i8*)*), void (i8*)* @g_free)
  store i64 %call, i64* @gimp_rgb_get_type.rgb_type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gimp_rgb_get_type.rgb_type, align 8
  ret i64 %1
}

declare i64 @g_boxed_type_register_static(i8*, i8* (i8*)*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpRGB* @gimp_rgb_copy(%struct._GimpRGB* %rgb) #2 {
entry:
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %1 = bitcast %struct._GimpRGB* %0 to i8*
  %call = call noalias i8* @g_memdup(i8* %1, i32 32)
  %2 = bitcast i8* %call to %struct._GimpRGB*
  ret %struct._GimpRGB* %2
}

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_value_get_rgb(%struct._GValue* %value, %struct._GimpRGB* %rgb) #2 {
entry:
  %value.addr = alloca %struct._GValue*, align 8
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %0, %struct._GValue** %__val, align 8
  %call = call i64 @gimp_rgb_get_type() #7
  store i64 %call, i64* %__t, align 8
  %1 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %2 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %4 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %5 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %6 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_value_holds(%struct._GValue* %5, i64 %6) #8
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %__r, align 4
  store i32 %7, i32* %tmp
  %8 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_value_get_rgb, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.21

if.end.8:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  br label %do.body.9

do.body.9:                                        ; preds = %do.end
  %9 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %cmp10 = icmp ne %struct._GimpRGB* %9, null
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %do.body.9
  br label %if.end.13

if.else.12:                                       ; preds = %do.body.9
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_value_get_rgb, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.21

if.end.13:                                        ; preds = %if.then.11
  br label %do.end.14

do.end.14:                                        ; preds = %if.end.13
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data, i32 0, i64 0
  %v_pointer = bitcast %union.anon* %arrayidx to i8**
  %11 = load i8*, i8** %v_pointer, align 8
  %tobool15 = icmp ne i8* %11, null
  br i1 %tobool15, label %if.then.16, label %if.else.20

if.then.16:                                       ; preds = %do.end.14
  %12 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data17 = getelementptr inbounds %struct._GValue, %struct._GValue* %13, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data17, i32 0, i64 0
  %v_pointer19 = bitcast %union.anon* %arrayidx18 to i8**
  %14 = load i8*, i8** %v_pointer19, align 8
  %15 = bitcast i8* %14 to %struct._GimpRGB*
  %16 = bitcast %struct._GimpRGB* %12 to i8*
  %17 = bitcast %struct._GimpRGB* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 32, i32 8, i1 false)
  br label %if.end.21

if.else.20:                                       ; preds = %do.end.14
  %18 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  call void @gimp_rgba_set(%struct._GimpRGB* %18, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.7, %if.else.12, %if.else.20, %if.then.16
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_value_holds(%struct._GValue*, i64) #3

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define void @gimp_rgba_set(%struct._GimpRGB* %rgba, double %r, double %g, double %b, double %a) #2 {
entry:
  %rgba.addr = alloca %struct._GimpRGB*, align 8
  %r.addr = alloca double, align 8
  %g.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  %a.addr = alloca double, align 8
  store %struct._GimpRGB* %rgba, %struct._GimpRGB** %rgba.addr, align 8
  store double %r, double* %r.addr, align 8
  store double %g, double* %g.addr, align 8
  store double %b, double* %b.addr, align 8
  store double %a, double* %a.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba.addr, align 8
  %cmp = icmp ne %struct._GimpRGB* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.gimp_rgba_set, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load double, double* %r.addr, align 8
  %2 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba.addr, align 8
  %r1 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %2, i32 0, i32 0
  store double %1, double* %r1, align 8
  %3 = load double, double* %g.addr, align 8
  %4 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba.addr, align 8
  %g2 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %4, i32 0, i32 1
  store double %3, double* %g2, align 8
  %5 = load double, double* %b.addr, align 8
  %6 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba.addr, align 8
  %b3 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %6, i32 0, i32 2
  store double %5, double* %b3, align 8
  %7 = load double, double* %a.addr, align 8
  %8 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba.addr, align 8
  %a4 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %8, i32 0, i32 3
  store double %7, double* %a4, align 8
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_value_set_rgb(%struct._GValue* %value, %struct._GimpRGB* %rgb) #2 {
entry:
  %value.addr = alloca %struct._GValue*, align 8
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %0, %struct._GValue** %__val, align 8
  %call = call i64 @gimp_rgb_get_type() #7
  store i64 %call, i64* %__t, align 8
  %1 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %2 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %4 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %5 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %6 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_value_holds(%struct._GValue* %5, i64 %6) #8
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %__r, align 4
  store i32 %7, i32* %tmp
  %8 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_value_set_rgb, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  br label %do.body.9

do.body.9:                                        ; preds = %do.end
  %9 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %cmp10 = icmp ne %struct._GimpRGB* %9, null
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %do.body.9
  br label %if.end.13

if.else.12:                                       ; preds = %do.body.9
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_value_set_rgb, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.13:                                        ; preds = %if.then.11
  br label %do.end.14

do.end.14:                                        ; preds = %if.end.13
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %11 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %12 = bitcast %struct._GimpRGB* %11 to i8*
  call void @g_value_set_boxed(%struct._GValue* %10, i8* %12)
  br label %return

return:                                           ; preds = %do.end.14, %if.else.12, %if.else.7
  ret void
}

declare void @g_value_set_boxed(%struct._GValue*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_rgb_set(%struct._GimpRGB* %rgb, double %r, double %g, double %b) #2 {
entry:
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  %r.addr = alloca double, align 8
  %g.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  store double %r, double* %r.addr, align 8
  store double %g, double* %g.addr, align 8
  store double %b, double* %b.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %cmp = icmp ne %struct._GimpRGB* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.gimp_rgb_set, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load double, double* %r.addr, align 8
  %2 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %r1 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %2, i32 0, i32 0
  store double %1, double* %r1, align 8
  %3 = load double, double* %g.addr, align 8
  %4 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %g2 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %4, i32 0, i32 1
  store double %3, double* %g2, align 8
  %5 = load double, double* %b.addr, align 8
  %6 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %b3 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %6, i32 0, i32 2
  store double %5, double* %b3, align 8
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_rgb_set_alpha(%struct._GimpRGB* %rgb, double %a) #2 {
entry:
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  %a.addr = alloca double, align 8
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  store double %a, double* %a.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %cmp = icmp ne %struct._GimpRGB* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_rgb_set_alpha, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load double, double* %a.addr, align 8
  %2 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %a1 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %2, i32 0, i32 3
  store double %1, double* %a1, align 8
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_rgb_set_uchar(%struct._GimpRGB* %rgb, i8 zeroext %r, i8 zeroext %g, i8 zeroext %b) #2 {
entry:
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  %r.addr = alloca i8, align 1
  %g.addr = alloca i8, align 1
  %b.addr = alloca i8, align 1
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  store i8 %r, i8* %r.addr, align 1
  store i8 %g, i8* %g.addr, align 1
  store i8 %b, i8* %b.addr, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %cmp = icmp ne %struct._GimpRGB* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_rgb_set_uchar, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i8, i8* %r.addr, align 1
  %conv = uitofp i8 %1 to double
  %div = fdiv double %conv, 2.550000e+02
  %2 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %r1 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %2, i32 0, i32 0
  store double %div, double* %r1, align 8
  %3 = load i8, i8* %g.addr, align 1
  %conv2 = uitofp i8 %3 to double
  %div3 = fdiv double %conv2, 2.550000e+02
  %4 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %g4 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %4, i32 0, i32 1
  store double %div3, double* %g4, align 8
  %5 = load i8, i8* %b.addr, align 1
  %conv5 = uitofp i8 %5 to double
  %div6 = fdiv double %conv5, 2.550000e+02
  %6 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %b7 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %6, i32 0, i32 2
  store double %div6, double* %b7, align 8
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_rgb_get_uchar(%struct._GimpRGB* %rgb, i8* %r, i8* %g, i8* %b) #2 {
entry:
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  %r.addr = alloca i8*, align 8
  %g.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  store i8* %r, i8** %r.addr, align 8
  store i8* %g, i8** %g.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %cmp = icmp ne %struct._GimpRGB* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_rgb_get_uchar, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.56

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i8*, i8** %r.addr, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then.1, label %if.end.12

if.then.1:                                        ; preds = %do.end
  %2 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %r2 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %2, i32 0, i32 0
  %3 = load double, double* %r2, align 8
  %cmp3 = fcmp ogt double %3, 1.000000e+00
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.1
  br label %cond.end.9

cond.false:                                       ; preds = %if.then.1
  %4 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %r4 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %4, i32 0, i32 0
  %5 = load double, double* %r4, align 8
  %cmp5 = fcmp olt double %5, 0.000000e+00
  br i1 %cmp5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.false
  br label %cond.end

cond.false.7:                                     ; preds = %cond.false
  %6 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %r8 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %6, i32 0, i32 0
  %7 = load double, double* %r8, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.7, %cond.true.6
  %cond = phi double [ 0.000000e+00, %cond.true.6 ], [ %7, %cond.false.7 ]
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.end, %cond.true
  %cond10 = phi double [ 1.000000e+00, %cond.true ], [ %cond, %cond.end ]
  %mul = fmul double %cond10, 2.550000e+02
  %add = fadd double %mul, 5.000000e-01
  %conv = fptosi double %add to i32
  %conv11 = trunc i32 %conv to i8
  %8 = load i8*, i8** %r.addr, align 8
  store i8 %conv11, i8* %8, align 1
  br label %if.end.12

if.end.12:                                        ; preds = %cond.end.9, %do.end
  %9 = load i8*, i8** %g.addr, align 8
  %tobool13 = icmp ne i8* %9, null
  br i1 %tobool13, label %if.then.14, label %if.end.34

if.then.14:                                       ; preds = %if.end.12
  %10 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %g15 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %10, i32 0, i32 1
  %11 = load double, double* %g15, align 8
  %cmp16 = fcmp ogt double %11, 1.000000e+00
  br i1 %cmp16, label %cond.true.18, label %cond.false.19

cond.true.18:                                     ; preds = %if.then.14
  br label %cond.end.28

cond.false.19:                                    ; preds = %if.then.14
  %12 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %g20 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %12, i32 0, i32 1
  %13 = load double, double* %g20, align 8
  %cmp21 = fcmp olt double %13, 0.000000e+00
  br i1 %cmp21, label %cond.true.23, label %cond.false.24

cond.true.23:                                     ; preds = %cond.false.19
  br label %cond.end.26

cond.false.24:                                    ; preds = %cond.false.19
  %14 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %g25 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %14, i32 0, i32 1
  %15 = load double, double* %g25, align 8
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.24, %cond.true.23
  %cond27 = phi double [ 0.000000e+00, %cond.true.23 ], [ %15, %cond.false.24 ]
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.end.26, %cond.true.18
  %cond29 = phi double [ 1.000000e+00, %cond.true.18 ], [ %cond27, %cond.end.26 ]
  %mul30 = fmul double %cond29, 2.550000e+02
  %add31 = fadd double %mul30, 5.000000e-01
  %conv32 = fptosi double %add31 to i32
  %conv33 = trunc i32 %conv32 to i8
  %16 = load i8*, i8** %g.addr, align 8
  store i8 %conv33, i8* %16, align 1
  br label %if.end.34

if.end.34:                                        ; preds = %cond.end.28, %if.end.12
  %17 = load i8*, i8** %b.addr, align 8
  %tobool35 = icmp ne i8* %17, null
  br i1 %tobool35, label %if.then.36, label %if.end.56

if.then.36:                                       ; preds = %if.end.34
  %18 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %b37 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %18, i32 0, i32 2
  %19 = load double, double* %b37, align 8
  %cmp38 = fcmp ogt double %19, 1.000000e+00
  br i1 %cmp38, label %cond.true.40, label %cond.false.41

cond.true.40:                                     ; preds = %if.then.36
  br label %cond.end.50

cond.false.41:                                    ; preds = %if.then.36
  %20 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %b42 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %20, i32 0, i32 2
  %21 = load double, double* %b42, align 8
  %cmp43 = fcmp olt double %21, 0.000000e+00
  br i1 %cmp43, label %cond.true.45, label %cond.false.46

cond.true.45:                                     ; preds = %cond.false.41
  br label %cond.end.48

cond.false.46:                                    ; preds = %cond.false.41
  %22 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %b47 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %22, i32 0, i32 2
  %23 = load double, double* %b47, align 8
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.46, %cond.true.45
  %cond49 = phi double [ 0.000000e+00, %cond.true.45 ], [ %23, %cond.false.46 ]
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.end.48, %cond.true.40
  %cond51 = phi double [ 1.000000e+00, %cond.true.40 ], [ %cond49, %cond.end.48 ]
  %mul52 = fmul double %cond51, 2.550000e+02
  %add53 = fadd double %mul52, 5.000000e-01
  %conv54 = fptosi double %add53 to i32
  %conv55 = trunc i32 %conv54 to i8
  %24 = load i8*, i8** %b.addr, align 8
  store i8 %conv55, i8* %24, align 1
  br label %if.end.56

if.end.56:                                        ; preds = %if.else, %cond.end.50, %if.end.34
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_rgb_add(%struct._GimpRGB* %rgb1, %struct._GimpRGB* %rgb2) #2 {
entry:
  %rgb1.addr = alloca %struct._GimpRGB*, align 8
  %rgb2.addr = alloca %struct._GimpRGB*, align 8
  store %struct._GimpRGB* %rgb1, %struct._GimpRGB** %rgb1.addr, align 8
  store %struct._GimpRGB* %rgb2, %struct._GimpRGB** %rgb2.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb1.addr, align 8
  %cmp = icmp ne %struct._GimpRGB* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.gimp_rgb_add, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb2.addr, align 8
  %cmp2 = icmp ne %struct._GimpRGB* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.gimp_rgb_add, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb2.addr, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %2, i32 0, i32 0
  %3 = load double, double* %r, align 8
  %4 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb1.addr, align 8
  %r7 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %4, i32 0, i32 0
  %5 = load double, double* %r7, align 8
  %add = fadd double %5, %3
  store double %add, double* %r7, align 8
  %6 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb2.addr, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %6, i32 0, i32 1
  %7 = load double, double* %g, align 8
  %8 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb1.addr, align 8
  %g8 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %8, i32 0, i32 1
  %9 = load double, double* %g8, align 8
  %add9 = fadd double %9, %7
  store double %add9, double* %g8, align 8
  %10 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb2.addr, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %10, i32 0, i32 2
  %11 = load double, double* %b, align 8
  %12 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb1.addr, align 8
  %b10 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %12, i32 0, i32 2
  %13 = load double, double* %b10, align 8
  %add11 = fadd double %13, %11
  store double %add11, double* %b10, align 8
  br label %return

return:                                           ; preds = %do.end.6, %if.else.4, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_rgb_subtract(%struct._GimpRGB* %rgb1, %struct._GimpRGB* %rgb2) #2 {
entry:
  %rgb1.addr = alloca %struct._GimpRGB*, align 8
  %rgb2.addr = alloca %struct._GimpRGB*, align 8
  store %struct._GimpRGB* %rgb1, %struct._GimpRGB** %rgb1.addr, align 8
  store %struct._GimpRGB* %rgb2, %struct._GimpRGB** %rgb2.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb1.addr, align 8
  %cmp = icmp ne %struct._GimpRGB* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_rgb_subtract, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb2.addr, align 8
  %cmp2 = icmp ne %struct._GimpRGB* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_rgb_subtract, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb2.addr, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %2, i32 0, i32 0
  %3 = load double, double* %r, align 8
  %4 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb1.addr, align 8
  %r7 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %4, i32 0, i32 0
  %5 = load double, double* %r7, align 8
  %sub = fsub double %5, %3
  store double %sub, double* %r7, align 8
  %6 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb2.addr, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %6, i32 0, i32 1
  %7 = load double, double* %g, align 8
  %8 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb1.addr, align 8
  %g8 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %8, i32 0, i32 1
  %9 = load double, double* %g8, align 8
  %sub9 = fsub double %9, %7
  store double %sub9, double* %g8, align 8
  %10 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb2.addr, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %10, i32 0, i32 2
  %11 = load double, double* %b, align 8
  %12 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb1.addr, align 8
  %b10 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %12, i32 0, i32 2
  %13 = load double, double* %b10, align 8
  %sub11 = fsub double %13, %11
  store double %sub11, double* %b10, align 8
  br label %return

return:                                           ; preds = %do.end.6, %if.else.4, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_rgb_multiply(%struct._GimpRGB* %rgb, double %factor) #2 {
entry:
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  %factor.addr = alloca double, align 8
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  store double %factor, double* %factor.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %cmp = icmp ne %struct._GimpRGB* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_rgb_multiply, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load double, double* %factor.addr, align 8
  %2 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %2, i32 0, i32 0
  %3 = load double, double* %r, align 8
  %mul = fmul double %3, %1
  store double %mul, double* %r, align 8
  %4 = load double, double* %factor.addr, align 8
  %5 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %5, i32 0, i32 1
  %6 = load double, double* %g, align 8
  %mul1 = fmul double %6, %4
  store double %mul1, double* %g, align 8
  %7 = load double, double* %factor.addr, align 8
  %8 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %8, i32 0, i32 2
  %9 = load double, double* %b, align 8
  %mul2 = fmul double %9, %7
  store double %mul2, double* %b, align 8
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define double @gimp_rgb_distance(%struct._GimpRGB* %rgb1, %struct._GimpRGB* %rgb2) #2 {
entry:
  %retval = alloca double, align 8
  %rgb1.addr = alloca %struct._GimpRGB*, align 8
  %rgb2.addr = alloca %struct._GimpRGB*, align 8
  store %struct._GimpRGB* %rgb1, %struct._GimpRGB** %rgb1.addr, align 8
  store %struct._GimpRGB* %rgb2, %struct._GimpRGB** %rgb2.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb1.addr, align 8
  %cmp = icmp ne %struct._GimpRGB* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_rgb_distance, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb2.addr, align 8
  %cmp2 = icmp ne %struct._GimpRGB* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_rgb_distance, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb1.addr, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %2, i32 0, i32 0
  %3 = load double, double* %r, align 8
  %4 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb2.addr, align 8
  %r7 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %4, i32 0, i32 0
  %5 = load double, double* %r7, align 8
  %sub = fsub double %3, %5
  %call = call double @fabs(double %sub) #7
  %6 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb1.addr, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %6, i32 0, i32 1
  %7 = load double, double* %g, align 8
  %8 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb2.addr, align 8
  %g8 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %8, i32 0, i32 1
  %9 = load double, double* %g8, align 8
  %sub9 = fsub double %7, %9
  %call10 = call double @fabs(double %sub9) #7
  %add = fadd double %call, %call10
  %10 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb1.addr, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %10, i32 0, i32 2
  %11 = load double, double* %b, align 8
  %12 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb2.addr, align 8
  %b11 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %12, i32 0, i32 2
  %13 = load double, double* %b11, align 8
  %sub12 = fsub double %11, %13
  %call13 = call double @fabs(double %sub12) #7
  %add14 = fadd double %add, %call13
  store double %add14, double* %retval
  br label %return

return:                                           ; preds = %do.end.6, %if.else.4, %if.else
  %14 = load double, double* %retval
  ret double %14
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #5

; Function Attrs: nounwind uwtable
define double @gimp_rgb_max(%struct._GimpRGB* %rgb) #2 {
entry:
  %retval = alloca double, align 8
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %cmp = icmp ne %struct._GimpRGB* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.gimp_rgb_max, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %1, i32 0, i32 0
  %2 = load double, double* %r, align 8
  %3 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %3, i32 0, i32 1
  %4 = load double, double* %g, align 8
  %cmp1 = fcmp ogt double %2, %4
  br i1 %cmp1, label %if.then.2, label %if.else.7

if.then.2:                                        ; preds = %do.end
  %5 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %r3 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %5, i32 0, i32 0
  %6 = load double, double* %r3, align 8
  %7 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %7, i32 0, i32 2
  %8 = load double, double* %b, align 8
  %cmp4 = fcmp ogt double %6, %8
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.2
  %9 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %r5 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %9, i32 0, i32 0
  %10 = load double, double* %r5, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.2
  %11 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %b6 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %11, i32 0, i32 2
  %12 = load double, double* %b6, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %10, %cond.true ], [ %12, %cond.false ]
  store double %cond, double* %retval
  br label %return

if.else.7:                                        ; preds = %do.end
  %13 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %g8 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %13, i32 0, i32 1
  %14 = load double, double* %g8, align 8
  %15 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %b9 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %15, i32 0, i32 2
  %16 = load double, double* %b9, align 8
  %cmp10 = fcmp ogt double %14, %16
  br i1 %cmp10, label %cond.true.11, label %cond.false.13

cond.true.11:                                     ; preds = %if.else.7
  %17 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %g12 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %17, i32 0, i32 1
  %18 = load double, double* %g12, align 8
  br label %cond.end.15

cond.false.13:                                    ; preds = %if.else.7
  %19 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %b14 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %19, i32 0, i32 2
  %20 = load double, double* %b14, align 8
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.13, %cond.true.11
  %cond16 = phi double [ %18, %cond.true.11 ], [ %20, %cond.false.13 ]
  store double %cond16, double* %retval
  br label %return

return:                                           ; preds = %cond.end.15, %cond.end, %if.else
  %21 = load double, double* %retval
  ret double %21
}

; Function Attrs: nounwind uwtable
define double @gimp_rgb_min(%struct._GimpRGB* %rgb) #2 {
entry:
  %retval = alloca double, align 8
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %cmp = icmp ne %struct._GimpRGB* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.gimp_rgb_min, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %1, i32 0, i32 0
  %2 = load double, double* %r, align 8
  %3 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %3, i32 0, i32 1
  %4 = load double, double* %g, align 8
  %cmp1 = fcmp olt double %2, %4
  br i1 %cmp1, label %if.then.2, label %if.else.7

if.then.2:                                        ; preds = %do.end
  %5 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %r3 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %5, i32 0, i32 0
  %6 = load double, double* %r3, align 8
  %7 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %7, i32 0, i32 2
  %8 = load double, double* %b, align 8
  %cmp4 = fcmp olt double %6, %8
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.2
  %9 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %r5 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %9, i32 0, i32 0
  %10 = load double, double* %r5, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.2
  %11 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %b6 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %11, i32 0, i32 2
  %12 = load double, double* %b6, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %10, %cond.true ], [ %12, %cond.false ]
  store double %cond, double* %retval
  br label %return

if.else.7:                                        ; preds = %do.end
  %13 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %g8 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %13, i32 0, i32 1
  %14 = load double, double* %g8, align 8
  %15 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %b9 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %15, i32 0, i32 2
  %16 = load double, double* %b9, align 8
  %cmp10 = fcmp olt double %14, %16
  br i1 %cmp10, label %cond.true.11, label %cond.false.13

cond.true.11:                                     ; preds = %if.else.7
  %17 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %g12 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %17, i32 0, i32 1
  %18 = load double, double* %g12, align 8
  br label %cond.end.15

cond.false.13:                                    ; preds = %if.else.7
  %19 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %b14 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %19, i32 0, i32 2
  %20 = load double, double* %b14, align 8
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.13, %cond.true.11
  %cond16 = phi double [ %18, %cond.true.11 ], [ %20, %cond.false.13 ]
  store double %cond16, double* %retval
  br label %return

return:                                           ; preds = %cond.end.15, %cond.end, %if.else
  %21 = load double, double* %retval
  ret double %21
}

; Function Attrs: nounwind uwtable
define void @gimp_rgb_clamp(%struct._GimpRGB* %rgb) #2 {
entry:
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %cmp = icmp ne %struct._GimpRGB* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_rgb_clamp, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %1, i32 0, i32 0
  %2 = load double, double* %r, align 8
  %cmp1 = fcmp ogt double %2, 1.000000e+00
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  br label %cond.end.7

cond.false:                                       ; preds = %do.end
  %3 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %r2 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %3, i32 0, i32 0
  %4 = load double, double* %r2, align 8
  %cmp3 = fcmp olt double %4, 0.000000e+00
  br i1 %cmp3, label %cond.true.4, label %cond.false.5

cond.true.4:                                      ; preds = %cond.false
  br label %cond.end

cond.false.5:                                     ; preds = %cond.false
  %5 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %r6 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %5, i32 0, i32 0
  %6 = load double, double* %r6, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.5, %cond.true.4
  %cond = phi double [ 0.000000e+00, %cond.true.4 ], [ %6, %cond.false.5 ]
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.end, %cond.true
  %cond8 = phi double [ 1.000000e+00, %cond.true ], [ %cond, %cond.end ]
  %7 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %r9 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %7, i32 0, i32 0
  store double %cond8, double* %r9, align 8
  %8 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %8, i32 0, i32 1
  %9 = load double, double* %g, align 8
  %cmp10 = fcmp ogt double %9, 1.000000e+00
  br i1 %cmp10, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %cond.end.7
  br label %cond.end.20

cond.false.12:                                    ; preds = %cond.end.7
  %10 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %g13 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %10, i32 0, i32 1
  %11 = load double, double* %g13, align 8
  %cmp14 = fcmp olt double %11, 0.000000e+00
  br i1 %cmp14, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %cond.false.12
  br label %cond.end.18

cond.false.16:                                    ; preds = %cond.false.12
  %12 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %g17 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %12, i32 0, i32 1
  %13 = load double, double* %g17, align 8
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.16, %cond.true.15
  %cond19 = phi double [ 0.000000e+00, %cond.true.15 ], [ %13, %cond.false.16 ]
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.end.18, %cond.true.11
  %cond21 = phi double [ 1.000000e+00, %cond.true.11 ], [ %cond19, %cond.end.18 ]
  %14 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %g22 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %14, i32 0, i32 1
  store double %cond21, double* %g22, align 8
  %15 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %15, i32 0, i32 2
  %16 = load double, double* %b, align 8
  %cmp23 = fcmp ogt double %16, 1.000000e+00
  br i1 %cmp23, label %cond.true.24, label %cond.false.25

cond.true.24:                                     ; preds = %cond.end.20
  br label %cond.end.33

cond.false.25:                                    ; preds = %cond.end.20
  %17 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %b26 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %17, i32 0, i32 2
  %18 = load double, double* %b26, align 8
  %cmp27 = fcmp olt double %18, 0.000000e+00
  br i1 %cmp27, label %cond.true.28, label %cond.false.29

cond.true.28:                                     ; preds = %cond.false.25
  br label %cond.end.31

cond.false.29:                                    ; preds = %cond.false.25
  %19 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %b30 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %19, i32 0, i32 2
  %20 = load double, double* %b30, align 8
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.29, %cond.true.28
  %cond32 = phi double [ 0.000000e+00, %cond.true.28 ], [ %20, %cond.false.29 ]
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.end.31, %cond.true.24
  %cond34 = phi double [ 1.000000e+00, %cond.true.24 ], [ %cond32, %cond.end.31 ]
  %21 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %b35 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %21, i32 0, i32 2
  store double %cond34, double* %b35, align 8
  %22 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %22, i32 0, i32 3
  %23 = load double, double* %a, align 8
  %cmp36 = fcmp ogt double %23, 1.000000e+00
  br i1 %cmp36, label %cond.true.37, label %cond.false.38

cond.true.37:                                     ; preds = %cond.end.33
  br label %cond.end.46

cond.false.38:                                    ; preds = %cond.end.33
  %24 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %a39 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %24, i32 0, i32 3
  %25 = load double, double* %a39, align 8
  %cmp40 = fcmp olt double %25, 0.000000e+00
  br i1 %cmp40, label %cond.true.41, label %cond.false.42

cond.true.41:                                     ; preds = %cond.false.38
  br label %cond.end.44

cond.false.42:                                    ; preds = %cond.false.38
  %26 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %a43 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %26, i32 0, i32 3
  %27 = load double, double* %a43, align 8
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.42, %cond.true.41
  %cond45 = phi double [ 0.000000e+00, %cond.true.41 ], [ %27, %cond.false.42 ]
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.end.44, %cond.true.37
  %cond47 = phi double [ 1.000000e+00, %cond.true.37 ], [ %cond45, %cond.end.44 ]
  %28 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %a48 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %28, i32 0, i32 3
  store double %cond47, double* %a48, align 8
  br label %return

return:                                           ; preds = %cond.end.46, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_rgb_gamma(%struct._GimpRGB* %rgb, double %gamma) #2 {
entry:
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  %gamma.addr = alloca double, align 8
  %ig = alloca double, align 8
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  store double %gamma, double* %gamma.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %cmp = icmp ne %struct._GimpRGB* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_rgb_gamma, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load double, double* %gamma.addr, align 8
  %cmp1 = fcmp une double %1, 0.000000e+00
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %do.end
  %2 = load double, double* %gamma.addr, align 8
  %div = fdiv double 1.000000e+00, %2
  store double %div, double* %ig, align 8
  br label %if.end.4

if.else.3:                                        ; preds = %do.end
  store double 0.000000e+00, double* %ig, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.else.3, %if.then.2
  %3 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %3, i32 0, i32 0
  %4 = load double, double* %r, align 8
  %5 = load double, double* %ig, align 8
  %call = call double @pow(double %4, double %5) #4
  %6 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %r5 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %6, i32 0, i32 0
  store double %call, double* %r5, align 8
  %7 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %7, i32 0, i32 1
  %8 = load double, double* %g, align 8
  %9 = load double, double* %ig, align 8
  %call6 = call double @pow(double %8, double %9) #4
  %10 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %g7 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %10, i32 0, i32 1
  store double %call6, double* %g7, align 8
  %11 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %11, i32 0, i32 2
  %12 = load double, double* %b, align 8
  %13 = load double, double* %ig, align 8
  %call8 = call double @pow(double %12, double %13) #4
  %14 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %b9 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %14, i32 0, i32 2
  store double %call8, double* %b9, align 8
  br label %return

return:                                           ; preds = %if.end.4, %if.else
  ret void
}

; Function Attrs: nounwind
declare double @pow(double, double) #6

; Function Attrs: nounwind uwtable
define double @gimp_rgb_luminance(%struct._GimpRGB* %rgb) #2 {
entry:
  %retval = alloca double, align 8
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  %luminance = alloca double, align 8
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %cmp = icmp ne %struct._GimpRGB* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_rgb_luminance, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %1, i32 0, i32 0
  %2 = load double, double* %r, align 8
  %mul = fmul double %2, 2.126000e-01
  %3 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %3, i32 0, i32 1
  %4 = load double, double* %g, align 8
  %mul1 = fmul double %4, 7.152000e-01
  %add = fadd double %mul, %mul1
  %5 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %5, i32 0, i32 2
  %6 = load double, double* %b, align 8
  %mul2 = fmul double %6, 7.220000e-02
  %add3 = fadd double %add, %mul2
  store double %add3, double* %luminance, align 8
  %7 = load double, double* %luminance, align 8
  %cmp4 = fcmp ogt double %7, 1.000000e+00
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  br label %cond.end.8

cond.false:                                       ; preds = %do.end
  %8 = load double, double* %luminance, align 8
  %cmp5 = fcmp olt double %8, 0.000000e+00
  br i1 %cmp5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.false
  br label %cond.end

cond.false.7:                                     ; preds = %cond.false
  %9 = load double, double* %luminance, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.7, %cond.true.6
  %cond = phi double [ 0.000000e+00, %cond.true.6 ], [ %9, %cond.false.7 ]
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.end, %cond.true
  %cond9 = phi double [ 1.000000e+00, %cond.true ], [ %cond, %cond.end ]
  store double %cond9, double* %retval
  br label %return

return:                                           ; preds = %cond.end.8, %if.else
  %10 = load double, double* %retval
  ret double %10
}

; Function Attrs: nounwind uwtable
define zeroext i8 @gimp_rgb_luminance_uchar(%struct._GimpRGB* %rgb) #2 {
entry:
  %retval = alloca i8, align 1
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %cmp = icmp ne %struct._GimpRGB* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_rgb_luminance_uchar, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  store i8 0, i8* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %call = call double @gimp_rgb_luminance(%struct._GimpRGB* %1)
  %mul = fmul double %call, 2.550000e+02
  %add = fadd double %mul, 5.000000e-01
  %conv = fptosi double %add to i32
  %conv1 = trunc i32 %conv to i8
  store i8 %conv1, i8* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %2 = load i8, i8* %retval
  ret i8 %2
}

; Function Attrs: nounwind uwtable
define double @gimp_rgb_intensity(%struct._GimpRGB* %rgb) #2 {
entry:
  %retval = alloca double, align 8
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  %intensity = alloca double, align 8
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %cmp = icmp ne %struct._GimpRGB* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_rgb_intensity, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %1, i32 0, i32 0
  %2 = load double, double* %r, align 8
  %mul = fmul double %2, 3.000000e-01
  %3 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %3, i32 0, i32 1
  %4 = load double, double* %g, align 8
  %mul1 = fmul double %4, 5.900000e-01
  %add = fadd double %mul, %mul1
  %5 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %5, i32 0, i32 2
  %6 = load double, double* %b, align 8
  %mul2 = fmul double %6, 1.100000e-01
  %add3 = fadd double %add, %mul2
  store double %add3, double* %intensity, align 8
  %7 = load double, double* %intensity, align 8
  %cmp4 = fcmp ogt double %7, 1.000000e+00
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  br label %cond.end.8

cond.false:                                       ; preds = %do.end
  %8 = load double, double* %intensity, align 8
  %cmp5 = fcmp olt double %8, 0.000000e+00
  br i1 %cmp5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.false
  br label %cond.end

cond.false.7:                                     ; preds = %cond.false
  %9 = load double, double* %intensity, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.7, %cond.true.6
  %cond = phi double [ 0.000000e+00, %cond.true.6 ], [ %9, %cond.false.7 ]
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.end, %cond.true
  %cond9 = phi double [ 1.000000e+00, %cond.true ], [ %cond, %cond.end ]
  store double %cond9, double* %retval
  br label %return

return:                                           ; preds = %cond.end.8, %if.else
  %10 = load double, double* %retval
  ret double %10
}

; Function Attrs: nounwind uwtable
define zeroext i8 @gimp_rgb_intensity_uchar(%struct._GimpRGB* %rgb) #2 {
entry:
  %retval = alloca i8, align 1
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %cmp = icmp ne %struct._GimpRGB* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_rgb_intensity_uchar, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  store i8 0, i8* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %call = call double @gimp_rgb_intensity(%struct._GimpRGB* %1)
  %mul = fmul double %call, 2.550000e+02
  %add = fadd double %mul, 5.000000e-01
  %conv = fptosi double %add to i32
  %conv1 = trunc i32 %conv to i8
  store i8 %conv1, i8* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %2 = load i8, i8* %retval
  ret i8 %2
}

; Function Attrs: nounwind uwtable
define void @gimp_rgb_composite(%struct._GimpRGB* %color1, %struct._GimpRGB* %color2, i32 %mode) #2 {
entry:
  %color1.addr = alloca %struct._GimpRGB*, align 8
  %color2.addr = alloca %struct._GimpRGB*, align 8
  %mode.addr = alloca i32, align 4
  %factor = alloca double, align 8
  %factor38 = alloca double, align 8
  store %struct._GimpRGB* %color1, %struct._GimpRGB** %color1.addr, align 8
  store %struct._GimpRGB* %color2, %struct._GimpRGB** %color2.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %color1.addr, align 8
  %cmp = icmp ne %struct._GimpRGB* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_rgb_composite, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0))
  br label %sw.epilog

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpRGB*, %struct._GimpRGB** %color2.addr, align 8
  %cmp2 = icmp ne %struct._GimpRGB* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_rgb_composite, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0))
  br label %sw.epilog

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load i32, i32* %mode.addr, align 4
  switch i32 %2, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.7
    i32 2, label %sw.bb.34
  ]

sw.bb:                                            ; preds = %do.end.6
  br label %sw.epilog

sw.bb.7:                                          ; preds = %do.end.6
  %3 = load %struct._GimpRGB*, %struct._GimpRGB** %color2.addr, align 8
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %3, i32 0, i32 3
  %4 = load double, double* %a, align 8
  %cmp8 = fcmp oeq double %4, 1.000000e+00
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %sw.bb.7
  %5 = load %struct._GimpRGB*, %struct._GimpRGB** %color1.addr, align 8
  %6 = load %struct._GimpRGB*, %struct._GimpRGB** %color2.addr, align 8
  %7 = bitcast %struct._GimpRGB* %5 to i8*
  %8 = bitcast %struct._GimpRGB* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 32, i32 8, i1 false)
  br label %if.end.33

if.else.10:                                       ; preds = %sw.bb.7
  %9 = load %struct._GimpRGB*, %struct._GimpRGB** %color1.addr, align 8
  %a11 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %9, i32 0, i32 3
  %10 = load double, double* %a11, align 8
  %11 = load %struct._GimpRGB*, %struct._GimpRGB** %color2.addr, align 8
  %a12 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %11, i32 0, i32 3
  %12 = load double, double* %a12, align 8
  %sub = fsub double 1.000000e+00, %12
  %mul = fmul double %10, %sub
  store double %mul, double* %factor, align 8
  %13 = load %struct._GimpRGB*, %struct._GimpRGB** %color1.addr, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %13, i32 0, i32 0
  %14 = load double, double* %r, align 8
  %15 = load double, double* %factor, align 8
  %mul13 = fmul double %14, %15
  %16 = load %struct._GimpRGB*, %struct._GimpRGB** %color2.addr, align 8
  %r14 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %16, i32 0, i32 0
  %17 = load double, double* %r14, align 8
  %18 = load %struct._GimpRGB*, %struct._GimpRGB** %color2.addr, align 8
  %a15 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %18, i32 0, i32 3
  %19 = load double, double* %a15, align 8
  %mul16 = fmul double %17, %19
  %add = fadd double %mul13, %mul16
  %20 = load %struct._GimpRGB*, %struct._GimpRGB** %color1.addr, align 8
  %r17 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %20, i32 0, i32 0
  store double %add, double* %r17, align 8
  %21 = load %struct._GimpRGB*, %struct._GimpRGB** %color1.addr, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %21, i32 0, i32 1
  %22 = load double, double* %g, align 8
  %23 = load double, double* %factor, align 8
  %mul18 = fmul double %22, %23
  %24 = load %struct._GimpRGB*, %struct._GimpRGB** %color2.addr, align 8
  %g19 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %24, i32 0, i32 1
  %25 = load double, double* %g19, align 8
  %26 = load %struct._GimpRGB*, %struct._GimpRGB** %color2.addr, align 8
  %a20 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %26, i32 0, i32 3
  %27 = load double, double* %a20, align 8
  %mul21 = fmul double %25, %27
  %add22 = fadd double %mul18, %mul21
  %28 = load %struct._GimpRGB*, %struct._GimpRGB** %color1.addr, align 8
  %g23 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %28, i32 0, i32 1
  store double %add22, double* %g23, align 8
  %29 = load %struct._GimpRGB*, %struct._GimpRGB** %color1.addr, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %29, i32 0, i32 2
  %30 = load double, double* %b, align 8
  %31 = load double, double* %factor, align 8
  %mul24 = fmul double %30, %31
  %32 = load %struct._GimpRGB*, %struct._GimpRGB** %color2.addr, align 8
  %b25 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %32, i32 0, i32 2
  %33 = load double, double* %b25, align 8
  %34 = load %struct._GimpRGB*, %struct._GimpRGB** %color2.addr, align 8
  %a26 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %34, i32 0, i32 3
  %35 = load double, double* %a26, align 8
  %mul27 = fmul double %33, %35
  %add28 = fadd double %mul24, %mul27
  %36 = load %struct._GimpRGB*, %struct._GimpRGB** %color1.addr, align 8
  %b29 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %36, i32 0, i32 2
  store double %add28, double* %b29, align 8
  %37 = load double, double* %factor, align 8
  %38 = load %struct._GimpRGB*, %struct._GimpRGB** %color2.addr, align 8
  %a30 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %38, i32 0, i32 3
  %39 = load double, double* %a30, align 8
  %add31 = fadd double %37, %39
  %40 = load %struct._GimpRGB*, %struct._GimpRGB** %color1.addr, align 8
  %a32 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %40, i32 0, i32 3
  store double %add31, double* %a32, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.10, %if.then.9
  br label %sw.epilog

sw.bb.34:                                         ; preds = %do.end.6
  %41 = load %struct._GimpRGB*, %struct._GimpRGB** %color1.addr, align 8
  %a35 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %41, i32 0, i32 3
  %42 = load double, double* %a35, align 8
  %cmp36 = fcmp olt double %42, 1.000000e+00
  br i1 %cmp36, label %if.then.37, label %if.end.67

if.then.37:                                       ; preds = %sw.bb.34
  %43 = load %struct._GimpRGB*, %struct._GimpRGB** %color2.addr, align 8
  %a39 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %43, i32 0, i32 3
  %44 = load double, double* %a39, align 8
  %45 = load %struct._GimpRGB*, %struct._GimpRGB** %color1.addr, align 8
  %a40 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %45, i32 0, i32 3
  %46 = load double, double* %a40, align 8
  %sub41 = fsub double 1.000000e+00, %46
  %mul42 = fmul double %44, %sub41
  store double %mul42, double* %factor38, align 8
  %47 = load %struct._GimpRGB*, %struct._GimpRGB** %color2.addr, align 8
  %r43 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %47, i32 0, i32 0
  %48 = load double, double* %r43, align 8
  %49 = load double, double* %factor38, align 8
  %mul44 = fmul double %48, %49
  %50 = load %struct._GimpRGB*, %struct._GimpRGB** %color1.addr, align 8
  %r45 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %50, i32 0, i32 0
  %51 = load double, double* %r45, align 8
  %52 = load %struct._GimpRGB*, %struct._GimpRGB** %color1.addr, align 8
  %a46 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %52, i32 0, i32 3
  %53 = load double, double* %a46, align 8
  %mul47 = fmul double %51, %53
  %add48 = fadd double %mul44, %mul47
  %54 = load %struct._GimpRGB*, %struct._GimpRGB** %color1.addr, align 8
  %r49 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %54, i32 0, i32 0
  store double %add48, double* %r49, align 8
  %55 = load %struct._GimpRGB*, %struct._GimpRGB** %color2.addr, align 8
  %g50 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %55, i32 0, i32 1
  %56 = load double, double* %g50, align 8
  %57 = load double, double* %factor38, align 8
  %mul51 = fmul double %56, %57
  %58 = load %struct._GimpRGB*, %struct._GimpRGB** %color1.addr, align 8
  %g52 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %58, i32 0, i32 1
  %59 = load double, double* %g52, align 8
  %60 = load %struct._GimpRGB*, %struct._GimpRGB** %color1.addr, align 8
  %a53 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %60, i32 0, i32 3
  %61 = load double, double* %a53, align 8
  %mul54 = fmul double %59, %61
  %add55 = fadd double %mul51, %mul54
  %62 = load %struct._GimpRGB*, %struct._GimpRGB** %color1.addr, align 8
  %g56 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %62, i32 0, i32 1
  store double %add55, double* %g56, align 8
  %63 = load %struct._GimpRGB*, %struct._GimpRGB** %color2.addr, align 8
  %b57 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %63, i32 0, i32 2
  %64 = load double, double* %b57, align 8
  %65 = load double, double* %factor38, align 8
  %mul58 = fmul double %64, %65
  %66 = load %struct._GimpRGB*, %struct._GimpRGB** %color1.addr, align 8
  %b59 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %66, i32 0, i32 2
  %67 = load double, double* %b59, align 8
  %68 = load %struct._GimpRGB*, %struct._GimpRGB** %color1.addr, align 8
  %a60 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %68, i32 0, i32 3
  %69 = load double, double* %a60, align 8
  %mul61 = fmul double %67, %69
  %add62 = fadd double %mul58, %mul61
  %70 = load %struct._GimpRGB*, %struct._GimpRGB** %color1.addr, align 8
  %b63 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %70, i32 0, i32 2
  store double %add62, double* %b63, align 8
  %71 = load double, double* %factor38, align 8
  %72 = load %struct._GimpRGB*, %struct._GimpRGB** %color1.addr, align 8
  %a64 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %72, i32 0, i32 3
  %73 = load double, double* %a64, align 8
  %add65 = fadd double %71, %73
  %74 = load %struct._GimpRGB*, %struct._GimpRGB** %color1.addr, align 8
  %a66 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %74, i32 0, i32 3
  store double %add65, double* %a66, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.37, %sw.bb.34
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %if.else.4, %do.end.6, %if.end.67, %if.end.33, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_rgba_set_uchar(%struct._GimpRGB* %rgba, i8 zeroext %r, i8 zeroext %g, i8 zeroext %b, i8 zeroext %a) #2 {
entry:
  %rgba.addr = alloca %struct._GimpRGB*, align 8
  %r.addr = alloca i8, align 1
  %g.addr = alloca i8, align 1
  %b.addr = alloca i8, align 1
  %a.addr = alloca i8, align 1
  store %struct._GimpRGB* %rgba, %struct._GimpRGB** %rgba.addr, align 8
  store i8 %r, i8* %r.addr, align 1
  store i8 %g, i8* %g.addr, align 1
  store i8 %b, i8* %b.addr, align 1
  store i8 %a, i8* %a.addr, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba.addr, align 8
  %cmp = icmp ne %struct._GimpRGB* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_rgba_set_uchar, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i8, i8* %r.addr, align 1
  %conv = uitofp i8 %1 to double
  %div = fdiv double %conv, 2.550000e+02
  %2 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba.addr, align 8
  %r1 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %2, i32 0, i32 0
  store double %div, double* %r1, align 8
  %3 = load i8, i8* %g.addr, align 1
  %conv2 = uitofp i8 %3 to double
  %div3 = fdiv double %conv2, 2.550000e+02
  %4 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba.addr, align 8
  %g4 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %4, i32 0, i32 1
  store double %div3, double* %g4, align 8
  %5 = load i8, i8* %b.addr, align 1
  %conv5 = uitofp i8 %5 to double
  %div6 = fdiv double %conv5, 2.550000e+02
  %6 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba.addr, align 8
  %b7 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %6, i32 0, i32 2
  store double %div6, double* %b7, align 8
  %7 = load i8, i8* %a.addr, align 1
  %conv8 = uitofp i8 %7 to double
  %div9 = fdiv double %conv8, 2.550000e+02
  %8 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba.addr, align 8
  %a10 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %8, i32 0, i32 3
  store double %div9, double* %a10, align 8
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_rgba_get_uchar(%struct._GimpRGB* %rgba, i8* %r, i8* %g, i8* %b, i8* %a) #2 {
entry:
  %rgba.addr = alloca %struct._GimpRGB*, align 8
  %r.addr = alloca i8*, align 8
  %g.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %a.addr = alloca i8*, align 8
  store %struct._GimpRGB* %rgba, %struct._GimpRGB** %rgba.addr, align 8
  store i8* %r, i8** %r.addr, align 8
  store i8* %g, i8** %g.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  store i8* %a, i8** %a.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba.addr, align 8
  %cmp = icmp ne %struct._GimpRGB* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_rgba_get_uchar, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.78

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i8*, i8** %r.addr, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then.1, label %if.end.12

if.then.1:                                        ; preds = %do.end
  %2 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba.addr, align 8
  %r2 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %2, i32 0, i32 0
  %3 = load double, double* %r2, align 8
  %cmp3 = fcmp ogt double %3, 1.000000e+00
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.1
  br label %cond.end.9

cond.false:                                       ; preds = %if.then.1
  %4 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba.addr, align 8
  %r4 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %4, i32 0, i32 0
  %5 = load double, double* %r4, align 8
  %cmp5 = fcmp olt double %5, 0.000000e+00
  br i1 %cmp5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.false
  br label %cond.end

cond.false.7:                                     ; preds = %cond.false
  %6 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba.addr, align 8
  %r8 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %6, i32 0, i32 0
  %7 = load double, double* %r8, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.7, %cond.true.6
  %cond = phi double [ 0.000000e+00, %cond.true.6 ], [ %7, %cond.false.7 ]
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.end, %cond.true
  %cond10 = phi double [ 1.000000e+00, %cond.true ], [ %cond, %cond.end ]
  %mul = fmul double %cond10, 2.550000e+02
  %add = fadd double %mul, 5.000000e-01
  %conv = fptosi double %add to i32
  %conv11 = trunc i32 %conv to i8
  %8 = load i8*, i8** %r.addr, align 8
  store i8 %conv11, i8* %8, align 1
  br label %if.end.12

if.end.12:                                        ; preds = %cond.end.9, %do.end
  %9 = load i8*, i8** %g.addr, align 8
  %tobool13 = icmp ne i8* %9, null
  br i1 %tobool13, label %if.then.14, label %if.end.34

if.then.14:                                       ; preds = %if.end.12
  %10 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba.addr, align 8
  %g15 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %10, i32 0, i32 1
  %11 = load double, double* %g15, align 8
  %cmp16 = fcmp ogt double %11, 1.000000e+00
  br i1 %cmp16, label %cond.true.18, label %cond.false.19

cond.true.18:                                     ; preds = %if.then.14
  br label %cond.end.28

cond.false.19:                                    ; preds = %if.then.14
  %12 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba.addr, align 8
  %g20 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %12, i32 0, i32 1
  %13 = load double, double* %g20, align 8
  %cmp21 = fcmp olt double %13, 0.000000e+00
  br i1 %cmp21, label %cond.true.23, label %cond.false.24

cond.true.23:                                     ; preds = %cond.false.19
  br label %cond.end.26

cond.false.24:                                    ; preds = %cond.false.19
  %14 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba.addr, align 8
  %g25 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %14, i32 0, i32 1
  %15 = load double, double* %g25, align 8
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.24, %cond.true.23
  %cond27 = phi double [ 0.000000e+00, %cond.true.23 ], [ %15, %cond.false.24 ]
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.end.26, %cond.true.18
  %cond29 = phi double [ 1.000000e+00, %cond.true.18 ], [ %cond27, %cond.end.26 ]
  %mul30 = fmul double %cond29, 2.550000e+02
  %add31 = fadd double %mul30, 5.000000e-01
  %conv32 = fptosi double %add31 to i32
  %conv33 = trunc i32 %conv32 to i8
  %16 = load i8*, i8** %g.addr, align 8
  store i8 %conv33, i8* %16, align 1
  br label %if.end.34

if.end.34:                                        ; preds = %cond.end.28, %if.end.12
  %17 = load i8*, i8** %b.addr, align 8
  %tobool35 = icmp ne i8* %17, null
  br i1 %tobool35, label %if.then.36, label %if.end.56

if.then.36:                                       ; preds = %if.end.34
  %18 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba.addr, align 8
  %b37 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %18, i32 0, i32 2
  %19 = load double, double* %b37, align 8
  %cmp38 = fcmp ogt double %19, 1.000000e+00
  br i1 %cmp38, label %cond.true.40, label %cond.false.41

cond.true.40:                                     ; preds = %if.then.36
  br label %cond.end.50

cond.false.41:                                    ; preds = %if.then.36
  %20 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba.addr, align 8
  %b42 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %20, i32 0, i32 2
  %21 = load double, double* %b42, align 8
  %cmp43 = fcmp olt double %21, 0.000000e+00
  br i1 %cmp43, label %cond.true.45, label %cond.false.46

cond.true.45:                                     ; preds = %cond.false.41
  br label %cond.end.48

cond.false.46:                                    ; preds = %cond.false.41
  %22 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba.addr, align 8
  %b47 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %22, i32 0, i32 2
  %23 = load double, double* %b47, align 8
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.46, %cond.true.45
  %cond49 = phi double [ 0.000000e+00, %cond.true.45 ], [ %23, %cond.false.46 ]
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.end.48, %cond.true.40
  %cond51 = phi double [ 1.000000e+00, %cond.true.40 ], [ %cond49, %cond.end.48 ]
  %mul52 = fmul double %cond51, 2.550000e+02
  %add53 = fadd double %mul52, 5.000000e-01
  %conv54 = fptosi double %add53 to i32
  %conv55 = trunc i32 %conv54 to i8
  %24 = load i8*, i8** %b.addr, align 8
  store i8 %conv55, i8* %24, align 1
  br label %if.end.56

if.end.56:                                        ; preds = %cond.end.50, %if.end.34
  %25 = load i8*, i8** %a.addr, align 8
  %tobool57 = icmp ne i8* %25, null
  br i1 %tobool57, label %if.then.58, label %if.end.78

if.then.58:                                       ; preds = %if.end.56
  %26 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba.addr, align 8
  %a59 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %26, i32 0, i32 3
  %27 = load double, double* %a59, align 8
  %cmp60 = fcmp ogt double %27, 1.000000e+00
  br i1 %cmp60, label %cond.true.62, label %cond.false.63

cond.true.62:                                     ; preds = %if.then.58
  br label %cond.end.72

cond.false.63:                                    ; preds = %if.then.58
  %28 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba.addr, align 8
  %a64 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %28, i32 0, i32 3
  %29 = load double, double* %a64, align 8
  %cmp65 = fcmp olt double %29, 0.000000e+00
  br i1 %cmp65, label %cond.true.67, label %cond.false.68

cond.true.67:                                     ; preds = %cond.false.63
  br label %cond.end.70

cond.false.68:                                    ; preds = %cond.false.63
  %30 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba.addr, align 8
  %a69 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %30, i32 0, i32 3
  %31 = load double, double* %a69, align 8
  br label %cond.end.70

cond.end.70:                                      ; preds = %cond.false.68, %cond.true.67
  %cond71 = phi double [ 0.000000e+00, %cond.true.67 ], [ %31, %cond.false.68 ]
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.end.70, %cond.true.62
  %cond73 = phi double [ 1.000000e+00, %cond.true.62 ], [ %cond71, %cond.end.70 ]
  %mul74 = fmul double %cond73, 2.550000e+02
  %add75 = fadd double %mul74, 5.000000e-01
  %conv76 = fptosi double %add75 to i32
  %conv77 = trunc i32 %conv76 to i8
  %32 = load i8*, i8** %a.addr, align 8
  store i8 %conv77, i8* %32, align 1
  br label %if.end.78

if.end.78:                                        ; preds = %if.else, %cond.end.72, %if.end.56
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_rgba_add(%struct._GimpRGB* %rgba1, %struct._GimpRGB* %rgba2) #2 {
entry:
  %rgba1.addr = alloca %struct._GimpRGB*, align 8
  %rgba2.addr = alloca %struct._GimpRGB*, align 8
  store %struct._GimpRGB* %rgba1, %struct._GimpRGB** %rgba1.addr, align 8
  store %struct._GimpRGB* %rgba2, %struct._GimpRGB** %rgba2.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba1.addr, align 8
  %cmp = icmp ne %struct._GimpRGB* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.gimp_rgba_add, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba2.addr, align 8
  %cmp2 = icmp ne %struct._GimpRGB* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.gimp_rgba_add, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba2.addr, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %2, i32 0, i32 0
  %3 = load double, double* %r, align 8
  %4 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba1.addr, align 8
  %r7 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %4, i32 0, i32 0
  %5 = load double, double* %r7, align 8
  %add = fadd double %5, %3
  store double %add, double* %r7, align 8
  %6 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba2.addr, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %6, i32 0, i32 1
  %7 = load double, double* %g, align 8
  %8 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba1.addr, align 8
  %g8 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %8, i32 0, i32 1
  %9 = load double, double* %g8, align 8
  %add9 = fadd double %9, %7
  store double %add9, double* %g8, align 8
  %10 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba2.addr, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %10, i32 0, i32 2
  %11 = load double, double* %b, align 8
  %12 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba1.addr, align 8
  %b10 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %12, i32 0, i32 2
  %13 = load double, double* %b10, align 8
  %add11 = fadd double %13, %11
  store double %add11, double* %b10, align 8
  %14 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba2.addr, align 8
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %14, i32 0, i32 3
  %15 = load double, double* %a, align 8
  %16 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba1.addr, align 8
  %a12 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %16, i32 0, i32 3
  %17 = load double, double* %a12, align 8
  %add13 = fadd double %17, %15
  store double %add13, double* %a12, align 8
  br label %return

return:                                           ; preds = %do.end.6, %if.else.4, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_rgba_subtract(%struct._GimpRGB* %rgba1, %struct._GimpRGB* %rgba2) #2 {
entry:
  %rgba1.addr = alloca %struct._GimpRGB*, align 8
  %rgba2.addr = alloca %struct._GimpRGB*, align 8
  store %struct._GimpRGB* %rgba1, %struct._GimpRGB** %rgba1.addr, align 8
  store %struct._GimpRGB* %rgba2, %struct._GimpRGB** %rgba2.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba1.addr, align 8
  %cmp = icmp ne %struct._GimpRGB* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_rgba_subtract, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba2.addr, align 8
  %cmp2 = icmp ne %struct._GimpRGB* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_rgba_subtract, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba2.addr, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %2, i32 0, i32 0
  %3 = load double, double* %r, align 8
  %4 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba1.addr, align 8
  %r7 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %4, i32 0, i32 0
  %5 = load double, double* %r7, align 8
  %sub = fsub double %5, %3
  store double %sub, double* %r7, align 8
  %6 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba2.addr, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %6, i32 0, i32 1
  %7 = load double, double* %g, align 8
  %8 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba1.addr, align 8
  %g8 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %8, i32 0, i32 1
  %9 = load double, double* %g8, align 8
  %sub9 = fsub double %9, %7
  store double %sub9, double* %g8, align 8
  %10 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba2.addr, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %10, i32 0, i32 2
  %11 = load double, double* %b, align 8
  %12 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba1.addr, align 8
  %b10 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %12, i32 0, i32 2
  %13 = load double, double* %b10, align 8
  %sub11 = fsub double %13, %11
  store double %sub11, double* %b10, align 8
  %14 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba2.addr, align 8
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %14, i32 0, i32 3
  %15 = load double, double* %a, align 8
  %16 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba1.addr, align 8
  %a12 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %16, i32 0, i32 3
  %17 = load double, double* %a12, align 8
  %sub13 = fsub double %17, %15
  store double %sub13, double* %a12, align 8
  br label %return

return:                                           ; preds = %do.end.6, %if.else.4, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_rgba_multiply(%struct._GimpRGB* %rgba, double %factor) #2 {
entry:
  %rgba.addr = alloca %struct._GimpRGB*, align 8
  %factor.addr = alloca double, align 8
  store %struct._GimpRGB* %rgba, %struct._GimpRGB** %rgba.addr, align 8
  store double %factor, double* %factor.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba.addr, align 8
  %cmp = icmp ne %struct._GimpRGB* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_rgba_multiply, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load double, double* %factor.addr, align 8
  %2 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba.addr, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %2, i32 0, i32 0
  %3 = load double, double* %r, align 8
  %mul = fmul double %3, %1
  store double %mul, double* %r, align 8
  %4 = load double, double* %factor.addr, align 8
  %5 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba.addr, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %5, i32 0, i32 1
  %6 = load double, double* %g, align 8
  %mul1 = fmul double %6, %4
  store double %mul1, double* %g, align 8
  %7 = load double, double* %factor.addr, align 8
  %8 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba.addr, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %8, i32 0, i32 2
  %9 = load double, double* %b, align 8
  %mul2 = fmul double %9, %7
  store double %mul2, double* %b, align 8
  %10 = load double, double* %factor.addr, align 8
  %11 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba.addr, align 8
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %11, i32 0, i32 3
  %12 = load double, double* %a, align 8
  %mul3 = fmul double %12, %10
  store double %mul3, double* %a, align 8
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define double @gimp_rgba_distance(%struct._GimpRGB* %rgba1, %struct._GimpRGB* %rgba2) #2 {
entry:
  %retval = alloca double, align 8
  %rgba1.addr = alloca %struct._GimpRGB*, align 8
  %rgba2.addr = alloca %struct._GimpRGB*, align 8
  store %struct._GimpRGB* %rgba1, %struct._GimpRGB** %rgba1.addr, align 8
  store %struct._GimpRGB* %rgba2, %struct._GimpRGB** %rgba2.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba1.addr, align 8
  %cmp = icmp ne %struct._GimpRGB* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_rgba_distance, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba2.addr, align 8
  %cmp2 = icmp ne %struct._GimpRGB* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_rgba_distance, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba1.addr, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %2, i32 0, i32 0
  %3 = load double, double* %r, align 8
  %4 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba2.addr, align 8
  %r7 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %4, i32 0, i32 0
  %5 = load double, double* %r7, align 8
  %sub = fsub double %3, %5
  %call = call double @fabs(double %sub) #7
  %6 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba1.addr, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %6, i32 0, i32 1
  %7 = load double, double* %g, align 8
  %8 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba2.addr, align 8
  %g8 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %8, i32 0, i32 1
  %9 = load double, double* %g8, align 8
  %sub9 = fsub double %7, %9
  %call10 = call double @fabs(double %sub9) #7
  %add = fadd double %call, %call10
  %10 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba1.addr, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %10, i32 0, i32 2
  %11 = load double, double* %b, align 8
  %12 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba2.addr, align 8
  %b11 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %12, i32 0, i32 2
  %13 = load double, double* %b11, align 8
  %sub12 = fsub double %11, %13
  %call13 = call double @fabs(double %sub12) #7
  %add14 = fadd double %add, %call13
  %14 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba1.addr, align 8
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %14, i32 0, i32 3
  %15 = load double, double* %a, align 8
  %16 = load %struct._GimpRGB*, %struct._GimpRGB** %rgba2.addr, align 8
  %a15 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %16, i32 0, i32 3
  %17 = load double, double* %a15, align 8
  %sub16 = fsub double %15, %17
  %call17 = call double @fabs(double %sub16) #7
  %add18 = fadd double %add14, %call17
  store double %add18, double* %retval
  br label %return

return:                                           ; preds = %do.end.6, %if.else.4, %if.else
  %18 = load double, double* %retval
  ret double %18
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_param_rgb_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_param_rgb_get_type.spec_type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 16
  %2 = load i64, i64* %arrayidx, align 8
  %call = call i64 @g_type_register_static(i64 %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), %struct._GTypeInfo* @gimp_param_rgb_get_type.type_info, i32 0)
  store i64 %call, i64* @gimp_param_rgb_get_type.spec_type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_param_rgb_get_type.spec_type, align 8
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_rgb_class_init(%struct._GParamSpecClass* %class) #2 {
entry:
  %class.addr = alloca %struct._GParamSpecClass*, align 8
  store %struct._GParamSpecClass* %class, %struct._GParamSpecClass** %class.addr, align 8
  %call = call i64 @gimp_rgb_get_type() #7
  %0 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %class.addr, align 8
  %value_type = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %0, i32 0, i32 1
  store i64 %call, i64* %value_type, align 8
  %1 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %class.addr, align 8
  %value_set_default = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %1, i32 0, i32 3
  store void (%struct._GParamSpec*, %struct._GValue*)* @gimp_param_rgb_set_default, void (%struct._GParamSpec*, %struct._GValue*)** %value_set_default, align 8
  %2 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %class.addr, align 8
  %value_validate = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %2, i32 0, i32 4
  store i32 (%struct._GParamSpec*, %struct._GValue*)* @gimp_param_rgb_validate, i32 (%struct._GParamSpec*, %struct._GValue*)** %value_validate, align 8
  %3 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %class.addr, align 8
  %values_cmp = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %3, i32 0, i32 5
  store i32 (%struct._GParamSpec*, %struct._GValue*, %struct._GValue*)* @gimp_param_rgb_values_cmp, i32 (%struct._GParamSpec*, %struct._GValue*, %struct._GValue*)** %values_cmp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_rgb_init(%struct._GParamSpec* %pspec) #2 {
entry:
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %cspec = alloca %struct._GimpParamSpecRGB*, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %1 = bitcast %struct._GParamSpec* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_param_rgb_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpParamSpecRGB*
  store %struct._GimpParamSpecRGB* %2, %struct._GimpParamSpecRGB** %cspec, align 8
  %3 = load %struct._GimpParamSpecRGB*, %struct._GimpParamSpecRGB** %cspec, align 8
  %default_value = getelementptr inbounds %struct._GimpParamSpecRGB, %struct._GimpParamSpecRGB* %3, i32 0, i32 2
  call void @gimp_rgba_set(%struct._GimpRGB* %default_value, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  ret void
}

declare i64 @g_type_register_static(i64, i8*, %struct._GTypeInfo*, i32) #1

; Function Attrs: nounwind uwtable
define %struct._GParamSpec* @gimp_param_spec_rgb(i8* %name, i8* %nick, i8* %blurb, i32 %has_alpha, %struct._GimpRGB* %default_value, i32 %flags) #2 {
entry:
  %name.addr = alloca i8*, align 8
  %nick.addr = alloca i8*, align 8
  %blurb.addr = alloca i8*, align 8
  %has_alpha.addr = alloca i32, align 4
  %default_value.addr = alloca %struct._GimpRGB*, align 8
  %flags.addr = alloca i32, align 4
  %cspec = alloca %struct._GimpParamSpecRGB*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %nick, i8** %nick.addr, align 8
  store i8* %blurb, i8** %blurb.addr, align 8
  store i32 %has_alpha, i32* %has_alpha.addr, align 4
  store %struct._GimpRGB* %default_value, %struct._GimpRGB** %default_value.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %call = call i64 @gimp_param_rgb_get_type() #7
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i8*, i8** %nick.addr, align 8
  %2 = load i8*, i8** %blurb.addr, align 8
  %3 = load i32, i32* %flags.addr, align 4
  %call1 = call i8* @g_param_spec_internal(i64 %call, i8* %0, i8* %1, i8* %2, i32 %3)
  %4 = bitcast i8* %call1 to %struct._GimpParamSpecRGB*
  store %struct._GimpParamSpecRGB* %4, %struct._GimpParamSpecRGB** %cspec, align 8
  %5 = load i32, i32* %has_alpha.addr, align 4
  %6 = load %struct._GimpParamSpecRGB*, %struct._GimpParamSpecRGB** %cspec, align 8
  %has_alpha2 = getelementptr inbounds %struct._GimpParamSpecRGB, %struct._GimpParamSpecRGB* %6, i32 0, i32 1
  store i32 %5, i32* %has_alpha2, align 4
  %7 = load %struct._GimpRGB*, %struct._GimpRGB** %default_value.addr, align 8
  %tobool = icmp ne %struct._GimpRGB* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpParamSpecRGB*, %struct._GimpParamSpecRGB** %cspec, align 8
  %default_value3 = getelementptr inbounds %struct._GimpParamSpecRGB, %struct._GimpParamSpecRGB* %8, i32 0, i32 2
  %9 = load %struct._GimpRGB*, %struct._GimpRGB** %default_value.addr, align 8
  %10 = bitcast %struct._GimpRGB* %default_value3 to i8*
  %11 = bitcast %struct._GimpRGB* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 32, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GimpParamSpecRGB*, %struct._GimpParamSpecRGB** %cspec, align 8
  %13 = bitcast %struct._GimpParamSpecRGB* %12 to %struct._GTypeInstance*
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 76)
  %14 = bitcast %struct._GTypeInstance* %call4 to %struct._GParamSpec*
  ret %struct._GParamSpec* %14
}

declare i8* @g_param_spec_internal(i64, i8*, i8*, i8*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_param_spec_rgb_has_alpha(%struct._GParamSpec* %pspec) #2 {
entry:
  %retval = alloca i32, align 4
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %1 = bitcast %struct._GParamSpec* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_param_rgb_get_type() #7
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_param_spec_rgb_has_alpha, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %14 = bitcast %struct._GParamSpec* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_param_rgb_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpParamSpecRGB*
  %has_alpha = getelementptr inbounds %struct._GimpParamSpecRGB, %struct._GimpParamSpecRGB* %15, i32 0, i32 1
  %16 = load i32, i32* %has_alpha, align 4
  store i32 %16, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

declare noalias i8* @g_memdup(i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_param_rgb_set_default(%struct._GParamSpec* %pspec, %struct._GValue* %value) #2 {
entry:
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %value.addr = alloca %struct._GValue*, align 8
  %cspec = alloca %struct._GimpParamSpecRGB*, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  %0 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %1 = bitcast %struct._GParamSpec* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_param_rgb_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpParamSpecRGB*
  store %struct._GimpParamSpecRGB* %2, %struct._GimpParamSpecRGB** %cspec, align 8
  %3 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %4 = load %struct._GimpParamSpecRGB*, %struct._GimpParamSpecRGB** %cspec, align 8
  %default_value = getelementptr inbounds %struct._GimpParamSpecRGB, %struct._GimpParamSpecRGB* %4, i32 0, i32 2
  %5 = bitcast %struct._GimpRGB* %default_value to i8*
  call void @g_value_set_static_boxed(%struct._GValue* %3, i8* %5)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_param_rgb_validate(%struct._GParamSpec* %pspec, %struct._GValue* %value) #2 {
entry:
  %retval = alloca i32, align 4
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %value.addr = alloca %struct._GValue*, align 8
  %rgb = alloca %struct._GimpRGB*, align 8
  %oval = alloca %struct._GimpRGB, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data = getelementptr inbounds %struct._GValue, %struct._GValue* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data, i32 0, i64 0
  %v_pointer = bitcast %union.anon* %arrayidx to i8**
  %1 = load i8*, i8** %v_pointer, align 8
  %2 = bitcast i8* %1 to %struct._GimpRGB*
  store %struct._GimpRGB* %2, %struct._GimpRGB** %rgb, align 8
  %3 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb, align 8
  %tobool = icmp ne %struct._GimpRGB* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb, align 8
  %5 = bitcast %struct._GimpRGB* %oval to i8*
  %6 = bitcast %struct._GimpRGB* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 32, i32 8, i1 false)
  %7 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb, align 8
  call void @gimp_rgb_clamp(%struct._GimpRGB* %7)
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %oval, i32 0, i32 0
  %8 = load double, double* %r, align 8
  %9 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb, align 8
  %r1 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %9, i32 0, i32 0
  %10 = load double, double* %r1, align 8
  %cmp = fcmp une double %8, %10
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %oval, i32 0, i32 1
  %11 = load double, double* %g, align 8
  %12 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb, align 8
  %g2 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %12, i32 0, i32 1
  %13 = load double, double* %g2, align 8
  %cmp3 = fcmp une double %11, %13
  br i1 %cmp3, label %lor.end, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %oval, i32 0, i32 2
  %14 = load double, double* %b, align 8
  %15 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb, align 8
  %b5 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %15, i32 0, i32 2
  %16 = load double, double* %b5, align 8
  %cmp6 = fcmp une double %14, %16
  br i1 %cmp6, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.4
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %18 = bitcast %struct._GParamSpec* %17 to %struct._GTypeInstance*
  %call = call i64 @gimp_param_rgb_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call)
  %19 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpParamSpecRGB*
  %has_alpha = getelementptr inbounds %struct._GimpParamSpecRGB, %struct._GimpParamSpecRGB* %19, i32 0, i32 1
  %20 = load i32, i32* %has_alpha, align 4
  %tobool8 = icmp ne i32 %20, 0
  br i1 %tobool8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %oval, i32 0, i32 3
  %21 = load double, double* %a, align 8
  %22 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb, align 8
  %a9 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %22, i32 0, i32 3
  %23 = load double, double* %a9, align 8
  %cmp10 = fcmp une double %21, %23
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %24 = phi i1 [ false, %lor.rhs ], [ %cmp10, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %lor.lhs.false.4, %lor.lhs.false, %if.then
  %25 = phi i1 [ true, %lor.lhs.false.4 ], [ true, %lor.lhs.false ], [ true, %if.then ], [ %24, %land.end ]
  %lor.ext = zext i1 %25 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %lor.end
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_param_rgb_values_cmp(%struct._GParamSpec* %pspec, %struct._GValue* %value1, %struct._GValue* %value2) #2 {
entry:
  %retval = alloca i32, align 4
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %value1.addr = alloca %struct._GValue*, align 8
  %value2.addr = alloca %struct._GValue*, align 8
  %rgb1 = alloca %struct._GimpRGB*, align 8
  %rgb2 = alloca %struct._GimpRGB*, align 8
  %int1 = alloca i32, align 4
  %int2 = alloca i32, align 4
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GValue* %value1, %struct._GValue** %value1.addr, align 8
  store %struct._GValue* %value2, %struct._GValue** %value2.addr, align 8
  %0 = load %struct._GValue*, %struct._GValue** %value1.addr, align 8
  %data = getelementptr inbounds %struct._GValue, %struct._GValue* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data, i32 0, i64 0
  %v_pointer = bitcast %union.anon* %arrayidx to i8**
  %1 = load i8*, i8** %v_pointer, align 8
  %2 = bitcast i8* %1 to %struct._GimpRGB*
  store %struct._GimpRGB* %2, %struct._GimpRGB** %rgb1, align 8
  %3 = load %struct._GValue*, %struct._GValue** %value2.addr, align 8
  %data1 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data1, i32 0, i64 0
  %v_pointer3 = bitcast %union.anon* %arrayidx2 to i8**
  %4 = load i8*, i8** %v_pointer3, align 8
  %5 = bitcast i8* %4 to %struct._GimpRGB*
  store %struct._GimpRGB* %5, %struct._GimpRGB** %rgb2, align 8
  %6 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb1, align 8
  %tobool = icmp ne %struct._GimpRGB* %6, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb2, align 8
  %cmp = icmp ne %struct._GimpRGB* %7, null
  %cond = select i1 %cmp, i32 -1, i32 0
  store i32 %cond, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %8 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb2, align 8
  %tobool4 = icmp ne %struct._GimpRGB* %8, null
  br i1 %tobool4, label %if.else.7, label %if.then.5

if.then.5:                                        ; preds = %if.else
  %9 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb1, align 8
  %cmp6 = icmp ne %struct._GimpRGB* %9, null
  %conv = zext i1 %cmp6 to i32
  store i32 %conv, i32* %retval
  br label %return

if.else.7:                                        ; preds = %if.else
  store i32 0, i32* %int1, align 4
  store i32 0, i32* %int2, align 4
  %10 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %11 = bitcast %struct._GParamSpec* %10 to %struct._GTypeInstance*
  %call = call i64 @gimp_param_rgb_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call)
  %12 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpParamSpecRGB*
  %has_alpha = getelementptr inbounds %struct._GimpParamSpecRGB, %struct._GimpParamSpecRGB* %12, i32 0, i32 1
  %13 = load i32, i32* %has_alpha, align 4
  %tobool9 = icmp ne i32 %13, 0
  br i1 %tobool9, label %if.then.10, label %if.else.18

if.then.10:                                       ; preds = %if.else.7
  %14 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb1, align 8
  %15 = bitcast i32* %int1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 0
  %16 = bitcast i32* %int1 to i8*
  %add.ptr11 = getelementptr inbounds i8, i8* %16, i64 1
  %17 = bitcast i32* %int1 to i8*
  %add.ptr12 = getelementptr inbounds i8, i8* %17, i64 2
  %18 = bitcast i32* %int1 to i8*
  %add.ptr13 = getelementptr inbounds i8, i8* %18, i64 3
  call void @gimp_rgba_get_uchar(%struct._GimpRGB* %14, i8* %add.ptr, i8* %add.ptr11, i8* %add.ptr12, i8* %add.ptr13)
  %19 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb2, align 8
  %20 = bitcast i32* %int2 to i8*
  %add.ptr14 = getelementptr inbounds i8, i8* %20, i64 0
  %21 = bitcast i32* %int2 to i8*
  %add.ptr15 = getelementptr inbounds i8, i8* %21, i64 1
  %22 = bitcast i32* %int2 to i8*
  %add.ptr16 = getelementptr inbounds i8, i8* %22, i64 2
  %23 = bitcast i32* %int2 to i8*
  %add.ptr17 = getelementptr inbounds i8, i8* %23, i64 3
  call void @gimp_rgba_get_uchar(%struct._GimpRGB* %19, i8* %add.ptr14, i8* %add.ptr15, i8* %add.ptr16, i8* %add.ptr17)
  br label %if.end

if.else.18:                                       ; preds = %if.else.7
  %24 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb1, align 8
  %25 = bitcast i32* %int1 to i8*
  %add.ptr19 = getelementptr inbounds i8, i8* %25, i64 0
  %26 = bitcast i32* %int1 to i8*
  %add.ptr20 = getelementptr inbounds i8, i8* %26, i64 1
  %27 = bitcast i32* %int1 to i8*
  %add.ptr21 = getelementptr inbounds i8, i8* %27, i64 2
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %24, i8* %add.ptr19, i8* %add.ptr20, i8* %add.ptr21)
  %28 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb2, align 8
  %29 = bitcast i32* %int2 to i8*
  %add.ptr22 = getelementptr inbounds i8, i8* %29, i64 0
  %30 = bitcast i32* %int2 to i8*
  %add.ptr23 = getelementptr inbounds i8, i8* %30, i64 1
  %31 = bitcast i32* %int2 to i8*
  %add.ptr24 = getelementptr inbounds i8, i8* %31, i64 2
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %28, i8* %add.ptr22, i8* %add.ptr23, i8* %add.ptr24)
  br label %if.end

if.end:                                           ; preds = %if.else.18, %if.then.10
  %32 = load i32, i32* %int1, align 4
  %33 = load i32, i32* %int2, align 4
  %sub = sub i32 %32, %33
  store i32 %sub, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then.5, %if.then
  %34 = load i32, i32* %retval
  ret i32 %34
}

declare void @g_value_set_static_boxed(%struct._GValue*, i8*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
