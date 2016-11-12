; ModuleID = './app/core/gimpunit.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GimpUnitDef = type { i32, double, i32, i8*, i8*, i8*, i8*, i8* }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__._gimp_unit_get_deletion_flag = private unnamed_addr constant [29 x i8] c"_gimp_unit_get_deletion_flag\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"unit < (GIMP_UNIT_END + gimp->n_user_units)\00", align 1
@__func__._gimp_unit_set_deletion_flag = private unnamed_addr constant [29 x i8] c"_gimp_unit_set_deletion_flag\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"(unit >= GIMP_UNIT_END) && (unit < (GIMP_UNIT_END + gimp->n_user_units))\00", align 1
@__func__._gimp_unit_get_factor = private unnamed_addr constant [22 x i8] c"_gimp_unit_get_factor\00", align 1
@gimp_unit_defs = internal constant [5 x %struct.GimpUnitDef] [%struct.GimpUnitDef { i32 0, double 0.000000e+00, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0) }, %struct.GimpUnitDef { i32 0, double 1.000000e+00, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0) }, %struct.GimpUnitDef { i32 0, double 2.540000e+01, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0) }, %struct.GimpUnitDef { i32 0, double 7.200000e+01, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0) }, %struct.GimpUnitDef { i32 0, double 6.000000e+00, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0) }], align 16
@__func__._gimp_unit_get_digits = private unnamed_addr constant [22 x i8] c"_gimp_unit_get_digits\00", align 1
@__func__._gimp_unit_get_identifier = private unnamed_addr constant [26 x i8] c"_gimp_unit_get_identifier\00", align 1
@.str.3 = private unnamed_addr constant [77 x i8] c"(unit < (GIMP_UNIT_END + gimp->n_user_units)) || (unit == GIMP_UNIT_PERCENT)\00", align 1
@gimp_unit_percent = internal constant %struct.GimpUnitDef { i32 0, double 0.000000e+00, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0) }, align 8
@__func__._gimp_unit_get_symbol = private unnamed_addr constant [22 x i8] c"_gimp_unit_get_symbol\00", align 1
@__func__._gimp_unit_get_abbreviation = private unnamed_addr constant [28 x i8] c"_gimp_unit_get_abbreviation\00", align 1
@__func__._gimp_unit_get_singular = private unnamed_addr constant [24 x i8] c"_gimp_unit_get_singular\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"unit-singular\00", align 1
@__func__._gimp_unit_get_plural = private unnamed_addr constant [22 x i8] c"_gimp_unit_get_plural\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"unit-plural\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"pixels\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"px\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"pixel\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"inches\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"''\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"inch\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"millimeters\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"mm\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"millimeter\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"points\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"pt\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"point\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"picas\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"pc\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"pica\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"percent\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"%\00", align 1

; Function Attrs: nounwind uwtable
define i32 @_gimp_unit_get_number_of_units(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %n_user_units = getelementptr inbounds %struct._Gimp, %struct._Gimp* %0, i32 0, i32 19
  %1 = load i32, i32* %n_user_units, align 4
  %add = add nsw i32 5, %1
  ret i32 %add
}

; Function Attrs: nounwind readnone uwtable
define i32 @_gimp_unit_get_number_of_built_in_units(%struct._Gimp* %gimp) #1 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  ret i32 5
}

