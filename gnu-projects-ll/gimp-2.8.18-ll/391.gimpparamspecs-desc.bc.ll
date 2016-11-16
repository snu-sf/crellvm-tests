; ModuleID = './app/core/gimpparamspecs-desc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GParamSpecInt = type { %struct._GParamSpec, i32, i32, i32 }
%struct._GParamSpecDouble = type { %struct._GParamSpec, double, double, double, double }
%struct._GString = type { i8*, i64, i64 }
%struct._GEnumClass = type { %struct._GTypeClass, i32, i32, i32, %struct._GEnumValue* }
%struct._GEnumValue = type { i32, i8*, i8* }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GimpParamSpecEnum = type { %struct._GParamSpecEnum, %struct._GSList* }
%struct._GParamSpecEnum = type { %struct._GParamSpec, %struct._GEnumClass*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_param_spec_get_desc = private unnamed_addr constant [25 x i8] c"gimp_param_spec_get_desc\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"G_IS_PARAM_SPEC (pspec)\00", align 1
@g_param_spec_types = external global i64*, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"%s (%s <= %d)\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"%s (%s >= %d)\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"%s (%d <= %s <= %d)\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [17 x i8] c" (TRUE or FALSE)\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"%s (%s <= %g)\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"%s (%s >= %g)\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"%s (%g <= %s <= %g)\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c" { \00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"GIMP_\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c" (%d)\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c" }\00", align 1

; Function Attrs: nounwind uwtable
define i8* @gimp_param_spec_get_desc(%struct._GParamSpec* %pspec) #0 {
entry:
  %retval = alloca i8*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst16 = alloca %struct._GTypeInstance*, align 8
  %__t18 = alloca i64, align 8
  %__r21 = alloca i32, align 4
  %tmp36 = alloca i32, align 4
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %1 = bitcast %struct._GParamSpec* %0 to %struct._GTypeInstance*
  %call = call i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance* %1, i64 76) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_param_spec_get_desc, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %3 = bitcast %struct._GParamSpec* %2 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %3, %struct._GTypeInstance** %__inst, align 8
  %call1 = call i64 @gimp_param_unit_get_type() #6
  store i64 %call1, i64* %__t, align 8
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool2 = icmp ne %struct._GTypeInstance* %4, null
  br i1 %tobool2, label %if.else.4, label %if.then.3

if.then.3:                                        ; preds = %do.end
  store i32 0, i32* %__r, align 4
  br label %if.end.11

if.else.4:                                        ; preds = %do.end
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool5 = icmp ne %struct._GTypeClass* %6, null
  br i1 %tobool5, label %land.lhs.true, label %if.else.8

land.lhs.true:                                    ; preds = %if.else.4
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class6 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class6, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %8, i32 0, i32 0
  %9 = load i64, i64* %g_type, align 8
  %10 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %9, %10
  br i1 %cmp, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.10

if.else.8:                                        ; preds = %land.lhs.true, %if.else.4
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %12 = load i64, i64* %__t, align 8
  %call9 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %11, i64 %12) #5
  store i32 %call9, i32* %__r, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.8, %if.then.7
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then.3
  %13 = load i32, i32* %__r, align 4
  store i32 %13, i32* %tmp
  %14 = load i32, i32* %tmp
  %tobool12 = icmp ne i32 %14, 0
  br i1 %tobool12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.end.11
  br label %if.end.48

if.else.14:                                       ; preds = %if.end.11
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %16 = bitcast %struct._GParamSpec* %15 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %16, %struct._GTypeInstance** %__inst16, align 8
  %call19 = call i64 @gimp_param_int32_get_type() #6
  store i64 %call19, i64* %__t18, align 8
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %tobool22 = icmp ne %struct._GTypeInstance* %17, null
  br i1 %tobool22, label %if.else.24, label %if.then.23

if.then.23:                                       ; preds = %if.else.14
  store i32 0, i32* %__r21, align 4
  br label %if.end.35

if.else.24:                                       ; preds = %if.else.14
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %tobool26 = icmp ne %struct._GTypeClass* %19, null
  br i1 %tobool26, label %land.lhs.true.27, label %if.else.32

land.lhs.true.27:                                 ; preds = %if.else.24
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %g_class28 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class28, align 8
  %g_type29 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type29, align 8
  %23 = load i64, i64* %__t18, align 8
  %cmp30 = icmp eq i64 %22, %23
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %land.lhs.true.27
  store i32 1, i32* %__r21, align 4
  br label %if.end.34

