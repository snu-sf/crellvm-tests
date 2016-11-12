; ModuleID = './app/units.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { {}*, {}*, {}*, {}*, {}*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, {}* }
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
%struct._GimpUnitVtable = type { i32 ()*, i32 ()*, i32 (i8*, double, i32, i8*, i8*, i8*, i8*)*, i32 (i32)*, void (i32, i32)*, double (i32)*, i32 (i32)*, i8* (i32)*, i8* (i32)*, i8* (i32)*, i8* (i32)*, i8* (i32)*, void ()*, void ()*, void ()*, void ()* }

@.str = private unnamed_addr constant [5 x i8] c"Gimp\00", align 1
@__func__.units_init = private unnamed_addr constant [11 x i8] c"units_init\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@the_unit_gimp = internal global %struct._Gimp* null, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"the_unit_gimp == NULL\00", align 1

; Function Attrs: nounwind uwtable
define void @units_init(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %vtable = alloca %struct._GimpUnitVtable, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #4
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.units_init, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._Gimp*, %struct._Gimp** @the_unit_gimp, align 8
  %cmp12 = icmp eq %struct._Gimp* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.units_init, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  store %struct._Gimp* %14, %struct._Gimp** @the_unit_gimp, align 8
  %unit_get_number_of_units = getelementptr inbounds %struct._GimpUnitVtable, %struct._GimpUnitVtable* %vtable, i32 0, i32 0
  store i32 ()* @units_get_number_of_units, i32 ()** %unit_get_number_of_units, align 8
  %unit_get_number_of_built_in_units = getelementptr inbounds %struct._GimpUnitVtable, %struct._GimpUnitVtable* %vtable, i32 0, i32 1
  store i32 ()* @units_get_number_of_built_in_units, i32 ()** %unit_get_number_of_built_in_units, align 8
  %unit_new = getelementptr inbounds %struct._GimpUnitVtable, %struct._GimpUnitVtable* %vtable, i32 0, i32 2
  store i32 (i8*, double, i32, i8*, i8*, i8*, i8*)* @units_unit_new, i32 (i8*, double, i32, i8*, i8*, i8*, i8*)** %unit_new, align 8
  %unit_get_deletion_flag = getelementptr inbounds %struct._GimpUnitVtable, %struct._GimpUnitVtable* %vtable, i32 0, i32 3
  store i32 (i32)* @units_unit_get_deletion_flag, i32 (i32)** %unit_get_deletion_flag, align 8
  %unit_set_deletion_flag = getelementptr inbounds %struct._GimpUnitVtable, %struct._GimpUnitVtable* %vtable, i32 0, i32 4
  store void (i32, i32)* @units_unit_set_deletion_flag, void (i32, i32)** %unit_set_deletion_flag, align 8
  %unit_get_factor = getelementptr inbounds %struct._GimpUnitVtable, %struct._GimpUnitVtable* %vtable, i32 0, i32 5
  store double (i32)* @units_unit_get_factor, double (i32)** %unit_get_factor, align 8
  %unit_get_digits = getelementptr inbounds %struct._GimpUnitVtable, %struct._GimpUnitVtable* %vtable, i32 0, i32 6
  store i32 (i32)* @units_unit_get_digits, i32 (i32)** %unit_get_digits, align 8
  %unit_get_identifier = getelementptr inbounds %struct._GimpUnitVtable, %struct._GimpUnitVtable* %vtable, i32 0, i32 7
  store i8* (i32)* @units_unit_get_identifier, i8* (i32)** %unit_get_identifier, align 8
  %unit_get_symbol = getelementptr inbounds %struct._GimpUnitVtable, %struct._GimpUnitVtable* %vtable, i32 0, i32 8
  store i8* (i32)* @units_unit_get_symbol, i8* (i32)** %unit_get_symbol, align 8
  %unit_get_abbreviation = getelementptr inbounds %struct._GimpUnitVtable, %struct._GimpUnitVtable* %vtable, i32 0, i32 9
  store i8* (i32)* @units_unit_get_abbreviation, i8* (i32)** %unit_get_abbreviation, align 8
  %unit_get_singular = getelementptr inbounds %struct._GimpUnitVtable, %struct._GimpUnitVtable* %vtable, i32 0, i32 10
  store i8* (i32)* @units_unit_get_singular, i8* (i32)** %unit_get_singular, align 8
  %unit_get_plural = getelementptr inbounds %struct._GimpUnitVtable, %struct._GimpUnitVtable* %vtable, i32 0, i32 11
  store i8* (i32)* @units_unit_get_plural, i8* (i32)** %unit_get_plural, align 8
  call void @gimp_base_init(%struct._GimpUnitVtable* %vtable)
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @units_get_number_of_units() #0 {
entry:
  %0 = load %struct._Gimp*, %struct._Gimp** @the_unit_gimp, align 8
  %call = call i32 @_gimp_unit_get_number_of_units(%struct._Gimp* %0)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @units_get_number_of_built_in_units() #0 {
entry:
  ret i32 5
}

; Function Attrs: nounwind uwtable
define internal i32 @units_unit_new(i8* %identifier, double %factor, i32 %digits, i8* %symbol, i8* %abbreviation, i8* %singular, i8* %plural) #0 {
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
  %0 = load %struct._Gimp*, %struct._Gimp** @the_unit_gimp, align 8
  %1 = load i8*, i8** %identifier.addr, align 8
  %2 = load double, double* %factor.addr, align 8
  %3 = load i32, i32* %digits.addr, align 4
  %4 = load i8*, i8** %symbol.addr, align 8
  %5 = load i8*, i8** %abbreviation.addr, align 8
  %6 = load i8*, i8** %singular.addr, align 8
  %7 = load i8*, i8** %plural.addr, align 8
  %call = call i32 @_gimp_unit_new(%struct._Gimp* %0, i8* %1, double %2, i32 %3, i8* %4, i8* %5, i8* %6, i8* %7)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @units_unit_get_deletion_flag(i32 %unit) #0 {
