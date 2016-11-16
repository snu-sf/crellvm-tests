; ModuleID = './libgimpconfig/gimpconfig-deserialize.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i64 }
%struct._GimpConfig = type opaque
%struct._GScanner = type { i8*, i32, i32, i8*, %struct._GData*, %struct._GScannerConfig*, i32, %union._GTokenValue, i32, i32, i32, %union._GTokenValue, i32, i32, %struct._GHashTable*, i32, i8*, i8*, i8*, i32, void (%struct._GScanner*, i8*, i32)* }
%struct._GData = type opaque
%struct._GScannerConfig = type { i8*, i8*, i8*, i8*, i24, i32 }
%union._GTokenValue = type { i8* }
%struct._GHashTable = type opaque
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GTypeClass = type { i64 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%struct._GimpConfigInterface = type { %struct._GTypeInterface, i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)*, i32 (%struct._GimpConfig*, %struct._GScanner*, i32, i8*)*, i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GimpConfigWriter*)*, i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GScanner*, i32*)*, %struct._GimpConfig* (%struct._GimpConfig*)*, i32 (%struct._GimpConfig*, %struct._GimpConfig*)*, void (%struct._GimpConfig*)*, i32 (%struct._GimpConfig*, %struct._GimpConfig*, i32)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpConfigWriter = type opaque
%struct._GEnumClass = type { %struct._GTypeClass, i32, i32, i32, %struct._GEnumValue* }
%struct._GEnumValue = type { i32, i8*, i8* }
%struct._GError = type { i32, i32, i8* }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpMatrix2 = type { [2 x [2 x double]] }
%struct._GParamSpecValueArray = type { %struct._GParamSpec, %struct._GParamSpec*, i32 }
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GString = type { i8*, i64, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [14 x i8] c"LibGimpConfig\00", align 1
@__func__.gimp_config_deserialize_properties = private unnamed_addr constant [35 x i8] c"gimp_config_deserialize_properties\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"GIMP_IS_CONFIG (config)\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"gimp20-libgimp\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"invalid value '%s' for token %s\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"invalid value '%ld' for token %s\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"gimpconfig-deserialize.c\00", align 1
@__func__.gimp_config_deserialize_fundamental = private unnamed_addr constant [36 x i8] c"gimp_config_deserialize_fundamental\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"expected 'yes' or 'no' for boolean token %s, got '%s'\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"value for token %s is not a valid UTF-8 string\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"0123456789gGmMkKbB\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"while parsing token '%s': %s\00", align 1
@g_param_spec_types = external global i64*, align 8
@gimp_config_deserialize_unit.src = private unnamed_addr constant { i64, <{ { i32, [4 x i8] }, %union.anon }> } { i64 0, <{ { i32, [4 x i8] }, %union.anon }> <{ { i32, [4 x i8] } { i32 0, [4 x i8] undef }, %union.anon zeroinitializer }> }, align 8
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [54 x i8] c"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ.\00", align 1
@.str.17 = private unnamed_addr constant [66 x i8] c"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-_.\00", align 1
@gimp_config_deserialize_any.src = private unnamed_addr constant { i64, <{ { i32, [4 x i8] }, %union.anon }> } { i64 0, <{ { i32, [4 x i8] }, %union.anon }> <{ { i32, [4 x i8] } { i32 0, [4 x i8] undef }, %union.anon zeroinitializer }> }, align 8
@.str.18 = private unnamed_addr constant [44 x i8] c"%s: %s can not be transformed from a string\00", align 1
@__func__.gimp_config_deserialize_any = private unnamed_addr constant [28 x i8] c"gimp_config_deserialize_any\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_config_deserialize_properties(%struct._GimpConfig* %config, %struct._GScanner* %scanner, i32 %nest_level) #0 {
entry:
  %retval = alloca i32, align 4
  %config.addr = alloca %struct._GimpConfig*, align 8
  %scanner.addr = alloca %struct._GScanner*, align 8
  %nest_level.addr = alloca i32, align 4
  %klass = alloca %struct._GObjectClass*, align 8
  %property_specs = alloca %struct._GParamSpec**, align 8
  %n_property_specs = alloca i32, align 4
  %i = alloca i32, align 4
  %scope_id = alloca i32, align 4
  %old_scope_id = alloca i32, align 4
  %token = alloca i32, align 4
  %next = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %prop_spec = alloca %struct._GParamSpec*, align 8
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  store i32 %nest_level, i32* %nest_level.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_config_interface_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_config_deserialize_properties, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %14 = bitcast %struct._GimpConfig* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GObjectClass*
  store %struct._GObjectClass* %16, %struct._GObjectClass** %klass, align 8
  %17 = load %struct._GObjectClass*, %struct._GObjectClass** %klass, align 8
  %call12 = call %struct._GParamSpec** @g_object_class_list_properties(%struct._GObjectClass* %17, i32* %n_property_specs)
  store %struct._GParamSpec** %call12, %struct._GParamSpec*** %property_specs, align 8
  %18 = load %struct._GParamSpec**, %struct._GParamSpec*** %property_specs, align 8
  %tobool13 = icmp ne %struct._GParamSpec** %18, null
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %do.end
  store i32 1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %do.end
  %19 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %20 = bitcast %struct._GimpConfig* %19 to %struct._GTypeInstance*
  %g_class16 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class16, align 8
  %g_type17 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type17, align 8
  %call18 = call i32 @g_type_qname(i64 %22)
  store i32 %call18, i32* %scope_id, align 4
  %23 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %24 = load i32, i32* %scope_id, align 4
  %call19 = call i32 @g_scanner_set_scope(%struct._GScanner* %23, i32 %24)
  store i32 %call19, i32* %old_scope_id, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.15
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %n_property_specs, align 4
  %cmp20 = icmp ult i32 %25, %26
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %i, align 4
  %idxprom = zext i32 %27 to i64
  %28 = load %struct._GParamSpec**, %struct._GParamSpec*** %property_specs, align 8
  %arrayidx = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %28, i64 %idxprom
  %29 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx, align 8
  store %struct._GParamSpec* %29, %struct._GParamSpec** %prop_spec, align 8
  %30 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %flags = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %30, i32 0, i32 2
  %31 = load i32, i32* %flags, align 4
  %and = and i32 %31, 256
  %tobool22 = icmp ne i32 %and, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %for.body
  %32 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %33 = load i32, i32* %scope_id, align 4
  %34 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %34, i32 0, i32 1
  %35 = load i8*, i8** %name, align 8
  %36 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %37 = bitcast %struct._GParamSpec* %36 to i8*
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %32, i32 %33, i8* %35, i8* %37)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %38 = load i32, i32* %i, align 4
  %inc = add i32 %38, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load %struct._GParamSpec**, %struct._GParamSpec*** %property_specs, align 8
  %40 = bitcast %struct._GParamSpec** %39 to i8*
  call void @g_free(i8* %40)
  %41 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %42 = bitcast %struct._GimpConfig* %41 to %struct._GTypeInstance*
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 80)
  %43 = bitcast %struct._GTypeInstance* %call25 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %43)
  store i32 40, i32* %token, align 4
  br label %while.body

while.body:                                       ; preds = %for.end, %sw.epilog
  %44 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call26 = call i32 @g_scanner_peek_next_token(%struct._GScanner* %44)
  store i32 %call26, i32* %next, align 4
  %45 = load i32, i32* %next, align 4
  %46 = load i32, i32* %token, align 4
  %cmp27 = icmp ne i32 %45, %46
  br i1 %cmp27, label %land.lhs.true.28, label %if.end.33

land.lhs.true.28:                                 ; preds = %while.body
  %47 = load i32, i32* %token, align 4
  %cmp29 = icmp eq i32 %47, 265
  br i1 %cmp29, label %land.lhs.true.30, label %if.then.32

land.lhs.true.30:                                 ; preds = %land.lhs.true.28
  %48 = load i32, i32* %next, align 4
  %cmp31 = icmp eq i32 %48, 266
  br i1 %cmp31, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %land.lhs.true.30, %land.lhs.true.28
  br label %while.end

if.end.33:                                        ; preds = %land.lhs.true.30, %while.body
  %49 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call34 = call i32 @g_scanner_get_next_token(%struct._GScanner* %49)
  store i32 %call34, i32* %token, align 4
  %50 = load i32, i32* %token, align 4
  switch i32 %50, label %sw.default [
    i32 40, label %sw.bb
    i32 266, label %sw.bb.35
    i32 265, label %sw.bb.37
    i32 41, label %sw.bb.39
  ]

sw.bb:                                            ; preds = %if.end.33
  store i32 265, i32* %token, align 4
  br label %sw.epilog

sw.bb.35:                                         ; preds = %if.end.33
  %51 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call36 = call i32 @gimp_config_skip_unknown_property(%struct._GScanner* %51)
  store i32 %call36, i32* %token, align 4
  br label %sw.epilog

sw.bb.37:                                         ; preds = %if.end.33
  %52 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %53 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %54 = load i32, i32* %nest_level.addr, align 4
  %call38 = call i32 @gimp_config_deserialize_property(%struct._GimpConfig* %52, %struct._GScanner* %53, i32 %54)
  store i32 %call38, i32* %token, align 4
  br label %sw.epilog

sw.bb.39:                                         ; preds = %if.end.33
  store i32 40, i32* %token, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.33
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.39, %sw.bb.37, %sw.bb.35, %sw.bb
  br label %while.body

while.end:                                        ; preds = %if.then.32
  %55 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %56 = load i32, i32* %old_scope_id, align 4
  %call40 = call i32 @g_scanner_set_scope(%struct._GScanner* %55, i32 %56)
  %57 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %58 = bitcast %struct._GimpConfig* %57 to %struct._GTypeInstance*
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 80)
  %59 = bitcast %struct._GTypeInstance* %call41 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %59)
  %60 = load i32, i32* %token, align 4
  %cmp42 = icmp eq i32 %60, 256
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %while.end
  store i32 0, i32* %retval
  br label %return

if.end.44:                                        ; preds = %while.end
  %61 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %62 = load i32, i32* %token, align 4
  %63 = load i32, i32* %nest_level.addr, align 4
  %call45 = call i32 @gimp_config_deserialize_return(%struct._GScanner* %61, i32 %62, i32 %63)
  store i32 %call45, i32* %retval
  br label %return