if.else.32:                                       ; preds = %land.lhs.true.27, %if.else.24
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %25 = load i64, i64* %__t18, align 8
  %call33 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %24, i64 %25) #5
  store i32 %call33, i32* %__r21, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.32, %if.then.31
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.23
  %26 = load i32, i32* %__r21, align 4
  store i32 %26, i32* %tmp36
  %27 = load i32, i32* %tmp36
  %tobool37 = icmp ne i32 %27, 0
  br i1 %tobool37, label %if.then.38, label %if.else.40

if.then.38:                                       ; preds = %if.end.35
  %28 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %call39 = call i8* @gimp_param_spec_int32_desc(%struct._GParamSpec* %28)
  store i8* %call39, i8** %retval
  br label %return

if.else.40:                                       ; preds = %if.end.35
  %29 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %29, i32 0, i32 3
  %30 = load i64, i64* %value_type, align 8
  %call41 = call i64 @g_type_fundamental(i64 %30)
  switch i64 %call41, label %sw.epilog [
    i64 20, label %sw.bb
    i64 60, label %sw.bb.43
    i64 48, label %sw.bb.45
  ]

sw.bb:                                            ; preds = %if.else.40
  %31 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %call42 = call i8* @gimp_param_spec_boolean_desc(%struct._GParamSpec* %31)
  store i8* %call42, i8** %retval
  br label %return

sw.bb.43:                                         ; preds = %if.else.40
  %32 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %call44 = call i8* @gimp_param_spec_double_desc(%struct._GParamSpec* %32)
  store i8* %call44, i8** %retval
  br label %return

sw.bb.45:                                         ; preds = %if.else.40
  %33 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %call46 = call i8* @gimp_param_spec_enum_desc(%struct._GParamSpec* %33)
  store i8* %call46, i8** %retval
  br label %return

sw.epilog:                                        ; preds = %if.else.40
  br label %if.end.47

if.end.47:                                        ; preds = %sw.epilog
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then.13
  %34 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %call49 = call i8* @g_param_spec_get_blurb(%struct._GParamSpec* %34)
  %call50 = call noalias i8* @g_strdup(i8* %call49)
  store i8* %call50, i8** %retval
  br label %return

return:                                           ; preds = %if.end.48, %sw.bb.45, %sw.bb.43, %sw.bb, %if.then.38, %if.else
  %35 = load i8*, i8** %retval
  ret i8* %35
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance*, i64) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_param_unit_get_type() #3

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_param_int32_get_type() #3

; Function Attrs: nounwind uwtable
define internal i8* @gimp_param_spec_int32_desc(%struct._GParamSpec* %pspec) #0 {
entry:
  %retval = alloca i8*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %ispec = alloca %struct._GParamSpecInt*, align 8
  %blurb = alloca i8*, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %1 = bitcast %struct._GParamSpec* %0 to %struct._GTypeInstance*
  %2 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %2, i64 3
  %3 = load i64, i64* %arrayidx, align 8
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %3)
  %4 = bitcast %struct._GTypeInstance* %call to %struct._GParamSpecInt*
  store %struct._GParamSpecInt* %4, %struct._GParamSpecInt** %ispec, align 8
  %5 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %call1 = call i8* @gimp_param_spec_get_blurb(%struct._GParamSpec* %5)
  store i8* %call1, i8** %blurb, align 8
  %6 = load %struct._GParamSpecInt*, %struct._GParamSpecInt** %ispec, align 8
  %minimum = getelementptr inbounds %struct._GParamSpecInt, %struct._GParamSpecInt* %6, i32 0, i32 1
  %7 = load i32, i32* %minimum, align 4
  %cmp = icmp eq i32 %7, -2147483648
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %8 = load %struct._GParamSpecInt*, %struct._GParamSpecInt** %ispec, align 8
  %maximum = getelementptr inbounds %struct._GParamSpecInt, %struct._GParamSpecInt* %8, i32 0, i32 2
  %9 = load i32, i32* %maximum, align 4
  %cmp2 = icmp eq i32 %9, 2147483647
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %10 = load i8*, i8** %blurb, align 8
  %call3 = call noalias i8* @g_strdup(i8* %10)
  store i8* %call3, i8** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %11 = load %struct._GParamSpecInt*, %struct._GParamSpecInt** %ispec, align 8
  %minimum4 = getelementptr inbounds %struct._GParamSpecInt, %struct._GParamSpecInt* %11, i32 0, i32 1
  %12 = load i32, i32* %minimum4, align 4
  %cmp5 = icmp eq i32 %12, -2147483648
  br i1 %cmp5, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.end
  %13 = load i8*, i8** %blurb, align 8
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %call7 = call i8* @g_param_spec_get_name(%struct._GParamSpec* %14)
  %15 = load %struct._GParamSpecInt*, %struct._GParamSpecInt** %ispec, align 8
  %maximum8 = getelementptr inbounds %struct._GParamSpecInt, %struct._GParamSpecInt* %15, i32 0, i32 2
  %16 = load i32, i32* %maximum8, align 4
  %call9 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* %13, i8* %call7, i32 %16)
  store i8* %call9, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %17 = load %struct._GParamSpecInt*, %struct._GParamSpecInt** %ispec, align 8
  %maximum11 = getelementptr inbounds %struct._GParamSpecInt, %struct._GParamSpecInt* %17, i32 0, i32 2
  %18 = load i32, i32* %maximum11, align 4
  %cmp12 = icmp eq i32 %18, 2147483647
  br i1 %cmp12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %if.end.10
  %19 = load i8*, i8** %blurb, align 8
  %20 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %call14 = call i8* @g_param_spec_get_name(%struct._GParamSpec* %20)
  %21 = load %struct._GParamSpecInt*, %struct._GParamSpecInt** %ispec, align 8
  %minimum15 = getelementptr inbounds %struct._GParamSpecInt, %struct._GParamSpecInt* %21, i32 0, i32 1
  %22 = load i32, i32* %minimum15, align 4
  %call16 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* %19, i8* %call14, i32 %22)
  store i8* %call16, i8** %retval
  br label %return

