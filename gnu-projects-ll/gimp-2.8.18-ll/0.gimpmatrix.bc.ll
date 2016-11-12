; ModuleID = './libgimpmath/gimpmatrix.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInfo = type { i16, void (i8*)*, void (i8*)*, void (i8*, i8*)*, void (i8*, i8*)*, i8*, i16, i16, void (%struct._GTypeInstance*, i8*)*, %struct._GTypeValueTable* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GTypeValueTable = type { void (%struct._GValue*)*, void (%struct._GValue*)*, void (%struct._GValue*, %struct._GValue*)*, i8* (%struct._GValue*)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%union._GTypeCValue = type opaque
%struct._GimpMatrix2 = type { [2 x [2 x double]] }
%struct._GimpMatrix3 = type { [3 x [3 x double]] }
%struct._GParamSpecClass = type { %struct._GTypeClass, i64, void (%struct._GParamSpec*)*, void (%struct._GParamSpec*, %struct._GValue*)*, i32 (%struct._GParamSpec*, %struct._GValue*)*, i32 (%struct._GParamSpec*, %struct._GValue*, %struct._GValue*)*, [4 x i8*] }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GData = type opaque
%struct._GimpParamSpecMatrix2 = type { %struct._GParamSpecBoxed, %struct._GimpMatrix2 }
%struct._GParamSpecBoxed = type { %struct._GParamSpec }
%struct._GimpParamSpecMatrix3 = type { %struct._GParamSpecBoxed, %struct._GimpMatrix3 }
%struct._GimpMatrix4 = type { [4 x [4 x double]] }

@gimp_matrix2_get_type.matrix_type = internal global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"GimpMatrix2\00", align 1
@gimp_param_matrix2_get_type.spec_type = internal global i64 0, align 8
@gimp_param_matrix2_get_type.type_info = internal constant %struct._GTypeInfo { i16 80, void (i8*)* null, void (i8*)* null, void (i8*, i8*)* bitcast (void (%struct._GParamSpecClass*)* @gimp_param_matrix2_class_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null, i16 104, i16 0, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GParamSpec*)* @gimp_param_matrix2_init to void (%struct._GTypeInstance*, i8*)*), %struct._GTypeValueTable* null }, align 8
@g_param_spec_types = external global i64*, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"GimpParamMatrix2\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"LibGimpMath\00", align 1
@__func__.gimp_param_spec_matrix2 = private unnamed_addr constant [24 x i8] c"gimp_param_spec_matrix2\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"default_value != NULL\00", align 1
@gimp_matrix2_identity.identity = internal constant %struct._GimpMatrix2 { [2 x [2 x double]] [[2 x double] [double 1.000000e+00, double 0.000000e+00], [2 x double] [double 0.000000e+00, double 1.000000e+00]] }, align 8
@gimp_matrix3_get_type.matrix_type = internal global i64 0, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"GimpMatrix3\00", align 1
@gimp_param_matrix3_get_type.spec_type = internal global i64 0, align 8
@gimp_param_matrix3_get_type.type_info = internal constant %struct._GTypeInfo { i16 80, void (i8*)* null, void (i8*)* null, void (i8*, i8*)* bitcast (void (%struct._GParamSpecClass*)* @gimp_param_matrix3_class_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null, i16 144, i16 0, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GParamSpec*)* @gimp_param_matrix3_init to void (%struct._GTypeInstance*, i8*)*), %struct._GTypeValueTable* null }, align 8
@.str.5 = private unnamed_addr constant [17 x i8] c"GimpParamMatrix3\00", align 1
@gimp_matrix3_identity.identity = internal constant %struct._GimpMatrix3 { [3 x [3 x double]] [[3 x double] [double 1.000000e+00, double 0.000000e+00, double 0.000000e+00], [3 x double] [double 0.000000e+00, double 1.000000e+00, double 0.000000e+00], [3 x double] [double 0.000000e+00, double 0.000000e+00, double 1.000000e+00]] }, align 8

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_matrix2_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_matrix2_get_type.matrix_type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_boxed_type_register_static(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* (i8*)* bitcast (%struct._GimpMatrix2* (%struct._GimpMatrix2*)* @matrix2_copy to i8* (i8*)*), void (i8*)* @g_free)
  store i64 %call, i64* @gimp_matrix2_get_type.matrix_type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gimp_matrix2_get_type.matrix_type, align 8
  ret i64 %1
}

declare i64 @g_boxed_type_register_static(i8*, i8* (i8*)*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpMatrix2* @matrix2_copy(%struct._GimpMatrix2* %matrix) #2 {
entry:
  %matrix.addr = alloca %struct._GimpMatrix2*, align 8
  store %struct._GimpMatrix2* %matrix, %struct._GimpMatrix2** %matrix.addr, align 8
  %0 = load %struct._GimpMatrix2*, %struct._GimpMatrix2** %matrix.addr, align 8
  %1 = bitcast %struct._GimpMatrix2* %0 to i8*
  %call = call noalias i8* @g_memdup(i8* %1, i32 32)
  %2 = bitcast i8* %call to %struct._GimpMatrix2*
  ret %struct._GimpMatrix2* %2
}

declare void @g_free(i8*) #1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_param_matrix2_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_param_matrix2_get_type.spec_type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 16
  %2 = load i64, i64* %arrayidx, align 8
  %call = call i64 @g_type_register_static(i64 %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), %struct._GTypeInfo* @gimp_param_matrix2_get_type.type_info, i32 0)
  store i64 %call, i64* @gimp_param_matrix2_get_type.spec_type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_param_matrix2_get_type.spec_type, align 8
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_matrix2_class_init(%struct._GParamSpecClass* %class) #2 {
entry:
  %class.addr = alloca %struct._GParamSpecClass*, align 8
  store %struct._GParamSpecClass* %class, %struct._GParamSpecClass** %class.addr, align 8
  %call = call i64 @gimp_matrix2_get_type() #6
  %0 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %class.addr, align 8
  %value_type = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %0, i32 0, i32 1
  store i64 %call, i64* %value_type, align 8
  %1 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %class.addr, align 8
  %value_set_default = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %1, i32 0, i32 3
  store void (%struct._GParamSpec*, %struct._GValue*)* @gimp_param_matrix2_set_default, void (%struct._GParamSpec*, %struct._GValue*)** %value_set_default, align 8
  %2 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %class.addr, align 8
  %values_cmp = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %2, i32 0, i32 5
  store i32 (%struct._GParamSpec*, %struct._GValue*, %struct._GValue*)* @gimp_param_matrix2_values_cmp, i32 (%struct._GParamSpec*, %struct._GValue*, %struct._GValue*)** %values_cmp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_matrix2_init(%struct._GParamSpec* %pspec) #2 {
entry:
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %cspec = alloca %struct._GimpParamSpecMatrix2*, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %1 = bitcast %struct._GParamSpec* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_param_matrix2_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpParamSpecMatrix2*
  store %struct._GimpParamSpecMatrix2* %2, %struct._GimpParamSpecMatrix2** %cspec, align 8
  %3 = load %struct._GimpParamSpecMatrix2*, %struct._GimpParamSpecMatrix2** %cspec, align 8
  %default_value = getelementptr inbounds %struct._GimpParamSpecMatrix2, %struct._GimpParamSpecMatrix2* %3, i32 0, i32 1
  call void @gimp_matrix2_identity(%struct._GimpMatrix2* %default_value)
  ret void
}

declare i64 @g_type_register_static(i64, i8*, %struct._GTypeInfo*, i32) #1