; Function Attrs: nounwind uwtable
define i32 @_gimp_unit_new(%struct._Gimp* %gimp, i8* %identifier, double %factor, i32 %digits, i8* %symbol, i8* %abbreviation, i8* %singular, i8* %plural) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %identifier.addr = alloca i8*, align 8
  %factor.addr = alloca double, align 8
  %digits.addr = alloca i32, align 4
  %symbol.addr = alloca i8*, align 8
  %abbreviation.addr = alloca i8*, align 8
  %singular.addr = alloca i8*, align 8
  %plural.addr = alloca i8*, align 8
  %user_unit = alloca %struct.GimpUnitDef*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i8* %identifier, i8** %identifier.addr, align 8
  store double %factor, double* %factor.addr, align 8
  store i32 %digits, i32* %digits.addr, align 4
  store i8* %symbol, i8** %symbol.addr, align 8
  store i8* %abbreviation, i8** %abbreviation.addr, align 8
  store i8* %singular, i8** %singular.addr, align 8
  store i8* %plural, i8** %plural.addr, align 8
  %call = call noalias i8* @g_slice_alloc0(i64 64)
  %0 = bitcast i8* %call to %struct.GimpUnitDef*
  store %struct.GimpUnitDef* %0, %struct.GimpUnitDef** %user_unit, align 8
  %1 = load %struct.GimpUnitDef*, %struct.GimpUnitDef** %user_unit, align 8
  %delete_on_exit = getelementptr inbounds %struct.GimpUnitDef, %struct.GimpUnitDef* %1, i32 0, i32 0
  store i32 1, i32* %delete_on_exit, align 4
  %2 = load double, double* %factor.addr, align 8
  %3 = load %struct.GimpUnitDef*, %struct.GimpUnitDef** %user_unit, align 8
  %factor1 = getelementptr inbounds %struct.GimpUnitDef, %struct.GimpUnitDef* %3, i32 0, i32 1
  store double %2, double* %factor1, align 8
  %4 = load i32, i32* %digits.addr, align 4
  %5 = load %struct.GimpUnitDef*, %struct.GimpUnitDef** %user_unit, align 8
  %digits2 = getelementptr inbounds %struct.GimpUnitDef, %struct.GimpUnitDef* %5, i32 0, i32 2
  store i32 %4, i32* %digits2, align 4
  %6 = load i8*, i8** %identifier.addr, align 8
  %call3 = call noalias i8* @g_strdup(i8* %6)
  %7 = load %struct.GimpUnitDef*, %struct.GimpUnitDef** %user_unit, align 8
  %identifier4 = getelementptr inbounds %struct.GimpUnitDef, %struct.GimpUnitDef* %7, i32 0, i32 3
  store i8* %call3, i8** %identifier4, align 8
  %8 = load i8*, i8** %symbol.addr, align 8
  %call5 = call noalias i8* @g_strdup(i8* %8)
  %9 = load %struct.GimpUnitDef*, %struct.GimpUnitDef** %user_unit, align 8
  %symbol6 = getelementptr inbounds %struct.GimpUnitDef, %struct.GimpUnitDef* %9, i32 0, i32 4
  store i8* %call5, i8** %symbol6, align 8
  %10 = load i8*, i8** %abbreviation.addr, align 8
  %call7 = call noalias i8* @g_strdup(i8* %10)
  %11 = load %struct.GimpUnitDef*, %struct.GimpUnitDef** %user_unit, align 8
  %abbreviation8 = getelementptr inbounds %struct.GimpUnitDef, %struct.GimpUnitDef* %11, i32 0, i32 5
  store i8* %call7, i8** %abbreviation8, align 8
  %12 = load i8*, i8** %singular.addr, align 8
  %call9 = call noalias i8* @g_strdup(i8* %12)
  %13 = load %struct.GimpUnitDef*, %struct.GimpUnitDef** %user_unit, align 8
  %singular10 = getelementptr inbounds %struct.GimpUnitDef, %struct.GimpUnitDef* %13, i32 0, i32 6
  store i8* %call9, i8** %singular10, align 8
  %14 = load i8*, i8** %plural.addr, align 8
  %call11 = call noalias i8* @g_strdup(i8* %14)
  %15 = load %struct.GimpUnitDef*, %struct.GimpUnitDef** %user_unit, align 8
  %plural12 = getelementptr inbounds %struct.GimpUnitDef, %struct.GimpUnitDef* %15, i32 0, i32 7
  store i8* %call11, i8** %plural12, align 8
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %user_units = getelementptr inbounds %struct._Gimp, %struct._Gimp* %16, i32 0, i32 18
  %17 = load %struct._GList*, %struct._GList** %user_units, align 8
  %18 = load %struct.GimpUnitDef*, %struct.GimpUnitDef** %user_unit, align 8
  %19 = bitcast %struct.GimpUnitDef* %18 to i8*
  %call13 = call %struct._GList* @g_list_append(%struct._GList* %17, i8* %19)
  %20 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %user_units14 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %20, i32 0, i32 18
  store %struct._GList* %call13, %struct._GList** %user_units14, align 8
  %21 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %n_user_units = getelementptr inbounds %struct._Gimp, %struct._Gimp* %21, i32 0, i32 19
  %22 = load i32, i32* %n_user_units, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %n_user_units, align 4
  %23 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %n_user_units15 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %23, i32 0, i32 19
  %24 = load i32, i32* %n_user_units15, align 4
  %add = add nsw i32 5, %24
  %sub = sub nsw i32 %add, 1
  ret i32 %sub
}