if.end.17:                                        ; preds = %if.end.10
  %23 = load i8*, i8** %blurb, align 8
  %24 = load %struct._GParamSpecInt*, %struct._GParamSpecInt** %ispec, align 8
  %minimum18 = getelementptr inbounds %struct._GParamSpecInt, %struct._GParamSpecInt* %24, i32 0, i32 1
  %25 = load i32, i32* %minimum18, align 4
  %26 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %call19 = call i8* @g_param_spec_get_name(%struct._GParamSpec* %26)
  %27 = load %struct._GParamSpecInt*, %struct._GParamSpecInt** %ispec, align 8
  %maximum20 = getelementptr inbounds %struct._GParamSpecInt, %struct._GParamSpecInt* %27, i32 0, i32 2
  %28 = load i32, i32* %maximum20, align 4
  %call21 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i8* %23, i32 %25, i8* %call19, i32 %28)
  store i8* %call21, i8** %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.13, %if.then.6, %if.then
  %29 = load i8*, i8** %retval
  ret i8* %29
}

declare i64 @g_type_fundamental(i64) #2

; Function Attrs: nounwind uwtable
define internal i8* @gimp_param_spec_boolean_desc(%struct._GParamSpec* %pspec) #0 {
entry:
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %blurb = alloca i8*, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %call = call i8* @gimp_param_spec_get_blurb(%struct._GParamSpec* %0)
  store i8* %call, i8** %blurb, align 8
  %1 = load i8*, i8** %blurb, align 8
  %call1 = call noalias i8* (i8*, ...) @g_strconcat(i8* %1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i8* null)
  ret i8* %call1
}