return:                                           ; preds = %if.end.44, %if.then.43, %if.then.14, %if.else.9
  %64 = load i32, i32* %retval
  ret i32 %64
}

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare %struct._GParamSpec** @g_object_class_list_properties(%struct._GObjectClass*, i32*) #3

declare i32 @g_type_qname(i64) #3

declare i32 @g_scanner_set_scope(%struct._GScanner*, i32) #3

declare void @g_scanner_scope_add_symbol(%struct._GScanner*, i32, i8*, i8*) #3

declare void @g_free(i8*) #3

declare void @g_object_freeze_notify(%struct._GObject*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

declare i32 @g_scanner_peek_next_token(%struct._GScanner*) #3

declare i32 @g_scanner_get_next_token(%struct._GScanner*) #3

; Function Attrs: nounwind uwtable
define internal i32 @gimp_config_skip_unknown_property(%struct._GScanner* %scanner) #0 {
entry:
  %retval = alloca i32, align 4
  %scanner.addr = alloca %struct._GScanner*, align 8
  %open_paren = alloca i32, align 4
  %token = alloca i32, align 4
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  store i32 0, i32* %open_paren, align 4
  br label %while.body

while.body:                                       ; preds = %entry, %sw.epilog
  %0 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call = call i32 @g_scanner_peek_next_token(%struct._GScanner* %0)
  store i32 %call, i32* %token, align 4
  %1 = load i32, i32* %token, align 4
  switch i32 %1, label %sw.default [
    i32 40, label %sw.bb
    i32 41, label %sw.bb.2
    i32 0, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %while.body
  %2 = load i32, i32* %open_paren, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %open_paren, align 4
  %3 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call1 = call i32 @g_scanner_get_next_token(%struct._GScanner* %3)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %while.body
  %4 = load i32, i32* %open_paren, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.2
  %5 = load i32, i32* %token, align 4
  store i32 %5, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb.2
  %6 = load i32, i32* %open_paren, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %open_paren, align 4
  %7 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call3 = call i32 @g_scanner_get_next_token(%struct._GScanner* %7)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %while.body
  %8 = load i32, i32* %token, align 4
  store i32 %8, i32* %retval
  br label %return

sw.default:                                       ; preds = %while.body
  %9 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call5 = call i32 @g_scanner_get_next_token(%struct._GScanner* %9)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end, %sw.bb
  br label %while.body

return:                                           ; preds = %sw.bb.4, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @gimp_config_deserialize_property(%struct._GimpConfig* %config, %struct._GScanner* %scanner, i32 %nest_level) #0 {
entry:
  %config.addr = alloca %struct._GimpConfig*, align 8
  %scanner.addr = alloca %struct._GScanner*, align 8
  %nest_level.addr = alloca i32, align 4
  %config_iface = alloca %struct._GimpConfigInterface*, align 8
  %parent_iface = alloca %struct._GimpConfigInterface*, align 8
  %prop_spec = alloca %struct._GParamSpec*, align 8
  %token = alloca i32, align 4
  %value = alloca %struct._GValue, align 8
  %old_scope_id = alloca i32, align 4
  %owner_class = alloca %struct._GTypeClass*, align 8
  %owner_parent_class = alloca %struct._GTypeClass*, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__val45 = alloca %struct._GValue*, align 8
  %__t47 = alloca i64, align 8
  %__r49 = alloca i32, align 4
  %tmp60 = alloca i32, align 4
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  store i32 %nest_level, i32* %nest_level.addr, align 4
  store %struct._GimpConfigInterface* null, %struct._GimpConfigInterface** %config_iface, align 8
  store %struct._GimpConfigInterface* null, %struct._GimpConfigInterface** %parent_iface, align 8
  store i32 41, i32* %token, align 4
  %0 = bitcast %struct._GValue* %value to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 24, i32 8, i1 false)
  %1 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call = call i32 @g_scanner_set_scope(%struct._GScanner* %1, i32 0)
  store i32 %call, i32* %old_scope_id, align 4
  %2 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value1 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %2, i32 0, i32 7
  %v_symbol = bitcast %union._GTokenValue* %value1 to i8**
  %3 = load i8*, i8** %v_symbol, align 8
  %4 = bitcast i8* %3 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 76)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GParamSpec*
  store %struct._GParamSpec* %5, %struct._GParamSpec** %prop_spec, align 8
  %6 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %6, i32 0, i32 3
  %7 = load i64, i64* %value_type, align 8
  %call3 = call %struct._GValue* @g_value_init(%struct._GValue* %value, i64 %7)
  %8 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %owner_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %8, i32 0, i32 4
  %9 = load i64, i64* %owner_type, align 8
  %call4 = call i64 @g_type_fundamental(i64 %9)
  %cmp = icmp eq i64 %call4, 80
  br i1 %cmp, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %10 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %owner_type5 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %10, i32 0, i32 4
  %11 = load i64, i64* %owner_type5, align 8
  %call6 = call i8* @g_type_class_peek(i64 %11)
  %12 = bitcast i8* %call6 to %struct._GTypeClass*
  store %struct._GTypeClass* %12, %struct._GTypeClass** %owner_class, align 8
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %owner_class, align 8
  %14 = bitcast %struct._GTypeClass* %13 to i8*
  %call7 = call i64 @gimp_config_interface_get_type() #8
  %call8 = call i8* @g_type_interface_peek(i8* %14, i64 %call7)
  %15 = bitcast i8* %call8 to %struct._GimpConfigInterface*
  store %struct._GimpConfigInterface* %15, %struct._GimpConfigInterface** %config_iface, align 8
  %16 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %config_iface, align 8
  %tobool = icmp ne %struct._GimpConfigInterface* %16, null
  br i1 %tobool, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %owner_class, align 8
  %18 = bitcast %struct._GTypeClass* %17 to i8*
  %call10 = call i8* @g_type_class_peek_parent(i8* %18)
  %19 = bitcast i8* %call10 to %struct._GTypeClass*
  store %struct._GTypeClass* %19, %struct._GTypeClass** %owner_parent_class, align 8
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %owner_parent_class, align 8
  %21 = bitcast %struct._GTypeClass* %20 to i8*
  %call11 = call i64 @gimp_config_interface_get_type() #8
  %call12 = call i8* @g_type_interface_peek(i8* %21, i64 %call11)
  %22 = bitcast i8* %call12 to %struct._GimpConfigInterface*
  store %struct._GimpConfigInterface* %22, %struct._GimpConfigInterface** %parent_iface, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %entry
  %23 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %config_iface, align 8
  %tobool14 = icmp ne %struct._GimpConfigInterface* %23, null
  br i1 %tobool14, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.13
  %24 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %config_iface, align 8
  %25 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %parent_iface, align 8
  %cmp15 = icmp ne %struct._GimpConfigInterface* %24, %25
  br i1 %cmp15, label %land.lhs.true.16, label %if.else

land.lhs.true.16:                                 ; preds = %land.lhs.true
  %26 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %config_iface, align 8
  %deserialize_property = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %26, i32 0, i32 4
  %27 = load i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GScanner*, i32*)*, i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GScanner*, i32*)** %deserialize_property, align 8
  %tobool17 = icmp ne i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GScanner*, i32*)* %27, null
  br i1 %tobool17, label %land.lhs.true.18, label %if.else

land.lhs.true.18:                                 ; preds = %land.lhs.true.16
  %28 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %config_iface, align 8
  %deserialize_property19 = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %28, i32 0, i32 4
  %29 = load i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GScanner*, i32*)*, i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GScanner*, i32*)** %deserialize_property19, align 8
  %30 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %31 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %param_id = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %31, i32 0, i32 9
  %32 = load i32, i32* %param_id, align 4
  %33 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %34 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call20 = call i32 %29(%struct._GimpConfig* %30, i32 %32, %struct._GValue* %value, %struct._GParamSpec* %33, %struct._GScanner* %34, i32* %token)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %land.lhs.true.18
  br label %if.end.38

if.else:                                          ; preds = %land.lhs.true.18, %land.lhs.true.16, %land.lhs.true, %if.end.13
  store %struct._GValue* %value, %struct._GValue** %__val, align 8
  store i64 80, i64* %__t, align 8
  %35 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool23 = icmp ne %struct._GValue* %35, null
  br i1 %tobool23, label %if.else.25, label %if.then.24

if.then.24:                                       ; preds = %if.else
  store i32 0, i32* %__r, align 4
  br label %if.end.31

if.else.25:                                       ; preds = %if.else
  %36 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %36, i32 0, i32 0
  %37 = load i64, i64* %g_type, align 8
  %38 = load i64, i64* %__t, align 8
  %cmp26 = icmp eq i64 %37, %38
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %if.else.25
  store i32 1, i32* %__r, align 4
  br label %if.end.30

if.else.28:                                       ; preds = %if.else.25
  %39 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %40 = load i64, i64* %__t, align 8
  %call29 = call i32 @g_type_check_value_holds(%struct._GValue* %39, i64 %40) #9
  store i32 %call29, i32* %__r, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.28, %if.then.27
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.24
  %41 = load i32, i32* %__r, align 4
  store i32 %41, i32* %tmp
  %42 = load i32, i32* %tmp
  %tobool32 = icmp ne i32 %42, 0
  br i1 %tobool32, label %if.then.33, label %if.else.35

if.then.33:                                       ; preds = %if.end.31
  %43 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %44 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %45 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %46 = load i32, i32* %nest_level.addr, align 4
  %call34 = call i32 @gimp_config_deserialize_object(%struct._GValue* %value, %struct._GimpConfig* %43, %struct._GParamSpec* %44, %struct._GScanner* %45, i32 %46)
  store i32 %call34, i32* %token, align 4
  br label %if.end.37

if.else.35:                                       ; preds = %if.end.31
  %47 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %48 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %49 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call36 = call i32 @gimp_config_deserialize_value(%struct._GValue* %value, %struct._GimpConfig* %47, %struct._GParamSpec* %48, %struct._GScanner* %49)
  store i32 %call36, i32* %token, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.35, %if.then.33
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.22
  %50 = load i32, i32* %token, align 4
  %cmp39 = icmp eq i32 %50, 41
  br i1 %cmp39, label %land.lhs.true.40, label %if.end.67

land.lhs.true.40:                                 ; preds = %if.end.38
  %51 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call41 = call i32 @g_scanner_peek_next_token(%struct._GScanner* %51)
  %52 = load i32, i32* %token, align 4
  %cmp42 = icmp eq i32 %call41, %52
  br i1 %cmp42, label %if.then.43, label %if.end.67