declare noalias i8* @g_slice_alloc0(i64) #2

declare noalias i8* @g_strdup(i8*) #2

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @_gimp_unit_get_deletion_flag(%struct._Gimp* %gimp, i32 %unit) #0 {
entry:
  %retval = alloca i32, align 4
  %gimp.addr = alloca %struct._Gimp*, align 8
  %unit.addr = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %unit, i32* %unit.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %unit.addr, align 4
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %n_user_units = getelementptr inbounds %struct._Gimp, %struct._Gimp* %1, i32 0, i32 19
  %2 = load i32, i32* %n_user_units, align 4
  %add = add nsw i32 5, %2
  %cmp = icmp ult i32 %0, %add
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__._gimp_unit_get_deletion_flag, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load i32, i32* %unit.addr, align 4
  %cmp1 = icmp ult i32 %3, 5
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %do.end
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %5 = load i32, i32* %unit.addr, align 4
  %call = call %struct.GimpUnitDef* @_gimp_unit_get_user_unit(%struct._Gimp* %4, i32 %5)
  %delete_on_exit = getelementptr inbounds %struct.GimpUnitDef, %struct.GimpUnitDef* %call, i32 0, i32 0
  %6 = load i32, i32* %delete_on_exit, align 4
  store i32 %6, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.else
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct.GimpUnitDef* @_gimp_unit_get_user_unit(%struct._Gimp* %gimp, i32 %unit) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %unit.addr = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %unit, i32* %unit.addr, align 4
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %user_units = getelementptr inbounds %struct._Gimp, %struct._Gimp* %0, i32 0, i32 18
  %1 = load %struct._GList*, %struct._GList** %user_units, align 8
  %2 = load i32, i32* %unit.addr, align 4
  %sub = sub i32 %2, 5
  %call = call i8* @g_list_nth_data(%struct._GList* %1, i32 %sub)
  %3 = bitcast i8* %call to %struct.GimpUnitDef*
  ret %struct.GimpUnitDef* %3
}