; Function Attrs: nounwind uwtable
define internal i8* @gimp_param_spec_double_desc(%struct._GParamSpec* %pspec) #0 {
entry:
  %retval = alloca i8*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %dspec = alloca %struct._GParamSpecDouble*, align 8
  %blurb = alloca i8*, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %1 = bitcast %struct._GParamSpec* %0 to %struct._GTypeInstance*
  %2 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %2, i64 13
  %3 = load i64, i64* %arrayidx, align 8
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %3)
  %4 = bitcast %struct._GTypeInstance* %call to %struct._GParamSpecDouble*
  store %struct._GParamSpecDouble* %4, %struct._GParamSpecDouble** %dspec, align 8
  %5 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %call1 = call i8* @gimp_param_spec_get_blurb(%struct._GParamSpec* %5)
  store i8* %call1, i8** %blurb, align 8
  %6 = load %struct._GParamSpecDouble*, %struct._GParamSpecDouble** %dspec, align 8
  %minimum = getelementptr inbounds %struct._GParamSpecDouble, %struct._GParamSpecDouble* %6, i32 0, i32 1
  %7 = load double, double* %minimum, align 8
  %cmp = fcmp oeq double %7, 0xFFEFFFFFFFFFFFFF
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %8 = load %struct._GParamSpecDouble*, %struct._GParamSpecDouble** %dspec, align 8
  %maximum = getelementptr inbounds %struct._GParamSpecDouble, %struct._GParamSpecDouble* %8, i32 0, i32 2
  %9 = load double, double* %maximum, align 8
  %cmp2 = fcmp oeq double %9, 0x7FEFFFFFFFFFFFFF
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %10 = load i8*, i8** %blurb, align 8
  %call3 = call noalias i8* @g_strdup(i8* %10)
  store i8* %call3, i8** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %11 = load %struct._GParamSpecDouble*, %struct._GParamSpecDouble** %dspec, align 8
  %minimum4 = getelementptr inbounds %struct._GParamSpecDouble, %struct._GParamSpecDouble* %11, i32 0, i32 1
  %12 = load double, double* %minimum4, align 8
  %cmp5 = fcmp oeq double %12, 0xFFEFFFFFFFFFFFFF
  br i1 %cmp5, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.end
  %13 = load i8*, i8** %blurb, align 8
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %call7 = call i8* @g_param_spec_get_name(%struct._GParamSpec* %14)
  %15 = load %struct._GParamSpecDouble*, %struct._GParamSpecDouble** %dspec, align 8
  %maximum8 = getelementptr inbounds %struct._GParamSpecDouble, %struct._GParamSpecDouble* %15, i32 0, i32 2
  %16 = load double, double* %maximum8, align 8
  %call9 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i8* %13, i8* %call7, double %16)
  store i8* %call9, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %17 = load %struct._GParamSpecDouble*, %struct._GParamSpecDouble** %dspec, align 8
  %maximum11 = getelementptr inbounds %struct._GParamSpecDouble, %struct._GParamSpecDouble* %17, i32 0, i32 2
  %18 = load double, double* %maximum11, align 8
  %cmp12 = fcmp oeq double %18, 0x7FEFFFFFFFFFFFFF
  br i1 %cmp12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %if.end.10
  %19 = load i8*, i8** %blurb, align 8
  %20 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %call14 = call i8* @g_param_spec_get_name(%struct._GParamSpec* %20)
  %21 = load %struct._GParamSpecDouble*, %struct._GParamSpecDouble** %dspec, align 8
  %minimum15 = getelementptr inbounds %struct._GParamSpecDouble, %struct._GParamSpecDouble* %21, i32 0, i32 1
  %22 = load double, double* %minimum15, align 8
  %call16 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i8* %19, i8* %call14, double %22)
  store i8* %call16, i8** %retval
  br label %return

if.end.17:                                        ; preds = %if.end.10
  %23 = load i8*, i8** %blurb, align 8
  %24 = load %struct._GParamSpecDouble*, %struct._GParamSpecDouble** %dspec, align 8
  %minimum18 = getelementptr inbounds %struct._GParamSpecDouble, %struct._GParamSpecDouble* %24, i32 0, i32 1
  %25 = load double, double* %minimum18, align 8
  %26 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %call19 = call i8* @g_param_spec_get_name(%struct._GParamSpec* %26)
  %27 = load %struct._GParamSpecDouble*, %struct._GParamSpecDouble** %dspec, align 8
  %maximum20 = getelementptr inbounds %struct._GParamSpecDouble, %struct._GParamSpecDouble* %27, i32 0, i32 2
  %28 = load double, double* %maximum20, align 8
  %call21 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), i8* %23, double %25, i8* %call19, double %28)
  store i8* %call21, i8** %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.13, %if.then.6, %if.then
  %29 = load i8*, i8** %retval
  ret i8* %29
}

; Function Attrs: nounwind uwtable
define internal i8* @gimp_param_spec_enum_desc(%struct._GParamSpec* %pspec) #0 {
entry:
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %blurb = alloca i8*, align 8
  %str = alloca %struct._GString*, align 8
  %enum_class = alloca %struct._GEnumClass*, align 8
  %enum_value = alloca %struct._GEnumValue*, align 8
  %excluded = alloca %struct._GSList*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %list = alloca %struct._GSList*, align 8
  %name = alloca i8*, align 8
  %value = alloca i32, align 4
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %call = call i8* @gimp_param_spec_get_blurb(%struct._GParamSpec* %0)
  store i8* %call, i8** %blurb, align 8
  %1 = load i8*, i8** %blurb, align 8
  %call1 = call %struct._GString* @g_string_new(i8* %1)
  store %struct._GString* %call1, %struct._GString** %str, align 8
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %2, i32 0, i32 3
  %3 = load i64, i64* %value_type, align 8
  %call2 = call i8* @g_type_class_peek(i64 %3)
  %4 = bitcast i8* %call2 to %struct._GEnumClass*
  store %struct._GEnumClass* %4, %struct._GEnumClass** %enum_class, align 8
  %5 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %6 = bitcast %struct._GParamSpec* %5 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %6, %struct._GTypeInstance** %__inst, align 8
  %call3 = call i64 @gimp_param_enum_get_type() #6
  store i64 %call3, i64* %__t, align 8
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %7, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.9

