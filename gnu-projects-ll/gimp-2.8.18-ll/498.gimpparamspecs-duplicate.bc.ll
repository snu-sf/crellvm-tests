; ModuleID = './app/core/gimpparamspecs-duplicate.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GParamSpecString = type { %struct._GParamSpec, i8*, i8*, i8*, i8, i8 }
%struct._GParamSpecBoolean = type { %struct._GParamSpec, i32 }
%struct._GParamSpecEnum = type { %struct._GParamSpec, %struct._GEnumClass*, i32 }
%struct._GEnumClass = type { %struct._GTypeClass, i32, i32, i32, %struct._GEnumValue* }
%struct._GEnumValue = type { i32, i8*, i8* }
%struct._GParamSpecDouble = type { %struct._GParamSpec, double, double, double, double }
%struct._GParamSpecFloat = type { %struct._GParamSpec, float, float, float, float }
%struct._GParamSpecInt = type { %struct._GParamSpec, i32, i32, i32 }
%struct._GParamSpecUInt = type { %struct._GParamSpec, i32, i32, i32 }
%struct._GeglColor = type { %struct._GObject, %struct._GeglColorPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GeglColorPrivate = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_param_spec_duplicate = private unnamed_addr constant [26 x i8] c"gimp_param_spec_duplicate\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"pspec != NULL\00", align 1
@g_param_spec_types = external global i64*, align 8
@gimp_param_spec_duplicate.multiline_quark = internal global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"multiline\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"%s: not supported: %s (%s)\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GParamSpec* @gimp_param_spec_duplicate(%struct._GParamSpec* %pspec) #0 {
entry:
  %retval = alloca %struct._GParamSpec*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %spec = alloca %struct._GParamSpecString*, align 8
  %__inst16 = alloca %struct._GTypeInstance*, align 8
  %__t18 = alloca i64, align 8
  %__r21 = alloca i32, align 4
  %tmp36 = alloca i32, align 4
  %new = alloca %struct._GParamSpec*, align 8
  %__inst55 = alloca %struct._GTypeInstance*, align 8
  %__t57 = alloca i64, align 8
  %__r60 = alloca i32, align 4
  %tmp75 = alloca i32, align 4
  %__inst81 = alloca %struct._GTypeInstance*, align 8
  %__t83 = alloca i64, align 8
  %__r86 = alloca i32, align 4
  %tmp101 = alloca i32, align 4
  %spec105 = alloca %struct._GParamSpecBoolean*, align 8
  %__inst116 = alloca %struct._GTypeInstance*, align 8
  %__t118 = alloca i64, align 8
  %__r121 = alloca i32, align 4
  %tmp136 = alloca i32, align 4
  %spec140 = alloca %struct._GParamSpecEnum*, align 8
  %__inst152 = alloca %struct._GTypeInstance*, align 8
  %__t154 = alloca i64, align 8
  %__r157 = alloca i32, align 4
  %tmp172 = alloca i32, align 4
  %spec176 = alloca %struct._GParamSpecDouble*, align 8
  %__inst187 = alloca %struct._GTypeInstance*, align 8
  %__t189 = alloca i64, align 8
  %__r192 = alloca i32, align 4
  %tmp207 = alloca i32, align 4
  %spec211 = alloca %struct._GParamSpecFloat*, align 8
  %__inst224 = alloca %struct._GTypeInstance*, align 8
  %__t226 = alloca i64, align 8
  %__r229 = alloca i32, align 4
  %tmp244 = alloca i32, align 4
  %spec248 = alloca %struct._GParamSpecInt*, align 8
  %__inst261 = alloca %struct._GTypeInstance*, align 8
  %__t263 = alloca i64, align 8
  %__r266 = alloca i32, align 4
  %tmp281 = alloca i32, align 4
  %spec285 = alloca %struct._GParamSpecUInt*, align 8
  %__inst298 = alloca %struct._GTypeInstance*, align 8
  %__t300 = alloca i64, align 8
  %__r303 = alloca i32, align 4
  %tmp318 = alloca i32, align 4
  %gegl_color = alloca %struct._GeglColor*, align 8
  %gimp_color = alloca %struct._GimpRGB, align 8
  %r = alloca double, align 8
  %g = alloca double, align 8
  %b = alloca double, align 8
  %a = alloca double, align 8
  %value = alloca %struct._GValue, align 8
  %__inst341 = alloca %struct._GTypeInstance*, align 8
  %__t343 = alloca i64, align 8
  %__r346 = alloca i32, align 4
  %tmp361 = alloca i32, align 4
  %__inst364 = alloca %struct._GTypeInstance*, align 8
  %__t366 = alloca i64, align 8
  %__r369 = alloca i32, align 4
  %tmp384 = alloca i32, align 4
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %cmp = icmp ne %struct._GParamSpec* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_param_spec_duplicate, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GParamSpec* null, %struct._GParamSpec** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %2 = bitcast %struct._GParamSpec* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %3 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 14
  %4 = load i64, i64* %arrayidx, align 8
  store i64 %4, i64* %__t, align 8
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %5, null
  br i1 %tobool, label %if.else.2, label %if.then.1

if.then.1:                                        ; preds = %do.end
  store i32 0, i32* %__r, align 4
  br label %if.end.9

if.else.2:                                        ; preds = %do.end
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool3 = icmp ne %struct._GTypeClass* %7, null
  br i1 %tobool3, label %land.lhs.true, label %if.else.7

land.lhs.true:                                    ; preds = %if.else.2
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %9, i32 0, i32 0
  %10 = load i64, i64* %g_type, align 8
  %11 = load i64, i64* %__t, align 8
  %cmp5 = icmp eq i64 %10, %11
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.8

if.else.7:                                        ; preds = %land.lhs.true, %if.else.2
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %13 = load i64, i64* %__t, align 8
  %call = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %12, i64 %13) #5
  store i32 %call, i32* %__r, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.else.7, %if.then.6
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.then.1
  %14 = load i32, i32* %__r, align 4
  store i32 %14, i32* %tmp
  %15 = load i32, i32* %tmp
  %tobool10 = icmp ne i32 %15, 0
  br i1 %tobool10, label %if.then.11, label %if.else.79