if.then.43:                                       ; preds = %land.lhs.true.40
  store %struct._GValue* %value, %struct._GValue** %__val45, align 8
  store i64 80, i64* %__t47, align 8
  %53 = load %struct._GValue*, %struct._GValue** %__val45, align 8
  %tobool50 = icmp ne %struct._GValue* %53, null
  br i1 %tobool50, label %if.else.52, label %if.then.51

if.then.51:                                       ; preds = %if.then.43
  store i32 0, i32* %__r49, align 4
  br label %if.end.59

if.else.52:                                       ; preds = %if.then.43
  %54 = load %struct._GValue*, %struct._GValue** %__val45, align 8
  %g_type53 = getelementptr inbounds %struct._GValue, %struct._GValue* %54, i32 0, i32 0
  %55 = load i64, i64* %g_type53, align 8
  %56 = load i64, i64* %__t47, align 8
  %cmp54 = icmp eq i64 %55, %56
  br i1 %cmp54, label %if.then.55, label %if.else.56

if.then.55:                                       ; preds = %if.else.52
  store i32 1, i32* %__r49, align 4
  br label %if.end.58

if.else.56:                                       ; preds = %if.else.52
  %57 = load %struct._GValue*, %struct._GValue** %__val45, align 8
  %58 = load i64, i64* %__t47, align 8
  %call57 = call i32 @g_type_check_value_holds(%struct._GValue* %57, i64 %58) #9
  store i32 %call57, i32* %__r49, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.56, %if.then.55
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.then.51
  %59 = load i32, i32* %__r49, align 4
  store i32 %59, i32* %tmp60
  %60 = load i32, i32* %tmp60
  %tobool61 = icmp ne i32 %60, 0
  br i1 %tobool61, label %land.lhs.true.62, label %if.then.64

land.lhs.true.62:                                 ; preds = %if.end.59
  %61 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %flags = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %61, i32 0, i32 2
  %62 = load i32, i32* %flags, align 4
  %and = and i32 %62, 512
  %tobool63 = icmp ne i32 %and, 0
  br i1 %tobool63, label %if.end.66, label %if.then.64

if.then.64:                                       ; preds = %land.lhs.true.62, %if.end.59
  %63 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %64 = bitcast %struct._GimpConfig* %63 to %struct._GTypeInstance*
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 80)
  %65 = bitcast %struct._GTypeInstance* %call65 to %struct._GObject*
  %66 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %66, i32 0, i32 1
  %67 = load i8*, i8** %name, align 8
  call void @g_object_set_property(%struct._GObject* %65, i8* %67, %struct._GValue* %value)
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.64, %land.lhs.true.62
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %land.lhs.true.40, %if.end.38
  call void @g_value_unset(%struct._GValue* %value)
  %68 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %69 = load i32, i32* %old_scope_id, align 4
  %call68 = call i32 @g_scanner_set_scope(%struct._GScanner* %68, i32 %69)
  %70 = load i32, i32* %token, align 4
  ret i32 %70
}

declare void @g_object_thaw_notify(%struct._GObject*) #3