; Function Attrs: nounwind uwtable
define void @_gimp_unit_set_deletion_flag(%struct._Gimp* %gimp, i32 %unit, i32 %deletion_flag) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %unit.addr = alloca i32, align 4
  %deletion_flag.addr = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %unit, i32* %unit.addr, align 4
  store i32 %deletion_flag, i32* %deletion_flag.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %unit.addr, align 4
  %cmp = icmp uge i32 %0, 5
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %1 = load i32, i32* %unit.addr, align 4
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %n_user_units = getelementptr inbounds %struct._Gimp, %struct._Gimp* %2, i32 0, i32 19
  %3 = load i32, i32* %n_user_units, align 4
  %add = add nsw i32 5, %3
  %cmp1 = icmp ult i32 %1, %add
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__._gimp_unit_set_deletion_flag, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %4 = load i32, i32* %deletion_flag.addr, align 4
  %tobool = icmp ne i32 %4, 0
  %cond = select i1 %tobool, i32 1, i32 0
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %6 = load i32, i32* %unit.addr, align 4
  %call = call %struct.GimpUnitDef* @_gimp_unit_get_user_unit(%struct._Gimp* %5, i32 %6)
  %delete_on_exit = getelementptr inbounds %struct.GimpUnitDef, %struct.GimpUnitDef* %call, i32 0, i32 0
  store i32 %cond, i32* %delete_on_exit, align 4
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define double @_gimp_unit_get_factor(%struct._Gimp* %gimp, i32 %unit) #0 {
entry:
  %retval = alloca double, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %unit.addr = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %unit, i32* %unit.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %unit.addr, align 4
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %n_user_units = getelementptr inbounds %struct._Gimp, %struct._Gimp* %1, i32 0, i32 19
  %2 = load i32, i32* %n_user_units, align 4
  %add = add nsw i32 5, %2
  %cmp = icmp ult i32 %0, %add
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__._gimp_unit_get_factor, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i32 0, i32 0))
  %3 = load double, double* getelementptr inbounds ([5 x %struct.GimpUnitDef], [5 x %struct.GimpUnitDef]* @gimp_unit_defs, i32 0, i64 1, i32 1), align 8
  store double %3, double* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %4 = load i32, i32* %unit.addr, align 4
  %cmp1 = icmp ult i32 %4, 5
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %do.end
  %5 = load i32, i32* %unit.addr, align 4
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds [5 x %struct.GimpUnitDef], [5 x %struct.GimpUnitDef]* @gimp_unit_defs, i32 0, i64 %idxprom
  %factor = getelementptr inbounds %struct.GimpUnitDef, %struct.GimpUnitDef* %arrayidx, i32 0, i32 1
  %6 = load double, double* %factor, align 8
  store double %6, double* %retval
  br label %return

if.end.3:                                         ; preds = %do.end
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %8 = load i32, i32* %unit.addr, align 4
  %call = call %struct.GimpUnitDef* @_gimp_unit_get_user_unit(%struct._Gimp* %7, i32 %8)
  %factor4 = getelementptr inbounds %struct.GimpUnitDef, %struct.GimpUnitDef* %call, i32 0, i32 1
  %9 = load double, double* %factor4, align 8
  store double %9, double* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.else
  %10 = load double, double* %retval
  ret double %10
}

; Function Attrs: nounwind uwtable
define i32 @_gimp_unit_get_digits(%struct._Gimp* %gimp, i32 %unit) #0 {
entry:
  %retval = alloca i32, align 4
  %gimp.addr = alloca %struct._Gimp*, align 8
  %unit.addr = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %unit, i32* %unit.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %unit.addr, align 4
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %n_user_units = getelementptr inbounds %struct._Gimp, %struct._Gimp* %1, i32 0, i32 19
  %2 = load i32, i32* %n_user_units, align 4
  %add = add nsw i32 5, %2
  %cmp = icmp ult i32 %0, %add
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__._gimp_unit_get_digits, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i32 0, i32 0))
  %3 = load i32, i32* getelementptr inbounds ([5 x %struct.GimpUnitDef], [5 x %struct.GimpUnitDef]* @gimp_unit_defs, i32 0, i64 1, i32 2), align 4
  store i32 %3, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %4 = load i32, i32* %unit.addr, align 4
  %cmp1 = icmp ult i32 %4, 5
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %do.end
  %5 = load i32, i32* %unit.addr, align 4
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds [5 x %struct.GimpUnitDef], [5 x %struct.GimpUnitDef]* @gimp_unit_defs, i32 0, i64 %idxprom
  %digits = getelementptr inbounds %struct.GimpUnitDef, %struct.GimpUnitDef* %arrayidx, i32 0, i32 2
  %6 = load i32, i32* %digits, align 4
  store i32 %6, i32* %retval
  br label %return