; Function Attrs: nounwind uwtable
define %struct._GParamSpec* @gimp_param_spec_matrix2(i8* %name, i8* %nick, i8* %blurb, %struct._GimpMatrix2* %default_value, i32 %flags) #2 {
entry:
  %retval = alloca %struct._GParamSpec*, align 8
  %name.addr = alloca i8*, align 8
  %nick.addr = alloca i8*, align 8
  %blurb.addr = alloca i8*, align 8
  %default_value.addr = alloca %struct._GimpMatrix2*, align 8
  %flags.addr = alloca i32, align 4
  %cspec = alloca %struct._GimpParamSpecMatrix2*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %nick, i8** %nick.addr, align 8
  store i8* %blurb, i8** %blurb.addr, align 8
  store %struct._GimpMatrix2* %default_value, %struct._GimpMatrix2** %default_value.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpMatrix2*, %struct._GimpMatrix2** %default_value.addr, align 8
  %cmp = icmp ne %struct._GimpMatrix2* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_param_spec_matrix2, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GParamSpec* null, %struct._GParamSpec** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call = call i64 @gimp_param_matrix2_get_type() #6
  %1 = load i8*, i8** %name.addr, align 8
  %2 = load i8*, i8** %nick.addr, align 8
  %3 = load i8*, i8** %blurb.addr, align 8
  %4 = load i32, i32* %flags.addr, align 4
  %call1 = call i8* @g_param_spec_internal(i64 %call, i8* %1, i8* %2, i8* %3, i32 %4)
  %5 = bitcast i8* %call1 to %struct._GimpParamSpecMatrix2*
  store %struct._GimpParamSpecMatrix2* %5, %struct._GimpParamSpecMatrix2** %cspec, align 8
  %6 = load %struct._GimpParamSpecMatrix2*, %struct._GimpParamSpecMatrix2** %cspec, align 8
  %default_value2 = getelementptr inbounds %struct._GimpParamSpecMatrix2, %struct._GimpParamSpecMatrix2* %6, i32 0, i32 1
  %7 = load %struct._GimpMatrix2*, %struct._GimpMatrix2** %default_value.addr, align 8
  %8 = bitcast %struct._GimpMatrix2* %default_value2 to i8*
  %9 = bitcast %struct._GimpMatrix2* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 32, i32 8, i1 false)
  %10 = load %struct._GimpParamSpecMatrix2*, %struct._GimpParamSpecMatrix2** %cspec, align 8
  %11 = bitcast %struct._GimpParamSpecMatrix2* %10 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 76)
  %12 = bitcast %struct._GTypeInstance* %call3 to %struct._GParamSpec*
  store %struct._GParamSpec* %12, %struct._GParamSpec** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %retval
  ret %struct._GParamSpec* %13
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_param_spec_internal(i64, i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_matrix2_identity(%struct._GimpMatrix2* %matrix) #2 {
entry:
  %matrix.addr = alloca %struct._GimpMatrix2*, align 8
  store %struct._GimpMatrix2* %matrix, %struct._GimpMatrix2** %matrix.addr, align 8
  %0 = load %struct._GimpMatrix2*, %struct._GimpMatrix2** %matrix.addr, align 8
  %1 = bitcast %struct._GimpMatrix2* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast (%struct._GimpMatrix2* @gimp_matrix2_identity.identity to i8*), i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_matrix2_mult(%struct._GimpMatrix2* %matrix1, %struct._GimpMatrix2* %matrix2) #2 {
entry:
  %matrix1.addr = alloca %struct._GimpMatrix2*, align 8
  %matrix2.addr = alloca %struct._GimpMatrix2*, align 8
  %tmp = alloca %struct._GimpMatrix2, align 8
  store %struct._GimpMatrix2* %matrix1, %struct._GimpMatrix2** %matrix1.addr, align 8
  store %struct._GimpMatrix2* %matrix2, %struct._GimpMatrix2** %matrix2.addr, align 8
  %0 = load %struct._GimpMatrix2*, %struct._GimpMatrix2** %matrix1.addr, align 8
  %coeff = getelementptr inbounds %struct._GimpMatrix2, %struct._GimpMatrix2* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %coeff, i32 0, i64 0
  %arrayidx1 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx, i32 0, i64 0
  %1 = load double, double* %arrayidx1, align 8
  %2 = load %struct._GimpMatrix2*, %struct._GimpMatrix2** %matrix2.addr, align 8
  %coeff2 = getelementptr inbounds %struct._GimpMatrix2, %struct._GimpMatrix2* %2, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %coeff2, i32 0, i64 0
  %arrayidx4 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx3, i32 0, i64 0
  %3 = load double, double* %arrayidx4, align 8
  %mul = fmul double %1, %3
  %4 = load %struct._GimpMatrix2*, %struct._GimpMatrix2** %matrix1.addr, align 8
  %coeff5 = getelementptr inbounds %struct._GimpMatrix2, %struct._GimpMatrix2* %4, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %coeff5, i32 0, i64 0
  %arrayidx7 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx6, i32 0, i64 1
  %5 = load double, double* %arrayidx7, align 8
  %6 = load %struct._GimpMatrix2*, %struct._GimpMatrix2** %matrix2.addr, align 8
  %coeff8 = getelementptr inbounds %struct._GimpMatrix2, %struct._GimpMatrix2* %6, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %coeff8, i32 0, i64 1
  %arrayidx10 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx9, i32 0, i64 0
  %7 = load double, double* %arrayidx10, align 8
  %mul11 = fmul double %5, %7
  %add = fadd double %mul, %mul11
  %coeff12 = getelementptr inbounds %struct._GimpMatrix2, %struct._GimpMatrix2* %tmp, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %coeff12, i32 0, i64 0
  %arrayidx14 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx13, i32 0, i64 0
  store double %add, double* %arrayidx14, align 8
  %8 = load %struct._GimpMatrix2*, %struct._GimpMatrix2** %matrix1.addr, align 8
  %coeff15 = getelementptr inbounds %struct._GimpMatrix2, %struct._GimpMatrix2* %8, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %coeff15, i32 0, i64 0
  %arrayidx17 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx16, i32 0, i64 0
  %9 = load double, double* %arrayidx17, align 8
  %10 = load %struct._GimpMatrix2*, %struct._GimpMatrix2** %matrix2.addr, align 8
  %coeff18 = getelementptr inbounds %struct._GimpMatrix2, %struct._GimpMatrix2* %10, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %coeff18, i32 0, i64 0
  %arrayidx20 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx19, i32 0, i64 1
  %11 = load double, double* %arrayidx20, align 8
  %mul21 = fmul double %9, %11
  %12 = load %struct._GimpMatrix2*, %struct._GimpMatrix2** %matrix1.addr, align 8
  %coeff22 = getelementptr inbounds %struct._GimpMatrix2, %struct._GimpMatrix2* %12, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %coeff22, i32 0, i64 0
  %arrayidx24 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx23, i32 0, i64 1
  %13 = load double, double* %arrayidx24, align 8
  %14 = load %struct._GimpMatrix2*, %struct._GimpMatrix2** %matrix2.addr, align 8
  %coeff25 = getelementptr inbounds %struct._GimpMatrix2, %struct._GimpMatrix2* %14, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %coeff25, i32 0, i64 1
  %arrayidx27 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx26, i32 0, i64 1
  %15 = load double, double* %arrayidx27, align 8
  %mul28 = fmul double %13, %15
  %add29 = fadd double %mul21, %mul28
  %coeff30 = getelementptr inbounds %struct._GimpMatrix2, %struct._GimpMatrix2* %tmp, i32 0, i32 0
  %arrayidx31 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %coeff30, i32 0, i64 0
  %arrayidx32 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx31, i32 0, i64 1
  store double %add29, double* %arrayidx32, align 8
  %16 = load %struct._GimpMatrix2*, %struct._GimpMatrix2** %matrix1.addr, align 8
  %coeff33 = getelementptr inbounds %struct._GimpMatrix2, %struct._GimpMatrix2* %16, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %coeff33, i32 0, i64 1
  %arrayidx35 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx34, i32 0, i64 0
  %17 = load double, double* %arrayidx35, align 8
  %18 = load %struct._GimpMatrix2*, %struct._GimpMatrix2** %matrix2.addr, align 8
  %coeff36 = getelementptr inbounds %struct._GimpMatrix2, %struct._GimpMatrix2* %18, i32 0, i32 0
  %arrayidx37 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %coeff36, i32 0, i64 0
  %arrayidx38 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx37, i32 0, i64 0
  %19 = load double, double* %arrayidx38, align 8
  %mul39 = fmul double %17, %19
  %20 = load %struct._GimpMatrix2*, %struct._GimpMatrix2** %matrix1.addr, align 8
  %coeff40 = getelementptr inbounds %struct._GimpMatrix2, %struct._GimpMatrix2* %20, i32 0, i32 0
  %arrayidx41 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %coeff40, i32 0, i64 1
  %arrayidx42 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx41, i32 0, i64 1
  %21 = load double, double* %arrayidx42, align 8
  %22 = load %struct._GimpMatrix2*, %struct._GimpMatrix2** %matrix2.addr, align 8
  %coeff43 = getelementptr inbounds %struct._GimpMatrix2, %struct._GimpMatrix2* %22, i32 0, i32 0
  %arrayidx44 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %coeff43, i32 0, i64 1
  %arrayidx45 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx44, i32 0, i64 0
  %23 = load double, double* %arrayidx45, align 8
  %mul46 = fmul double %21, %23
  %add47 = fadd double %mul39, %mul46
  %coeff48 = getelementptr inbounds %struct._GimpMatrix2, %struct._GimpMatrix2* %tmp, i32 0, i32 0
  %arrayidx49 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %coeff48, i32 0, i64 1
  %arrayidx50 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx49, i32 0, i64 0
  store double %add47, double* %arrayidx50, align 8
  %24 = load %struct._GimpMatrix2*, %struct._GimpMatrix2** %matrix1.addr, align 8
  %coeff51 = getelementptr inbounds %struct._GimpMatrix2, %struct._GimpMatrix2* %24, i32 0, i32 0
  %arrayidx52 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %coeff51, i32 0, i64 1
  %arrayidx53 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx52, i32 0, i64 0
  %25 = load double, double* %arrayidx53, align 8
  %26 = load %struct._GimpMatrix2*, %struct._GimpMatrix2** %matrix2.addr, align 8
  %coeff54 = getelementptr inbounds %struct._GimpMatrix2, %struct._GimpMatrix2* %26, i32 0, i32 0
  %arrayidx55 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %coeff54, i32 0, i64 0
  %arrayidx56 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx55, i32 0, i64 1
  %27 = load double, double* %arrayidx56, align 8
  %mul57 = fmul double %25, %27
  %28 = load %struct._GimpMatrix2*, %struct._GimpMatrix2** %matrix1.addr, align 8
  %coeff58 = getelementptr inbounds %struct._GimpMatrix2, %struct._GimpMatrix2* %28, i32 0, i32 0
  %arrayidx59 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %coeff58, i32 0, i64 1
  %arrayidx60 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx59, i32 0, i64 1
  %29 = load double, double* %arrayidx60, align 8
  %30 = load %struct._GimpMatrix2*, %struct._GimpMatrix2** %matrix2.addr, align 8
  %coeff61 = getelementptr inbounds %struct._GimpMatrix2, %struct._GimpMatrix2* %30, i32 0, i32 0
  %arrayidx62 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %coeff61, i32 0, i64 1
  %arrayidx63 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx62, i32 0, i64 1
  %31 = load double, double* %arrayidx63, align 8
  %mul64 = fmul double %29, %31
  %add65 = fadd double %mul57, %mul64
  %coeff66 = getelementptr inbounds %struct._GimpMatrix2, %struct._GimpMatrix2* %tmp, i32 0, i32 0
  %arrayidx67 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %coeff66, i32 0, i64 1
  %arrayidx68 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx67, i32 0, i64 1
  store double %add65, double* %arrayidx68, align 8
  %32 = load %struct._GimpMatrix2*, %struct._GimpMatrix2** %matrix2.addr, align 8
  %33 = bitcast %struct._GimpMatrix2* %32 to i8*
  %34 = bitcast %struct._GimpMatrix2* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_matrix3_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_matrix3_get_type.matrix_type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_boxed_type_register_static(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* (i8*)* bitcast (%struct._GimpMatrix3* (%struct._GimpMatrix3*)* @matrix3_copy to i8* (i8*)*), void (i8*)* @g_free)
  store i64 %call, i64* @gimp_matrix3_get_type.matrix_type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gimp_matrix3_get_type.matrix_type, align 8
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpMatrix3* @matrix3_copy(%struct._GimpMatrix3* %matrix) #2 {
entry:
  %matrix.addr = alloca %struct._GimpMatrix3*, align 8
  store %struct._GimpMatrix3* %matrix, %struct._GimpMatrix3** %matrix.addr, align 8
  %0 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %1 = bitcast %struct._GimpMatrix3* %0 to i8*
  %call = call noalias i8* @g_memdup(i8* %1, i32 72)
  %2 = bitcast i8* %call to %struct._GimpMatrix3*
  ret %struct._GimpMatrix3* %2
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_param_matrix3_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_param_matrix3_get_type.spec_type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 16
  %2 = load i64, i64* %arrayidx, align 8
  %call = call i64 @g_type_register_static(i64 %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), %struct._GTypeInfo* @gimp_param_matrix3_get_type.type_info, i32 0)
  store i64 %call, i64* @gimp_param_matrix3_get_type.spec_type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_param_matrix3_get_type.spec_type, align 8
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_matrix3_class_init(%struct._GParamSpecClass* %class) #2 {
entry:
  %class.addr = alloca %struct._GParamSpecClass*, align 8
  store %struct._GParamSpecClass* %class, %struct._GParamSpecClass** %class.addr, align 8
  %call = call i64 @gimp_matrix3_get_type() #6
  %0 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %class.addr, align 8
  %value_type = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %0, i32 0, i32 1
  store i64 %call, i64* %value_type, align 8
  %1 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %class.addr, align 8
  %value_set_default = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %1, i32 0, i32 3
  store void (%struct._GParamSpec*, %struct._GValue*)* @gimp_param_matrix3_set_default, void (%struct._GParamSpec*, %struct._GValue*)** %value_set_default, align 8
  %2 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %class.addr, align 8
  %values_cmp = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %2, i32 0, i32 5
  store i32 (%struct._GParamSpec*, %struct._GValue*, %struct._GValue*)* @gimp_param_matrix3_values_cmp, i32 (%struct._GParamSpec*, %struct._GValue*, %struct._GValue*)** %values_cmp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_matrix3_init(%struct._GParamSpec* %pspec) #2 {
entry:
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %cspec = alloca %struct._GimpParamSpecMatrix3*, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %1 = bitcast %struct._GParamSpec* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_param_matrix3_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpParamSpecMatrix3*
  store %struct._GimpParamSpecMatrix3* %2, %struct._GimpParamSpecMatrix3** %cspec, align 8
  %3 = load %struct._GimpParamSpecMatrix3*, %struct._GimpParamSpecMatrix3** %cspec, align 8
  %default_value = getelementptr inbounds %struct._GimpParamSpecMatrix3, %struct._GimpParamSpecMatrix3* %3, i32 0, i32 1
  call void @gimp_matrix3_identity(%struct._GimpMatrix3* %default_value)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GParamSpec* @gimp_param_spec_matrix3(i8* %name, i8* %nick, i8* %blurb, %struct._GimpMatrix3* %default_value, i32 %flags) #2 {