if.then.11:                                       ; preds = %if.end.9
  %16 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %17 = bitcast %struct._GParamSpec* %16 to %struct._GTypeInstance*
  %18 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx13 = getelementptr inbounds i64, i64* %18, i64 14
  %19 = load i64, i64* %arrayidx13, align 8
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %19)
  %20 = bitcast %struct._GTypeInstance* %call14 to %struct._GParamSpecString*
  store %struct._GParamSpecString* %20, %struct._GParamSpecString** %spec, align 8
  %21 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %22 = bitcast %struct._GParamSpec* %21 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %22, %struct._GTypeInstance** %__inst16, align 8
  %call19 = call i64 @gegl_param_file_path_get_type() #6
  store i64 %call19, i64* %__t18, align 8
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %tobool22 = icmp ne %struct._GTypeInstance* %23, null
  br i1 %tobool22, label %if.else.24, label %if.then.23

if.then.23:                                       ; preds = %if.then.11
  store i32 0, i32* %__r21, align 4
  br label %if.end.35

if.else.24:                                       ; preds = %if.then.11
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %24, i32 0, i32 0
  %25 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %tobool26 = icmp ne %struct._GTypeClass* %25, null
  br i1 %tobool26, label %land.lhs.true.27, label %if.else.32

land.lhs.true.27:                                 ; preds = %if.else.24
  %26 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %g_class28 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %26, i32 0, i32 0
  %27 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class28, align 8
  %g_type29 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %27, i32 0, i32 0
  %28 = load i64, i64* %g_type29, align 8
  %29 = load i64, i64* %__t18, align 8
  %cmp30 = icmp eq i64 %28, %29
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %land.lhs.true.27
  store i32 1, i32* %__r21, align 4
  br label %if.end.34

if.else.32:                                       ; preds = %land.lhs.true.27, %if.else.24
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %31 = load i64, i64* %__t18, align 8
  %call33 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %30, i64 %31) #5
  store i32 %call33, i32* %__r21, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.32, %if.then.31
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.23
  %32 = load i32, i32* %__r21, align 4
  store i32 %32, i32* %tmp36
  %33 = load i32, i32* %tmp36
  %tobool37 = icmp ne i32 %33, 0
  br i1 %tobool37, label %if.then.38, label %if.else.42

if.then.38:                                       ; preds = %if.end.35
  %34 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %34, i32 0, i32 1
  %35 = load i8*, i8** %name, align 8
  %36 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %call39 = call i8* @g_param_spec_get_nick(%struct._GParamSpec* %36)
  %37 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %call40 = call i8* @g_param_spec_get_blurb(%struct._GParamSpec* %37)
  %38 = load %struct._GParamSpecString*, %struct._GParamSpecString** %spec, align 8
  %default_value = getelementptr inbounds %struct._GParamSpecString, %struct._GParamSpecString* %38, i32 0, i32 1
  %39 = load i8*, i8** %default_value, align 8
  %40 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %flags = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %40, i32 0, i32 2
  %41 = load i32, i32* %flags, align 4
  %call41 = call %struct._GParamSpec* @gimp_param_spec_config_path(i8* %35, i8* %call39, i8* %call40, i32 0, i8* %39, i32 %41)
  store %struct._GParamSpec* %call41, %struct._GParamSpec** %retval
  br label %return

if.else.42:                                       ; preds = %if.end.35
  %42 = load i32, i32* @gimp_param_spec_duplicate.multiline_quark, align 4
  %tobool44 = icmp ne i32 %42, 0
  br i1 %tobool44, label %if.end.47, label %if.then.45

if.then.45:                                       ; preds = %if.else.42
  %call46 = call i32 @g_quark_from_static_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0))
  store i32 %call46, i32* @gimp_param_spec_duplicate.multiline_quark, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %if.else.42
  %43 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name48 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %43, i32 0, i32 1
  %44 = load i8*, i8** %name48, align 8
  %45 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %call49 = call i8* @g_param_spec_get_nick(%struct._GParamSpec* %45)
  %46 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %call50 = call i8* @g_param_spec_get_blurb(%struct._GParamSpec* %46)
  %47 = load %struct._GParamSpecString*, %struct._GParamSpecString** %spec, align 8
  %default_value51 = getelementptr inbounds %struct._GParamSpecString, %struct._GParamSpecString* %47, i32 0, i32 1
  %48 = load i8*, i8** %default_value51, align 8
  %49 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %flags52 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %49, i32 0, i32 2
  %50 = load i32, i32* %flags52, align 4
  %call53 = call %struct._GParamSpec* @g_param_spec_string(i8* %44, i8* %call49, i8* %call50, i8* %48, i32 %50)
  store %struct._GParamSpec* %call53, %struct._GParamSpec** %new, align 8
  %51 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %52 = bitcast %struct._GParamSpec* %51 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %52, %struct._GTypeInstance** %__inst55, align 8
  %call58 = call i64 @gegl_param_multiline_get_type() #6
  store i64 %call58, i64* %__t57, align 8
  %53 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst55, align 8
  %tobool61 = icmp ne %struct._GTypeInstance* %53, null
  br i1 %tobool61, label %if.else.63, label %if.then.62

if.then.62:                                       ; preds = %if.end.47
  store i32 0, i32* %__r60, align 4
  br label %if.end.74

if.else.63:                                       ; preds = %if.end.47
  %54 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst55, align 8
  %g_class64 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %54, i32 0, i32 0
  %55 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class64, align 8
  %tobool65 = icmp ne %struct._GTypeClass* %55, null
  br i1 %tobool65, label %land.lhs.true.66, label %if.else.71

land.lhs.true.66:                                 ; preds = %if.else.63
  %56 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst55, align 8
  %g_class67 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %56, i32 0, i32 0
  %57 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class67, align 8
  %g_type68 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %57, i32 0, i32 0
  %58 = load i64, i64* %g_type68, align 8
  %59 = load i64, i64* %__t57, align 8
  %cmp69 = icmp eq i64 %58, %59
  br i1 %cmp69, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %land.lhs.true.66
  store i32 1, i32* %__r60, align 4
  br label %if.end.73

if.else.71:                                       ; preds = %land.lhs.true.66, %if.else.63
  %60 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst55, align 8
  %61 = load i64, i64* %__t57, align 8
  %call72 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %60, i64 %61) #5
  store i32 %call72, i32* %__r60, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.71, %if.then.70
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.then.62
  %62 = load i32, i32* %__r60, align 4
  store i32 %62, i32* %tmp75
  %63 = load i32, i32* %tmp75
  %tobool76 = icmp ne i32 %63, 0
  br i1 %tobool76, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.end.74
  %64 = load %struct._GParamSpec*, %struct._GParamSpec** %new, align 8
  %65 = load i32, i32* @gimp_param_spec_duplicate.multiline_quark, align 4
  call void @g_param_spec_set_qdata(%struct._GParamSpec* %64, i32 %65, i8* inttoptr (i64 1 to i8*))
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.77, %if.end.74
  %66 = load %struct._GParamSpec*, %struct._GParamSpec** %new, align 8
  store %struct._GParamSpec* %66, %struct._GParamSpec** %retval
  br label %return

