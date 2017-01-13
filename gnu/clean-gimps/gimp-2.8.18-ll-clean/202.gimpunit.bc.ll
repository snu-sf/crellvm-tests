; ModuleID = './libgimpbase/gimpunit.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInfo = type { i16, void (i8*)*, void (i8*)*, void (i8*, i8*)*, void (i8*, i8*)*, i8*, i16, i16, void (%struct._GTypeInstance*, i8*)*, %struct._GTypeValueTable* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GTypeValueTable = type { void (%struct._GValue*)*, void (%struct._GValue*)*, void (%struct._GValue*, %struct._GValue*)*, i8* (%struct._GValue*)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%union._GTypeCValue = type opaque
%struct._GimpUnitVtable = type { i32 ()*, i32 ()*, i32 (i8*, double, i32, i8*, i8*, i8*, i8*)*, i32 (i32)*, void (i32, i32)*, double (i32)*, i32 (i32)*, i8* (i32)*, i8* (i32)*, i8* (i32)*, i8* (i32)*, i8* (i32)*, void ()*, void ()*, void ()*, void ()* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GParamSpecClass = type { %struct._GTypeClass, i64, void (%struct._GParamSpec*)*, void (%struct._GParamSpec*, %struct._GValue*)*, i32 (%struct._GParamSpec*, %struct._GValue*)*, i32 (%struct._GParamSpec*, %struct._GValue*, %struct._GValue*)*, [4 x i8*] }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GData = type opaque
%struct._GimpParamSpecUnit = type { %struct._GParamSpecInt, i32 }
%struct._GParamSpecInt = type { %struct._GParamSpec, i32, i32, i32 }

@gimp_unit_get_type.unit_type = internal global i64 0, align 8
@gimp_unit_get_type.type_info = internal constant %struct._GTypeInfo zeroinitializer, align 8
@.str = private unnamed_addr constant [9 x i8] c"GimpUnit\00", align 1
@_gimp_unit_vtable = external global %struct._GimpUnitVtable, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"LibGimpBase\00", align 1
@__func__.gimp_unit_get_number_of_units = private unnamed_addr constant [30 x i8] c"gimp_unit_get_number_of_units\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"_gimp_unit_vtable.unit_get_number_of_units != NULL\00", align 1
@__func__.gimp_unit_get_number_of_built_in_units = private unnamed_addr constant [39 x i8] c"gimp_unit_get_number_of_built_in_units\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"_gimp_unit_vtable.unit_get_number_of_built_in_units != NULL\00", align 1
@__func__.gimp_unit_new = private unnamed_addr constant [14 x i8] c"gimp_unit_new\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"_gimp_unit_vtable.unit_new != NULL\00", align 1
@__func__.gimp_unit_get_deletion_flag = private unnamed_addr constant [28 x i8] c"gimp_unit_get_deletion_flag\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"_gimp_unit_vtable.unit_get_deletion_flag != NULL\00", align 1
@__func__.gimp_unit_set_deletion_flag = private unnamed_addr constant [28 x i8] c"gimp_unit_set_deletion_flag\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"_gimp_unit_vtable.unit_set_deletion_flag != NULL\00", align 1
@__func__.gimp_unit_get_factor = private unnamed_addr constant [21 x i8] c"gimp_unit_get_factor\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"_gimp_unit_vtable.unit_get_factor != NULL\00", align 1
@__func__.gimp_unit_get_digits = private unnamed_addr constant [21 x i8] c"gimp_unit_get_digits\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"_gimp_unit_vtable.unit_get_digits != NULL\00", align 1
@__func__.gimp_unit_get_identifier = private unnamed_addr constant [25 x i8] c"gimp_unit_get_identifier\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"_gimp_unit_vtable.unit_get_identifier != NULL\00", align 1
@__func__.gimp_unit_get_symbol = private unnamed_addr constant [21 x i8] c"gimp_unit_get_symbol\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"_gimp_unit_vtable.unit_get_symbol != NULL\00", align 1
@__func__.gimp_unit_get_abbreviation = private unnamed_addr constant [27 x i8] c"gimp_unit_get_abbreviation\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"_gimp_unit_vtable.unit_get_abbreviation != NULL\00", align 1
@__func__.gimp_unit_get_singular = private unnamed_addr constant [23 x i8] c"gimp_unit_get_singular\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"_gimp_unit_vtable.unit_get_singular != NULL\00", align 1
@__func__.gimp_unit_get_plural = private unnamed_addr constant [21 x i8] c"gimp_unit_get_plural\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"_gimp_unit_vtable.unit_get_plural != NULL\00", align 1
@__func__.gimp_unit_format_string = private unnamed_addr constant [24 x i8] c"gimp_unit_format_string\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"format != NULL\00", align 1
@.str.15 = private unnamed_addr constant [98 x i8] c"unit == GIMP_UNIT_PERCENT || (unit >= GIMP_UNIT_PIXEL && unit < gimp_unit_get_number_of_units ())\00", align 1
@.str.16 = private unnamed_addr constant [53 x i8] c"%s: unit-menu-format string ended within %%-sequence\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.19 = private unnamed_addr constant [61 x i8] c"%s: unit-menu-format contains unknown format sequence '%%%c'\00", align 1
@gimp_param_unit_get_type.spec_type = internal global i64 0, align 8
@gimp_param_unit_get_type.type_info = internal constant %struct._GTypeInfo { i16 80, void (i8*)* null, void (i8*)* null, void (i8*, i8*)* bitcast (void (%struct._GParamSpecClass*)* @gimp_param_unit_class_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null, i16 96, i16 0, void (%struct._GTypeInstance*, i8*)* null, %struct._GTypeValueTable* null }, align 8
@g_param_spec_types = external global i64*, align 8
@.str.20 = private unnamed_addr constant [14 x i8] c"GimpParamUnit\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"Can't convert string '%s' to GimpUnit.\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_unit_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_unit_get_type.unit_type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_type_register_static(i64 24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), %struct._GTypeInfo* @gimp_unit_get_type.type_info, i32 0)
  store i64 %call, i64* @gimp_unit_get_type.unit_type, align 8
  %1 = load i64, i64* @gimp_unit_get_type.unit_type, align 8
  call void @g_value_register_transform_func(i64 %1, i64 64, void (%struct._GValue*, %struct._GValue*)* @unit_to_string)
  %2 = load i64, i64* @gimp_unit_get_type.unit_type, align 8
  call void @g_value_register_transform_func(i64 64, i64 %2, void (%struct._GValue*, %struct._GValue*)* @string_to_unit)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_unit_get_type.unit_type, align 8
  ret i64 %3
}

declare i64 @g_type_register_static(i64, i8*, %struct._GTypeInfo*, i32) #1

declare void @g_value_register_transform_func(i64, i64, void (%struct._GValue*, %struct._GValue*)*) #1

; Function Attrs: nounwind uwtable
define internal void @unit_to_string(%struct._GValue* %src_value, %struct._GValue* %dest_value) #2 {
entry:
  %src_value.addr = alloca %struct._GValue*, align 8
  %dest_value.addr = alloca %struct._GValue*, align 8
  %unit = alloca i32, align 4
  store %struct._GValue* %src_value, %struct._GValue** %src_value.addr, align 8
  store %struct._GValue* %dest_value, %struct._GValue** %dest_value.addr, align 8
  %0 = load %struct._GValue*, %struct._GValue** %src_value.addr, align 8
  %call = call i32 @g_value_get_int(%struct._GValue* %0)
  store i32 %call, i32* %unit, align 4
  %1 = load %struct._GValue*, %struct._GValue** %dest_value.addr, align 8
  %2 = load i32, i32* %unit, align 4
  %call1 = call i8* @gimp_unit_get_identifier(i32 %2)
  call void @g_value_set_string(%struct._GValue* %1, i8* %call1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @string_to_unit(%struct._GValue* %src_value, %struct._GValue* %dest_value) #2 {
entry:
  %src_value.addr = alloca %struct._GValue*, align 8
  %dest_value.addr = alloca %struct._GValue*, align 8
  %str = alloca i8*, align 8
  %num_units = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._GValue* %src_value, %struct._GValue** %src_value.addr, align 8
  store %struct._GValue* %dest_value, %struct._GValue** %dest_value.addr, align 8
  %0 = load %struct._GValue*, %struct._GValue** %src_value.addr, align 8
  %call = call i8* @g_value_get_string(%struct._GValue* %0)
  store i8* %call, i8** %str, align 8
  %1 = load i8*, i8** %str, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8*, i8** %str, align 8
  %3 = load i8, i8* %2, align 1
  %tobool1 = icmp ne i8 %3, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %error

if.end:                                           ; preds = %lor.lhs.false
  %call2 = call i32 @gimp_unit_get_number_of_units()
  store i32 %call2, i32* %num_units, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %num_units, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i8*, i8** %str, align 8
  %7 = load i32, i32* %i, align 4
  %call3 = call i8* @gimp_unit_get_identifier(i32 %7)
  %call4 = call i32 @strcmp(i8* %6, i8* %call3) #5
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %for.body
  br label %for.end

if.end.7:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.6, %for.cond
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %num_units, align 4
  %cmp8 = icmp eq i32 %9, %10
  br i1 %cmp8, label %if.then.9, label %if.end.15

if.then.9:                                        ; preds = %for.end
  %11 = load i8*, i8** %str, align 8
  %call10 = call i8* @gimp_unit_get_identifier(i32 65536)
  %call11 = call i32 @strcmp(i8* %11, i8* %call10) #5
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.then.9
  store i32 65536, i32* %i, align 4
  br label %if.end.14

if.else:                                          ; preds = %if.then.9
  br label %error

if.end.14:                                        ; preds = %if.then.13
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %for.end
  %12 = load %struct._GValue*, %struct._GValue** %dest_value.addr, align 8
  %13 = load i32, i32* %i, align 4
  call void @g_value_set_int(%struct._GValue* %12, i32 %13)
  br label %return

error:                                            ; preds = %if.else, %if.then
  %14 = load i8*, i8** %str, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i32 0, i32 0), i8* %14)
  br label %return