if.else:                                          ; preds = %entry
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool4 = icmp ne %struct._GTypeClass* %9, null
  br i1 %tobool4, label %land.lhs.true, label %if.else.7

land.lhs.true:                                    ; preds = %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %11, i32 0, i32 0
  %12 = load i64, i64* %g_type, align 8
  %13 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %12, %13
  br i1 %cmp, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.7:                                        ; preds = %land.lhs.true, %if.else
  %14 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %15 = load i64, i64* %__t, align 8
  %call8 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %14, i64 %15) #5
  store i32 %call8, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.7, %if.then.6
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  %16 = load i32, i32* %__r, align 4
  store i32 %16, i32* %tmp
  %17 = load i32, i32* %tmp
  %tobool10 = icmp ne i32 %17, 0
  br i1 %tobool10, label %if.then.11, label %if.else.14

if.then.11:                                       ; preds = %if.end.9
  %18 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %19 = bitcast %struct._GParamSpec* %18 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_param_enum_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call12)
  %20 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpParamSpecEnum*
  %excluded_values = getelementptr inbounds %struct._GimpParamSpecEnum, %struct._GimpParamSpecEnum* %20, i32 0, i32 1
  %21 = load %struct._GSList*, %struct._GSList** %excluded_values, align 8
  store %struct._GSList* %21, %struct._GSList** %excluded, align 8
  br label %if.end.15

if.else.14:                                       ; preds = %if.end.9
  store %struct._GSList* null, %struct._GSList** %excluded, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.14, %if.then.11
  %22 = load %struct._GString*, %struct._GString** %str, align 8
  %call16 = call %struct._GString* @g_string_append(%struct._GString* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  store i32 0, i32* %n, align 4
  %23 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %values = getelementptr inbounds %struct._GEnumClass, %struct._GEnumClass* %23, i32 0, i32 4
  %24 = load %struct._GEnumValue*, %struct._GEnumValue** %values, align 8
  store %struct._GEnumValue* %24, %struct._GEnumValue** %enum_value, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.48, %if.end.15
  %25 = load i32, i32* %i, align 4
  %26 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %n_values = getelementptr inbounds %struct._GEnumClass, %struct._GEnumClass* %26, i32 0, i32 3
  %27 = load i32, i32* %n_values, align 4
  %cmp17 = icmp ult i32 %25, %27
  br i1 %cmp17, label %for.body, label %for.end.50

for.body:                                         ; preds = %for.cond
  %28 = load %struct._GSList*, %struct._GSList** %excluded, align 8
  store %struct._GSList* %28, %struct._GSList** %list, align 8
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc, %for.body
  %29 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool21 = icmp ne %struct._GSList* %29, null
  br i1 %tobool21, label %for.body.22, label %for.end

for.body.22:                                      ; preds = %for.cond.20
  %30 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %30, i32 0, i32 0
  %31 = load i8*, i8** %data, align 8
  %32 = ptrtoint i8* %31 to i64
  %conv = trunc i64 %32 to i32
  store i32 %conv, i32* %value, align 4
  %33 = load i32, i32* %value, align 4
  %34 = load %struct._GEnumValue*, %struct._GEnumValue** %enum_value, align 8
  %value24 = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %34, i32 0, i32 0
  %35 = load i32, i32* %value24, align 4
  %cmp25 = icmp eq i32 %33, %35
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %for.body.22
  br label %for.end

if.end.28:                                        ; preds = %for.body.22
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %36 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %36, i32 0, i32 1
  %37 = load %struct._GSList*, %struct._GSList** %next, align 8
  store %struct._GSList* %37, %struct._GSList** %list, align 8
  br label %for.cond.20

for.end:                                          ; preds = %if.then.27, %for.cond.20
  %38 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool29 = icmp ne %struct._GSList* %38, null
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %for.end
  br label %for.inc.48

if.end.31:                                        ; preds = %for.end
  %39 = load i32, i32* %n, align 4
  %cmp32 = icmp sgt i32 %39, 0
  br i1 %cmp32, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %if.end.31
  %40 = load %struct._GString*, %struct._GString** %str, align 8
  %call35 = call %struct._GString* @g_string_append(%struct._GString* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %if.end.31
  %41 = load %struct._GEnumValue*, %struct._GEnumValue** %enum_value, align 8
  %value_name = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %41, i32 0, i32 1
  %42 = load i8*, i8** %value_name, align 8
  %call37 = call i32 @g_str_has_prefix(i8* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0))
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.else.42

if.then.39:                                       ; preds = %if.end.36
  %43 = load %struct._GEnumValue*, %struct._GEnumValue** %enum_value, align 8
  %value_name40 = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %43, i32 0, i32 1
  %44 = load i8*, i8** %value_name40, align 8
  %add.ptr = getelementptr inbounds i8, i8* %44, i64 5
  %call41 = call noalias i8* @gimp_canonicalize_identifier(i8* %add.ptr)
  store i8* %call41, i8** %name, align 8
  br label %if.end.45

if.else.42:                                       ; preds = %if.end.36
  %45 = load %struct._GEnumValue*, %struct._GEnumValue** %enum_value, align 8
  %value_name43 = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %45, i32 0, i32 1
  %46 = load i8*, i8** %value_name43, align 8
  %call44 = call noalias i8* @gimp_canonicalize_identifier(i8* %46)
  store i8* %call44, i8** %name, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.42, %if.then.39
  %47 = load %struct._GString*, %struct._GString** %str, align 8
  %48 = load i8*, i8** %name, align 8
  %call46 = call %struct._GString* @g_string_append(%struct._GString* %47, i8* %48)
  %49 = load i8*, i8** %name, align 8
  call void @g_free(i8* %49)
  %50 = load %struct._GString*, %struct._GString** %str, align 8
  %51 = load %struct._GEnumValue*, %struct._GEnumValue** %enum_value, align 8
  %value47 = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %51, i32 0, i32 0
  %52 = load i32, i32* %value47, align 4
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 %52)
  %53 = load i32, i32* %n, align 4
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %n, align 4
  br label %for.inc.48