if.end.3:                                         ; preds = %do.end
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %8 = load i32, i32* %unit.addr, align 4
  %call = call %struct.GimpUnitDef* @_gimp_unit_get_user_unit(%struct._Gimp* %7, i32 %8)
  %digits4 = getelementptr inbounds %struct.GimpUnitDef, %struct.GimpUnitDef* %call, i32 0, i32 2
  %9 = load i32, i32* %digits4, align 4
  store i32 %9, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.else
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i8* @_gimp_unit_get_identifier(%struct._Gimp* %gimp, i32 %unit) #0 {
entry:
  %retval = alloca i8*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %unit.addr = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %unit, i32* %unit.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %unit.addr, align 4
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %n_user_units = getelementptr inbounds %struct._Gimp, %struct._Gimp* %1, i32 0, i32 19
  %2 = load i32, i32* %n_user_units, align 4
  %add = add nsw i32 5, %2
  %cmp = icmp ult i32 %0, %add
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %3 = load i32, i32* %unit.addr, align 4
  %cmp1 = icmp eq i32 %3, 65536
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %do.body
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__._gimp_unit_get_identifier, i32 0, i32 0), i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.3, i32 0, i32 0))
  %4 = load i8*, i8** getelementptr inbounds ([5 x %struct.GimpUnitDef], [5 x %struct.GimpUnitDef]* @gimp_unit_defs, i32 0, i64 1, i32 3), align 8
  store i8* %4, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %5 = load i32, i32* %unit.addr, align 4
  %cmp2 = icmp ult i32 %5, 5
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %do.end
  %6 = load i32, i32* %unit.addr, align 4
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds [5 x %struct.GimpUnitDef], [5 x %struct.GimpUnitDef]* @gimp_unit_defs, i32 0, i64 %idxprom
  %identifier = getelementptr inbounds %struct.GimpUnitDef, %struct.GimpUnitDef* %arrayidx, i32 0, i32 3
  %7 = load i8*, i8** %identifier, align 8
  store i8* %7, i8** %retval
  br label %return

if.end.4:                                         ; preds = %do.end
  %8 = load i32, i32* %unit.addr, align 4
  %cmp5 = icmp eq i32 %8, 65536
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  %9 = load i8*, i8** getelementptr inbounds (%struct.GimpUnitDef, %struct.GimpUnitDef* @gimp_unit_percent, i32 0, i32 3), align 8
  store i8* %9, i8** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.4
  %10 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %11 = load i32, i32* %unit.addr, align 4
  %call = call %struct.GimpUnitDef* @_gimp_unit_get_user_unit(%struct._Gimp* %10, i32 %11)
  %identifier8 = getelementptr inbounds %struct.GimpUnitDef, %struct.GimpUnitDef* %call, i32 0, i32 3
  %12 = load i8*, i8** %identifier8, align 8
  store i8* %12, i8** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6, %if.then.3, %if.else
  %13 = load i8*, i8** %retval
  ret i8* %13
}

; Function Attrs: nounwind uwtable
define i8* @_gimp_unit_get_symbol(%struct._Gimp* %gimp, i32 %unit) #0 {
entry:
  %retval = alloca i8*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %unit.addr = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %unit, i32* %unit.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %unit.addr, align 4
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %n_user_units = getelementptr inbounds %struct._Gimp, %struct._Gimp* %1, i32 0, i32 19
  %2 = load i32, i32* %n_user_units, align 4
  %add = add nsw i32 5, %2
  %cmp = icmp ult i32 %0, %add
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %3 = load i32, i32* %unit.addr, align 4
  %cmp1 = icmp eq i32 %3, 65536
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %do.body
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__._gimp_unit_get_symbol, i32 0, i32 0), i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.3, i32 0, i32 0))
  %4 = load i8*, i8** getelementptr inbounds ([5 x %struct.GimpUnitDef], [5 x %struct.GimpUnitDef]* @gimp_unit_defs, i32 0, i64 1, i32 4), align 8
  store i8* %4, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %5 = load i32, i32* %unit.addr, align 4
  %cmp2 = icmp ult i32 %5, 5
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %do.end
  %6 = load i32, i32* %unit.addr, align 4
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds [5 x %struct.GimpUnitDef], [5 x %struct.GimpUnitDef]* @gimp_unit_defs, i32 0, i64 %idxprom
  %symbol = getelementptr inbounds %struct.GimpUnitDef, %struct.GimpUnitDef* %arrayidx, i32 0, i32 4
  %7 = load i8*, i8** %symbol, align 8
  store i8* %7, i8** %retval
  br label %return

