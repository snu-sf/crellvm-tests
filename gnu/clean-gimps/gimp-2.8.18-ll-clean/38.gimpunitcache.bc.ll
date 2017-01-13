; ModuleID = './libgimp/gimpunitcache.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GimpUnitDef = type { double, i32, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [8 x i8] c"LibGimp\00", align 1
@__func__._gimp_unit_cache_get_factor = private unnamed_addr constant [28 x i8] c"_gimp_unit_cache_get_factor\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"unit >= GIMP_UNIT_INCH\00", align 1
@gimp_unit_percent = internal constant %struct.GimpUnitDef { double 0.000000e+00, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0) }, align 8
@gimp_unit_defs = internal global %struct.GimpUnitDef* null, align 8
@__func__._gimp_unit_cache_get_digits = private unnamed_addr constant [28 x i8] c"_gimp_unit_cache_get_digits\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"gimp20-libgimp\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"percent\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@gimp_units_initialized = internal global i32 0, align 4

; Function Attrs: nounwind uwtable
define hidden i32 @_gimp_unit_cache_get_number_of_units() #0 {
entry:
  %call = call i32 @_gimp_unit_get_number_of_units()
  ret i32 %call
}

declare hidden i32 @_gimp_unit_get_number_of_units() #1

; Function Attrs: nounwind readnone uwtable
define hidden i32 @_gimp_unit_cache_get_number_of_built_in_units() #2 {
entry:
  ret i32 5
}

; Function Attrs: nounwind uwtable
define hidden i32 @_gimp_unit_cache_new(i8* %identifier, double %factor, i32 %digits, i8* %symbol, i8* %abbreviation, i8* %singular, i8* %plural) #0 {
entry:
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
  %0 = load i8*, i8** %identifier.addr, align 8
  %1 = load double, double* %factor.addr, align 8
  %2 = load i32, i32* %digits.addr, align 4
  %3 = load i8*, i8** %symbol.addr, align 8
  %4 = load i8*, i8** %abbreviation.addr, align 8
  %5 = load i8*, i8** %singular.addr, align 8
  %6 = load i8*, i8** %plural.addr, align 8
  %call = call i32 @_gimp_unit_new(i8* %0, double %1, i32 %2, i8* %3, i8* %4, i8* %5, i8* %6)
  ret i32 %call
}

declare hidden i32 @_gimp_unit_new(i8*, double, i32, i8*, i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define hidden i32 @_gimp_unit_cache_get_deletion_flag(i32 %unit) #0 {
entry:
  %retval = alloca i32, align 4
  %unit.addr = alloca i32, align 4
  store i32 %unit, i32* %unit.addr, align 4
  %0 = load i32, i32* %unit.addr, align 4
  %cmp = icmp ult i32 %0, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %unit.addr, align 4
  %call = call i32 @_gimp_unit_get_deletion_flag(i32 %1)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval
  ret i32 %2
}

declare hidden i32 @_gimp_unit_get_deletion_flag(i32) #1

; Function Attrs: nounwind uwtable
define hidden void @_gimp_unit_cache_set_deletion_flag(i32 %unit, i32 %deletion_flag) #0 {
entry:
  %unit.addr = alloca i32, align 4
  %deletion_flag.addr = alloca i32, align 4
  store i32 %unit, i32* %unit.addr, align 4
  store i32 %deletion_flag, i32* %deletion_flag.addr, align 4
  %0 = load i32, i32* %unit.addr, align 4
  %cmp = icmp ult i32 %0, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %unit.addr, align 4
  %2 = load i32, i32* %deletion_flag.addr, align 4
  %call = call i32 @_gimp_unit_set_deletion_flag(i32 %1, i32 %2)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare hidden i32 @_gimp_unit_set_deletion_flag(i32, i32) #1

; Function Attrs: nounwind uwtable
define hidden double @_gimp_unit_cache_get_factor(i32 %unit) #0 {
entry:
  %retval = alloca double, align 8
  %unit.addr = alloca i32, align 4
  store i32 %unit, i32* %unit.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %unit.addr, align 4
  %cmp = icmp uge i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__._gimp_unit_cache_get_factor, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0))
  store double 1.000000e+00, double* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i32, i32* %unit.addr, align 4
  %cmp1 = icmp eq i32 %1, 65536
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %do.end
  %2 = load double, double* getelementptr inbounds (%struct.GimpUnitDef, %struct.GimpUnitDef* @gimp_unit_percent, i32 0, i32 0), align 8
  store double %2, double* %retval
  br label %return