declare i32 @gimp_config_deserialize_return(%struct._GScanner*, i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare %struct._GValue* @g_value_init(%struct._GValue*, i64) #3

declare i64 @g_type_fundamental(i64) #3

declare i8* @g_type_class_peek(i64) #3

declare i8* @g_type_interface_peek(i8*, i64) #3

declare i8* @g_type_class_peek_parent(i8*) #3

; Function Attrs: nounwind readonly
declare i32 @g_type_check_value_holds(%struct._GValue*, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @gimp_config_deserialize_object(%struct._GValue* %value, %struct._GimpConfig* %config, %struct._GParamSpec* %prop_spec, %struct._GScanner* %scanner, i32 %nest_level) #0 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %config.addr = alloca %struct._GimpConfig*, align 8
  %prop_spec.addr = alloca %struct._GParamSpec*, align 8
  %scanner.addr = alloca %struct._GScanner*, align 8
  %nest_level.addr = alloca i32, align 4
  %config_iface = alloca %struct._GimpConfigInterface*, align 8
  %prop_object = alloca %struct._GimpConfig*, align 8
  %type_name = alloca i8*, align 8
  %type = alloca i64, align 8
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  store %struct._GParamSpec* %prop_spec, %struct._GParamSpec** %prop_spec.addr, align 8
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  store i32 %nest_level, i32* %nest_level.addr, align 4
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %3 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %3, i32 0, i32 1
  %4 = load i8*, i8** %name, align 8
  %5 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  call void @g_object_get_property(%struct._GObject* %2, i8* %4, %struct._GValue* %5)
  %6 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call1 = call i8* @g_value_get_object(%struct._GValue* %6)
  %7 = bitcast i8* %call1 to %struct._GimpConfig*
  store %struct._GimpConfig* %7, %struct._GimpConfig** %prop_object, align 8
  %8 = load %struct._GimpConfig*, %struct._GimpConfig** %prop_object, align 8
  %tobool = icmp ne %struct._GimpConfig* %8, null
  br i1 %tobool, label %if.end.14, label %if.then

if.then:                                          ; preds = %entry
  %9 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec.addr, align 8
  %flags = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %9, i32 0, i32 2
  %10 = load i32, i32* %flags, align 4
  %and = and i32 %10, 512
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.else, label %if.then.3

if.then.3:                                        ; preds = %if.then
  %11 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call4 = call i32 @gimp_scanner_parse_string(%struct._GScanner* %11, i8** %type_name)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end, label %if.then.6

if.then.6:                                        ; preds = %if.then.3
  store i32 264, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.3
  %12 = load i8*, i8** %type_name, align 8
  %call7 = call i64 @g_type_from_name(i8* %12)
  store i64 %call7, i64* %type, align 8
  %13 = load i8*, i8** %type_name, align 8
  call void @g_free(i8* %13)
  %14 = load i64, i64* %type, align 8
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec.addr, align 8
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %15, i32 0, i32 3
  %16 = load i64, i64* %value_type, align 8
  %call8 = call i32 @g_type_is_a(i64 %14, i64 %16)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end
  store i32 264, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end
  %17 = load i64, i64* %type, align 8
  %call12 = call i8* (i64, i8*, ...) @g_object_new(i64 %17, i8* null)
  %18 = bitcast i8* %call12 to %struct._GimpConfig*
  store %struct._GimpConfig* %18, %struct._GimpConfig** %prop_object, align 8
  %19 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %20 = load %struct._GimpConfig*, %struct._GimpConfig** %prop_object, align 8
  %21 = bitcast %struct._GimpConfig* %20 to i8*
  call void @g_value_take_object(%struct._GValue* %19, i8* %21)
  br label %if.end.13

if.else:                                          ; preds = %if.then
  store i32 41, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.11
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %entry
  %22 = load %struct._GimpConfig*, %struct._GimpConfig** %prop_object, align 8
  %23 = bitcast %struct._GimpConfig* %22 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %23, i32 0, i32 0
  %24 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %25 = bitcast %struct._GTypeClass* %24 to i8*
  %call15 = call i64 @gimp_config_interface_get_type() #8
  %call16 = call i8* @g_type_interface_peek(i8* %25, i64 %call15)
  %26 = bitcast i8* %call16 to %struct._GimpConfigInterface*
  store %struct._GimpConfigInterface* %26, %struct._GimpConfigInterface** %config_iface, align 8
  %27 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %config_iface, align 8
  %tobool17 = icmp ne %struct._GimpConfigInterface* %27, null
  br i1 %tobool17, label %if.end.20, label %if.then.18

if.then.18:                                       ; preds = %if.end.14
  %28 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %29 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec.addr, align 8
  %30 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call19 = call i32 @gimp_config_deserialize_any(%struct._GValue* %28, %struct._GParamSpec* %29, %struct._GScanner* %30)
  store i32 %call19, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.14
  %31 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %config_iface, align 8
  %deserialize = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %31, i32 0, i32 2
  %32 = load i32 (%struct._GimpConfig*, %struct._GScanner*, i32, i8*)*, i32 (%struct._GimpConfig*, %struct._GScanner*, i32, i8*)** %deserialize, align 8
  %33 = load %struct._GimpConfig*, %struct._GimpConfig** %prop_object, align 8
  %34 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %35 = load i32, i32* %nest_level.addr, align 4
  %add = add nsw i32 %35, 1
  %call21 = call i32 %32(%struct._GimpConfig* %33, %struct._GScanner* %34, i32 %add, i8* null)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %if.end.20
  store i32 256, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.end.20
  store i32 41, i32* %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then.23, %if.then.18, %if.else, %if.then.10, %if.then.6
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_config_deserialize_value(%struct._GValue* %value, %struct._GimpConfig* %config, %struct._GParamSpec* %prop_spec, %struct._GScanner* %scanner) #0 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %config.addr = alloca %struct._GimpConfig*, align 8
  %prop_spec.addr = alloca %struct._GParamSpec*, align 8
  %scanner.addr = alloca %struct._GScanner*, align 8
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  store %struct._GParamSpec* %prop_spec, %struct._GParamSpec** %prop_spec.addr, align 8
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  %0 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec.addr, align 8
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %0, i32 0, i32 3
  %1 = load i64, i64* %value_type, align 8
  %call = call i64 @g_type_fundamental(i64 %1)
  %cmp = icmp eq i64 %call, 48
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %3 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec.addr, align 8
  %4 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call1 = call i32 @gimp_config_deserialize_enum(%struct._GValue* %2, %struct._GParamSpec* %3, %struct._GScanner* %4)
  store i32 %call1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %5 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec.addr, align 8
  %value_type2 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %5, i32 0, i32 3
  %6 = load i64, i64* %value_type2, align 8
  %cmp3 = icmp ule i64 %6, 1020
  br i1 %cmp3, label %if.then.4, label %if.else.6

if.then.4:                                        ; preds = %if.else
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec.addr, align 8
  %9 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call5 = call i32 @gimp_config_deserialize_fundamental(%struct._GValue* %7, %struct._GParamSpec* %8, %struct._GScanner* %9)
  store i32 %call5, i32* %retval
  br label %return

if.else.6:                                        ; preds = %if.else
  %10 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec.addr, align 8
  %value_type7 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %10, i32 0, i32 3
  %11 = load i64, i64* %value_type7, align 8
  %call8 = call i64 @gimp_memsize_get_type() #8
  %cmp9 = icmp eq i64 %11, %call8
  br i1 %cmp9, label %if.then.10, label %if.else.12

if.then.10:                                       ; preds = %if.else.6
  %12 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec.addr, align 8
  %14 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call11 = call i32 @gimp_config_deserialize_memsize(%struct._GValue* %12, %struct._GParamSpec* %13, %struct._GScanner* %14)
  store i32 %call11, i32* %retval
  br label %return

if.else.12:                                       ; preds = %if.else.6
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec.addr, align 8
  %value_type13 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %15, i32 0, i32 3
  %16 = load i64, i64* %value_type13, align 8
  %call14 = call i64 @gimp_config_path_get_type() #8
  %cmp15 = icmp eq i64 %16, %call14
  br i1 %cmp15, label %if.then.16, label %if.else.18

if.then.16:                                       ; preds = %if.else.12
  %17 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %18 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec.addr, align 8
  %19 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call17 = call i32 @gimp_config_deserialize_path(%struct._GValue* %17, %struct._GParamSpec* %18, %struct._GScanner* %19)
  store i32 %call17, i32* %retval
  br label %return

if.else.18:                                       ; preds = %if.else.12
  %20 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec.addr, align 8
  %value_type19 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %20, i32 0, i32 3
  %21 = load i64, i64* %value_type19, align 8
  %call20 = call i64 @gimp_rgb_get_type() #8
  %cmp21 = icmp eq i64 %21, %call20
  br i1 %cmp21, label %if.then.22, label %if.else.24

if.then.22:                                       ; preds = %if.else.18
  %22 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %23 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec.addr, align 8
  %24 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call23 = call i32 @gimp_config_deserialize_rgb(%struct._GValue* %22, %struct._GParamSpec* %23, %struct._GScanner* %24)
  store i32 %call23, i32* %retval
  br label %return

if.else.24:                                       ; preds = %if.else.18
  %25 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec.addr, align 8
  %value_type25 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %25, i32 0, i32 3
  %26 = load i64, i64* %value_type25, align 8
  %call26 = call i64 @gimp_matrix2_get_type() #8
  %cmp27 = icmp eq i64 %26, %call26
  br i1 %cmp27, label %if.then.28, label %if.else.30

if.then.28:                                       ; preds = %if.else.24
  %27 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %28 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec.addr, align 8
  %29 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call29 = call i32 @gimp_config_deserialize_matrix2(%struct._GValue* %27, %struct._GParamSpec* %28, %struct._GScanner* %29)
  store i32 %call29, i32* %retval
  br label %return

if.else.30:                                       ; preds = %if.else.24
  %30 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec.addr, align 8
  %value_type31 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %30, i32 0, i32 3
  %31 = load i64, i64* %value_type31, align 8
  %call32 = call i64 @g_value_array_get_type() #8
  %cmp33 = icmp eq i64 %31, %call32
  br i1 %cmp33, label %if.then.34, label %if.else.36

if.then.34:                                       ; preds = %if.else.30
  %32 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %33 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %34 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec.addr, align 8
  %35 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call35 = call i32 @gimp_config_deserialize_value_array(%struct._GValue* %32, %struct._GimpConfig* %33, %struct._GParamSpec* %34, %struct._GScanner* %35)
  store i32 %call35, i32* %retval
  br label %return

if.else.36:                                       ; preds = %if.else.30
  %36 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec.addr, align 8
  %value_type37 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %36, i32 0, i32 3
  %37 = load i64, i64* %value_type37, align 8
  %call38 = call i64 @gimp_unit_get_type() #8
  %cmp39 = icmp eq i64 %37, %call38
  br i1 %cmp39, label %if.then.40, label %if.end

if.then.40:                                       ; preds = %if.else.36
  %38 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %39 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec.addr, align 8
  %40 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call41 = call i32 @gimp_config_deserialize_unit(%struct._GValue* %38, %struct._GParamSpec* %39, %struct._GScanner* %40)
  store i32 %call41, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else.36
  br label %if.end.42

if.end.42:                                        ; preds = %if.end
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47
  %41 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %42 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec.addr, align 8
  %43 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call49 = call i32 @gimp_config_deserialize_any(%struct._GValue* %41, %struct._GParamSpec* %42, %struct._GScanner* %43)
  store i32 %call49, i32* %retval
  br label %return

return:                                           ; preds = %if.end.48, %if.then.40, %if.then.34, %if.then.28, %if.then.22, %if.then.16, %if.then.10, %if.then.4, %if.then
  %44 = load i32, i32* %retval
  ret i32 %44
}

declare void @g_object_set_property(%struct._GObject*, i8*, %struct._GValue*) #3

declare void @g_value_unset(%struct._GValue*) #3

; Function Attrs: nounwind uwtable
define internal i32 @gimp_config_deserialize_enum(%struct._GValue* %value, %struct._GParamSpec* %prop_spec, %struct._GScanner* %scanner) #0 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %prop_spec.addr = alloca %struct._GParamSpec*, align 8
  %scanner.addr = alloca %struct._GScanner*, align 8
  %enum_class = alloca %struct._GEnumClass*, align 8
  %enum_value = alloca %struct._GEnumValue*, align 8
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %prop_spec, %struct._GParamSpec** %prop_spec.addr, align 8
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %0, i32 0, i32 0
  %1 = load i64, i64* %g_type, align 8
  %call = call i8* @g_type_class_peek(i64 %1)
  %2 = bitcast i8* %call to %struct._GEnumClass*
  store %struct._GEnumClass* %2, %struct._GEnumClass** %enum_class, align 8
  %3 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call1 = call i32 @g_scanner_peek_next_token(%struct._GScanner* %3)
  switch i32 %call1, label %sw.default [
    i32 266, label %sw.bb
    i32 261, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call2 = call i32 @g_scanner_get_next_token(%struct._GScanner* %4)
  %5 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %6 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value3 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %6, i32 0, i32 7
  %v_identifier = bitcast %union._GTokenValue* %value3 to i8**
  %7 = load i8*, i8** %v_identifier, align 8
  %call4 = call %struct._GEnumValue* @g_enum_get_value_by_nick(%struct._GEnumClass* %5, i8* %7)
  store %struct._GEnumValue* %call4, %struct._GEnumValue** %enum_value, align 8
  %8 = load %struct._GEnumValue*, %struct._GEnumValue** %enum_value, align 8
  %tobool = icmp ne %struct._GEnumValue* %8, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  %9 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %10 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value5 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %10, i32 0, i32 7
  %v_identifier6 = bitcast %union._GTokenValue* %value5 to i8**
  %11 = load i8*, i8** %v_identifier6, align 8
  %call7 = call %struct._GEnumValue* @g_enum_get_value_by_name(%struct._GEnumClass* %9, i8* %11)
  store %struct._GEnumValue* %call7, %struct._GEnumValue** %enum_value, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %12 = load %struct._GEnumValue*, %struct._GEnumValue** %enum_value, align 8
  %tobool8 = icmp ne %struct._GEnumValue* %12, null
  br i1 %tobool8, label %if.end.13, label %if.then.9

if.then.9:                                        ; preds = %if.end
  %13 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call10 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0)) #4
  %14 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value11 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %14, i32 0, i32 7
  %v_identifier12 = bitcast %union._GTokenValue* %value11 to i8**
  %15 = load i8*, i8** %v_identifier12, align 8
  %16 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %16, i32 0, i32 1
  %17 = load i8*, i8** %name, align 8
  call void (%struct._GScanner*, i8*, ...) @g_scanner_error(%struct._GScanner* %13, i8* %call10, i8* %15, i8* %17)
  store i32 256, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  %18 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call15 = call i32 @g_scanner_get_next_token(%struct._GScanner* %18)
  %19 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %20 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value16 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %20, i32 0, i32 7
  %v_int64 = bitcast %union._GTokenValue* %value16 to i64*
  %21 = load i64, i64* %v_int64, align 8
  %conv = trunc i64 %21 to i32
  %call17 = call %struct._GEnumValue* @g_enum_get_value(%struct._GEnumClass* %19, i32 %conv)
  store %struct._GEnumValue* %call17, %struct._GEnumValue** %enum_value, align 8
  %22 = load %struct._GEnumValue*, %struct._GEnumValue** %enum_value, align 8
  %tobool18 = icmp ne %struct._GEnumValue* %22, null
  br i1 %tobool18, label %if.end.24, label %if.then.19

if.then.19:                                       ; preds = %sw.bb.14
  %23 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call20 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0)) #4
  %24 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value21 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %24, i32 0, i32 7
  %v_int6422 = bitcast %union._GTokenValue* %value21 to i64*
  %25 = load i64, i64* %v_int6422, align 8
  %26 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec.addr, align 8
  %name23 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %26, i32 0, i32 1
  %27 = load i8*, i8** %name23, align 8
  call void (%struct._GScanner*, i8*, ...) @g_scanner_error(%struct._GScanner* %23, i8* %call20, i64 %25, i8* %27)
  store i32 256, i32* %retval
  br label %return

if.end.24:                                        ; preds = %sw.bb.14
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 266, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.24, %if.end.13
  %28 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %29 = load %struct._GEnumValue*, %struct._GEnumValue** %enum_value, align 8
  %value25 = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %29, i32 0, i32 0
  %30 = load i32, i32* %value25, align 4
  call void @g_value_set_enum(%struct._GValue* %28, i32 %30)
  store i32 41, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %if.then.19, %if.then.9
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_config_deserialize_fundamental(%struct._GValue* %value, %struct._GParamSpec* %prop_spec, %struct._GScanner* %scanner) #0 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %prop_spec.addr = alloca %struct._GParamSpec*, align 8
  %scanner.addr = alloca %struct._GScanner*, align 8
  %token = alloca i32, align 4
  %value_type = alloca i64, align 8
  %negate = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %prop_spec, %struct._GParamSpec** %prop_spec.addr, align 8
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  store i32 0, i32* %negate, align 4
  %0 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec.addr, align 8
  %value_type1 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %0, i32 0, i32 3
  %1 = load i64, i64* %value_type1, align 8
  %call = call i64 @g_type_fundamental(i64 %1)
  store i64 %call, i64* %value_type, align 8
  %2 = load i64, i64* %value_type, align 8
  switch i64 %2, label %sw.default [
    i64 64, label %sw.bb
    i64 20, label %sw.bb.2
    i64 24, label %sw.bb.3
    i64 32, label %sw.bb.3
    i64 40, label %sw.bb.3
    i64 28, label %sw.bb.6
    i64 36, label %sw.bb.6
    i64 44, label %sw.bb.6
    i64 56, label %sw.bb.7
    i64 60, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %entry
  store i32 264, i32* %token, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  store i32 266, i32* %token, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry, %entry, %entry
  %3 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call4 = call i32 @g_scanner_peek_next_token(%struct._GScanner* %3)
  %cmp = icmp eq i32 %call4, 45
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.3
  store i32 1, i32* %negate, align 4
  %4 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call5 = call i32 @g_scanner_get_next_token(%struct._GScanner* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.3
  br label %sw.bb.6

sw.bb.6:                                          ; preds = %entry, %entry, %entry, %if.end
  store i32 261, i32* %token, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry, %entry
  %5 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call8 = call i32 @g_scanner_peek_next_token(%struct._GScanner* %5)
  %cmp9 = icmp eq i32 %call8, 45
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %sw.bb.7
  store i32 1, i32* %negate, align 4
  %6 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call11 = call i32 @g_scanner_get_next_token(%struct._GScanner* %6)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %sw.bb.7
  store i32 263, i32* %token, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), i32 419, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_config_deserialize_fundamental, i32 0, i32 0), i8* null) #10
  unreachable