return:                                           ; preds = %error, %if.end.15
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_unit_get_number_of_units() #2 {
entry:
  %retval = alloca i32, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32 ()*, i32 ()** getelementptr inbounds (%struct._GimpUnitVtable, %struct._GimpUnitVtable* @_gimp_unit_vtable, i32 0, i32 0), align 8
  %cmp = icmp ne i32 ()* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_unit_get_number_of_units, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i32 0, i32 0))
  store i32 5, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i32 ()*, i32 ()** getelementptr inbounds (%struct._GimpUnitVtable, %struct._GimpUnitVtable* @_gimp_unit_vtable, i32 0, i32 0), align 8
  %call = call i32 %1()
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %2 = load i32, i32* %retval
  ret i32 %2
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone uwtable
define i32 @gimp_unit_get_number_of_built_in_units() #0 {
entry:
  %retval = alloca i32, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32 ()*, i32 ()** getelementptr inbounds (%struct._GimpUnitVtable, %struct._GimpUnitVtable* @_gimp_unit_vtable, i32 0, i32 1), align 8
  %cmp = icmp ne i32 ()* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_unit_get_number_of_built_in_units, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i32 0, i32 0))
  store i32 5, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i32 ()*, i32 ()** getelementptr inbounds (%struct._GimpUnitVtable, %struct._GimpUnitVtable* @_gimp_unit_vtable, i32 0, i32 1), align 8
  %call = call i32 %1()
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %2 = load i32, i32* %retval
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define i32 @gimp_unit_new(i8* %identifier, double %factor, i32 %digits, i8* %symbol, i8* %abbreviation, i8* %singular, i8* %plural) #2 {
entry:
  %retval = alloca i32, align 4
  %identifier.addr = alloca i8*, align 8
  %factor.addr = alloca double, align 8
  %digits.addr = alloca i32, align 4
  %symbol.addr = alloca i8*, align 8
  %abbreviation.addr = alloca i8*, align 8
  %singular.addr = alloca i8*, align 8
  %plural.addr = alloca i8*, align 8
  store i8* %identifier, i8** %identifier.addr, align 8
  store double %factor, double* %factor.addr, align 8
  store i32 %digits, i32* %digits.addr, align 4
  store i8* %symbol, i8** %symbol.addr, align 8
  store i8* %abbreviation, i8** %abbreviation.addr, align 8
  store i8* %singular, i8** %singular.addr, align 8
  store i8* %plural, i8** %plural.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32 (i8*, double, i32, i8*, i8*, i8*, i8*)*, i32 (i8*, double, i32, i8*, i8*, i8*, i8*)** getelementptr inbounds (%struct._GimpUnitVtable, %struct._GimpUnitVtable* @_gimp_unit_vtable, i32 0, i32 2), align 8
  %cmp = icmp ne i32 (i8*, double, i32, i8*, i8*, i8*, i8*)* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.gimp_unit_new, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i32 (i8*, double, i32, i8*, i8*, i8*, i8*)*, i32 (i8*, double, i32, i8*, i8*, i8*, i8*)** getelementptr inbounds (%struct._GimpUnitVtable, %struct._GimpUnitVtable* @_gimp_unit_vtable, i32 0, i32 2), align 8
  %2 = load i8*, i8** %identifier.addr, align 8
  %3 = load double, double* %factor.addr, align 8
  %4 = load i32, i32* %digits.addr, align 4
  %5 = load i8*, i8** %symbol.addr, align 8
  %6 = load i8*, i8** %abbreviation.addr, align 8
  %7 = load i8*, i8** %singular.addr, align 8
  %8 = load i8*, i8** %plural.addr, align 8
  %call = call i32 %1(i8* %2, double %3, i32 %4, i8* %5, i8* %6, i8* %7, i8* %8)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @gimp_unit_get_deletion_flag(i32 %unit) #2 {