if.else.79:                                       ; preds = %if.end.9
  %67 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %68 = bitcast %struct._GParamSpec* %67 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %68, %struct._GTypeInstance** %__inst81, align 8
  %69 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx84 = getelementptr inbounds i64, i64* %69, i64 2
  %70 = load i64, i64* %arrayidx84, align 8
  store i64 %70, i64* %__t83, align 8
  %71 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst81, align 8
  %tobool87 = icmp ne %struct._GTypeInstance* %71, null
  br i1 %tobool87, label %if.else.89, label %if.then.88

if.then.88:                                       ; preds = %if.else.79
  store i32 0, i32* %__r86, align 4
  br label %if.end.100

if.else.89:                                       ; preds = %if.else.79
  %72 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst81, align 8
  %g_class90 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %72, i32 0, i32 0
  %73 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class90, align 8
  %tobool91 = icmp ne %struct._GTypeClass* %73, null
  br i1 %tobool91, label %land.lhs.true.92, label %if.else.97

land.lhs.true.92:                                 ; preds = %if.else.89
  %74 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst81, align 8
  %g_class93 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %74, i32 0, i32 0
  %75 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class93, align 8
  %g_type94 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %75, i32 0, i32 0
  %76 = load i64, i64* %g_type94, align 8
  %77 = load i64, i64* %__t83, align 8
  %cmp95 = icmp eq i64 %76, %77
  br i1 %cmp95, label %if.then.96, label %if.else.97

if.then.96:                                       ; preds = %land.lhs.true.92
  store i32 1, i32* %__r86, align 4
  br label %if.end.99

if.else.97:                                       ; preds = %land.lhs.true.92, %if.else.89
  %78 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst81, align 8
  %79 = load i64, i64* %__t83, align 8
  %call98 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %78, i64 %79) #5
  store i32 %call98, i32* %__r86, align 4
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.97, %if.then.96
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.then.88
  %80 = load i32, i32* %__r86, align 4
  store i32 %80, i32* %tmp101
  %81 = load i32, i32* %tmp101
  %tobool102 = icmp ne i32 %81, 0
  br i1 %tobool102, label %if.then.103, label %if.else.114

if.then.103:                                      ; preds = %if.end.100
  %82 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %83 = bitcast %struct._GParamSpec* %82 to %struct._GTypeInstance*
  %84 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx106 = getelementptr inbounds i64, i64* %84, i64 2
  %85 = load i64, i64* %arrayidx106, align 8
  %call107 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %83, i64 %85)
  %86 = bitcast %struct._GTypeInstance* %call107 to %struct._GParamSpecBoolean*
  store %struct._GParamSpecBoolean* %86, %struct._GParamSpecBoolean** %spec105, align 8
  %87 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name108 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %87, i32 0, i32 1
  %88 = load i8*, i8** %name108, align 8
  %89 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %call109 = call i8* @g_param_spec_get_nick(%struct._GParamSpec* %89)
  %90 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %call110 = call i8* @g_param_spec_get_blurb(%struct._GParamSpec* %90)
  %91 = load %struct._GParamSpecBoolean*, %struct._GParamSpecBoolean** %spec105, align 8
  %default_value111 = getelementptr inbounds %struct._GParamSpecBoolean, %struct._GParamSpecBoolean* %91, i32 0, i32 1
  %92 = load i32, i32* %default_value111, align 4
  %93 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %flags112 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %93, i32 0, i32 2
  %94 = load i32, i32* %flags112, align 4
  %call113 = call %struct._GParamSpec* @g_param_spec_boolean(i8* %88, i8* %call109, i8* %call110, i32 %92, i32 %94)
  store %struct._GParamSpec* %call113, %struct._GParamSpec** %retval
  br label %return

if.else.114:                                      ; preds = %if.end.100
  %95 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %96 = bitcast %struct._GParamSpec* %95 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %96, %struct._GTypeInstance** %__inst116, align 8
  %97 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx119 = getelementptr inbounds i64, i64* %97, i64 10
  %98 = load i64, i64* %arrayidx119, align 8
  store i64 %98, i64* %__t118, align 8
  %99 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst116, align 8
  %tobool122 = icmp ne %struct._GTypeInstance* %99, null
  br i1 %tobool122, label %if.else.124, label %if.then.123

if.then.123:                                      ; preds = %if.else.114
  store i32 0, i32* %__r121, align 4
  br label %if.end.135

if.else.124:                                      ; preds = %if.else.114
  %100 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst116, align 8
  %g_class125 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %100, i32 0, i32 0
  %101 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class125, align 8
  %tobool126 = icmp ne %struct._GTypeClass* %101, null
  br i1 %tobool126, label %land.lhs.true.127, label %if.else.132

land.lhs.true.127:                                ; preds = %if.else.124
  %102 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst116, align 8
  %g_class128 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %102, i32 0, i32 0
  %103 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class128, align 8
  %g_type129 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %103, i32 0, i32 0
  %104 = load i64, i64* %g_type129, align 8
  %105 = load i64, i64* %__t118, align 8
  %cmp130 = icmp eq i64 %104, %105
  br i1 %cmp130, label %if.then.131, label %if.else.132

if.then.131:                                      ; preds = %land.lhs.true.127
  store i32 1, i32* %__r121, align 4
  br label %if.end.134

if.else.132:                                      ; preds = %land.lhs.true.127, %if.else.124
  %106 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst116, align 8
  %107 = load i64, i64* %__t118, align 8
  %call133 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %106, i64 %107) #5
  store i32 %call133, i32* %__r121, align 4
  br label %if.end.134

if.end.134:                                       ; preds = %if.else.132, %if.then.131
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %if.then.123
  %108 = load i32, i32* %__r121, align 4
  store i32 %108, i32* %tmp136
  %109 = load i32, i32* %tmp136
  %tobool137 = icmp ne i32 %109, 0
  br i1 %tobool137, label %if.then.138, label %if.else.150