do.end:                                           ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.end.12, %sw.bb.6, %sw.bb.2, %sw.bb
  %7 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call13 = call i32 @g_scanner_peek_next_token(%struct._GScanner* %7)
  %8 = load i32, i32* %token, align 4
  %cmp14 = icmp ne i32 %call13, %8
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %sw.epilog
  %9 = load i32, i32* %token, align 4
  store i32 %9, i32* %retval
  br label %return

if.end.16:                                        ; preds = %sw.epilog
  %10 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call17 = call i32 @g_scanner_get_next_token(%struct._GScanner* %10)
  %11 = load i64, i64* %value_type, align 8
  switch i64 %11, label %sw.default.109 [
    i64 64, label %sw.bb.18
    i64 20, label %sw.bb.23
    i64 24, label %sw.bb.50
    i64 28, label %sw.bb.55
    i64 32, label %sw.bb.59
    i64 36, label %sw.bb.70
    i64 40, label %sw.bb.73
    i64 44, label %sw.bb.84
    i64 56, label %sw.bb.87
    i64 60, label %sw.bb.98
  ]

sw.bb.18:                                         ; preds = %if.end.16
  %12 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %13, i32 0, i32 1
  %14 = load i8*, i8** %name, align 8
  %call19 = call i32 @scanner_string_utf8_valid(%struct._GScanner* %12, i8* %14)
  %tobool = icmp ne i32 %call19, 0
  br i1 %tobool, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %sw.bb.18
  %15 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %16 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value21 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %16, i32 0, i32 7
  %v_string = bitcast %union._GTokenValue* %value21 to i8**
  %17 = load i8*, i8** %v_string, align 8
  call void @g_value_set_static_string(%struct._GValue* %15, i8* %17)
  br label %if.end.22

if.else:                                          ; preds = %sw.bb.18
  store i32 256, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.then.20
  br label %sw.epilog.112

sw.bb.23:                                         ; preds = %if.end.16
  %18 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value24 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %18, i32 0, i32 7
  %v_identifier = bitcast %union._GTokenValue* %value24 to i8**
  %19 = load i8*, i8** %v_identifier, align 8
  %call25 = call i32 @g_ascii_strcasecmp(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0))
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %lor.lhs.false, label %if.then.31

lor.lhs.false:                                    ; preds = %sw.bb.23
  %20 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value27 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %20, i32 0, i32 7
  %v_identifier28 = bitcast %union._GTokenValue* %value27 to i8**
  %21 = load i8*, i8** %v_identifier28, align 8
  %call29 = call i32 @g_ascii_strcasecmp(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0))
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.else.32, label %if.then.31

if.then.31:                                       ; preds = %lor.lhs.false, %sw.bb.23
  %22 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  call void @g_value_set_boolean(%struct._GValue* %22, i32 1)
  br label %if.end.49

if.else.32:                                       ; preds = %lor.lhs.false
  %23 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value33 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %23, i32 0, i32 7
  %v_identifier34 = bitcast %union._GTokenValue* %value33 to i8**
  %24 = load i8*, i8** %v_identifier34, align 8
  %call35 = call i32 @g_ascii_strcasecmp(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0))
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %lor.lhs.false.37, label %if.then.42

lor.lhs.false.37:                                 ; preds = %if.else.32
  %25 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value38 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %25, i32 0, i32 7
  %v_identifier39 = bitcast %union._GTokenValue* %value38 to i8**
  %26 = load i8*, i8** %v_identifier39, align 8
  %call40 = call i32 @g_ascii_strcasecmp(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0))
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.else.43, label %if.then.42

if.then.42:                                       ; preds = %lor.lhs.false.37, %if.else.32
  %27 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  call void @g_value_set_boolean(%struct._GValue* %27, i32 0)
  br label %if.end.48

if.else.43:                                       ; preds = %lor.lhs.false.37
  %28 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call44 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i32 0, i32 0)) #4
  %29 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec.addr, align 8
  %name45 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %29, i32 0, i32 1
  %30 = load i8*, i8** %name45, align 8
  %31 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value46 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %31, i32 0, i32 7
  %v_identifier47 = bitcast %union._GTokenValue* %value46 to i8**
  %32 = load i8*, i8** %v_identifier47, align 8
  call void (%struct._GScanner*, i8*, ...) @g_scanner_error(%struct._GScanner* %28, i8* %call44, i8* %30, i8* %32)
  store i32 256, i32* %retval
  br label %return

if.end.48:                                        ; preds = %if.then.42
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then.31
  br label %sw.epilog.112

sw.bb.50:                                         ; preds = %if.end.16
  %33 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %34 = load i32, i32* %negate, align 4
  %tobool51 = icmp ne i32 %34, 0
  br i1 %tobool51, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.50
  %35 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value52 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %35, i32 0, i32 7
  %v_int64 = bitcast %union._GTokenValue* %value52 to i64*
  %36 = load i64, i64* %v_int64, align 8
  %sub = sub i64 0, %36
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.50
  %37 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value53 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %37, i32 0, i32 7
  %v_int6454 = bitcast %union._GTokenValue* %value53 to i64*
  %38 = load i64, i64* %v_int6454, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ %38, %cond.false ]
  %conv = trunc i64 %cond to i32
  call void @g_value_set_int(%struct._GValue* %33, i32 %conv)
  br label %sw.epilog.112

sw.bb.55:                                         ; preds = %if.end.16
  %39 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %40 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value56 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %40, i32 0, i32 7
  %v_int6457 = bitcast %union._GTokenValue* %value56 to i64*
  %41 = load i64, i64* %v_int6457, align 8
  %conv58 = trunc i64 %41 to i32
  call void @g_value_set_uint(%struct._GValue* %39, i32 %conv58)
  br label %sw.epilog.112

sw.bb.59:                                         ; preds = %if.end.16
  %42 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %43 = load i32, i32* %negate, align 4
  %tobool60 = icmp ne i32 %43, 0
  br i1 %tobool60, label %cond.true.61, label %cond.false.65

cond.true.61:                                     ; preds = %sw.bb.59
  %44 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value62 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %44, i32 0, i32 7
  %v_int6463 = bitcast %union._GTokenValue* %value62 to i64*
  %45 = load i64, i64* %v_int6463, align 8
  %sub64 = sub i64 0, %45
  br label %cond.end.68

cond.false.65:                                    ; preds = %sw.bb.59
  %46 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value66 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %46, i32 0, i32 7
  %v_int6467 = bitcast %union._GTokenValue* %value66 to i64*
  %47 = load i64, i64* %v_int6467, align 8
  br label %cond.end.68

cond.end.68:                                      ; preds = %cond.false.65, %cond.true.61
  %cond69 = phi i64 [ %sub64, %cond.true.61 ], [ %47, %cond.false.65 ]
  call void @g_value_set_long(%struct._GValue* %42, i64 %cond69)
  br label %sw.epilog.112

sw.bb.70:                                         ; preds = %if.end.16
  %48 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %49 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value71 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %49, i32 0, i32 7
  %v_int6472 = bitcast %union._GTokenValue* %value71 to i64*
  %50 = load i64, i64* %v_int6472, align 8
  call void @g_value_set_ulong(%struct._GValue* %48, i64 %50)
  br label %sw.epilog.112

sw.bb.73:                                         ; preds = %if.end.16
  %51 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %52 = load i32, i32* %negate, align 4
  %tobool74 = icmp ne i32 %52, 0
  br i1 %tobool74, label %cond.true.75, label %cond.false.79

cond.true.75:                                     ; preds = %sw.bb.73
  %53 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value76 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %53, i32 0, i32 7
  %v_int6477 = bitcast %union._GTokenValue* %value76 to i64*
  %54 = load i64, i64* %v_int6477, align 8
  %sub78 = sub i64 0, %54
  br label %cond.end.82

cond.false.79:                                    ; preds = %sw.bb.73
  %55 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value80 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %55, i32 0, i32 7
  %v_int6481 = bitcast %union._GTokenValue* %value80 to i64*
  %56 = load i64, i64* %v_int6481, align 8
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.false.79, %cond.true.75
  %cond83 = phi i64 [ %sub78, %cond.true.75 ], [ %56, %cond.false.79 ]
  call void @g_value_set_int64(%struct._GValue* %51, i64 %cond83)
  br label %sw.epilog.112

sw.bb.84:                                         ; preds = %if.end.16
  %57 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %58 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value85 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %58, i32 0, i32 7
  %v_int6486 = bitcast %union._GTokenValue* %value85 to i64*
  %59 = load i64, i64* %v_int6486, align 8
  call void @g_value_set_uint64(%struct._GValue* %57, i64 %59)
  br label %sw.epilog.112

sw.bb.87:                                         ; preds = %if.end.16
  %60 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %61 = load i32, i32* %negate, align 4
  %tobool88 = icmp ne i32 %61, 0
  br i1 %tobool88, label %cond.true.89, label %cond.false.92

cond.true.89:                                     ; preds = %sw.bb.87
  %62 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value90 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %62, i32 0, i32 7
  %v_float = bitcast %union._GTokenValue* %value90 to double*
  %63 = load double, double* %v_float, align 8
  %sub91 = fsub double -0.000000e+00, %63
  br label %cond.end.95