entry:
  %retval = alloca i32, align 4
  %unit.addr = alloca i32, align 4
  store i32 %unit, i32* %unit.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct._GimpUnitVtable, %struct._GimpUnitVtable* @_gimp_unit_vtable, i32 0, i32 3), align 8
  %cmp = icmp ne i32 (i32)* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_unit_get_deletion_flag, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct._GimpUnitVtable, %struct._GimpUnitVtable* @_gimp_unit_vtable, i32 0, i32 3), align 8
  %2 = load i32, i32* %unit.addr, align 4
  %call = call i32 %1(i32 %2)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define void @gimp_unit_set_deletion_flag(i32 %unit, i32 %deletion_flag) #2 {
entry:
  %unit.addr = alloca i32, align 4
  %deletion_flag.addr = alloca i32, align 4
  store i32 %unit, i32* %unit.addr, align 4
  store i32 %deletion_flag, i32* %deletion_flag.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%struct._GimpUnitVtable, %struct._GimpUnitVtable* @_gimp_unit_vtable, i32 0, i32 4), align 8
  %cmp = icmp ne void (i32, i32)* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_unit_set_deletion_flag, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load void (i32, i32)*, void (i32, i32)** getelementptr inbounds (%struct._GimpUnitVtable, %struct._GimpUnitVtable* @_gimp_unit_vtable, i32 0, i32 4), align 8
  %2 = load i32, i32* %unit.addr, align 4
  %3 = load i32, i32* %deletion_flag.addr, align 4
  call void %1(i32 %2, i32 %3)
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define double @gimp_unit_get_factor(i32 %unit) #2 {
entry:
  %retval = alloca double, align 8
  %unit.addr = alloca i32, align 4
  store i32 %unit, i32* %unit.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load double (i32)*, double (i32)** getelementptr inbounds (%struct._GimpUnitVtable, %struct._GimpUnitVtable* @_gimp_unit_vtable, i32 0, i32 5), align 8
  %cmp = icmp ne double (i32)* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_unit_get_factor, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i32 0, i32 0))
  store double 1.000000e+00, double* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load double (i32)*, double (i32)** getelementptr inbounds (%struct._GimpUnitVtable, %struct._GimpUnitVtable* @_gimp_unit_vtable, i32 0, i32 5), align 8
  %2 = load i32, i32* %unit.addr, align 4
  %call = call double %1(i32 %2)
  store double %call, double* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %3 = load double, double* %retval
  ret double %3
}