if.then.138:                                      ; preds = %if.end.135
  %110 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %111 = bitcast %struct._GParamSpec* %110 to %struct._GTypeInstance*
  %112 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx141 = getelementptr inbounds i64, i64* %112, i64 10
  %113 = load i64, i64* %arrayidx141, align 8
  %call142 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %111, i64 %113)
  %114 = bitcast %struct._GTypeInstance* %call142 to %struct._GParamSpecEnum*
  store %struct._GParamSpecEnum* %114, %struct._GParamSpecEnum** %spec140, align 8
  %115 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name143 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %115, i32 0, i32 1
  %116 = load i8*, i8** %name143, align 8
  %117 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %call144 = call i8* @g_param_spec_get_nick(%struct._GParamSpec* %117)
  %118 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %call145 = call i8* @g_param_spec_get_blurb(%struct._GParamSpec* %118)
  %119 = load %struct._GParamSpecEnum*, %struct._GParamSpecEnum** %spec140, align 8
  %enum_class = getelementptr inbounds %struct._GParamSpecEnum, %struct._GParamSpecEnum* %119, i32 0, i32 1
  %120 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %121 = bitcast %struct._GEnumClass* %120 to %struct._GTypeClass*
  %g_type146 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %121, i32 0, i32 0
  %122 = load i64, i64* %g_type146, align 8
  %123 = load %struct._GParamSpecEnum*, %struct._GParamSpecEnum** %spec140, align 8
  %default_value147 = getelementptr inbounds %struct._GParamSpecEnum, %struct._GParamSpecEnum* %123, i32 0, i32 2
  %124 = load i32, i32* %default_value147, align 4
  %125 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %flags148 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %125, i32 0, i32 2
  %126 = load i32, i32* %flags148, align 4
  %call149 = call %struct._GParamSpec* @g_param_spec_enum(i8* %116, i8* %call144, i8* %call145, i64 %122, i32 %124, i32 %126)
  store %struct._GParamSpec* %call149, %struct._GParamSpec** %retval
  br label %return

if.else.150:                                      ; preds = %if.end.135
  %127 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %128 = bitcast %struct._GParamSpec* %127 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %128, %struct._GTypeInstance** %__inst152, align 8
  %129 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx155 = getelementptr inbounds i64, i64* %129, i64 13
  %130 = load i64, i64* %arrayidx155, align 8
  store i64 %130, i64* %__t154, align 8
  %131 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst152, align 8
  %tobool158 = icmp ne %struct._GTypeInstance* %131, null
  br i1 %tobool158, label %if.else.160, label %if.then.159

if.then.159:                                      ; preds = %if.else.150
  store i32 0, i32* %__r157, align 4
  br label %if.end.171

if.else.160:                                      ; preds = %if.else.150
  %132 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst152, align 8
  %g_class161 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %132, i32 0, i32 0
  %133 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class161, align 8
  %tobool162 = icmp ne %struct._GTypeClass* %133, null
  br i1 %tobool162, label %land.lhs.true.163, label %if.else.168

land.lhs.true.163:                                ; preds = %if.else.160
  %134 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst152, align 8
  %g_class164 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %134, i32 0, i32 0
  %135 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class164, align 8
  %g_type165 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %135, i32 0, i32 0
  %136 = load i64, i64* %g_type165, align 8
  %137 = load i64, i64* %__t154, align 8
  %cmp166 = icmp eq i64 %136, %137
  br i1 %cmp166, label %if.then.167, label %if.else.168

if.then.167:                                      ; preds = %land.lhs.true.163
  store i32 1, i32* %__r157, align 4
  br label %if.end.170

if.else.168:                                      ; preds = %land.lhs.true.163, %if.else.160
  %138 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst152, align 8
  %139 = load i64, i64* %__t154, align 8
  %call169 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %138, i64 %139) #5
  store i32 %call169, i32* %__r157, align 4
  br label %if.end.170

if.end.170:                                       ; preds = %if.else.168, %if.then.167
  br label %if.end.171

if.end.171:                                       ; preds = %if.end.170, %if.then.159
  %140 = load i32, i32* %__r157, align 4
  store i32 %140, i32* %tmp172
  %141 = load i32, i32* %tmp172
  %tobool173 = icmp ne i32 %141, 0
  br i1 %tobool173, label %if.then.174, label %if.else.185

if.then.174:                                      ; preds = %if.end.171
  %142 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %143 = bitcast %struct._GParamSpec* %142 to %struct._GTypeInstance*
  %144 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx177 = getelementptr inbounds i64, i64* %144, i64 13
  %145 = load i64, i64* %arrayidx177, align 8
  %call178 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %143, i64 %145)
  %146 = bitcast %struct._GTypeInstance* %call178 to %struct._GParamSpecDouble*
  store %struct._GParamSpecDouble* %146, %struct._GParamSpecDouble** %spec176, align 8
  %147 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name179 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %147, i32 0, i32 1
  %148 = load i8*, i8** %name179, align 8
  %149 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %call180 = call i8* @g_param_spec_get_nick(%struct._GParamSpec* %149)
  %150 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %call181 = call i8* @g_param_spec_get_blurb(%struct._GParamSpec* %150)
  %151 = load %struct._GParamSpecDouble*, %struct._GParamSpecDouble** %spec176, align 8
  %minimum = getelementptr inbounds %struct._GParamSpecDouble, %struct._GParamSpecDouble* %151, i32 0, i32 1
  %152 = load double, double* %minimum, align 8
  %153 = load %struct._GParamSpecDouble*, %struct._GParamSpecDouble** %spec176, align 8
  %maximum = getelementptr inbounds %struct._GParamSpecDouble, %struct._GParamSpecDouble* %153, i32 0, i32 2
  %154 = load double, double* %maximum, align 8
  %155 = load %struct._GParamSpecDouble*, %struct._GParamSpecDouble** %spec176, align 8
  %default_value182 = getelementptr inbounds %struct._GParamSpecDouble, %struct._GParamSpecDouble* %155, i32 0, i32 3
  %156 = load double, double* %default_value182, align 8
  %157 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %flags183 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %157, i32 0, i32 2
  %158 = load i32, i32* %flags183, align 4
  %call184 = call %struct._GParamSpec* @g_param_spec_double(i8* %148, i8* %call180, i8* %call181, double %152, double %154, double %156, i32 %158)
  store %struct._GParamSpec* %call184, %struct._GParamSpec** %retval
  br label %return