if.end.3:                                         ; preds = %do.end
  %3 = load i32, i32* %unit.addr, align 4
  %call = call i32 @gimp_unit_init(i32 %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end.3
  store double 1.000000e+00, double* %retval
  br label %return

if.end.5:                                         ; preds = %if.end.3
  %4 = load i32, i32* %unit.addr, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load %struct.GimpUnitDef*, %struct.GimpUnitDef** @gimp_unit_defs, align 8
  %arrayidx = getelementptr inbounds %struct.GimpUnitDef, %struct.GimpUnitDef* %5, i64 %idxprom
  %factor = getelementptr inbounds %struct.GimpUnitDef, %struct.GimpUnitDef* %arrayidx, i32 0, i32 0
  %6 = load double, double* %factor, align 8
  store double %6, double* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then.2, %if.else
  %7 = load double, double* %retval
  ret double %7
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_unit_init(i32 %unit) #0 {
entry:
  %retval = alloca i32, align 4
  %unit.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 %unit, i32* %unit.addr, align 4
  %0 = load i32, i32* %unit.addr, align 4
  %1 = load i32, i32* @gimp_units_initialized, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call i32 @_gimp_unit_get_number_of_units()
  store i32 %call, i32* %n, align 4
  %2 = load i32, i32* %unit.addr, align 4
  %3 = load i32, i32* %n, align 4
  %cmp1 = icmp uge i32 %2, %3
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load %struct.GimpUnitDef*, %struct.GimpUnitDef** @gimp_unit_defs, align 8
  %5 = bitcast %struct.GimpUnitDef* %4 to i8*
  %6 = load i32, i32* %n, align 4
  %conv = sext i32 %6 to i64
  %call4 = call i8* @g_realloc_n(i8* %5, i64 %conv, i64 56)
  %7 = bitcast i8* %call4 to %struct.GimpUnitDef*
  store %struct.GimpUnitDef* %7, %struct.GimpUnitDef** @gimp_unit_defs, align 8
  %8 = load i32, i32* @gimp_units_initialized, align 4
  store i32 %8, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %n, align 4
  %cmp5 = icmp slt i32 %9, %10
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.GimpUnitDef*, %struct.GimpUnitDef** @gimp_unit_defs, align 8
  %arrayidx = getelementptr inbounds %struct.GimpUnitDef, %struct.GimpUnitDef* %12, i64 %idxprom
  %13 = load i32, i32* %i, align 4
  call void @gimp_unit_def_init(%struct.GimpUnitDef* %arrayidx, i32 %13)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %n, align 4
  store i32 %15, i32* @gimp_units_initialized, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.2, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define hidden i32 @_gimp_unit_cache_get_digits(i32 %unit) #0 {
entry:
  %retval = alloca i32, align 4
  %unit.addr = alloca i32, align 4
  store i32 %unit, i32* %unit.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %unit.addr, align 4
  %cmp = icmp uge i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__._gimp_unit_cache_get_digits, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i32, i32* %unit.addr, align 4
  %cmp1 = icmp eq i32 %1, 65536
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %do.end
  %2 = load i32, i32* getelementptr inbounds (%struct.GimpUnitDef, %struct.GimpUnitDef* @gimp_unit_percent, i32 0, i32 1), align 4
  store i32 %2, i32* %retval
  br label %return

if.end.3:                                         ; preds = %do.end
  %3 = load i32, i32* %unit.addr, align 4
  %call = call i32 @gimp_unit_init(i32 %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end.3
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end.3
  %4 = load i32, i32* %unit.addr, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load %struct.GimpUnitDef*, %struct.GimpUnitDef** @gimp_unit_defs, align 8
  %arrayidx = getelementptr inbounds %struct.GimpUnitDef, %struct.GimpUnitDef* %5, i64 %idxprom
  %digits = getelementptr inbounds %struct.GimpUnitDef, %struct.GimpUnitDef* %arrayidx, i32 0, i32 1
  %6 = load i32, i32* %digits, align 4
  store i32 %6, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then.2, %if.else
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define hidden i8* @_gimp_unit_cache_get_identifier(i32 %unit) #0 {
entry:
  %retval = alloca i8*, align 8
  %unit.addr = alloca i32, align 4
  store i32 %unit, i32* %unit.addr, align 4
  %0 = load i32, i32* %unit.addr, align 4
  %cmp = icmp eq i32 %0, 65536
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** getelementptr inbounds (%struct.GimpUnitDef, %struct.GimpUnitDef* @gimp_unit_percent, i32 0, i32 2), align 8
  store i8* %1, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %unit.addr, align 4
  %call = call i32 @gimp_unit_init(i32 %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  store i8* null, i8** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %3 = load i32, i32* %unit.addr, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load %struct.GimpUnitDef*, %struct.GimpUnitDef** @gimp_unit_defs, align 8
  %arrayidx = getelementptr inbounds %struct.GimpUnitDef, %struct.GimpUnitDef* %4, i64 %idxprom
  %identifier = getelementptr inbounds %struct.GimpUnitDef, %struct.GimpUnitDef* %arrayidx, i32 0, i32 2
  %5 = load i8*, i8** %identifier, align 8
  store i8* %5, i8** %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.then.1, %if.then
  %6 = load i8*, i8** %retval
  ret i8* %6
}

; Function Attrs: nounwind uwtable
define hidden i8* @_gimp_unit_cache_get_symbol(i32 %unit) #0 {
entry:
  %retval = alloca i8*, align 8
  %unit.addr = alloca i32, align 4
  store i32 %unit, i32* %unit.addr, align 4
  %0 = load i32, i32* %unit.addr, align 4
  %cmp = icmp eq i32 %0, 65536
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** getelementptr inbounds (%struct.GimpUnitDef, %struct.GimpUnitDef* @gimp_unit_percent, i32 0, i32 3), align 8
  store i8* %1, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %unit.addr, align 4
  %call = call i32 @gimp_unit_init(i32 %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  store i8* null, i8** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %3 = load i32, i32* %unit.addr, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load %struct.GimpUnitDef*, %struct.GimpUnitDef** @gimp_unit_defs, align 8
  %arrayidx = getelementptr inbounds %struct.GimpUnitDef, %struct.GimpUnitDef* %4, i64 %idxprom
  %symbol = getelementptr inbounds %struct.GimpUnitDef, %struct.GimpUnitDef* %arrayidx, i32 0, i32 3
  %5 = load i8*, i8** %symbol, align 8
  store i8* %5, i8** %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.then.1, %if.then
  %6 = load i8*, i8** %retval
  ret i8* %6
}

; Function Attrs: nounwind uwtable
define hidden i8* @_gimp_unit_cache_get_abbreviation(i32 %unit) #0 {
entry:
  %retval = alloca i8*, align 8
  %unit.addr = alloca i32, align 4
  store i32 %unit, i32* %unit.addr, align 4
  %0 = load i32, i32* %unit.addr, align 4
  %cmp = icmp eq i32 %0, 65536
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** getelementptr inbounds (%struct.GimpUnitDef, %struct.GimpUnitDef* @gimp_unit_percent, i32 0, i32 4), align 8
  store i8* %1, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %unit.addr, align 4
  %call = call i32 @gimp_unit_init(i32 %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  store i8* null, i8** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %3 = load i32, i32* %unit.addr, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load %struct.GimpUnitDef*, %struct.GimpUnitDef** @gimp_unit_defs, align 8
  %arrayidx = getelementptr inbounds %struct.GimpUnitDef, %struct.GimpUnitDef* %4, i64 %idxprom
  %abbreviation = getelementptr inbounds %struct.GimpUnitDef, %struct.GimpUnitDef* %arrayidx, i32 0, i32 4
  %5 = load i8*, i8** %abbreviation, align 8
  store i8* %5, i8** %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.then.1, %if.then
  %6 = load i8*, i8** %retval
  ret i8* %6
}

; Function Attrs: nounwind uwtable
define hidden i8* @_gimp_unit_cache_get_singular(i32 %unit) #0 {
entry:
  %retval = alloca i8*, align 8
  %unit.addr = alloca i32, align 4
  store i32 %unit, i32* %unit.addr, align 4
  %0 = load i32, i32* %unit.addr, align 4
  %cmp = icmp eq i32 %0, 65536
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** getelementptr inbounds (%struct.GimpUnitDef, %struct.GimpUnitDef* @gimp_unit_percent, i32 0, i32 5), align 8
  %call = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* %1) #4
  store i8* %call, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %unit.addr, align 4
  %call1 = call i32 @gimp_unit_init(i32 %2)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i8* null, i8** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load i32, i32* %unit.addr, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load %struct.GimpUnitDef*, %struct.GimpUnitDef** @gimp_unit_defs, align 8
  %arrayidx = getelementptr inbounds %struct.GimpUnitDef, %struct.GimpUnitDef* %4, i64 %idxprom
  %singular = getelementptr inbounds %struct.GimpUnitDef, %struct.GimpUnitDef* %arrayidx, i32 0, i32 5
  %5 = load i8*, i8** %singular, align 8
  %call4 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* %5) #4
  store i8* %call4, i8** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %6 = load i8*, i8** %retval
  ret i8* %6
}

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define hidden i8* @_gimp_unit_cache_get_plural(i32 %unit) #0 {
entry:
  %retval = alloca i8*, align 8
  %unit.addr = alloca i32, align 4
  store i32 %unit, i32* %unit.addr, align 4
  %0 = load i32, i32* %unit.addr, align 4
  %cmp = icmp eq i32 %0, 65536
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** getelementptr inbounds (%struct.GimpUnitDef, %struct.GimpUnitDef* @gimp_unit_percent, i32 0, i32 6), align 8
  %call = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* %1) #4
  store i8* %call, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %unit.addr, align 4
  %call1 = call i32 @gimp_unit_init(i32 %2)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i8* null, i8** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load i32, i32* %unit.addr, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load %struct.GimpUnitDef*, %struct.GimpUnitDef** @gimp_unit_defs, align 8
  %arrayidx = getelementptr inbounds %struct.GimpUnitDef, %struct.GimpUnitDef* %4, i64 %idxprom
  %plural = getelementptr inbounds %struct.GimpUnitDef, %struct.GimpUnitDef* %arrayidx, i32 0, i32 6
  %5 = load i8*, i8** %plural, align 8
  %call4 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* %5) #4
  store i8* %call4, i8** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %6 = load i8*, i8** %retval
  ret i8* %6
}