entry:
  %name.addr = alloca i8*, align 8
  %nick.addr = alloca i8*, align 8
  %blurb.addr = alloca i8*, align 8
  %default_value.addr = alloca %struct._GimpMatrix3*, align 8
  %flags.addr = alloca i32, align 4
  %cspec = alloca %struct._GimpParamSpecMatrix3*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %nick, i8** %nick.addr, align 8
  store i8* %blurb, i8** %blurb.addr, align 8
  store %struct._GimpMatrix3* %default_value, %struct._GimpMatrix3** %default_value.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %call = call i64 @gimp_param_matrix3_get_type() #6
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i8*, i8** %nick.addr, align 8
  %2 = load i8*, i8** %blurb.addr, align 8
  %3 = load i32, i32* %flags.addr, align 4
  %call1 = call i8* @g_param_spec_internal(i64 %call, i8* %0, i8* %1, i8* %2, i32 %3)
  %4 = bitcast i8* %call1 to %struct._GimpParamSpecMatrix3*
  store %struct._GimpParamSpecMatrix3* %4, %struct._GimpParamSpecMatrix3** %cspec, align 8
  %5 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %default_value.addr, align 8
  %tobool = icmp ne %struct._GimpMatrix3* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpParamSpecMatrix3*, %struct._GimpParamSpecMatrix3** %cspec, align 8
  %default_value2 = getelementptr inbounds %struct._GimpParamSpecMatrix3, %struct._GimpParamSpecMatrix3* %6, i32 0, i32 1
  %7 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %default_value.addr, align 8
  %8 = bitcast %struct._GimpMatrix3* %default_value2 to i8*
  %9 = bitcast %struct._GimpMatrix3* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 72, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._GimpParamSpecMatrix3*, %struct._GimpParamSpecMatrix3** %cspec, align 8
  %11 = bitcast %struct._GimpParamSpecMatrix3* %10 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 76)
  %12 = bitcast %struct._GTypeInstance* %call3 to %struct._GParamSpec*
  ret %struct._GParamSpec* %12
}

; Function Attrs: nounwind uwtable
define void @gimp_matrix3_identity(%struct._GimpMatrix3* %matrix) #2 {
entry:
  %matrix.addr = alloca %struct._GimpMatrix3*, align 8
  store %struct._GimpMatrix3* %matrix, %struct._GimpMatrix3** %matrix.addr, align 8
  %0 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %1 = bitcast %struct._GimpMatrix3* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast (%struct._GimpMatrix3* @gimp_matrix3_identity.identity to i8*), i64 72, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %matrix, double %x, double %y, double* %newx, double* %newy) #2 {
entry:
  %matrix.addr = alloca %struct._GimpMatrix3*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %newx.addr = alloca double*, align 8
  %newy.addr = alloca double*, align 8
  %w = alloca double, align 8
  store %struct._GimpMatrix3* %matrix, %struct._GimpMatrix3** %matrix.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store double* %newx, double** %newx.addr, align 8
  store double* %newy, double** %newy.addr, align 8
  %0 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff, i32 0, i64 2
  %arrayidx1 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx, i32 0, i64 0
  %1 = load double, double* %arrayidx1, align 8
  %2 = load double, double* %x.addr, align 8
  %mul = fmul double %1, %2
  %3 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff2 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %3, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff2, i32 0, i64 2
  %arrayidx4 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx3, i32 0, i64 1
  %4 = load double, double* %arrayidx4, align 8
  %5 = load double, double* %y.addr, align 8
  %mul5 = fmul double %4, %5
  %add = fadd double %mul, %mul5
  %6 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff6 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %6, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff6, i32 0, i64 2
  %arrayidx8 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx7, i32 0, i64 2
  %7 = load double, double* %arrayidx8, align 8
  %add9 = fadd double %add, %7
  store double %add9, double* %w, align 8
  %8 = load double, double* %w, align 8
  %cmp = fcmp oeq double %8, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store double 1.000000e+00, double* %w, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load double, double* %w, align 8
  %div = fdiv double 1.000000e+00, %9
  store double %div, double* %w, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff10 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %10, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff10, i32 0, i64 0
  %arrayidx12 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx11, i32 0, i64 0
  %11 = load double, double* %arrayidx12, align 8
  %12 = load double, double* %x.addr, align 8
  %mul13 = fmul double %11, %12
  %13 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff14 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %13, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff14, i32 0, i64 0
  %arrayidx16 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx15, i32 0, i64 1
  %14 = load double, double* %arrayidx16, align 8
  %15 = load double, double* %y.addr, align 8
  %mul17 = fmul double %14, %15
  %add18 = fadd double %mul13, %mul17
  %16 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff19 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %16, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff19, i32 0, i64 0
  %arrayidx21 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx20, i32 0, i64 2
  %17 = load double, double* %arrayidx21, align 8
  %add22 = fadd double %add18, %17
  %18 = load double, double* %w, align 8
  %mul23 = fmul double %add22, %18
  %19 = load double*, double** %newx.addr, align 8
  store double %mul23, double* %19, align 8
  %20 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff24 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %20, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff24, i32 0, i64 1
  %arrayidx26 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx25, i32 0, i64 0
  %21 = load double, double* %arrayidx26, align 8
  %22 = load double, double* %x.addr, align 8
  %mul27 = fmul double %21, %22
  %23 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff28 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %23, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff28, i32 0, i64 1
  %arrayidx30 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx29, i32 0, i64 1
  %24 = load double, double* %arrayidx30, align 8
  %25 = load double, double* %y.addr, align 8
  %mul31 = fmul double %24, %25
  %add32 = fadd double %mul27, %mul31
  %26 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff33 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %26, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff33, i32 0, i64 1
  %arrayidx35 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx34, i32 0, i64 2
  %27 = load double, double* %arrayidx35, align 8
  %add36 = fadd double %add32, %27
  %28 = load double, double* %w, align 8
  %mul37 = fmul double %add36, %28
  %29 = load double*, double** %newy.addr, align 8
  store double %mul37, double* %29, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_matrix3_mult(%struct._GimpMatrix3* %matrix1, %struct._GimpMatrix3* %matrix2) #2 {
entry:
  %matrix1.addr = alloca %struct._GimpMatrix3*, align 8
  %matrix2.addr = alloca %struct._GimpMatrix3*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %tmp = alloca %struct._GimpMatrix3, align 8
  %t1 = alloca double, align 8
  %t2 = alloca double, align 8
  %t3 = alloca double, align 8
  store %struct._GimpMatrix3* %matrix1, %struct._GimpMatrix3** %matrix1.addr, align 8
  store %struct._GimpMatrix3* %matrix2, %struct._GimpMatrix3** %matrix2.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.46, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end.48

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix1.addr, align 8
  %coeff = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %2, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff, i32 0, i64 %idxprom
  %arrayidx4 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx, i32 0, i64 0
  %3 = load double, double* %arrayidx4, align 8
  store double %3, double* %t1, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %4 to i64
  %5 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix1.addr, align 8
  %coeff6 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %5, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff6, i32 0, i64 %idxprom5
  %arrayidx8 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx7, i32 0, i64 1
  %6 = load double, double* %arrayidx8, align 8
  store double %6, double* %t2, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %7 to i64
  %8 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix1.addr, align 8
  %coeff10 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %8, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff10, i32 0, i64 %idxprom9
  %arrayidx12 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx11, i32 0, i64 2
  %9 = load double, double* %arrayidx12, align 8
  store double %9, double* %t3, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc, %for.body
  %10 = load i32, i32* %j, align 4
  %cmp14 = icmp slt i32 %10, 3
  br i1 %cmp14, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.13
  %11 = load double, double* %t1, align 8
  %12 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %12 to i64
  %13 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix2.addr, align 8
  %coeff17 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %13, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff17, i32 0, i64 0
  %arrayidx19 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx18, i32 0, i64 %idxprom16
  %14 = load double, double* %arrayidx19, align 8
  %mul = fmul double %11, %14
  %15 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %15 to i64
  %16 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %16 to i64
  %coeff22 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %tmp, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff22, i32 0, i64 %idxprom21
  %arrayidx24 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx23, i32 0, i64 %idxprom20
  store double %mul, double* %arrayidx24, align 8
  %17 = load double, double* %t2, align 8
  %18 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %18 to i64
  %19 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix2.addr, align 8
  %coeff26 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %19, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff26, i32 0, i64 1
  %arrayidx28 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx27, i32 0, i64 %idxprom25
  %20 = load double, double* %arrayidx28, align 8
  %mul29 = fmul double %17, %20
  %21 = load i32, i32* %j, align 4
  %idxprom30 = sext i32 %21 to i64
  %22 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %22 to i64
  %coeff32 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %tmp, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff32, i32 0, i64 %idxprom31
  %arrayidx34 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx33, i32 0, i64 %idxprom30
  %23 = load double, double* %arrayidx34, align 8
  %add = fadd double %23, %mul29
  store double %add, double* %arrayidx34, align 8
  %24 = load double, double* %t3, align 8
  %25 = load i32, i32* %j, align 4
  %idxprom35 = sext i32 %25 to i64
  %26 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix2.addr, align 8
  %coeff36 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %26, i32 0, i32 0
  %arrayidx37 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff36, i32 0, i64 2
  %arrayidx38 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx37, i32 0, i64 %idxprom35
  %27 = load double, double* %arrayidx38, align 8
  %mul39 = fmul double %24, %27
  %28 = load i32, i32* %j, align 4
  %idxprom40 = sext i32 %28 to i64
  %29 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %29 to i64
  %coeff42 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %tmp, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff42, i32 0, i64 %idxprom41
  %arrayidx44 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx43, i32 0, i64 %idxprom40
  %30 = load double, double* %arrayidx44, align 8
  %add45 = fadd double %30, %mul39
  store double %add45, double* %arrayidx44, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.15
  %31 = load i32, i32* %j, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.13

for.end:                                          ; preds = %for.cond.13
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.end
  %32 = load i32, i32* %i, align 4
  %inc47 = add nsw i32 %32, 1
  store i32 %inc47, i32* %i, align 4
  br label %for.cond

for.end.48:                                       ; preds = %for.cond
  %33 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix2.addr, align 8
  %34 = bitcast %struct._GimpMatrix3* %33 to i8*
  %35 = bitcast %struct._GimpMatrix3* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 72, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_matrix3_translate(%struct._GimpMatrix3* %matrix, double %x, double %y) #2 {
entry:
  %matrix.addr = alloca %struct._GimpMatrix3*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %g = alloca double, align 8
  %h = alloca double, align 8
  %i = alloca double, align 8
  store %struct._GimpMatrix3* %matrix, %struct._GimpMatrix3** %matrix.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff, i32 0, i64 2
  %arrayidx1 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx, i32 0, i64 0
  %1 = load double, double* %arrayidx1, align 8
  store double %1, double* %g, align 8
  %2 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff2 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %2, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff2, i32 0, i64 2
  %arrayidx4 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx3, i32 0, i64 1
  %3 = load double, double* %arrayidx4, align 8
  store double %3, double* %h, align 8
  %4 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff5 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %4, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff5, i32 0, i64 2
  %arrayidx7 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx6, i32 0, i64 2
  %5 = load double, double* %arrayidx7, align 8
  store double %5, double* %i, align 8
  %6 = load double, double* %x.addr, align 8
  %7 = load double, double* %g, align 8
  %mul = fmul double %6, %7
  %8 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff8 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %8, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff8, i32 0, i64 0
  %arrayidx10 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx9, i32 0, i64 0
  %9 = load double, double* %arrayidx10, align 8
  %add = fadd double %9, %mul
  store double %add, double* %arrayidx10, align 8
  %10 = load double, double* %x.addr, align 8
  %11 = load double, double* %h, align 8
  %mul11 = fmul double %10, %11
  %12 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff12 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %12, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff12, i32 0, i64 0
  %arrayidx14 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx13, i32 0, i64 1
  %13 = load double, double* %arrayidx14, align 8
  %add15 = fadd double %13, %mul11
  store double %add15, double* %arrayidx14, align 8
  %14 = load double, double* %x.addr, align 8
  %15 = load double, double* %i, align 8
  %mul16 = fmul double %14, %15
  %16 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff17 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %16, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff17, i32 0, i64 0
  %arrayidx19 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx18, i32 0, i64 2
  %17 = load double, double* %arrayidx19, align 8
  %add20 = fadd double %17, %mul16
  store double %add20, double* %arrayidx19, align 8
  %18 = load double, double* %y.addr, align 8
  %19 = load double, double* %g, align 8
  %mul21 = fmul double %18, %19
  %20 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff22 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %20, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff22, i32 0, i64 1
  %arrayidx24 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx23, i32 0, i64 0
  %21 = load double, double* %arrayidx24, align 8
  %add25 = fadd double %21, %mul21
  store double %add25, double* %arrayidx24, align 8
  %22 = load double, double* %y.addr, align 8
  %23 = load double, double* %h, align 8
  %mul26 = fmul double %22, %23
  %24 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff27 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %24, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff27, i32 0, i64 1
  %arrayidx29 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx28, i32 0, i64 1
  %25 = load double, double* %arrayidx29, align 8
  %add30 = fadd double %25, %mul26
  store double %add30, double* %arrayidx29, align 8
  %26 = load double, double* %y.addr, align 8
  %27 = load double, double* %i, align 8
  %mul31 = fmul double %26, %27
  %28 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff32 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %28, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff32, i32 0, i64 1
  %arrayidx34 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx33, i32 0, i64 2
  %29 = load double, double* %arrayidx34, align 8
  %add35 = fadd double %29, %mul31
  store double %add35, double* %arrayidx34, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_matrix3_scale(%struct._GimpMatrix3* %matrix, double %x, double %y) #2 {