cond.false.92:                                    ; preds = %sw.bb.87
  %64 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value93 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %64, i32 0, i32 7
  %v_float94 = bitcast %union._GTokenValue* %value93 to double*
  %65 = load double, double* %v_float94, align 8
  br label %cond.end.95

cond.end.95:                                      ; preds = %cond.false.92, %cond.true.89
  %cond96 = phi double [ %sub91, %cond.true.89 ], [ %65, %cond.false.92 ]
  %conv97 = fptrunc double %cond96 to float
  call void @g_value_set_float(%struct._GValue* %60, float %conv97)
  br label %sw.epilog.112

sw.bb.98:                                         ; preds = %if.end.16
  %66 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %67 = load i32, i32* %negate, align 4
  %tobool99 = icmp ne i32 %67, 0
  br i1 %tobool99, label %cond.true.100, label %cond.false.104

cond.true.100:                                    ; preds = %sw.bb.98
  %68 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value101 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %68, i32 0, i32 7
  %v_float102 = bitcast %union._GTokenValue* %value101 to double*
  %69 = load double, double* %v_float102, align 8
  %sub103 = fsub double -0.000000e+00, %69
  br label %cond.end.107

cond.false.104:                                   ; preds = %sw.bb.98
  %70 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value105 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %70, i32 0, i32 7
  %v_float106 = bitcast %union._GTokenValue* %value105 to double*
  %71 = load double, double* %v_float106, align 8
  br label %cond.end.107

cond.end.107:                                     ; preds = %cond.false.104, %cond.true.100
  %cond108 = phi double [ %sub103, %cond.true.100 ], [ %71, %cond.false.104 ]
  call void @g_value_set_double(%struct._GValue* %66, double %cond108)
  br label %sw.epilog.112

sw.default.109:                                   ; preds = %if.end.16
  br label %do.body.110

do.body.110:                                      ; preds = %sw.default.109
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), i32 494, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_config_deserialize_fundamental, i32 0, i32 0), i8* null) #10
  unreachable

do.end.111:                                       ; No predecessors!
  br label %sw.epilog.112

sw.epilog.112:                                    ; preds = %do.end.111, %cond.end.107, %cond.end.95, %sw.bb.84, %cond.end.82, %sw.bb.70, %cond.end.68, %sw.bb.55, %cond.end, %if.end.49, %if.end.22
  store i32 41, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog.112, %if.else.43, %if.else, %if.then.15
  %72 = load i32, i32* %retval
  ret i32 %72
}

; Function Attrs: nounwind readnone
declare i64 @gimp_memsize_get_type() #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_config_deserialize_memsize(%struct._GValue* %value, %struct._GParamSpec* %prop_spec, %struct._GScanner* %scanner) #0 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %prop_spec.addr = alloca %struct._GParamSpec*, align 8
  %scanner.addr = alloca %struct._GScanner*, align 8
  %orig_cset_first = alloca i8*, align 8
  %orig_cset_nth = alloca i8*, align 8
  %memsize = alloca i64, align 8
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %prop_spec, %struct._GParamSpec** %prop_spec.addr, align 8
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  %0 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %config = getelementptr inbounds %struct._GScanner, %struct._GScanner* %0, i32 0, i32 5
  %1 = load %struct._GScannerConfig*, %struct._GScannerConfig** %config, align 8
  %cset_identifier_first = getelementptr inbounds %struct._GScannerConfig, %struct._GScannerConfig* %1, i32 0, i32 1
  %2 = load i8*, i8** %cset_identifier_first, align 8
  store i8* %2, i8** %orig_cset_first, align 8
  %3 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %config1 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %3, i32 0, i32 5
  %4 = load %struct._GScannerConfig*, %struct._GScannerConfig** %config1, align 8
  %cset_identifier_nth = getelementptr inbounds %struct._GScannerConfig, %struct._GScannerConfig* %4, i32 0, i32 2
  %5 = load i8*, i8** %cset_identifier_nth, align 8
  store i8* %5, i8** %orig_cset_nth, align 8
  %6 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %config2 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %6, i32 0, i32 5
  %7 = load %struct._GScannerConfig*, %struct._GScannerConfig** %config2, align 8
  %cset_identifier_first3 = getelementptr inbounds %struct._GScannerConfig, %struct._GScannerConfig* %7, i32 0, i32 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i8** %cset_identifier_first3, align 8
  %8 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %config4 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %8, i32 0, i32 5
  %9 = load %struct._GScannerConfig*, %struct._GScannerConfig** %config4, align 8
  %cset_identifier_nth5 = getelementptr inbounds %struct._GScannerConfig, %struct._GScannerConfig* %9, i32 0, i32 2
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0), i8** %cset_identifier_nth5, align 8
  %10 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call = call i32 @g_scanner_peek_next_token(%struct._GScanner* %10)
  %cmp = icmp ne i32 %call, 266
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 266, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %11 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call6 = call i32 @g_scanner_get_next_token(%struct._GScanner* %11)
  %12 = load i8*, i8** %orig_cset_first, align 8
  %13 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %config7 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %13, i32 0, i32 5
  %14 = load %struct._GScannerConfig*, %struct._GScannerConfig** %config7, align 8
  %cset_identifier_first8 = getelementptr inbounds %struct._GScannerConfig, %struct._GScannerConfig* %14, i32 0, i32 1
  store i8* %12, i8** %cset_identifier_first8, align 8
  %15 = load i8*, i8** %orig_cset_nth, align 8
  %16 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %config9 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %16, i32 0, i32 5
  %17 = load %struct._GScannerConfig*, %struct._GScannerConfig** %config9, align 8
  %cset_identifier_nth10 = getelementptr inbounds %struct._GScannerConfig, %struct._GScannerConfig* %17, i32 0, i32 2
  store i8* %15, i8** %cset_identifier_nth10, align 8
  %18 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value11 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %18, i32 0, i32 7
  %v_identifier = bitcast %union._GTokenValue* %value11 to i8**
  %19 = load i8*, i8** %v_identifier, align 8
  %call12 = call i32 @gimp_memsize_deserialize(i8* %19, i64* %memsize)
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end
  store i32 256, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end
  %20 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %21 = load i64, i64* %memsize, align 8
  call void @g_value_set_uint64(%struct._GValue* %20, i64 %21)
  store i32 41, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.13, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind readnone
declare i64 @gimp_config_path_get_type() #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_config_deserialize_path(%struct._GValue* %value, %struct._GParamSpec* %prop_spec, %struct._GScanner* %scanner) #0 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %prop_spec.addr = alloca %struct._GParamSpec*, align 8
  %scanner.addr = alloca %struct._GScanner*, align 8
  %error = alloca %struct._GError*, align 8
  %expand = alloca i8*, align 8
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %prop_spec, %struct._GParamSpec** %prop_spec.addr, align 8
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %0 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call = call i32 @g_scanner_peek_next_token(%struct._GScanner* %0)
  %cmp = icmp ne i32 %call, 264
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 264, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call1 = call i32 @g_scanner_get_next_token(%struct._GScanner* %1)
  %2 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %3 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %3, i32 0, i32 1
  %4 = load i8*, i8** %name, align 8
  %call2 = call i32 @scanner_string_utf8_valid(%struct._GScanner* %2, i8* %4)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store i32 256, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %5 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value5 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %5, i32 0, i32 7
  %v_string = bitcast %union._GTokenValue* %value5 to i8**
  %6 = load i8*, i8** %v_string, align 8
  %tobool6 = icmp ne i8* %6, null
  br i1 %tobool6, label %if.then.7, label %if.end.18

if.then.7:                                        ; preds = %if.end.4
  %7 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value8 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %7, i32 0, i32 7
  %v_string9 = bitcast %union._GTokenValue* %value8 to i8**
  %8 = load i8*, i8** %v_string9, align 8
  %call10 = call noalias i8* @gimp_config_path_expand(i8* %8, i32 1, %struct._GError** %error)
  store i8* %call10, i8** %expand, align 8
  %9 = load i8*, i8** %expand, align 8
  %tobool11 = icmp ne i8* %9, null
  br i1 %tobool11, label %if.end.15, label %if.then.12

if.then.12:                                       ; preds = %if.then.7
  %10 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call13 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0)) #4
  %11 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec.addr, align 8
  %name14 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %11, i32 0, i32 1
  %12 = load i8*, i8** %name14, align 8
  %13 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %13, i32 0, i32 2
  %14 = load i8*, i8** %message, align 8
  call void (%struct._GScanner*, i8*, ...) @g_scanner_error(%struct._GScanner* %10, i8* %call13, i8* %12, i8* %14)
  %15 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %15)
  store i32 256, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.7
  %16 = load i8*, i8** %expand, align 8
  call void @g_free(i8* %16)
  %17 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %18 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value16 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %18, i32 0, i32 7
  %v_string17 = bitcast %union._GTokenValue* %value16 to i8**
  %19 = load i8*, i8** %v_string17, align 8
  call void @g_value_set_static_string(%struct._GValue* %17, i8* %19)
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.15, %if.end.4
  store i32 41, i32* %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then.12, %if.then.3, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind readnone
declare i64 @gimp_rgb_get_type() #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_config_deserialize_rgb(%struct._GValue* %value, %struct._GParamSpec* %prop_spec, %struct._GScanner* %scanner) #0 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %prop_spec.addr = alloca %struct._GParamSpec*, align 8
  %scanner.addr = alloca %struct._GScanner*, align 8
  %rgb = alloca %struct._GimpRGB, align 8
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %prop_spec, %struct._GParamSpec** %prop_spec.addr, align 8
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  %0 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call = call i32 @gimp_scanner_parse_color(%struct._GScanner* %0, %struct._GimpRGB* %rgb)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 256, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %2 = bitcast %struct._GimpRGB* %rgb to i8*
  call void @g_value_set_boxed(%struct._GValue* %1, i8* %2)
  store i32 41, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind readnone
declare i64 @gimp_matrix2_get_type() #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_config_deserialize_matrix2(%struct._GValue* %value, %struct._GParamSpec* %prop_spec, %struct._GScanner* %scanner) #0 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %prop_spec.addr = alloca %struct._GParamSpec*, align 8
  %scanner.addr = alloca %struct._GScanner*, align 8
  %matrix = alloca %struct._GimpMatrix2, align 8
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %prop_spec, %struct._GParamSpec** %prop_spec.addr, align 8
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  %0 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call = call i32 @gimp_scanner_parse_matrix2(%struct._GScanner* %0, %struct._GimpMatrix2* %matrix)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 256, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %2 = bitcast %struct._GimpMatrix2* %matrix to i8*
  call void @g_value_set_boxed(%struct._GValue* %1, i8* %2)
  store i32 41, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind readnone