if.else.185:                                      ; preds = %if.end.171
  %159 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %160 = bitcast %struct._GParamSpec* %159 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %160, %struct._GTypeInstance** %__inst187, align 8
  %161 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx190 = getelementptr inbounds i64, i64* %161, i64 12
  %162 = load i64, i64* %arrayidx190, align 8
  store i64 %162, i64* %__t189, align 8
  %163 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst187, align 8
  %tobool193 = icmp ne %struct._GTypeInstance* %163, null
  br i1 %tobool193, label %if.else.195, label %if.then.194

if.then.194:                                      ; preds = %if.else.185
  store i32 0, i32* %__r192, align 4
  br label %if.end.206

if.else.195:                                      ; preds = %if.else.185
  %164 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst187, align 8
  %g_class196 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %164, i32 0, i32 0
  %165 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class196, align 8
  %tobool197 = icmp ne %struct._GTypeClass* %165, null
  br i1 %tobool197, label %land.lhs.true.198, label %if.else.203

land.lhs.true.198:                                ; preds = %if.else.195
  %166 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst187, align 8
  %g_class199 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %166, i32 0, i32 0
  %167 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class199, align 8
  %g_type200 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %167, i32 0, i32 0
  %168 = load i64, i64* %g_type200, align 8
  %169 = load i64, i64* %__t189, align 8
  %cmp201 = icmp eq i64 %168, %169
  br i1 %cmp201, label %if.then.202, label %if.else.203

if.then.202:                                      ; preds = %land.lhs.true.198
  store i32 1, i32* %__r192, align 4
  br label %if.end.205

if.else.203:                                      ; preds = %land.lhs.true.198, %if.else.195
  %170 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst187, align 8
  %171 = load i64, i64* %__t189, align 8
  %call204 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %170, i64 %171) #5
  store i32 %call204, i32* %__r192, align 4
  br label %if.end.205

if.end.205:                                       ; preds = %if.else.203, %if.then.202
  br label %if.end.206

if.end.206:                                       ; preds = %if.end.205, %if.then.194
  %172 = load i32, i32* %__r192, align 4
  store i32 %172, i32* %tmp207
  %173 = load i32, i32* %tmp207
  %tobool208 = icmp ne i32 %173, 0
  br i1 %tobool208, label %if.then.209, label %if.else.222

if.then.209:                                      ; preds = %if.end.206
  %174 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %175 = bitcast %struct._GParamSpec* %174 to %struct._GTypeInstance*
  %176 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx212 = getelementptr inbounds i64, i64* %176, i64 12
  %177 = load i64, i64* %arrayidx212, align 8
  %call213 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %175, i64 %177)
  %178 = bitcast %struct._GTypeInstance* %call213 to %struct._GParamSpecFloat*
  store %struct._GParamSpecFloat* %178, %struct._GParamSpecFloat** %spec211, align 8
  %179 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name214 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %179, i32 0, i32 1
  %180 = load i8*, i8** %name214, align 8
  %181 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %call215 = call i8* @g_param_spec_get_nick(%struct._GParamSpec* %181)
  %182 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %call216 = call i8* @g_param_spec_get_blurb(%struct._GParamSpec* %182)
  %183 = load %struct._GParamSpecFloat*, %struct._GParamSpecFloat** %spec211, align 8
  %minimum217 = getelementptr inbounds %struct._GParamSpecFloat, %struct._GParamSpecFloat* %183, i32 0, i32 1
  %184 = load float, float* %minimum217, align 4
  %185 = load %struct._GParamSpecFloat*, %struct._GParamSpecFloat** %spec211, align 8
  %maximum218 = getelementptr inbounds %struct._GParamSpecFloat, %struct._GParamSpecFloat* %185, i32 0, i32 2
  %186 = load float, float* %maximum218, align 4
  %187 = load %struct._GParamSpecFloat*, %struct._GParamSpecFloat** %spec211, align 8
  %default_value219 = getelementptr inbounds %struct._GParamSpecFloat, %struct._GParamSpecFloat* %187, i32 0, i32 3
  %188 = load float, float* %default_value219, align 4
  %189 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %flags220 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %189, i32 0, i32 2
  %190 = load i32, i32* %flags220, align 4
  %call221 = call %struct._GParamSpec* @g_param_spec_float(i8* %180, i8* %call215, i8* %call216, float %184, float %186, float %188, i32 %190)
  store %struct._GParamSpec* %call221, %struct._GParamSpec** %retval
  br label %return

if.else.222:                                      ; preds = %if.end.206
  %191 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %192 = bitcast %struct._GParamSpec* %191 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %192, %struct._GTypeInstance** %__inst224, align 8
  %193 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx227 = getelementptr inbounds i64, i64* %193, i64 3
  %194 = load i64, i64* %arrayidx227, align 8
  store i64 %194, i64* %__t226, align 8
  %195 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst224, align 8
  %tobool230 = icmp ne %struct._GTypeInstance* %195, null
  br i1 %tobool230, label %if.else.232, label %if.then.231

if.then.231:                                      ; preds = %if.else.222
  store i32 0, i32* %__r229, align 4
  br label %if.end.243

if.else.232:                                      ; preds = %if.else.222
  %196 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst224, align 8
  %g_class233 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %196, i32 0, i32 0
  %197 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class233, align 8
  %tobool234 = icmp ne %struct._GTypeClass* %197, null
  br i1 %tobool234, label %land.lhs.true.235, label %if.else.240

land.lhs.true.235:                                ; preds = %if.else.232
  %198 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst224, align 8
  %g_class236 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %198, i32 0, i32 0
  %199 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class236, align 8
  %g_type237 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %199, i32 0, i32 0
  %200 = load i64, i64* %g_type237, align 8
  %201 = load i64, i64* %__t226, align 8
  %cmp238 = icmp eq i64 %200, %201
  br i1 %cmp238, label %if.then.239, label %if.else.240

if.then.239:                                      ; preds = %land.lhs.true.235
  store i32 1, i32* %__r229, align 4
  br label %if.end.242

if.else.240:                                      ; preds = %land.lhs.true.235, %if.else.232
  %202 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst224, align 8
  %203 = load i64, i64* %__t226, align 8
  %call241 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %202, i64 %203) #5
  store i32 %call241, i32* %__r229, align 4
  br label %if.end.242

if.end.242:                                       ; preds = %if.else.240, %if.then.239
  br label %if.end.243

if.end.243:                                       ; preds = %if.end.242, %if.then.231
  %204 = load i32, i32* %__r229, align 4
  store i32 %204, i32* %tmp244
  %205 = load i32, i32* %tmp244
  %tobool245 = icmp ne i32 %205, 0
  br i1 %tobool245, label %if.then.246, label %if.else.259