; Function Attrs: nounwind uwtable
define i32 @gimp_unit_get_digits(i32 %unit) #2 {
entry:
  %retval = alloca i32, align 4
  %unit.addr = alloca i32, align 4
  store i32 %unit, i32* %unit.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct._GimpUnitVtable, %struct._GimpUnitVtable* @_gimp_unit_vtable, i32 0, i32 6), align 8
  %cmp = icmp ne i32 (i32)* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_unit_get_digits, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i32 0, i32 0))
  store i32 2, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct._GimpUnitVtable, %struct._GimpUnitVtable* @_gimp_unit_vtable, i32 0, i32 6), align 8
  %2 = load i32, i32* %unit.addr, align 4
  %call = call i32 %1(i32 %2)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i8* @gimp_unit_get_identifier(i32 %unit) #2 {
entry:
  %retval = alloca i8*, align 8
  %unit.addr = alloca i32, align 4
  store i32 %unit, i32* %unit.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8* (i32)*, i8* (i32)** getelementptr inbounds (%struct._GimpUnitVtable, %struct._GimpUnitVtable* @_gimp_unit_vtable, i32 0, i32 7), align 8
  %cmp = icmp ne i8* (i32)* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_unit_get_identifier, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i8* (i32)*, i8* (i32)** getelementptr inbounds (%struct._GimpUnitVtable, %struct._GimpUnitVtable* @_gimp_unit_vtable, i32 0, i32 7), align 8
  %2 = load i32, i32* %unit.addr, align 4
  %call = call i8* %1(i32 %2)
  store i8* %call, i8** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %3 = load i8*, i8** %retval
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define i8* @gimp_unit_get_symbol(i32 %unit) #2 {
entry:
  %retval = alloca i8*, align 8
  %unit.addr = alloca i32, align 4
  store i32 %unit, i32* %unit.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8* (i32)*, i8* (i32)** getelementptr inbounds (%struct._GimpUnitVtable, %struct._GimpUnitVtable* @_gimp_unit_vtable, i32 0, i32 8), align 8
  %cmp = icmp ne i8* (i32)* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_unit_get_symbol, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i8* (i32)*, i8* (i32)** getelementptr inbounds (%struct._GimpUnitVtable, %struct._GimpUnitVtable* @_gimp_unit_vtable, i32 0, i32 8), align 8
  %2 = load i32, i32* %unit.addr, align 4
  %call = call i8* %1(i32 %2)
  store i8* %call, i8** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %3 = load i8*, i8** %retval
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define i8* @gimp_unit_get_abbreviation(i32 %unit) #2 {
entry:
  %retval = alloca i8*, align 8
  %unit.addr = alloca i32, align 4
  store i32 %unit, i32* %unit.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8* (i32)*, i8* (i32)** getelementptr inbounds (%struct._GimpUnitVtable, %struct._GimpUnitVtable* @_gimp_unit_vtable, i32 0, i32 9), align 8
  %cmp = icmp ne i8* (i32)* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_unit_get_abbreviation, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i8* (i32)*, i8* (i32)** getelementptr inbounds (%struct._GimpUnitVtable, %struct._GimpUnitVtable* @_gimp_unit_vtable, i32 0, i32 9), align 8
  %2 = load i32, i32* %unit.addr, align 4
  %call = call i8* %1(i32 %2)
  store i8* %call, i8** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %3 = load i8*, i8** %retval
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define i8* @gimp_unit_get_singular(i32 %unit) #2 {
entry:
  %retval = alloca i8*, align 8
  %unit.addr = alloca i32, align 4
  store i32 %unit, i32* %unit.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8* (i32)*, i8* (i32)** getelementptr inbounds (%struct._GimpUnitVtable, %struct._GimpUnitVtable* @_gimp_unit_vtable, i32 0, i32 10), align 8
  %cmp = icmp ne i8* (i32)* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_unit_get_singular, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i8* (i32)*, i8* (i32)** getelementptr inbounds (%struct._GimpUnitVtable, %struct._GimpUnitVtable* @_gimp_unit_vtable, i32 0, i32 10), align 8
  %2 = load i32, i32* %unit.addr, align 4
  %call = call i8* %1(i32 %2)
  store i8* %call, i8** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %3 = load i8*, i8** %retval
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define i8* @gimp_unit_get_plural(i32 %unit) #2 {
entry:
  %retval = alloca i8*, align 8
  %unit.addr = alloca i32, align 4
  store i32 %unit, i32* %unit.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8* (i32)*, i8* (i32)** getelementptr inbounds (%struct._GimpUnitVtable, %struct._GimpUnitVtable* @_gimp_unit_vtable, i32 0, i32 11), align 8
  %cmp = icmp ne i8* (i32)* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_unit_get_plural, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i8* (i32)*, i8* (i32)** getelementptr inbounds (%struct._GimpUnitVtable, %struct._GimpUnitVtable* @_gimp_unit_vtable, i32 0, i32 11), align 8
  %2 = load i32, i32* %unit.addr, align 4
  %call = call i8* %1(i32 %2)
  store i8* %call, i8** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %3 = load i8*, i8** %retval
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define i8* @gimp_unit_format_string(i8* %format, i32 %unit) #2 {
entry:
  %retval = alloca i8*, align 8
  %format.addr = alloca i8*, align 8
  %unit.addr = alloca i32, align 4
  %buffer = alloca [1024 x i8], align 16
  %i = alloca i32, align 4
  store i8* %format, i8** %format.addr, align 8
  store i32 %unit, i32* %unit.addr, align 4
  store i32 0, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %format.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_unit_format_string, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i32, i32* %unit.addr, align 4
  %cmp2 = icmp eq i32 %1, 65536
  br i1 %cmp2, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.1
  %2 = load i32, i32* %unit.addr, align 4
  %cmp3 = icmp uge i32 %2, 0
  br i1 %cmp3, label %land.lhs.true, label %if.else.6