declare i8* @g_realloc_n(i8*, i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_unit_def_init(%struct.GimpUnitDef* %unit_def, i32 %unit) #0 {
entry:
  %unit_def.addr = alloca %struct.GimpUnitDef*, align 8
  %unit.addr = alloca i32, align 4
  store %struct.GimpUnitDef* %unit_def, %struct.GimpUnitDef** %unit_def.addr, align 8
  store i32 %unit, i32* %unit.addr, align 4
  %0 = load i32, i32* %unit.addr, align 4
  %call = call double @_gimp_unit_get_factor(i32 %0)
  %1 = load %struct.GimpUnitDef*, %struct.GimpUnitDef** %unit_def.addr, align 8
  %factor = getelementptr inbounds %struct.GimpUnitDef, %struct.GimpUnitDef* %1, i32 0, i32 0
  store double %call, double* %factor, align 8
  %2 = load i32, i32* %unit.addr, align 4
  %call1 = call i32 @_gimp_unit_get_digits(i32 %2)
  %3 = load %struct.GimpUnitDef*, %struct.GimpUnitDef** %unit_def.addr, align 8
  %digits = getelementptr inbounds %struct.GimpUnitDef, %struct.GimpUnitDef* %3, i32 0, i32 1
  store i32 %call1, i32* %digits, align 4
  %4 = load i32, i32* %unit.addr, align 4
  %call2 = call i8* @_gimp_unit_get_identifier(i32 %4)
  %5 = load %struct.GimpUnitDef*, %struct.GimpUnitDef** %unit_def.addr, align 8
  %identifier = getelementptr inbounds %struct.GimpUnitDef, %struct.GimpUnitDef* %5, i32 0, i32 2
  store i8* %call2, i8** %identifier, align 8
  %6 = load i32, i32* %unit.addr, align 4
  %call3 = call i8* @_gimp_unit_get_symbol(i32 %6)
  %7 = load %struct.GimpUnitDef*, %struct.GimpUnitDef** %unit_def.addr, align 8
  %symbol = getelementptr inbounds %struct.GimpUnitDef, %struct.GimpUnitDef* %7, i32 0, i32 3
  store i8* %call3, i8** %symbol, align 8
  %8 = load i32, i32* %unit.addr, align 4
  %call4 = call i8* @_gimp_unit_get_abbreviation(i32 %8)
  %9 = load %struct.GimpUnitDef*, %struct.GimpUnitDef** %unit_def.addr, align 8
  %abbreviation = getelementptr inbounds %struct.GimpUnitDef, %struct.GimpUnitDef* %9, i32 0, i32 4
  store i8* %call4, i8** %abbreviation, align 8
  %10 = load i32, i32* %unit.addr, align 4
  %call5 = call i8* @_gimp_unit_get_singular(i32 %10)
  %11 = load %struct.GimpUnitDef*, %struct.GimpUnitDef** %unit_def.addr, align 8
  %singular = getelementptr inbounds %struct.GimpUnitDef, %struct.GimpUnitDef* %11, i32 0, i32 5
  store i8* %call5, i8** %singular, align 8
  %12 = load i32, i32* %unit.addr, align 4
  %call6 = call i8* @_gimp_unit_get_plural(i32 %12)
  %13 = load %struct.GimpUnitDef*, %struct.GimpUnitDef** %unit_def.addr, align 8
  %plural = getelementptr inbounds %struct.GimpUnitDef, %struct.GimpUnitDef* %13, i32 0, i32 6
  store i8* %call6, i8** %plural, align 8
  ret void
}

declare hidden double @_gimp_unit_get_factor(i32) #1

declare hidden i32 @_gimp_unit_get_digits(i32) #1

declare hidden i8* @_gimp_unit_get_identifier(i32) #1

declare hidden i8* @_gimp_unit_get_symbol(i32) #1

declare hidden i8* @_gimp_unit_get_abbreviation(i32) #1

declare hidden i8* @_gimp_unit_get_singular(i32) #1

declare hidden i8* @_gimp_unit_get_plural(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