if.then.246:                                      ; preds = %if.end.243
  %206 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %207 = bitcast %struct._GParamSpec* %206 to %struct._GTypeInstance*
  %208 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx249 = getelementptr inbounds i64, i64* %208, i64 3
  %209 = load i64, i64* %arrayidx249, align 8
  %call250 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %207, i64 %209)
  %210 = bitcast %struct._GTypeInstance* %call250 to %struct._GParamSpecInt*
  store %struct._GParamSpecInt* %210, %struct._GParamSpecInt** %spec248, align 8
  %211 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name251 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %211, i32 0, i32 1
  %212 = load i8*, i8** %name251, align 8
  %213 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %call252 = call i8* @g_param_spec_get_nick(%struct._GParamSpec* %213)
  %214 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %call253 = call i8* @g_param_spec_get_blurb(%struct._GParamSpec* %214)
  %215 = load %struct._GParamSpecInt*, %struct._GParamSpecInt** %spec248, align 8
  %minimum254 = getelementptr inbounds %struct._GParamSpecInt, %struct._GParamSpecInt* %215, i32 0, i32 1
  %216 = load i32, i32* %minimum254, align 4
  %217 = load %struct._GParamSpecInt*, %struct._GParamSpecInt** %spec248, align 8
  %maximum255 = getelementptr inbounds %struct._GParamSpecInt, %struct._GParamSpecInt* %217, i32 0, i32 2
  %218 = load i32, i32* %maximum255, align 4
  %219 = load %struct._GParamSpecInt*, %struct._GParamSpecInt** %spec248, align 8
  %default_value256 = getelementptr inbounds %struct._GParamSpecInt, %struct._GParamSpecInt* %219, i32 0, i32 3
  %220 = load i32, i32* %default_value256, align 4
  %221 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %flags257 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %221, i32 0, i32 2
  %222 = load i32, i32* %flags257, align 4
  %call258 = call %struct._GParamSpec* @g_param_spec_int(i8* %212, i8* %call252, i8* %call253, i32 %216, i32 %218, i32 %220, i32 %222)
  store %struct._GParamSpec* %call258, %struct._GParamSpec** %retval
  br label %return

if.else.259:                                      ; preds = %if.end.243
  %223 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %224 = bitcast %struct._GParamSpec* %223 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %224, %struct._GTypeInstance** %__inst261, align 8
  %225 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx264 = getelementptr inbounds i64, i64* %225, i64 4
  %226 = load i64, i64* %arrayidx264, align 8
  store i64 %226, i64* %__t263, align 8
  %227 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst261, align 8
  %tobool267 = icmp ne %struct._GTypeInstance* %227, null
  br i1 %tobool267, label %if.else.269, label %if.then.268

if.then.268:                                      ; preds = %if.else.259
  store i32 0, i32* %__r266, align 4
  br label %if.end.280

if.else.269:                                      ; preds = %if.else.259
  %228 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst261, align 8
  %g_class270 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %228, i32 0, i32 0
  %229 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class270, align 8
  %tobool271 = icmp ne %struct._GTypeClass* %229, null
  br i1 %tobool271, label %land.lhs.true.272, label %if.else.277

land.lhs.true.272:                                ; preds = %if.else.269
  %230 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst261, align 8
  %g_class273 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %230, i32 0, i32 0
  %231 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class273, align 8
  %g_type274 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %231, i32 0, i32 0
  %232 = load i64, i64* %g_type274, align 8
  %233 = load i64, i64* %__t263, align 8
  %cmp275 = icmp eq i64 %232, %233
  br i1 %cmp275, label %if.then.276, label %if.else.277

if.then.276:                                      ; preds = %land.lhs.true.272
  store i32 1, i32* %__r266, align 4
  br label %if.end.279

if.else.277:                                      ; preds = %land.lhs.true.272, %if.else.269
  %234 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst261, align 8
  %235 = load i64, i64* %__t263, align 8
  %call278 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %234, i64 %235) #5
  store i32 %call278, i32* %__r266, align 4
  br label %if.end.279

if.end.279:                                       ; preds = %if.else.277, %if.then.276
  br label %if.end.280

if.end.280:                                       ; preds = %if.end.279, %if.then.268
  %236 = load i32, i32* %__r266, align 4
  store i32 %236, i32* %tmp281
  %237 = load i32, i32* %tmp281
  %tobool282 = icmp ne i32 %237, 0
  br i1 %tobool282, label %if.then.283, label %if.else.296

if.then.283:                                      ; preds = %if.end.280
  %238 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %239 = bitcast %struct._GParamSpec* %238 to %struct._GTypeInstance*
  %240 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx286 = getelementptr inbounds i64, i64* %240, i64 4
  %241 = load i64, i64* %arrayidx286, align 8
  %call287 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %239, i64 %241)
  %242 = bitcast %struct._GTypeInstance* %call287 to %struct._GParamSpecUInt*
  store %struct._GParamSpecUInt* %242, %struct._GParamSpecUInt** %spec285, align 8
  %243 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name288 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %243, i32 0, i32 1
  %244 = load i8*, i8** %name288, align 8
  %245 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %call289 = call i8* @g_param_spec_get_nick(%struct._GParamSpec* %245)
  %246 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %call290 = call i8* @g_param_spec_get_blurb(%struct._GParamSpec* %246)
  %247 = load %struct._GParamSpecUInt*, %struct._GParamSpecUInt** %spec285, align 8
  %minimum291 = getelementptr inbounds %struct._GParamSpecUInt, %struct._GParamSpecUInt* %247, i32 0, i32 1
  %248 = load i32, i32* %minimum291, align 4
  %249 = load %struct._GParamSpecUInt*, %struct._GParamSpecUInt** %spec285, align 8
  %maximum292 = getelementptr inbounds %struct._GParamSpecUInt, %struct._GParamSpecUInt* %249, i32 0, i32 2
  %250 = load i32, i32* %maximum292, align 4
  %251 = load %struct._GParamSpecUInt*, %struct._GParamSpecUInt** %spec285, align 8
  %default_value293 = getelementptr inbounds %struct._GParamSpecUInt, %struct._GParamSpecUInt* %251, i32 0, i32 3
  %252 = load i32, i32* %default_value293, align 4
  %253 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %flags294 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %253, i32 0, i32 2
  %254 = load i32, i32* %flags294, align 4
  %call295 = call %struct._GParamSpec* @g_param_spec_uint(i8* %244, i8* %call289, i8* %call290, i32 %248, i32 %250, i32 %252, i32 %254)
  store %struct._GParamSpec* %call295, %struct._GParamSpec** %retval
  br label %return