land.lhs.true:                                    ; preds = %lor.lhs.false
  %3 = load i32, i32* %unit.addr, align 4
  %call = call i32 @gimp_unit_get_number_of_units()
  %cmp4 = icmp ult i32 %3, %call
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %land.lhs.true, %do.body.1
  br label %if.end.7

if.else.6:                                        ; preds = %land.lhs.true, %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_unit_format_string, i32 0, i32 0), i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.15, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.7:                                         ; preds = %if.then.5
  br label %do.end.8

do.end.8:                                         ; preds = %if.end.7
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog.44, %do.end.8
  %4 = load i32, i32* %i, align 4
  %conv = sext i32 %4 to i64
  %cmp9 = icmp ult i64 %conv, 1023
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load i8*, i8** %format.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv11 = sext i8 %6 to i32
  %tobool = icmp ne i32 %conv11, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load i8*, i8** %format.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv12 = sext i8 %9 to i32
  switch i32 %conv12, label %sw.default.40 [
    i32 37, label %sw.bb
  ]

sw.bb:                                            ; preds = %while.body
  %10 = load i8*, i8** %format.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %format.addr, align 8
  %11 = load i8*, i8** %format.addr, align 8
  %12 = load i8, i8* %11, align 1
  %conv13 = sext i8 %12 to i32
  switch i32 %conv13, label %sw.default [
    i32 0, label %sw.bb.14
    i32 37, label %sw.bb.15
    i32 102, label %sw.bb.16
    i32 121, label %sw.bb.19
    i32 97, label %sw.bb.24
    i32 115, label %sw.bb.29
    i32 112, label %sw.bb.34
  ]

sw.bb.14:                                         ; preds = %sw.bb
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_unit_format_string, i32 0, i32 0))
  br label %sw.epilog

sw.bb.15:                                         ; preds = %sw.bb
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer, i32 0, i64 %idxprom
  store i8 37, i8* %arrayidx, align 1
  br label %sw.epilog

sw.bb.16:                                         ; preds = %sw.bb
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer, i32 0, i32 0
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %unit.addr, align 4
  %call17 = call double @gimp_unit_get_factor(i32 %15)
  %call18 = call i32 (i8*, i32, i32, i8*, ...) @print(i8* %arraydecay, i32 1024, i32 %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), double %call17)
  %16 = load i32, i32* %i, align 4
  %add = add nsw i32 %16, %call18
  store i32 %add, i32* %i, align 4
  br label %sw.epilog

sw.bb.19:                                         ; preds = %sw.bb
  %arraydecay20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer, i32 0, i32 0
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %unit.addr, align 4
  %call21 = call i8* @gimp_unit_get_symbol(i32 %18)
  %call22 = call i32 (i8*, i32, i32, i8*, ...) @print(i8* %arraydecay20, i32 1024, i32 %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i8* %call21)
  %19 = load i32, i32* %i, align 4
  %add23 = add nsw i32 %19, %call22
  store i32 %add23, i32* %i, align 4
  br label %sw.epilog

sw.bb.24:                                         ; preds = %sw.bb
  %arraydecay25 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer, i32 0, i32 0
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %unit.addr, align 4
  %call26 = call i8* @gimp_unit_get_abbreviation(i32 %21)
  %call27 = call i32 (i8*, i32, i32, i8*, ...) @print(i8* %arraydecay25, i32 1024, i32 %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i8* %call26)
  %22 = load i32, i32* %i, align 4
  %add28 = add nsw i32 %22, %call27
  store i32 %add28, i32* %i, align 4
  br label %sw.epilog

sw.bb.29:                                         ; preds = %sw.bb
  %arraydecay30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer, i32 0, i32 0
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %unit.addr, align 4
  %call31 = call i8* @gimp_unit_get_singular(i32 %24)
  %call32 = call i32 (i8*, i32, i32, i8*, ...) @print(i8* %arraydecay30, i32 1024, i32 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i8* %call31)
  %25 = load i32, i32* %i, align 4
  %add33 = add nsw i32 %25, %call32
  store i32 %add33, i32* %i, align 4
  br label %sw.epilog

sw.bb.34:                                         ; preds = %sw.bb
  %arraydecay35 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer, i32 0, i32 0
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %unit.addr, align 4
  %call36 = call i8* @gimp_unit_get_plural(i32 %27)
  %call37 = call i32 (i8*, i32, i32, i8*, ...) @print(i8* %arraydecay35, i32 1024, i32 %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i8* %call36)
  %28 = load i32, i32* %i, align 4
  %add38 = add nsw i32 %28, %call37
  store i32 %add38, i32* %i, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb
  %29 = load i8*, i8** %format.addr, align 8
  %30 = load i8, i8* %29, align 1
  %conv39 = sext i8 %30 to i32
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_unit_format_string, i32 0, i32 0), i32 %conv39)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.34, %sw.bb.29, %sw.bb.24, %sw.bb.19, %sw.bb.16, %sw.bb.15, %sw.bb.14
  br label %sw.epilog.44