declare i64 @g_value_array_get_type() #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_config_deserialize_value_array(%struct._GValue* %value, %struct._GimpConfig* %config, %struct._GParamSpec* %prop_spec, %struct._GScanner* %scanner) #0 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %config.addr = alloca %struct._GimpConfig*, align 8
  %prop_spec.addr = alloca %struct._GParamSpec*, align 8
  %scanner.addr = alloca %struct._GScanner*, align 8
  %array_spec = alloca %struct._GParamSpecValueArray*, align 8
  %array = alloca %struct._GValueArray*, align 8
  %array_value = alloca %struct._GValue, align 8
  %n_values = alloca i32, align 4
  %token = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  store %struct._GParamSpec* %prop_spec, %struct._GParamSpec** %prop_spec.addr, align 8
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  %0 = bitcast %struct._GValue* %array_value to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 24, i32 8, i1 false)
  %1 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec.addr, align 8
  %2 = bitcast %struct._GParamSpec* %1 to %struct._GTypeInstance*
  %3 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 18
  %4 = load i64, i64* %arrayidx, align 8
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %4)
  %5 = bitcast %struct._GTypeInstance* %call to %struct._GParamSpecValueArray*
  store %struct._GParamSpecValueArray* %5, %struct._GParamSpecValueArray** %array_spec, align 8
  %6 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call1 = call i32 @gimp_scanner_parse_int(%struct._GScanner* %6, i32* %n_values)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 261, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %n_values, align 4
  %call2 = call %struct._GValueArray* @g_value_array_new(i32 %7)
  store %struct._GValueArray* %call2, %struct._GValueArray** %array, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %n_values, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct._GParamSpecValueArray*, %struct._GParamSpecValueArray** %array_spec, align 8
  %element_spec = getelementptr inbounds %struct._GParamSpecValueArray, %struct._GParamSpecValueArray* %10, i32 0, i32 1
  %11 = load %struct._GParamSpec*, %struct._GParamSpec** %element_spec, align 8
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %11, i32 0, i32 3
  %12 = load i64, i64* %value_type, align 8
  %call3 = call %struct._GValue* @g_value_init(%struct._GValue* %array_value, i64 %12)
  %13 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %14 = load %struct._GParamSpecValueArray*, %struct._GParamSpecValueArray** %array_spec, align 8
  %element_spec4 = getelementptr inbounds %struct._GParamSpecValueArray, %struct._GParamSpecValueArray* %14, i32 0, i32 1
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %element_spec4, align 8
  %16 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call5 = call i32 @gimp_config_deserialize_value(%struct._GValue* %array_value, %struct._GimpConfig* %13, %struct._GParamSpec* %15, %struct._GScanner* %16)
  store i32 %call5, i32* %token, align 4
  %17 = load i32, i32* %token, align 4
  %cmp6 = icmp eq i32 %17, 41
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %for.body
  %18 = load %struct._GValueArray*, %struct._GValueArray** %array, align 8
  %call8 = call %struct._GValueArray* @g_value_array_append(%struct._GValueArray* %18, %struct._GValue* %array_value)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %for.body
  call void @g_value_unset(%struct._GValue* %array_value)
  %19 = load i32, i32* %token, align 4
  %cmp10 = icmp ne i32 %19, 41
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.9
  %20 = load i32, i32* %token, align 4
  store i32 %20, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.9
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %23 = load %struct._GValueArray*, %struct._GValueArray** %array, align 8
  %24 = bitcast %struct._GValueArray* %23 to i8*
  call void @g_value_take_boxed(%struct._GValue* %22, i8* %24)
  store i32 41, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.11, %if.then
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind readnone
declare i64 @gimp_unit_get_type() #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_config_deserialize_unit(%struct._GValue* %value, %struct._GParamSpec* %prop_spec, %struct._GScanner* %scanner) #0 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %prop_spec.addr = alloca %struct._GParamSpec*, align 8
  %scanner.addr = alloca %struct._GScanner*, align 8
  %old_cset_skip_characters = alloca i8*, align 8
  %old_cset_identifier_first = alloca i8*, align 8
  %old_cset_identifier_nth = alloca i8*, align 8
  %buffer = alloca %struct._GString*, align 8
  %src = alloca %struct._GValue, align 8
  %token = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %prop_spec, %struct._GParamSpec** %prop_spec.addr, align 8
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  %0 = bitcast %struct._GValue* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ({ i64, <{ { i32, [4 x i8] }, %union.anon }> }* @gimp_config_deserialize_unit.src to i8*), i64 24, i32 8, i1 false)
  %1 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call = call i32 @g_scanner_peek_next_token(%struct._GScanner* %1)
  store i32 %call, i32* %token, align 4
  %2 = load i32, i32* %token, align 4
  %cmp = icmp eq i32 %2, 264
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %4 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec.addr, align 8
  %5 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call1 = call i32 @gimp_config_deserialize_any(%struct._GValue* %3, %struct._GParamSpec* %4, %struct._GScanner* %5)
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %config = getelementptr inbounds %struct._GScanner, %struct._GScanner* %6, i32 0, i32 5
  %7 = load %struct._GScannerConfig*, %struct._GScannerConfig** %config, align 8
  %cset_skip_characters = getelementptr inbounds %struct._GScannerConfig, %struct._GScannerConfig* %7, i32 0, i32 0
  %8 = load i8*, i8** %cset_skip_characters, align 8
  store i8* %8, i8** %old_cset_skip_characters, align 8
  %9 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %config2 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %9, i32 0, i32 5
  %10 = load %struct._GScannerConfig*, %struct._GScannerConfig** %config2, align 8
  %cset_identifier_first = getelementptr inbounds %struct._GScannerConfig, %struct._GScannerConfig* %10, i32 0, i32 1
  %11 = load i8*, i8** %cset_identifier_first, align 8
  store i8* %11, i8** %old_cset_identifier_first, align 8
  %12 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %config3 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %12, i32 0, i32 5
  %13 = load %struct._GScannerConfig*, %struct._GScannerConfig** %config3, align 8
  %cset_identifier_nth = getelementptr inbounds %struct._GScannerConfig, %struct._GScannerConfig* %13, i32 0, i32 2
  %14 = load i8*, i8** %cset_identifier_nth, align 8
  store i8* %14, i8** %old_cset_identifier_nth, align 8
  %15 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %config4 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %15, i32 0, i32 5
  %16 = load %struct._GScannerConfig*, %struct._GScannerConfig** %config4, align 8
  %cset_skip_characters5 = getelementptr inbounds %struct._GScannerConfig, %struct._GScannerConfig* %16, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0), i8** %cset_skip_characters5, align 8
  %17 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %config6 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %17, i32 0, i32 5
  %18 = load %struct._GScannerConfig*, %struct._GScannerConfig** %config6, align 8
  %cset_identifier_first7 = getelementptr inbounds %struct._GScannerConfig, %struct._GScannerConfig* %18, i32 0, i32 1
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.16, i32 0, i32 0), i8** %cset_identifier_first7, align 8
  %19 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %config8 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %19, i32 0, i32 5
  %20 = load %struct._GScannerConfig*, %struct._GScannerConfig** %config8, align 8
  %cset_identifier_nth9 = getelementptr inbounds %struct._GScannerConfig, %struct._GScannerConfig* %20, i32 0, i32 2
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.17, i32 0, i32 0), i8** %cset_identifier_nth9, align 8
  %call10 = call %struct._GString* @g_string_new(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0))
  store %struct._GString* %call10, %struct._GString** %buffer, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.32, %if.end
  %21 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call11 = call i32 @g_scanner_peek_next_token(%struct._GScanner* %21)
  %cmp12 = icmp ne i32 %call11, 41
  br i1 %cmp12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %22 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call13 = call i32 @g_scanner_peek_next_token(%struct._GScanner* %22)
  store i32 %call13, i32* %token, align 4
  %23 = load i32, i32* %token, align 4
  %cmp14 = icmp eq i32 %23, 266
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %while.body
  %24 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call16 = call i32 @g_scanner_get_next_token(%struct._GScanner* %24)
  %25 = load %struct._GString*, %struct._GString** %buffer, align 8
  %26 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value17 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %26, i32 0, i32 7
  %v_identifier = bitcast %union._GTokenValue* %value17 to i8**
  %27 = load i8*, i8** %v_identifier, align 8
  %call18 = call %struct._GString* @g_string_append(%struct._GString* %25, i8* %27)
  br label %if.end.32

if.else:                                          ; preds = %while.body
  %28 = load i32, i32* %token, align 4
  %cmp19 = icmp eq i32 %28, 258
  br i1 %cmp19, label %if.then.20, label %if.else.24

if.then.20:                                       ; preds = %if.else
  %29 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call21 = call i32 @g_scanner_get_next_token(%struct._GScanner* %29)
  %30 = load %struct._GString*, %struct._GString** %buffer, align 8
  %31 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value22 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %31, i32 0, i32 7
  %v_char = bitcast %union._GTokenValue* %value22 to i8*
  %32 = load i8, i8* %v_char, align 1
  %call23 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %30, i8 signext %32)
  br label %if.end.31

if.else.24:                                       ; preds = %if.else
  %33 = load i32, i32* %token, align 4
  %cmp25 = icmp eq i32 %33, 32
  br i1 %cmp25, label %if.then.26, label %if.else.29

if.then.26:                                       ; preds = %if.else.24
  %34 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call27 = call i32 @g_scanner_get_next_token(%struct._GScanner* %34)
  %35 = load %struct._GString*, %struct._GString** %buffer, align 8
  %36 = load i32, i32* %token, align 4
  %conv = trunc i32 %36 to i8
  %call28 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %35, i8 signext %conv)
  br label %if.end.30

if.else.29:                                       ; preds = %if.else.24
  store i32 266, i32* %token, align 4
  br label %cleanup