for.inc.48:                                       ; preds = %if.end.45, %if.then.30
  %54 = load i32, i32* %i, align 4
  %inc49 = add nsw i32 %54, 1
  store i32 %inc49, i32* %i, align 4
  %55 = load %struct._GEnumValue*, %struct._GEnumValue** %enum_value, align 8
  %incdec.ptr = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %55, i32 1
  store %struct._GEnumValue* %incdec.ptr, %struct._GEnumValue** %enum_value, align 8
  br label %for.cond

for.end.50:                                       ; preds = %for.cond
  %56 = load %struct._GString*, %struct._GString** %str, align 8
  %call51 = call %struct._GString* @g_string_append(%struct._GString* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0))
  %57 = load %struct._GString*, %struct._GString** %str, align 8
  %call52 = call i8* @g_string_free(%struct._GString* %57, i32 0)
  ret i8* %call52
}

declare noalias i8* @g_strdup(i8*) #2

declare i8* @g_param_spec_get_blurb(%struct._GParamSpec*) #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @gimp_param_spec_get_blurb(%struct._GParamSpec* %pspec) #4 {
entry:
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %blurb = alloca i8*, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %call = call i8* @g_param_spec_get_blurb(%struct._GParamSpec* %0)
  store i8* %call, i8** %blurb, align 8
  %1 = load i8*, i8** %blurb, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i8*, i8** %blurb, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %2, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), %cond.false ]
  ret i8* %cond
}

declare noalias i8* @g_strdup_printf(i8*, ...) #2

declare i8* @g_param_spec_get_name(%struct._GParamSpec*) #2

declare noalias i8* @g_strconcat(i8*, ...) #2

declare %struct._GString* @g_string_new(i8*) #2

declare i8* @g_type_class_peek(i64) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_param_enum_get_type() #3

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #2

declare i32 @g_str_has_prefix(i8*, i8*) #2

declare noalias i8* @gimp_canonicalize_identifier(i8*) #2

declare void @g_free(i8*) #2

declare void @g_string_append_printf(%struct._GString*, i8*, ...) #2

declare i8* @g_string_free(%struct._GString*, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