sw.default.40:                                    ; preds = %while.body
  %31 = load i8*, i8** %format.addr, align 8
  %32 = load i8, i8* %31, align 1
  %33 = load i32, i32* %i, align 4
  %inc41 = add nsw i32 %33, 1
  store i32 %inc41, i32* %i, align 4
  %idxprom42 = sext i32 %33 to i64
  %arrayidx43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer, i32 0, i64 %idxprom42
  store i8 %32, i8* %arrayidx43, align 1
  br label %sw.epilog.44

sw.epilog.44:                                     ; preds = %sw.default.40, %sw.epilog
  %34 = load i8*, i8** %format.addr, align 8
  %incdec.ptr45 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr45, i8** %format.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %35 = load i32, i32* %i, align 4
  %conv46 = sext i32 %35 to i64
  %cmp47 = icmp ult i64 %conv46, 1023
  br i1 %cmp47, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end
  %36 = load i32, i32* %i, align 4
  %conv49 = sext i32 %36 to i64
  br label %cond.end

cond.false:                                       ; preds = %while.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv49, %cond.true ], [ 1023, %cond.false ]
  %arrayidx50 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer, i32 0, i64 %cond
  store i8 0, i8* %arrayidx50, align 1
  %arraydecay51 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer, i32 0, i32 0
  %call52 = call noalias i8* @g_strdup(i8* %arraydecay51)
  store i8* %call52, i8** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.else.6, %if.else
  %37 = load i8*, i8** %retval
  ret i8* %37
}

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #2 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @print(i8* %buf, i32 %len, i32 %start, i8* %fmt, ...) #2 {
entry:
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %start.addr = alloca i32, align 4
  %fmt.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %printed = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 %start, i32* %start.addr, align 4
  store i8* %fmt, i8** %fmt.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %buf.addr, align 8
  %1 = load i32, i32* %start.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = load i32, i32* %len.addr, align 4
  %3 = load i32, i32* %start.addr, align 4
  %sub = sub nsw i32 %2, %3
  %conv = sext i32 %sub to i64
  %4 = load i8*, i8** %fmt.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call = call i32 @g_vsnprintf(i8* %add.ptr, i64 %conv, i8* %4, %struct.__va_list_tag* %arraydecay2)
  store i32 %call, i32* %printed, align 4
  %5 = load i32, i32* %printed, align 4
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %len.addr, align 4
  %7 = load i32, i32* %start.addr, align 4
  %sub4 = sub nsw i32 %6, %7
  store i32 %sub4, i32* %printed, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay56 = bitcast %struct.__va_list_tag* %arraydecay5 to i8*
  call void @llvm.va_end(i8* %arraydecay56)
  %8 = load i32, i32* %printed, align 4
  ret i32 %8
}

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_param_unit_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_param_unit_get_type.spec_type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 3
  %2 = load i64, i64* %arrayidx, align 8
  %call = call i64 @g_type_register_static(i64 %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), %struct._GTypeInfo* @gimp_param_unit_get_type.type_info, i32 0)
  store i64 %call, i64* @gimp_param_unit_get_type.spec_type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_param_unit_get_type.spec_type, align 8
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_unit_class_init(%struct._GParamSpecClass* %class) #2 {
entry:
  %class.addr = alloca %struct._GParamSpecClass*, align 8
  store %struct._GParamSpecClass* %class, %struct._GParamSpecClass** %class.addr, align 8
  %call = call i64 @gimp_unit_get_type() #6
  %0 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %class.addr, align 8
  %value_type = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %0, i32 0, i32 1
  store i64 %call, i64* %value_type, align 8
  %1 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %class.addr, align 8
  %value_validate = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %1, i32 0, i32 4
  store i32 (%struct._GParamSpec*, %struct._GValue*)* @gimp_param_unit_value_validate, i32 (%struct._GParamSpec*, %struct._GValue*)** %value_validate, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GParamSpec* @gimp_param_spec_unit(i8* %name, i8* %nick, i8* %blurb, i32 %allow_pixels, i32 %allow_percent, i32 %default_value, i32 %flags) #2 {