if.end.4:                                         ; preds = %do.end
  %8 = load i32, i32* %unit.addr, align 4
  %cmp5 = icmp eq i32 %8, 65536
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  %9 = load i8*, i8** getelementptr inbounds (%struct.GimpUnitDef, %struct.GimpUnitDef* @gimp_unit_percent, i32 0, i32 4), align 8
  store i8* %9, i8** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.4
  %10 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %11 = load i32, i32* %unit.addr, align 4
  %call = call %struct.GimpUnitDef* @_gimp_unit_get_user_unit(%struct._Gimp* %10, i32 %11)
  %symbol8 = getelementptr inbounds %struct.GimpUnitDef, %struct.GimpUnitDef* %call, i32 0, i32 4
  %12 = load i8*, i8** %symbol8, align 8
  store i8* %12, i8** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6, %if.then.3, %if.else
  %13 = load i8*, i8** %retval
  ret i8* %13
}

; Function Attrs: nounwind uwtable
define i8* @_gimp_unit_get_abbreviation(%struct._Gimp* %gimp, i32 %unit) #0 {
entry:
  %retval = alloca i8*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %unit.addr = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %unit, i32* %unit.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %unit.addr, align 4
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %n_user_units = getelementptr inbounds %struct._Gimp, %struct._Gimp* %1, i32 0, i32 19
  %2 = load i32, i32* %n_user_units, align 4
  %add = add nsw i32 5, %2
  %cmp = icmp ult i32 %0, %add
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %3 = load i32, i32* %unit.addr, align 4
  %cmp1 = icmp eq i32 %3, 65536
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %do.body
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__._gimp_unit_get_abbreviation, i32 0, i32 0), i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.3, i32 0, i32 0))
  %4 = load i8*, i8** getelementptr inbounds ([5 x %struct.GimpUnitDef], [5 x %struct.GimpUnitDef]* @gimp_unit_defs, i32 0, i64 1, i32 5), align 8
  store i8* %4, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %5 = load i32, i32* %unit.addr, align 4
  %cmp2 = icmp ult i32 %5, 5
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %do.end
  %6 = load i32, i32* %unit.addr, align 4
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds [5 x %struct.GimpUnitDef], [5 x %struct.GimpUnitDef]* @gimp_unit_defs, i32 0, i64 %idxprom
  %abbreviation = getelementptr inbounds %struct.GimpUnitDef, %struct.GimpUnitDef* %arrayidx, i32 0, i32 5
  %7 = load i8*, i8** %abbreviation, align 8
  store i8* %7, i8** %retval
  br label %return

if.end.4:                                         ; preds = %do.end
  %8 = load i32, i32* %unit.addr, align 4
  %cmp5 = icmp eq i32 %8, 65536
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  %9 = load i8*, i8** getelementptr inbounds (%struct.GimpUnitDef, %struct.GimpUnitDef* @gimp_unit_percent, i32 0, i32 5), align 8
  store i8* %9, i8** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.4
  %10 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %11 = load i32, i32* %unit.addr, align 4
  %call = call %struct.GimpUnitDef* @_gimp_unit_get_user_unit(%struct._Gimp* %10, i32 %11)
  %abbreviation8 = getelementptr inbounds %struct.GimpUnitDef, %struct.GimpUnitDef* %call, i32 0, i32 5
  %12 = load i8*, i8** %abbreviation8, align 8
  store i8* %12, i8** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6, %if.then.3, %if.else
  %13 = load i8*, i8** %retval
  ret i8* %13
}