if.end.30:                                        ; preds = %if.then.26
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.20
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.15
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call33 = call %struct._GValue* @g_value_init(%struct._GValue* %src, i64 64)
  %37 = load %struct._GString*, %struct._GString** %buffer, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %37, i32 0, i32 0
  %38 = load i8*, i8** %str, align 8
  call void @g_value_set_static_string(%struct._GValue* %src, i8* %38)
  %39 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call34 = call i32 @g_value_transform(%struct._GValue* %src, %struct._GValue* %39)
  call void @g_value_unset(%struct._GValue* %src)
  store i32 41, i32* %token, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.else.29
  %40 = load %struct._GString*, %struct._GString** %buffer, align 8
  %call35 = call i8* @g_string_free(%struct._GString* %40, i32 1)
  %41 = load i8*, i8** %old_cset_skip_characters, align 8
  %42 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %config36 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %42, i32 0, i32 5
  %43 = load %struct._GScannerConfig*, %struct._GScannerConfig** %config36, align 8
  %cset_skip_characters37 = getelementptr inbounds %struct._GScannerConfig, %struct._GScannerConfig* %43, i32 0, i32 0
  store i8* %41, i8** %cset_skip_characters37, align 8
  %44 = load i8*, i8** %old_cset_identifier_first, align 8
  %45 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %config38 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %45, i32 0, i32 5
  %46 = load %struct._GScannerConfig*, %struct._GScannerConfig** %config38, align 8
  %cset_identifier_first39 = getelementptr inbounds %struct._GScannerConfig, %struct._GScannerConfig* %46, i32 0, i32 1
  store i8* %44, i8** %cset_identifier_first39, align 8
  %47 = load i8*, i8** %old_cset_identifier_nth, align 8
  %48 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %config40 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %48, i32 0, i32 5
  %49 = load %struct._GScannerConfig*, %struct._GScannerConfig** %config40, align 8
  %cset_identifier_nth41 = getelementptr inbounds %struct._GScannerConfig, %struct._GScannerConfig* %49, i32 0, i32 2
  store i8* %47, i8** %cset_identifier_nth41, align 8
  %50 = load i32, i32* %token, align 4
  store i32 %50, i32* %retval
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %51 = load i32, i32* %retval
  ret i32 %51
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_config_deserialize_any(%struct._GValue* %value, %struct._GParamSpec* %prop_spec, %struct._GScanner* %scanner) #0 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %prop_spec.addr = alloca %struct._GParamSpec*, align 8
  %scanner.addr = alloca %struct._GScanner*, align 8
  %src = alloca %struct._GValue, align 8
  %token = alloca i32, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %prop_spec, %struct._GParamSpec** %prop_spec.addr, align 8
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  %0 = bitcast %struct._GValue* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ({ i64, <{ { i32, [4 x i8] }, %union.anon }> }* @gimp_config_deserialize_any.src to i8*), i64 24, i32 8, i1 false)
  %1 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec.addr, align 8
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %1, i32 0, i32 3
  %2 = load i64, i64* %value_type, align 8
  %call = call i32 @g_value_type_transformable(i64 64, i64 %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec.addr, align 8
  %value_type1 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %3, i32 0, i32 3
  %4 = load i64, i64* %value_type1, align 8
  %call2 = call i8* @g_type_name(i64 %4)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_config_deserialize_any, i32 0, i32 0), i8* %call2)
  store i32 256, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call3 = call i32 @g_scanner_peek_next_token(%struct._GScanner* %5)
  store i32 %call3, i32* %token, align 4
  %6 = load i32, i32* %token, align 4
  %cmp = icmp ne i32 %6, 266
  br i1 %cmp, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %if.end
  %7 = load i32, i32* %token, align 4
  %cmp4 = icmp ne i32 %7, 264
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %land.lhs.true
  store i32 266, i32* %retval
  br label %return

if.end.6:                                         ; preds = %land.lhs.true, %if.end
  %8 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call7 = call i32 @g_scanner_get_next_token(%struct._GScanner* %8)
  %call8 = call %struct._GValue* @g_value_init(%struct._GValue* %src, i64 64)
  %9 = load i32, i32* %token, align 4
  %cmp9 = icmp eq i32 %9, 266
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.6
  %10 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value11 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %10, i32 0, i32 7
  %v_identifier = bitcast %union._GTokenValue* %value11 to i8**
  %11 = load i8*, i8** %v_identifier, align 8
  call void @g_value_set_static_string(%struct._GValue* %src, i8* %11)
  br label %if.end.13

if.else:                                          ; preds = %if.end.6
  %12 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value12 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %12, i32 0, i32 7
  %v_string = bitcast %union._GTokenValue* %value12 to i8**
  %13 = load i8*, i8** %v_string, align 8
  call void @g_value_set_static_string(%struct._GValue* %src, i8* %13)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.10
  %14 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call14 = call i32 @g_value_transform(%struct._GValue* %src, %struct._GValue* %14)
  call void @g_value_unset(%struct._GValue* %src)
  store i32 41, i32* %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.5, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare %struct._GEnumValue* @g_enum_get_value_by_nick(%struct._GEnumClass*, i8*) #3

declare %struct._GEnumValue* @g_enum_get_value_by_name(%struct._GEnumClass*, i8*) #3

declare void @g_scanner_error(%struct._GScanner*, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #5

declare %struct._GEnumValue* @g_enum_get_value(%struct._GEnumClass*, i32) #3

declare void @g_value_set_enum(%struct._GValue*, i32) #3

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #6

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @scanner_string_utf8_valid(%struct._GScanner* %scanner, i8* %token_name) #7 {
entry:
  %retval = alloca i32, align 4
  %scanner.addr = alloca %struct._GScanner*, align 8
  %token_name.addr = alloca i8*, align 8
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  store i8* %token_name, i8** %token_name.addr, align 8
  %0 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value = getelementptr inbounds %struct._GScanner, %struct._GScanner* %0, i32 0, i32 7
  %v_string = bitcast %union._GTokenValue* %value to i8**
  %1 = load i8*, i8** %v_string, align 8
  %call = call i32 @g_utf8_validate(i8* %1, i64 -1, i8** null)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call1 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i32 0, i32 0)) #4
  %3 = load i8*, i8** %token_name.addr, align 8
  call void (%struct._GScanner*, i8*, ...) @g_scanner_error(%struct._GScanner* %2, i8* %call1, i8* %3)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

declare void @g_value_set_static_string(%struct._GValue*, i8*) #3

declare i32 @g_ascii_strcasecmp(i8*, i8*) #3

declare void @g_value_set_boolean(%struct._GValue*, i32) #3

declare void @g_value_set_int(%struct._GValue*, i32) #3

declare void @g_value_set_uint(%struct._GValue*, i32) #3

declare void @g_value_set_long(%struct._GValue*, i64) #3

declare void @g_value_set_ulong(%struct._GValue*, i64) #3

declare void @g_value_set_int64(%struct._GValue*, i64) #3

declare void @g_value_set_uint64(%struct._GValue*, i64) #3

declare void @g_value_set_float(%struct._GValue*, float) #3

declare void @g_value_set_double(%struct._GValue*, double) #3

declare i32 @g_utf8_validate(i8*, i64, i8**) #3

declare i32 @gimp_memsize_deserialize(i8*, i64*) #3

declare noalias i8* @gimp_config_path_expand(i8*, i32, %struct._GError**) #3

declare void @g_error_free(%struct._GError*) #3

declare i32 @gimp_scanner_parse_color(%struct._GScanner*, %struct._GimpRGB*) #3

declare void @g_value_set_boxed(%struct._GValue*, i8*) #3

declare i32 @gimp_scanner_parse_matrix2(%struct._GScanner*, %struct._GimpMatrix2*) #3

declare i32 @gimp_scanner_parse_int(%struct._GScanner*, i32*) #3

declare %struct._GValueArray* @g_value_array_new(i32) #3

declare %struct._GValueArray* @g_value_array_append(%struct._GValueArray*, %struct._GValue*) #3

declare void @g_value_take_boxed(%struct._GValue*, i8*) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare %struct._GString* @g_string_new(i8*) #3

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._GString* @g_string_append_c_inline(%struct._GString* %gstring, i8 signext %c) #7 {
entry:
  %gstring.addr = alloca %struct._GString*, align 8
  %c.addr = alloca i8, align 1
  store %struct._GString* %gstring, %struct._GString** %gstring.addr, align 8
  store i8 %c, i8* %c.addr, align 1
  %0 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %len = getelementptr inbounds %struct._GString, %struct._GString* %0, i32 0, i32 1
  %1 = load i64, i64* %len, align 8
  %add = add i64 %1, 1
  %2 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %allocated_len = getelementptr inbounds %struct._GString, %struct._GString* %2, i32 0, i32 2
  %3 = load i64, i64* %allocated_len, align 8
  %cmp = icmp ult i64 %add, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i8, i8* %c.addr, align 1
  %5 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %len1 = getelementptr inbounds %struct._GString, %struct._GString* %5, i32 0, i32 1
  %6 = load i64, i64* %len1, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %len1, align 8
  %7 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %7, i32 0, i32 0
  %8 = load i8*, i8** %str, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %6
  store i8 %4, i8* %arrayidx, align 1
  %9 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %len2 = getelementptr inbounds %struct._GString, %struct._GString* %9, i32 0, i32 1
  %10 = load i64, i64* %len2, align 8
  %11 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %str3 = getelementptr inbounds %struct._GString, %struct._GString* %11, i32 0, i32 0
  %12 = load i8*, i8** %str3, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %12, i64 %10
  store i8 0, i8* %arrayidx4, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %14 = load i8, i8* %c.addr, align 1
  %call = call %struct._GString* @g_string_insert_c(%struct._GString* %13, i64 -1, i8 signext %14)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  ret %struct._GString* %15
}

declare i32 @g_value_transform(%struct._GValue*, %struct._GValue*) #3

declare i8* @g_string_free(%struct._GString*, i32) #3

declare %struct._GString* @g_string_insert_c(%struct._GString*, i64, i8 signext) #3

declare i32 @g_value_type_transformable(i64, i64) #3

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

declare void @g_object_get_property(%struct._GObject*, i8*, %struct._GValue*) #3

declare i8* @g_value_get_object(%struct._GValue*) #3

declare i32 @gimp_scanner_parse_string(%struct._GScanner*, i8**) #3

declare i64 @g_type_from_name(i8*) #3

declare i32 @g_type_is_a(i64, i64) #3

declare i8* @g_object_new(i64, i8*, ...) #3

declare void @g_value_take_object(%struct._GValue*, i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