entry:
  %matrix.addr = alloca %struct._GimpMatrix3*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  store %struct._GimpMatrix3* %matrix, %struct._GimpMatrix3** %matrix.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %1 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff, i32 0, i64 0
  %arrayidx1 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx, i32 0, i64 0
  %2 = load double, double* %arrayidx1, align 8
  %mul = fmul double %2, %0
  store double %mul, double* %arrayidx1, align 8
  %3 = load double, double* %x.addr, align 8
  %4 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff2 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %4, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff2, i32 0, i64 0
  %arrayidx4 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx3, i32 0, i64 1
  %5 = load double, double* %arrayidx4, align 8
  %mul5 = fmul double %5, %3
  store double %mul5, double* %arrayidx4, align 8
  %6 = load double, double* %x.addr, align 8
  %7 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff6 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %7, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff6, i32 0, i64 0
  %arrayidx8 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx7, i32 0, i64 2
  %8 = load double, double* %arrayidx8, align 8
  %mul9 = fmul double %8, %6
  store double %mul9, double* %arrayidx8, align 8
  %9 = load double, double* %y.addr, align 8
  %10 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff10 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %10, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff10, i32 0, i64 1
  %arrayidx12 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx11, i32 0, i64 0
  %11 = load double, double* %arrayidx12, align 8
  %mul13 = fmul double %11, %9
  store double %mul13, double* %arrayidx12, align 8
  %12 = load double, double* %y.addr, align 8
  %13 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff14 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %13, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff14, i32 0, i64 1
  %arrayidx16 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx15, i32 0, i64 1
  %14 = load double, double* %arrayidx16, align 8
  %mul17 = fmul double %14, %12
  store double %mul17, double* %arrayidx16, align 8
  %15 = load double, double* %y.addr, align 8
  %16 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff18 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %16, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff18, i32 0, i64 1
  %arrayidx20 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx19, i32 0, i64 2
  %17 = load double, double* %arrayidx20, align 8
  %mul21 = fmul double %17, %15
  store double %mul21, double* %arrayidx20, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_matrix3_rotate(%struct._GimpMatrix3* %matrix, double %theta) #2 {
entry:
  %matrix.addr = alloca %struct._GimpMatrix3*, align 8
  %theta.addr = alloca double, align 8
  %t1 = alloca double, align 8
  %t2 = alloca double, align 8
  %cost = alloca double, align 8
  %sint = alloca double, align 8
  store %struct._GimpMatrix3* %matrix, %struct._GimpMatrix3** %matrix.addr, align 8
  store double %theta, double* %theta.addr, align 8
  %0 = load double, double* %theta.addr, align 8
  %call = call double @cos(double %0) #3
  store double %call, double* %cost, align 8
  %1 = load double, double* %theta.addr, align 8
  %call1 = call double @sin(double %1) #3
  store double %call1, double* %sint, align 8
  %2 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %2, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff, i32 0, i64 0
  %arrayidx2 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx, i32 0, i64 0
  %3 = load double, double* %arrayidx2, align 8
  store double %3, double* %t1, align 8
  %4 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff3 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %4, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff3, i32 0, i64 1
  %arrayidx5 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx4, i32 0, i64 0
  %5 = load double, double* %arrayidx5, align 8
  store double %5, double* %t2, align 8
  %6 = load double, double* %cost, align 8
  %7 = load double, double* %t1, align 8
  %mul = fmul double %6, %7
  %8 = load double, double* %sint, align 8
  %9 = load double, double* %t2, align 8
  %mul6 = fmul double %8, %9
  %sub = fsub double %mul, %mul6
  %10 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff7 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %10, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff7, i32 0, i64 0
  %arrayidx9 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx8, i32 0, i64 0
  store double %sub, double* %arrayidx9, align 8
  %11 = load double, double* %sint, align 8
  %12 = load double, double* %t1, align 8
  %mul10 = fmul double %11, %12
  %13 = load double, double* %cost, align 8
  %14 = load double, double* %t2, align 8
  %mul11 = fmul double %13, %14
  %add = fadd double %mul10, %mul11
  %15 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff12 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %15, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff12, i32 0, i64 1
  %arrayidx14 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx13, i32 0, i64 0
  store double %add, double* %arrayidx14, align 8
  %16 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff15 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %16, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff15, i32 0, i64 0
  %arrayidx17 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx16, i32 0, i64 1
  %17 = load double, double* %arrayidx17, align 8
  store double %17, double* %t1, align 8
  %18 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff18 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %18, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff18, i32 0, i64 1
  %arrayidx20 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx19, i32 0, i64 1
  %19 = load double, double* %arrayidx20, align 8
  store double %19, double* %t2, align 8
  %20 = load double, double* %cost, align 8
  %21 = load double, double* %t1, align 8
  %mul21 = fmul double %20, %21
  %22 = load double, double* %sint, align 8
  %23 = load double, double* %t2, align 8
  %mul22 = fmul double %22, %23
  %sub23 = fsub double %mul21, %mul22
  %24 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff24 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %24, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff24, i32 0, i64 0
  %arrayidx26 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx25, i32 0, i64 1
  store double %sub23, double* %arrayidx26, align 8
  %25 = load double, double* %sint, align 8
  %26 = load double, double* %t1, align 8
  %mul27 = fmul double %25, %26
  %27 = load double, double* %cost, align 8
  %28 = load double, double* %t2, align 8
  %mul28 = fmul double %27, %28
  %add29 = fadd double %mul27, %mul28
  %29 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff30 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %29, i32 0, i32 0
  %arrayidx31 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff30, i32 0, i64 1
  %arrayidx32 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx31, i32 0, i64 1
  store double %add29, double* %arrayidx32, align 8
  %30 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff33 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %30, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff33, i32 0, i64 0
  %arrayidx35 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx34, i32 0, i64 2
  %31 = load double, double* %arrayidx35, align 8
  store double %31, double* %t1, align 8
  %32 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff36 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %32, i32 0, i32 0
  %arrayidx37 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff36, i32 0, i64 1
  %arrayidx38 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx37, i32 0, i64 2
  %33 = load double, double* %arrayidx38, align 8
  store double %33, double* %t2, align 8
  %34 = load double, double* %cost, align 8
  %35 = load double, double* %t1, align 8
  %mul39 = fmul double %34, %35
  %36 = load double, double* %sint, align 8
  %37 = load double, double* %t2, align 8
  %mul40 = fmul double %36, %37
  %sub41 = fsub double %mul39, %mul40
  %38 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff42 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %38, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff42, i32 0, i64 0
  %arrayidx44 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx43, i32 0, i64 2
  store double %sub41, double* %arrayidx44, align 8
  %39 = load double, double* %sint, align 8
  %40 = load double, double* %t1, align 8
  %mul45 = fmul double %39, %40
  %41 = load double, double* %cost, align 8
  %42 = load double, double* %t2, align 8
  %mul46 = fmul double %41, %42
  %add47 = fadd double %mul45, %mul46
  %43 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff48 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %43, i32 0, i32 0
  %arrayidx49 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff48, i32 0, i64 1
  %arrayidx50 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx49, i32 0, i64 2
  store double %add47, double* %arrayidx50, align 8
  ret void
}

; Function Attrs: nounwind
declare double @cos(double) #4

; Function Attrs: nounwind
declare double @sin(double) #4

; Function Attrs: nounwind uwtable
define void @gimp_matrix3_xshear(%struct._GimpMatrix3* %matrix, double %amount) #2 {
entry:
  %matrix.addr = alloca %struct._GimpMatrix3*, align 8
  %amount.addr = alloca double, align 8
  store %struct._GimpMatrix3* %matrix, %struct._GimpMatrix3** %matrix.addr, align 8
  store double %amount, double* %amount.addr, align 8
  %0 = load double, double* %amount.addr, align 8
  %1 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff, i32 0, i64 1
  %arrayidx1 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx, i32 0, i64 0
  %2 = load double, double* %arrayidx1, align 8
  %mul = fmul double %0, %2
  %3 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff2 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %3, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff2, i32 0, i64 0
  %arrayidx4 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx3, i32 0, i64 0
  %4 = load double, double* %arrayidx4, align 8
  %add = fadd double %4, %mul
  store double %add, double* %arrayidx4, align 8
  %5 = load double, double* %amount.addr, align 8
  %6 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff5 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %6, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff5, i32 0, i64 1
  %arrayidx7 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx6, i32 0, i64 1
  %7 = load double, double* %arrayidx7, align 8
  %mul8 = fmul double %5, %7
  %8 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff9 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %8, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff9, i32 0, i64 0
  %arrayidx11 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx10, i32 0, i64 1
  %9 = load double, double* %arrayidx11, align 8
  %add12 = fadd double %9, %mul8
  store double %add12, double* %arrayidx11, align 8
  %10 = load double, double* %amount.addr, align 8
  %11 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff13 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %11, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff13, i32 0, i64 1
  %arrayidx15 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx14, i32 0, i64 2
  %12 = load double, double* %arrayidx15, align 8
  %mul16 = fmul double %10, %12
  %13 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff17 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %13, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff17, i32 0, i64 0
  %arrayidx19 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx18, i32 0, i64 2
  %14 = load double, double* %arrayidx19, align 8
  %add20 = fadd double %14, %mul16
  store double %add20, double* %arrayidx19, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_matrix3_yshear(%struct._GimpMatrix3* %matrix, double %amount) #2 {