; Function Attrs: nounwind uwtable
define i8* @_gimp_unit_get_singular(%struct._Gimp* %gimp, i32 %unit) #0 {
entry:
  %retval = alloca i8*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %unit.addr = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %unit, i32* %unit.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %unit.addr, align 4
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %n_user_units = getelementptr inbounds %struct._Gimp, %struct._Gimp* %1, i32 0, i32 19
  %2 = load i32, i32* %n_user_units, align 4
  %add = add nsw i32 5, %2
  %cmp = icmp ult i32 %0, %add
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %3 = load i32, i32* %unit.addr, align 4
  %cmp1 = icmp eq i32 %3, 65536
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %do.body
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__._gimp_unit_get_singular, i32 0, i32 0), i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.3, i32 0, i32 0))
  %4 = load i8*, i8** getelementptr inbounds ([5 x %struct.GimpUnitDef], [5 x %struct.GimpUnitDef]* @gimp_unit_defs, i32 0, i64 1, i32 6), align 8
  store i8* %4, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %5 = load i32, i32* %unit.addr, align 4
  %cmp2 = icmp ult i32 %5, 5
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %do.end
  %6 = load i32, i32* %unit.addr, align 4
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds [5 x %struct.GimpUnitDef], [5 x %struct.GimpUnitDef]* @gimp_unit_defs, i32 0, i64 %idxprom
  %singular = getelementptr inbounds %struct.GimpUnitDef, %struct.GimpUnitDef* %arrayidx, i32 0, i32 6
  %7 = load i8*, i8** %singular, align 8
  %call = call i8* @g_dpgettext2(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i8* %7)
  store i8* %call, i8** %retval
  br label %return

if.end.4:                                         ; preds = %do.end
  %8 = load i32, i32* %unit.addr, align 4
  %cmp5 = icmp eq i32 %8, 65536
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end.4
  %9 = load i8*, i8** getelementptr inbounds (%struct.GimpUnitDef, %struct.GimpUnitDef* @gimp_unit_percent, i32 0, i32 6), align 8
  %call7 = call i8* @g_dpgettext2(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i8* %9)
  store i8* %call7, i8** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %10 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %11 = load i32, i32* %unit.addr, align 4
  %call9 = call %struct.GimpUnitDef* @_gimp_unit_get_user_unit(%struct._Gimp* %10, i32 %11)
  %singular10 = getelementptr inbounds %struct.GimpUnitDef, %struct.GimpUnitDef* %call9, i32 0, i32 6
  %12 = load i8*, i8** %singular10, align 8
  store i8* %12, i8** %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.6, %if.then.3, %if.else
  %13 = load i8*, i8** %retval
  ret i8* %13
}

declare i8* @g_dpgettext2(i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define i8* @_gimp_unit_get_plural(%struct._Gimp* %gimp, i32 %unit) #0 {
entry:
  %retval = alloca i8*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %unit.addr = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %unit, i32* %unit.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %unit.addr, align 4
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %n_user_units = getelementptr inbounds %struct._Gimp, %struct._Gimp* %1, i32 0, i32 19
  %2 = load i32, i32* %n_user_units, align 4
  %add = add nsw i32 5, %2
  %cmp = icmp ult i32 %0, %add
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %3 = load i32, i32* %unit.addr, align 4
  %cmp1 = icmp eq i32 %3, 65536
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %do.body
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__._gimp_unit_get_plural, i32 0, i32 0), i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.3, i32 0, i32 0))
  %4 = load i8*, i8** getelementptr inbounds ([5 x %struct.GimpUnitDef], [5 x %struct.GimpUnitDef]* @gimp_unit_defs, i32 0, i64 1, i32 7), align 8
  store i8* %4, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %5 = load i32, i32* %unit.addr, align 4
  %cmp2 = icmp ult i32 %5, 5
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %do.end
  %6 = load i32, i32* %unit.addr, align 4
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds [5 x %struct.GimpUnitDef], [5 x %struct.GimpUnitDef]* @gimp_unit_defs, i32 0, i64 %idxprom
  %plural = getelementptr inbounds %struct.GimpUnitDef, %struct.GimpUnitDef* %arrayidx, i32 0, i32 7
  %7 = load i8*, i8** %plural, align 8
  %call = call i8* @g_dpgettext2(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* %7)
  store i8* %call, i8** %retval
  br label %return