if.else.296:                                      ; preds = %if.end.280
  %255 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %256 = bitcast %struct._GParamSpec* %255 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %256, %struct._GTypeInstance** %__inst298, align 8
  %call301 = call i64 @gegl_param_color_get_type() #6
  store i64 %call301, i64* %__t300, align 8
  %257 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst298, align 8
  %tobool304 = icmp ne %struct._GTypeInstance* %257, null
  br i1 %tobool304, label %if.else.306, label %if.then.305

if.then.305:                                      ; preds = %if.else.296
  store i32 0, i32* %__r303, align 4
  br label %if.end.317

if.else.306:                                      ; preds = %if.else.296
  %258 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst298, align 8
  %g_class307 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %258, i32 0, i32 0
  %259 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class307, align 8
  %tobool308 = icmp ne %struct._GTypeClass* %259, null
  br i1 %tobool308, label %land.lhs.true.309, label %if.else.314

land.lhs.true.309:                                ; preds = %if.else.306
  %260 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst298, align 8
  %g_class310 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %260, i32 0, i32 0
  %261 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class310, align 8
  %g_type311 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %261, i32 0, i32 0
  %262 = load i64, i64* %g_type311, align 8
  %263 = load i64, i64* %__t300, align 8
  %cmp312 = icmp eq i64 %262, %263
  br i1 %cmp312, label %if.then.313, label %if.else.314

if.then.313:                                      ; preds = %land.lhs.true.309
  store i32 1, i32* %__r303, align 4
  br label %if.end.316

if.else.314:                                      ; preds = %land.lhs.true.309, %if.else.306
  %264 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst298, align 8
  %265 = load i64, i64* %__t300, align 8
  %call315 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %264, i64 %265) #5
  store i32 %call315, i32* %__r303, align 4
  br label %if.end.316

if.end.316:                                       ; preds = %if.else.314, %if.then.313
  br label %if.end.317

if.end.317:                                       ; preds = %if.end.316, %if.then.305
  %266 = load i32, i32* %__r303, align 4
  store i32 %266, i32* %tmp318
  %267 = load i32, i32* %tmp318
  %tobool319 = icmp ne i32 %267, 0
  br i1 %tobool319, label %if.then.320, label %if.else.339

if.then.320:                                      ; preds = %if.end.317
  store double 0.000000e+00, double* %r, align 8
  store double 0.000000e+00, double* %g, align 8
  store double 0.000000e+00, double* %b, align 8
  store double 1.000000e+00, double* %a, align 8
  %268 = bitcast %struct._GValue* %value to i8*
  call void @llvm.memset.p0i8.i64(i8* %268, i8 0, i64 24, i32 8, i1 false)
  %call328 = call i64 @gegl_color_get_type() #6
  %call329 = call %struct._GValue* @g_value_init(%struct._GValue* %value, i64 %call328)
  %269 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  call void @g_param_value_set_default(%struct._GParamSpec* %269, %struct._GValue* %value)
  %call330 = call i8* @g_value_get_object(%struct._GValue* %value)
  %270 = bitcast i8* %call330 to %struct._GeglColor*
  store %struct._GeglColor* %270, %struct._GeglColor** %gegl_color, align 8
  %271 = load %struct._GeglColor*, %struct._GeglColor** %gegl_color, align 8
  %tobool331 = icmp ne %struct._GeglColor* %271, null
  br i1 %tobool331, label %if.then.332, label %if.end.333

if.then.332:                                      ; preds = %if.then.320
  %272 = load %struct._GeglColor*, %struct._GeglColor** %gegl_color, align 8
  call void @gegl_color_get_rgba(%struct._GeglColor* %272, double* %r, double* %g, double* %b, double* %a)
  br label %if.end.333

if.end.333:                                       ; preds = %if.then.332, %if.then.320
  %273 = load double, double* %r, align 8
  %274 = load double, double* %g, align 8
  %275 = load double, double* %b, align 8
  %276 = load double, double* %a, align 8
  call void @gimp_rgba_set(%struct._GimpRGB* %gimp_color, double %273, double %274, double %275, double %276)
  call void @g_value_unset(%struct._GValue* %value)
  %277 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name334 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %277, i32 0, i32 1
  %278 = load i8*, i8** %name334, align 8
  %279 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %call335 = call i8* @g_param_spec_get_nick(%struct._GParamSpec* %279)
  %280 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %call336 = call i8* @g_param_spec_get_blurb(%struct._GParamSpec* %280)
  %281 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %flags337 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %281, i32 0, i32 2
  %282 = load i32, i32* %flags337, align 4
  %call338 = call %struct._GParamSpec* @gimp_param_spec_rgb(i8* %278, i8* %call335, i8* %call336, i32 1, %struct._GimpRGB* %gimp_color, i32 %282)
  store %struct._GParamSpec* %call338, %struct._GParamSpec** %retval
  br label %return

if.else.339:                                      ; preds = %if.end.317
  %283 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %284 = bitcast %struct._GParamSpec* %283 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %284, %struct._GTypeInstance** %__inst341, align 8
  %285 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx344 = getelementptr inbounds i64, i64* %285, i64 19
  %286 = load i64, i64* %arrayidx344, align 8
  store i64 %286, i64* %__t343, align 8
  %287 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst341, align 8
  %tobool347 = icmp ne %struct._GTypeInstance* %287, null
  br i1 %tobool347, label %if.else.349, label %if.then.348

if.then.348:                                      ; preds = %if.else.339
  store i32 0, i32* %__r346, align 4
  br label %if.end.360

if.else.349:                                      ; preds = %if.else.339
  %288 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst341, align 8
  %g_class350 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %288, i32 0, i32 0
  %289 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class350, align 8
  %tobool351 = icmp ne %struct._GTypeClass* %289, null
  br i1 %tobool351, label %land.lhs.true.352, label %if.else.357

land.lhs.true.352:                                ; preds = %if.else.349
  %290 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst341, align 8
  %g_class353 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %290, i32 0, i32 0
  %291 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class353, align 8
  %g_type354 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %291, i32 0, i32 0
  %292 = load i64, i64* %g_type354, align 8
  %293 = load i64, i64* %__t343, align 8
  %cmp355 = icmp eq i64 %292, %293
  br i1 %cmp355, label %if.then.356, label %if.else.357