entry:
  %name.addr = alloca i8*, align 8
  %nick.addr = alloca i8*, align 8
  %blurb.addr = alloca i8*, align 8
  %allow_pixels.addr = alloca i32, align 4
  %allow_percent.addr = alloca i32, align 4
  %default_value.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %pspec = alloca %struct._GimpParamSpecUnit*, align 8
  %ispec = alloca %struct._GParamSpecInt*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %nick, i8** %nick.addr, align 8
  store i8* %blurb, i8** %blurb.addr, align 8
  store i32 %allow_pixels, i32* %allow_pixels.addr, align 4
  store i32 %allow_percent, i32* %allow_percent.addr, align 4
  store i32 %default_value, i32* %default_value.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %call = call i64 @gimp_param_unit_get_type() #6
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i8*, i8** %nick.addr, align 8
  %2 = load i8*, i8** %blurb.addr, align 8
  %3 = load i32, i32* %flags.addr, align 4
  %call1 = call i8* @g_param_spec_internal(i64 %call, i8* %0, i8* %1, i8* %2, i32 %3)
  %4 = bitcast i8* %call1 to %struct._GimpParamSpecUnit*
  store %struct._GimpParamSpecUnit* %4, %struct._GimpParamSpecUnit** %pspec, align 8
  %5 = load %struct._GimpParamSpecUnit*, %struct._GimpParamSpecUnit** %pspec, align 8
  %6 = bitcast %struct._GimpParamSpecUnit* %5 to %struct._GTypeInstance*
  %7 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %7, i64 3
  %8 = load i64, i64* %arrayidx, align 8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %8)
  %9 = bitcast %struct._GTypeInstance* %call2 to %struct._GParamSpecInt*
  store %struct._GParamSpecInt* %9, %struct._GParamSpecInt** %ispec, align 8
  %10 = load i32, i32* %default_value.addr, align 4
  %11 = load %struct._GParamSpecInt*, %struct._GParamSpecInt** %ispec, align 8
  %default_value3 = getelementptr inbounds %struct._GParamSpecInt, %struct._GParamSpecInt* %11, i32 0, i32 3
  store i32 %10, i32* %default_value3, align 4
  %12 = load i32, i32* %allow_pixels.addr, align 4
  %tobool = icmp ne i32 %12, 0
  %cond = select i1 %tobool, i32 0, i32 1
  %13 = load %struct._GParamSpecInt*, %struct._GParamSpecInt** %ispec, align 8
  %minimum = getelementptr inbounds %struct._GParamSpecInt, %struct._GParamSpecInt* %13, i32 0, i32 1
  store i32 %cond, i32* %minimum, align 4
  %14 = load %struct._GParamSpecInt*, %struct._GParamSpecInt** %ispec, align 8
  %maximum = getelementptr inbounds %struct._GParamSpecInt, %struct._GParamSpecInt* %14, i32 0, i32 2
  store i32 65535, i32* %maximum, align 4
  %15 = load i32, i32* %allow_percent.addr, align 4
  %16 = load %struct._GimpParamSpecUnit*, %struct._GimpParamSpecUnit** %pspec, align 8
  %allow_percent4 = getelementptr inbounds %struct._GimpParamSpecUnit, %struct._GimpParamSpecUnit* %16, i32 0, i32 1
  store i32 %15, i32* %allow_percent4, align 4
  %17 = load %struct._GimpParamSpecUnit*, %struct._GimpParamSpecUnit** %pspec, align 8
  %18 = bitcast %struct._GimpParamSpecUnit* %17 to %struct._GTypeInstance*
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 76)
  %19 = bitcast %struct._GTypeInstance* %call5 to %struct._GParamSpec*
  ret %struct._GParamSpec* %19
}

declare i8* @g_param_spec_internal(i64, i8*, i8*, i8*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define double @gimp_pixels_to_units(double %pixels, i32 %unit, double %resolution) #2 {
entry:
  %retval = alloca double, align 8
  %pixels.addr = alloca double, align 8
  %unit.addr = alloca i32, align 4
  %resolution.addr = alloca double, align 8
  store double %pixels, double* %pixels.addr, align 8
  store i32 %unit, i32* %unit.addr, align 4
  store double %resolution, double* %resolution.addr, align 8
  %0 = load i32, i32* %unit.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load double, double* %pixels.addr, align 8
  store double %1, double* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load double, double* %pixels.addr, align 8
  %3 = load i32, i32* %unit.addr, align 4
  %call = call double @gimp_unit_get_factor(i32 %3)
  %mul = fmul double %2, %call
  %4 = load double, double* %resolution.addr, align 8
  %div = fdiv double %mul, %4
  store double %div, double* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load double, double* %retval
  ret double %5
}

; Function Attrs: nounwind uwtable
define double @gimp_units_to_pixels(double %value, i32 %unit, double %resolution) #2 {
entry:
  %retval = alloca double, align 8
  %value.addr = alloca double, align 8
  %unit.addr = alloca i32, align 4
  %resolution.addr = alloca double, align 8
  store double %value, double* %value.addr, align 8
  store i32 %unit, i32* %unit.addr, align 4
  store double %resolution, double* %resolution.addr, align 8
  %0 = load i32, i32* %unit.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load double, double* %value.addr, align 8
  store double %1, double* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load double, double* %value.addr, align 8
  %3 = load double, double* %resolution.addr, align 8
  %mul = fmul double %2, %3
  %4 = load i32, i32* %unit.addr, align 4
  %call = call double @gimp_unit_get_factor(i32 %4)
  %div = fdiv double %mul, %call
  store double %div, double* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load double, double* %retval
  ret double %5
}

; Function Attrs: nounwind uwtable
define double @gimp_units_to_points(double %value, i32 %unit, double %resolution) #2 {
entry:
  %retval = alloca double, align 8
  %value.addr = alloca double, align 8
  %unit.addr = alloca i32, align 4
  %resolution.addr = alloca double, align 8
  store double %value, double* %value.addr, align 8
  store i32 %unit, i32* %unit.addr, align 4
  store double %resolution, double* %resolution.addr, align 8
  %0 = load i32, i32* %unit.addr, align 4
  %cmp = icmp eq i32 %0, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load double, double* %value.addr, align 8
  store double %1, double* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %unit.addr, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %3 = load double, double* %value.addr, align 8
  %call = call double @gimp_unit_get_factor(i32 3)
  %mul = fmul double %3, %call
  %4 = load double, double* %resolution.addr, align 8
  %div = fdiv double %mul, %4
  store double %div, double* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %5 = load double, double* %value.addr, align 8
  %call4 = call double @gimp_unit_get_factor(i32 3)
  %mul5 = fmul double %5, %call4
  %6 = load i32, i32* %unit.addr, align 4
  %call6 = call double @gimp_unit_get_factor(i32 %6)
  %div7 = fdiv double %mul5, %call6
  store double %div7, double* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %7 = load double, double* %retval
  ret double %7
}

declare i32 @g_value_get_int(%struct._GValue*) #1

declare void @g_value_set_string(%struct._GValue*, i8*) #1