if.end.4:                                         ; preds = %do.end
  %8 = load i32, i32* %unit.addr, align 4
  %cmp5 = icmp eq i32 %8, 65536
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end.4
  %9 = load i8*, i8** getelementptr inbounds (%struct.GimpUnitDef, %struct.GimpUnitDef* @gimp_unit_percent, i32 0, i32 7), align 8
  %call7 = call i8* @g_dpgettext2(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* %9)
  store i8* %call7, i8** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %10 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %11 = load i32, i32* %unit.addr, align 4
  %call9 = call %struct.GimpUnitDef* @_gimp_unit_get_user_unit(%struct._Gimp* %10, i32 %11)
  %plural10 = getelementptr inbounds %struct.GimpUnitDef, %struct.GimpUnitDef* %call9, i32 0, i32 7
  %12 = load i8*, i8** %plural10, align 8
  store i8* %12, i8** %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.6, %if.then.3, %if.else
  %13 = load i8*, i8** %retval
  ret i8* %13
}

; Function Attrs: nounwind uwtable
define void @gimp_user_units_free(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %list = alloca %struct._GList*, align 8
  %user_unit = alloca %struct.GimpUnitDef*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %user_units = getelementptr inbounds %struct._Gimp, %struct._Gimp* %0, i32 0, i32 18
  %1 = load %struct._GList*, %struct._GList** %user_units, align 8
  store %struct._GList* %1, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct.GimpUnitDef*
  store %struct.GimpUnitDef* %5, %struct.GimpUnitDef** %user_unit, align 8
  %6 = load %struct.GimpUnitDef*, %struct.GimpUnitDef** %user_unit, align 8
  %identifier = getelementptr inbounds %struct.GimpUnitDef, %struct.GimpUnitDef* %6, i32 0, i32 3
  %7 = load i8*, i8** %identifier, align 8
  call void @g_free(i8* %7)
  %8 = load %struct.GimpUnitDef*, %struct.GimpUnitDef** %user_unit, align 8
  %symbol = getelementptr inbounds %struct.GimpUnitDef, %struct.GimpUnitDef* %8, i32 0, i32 4
  %9 = load i8*, i8** %symbol, align 8
  call void @g_free(i8* %9)
  %10 = load %struct.GimpUnitDef*, %struct.GimpUnitDef** %user_unit, align 8
  %abbreviation = getelementptr inbounds %struct.GimpUnitDef, %struct.GimpUnitDef* %10, i32 0, i32 5
  %11 = load i8*, i8** %abbreviation, align 8
  call void @g_free(i8* %11)
  %12 = load %struct.GimpUnitDef*, %struct.GimpUnitDef** %user_unit, align 8
  %singular = getelementptr inbounds %struct.GimpUnitDef, %struct.GimpUnitDef* %12, i32 0, i32 6
  %13 = load i8*, i8** %singular, align 8
  call void @g_free(i8* %13)
  %14 = load %struct.GimpUnitDef*, %struct.GimpUnitDef** %user_unit, align 8
  %plural = getelementptr inbounds %struct.GimpUnitDef, %struct.GimpUnitDef* %14, i32 0, i32 7
  %15 = load i8*, i8** %plural, align 8
  call void @g_free(i8* %15)
  br label %do.body

do.body:                                          ; preds = %for.body
  %16 = load %struct.GimpUnitDef*, %struct.GimpUnitDef** %user_unit, align 8
  %17 = bitcast %struct.GimpUnitDef* %16 to i8*
  call void @g_slice_free1(i64 64, i8* %17)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool1 = icmp ne %struct._GList* %18, null
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %19 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %19, i32 0, i32 1
  %20 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %20, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %user_units2 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %21, i32 0, i32 18
  %22 = load %struct._GList*, %struct._GList** %user_units2, align 8
  call void @g_list_free(%struct._GList* %22)
  %23 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %user_units3 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %23, i32 0, i32 18
  store %struct._GList* null, %struct._GList** %user_units3, align 8
  %24 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %n_user_units = getelementptr inbounds %struct._Gimp, %struct._Gimp* %24, i32 0, i32 19
  store i32 0, i32* %n_user_units, align 4
  ret void
}

declare void @g_free(i8*) #2

declare void @g_slice_free1(i64, i8*) #2

declare void @g_list_free(%struct._GList*) #2

declare i8* @g_list_nth_data(%struct._GList*, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