entry:
  %matrix.addr = alloca %struct._GimpMatrix3*, align 8
  %amount.addr = alloca double, align 8
  store %struct._GimpMatrix3* %matrix, %struct._GimpMatrix3** %matrix.addr, align 8
  store double %amount, double* %amount.addr, align 8
  %0 = load double, double* %amount.addr, align 8
  %1 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff, i32 0, i64 0
  %arrayidx1 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx, i32 0, i64 0
  %2 = load double, double* %arrayidx1, align 8
  %mul = fmul double %0, %2
  %3 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff2 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %3, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff2, i32 0, i64 1
  %arrayidx4 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx3, i32 0, i64 0
  %4 = load double, double* %arrayidx4, align 8
  %add = fadd double %4, %mul
  store double %add, double* %arrayidx4, align 8
  %5 = load double, double* %amount.addr, align 8
  %6 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff5 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %6, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff5, i32 0, i64 0
  %arrayidx7 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx6, i32 0, i64 1
  %7 = load double, double* %arrayidx7, align 8
  %mul8 = fmul double %5, %7
  %8 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff9 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %8, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff9, i32 0, i64 1
  %arrayidx11 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx10, i32 0, i64 1
  %9 = load double, double* %arrayidx11, align 8
  %add12 = fadd double %9, %mul8
  store double %add12, double* %arrayidx11, align 8
  %10 = load double, double* %amount.addr, align 8
  %11 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff13 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %11, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff13, i32 0, i64 0
  %arrayidx15 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx14, i32 0, i64 2
  %12 = load double, double* %arrayidx15, align 8
  %mul16 = fmul double %10, %12
  %13 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff17 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %13, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff17, i32 0, i64 1
  %arrayidx19 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx18, i32 0, i64 2
  %14 = load double, double* %arrayidx19, align 8
  %add20 = fadd double %14, %mul16
  store double %add20, double* %arrayidx19, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_matrix3_affine(%struct._GimpMatrix3* %matrix, double %a, double %b, double %c, double %d, double %e, double %f) #2 {
entry:
  %matrix.addr = alloca %struct._GimpMatrix3*, align 8
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  %c.addr = alloca double, align 8
  %d.addr = alloca double, align 8
  %e.addr = alloca double, align 8
  %f.addr = alloca double, align 8
  %affine = alloca %struct._GimpMatrix3, align 8
  store %struct._GimpMatrix3* %matrix, %struct._GimpMatrix3** %matrix.addr, align 8
  store double %a, double* %a.addr, align 8
  store double %b, double* %b.addr, align 8
  store double %c, double* %c.addr, align 8
  store double %d, double* %d.addr, align 8
  store double %e, double* %e.addr, align 8
  store double %f, double* %f.addr, align 8
  %0 = load double, double* %a.addr, align 8
  %coeff = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %affine, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff, i32 0, i64 0
  %arrayidx1 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx, i32 0, i64 0
  store double %0, double* %arrayidx1, align 8
  %1 = load double, double* %b.addr, align 8
  %coeff2 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %affine, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff2, i32 0, i64 1
  %arrayidx4 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx3, i32 0, i64 0
  store double %1, double* %arrayidx4, align 8
  %coeff5 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %affine, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff5, i32 0, i64 2
  %arrayidx7 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx6, i32 0, i64 0
  store double 0.000000e+00, double* %arrayidx7, align 8
  %2 = load double, double* %c.addr, align 8
  %coeff8 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %affine, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff8, i32 0, i64 0
  %arrayidx10 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx9, i32 0, i64 1
  store double %2, double* %arrayidx10, align 8
  %3 = load double, double* %d.addr, align 8
  %coeff11 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %affine, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff11, i32 0, i64 1
  %arrayidx13 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx12, i32 0, i64 1
  store double %3, double* %arrayidx13, align 8
  %coeff14 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %affine, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff14, i32 0, i64 2
  %arrayidx16 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx15, i32 0, i64 1
  store double 0.000000e+00, double* %arrayidx16, align 8
  %4 = load double, double* %e.addr, align 8
  %coeff17 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %affine, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff17, i32 0, i64 0
  %arrayidx19 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx18, i32 0, i64 2
  store double %4, double* %arrayidx19, align 8
  %5 = load double, double* %f.addr, align 8
  %coeff20 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %affine, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff20, i32 0, i64 1
  %arrayidx22 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx21, i32 0, i64 2
  store double %5, double* %arrayidx22, align 8
  %coeff23 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %affine, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff23, i32 0, i64 2
  %arrayidx25 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx24, i32 0, i64 2
  store double 1.000000e+00, double* %arrayidx25, align 8
  %6 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  call void @gimp_matrix3_mult(%struct._GimpMatrix3* %affine, %struct._GimpMatrix3* %6)
  ret void
}

; Function Attrs: nounwind uwtable
define double @gimp_matrix3_determinant(%struct._GimpMatrix3* %matrix) #2 {
entry:
  %matrix.addr = alloca %struct._GimpMatrix3*, align 8
  %determinant = alloca double, align 8
  store %struct._GimpMatrix3* %matrix, %struct._GimpMatrix3** %matrix.addr, align 8
  %0 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff, i32 0, i64 0
  %arrayidx1 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx, i32 0, i64 0
  %1 = load double, double* %arrayidx1, align 8
  %2 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff2 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %2, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff2, i32 0, i64 1
  %arrayidx4 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx3, i32 0, i64 1
  %3 = load double, double* %arrayidx4, align 8
  %4 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff5 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %4, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff5, i32 0, i64 2
  %arrayidx7 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx6, i32 0, i64 2
  %5 = load double, double* %arrayidx7, align 8
  %mul = fmul double %3, %5
  %6 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff8 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %6, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff8, i32 0, i64 1
  %arrayidx10 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx9, i32 0, i64 2
  %7 = load double, double* %arrayidx10, align 8
  %8 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff11 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %8, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff11, i32 0, i64 2
  %arrayidx13 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx12, i32 0, i64 1
  %9 = load double, double* %arrayidx13, align 8
  %mul14 = fmul double %7, %9
  %sub = fsub double %mul, %mul14
  %mul15 = fmul double %1, %sub
  store double %mul15, double* %determinant, align 8
  %10 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff16 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %10, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff16, i32 0, i64 1
  %arrayidx18 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx17, i32 0, i64 0
  %11 = load double, double* %arrayidx18, align 8
  %12 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff19 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %12, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff19, i32 0, i64 0
  %arrayidx21 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx20, i32 0, i64 1
  %13 = load double, double* %arrayidx21, align 8
  %14 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff22 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %14, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff22, i32 0, i64 2
  %arrayidx24 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx23, i32 0, i64 2
  %15 = load double, double* %arrayidx24, align 8
  %mul25 = fmul double %13, %15
  %16 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff26 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %16, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff26, i32 0, i64 0
  %arrayidx28 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx27, i32 0, i64 2
  %17 = load double, double* %arrayidx28, align 8
  %18 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff29 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %18, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff29, i32 0, i64 2
  %arrayidx31 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx30, i32 0, i64 1
  %19 = load double, double* %arrayidx31, align 8
  %mul32 = fmul double %17, %19
  %sub33 = fsub double %mul25, %mul32
  %mul34 = fmul double %11, %sub33
  %20 = load double, double* %determinant, align 8
  %sub35 = fsub double %20, %mul34
  store double %sub35, double* %determinant, align 8
  %21 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff36 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %21, i32 0, i32 0
  %arrayidx37 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff36, i32 0, i64 2
  %arrayidx38 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx37, i32 0, i64 0
  %22 = load double, double* %arrayidx38, align 8
  %23 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff39 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %23, i32 0, i32 0
  %arrayidx40 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff39, i32 0, i64 0
  %arrayidx41 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx40, i32 0, i64 1
  %24 = load double, double* %arrayidx41, align 8
  %25 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff42 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %25, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff42, i32 0, i64 1
  %arrayidx44 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx43, i32 0, i64 2
  %26 = load double, double* %arrayidx44, align 8
  %mul45 = fmul double %24, %26
  %27 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff46 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %27, i32 0, i32 0
  %arrayidx47 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff46, i32 0, i64 0
  %arrayidx48 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx47, i32 0, i64 2
  %28 = load double, double* %arrayidx48, align 8
  %29 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff49 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %29, i32 0, i32 0
  %arrayidx50 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff49, i32 0, i64 1
  %arrayidx51 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx50, i32 0, i64 1
  %30 = load double, double* %arrayidx51, align 8
  %mul52 = fmul double %28, %30
  %sub53 = fsub double %mul45, %mul52
  %mul54 = fmul double %22, %sub53
  %31 = load double, double* %determinant, align 8
  %add = fadd double %31, %mul54
  store double %add, double* %determinant, align 8
  %32 = load double, double* %determinant, align 8
  ret double %32
}