declare i8* @g_value_get_string(%struct._GValue*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare void @g_value_set_int(%struct._GValue*, i32) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

declare i32 @g_vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_param_unit_value_validate(%struct._GParamSpec* %pspec, %struct._GValue* %value) #2 {
entry:
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %value.addr = alloca %struct._GValue*, align 8
  %ispec = alloca %struct._GParamSpecInt*, align 8
  %uspec = alloca %struct._GimpParamSpecUnit*, align 8
  %oval = alloca i32, align 4
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  %0 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %1 = bitcast %struct._GParamSpec* %0 to %struct._GTypeInstance*
  %2 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %2, i64 3
  %3 = load i64, i64* %arrayidx, align 8
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %3)
  %4 = bitcast %struct._GTypeInstance* %call to %struct._GParamSpecInt*
  store %struct._GParamSpecInt* %4, %struct._GParamSpecInt** %ispec, align 8
  %5 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %6 = bitcast %struct._GParamSpec* %5 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_param_unit_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call1)
  %7 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpParamSpecUnit*
  store %struct._GimpParamSpecUnit* %7, %struct._GimpParamSpecUnit** %uspec, align 8
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data = getelementptr inbounds %struct._GValue, %struct._GValue* %8, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data, i32 0, i64 0
  %v_int = bitcast %union.anon* %arrayidx3 to i32*
  %9 = load i32, i32* %v_int, align 4
  store i32 %9, i32* %oval, align 4
  %10 = load %struct._GimpParamSpecUnit*, %struct._GimpParamSpecUnit** %uspec, align 8
  %allow_percent = getelementptr inbounds %struct._GimpParamSpecUnit, %struct._GimpParamSpecUnit* %10, i32 0, i32 1
  %11 = load i32, i32* %allow_percent, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %12 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data4 = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data4, i32 0, i64 0
  %v_int6 = bitcast %union.anon* %arrayidx5 to i32*
  %13 = load i32, i32* %v_int6, align 4
  %cmp = icmp eq i32 %13, 65536
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %14 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data7 = getelementptr inbounds %struct._GValue, %struct._GValue* %14, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data7, i32 0, i64 0
  %v_int9 = bitcast %union.anon* %arrayidx8 to i32*
  %15 = load i32, i32* %v_int9, align 4
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data10 = getelementptr inbounds %struct._GValue, %struct._GValue* %16, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data10, i32 0, i64 0
  %v_int12 = bitcast %union.anon* %arrayidx11 to i32*
  store i32 %15, i32* %v_int12, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %17 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data13 = getelementptr inbounds %struct._GValue, %struct._GValue* %17, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data13, i32 0, i64 0
  %v_int15 = bitcast %union.anon* %arrayidx14 to i32*
  %18 = load i32, i32* %v_int15, align 4
  %call16 = call i32 @gimp_unit_get_number_of_units()
  %sub = sub nsw i32 %call16, 1
  %cmp17 = icmp sgt i32 %18, %sub
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %call18 = call i32 @gimp_unit_get_number_of_units()
  %sub19 = sub nsw i32 %call18, 1
  br label %cond.end.30

cond.false:                                       ; preds = %if.else
  %19 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data20 = getelementptr inbounds %struct._GValue, %struct._GValue* %19, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data20, i32 0, i64 0
  %v_int22 = bitcast %union.anon* %arrayidx21 to i32*
  %20 = load i32, i32* %v_int22, align 4
  %21 = load %struct._GParamSpecInt*, %struct._GParamSpecInt** %ispec, align 8
  %minimum = getelementptr inbounds %struct._GParamSpecInt, %struct._GParamSpecInt* %21, i32 0, i32 1
  %22 = load i32, i32* %minimum, align 4
  %cmp23 = icmp slt i32 %20, %22
  br i1 %cmp23, label %cond.true.24, label %cond.false.26

cond.true.24:                                     ; preds = %cond.false
  %23 = load %struct._GParamSpecInt*, %struct._GParamSpecInt** %ispec, align 8
  %minimum25 = getelementptr inbounds %struct._GParamSpecInt, %struct._GParamSpecInt* %23, i32 0, i32 1
  %24 = load i32, i32* %minimum25, align 4
  br label %cond.end

cond.false.26:                                    ; preds = %cond.false
  %25 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data27 = getelementptr inbounds %struct._GValue, %struct._GValue* %25, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data27, i32 0, i64 0
  %v_int29 = bitcast %union.anon* %arrayidx28 to i32*
  %26 = load i32, i32* %v_int29, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.26, %cond.true.24
  %cond = phi i32 [ %24, %cond.true.24 ], [ %26, %cond.false.26 ]
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.end, %cond.true
  %cond31 = phi i32 [ %sub19, %cond.true ], [ %cond, %cond.end ]
  %27 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data32 = getelementptr inbounds %struct._GValue, %struct._GValue* %27, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data32, i32 0, i64 0
  %v_int34 = bitcast %union.anon* %arrayidx33 to i32*
  store i32 %cond31, i32* %v_int34, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.30, %if.then
  %28 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %data35 = getelementptr inbounds %struct._GValue, %struct._GValue* %28, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [2 x %union.anon], [2 x %union.anon]* %data35, i32 0, i64 0
  %v_int37 = bitcast %union.anon* %arrayidx36 to i32*
  %29 = load i32, i32* %v_int37, align 4
  %30 = load i32, i32* %oval, align 4
  %cmp38 = icmp ne i32 %29, %30
  %conv = zext i1 %cmp38 to i32
  ret i32 %conv
}

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