entry:
  %unit.addr = alloca i32, align 4
  store i32 %unit, i32* %unit.addr, align 4
  %0 = load %struct._Gimp*, %struct._Gimp** @the_unit_gimp, align 8
  %1 = load i32, i32* %unit.addr, align 4
  %call = call i32 @_gimp_unit_get_deletion_flag(%struct._Gimp* %0, i32 %1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal void @units_unit_set_deletion_flag(i32 %unit, i32 %deletion_flag) #0 {
entry:
  %unit.addr = alloca i32, align 4
  %deletion_flag.addr = alloca i32, align 4
  store i32 %unit, i32* %unit.addr, align 4
  store i32 %deletion_flag, i32* %deletion_flag.addr, align 4
  %0 = load %struct._Gimp*, %struct._Gimp** @the_unit_gimp, align 8
  %1 = load i32, i32* %unit.addr, align 4
  %2 = load i32, i32* %deletion_flag.addr, align 4
  call void @_gimp_unit_set_deletion_flag(%struct._Gimp* %0, i32 %1, i32 %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal double @units_unit_get_factor(i32 %unit) #0 {
entry:
  %unit.addr = alloca i32, align 4
  store i32 %unit, i32* %unit.addr, align 4
  %0 = load %struct._Gimp*, %struct._Gimp** @the_unit_gimp, align 8
  %1 = load i32, i32* %unit.addr, align 4
  %call = call double @_gimp_unit_get_factor(%struct._Gimp* %0, i32 %1)
  ret double %call
}

; Function Attrs: nounwind uwtable
define internal i32 @units_unit_get_digits(i32 %unit) #0 {
entry:
  %unit.addr = alloca i32, align 4
  store i32 %unit, i32* %unit.addr, align 4
  %0 = load %struct._Gimp*, %struct._Gimp** @the_unit_gimp, align 8
  %1 = load i32, i32* %unit.addr, align 4
  %call = call i32 @_gimp_unit_get_digits(%struct._Gimp* %0, i32 %1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i8* @units_unit_get_identifier(i32 %unit) #0 {
entry:
  %unit.addr = alloca i32, align 4
  store i32 %unit, i32* %unit.addr, align 4
  %0 = load %struct._Gimp*, %struct._Gimp** @the_unit_gimp, align 8
  %1 = load i32, i32* %unit.addr, align 4
  %call = call i8* @_gimp_unit_get_identifier(%struct._Gimp* %0, i32 %1)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal i8* @units_unit_get_symbol(i32 %unit) #0 {
entry:
  %unit.addr = alloca i32, align 4
  store i32 %unit, i32* %unit.addr, align 4
  %0 = load %struct._Gimp*, %struct._Gimp** @the_unit_gimp, align 8
  %1 = load i32, i32* %unit.addr, align 4
  %call = call i8* @_gimp_unit_get_symbol(%struct._Gimp* %0, i32 %1)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal i8* @units_unit_get_abbreviation(i32 %unit) #0 {
entry:
  %unit.addr = alloca i32, align 4
  store i32 %unit, i32* %unit.addr, align 4
  %0 = load %struct._Gimp*, %struct._Gimp** @the_unit_gimp, align 8
  %1 = load i32, i32* %unit.addr, align 4
  %call = call i8* @_gimp_unit_get_abbreviation(%struct._Gimp* %0, i32 %1)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal i8* @units_unit_get_singular(i32 %unit) #0 {
entry:
  %unit.addr = alloca i32, align 4
  store i32 %unit, i32* %unit.addr, align 4
  %0 = load %struct._Gimp*, %struct._Gimp** @the_unit_gimp, align 8
  %1 = load i32, i32* %unit.addr, align 4
  %call = call i8* @_gimp_unit_get_singular(%struct._Gimp* %0, i32 %1)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal i8* @units_unit_get_plural(i32 %unit) #0 {
entry:
  %unit.addr = alloca i32, align 4
  store i32 %unit, i32* %unit.addr, align 4
  %0 = load %struct._Gimp*, %struct._Gimp** @the_unit_gimp, align 8
  %1 = load i32, i32* %unit.addr, align 4
  %call = call i8* @_gimp_unit_get_plural(%struct._Gimp* %0, i32 %1)
  ret i8* %call
}

declare void @gimp_base_init(%struct._GimpUnitVtable*) #3

declare i32 @_gimp_unit_get_number_of_units(%struct._Gimp*) #3

declare i32 @_gimp_unit_new(%struct._Gimp*, i8*, double, i32, i8*, i8*, i8*, i8*) #3

declare i32 @_gimp_unit_get_deletion_flag(%struct._Gimp*, i32) #3

declare void @_gimp_unit_set_deletion_flag(%struct._Gimp*, i32, i32) #3

declare double @_gimp_unit_get_factor(%struct._Gimp*, i32) #3

declare i32 @_gimp_unit_get_digits(%struct._Gimp*, i32) #3

declare i8* @_gimp_unit_get_identifier(%struct._Gimp*, i32) #3

declare i8* @_gimp_unit_get_symbol(%struct._Gimp*, i32) #3

declare i8* @_gimp_unit_get_abbreviation(%struct._Gimp*, i32) #3

declare i8* @_gimp_unit_get_singular(%struct._Gimp*, i32) #3

declare i8* @_gimp_unit_get_plural(%struct._Gimp*, i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