; Function Attrs: nounwind uwtable
define void @gimp_matrix3_invert(%struct._GimpMatrix3* %matrix) #2 {
entry:
  %matrix.addr = alloca %struct._GimpMatrix3*, align 8
  %inv = alloca %struct._GimpMatrix3, align 8
  %det = alloca double, align 8
  store %struct._GimpMatrix3* %matrix, %struct._GimpMatrix3** %matrix.addr, align 8
  %0 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %call = call double @gimp_matrix3_determinant(%struct._GimpMatrix3* %0)
  store double %call, double* %det, align 8
  %1 = load double, double* %det, align 8
  %cmp = fcmp oeq double %1, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load double, double* %det, align 8
  %div = fdiv double 1.000000e+00, %2
  store double %div, double* %det, align 8
  %3 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %3, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff, i32 0, i64 1
  %arrayidx1 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx, i32 0, i64 1
  %4 = load double, double* %arrayidx1, align 8
  %5 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff2 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %5, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff2, i32 0, i64 2
  %arrayidx4 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx3, i32 0, i64 2
  %6 = load double, double* %arrayidx4, align 8
  %mul = fmul double %4, %6
  %7 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff5 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %7, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff5, i32 0, i64 1
  %arrayidx7 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx6, i32 0, i64 2
  %8 = load double, double* %arrayidx7, align 8
  %9 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff8 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %9, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff8, i32 0, i64 2
  %arrayidx10 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx9, i32 0, i64 1
  %10 = load double, double* %arrayidx10, align 8
  %mul11 = fmul double %8, %10
  %sub = fsub double %mul, %mul11
  %11 = load double, double* %det, align 8
  %mul12 = fmul double %sub, %11
  %coeff13 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %inv, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff13, i32 0, i64 0
  %arrayidx15 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx14, i32 0, i64 0
  store double %mul12, double* %arrayidx15, align 8
  %12 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff16 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %12, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff16, i32 0, i64 1
  %arrayidx18 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx17, i32 0, i64 0
  %13 = load double, double* %arrayidx18, align 8
  %14 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff19 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %14, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff19, i32 0, i64 2
  %arrayidx21 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx20, i32 0, i64 2
  %15 = load double, double* %arrayidx21, align 8
  %mul22 = fmul double %13, %15
  %16 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff23 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %16, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff23, i32 0, i64 1
  %arrayidx25 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx24, i32 0, i64 2
  %17 = load double, double* %arrayidx25, align 8
  %18 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff26 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %18, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff26, i32 0, i64 2
  %arrayidx28 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx27, i32 0, i64 0
  %19 = load double, double* %arrayidx28, align 8
  %mul29 = fmul double %17, %19
  %sub30 = fsub double %mul22, %mul29
  %sub31 = fsub double -0.000000e+00, %sub30
  %20 = load double, double* %det, align 8
  %mul32 = fmul double %sub31, %20
  %coeff33 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %inv, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff33, i32 0, i64 1
  %arrayidx35 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx34, i32 0, i64 0
  store double %mul32, double* %arrayidx35, align 8
  %21 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff36 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %21, i32 0, i32 0
  %arrayidx37 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff36, i32 0, i64 1
  %arrayidx38 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx37, i32 0, i64 0
  %22 = load double, double* %arrayidx38, align 8
  %23 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff39 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %23, i32 0, i32 0
  %arrayidx40 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff39, i32 0, i64 2
  %arrayidx41 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx40, i32 0, i64 1
  %24 = load double, double* %arrayidx41, align 8
  %mul42 = fmul double %22, %24
  %25 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff43 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %25, i32 0, i32 0
  %arrayidx44 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff43, i32 0, i64 1
  %arrayidx45 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx44, i32 0, i64 1
  %26 = load double, double* %arrayidx45, align 8
  %27 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff46 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %27, i32 0, i32 0
  %arrayidx47 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff46, i32 0, i64 2
  %arrayidx48 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx47, i32 0, i64 0
  %28 = load double, double* %arrayidx48, align 8
  %mul49 = fmul double %26, %28
  %sub50 = fsub double %mul42, %mul49
  %29 = load double, double* %det, align 8
  %mul51 = fmul double %sub50, %29
  %coeff52 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %inv, i32 0, i32 0
  %arrayidx53 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff52, i32 0, i64 2
  %arrayidx54 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx53, i32 0, i64 0
  store double %mul51, double* %arrayidx54, align 8
  %30 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff55 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %30, i32 0, i32 0
  %arrayidx56 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff55, i32 0, i64 0
  %arrayidx57 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx56, i32 0, i64 1
  %31 = load double, double* %arrayidx57, align 8
  %32 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff58 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %32, i32 0, i32 0
  %arrayidx59 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff58, i32 0, i64 2
  %arrayidx60 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx59, i32 0, i64 2
  %33 = load double, double* %arrayidx60, align 8
  %mul61 = fmul double %31, %33
  %34 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff62 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %34, i32 0, i32 0
  %arrayidx63 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff62, i32 0, i64 0
  %arrayidx64 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx63, i32 0, i64 2
  %35 = load double, double* %arrayidx64, align 8
  %36 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff65 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %36, i32 0, i32 0
  %arrayidx66 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff65, i32 0, i64 2
  %arrayidx67 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx66, i32 0, i64 1
  %37 = load double, double* %arrayidx67, align 8
  %mul68 = fmul double %35, %37
  %sub69 = fsub double %mul61, %mul68
  %sub70 = fsub double -0.000000e+00, %sub69
  %38 = load double, double* %det, align 8
  %mul71 = fmul double %sub70, %38
  %coeff72 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %inv, i32 0, i32 0
  %arrayidx73 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff72, i32 0, i64 0
  %arrayidx74 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx73, i32 0, i64 1
  store double %mul71, double* %arrayidx74, align 8
  %39 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff75 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %39, i32 0, i32 0
  %arrayidx76 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff75, i32 0, i64 0
  %arrayidx77 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx76, i32 0, i64 0
  %40 = load double, double* %arrayidx77, align 8
  %41 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff78 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %41, i32 0, i32 0
  %arrayidx79 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff78, i32 0, i64 2
  %arrayidx80 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx79, i32 0, i64 2
  %42 = load double, double* %arrayidx80, align 8
  %mul81 = fmul double %40, %42
  %43 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff82 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %43, i32 0, i32 0
  %arrayidx83 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff82, i32 0, i64 0
  %arrayidx84 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx83, i32 0, i64 2
  %44 = load double, double* %arrayidx84, align 8
  %45 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff85 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %45, i32 0, i32 0
  %arrayidx86 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff85, i32 0, i64 2
  %arrayidx87 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx86, i32 0, i64 0
  %46 = load double, double* %arrayidx87, align 8
  %mul88 = fmul double %44, %46
  %sub89 = fsub double %mul81, %mul88
  %47 = load double, double* %det, align 8
  %mul90 = fmul double %sub89, %47
  %coeff91 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %inv, i32 0, i32 0
  %arrayidx92 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff91, i32 0, i64 1
  %arrayidx93 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx92, i32 0, i64 1
  store double %mul90, double* %arrayidx93, align 8
  %48 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff94 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %48, i32 0, i32 0
  %arrayidx95 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff94, i32 0, i64 0
  %arrayidx96 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx95, i32 0, i64 0
  %49 = load double, double* %arrayidx96, align 8
  %50 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff97 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %50, i32 0, i32 0
  %arrayidx98 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff97, i32 0, i64 2
  %arrayidx99 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx98, i32 0, i64 1
  %51 = load double, double* %arrayidx99, align 8
  %mul100 = fmul double %49, %51
  %52 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff101 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %52, i32 0, i32 0
  %arrayidx102 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff101, i32 0, i64 0
  %arrayidx103 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx102, i32 0, i64 1
  %53 = load double, double* %arrayidx103, align 8
  %54 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff104 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %54, i32 0, i32 0
  %arrayidx105 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff104, i32 0, i64 2
  %arrayidx106 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx105, i32 0, i64 0
  %55 = load double, double* %arrayidx106, align 8
  %mul107 = fmul double %53, %55
  %sub108 = fsub double %mul100, %mul107
  %sub109 = fsub double -0.000000e+00, %sub108
  %56 = load double, double* %det, align 8
  %mul110 = fmul double %sub109, %56
  %coeff111 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %inv, i32 0, i32 0
  %arrayidx112 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff111, i32 0, i64 2
  %arrayidx113 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx112, i32 0, i64 1
  store double %mul110, double* %arrayidx113, align 8
  %57 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff114 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %57, i32 0, i32 0
  %arrayidx115 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff114, i32 0, i64 0
  %arrayidx116 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx115, i32 0, i64 1
  %58 = load double, double* %arrayidx116, align 8
  %59 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff117 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %59, i32 0, i32 0
  %arrayidx118 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff117, i32 0, i64 1
  %arrayidx119 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx118, i32 0, i64 2
  %60 = load double, double* %arrayidx119, align 8
  %mul120 = fmul double %58, %60
  %61 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff121 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %61, i32 0, i32 0
  %arrayidx122 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff121, i32 0, i64 0
  %arrayidx123 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx122, i32 0, i64 2
  %62 = load double, double* %arrayidx123, align 8
  %63 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff124 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %63, i32 0, i32 0
  %arrayidx125 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff124, i32 0, i64 1
  %arrayidx126 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx125, i32 0, i64 1
  %64 = load double, double* %arrayidx126, align 8
  %mul127 = fmul double %62, %64
  %sub128 = fsub double %mul120, %mul127
  %65 = load double, double* %det, align 8
  %mul129 = fmul double %sub128, %65
  %coeff130 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %inv, i32 0, i32 0
  %arrayidx131 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff130, i32 0, i64 0
  %arrayidx132 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx131, i32 0, i64 2
  store double %mul129, double* %arrayidx132, align 8
  %66 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff133 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %66, i32 0, i32 0
  %arrayidx134 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff133, i32 0, i64 0
  %arrayidx135 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx134, i32 0, i64 0
  %67 = load double, double* %arrayidx135, align 8
  %68 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff136 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %68, i32 0, i32 0
  %arrayidx137 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff136, i32 0, i64 1
  %arrayidx138 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx137, i32 0, i64 2
  %69 = load double, double* %arrayidx138, align 8
  %mul139 = fmul double %67, %69
  %70 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff140 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %70, i32 0, i32 0
  %arrayidx141 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff140, i32 0, i64 0
  %arrayidx142 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx141, i32 0, i64 2
  %71 = load double, double* %arrayidx142, align 8
  %72 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff143 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %72, i32 0, i32 0
  %arrayidx144 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff143, i32 0, i64 1
  %arrayidx145 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx144, i32 0, i64 0
  %73 = load double, double* %arrayidx145, align 8
  %mul146 = fmul double %71, %73
  %sub147 = fsub double %mul139, %mul146
  %sub148 = fsub double -0.000000e+00, %sub147
  %74 = load double, double* %det, align 8
  %mul149 = fmul double %sub148, %74
  %coeff150 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %inv, i32 0, i32 0
  %arrayidx151 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff150, i32 0, i64 1
  %arrayidx152 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx151, i32 0, i64 2
  store double %mul149, double* %arrayidx152, align 8
  %75 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff153 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %75, i32 0, i32 0
  %arrayidx154 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff153, i32 0, i64 0
  %arrayidx155 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx154, i32 0, i64 0
  %76 = load double, double* %arrayidx155, align 8
  %77 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff156 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %77, i32 0, i32 0
  %arrayidx157 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff156, i32 0, i64 1
  %arrayidx158 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx157, i32 0, i64 1
  %78 = load double, double* %arrayidx158, align 8
  %mul159 = fmul double %76, %78
  %79 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff160 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %79, i32 0, i32 0
  %arrayidx161 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff160, i32 0, i64 0
  %arrayidx162 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx161, i32 0, i64 1
  %80 = load double, double* %arrayidx162, align 8
  %81 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff163 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %81, i32 0, i32 0
  %arrayidx164 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff163, i32 0, i64 1
  %arrayidx165 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx164, i32 0, i64 0
  %82 = load double, double* %arrayidx165, align 8
  %mul166 = fmul double %80, %82
  %sub167 = fsub double %mul159, %mul166
  %83 = load double, double* %det, align 8
  %mul168 = fmul double %sub167, %83
  %coeff169 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %inv, i32 0, i32 0
  %arrayidx170 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff169, i32 0, i64 2
  %arrayidx171 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx170, i32 0, i64 2
  store double %mul168, double* %arrayidx171, align 8
  %84 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %85 = bitcast %struct._GimpMatrix3* %84 to i8*
  %86 = bitcast %struct._GimpMatrix3* %inv to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %85, i8* %86, i64 72, i32 8, i1 false)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_matrix3_is_identity(%struct._GimpMatrix3* %matrix) #2 {
entry:
  %retval = alloca i32, align 4
  %matrix.addr = alloca %struct._GimpMatrix3*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct._GimpMatrix3* %matrix, %struct._GimpMatrix3** %matrix.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.19, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end.21

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %j, align 4
  %cmp4 = icmp eq i32 %2, %3
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.3
  %4 = load i32, i32* %j, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %5 to i64
  %6 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %6, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff, i32 0, i64 %idxprom5
  %arrayidx6 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx, i32 0, i64 %idxprom
  %7 = load double, double* %arrayidx6, align 8
  %sub = fsub double %7, 1.000000e+00
  %call = call double @fabs(double %sub) #6
  %cmp7 = fcmp ogt double %call, 1.000000e-06
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.18

if.else:                                          ; preds = %for.body.3
  %8 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %8 to i64
  %9 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %9 to i64
  %10 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff11 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %10, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff11, i32 0, i64 %idxprom10
  %arrayidx13 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx12, i32 0, i64 %idxprom9
  %11 = load double, double* %arrayidx13, align 8
  %call14 = call double @fabs(double %11) #6
  %cmp15 = fcmp ogt double %call14, 1.000000e-06
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.else
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.18
  %12 = load i32, i32* %j, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.end
  %13 = load i32, i32* %i, align 4
  %inc20 = add nsw i32 %13, 1
  store i32 %inc20, i32* %i, align 4
  br label %for.cond

for.end.21:                                       ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.21, %if.then.16, %if.then.8
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #5

; Function Attrs: nounwind uwtable
define i32 @gimp_matrix3_is_diagonal(%struct._GimpMatrix3* %matrix) #2 {
entry:
  %retval = alloca i32, align 4
  %matrix.addr = alloca %struct._GimpMatrix3*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct._GimpMatrix3* %matrix, %struct._GimpMatrix3** %matrix.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.8, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end.10

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %j, align 4
  %cmp4 = icmp ne i32 %2, %3
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.3
  %4 = load i32, i32* %j, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %5 to i64
  %6 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %6, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff, i32 0, i64 %idxprom5
  %arrayidx6 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx, i32 0, i64 %idxprom
  %7 = load double, double* %arrayidx6, align 8
  %call = call double @fabs(double %7) #6
  %cmp7 = fcmp ogt double %call, 1.000000e-06
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %j, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.end
  %9 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %9, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond

for.end.10:                                       ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.10, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @gimp_matrix3_is_affine(%struct._GimpMatrix3* %matrix) #2 {
entry:
  %matrix.addr = alloca %struct._GimpMatrix3*, align 8
  store %struct._GimpMatrix3* %matrix, %struct._GimpMatrix3** %matrix.addr, align 8
  %0 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff, i32 0, i64 2
  %arrayidx1 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx, i32 0, i64 0
  %1 = load double, double* %arrayidx1, align 8
  %call = call double @fabs(double %1) #6
  %cmp = fcmp olt double %call, 1.000000e-06
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff2 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %2, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff2, i32 0, i64 2
  %arrayidx4 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx3, i32 0, i64 1
  %3 = load double, double* %arrayidx4, align 8
  %call5 = call double @fabs(double %3) #6
  %cmp6 = fcmp olt double %call5, 1.000000e-06
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %4 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff7 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %4, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff7, i32 0, i64 2
  %arrayidx9 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx8, i32 0, i64 2
  %5 = load double, double* %arrayidx9, align 8
  %sub = fsub double %5, 1.000000e+00
  %call10 = call double @fabs(double %sub) #6
  %cmp11 = fcmp olt double %call10, 1.000000e-06
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %6 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp11, %land.rhs ]
  %land.ext = zext i1 %6 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define i32 @gimp_matrix3_is_simple(%struct._GimpMatrix3* %matrix) #2 {
entry:
  %matrix.addr = alloca %struct._GimpMatrix3*, align 8
  %c = alloca [3 x double]*, align 8
  store %struct._GimpMatrix3* %matrix, %struct._GimpMatrix3** %matrix.addr, align 8
  %0 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %coeff = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff, i32 0, i32 0
  store [3 x double]* %arraydecay, [3 x double]** %c, align 8
  %1 = load [3 x double]*, [3 x double]** %c, align 8
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %1, i64 2
  %arrayidx1 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx, i32 0, i64 0
  %2 = load double, double* %arrayidx1, align 8
  %sub = fsub double 0.000000e+00, %2
  %call = call double @fabs(double %sub) #6
  %cmp = fcmp olt double %call, 1.000000e-06
  br i1 %cmp, label %land.lhs.true, label %land.end.82

land.lhs.true:                                    ; preds = %entry
  %3 = load [3 x double]*, [3 x double]** %c, align 8
  %arrayidx2 = getelementptr inbounds [3 x double], [3 x double]* %3, i64 2
  %arrayidx3 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx2, i32 0, i64 1
  %4 = load double, double* %arrayidx3, align 8
  %sub4 = fsub double 0.000000e+00, %4
  %call5 = call double @fabs(double %sub4) #6
  %cmp6 = fcmp olt double %call5, 1.000000e-06
  br i1 %cmp6, label %land.lhs.true.7, label %land.end.82

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %5 = load [3 x double]*, [3 x double]** %c, align 8
  %arrayidx8 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 2
  %arrayidx9 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx8, i32 0, i64 2
  %6 = load double, double* %arrayidx9, align 8
  %call10 = call double @fabs(double %6) #6
  %sub11 = fsub double 1.000000e+00, %call10
  %call12 = call double @fabs(double %sub11) #6
  %cmp13 = fcmp olt double %call12, 1.000000e-06
  br i1 %cmp13, label %land.lhs.true.14, label %land.end.82

land.lhs.true.14:                                 ; preds = %land.lhs.true.7
  %7 = load [3 x double]*, [3 x double]** %c, align 8
  %arrayidx15 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0
  %arrayidx16 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx15, i32 0, i64 2
  %8 = load double, double* %arrayidx16, align 8
  %9 = load [3 x double]*, [3 x double]** %c, align 8
  %arrayidx17 = getelementptr inbounds [3 x double], [3 x double]* %9, i64 0
  %arrayidx18 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx17, i32 0, i64 2
  %10 = load double, double* %arrayidx18, align 8
  %call19 = call double @rint(double %10) #6
  %sub20 = fsub double %8, %call19
  %call21 = call double @fabs(double %sub20) #6
  %cmp22 = fcmp olt double %call21, 1.000000e-06
  br i1 %cmp22, label %land.lhs.true.23, label %land.end.82

land.lhs.true.23:                                 ; preds = %land.lhs.true.14
  %11 = load [3 x double]*, [3 x double]** %c, align 8
  %arrayidx24 = getelementptr inbounds [3 x double], [3 x double]* %11, i64 1
  %arrayidx25 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx24, i32 0, i64 2
  %12 = load double, double* %arrayidx25, align 8
  %13 = load [3 x double]*, [3 x double]** %c, align 8
  %arrayidx26 = getelementptr inbounds [3 x double], [3 x double]* %13, i64 1
  %arrayidx27 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx26, i32 0, i64 2
  %14 = load double, double* %arrayidx27, align 8
  %call28 = call double @rint(double %14) #6
  %sub29 = fsub double %12, %call28
  %call30 = call double @fabs(double %sub29) #6
  %cmp31 = fcmp olt double %call30, 1.000000e-06
  br i1 %cmp31, label %land.rhs, label %land.end.82

land.rhs:                                         ; preds = %land.lhs.true.23
  %15 = load [3 x double]*, [3 x double]** %c, align 8
  %arrayidx32 = getelementptr inbounds [3 x double], [3 x double]* %15, i64 0
  %arrayidx33 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx32, i32 0, i64 0
  %16 = load double, double* %arrayidx33, align 8
  %sub34 = fsub double 0.000000e+00, %16
  %call35 = call double @fabs(double %sub34) #6
  %cmp36 = fcmp olt double %call35, 1.000000e-06
  br i1 %cmp36, label %land.lhs.true.37, label %lor.rhs

land.lhs.true.37:                                 ; preds = %land.rhs
  %17 = load [3 x double]*, [3 x double]** %c, align 8
  %arrayidx38 = getelementptr inbounds [3 x double], [3 x double]* %17, i64 0
  %arrayidx39 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx38, i32 0, i64 1
  %18 = load double, double* %arrayidx39, align 8
  %call40 = call double @fabs(double %18) #6
  %sub41 = fsub double 1.000000e+00, %call40
  %call42 = call double @fabs(double %sub41) #6
  %cmp43 = fcmp olt double %call42, 1.000000e-06
  br i1 %cmp43, label %land.lhs.true.44, label %lor.rhs

land.lhs.true.44:                                 ; preds = %land.lhs.true.37
  %19 = load [3 x double]*, [3 x double]** %c, align 8
  %arrayidx45 = getelementptr inbounds [3 x double], [3 x double]* %19, i64 1
  %arrayidx46 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx45, i32 0, i64 0
  %20 = load double, double* %arrayidx46, align 8
  %call47 = call double @fabs(double %20) #6
  %sub48 = fsub double 1.000000e+00, %call47
  %call49 = call double @fabs(double %sub48) #6
  %cmp50 = fcmp olt double %call49, 1.000000e-06
  br i1 %cmp50, label %land.lhs.true.51, label %lor.rhs

land.lhs.true.51:                                 ; preds = %land.lhs.true.44
  %21 = load [3 x double]*, [3 x double]** %c, align 8
  %arrayidx52 = getelementptr inbounds [3 x double], [3 x double]* %21, i64 1
  %arrayidx53 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx52, i32 0, i64 1
  %22 = load double, double* %arrayidx53, align 8
  %sub54 = fsub double 0.000000e+00, %22
  %call55 = call double @fabs(double %sub54) #6
  %cmp56 = fcmp olt double %call55, 1.000000e-06
  br i1 %cmp56, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true.51, %land.lhs.true.44, %land.lhs.true.37, %land.rhs
  %23 = load [3 x double]*, [3 x double]** %c, align 8
  %arrayidx57 = getelementptr inbounds [3 x double], [3 x double]* %23, i64 0
  %arrayidx58 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx57, i32 0, i64 0
  %24 = load double, double* %arrayidx58, align 8
  %call59 = call double @fabs(double %24) #6
  %sub60 = fsub double 1.000000e+00, %call59
  %call61 = call double @fabs(double %sub60) #6
  %cmp62 = fcmp olt double %call61, 1.000000e-06
  br i1 %cmp62, label %land.lhs.true.63, label %land.end

land.lhs.true.63:                                 ; preds = %lor.rhs
  %25 = load [3 x double]*, [3 x double]** %c, align 8
  %arrayidx64 = getelementptr inbounds [3 x double], [3 x double]* %25, i64 0
  %arrayidx65 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx64, i32 0, i64 1
  %26 = load double, double* %arrayidx65, align 8
  %sub66 = fsub double 0.000000e+00, %26
  %call67 = call double @fabs(double %sub66) #6
  %cmp68 = fcmp olt double %call67, 1.000000e-06
  br i1 %cmp68, label %land.lhs.true.69, label %land.end

land.lhs.true.69:                                 ; preds = %land.lhs.true.63
  %27 = load [3 x double]*, [3 x double]** %c, align 8
  %arrayidx70 = getelementptr inbounds [3 x double], [3 x double]* %27, i64 1
  %arrayidx71 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx70, i32 0, i64 0
  %28 = load double, double* %arrayidx71, align 8
  %sub72 = fsub double 0.000000e+00, %28
  %call73 = call double @fabs(double %sub72) #6
  %cmp74 = fcmp olt double %call73, 1.000000e-06
  br i1 %cmp74, label %land.rhs.75, label %land.end

land.rhs.75:                                      ; preds = %land.lhs.true.69
  %29 = load [3 x double]*, [3 x double]** %c, align 8
  %arrayidx76 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 1
  %arrayidx77 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx76, i32 0, i64 1
  %30 = load double, double* %arrayidx77, align 8
  %call78 = call double @fabs(double %30) #6
  %sub79 = fsub double 1.000000e+00, %call78
  %call80 = call double @fabs(double %sub79) #6
  %cmp81 = fcmp olt double %call80, 1.000000e-06
  br label %land.end