if.then.356:                                      ; preds = %land.lhs.true.352
  store i32 1, i32* %__r346, align 4
  br label %if.end.359

if.else.357:                                      ; preds = %land.lhs.true.352, %if.else.349
  %294 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst341, align 8
  %295 = load i64, i64* %__t343, align 8
  %call358 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %294, i64 %295) #5
  store i32 %call358, i32* %__r346, align 4
  br label %if.end.359

if.end.359:                                       ; preds = %if.else.357, %if.then.356
  br label %if.end.360

if.end.360:                                       ; preds = %if.end.359, %if.then.348
  %296 = load i32, i32* %__r346, align 4
  store i32 %296, i32* %tmp361
  %297 = load i32, i32* %tmp361
  %tobool362 = icmp ne i32 %297, 0
  br i1 %tobool362, label %if.then.386, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.360
  %298 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %299 = bitcast %struct._GParamSpec* %298 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %299, %struct._GTypeInstance** %__inst364, align 8
  %300 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx367 = getelementptr inbounds i64, i64* %300, i64 17
  %301 = load i64, i64* %arrayidx367, align 8
  store i64 %301, i64* %__t366, align 8
  %302 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst364, align 8
  %tobool370 = icmp ne %struct._GTypeInstance* %302, null
  br i1 %tobool370, label %if.else.372, label %if.then.371

if.then.371:                                      ; preds = %lor.lhs.false
  store i32 0, i32* %__r369, align 4
  br label %if.end.383

if.else.372:                                      ; preds = %lor.lhs.false
  %303 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst364, align 8
  %g_class373 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %303, i32 0, i32 0
  %304 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class373, align 8
  %tobool374 = icmp ne %struct._GTypeClass* %304, null
  br i1 %tobool374, label %land.lhs.true.375, label %if.else.380

land.lhs.true.375:                                ; preds = %if.else.372
  %305 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst364, align 8
  %g_class376 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %305, i32 0, i32 0
  %306 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class376, align 8
  %g_type377 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %306, i32 0, i32 0
  %307 = load i64, i64* %g_type377, align 8
  %308 = load i64, i64* %__t366, align 8
  %cmp378 = icmp eq i64 %307, %308
  br i1 %cmp378, label %if.then.379, label %if.else.380

if.then.379:                                      ; preds = %land.lhs.true.375
  store i32 1, i32* %__r369, align 4
  br label %if.end.382

if.else.380:                                      ; preds = %land.lhs.true.375, %if.else.372
  %309 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst364, align 8
  %310 = load i64, i64* %__t366, align 8
  %call381 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %309, i64 %310) #5
  store i32 %call381, i32* %__r369, align 4
  br label %if.end.382

if.end.382:                                       ; preds = %if.else.380, %if.then.379
  br label %if.end.383

if.end.383:                                       ; preds = %if.end.382, %if.then.371
  %311 = load i32, i32* %__r369, align 4
  store i32 %311, i32* %tmp384
  %312 = load i32, i32* %tmp384
  %tobool385 = icmp ne i32 %312, 0
  br i1 %tobool385, label %if.then.386, label %if.end.387

if.then.386:                                      ; preds = %if.end.383, %if.end.360
  store %struct._GParamSpec* null, %struct._GParamSpec** %retval
  br label %return

if.end.387:                                       ; preds = %if.end.383
  br label %if.end.388

if.end.388:                                       ; preds = %if.end.387
  br label %if.end.389

if.end.389:                                       ; preds = %if.end.388
  br label %if.end.390

if.end.390:                                       ; preds = %if.end.389
  br label %if.end.391

if.end.391:                                       ; preds = %if.end.390
  br label %if.end.392

if.end.392:                                       ; preds = %if.end.391
  br label %if.end.393

if.end.393:                                       ; preds = %if.end.392
  br label %if.end.394

if.end.394:                                       ; preds = %if.end.393
  br label %if.end.395

if.end.395:                                       ; preds = %if.end.394
  %313 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %314 = bitcast %struct._GParamSpec* %313 to %struct._GTypeInstance*
  %g_class396 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %314, i32 0, i32 0
  %315 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class396, align 8
  %g_type397 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %315, i32 0, i32 0
  %316 = load i64, i64* %g_type397, align 8
  %call398 = call i8* @g_type_name(i64 %316)
  %317 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name399 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %317, i32 0, i32 1
  %318 = load i8*, i8** %name399, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_param_spec_duplicate, i32 0, i32 0), i8* %call398, i8* %318)
  store %struct._GParamSpec* null, %struct._GParamSpec** %retval
  br label %return

return:                                           ; preds = %if.end.395, %if.then.386, %if.end.333, %if.then.283, %if.then.246, %if.then.209, %if.then.174, %if.then.138, %if.then.103, %if.end.78, %if.then.38, %if.else
  %319 = load %struct._GParamSpec*, %struct._GParamSpec** %retval
  ret %struct._GParamSpec* %319
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gegl_param_file_path_get_type() #3

declare %struct._GParamSpec* @gimp_param_spec_config_path(i8*, i8*, i8*, i32, i8*, i32) #1

declare i8* @g_param_spec_get_nick(%struct._GParamSpec*) #1

declare i8* @g_param_spec_get_blurb(%struct._GParamSpec*) #1

declare i32 @g_quark_from_static_string(i8*) #1

declare %struct._GParamSpec* @g_param_spec_string(i8*, i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gegl_param_multiline_get_type() #3

declare void @g_param_spec_set_qdata(%struct._GParamSpec*, i32, i8*) #1

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

declare %struct._GParamSpec* @g_param_spec_float(i8*, i8*, i8*, float, float, float, i32) #1

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_uint(i8*, i8*, i8*, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gegl_param_color_get_type() #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare %struct._GValue* @g_value_init(%struct._GValue*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gegl_color_get_type() #3

declare void @g_param_value_set_default(%struct._GParamSpec*, %struct._GValue*) #1

declare i8* @g_value_get_object(%struct._GValue*) #1

declare void @gegl_color_get_rgba(%struct._GeglColor*, double*, double*, double*, double*) #1

declare void @gimp_rgba_set(%struct._GimpRGB*, double, double, double, double) #1

declare void @g_value_unset(%struct._GValue*) #1

declare %struct._GParamSpec* @gimp_param_spec_rgb(i8*, i8*, i8*, i32, %struct._GimpRGB*, i32) #1

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
  call void @g_logv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
