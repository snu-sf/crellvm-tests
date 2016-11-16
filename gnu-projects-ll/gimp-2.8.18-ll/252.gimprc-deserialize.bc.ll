; ModuleID = './app/config/gimprc-deserialize.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%union.anon = type { i64 }

@.str = private unnamed_addr constant [12 x i8] c"Gimp-Config\00", align 1
@__func__.gimp_rc_deserialize = private unnamed_addr constant [20 x i8] c"gimp_rc_deserialize\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"GIMP_IS_CONFIG (config)\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"fatal parse error\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"value for token %s is not a valid UTF-8 string\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_rc_deserialize(%struct._GimpConfig* %config, %struct._GScanner* %scanner, i32 %nest_level, i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %config.addr = alloca %struct._GimpConfig*, align 8
  %scanner.addr = alloca %struct._GScanner*, align 8
  %nest_level.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
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
  store i8* %data, i8** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_config_interface_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_rc_deserialize, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0))
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
  %51 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %52 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call36 = call i32 @gimp_rc_deserialize_unknown(%struct._GimpConfig* %51, %struct._GScanner* %52)
  store i32 %call36, i32* %token, align 4
  br label %sw.epilog

sw.bb.37:                                         ; preds = %if.end.33
  %53 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %54 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %55 = load i32, i32* %nest_level.addr, align 4
  %call38 = call i32 @gimp_config_deserialize_property(%struct._GimpConfig* %53, %struct._GScanner* %54, i32 %55)
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
  %56 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %57 = load i32, i32* %old_scope_id, align 4
  %call40 = call i32 @g_scanner_set_scope(%struct._GScanner* %56, i32 %57)
  %58 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %59 = bitcast %struct._GimpConfig* %58 to %struct._GTypeInstance*
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 80)
  %60 = bitcast %struct._GTypeInstance* %call41 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %60)
  %61 = load i32, i32* %token, align 4
  %cmp42 = icmp eq i32 %61, 256
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %while.end
  store i32 0, i32* %retval
  br label %return

if.end.44:                                        ; preds = %while.end
  %62 = load i32, i32* %token, align 4
  %cmp45 = icmp eq i32 %62, 264
  br i1 %cmp45, label %land.lhs.true.46, label %if.end.50

land.lhs.true.46:                                 ; preds = %if.end.44
  %63 = load i32, i32* %next, align 4
  %cmp47 = icmp eq i32 %63, 266
  br i1 %cmp47, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %land.lhs.true.46
  %64 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call49 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0)) #7
  call void @g_scanner_unexp_token(%struct._GScanner* %64, i32 265, i8* null, i8* null, i8* null, i8* %call49, i32 1)
  store i32 0, i32* %retval
  br label %return

if.end.50:                                        ; preds = %land.lhs.true.46, %if.end.44
  %65 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %66 = load i32, i32* %token, align 4
  %67 = load i32, i32* %nest_level.addr, align 4
  %call51 = call i32 @gimp_config_deserialize_return(%struct._GScanner* %65, i32 %66, i32 %67)
  store i32 %call51, i32* %retval
  br label %return

return:                                           ; preds = %if.end.50, %if.then.48, %if.then.43, %if.then.14, %if.else.9
  %68 = load i32, i32* %retval
  ret i32 %68
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
define internal i32 @gimp_rc_deserialize_unknown(%struct._GimpConfig* %config, %struct._GScanner* %scanner) #0 {
entry:
  %retval = alloca i32, align 4
  %config.addr = alloca %struct._GimpConfig*, align 8
  %scanner.addr = alloca %struct._GScanner*, align 8
  %key = alloca i8*, align 8
  %old_scope_id = alloca i32, align 4
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  %0 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call = call i32 @g_scanner_set_scope(%struct._GScanner* %0, i32 0)
  store i32 %call, i32* %old_scope_id, align 4
  %1 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call1 = call i32 @g_scanner_peek_next_token(%struct._GScanner* %1)
  %cmp = icmp ne i32 %call1, 264
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 264, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value = getelementptr inbounds %struct._GScanner, %struct._GScanner* %2, i32 0, i32 7
  %v_identifier = bitcast %union._GTokenValue* %value to i8**
  %3 = load i8*, i8** %v_identifier, align 8
  %call2 = call noalias i8* @g_strdup(i8* %3)
  store i8* %call2, i8** %key, align 8
  %4 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call3 = call i32 @g_scanner_get_next_token(%struct._GScanner* %4)
  %5 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %6 = load i32, i32* %old_scope_id, align 4
  %call4 = call i32 @g_scanner_set_scope(%struct._GScanner* %5, i32 %6)
  %7 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value5 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %7, i32 0, i32 7
  %v_string = bitcast %union._GTokenValue* %value5 to i8**
  %8 = load i8*, i8** %v_string, align 8
  %call6 = call i32 @g_utf8_validate(i8* %8, i64 -1, i8** null)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.end.9, label %if.then.7

if.then.7:                                        ; preds = %if.end
  %9 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i32 0, i32 0)) #7
  %10 = load i8*, i8** %key, align 8
  call void (%struct._GScanner*, i8*, ...) @g_scanner_error(%struct._GScanner* %9, i8* %call8, i8* %10)
  %11 = load i8*, i8** %key, align 8
  call void @g_free(i8* %11)
  store i32 256, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %12 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %13 = load i8*, i8** %key, align 8
  %14 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value10 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %14, i32 0, i32 7
  %v_string11 = bitcast %union._GTokenValue* %value10 to i8**
  %15 = load i8*, i8** %v_string11, align 8
  call void @gimp_rc_add_unknown_token(%struct._GimpConfig* %12, i8* %13, i8* %15)
  %16 = load i8*, i8** %key, align 8
  call void @g_free(i8* %16)
  store i32 41, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.7, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare i32 @gimp_config_deserialize_property(%struct._GimpConfig*, %struct._GScanner*, i32) #3

declare void @g_object_thaw_notify(%struct._GObject*) #3

declare void @g_scanner_unexp_token(%struct._GScanner*, i32, i8*, i8*, i8*, i8*, i32) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i32 @gimp_config_deserialize_return(%struct._GScanner*, i32, i32) #3

declare noalias i8* @g_strdup(i8*) #3

declare i32 @g_utf8_validate(i8*, i64, i8**) #3

declare void @g_scanner_error(%struct._GScanner*, i8*, ...) #3

declare void @gimp_rc_add_unknown_token(%struct._GimpConfig*, i8*, i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