land.end:                                         ; preds = %land.rhs.75, %land.lhs.true.69, %land.lhs.true.63, %lor.rhs
  %31 = phi i1 [ false, %land.lhs.true.69 ], [ false, %land.lhs.true.63 ], [ false, %lor.rhs ], [ %cmp81, %land.rhs.75 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true.51
  %32 = phi i1 [ true, %land.lhs.true.51 ], [ %31, %land.end ]
  br label %land.end.82

land.end.82:                                      ; preds = %lor.end, %land.lhs.true.23, %land.lhs.true.14, %land.lhs.true.7, %land.lhs.true, %entry
  %33 = phi i1 [ false, %land.lhs.true.23 ], [ false, %land.lhs.true.14 ], [ false, %land.lhs.true.7 ], [ false, %land.lhs.true ], [ false, %entry ], [ %32, %lor.end ]
  %land.ext = zext i1 %33 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind readnone
declare double @rint(double) #5

; Function Attrs: nounwind uwtable
define void @gimp_matrix4_to_deg(%struct._GimpMatrix4* %matrix, double* %a, double* %b, double* %c) #2 {
entry:
  %matrix.addr = alloca %struct._GimpMatrix4*, align 8
  %a.addr = alloca double*, align 8
  %b.addr = alloca double*, align 8
  %c.addr = alloca double*, align 8
  store %struct._GimpMatrix4* %matrix, %struct._GimpMatrix4** %matrix.addr, align 8
  store double* %a, double** %a.addr, align 8
  store double* %b, double** %b.addr, align 8
  store double* %c, double** %c.addr, align 8
  %0 = load %struct._GimpMatrix4*, %struct._GimpMatrix4** %matrix.addr, align 8
  %coeff = getelementptr inbounds %struct._GimpMatrix4, %struct._GimpMatrix4* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %coeff, i32 0, i64 1
  %arrayidx1 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx, i32 0, i64 0
  %1 = load double, double* %arrayidx1, align 8
  %call = call double @asin(double %1) #3
  %div = fdiv double %call, 0x3FF921FB54442D18
  %mul = fmul double 1.800000e+02, %div
  %2 = load double*, double** %a.addr, align 8
  store double %mul, double* %2, align 8
  %3 = load %struct._GimpMatrix4*, %struct._GimpMatrix4** %matrix.addr, align 8
  %coeff2 = getelementptr inbounds %struct._GimpMatrix4, %struct._GimpMatrix4* %3, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %coeff2, i32 0, i64 2
  %arrayidx4 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx3, i32 0, i64 0
  %4 = load double, double* %arrayidx4, align 8
  %call5 = call double @asin(double %4) #3
  %div6 = fdiv double %call5, 0x3FF921FB54442D18
  %mul7 = fmul double 1.800000e+02, %div6
  %5 = load double*, double** %b.addr, align 8
  store double %mul7, double* %5, align 8
  %6 = load %struct._GimpMatrix4*, %struct._GimpMatrix4** %matrix.addr, align 8
  %coeff8 = getelementptr inbounds %struct._GimpMatrix4, %struct._GimpMatrix4* %6, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %coeff8, i32 0, i64 2
  %arrayidx10 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx9, i32 0, i64 1
  %7 = load double, double* %arrayidx10, align 8
  %call11 = call double @asin(double %7) #3
  %div12 = fdiv double %call11, 0x3FF921FB54442D18
  %mul13 = fmul double 1.800000e+02, %div12
  %8 = load double*, double** %c.addr, align 8
  store double %mul13, double* %8, align 8
  ret void
}

; Function Attrs: nounwind
declare double @asin(double) #4

; Function Attrs: nounwind uwtable
define internal void @gimp_param_matrix2_set_default(%struct._GParamSpec* %pspec, %struct._GValue* %value) #2 {
entry:
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %value.addr = alloca %struct._GValue*, align 8
  %cspec = alloca %struct._GimpParamSpecMatrix2*, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  %0 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %1 = bitcast %struct._GParamSpec* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_param_matrix2_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpParamSpecMatrix2*
  store %struct._GimpParamSpecMatrix2* %2, %struct._GimpParamSpecMatrix2** %cspec, align 8
  %3 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %4 = load %struct._GimpParamSpecMatrix2*, %struct._GimpParamSpecMatrix2** %cspec, align 8
  %default_value = getelementptr inbounds %struct._GimpParamSpecMatrix2, %struct._GimpParamSpecMatrix2* %4, i32 0, i32 1
  %5 = bitcast %struct._GimpMatrix2* %default_value to i8*
  call void @g_value_set_static_boxed(%struct._GValue* %3, i8* %5)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_param_matrix2_values_cmp(%struct._GParamSpec* %pspec, %struct._GValue* %value1, %struct._GValue* %value2) #2 {
entry:
  %retval = alloca i32, align 4
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %value1.addr = alloca %struct._GValue*, align 8
  %value2.addr = alloca %struct._GValue*, align 8
  %matrix1 = alloca %struct._GimpMatrix2*, align 8
  %matrix2 = alloca %struct._GimpMatrix2*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GValue* %value1, %struct._GValue** %value1.addr, align 8
  store %struct._GValue* %value2, %struct._GValue** %value2.addr, align 8
  %0 = load %struct._GValue*, %struct._GValue** %value1.addr, align 8
  %data = getelementptr inbounds %struct._GValue, %struct._GValue* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data, i32 0, i64 0
  %v_pointer = bitcast %union.anon* %arrayidx to i8**
  %1 = load i8*, i8** %v_pointer, align 8
  %2 = bitcast i8* %1 to %struct._GimpMatrix2*
  store %struct._GimpMatrix2* %2, %struct._GimpMatrix2** %matrix1, align 8
  %3 = load %struct._GValue*, %struct._GValue** %value2.addr, align 8
  %data1 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data1, i32 0, i64 0
  %v_pointer3 = bitcast %union.anon* %arrayidx2 to i8**
  %4 = load i8*, i8** %v_pointer3, align 8
  %5 = bitcast i8* %4 to %struct._GimpMatrix2*
  store %struct._GimpMatrix2* %5, %struct._GimpMatrix2** %matrix2, align 8
  %6 = load %struct._GimpMatrix2*, %struct._GimpMatrix2** %matrix1, align 8
  %tobool = icmp ne %struct._GimpMatrix2* %6, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpMatrix2*, %struct._GimpMatrix2** %matrix2, align 8
  %cmp = icmp ne %struct._GimpMatrix2* %7, null
  %cond = select i1 %cmp, i32 -1, i32 0
  store i32 %cond, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %8 = load %struct._GimpMatrix2*, %struct._GimpMatrix2** %matrix2, align 8
  %tobool4 = icmp ne %struct._GimpMatrix2* %8, null
  br i1 %tobool4, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %if.else
  %9 = load %struct._GimpMatrix2*, %struct._GimpMatrix2** %matrix1, align 8
  %cmp6 = icmp ne %struct._GimpMatrix2* %9, null
  %conv = zext i1 %cmp6 to i32
  store i32 %conv, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.7

if.end.7:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.26, %if.end.7
  %10 = load i32, i32* %i, align 4
  %cmp8 = icmp slt i32 %10, 2
  br i1 %cmp8, label %for.body, label %for.end.28

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %for.body
  %11 = load i32, i32* %j, align 4
  %cmp11 = icmp slt i32 %11, 2
  br i1 %cmp11, label %for.body.13, label %for.end

for.body.13:                                      ; preds = %for.cond.10
  %12 = load i32, i32* %j, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %13 to i64
  %14 = load %struct._GimpMatrix2*, %struct._GimpMatrix2** %matrix1, align 8
  %coeff = getelementptr inbounds %struct._GimpMatrix2, %struct._GimpMatrix2* %14, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %coeff, i32 0, i64 %idxprom14
  %arrayidx16 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx15, i32 0, i64 %idxprom
  %15 = load double, double* %arrayidx16, align 8
  %16 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %16 to i64
  %17 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %17 to i64
  %18 = load %struct._GimpMatrix2*, %struct._GimpMatrix2** %matrix2, align 8
  %coeff19 = getelementptr inbounds %struct._GimpMatrix2, %struct._GimpMatrix2* %18, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %coeff19, i32 0, i64 %idxprom18
  %arrayidx21 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx20, i32 0, i64 %idxprom17
  %19 = load double, double* %arrayidx21, align 8
  %cmp22 = fcmp une double %15, %19
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %for.body.13
  store i32 1, i32* %retval
  br label %return

if.end.25:                                        ; preds = %for.body.13
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %20 = load i32, i32* %j, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.10

for.end:                                          ; preds = %for.cond.10
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.end
  %21 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %21, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond

for.end.28:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.28, %if.then.24, %if.then.5, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare void @g_value_set_static_boxed(%struct._GValue*, i8*) #1

declare noalias i8* @g_memdup(i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_param_matrix3_set_default(%struct._GParamSpec* %pspec, %struct._GValue* %value) #2 {
entry:
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %value.addr = alloca %struct._GValue*, align 8
  %cspec = alloca %struct._GimpParamSpecMatrix3*, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  %0 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %1 = bitcast %struct._GParamSpec* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_param_matrix3_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpParamSpecMatrix3*
  store %struct._GimpParamSpecMatrix3* %2, %struct._GimpParamSpecMatrix3** %cspec, align 8
  %3 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %4 = load %struct._GimpParamSpecMatrix3*, %struct._GimpParamSpecMatrix3** %cspec, align 8
  %default_value = getelementptr inbounds %struct._GimpParamSpecMatrix3, %struct._GimpParamSpecMatrix3* %4, i32 0, i32 1
  %5 = bitcast %struct._GimpMatrix3* %default_value to i8*
  call void @g_value_set_static_boxed(%struct._GValue* %3, i8* %5)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_param_matrix3_values_cmp(%struct._GParamSpec* %pspec, %struct._GValue* %value1, %struct._GValue* %value2) #2 {
entry:
  %retval = alloca i32, align 4
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %value1.addr = alloca %struct._GValue*, align 8
  %value2.addr = alloca %struct._GValue*, align 8
  %matrix1 = alloca %struct._GimpMatrix3*, align 8
  %matrix2 = alloca %struct._GimpMatrix3*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GValue* %value1, %struct._GValue** %value1.addr, align 8
  store %struct._GValue* %value2, %struct._GValue** %value2.addr, align 8
  %0 = load %struct._GValue*, %struct._GValue** %value1.addr, align 8
  %data = getelementptr inbounds %struct._GValue, %struct._GValue* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data, i32 0, i64 0
  %v_pointer = bitcast %union.anon* %arrayidx to i8**
  %1 = load i8*, i8** %v_pointer, align 8
  %2 = bitcast i8* %1 to %struct._GimpMatrix3*
  store %struct._GimpMatrix3* %2, %struct._GimpMatrix3** %matrix1, align 8
  %3 = load %struct._GValue*, %struct._GValue** %value2.addr, align 8
  %data1 = getelementptr inbounds %struct._GValue, %struct._GValue* %3, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data1, i32 0, i64 0
  %v_pointer3 = bitcast %union.anon* %arrayidx2 to i8**
  %4 = load i8*, i8** %v_pointer3, align 8
  %5 = bitcast i8* %4 to %struct._GimpMatrix3*
  store %struct._GimpMatrix3* %5, %struct._GimpMatrix3** %matrix2, align 8
  %6 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix1, align 8
  %tobool = icmp ne %struct._GimpMatrix3* %6, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix2, align 8
  %cmp = icmp ne %struct._GimpMatrix3* %7, null
  %cond = select i1 %cmp, i32 -1, i32 0
  store i32 %cond, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %8 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix2, align 8
  %tobool4 = icmp ne %struct._GimpMatrix3* %8, null
  br i1 %tobool4, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %if.else
  %9 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix1, align 8
  %cmp6 = icmp ne %struct._GimpMatrix3* %9, null
  %conv = zext i1 %cmp6 to i32
  store i32 %conv, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.7

if.end.7:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.26, %if.end.7
  %10 = load i32, i32* %i, align 4
  %cmp8 = icmp slt i32 %10, 3
  br i1 %cmp8, label %for.body, label %for.end.28

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %for.body
  %11 = load i32, i32* %j, align 4
  %cmp11 = icmp slt i32 %11, 3
  br i1 %cmp11, label %for.body.13, label %for.end

for.body.13:                                      ; preds = %for.cond.10
  %12 = load i32, i32* %j, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %13 to i64
  %14 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix1, align 8
  %coeff = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %14, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff, i32 0, i64 %idxprom14
  %arrayidx16 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx15, i32 0, i64 %idxprom
  %15 = load double, double* %arrayidx16, align 8
  %16 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %16 to i64
  %17 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %17 to i64
  %18 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix2, align 8
  %coeff19 = getelementptr inbounds %struct._GimpMatrix3, %struct._GimpMatrix3* %18, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %coeff19, i32 0, i64 %idxprom18
  %arrayidx21 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx20, i32 0, i64 %idxprom17
  %19 = load double, double* %arrayidx21, align 8
  %cmp22 = fcmp une double %15, %19
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %for.body.13
  store i32 1, i32* %retval
  br label %return

if.end.25:                                        ; preds = %for.body.13
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %20 = load i32, i32* %j, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.10

for.end:                                          ; preds = %for.cond.10
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.end
  %21 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %21, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond

for.end.28:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.28, %if.then.24, %if.then.5, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
