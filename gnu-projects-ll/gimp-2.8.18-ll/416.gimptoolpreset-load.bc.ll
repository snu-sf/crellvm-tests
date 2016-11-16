; ModuleID = './app/core/gimptoolpreset-load.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type opaque
%struct._GimpImage = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type { %struct._GimpData, %struct._Gimp*, %struct._GimpToolOptions*, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpToolOptions = type opaque
%struct._GimpFont = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpTemplate = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpConfig = type opaque

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_tool_preset_load = private unnamed_addr constant [22 x i8] c"gimp_tool_preset_load\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"filename != NULL\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"g_path_is_absolute (filename)\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"gimp\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Error while parsing '%s'\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_tool_preset_load(%struct._GimpContext* %context, i8* %filename, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GList*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %filename.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %tool_preset = alloca %struct._GimpToolPreset*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst39 = alloca %struct._GTypeInstance*, align 8
  %__t41 = alloca i64, align 8
  %__r44 = alloca i32, align 4
  %tmp59 = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_tool_preset_load, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %filename.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_tool_preset_load, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load i8*, i8** %filename.addr, align 8
  %call18 = call i32 @g_path_is_absolute(i8* %14)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body.17
  br label %if.end.22

if.else.21:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_tool_preset_load, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.22:                                        ; preds = %if.then.20
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  br label %do.body.24

do.body.24:                                       ; preds = %do.end.23
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp25 = icmp eq %struct._GError** %15, null
  br i1 %cmp25, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.24
  %16 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %17 = load %struct._GError*, %struct._GError** %16, align 8
  %cmp26 = icmp eq %struct._GError* %17, null
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %lor.lhs.false, %do.body.24
  br label %if.end.29

if.else.28:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_tool_preset_load, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.29:                                        ; preds = %if.then.27
  br label %do.end.30

do.end.30:                                        ; preds = %if.end.29
  %call31 = call i64 @gimp_tool_preset_get_type() #5
  %18 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %18, i32 0, i32 1
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call32 = call i8* (i64, i8*, ...) @g_object_new(i64 %call31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), %struct._Gimp* %19, i8* null)
  %20 = bitcast i8* %call32 to %struct._GimpToolPreset*
  store %struct._GimpToolPreset* %20, %struct._GimpToolPreset** %tool_preset, align 8
  %21 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset, align 8
  %22 = bitcast %struct._GimpToolPreset* %21 to %struct._GTypeInstance*
  %call33 = call i64 @gimp_config_interface_get_type() #5
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call33)
  %23 = bitcast %struct._GTypeInstance* %call34 to %struct._GimpConfig*
  %24 = load i8*, i8** %filename.addr, align 8
  %25 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call35 = call i32 @gimp_config_deserialize_file(%struct._GimpConfig* %23, i8* %24, i8* null, %struct._GError** %25)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then.37, label %if.end.68

if.then.37:                                       ; preds = %do.end.30
  %26 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset, align 8
  %tool_options = getelementptr inbounds %struct._GimpToolPreset, %struct._GimpToolPreset* %26, i32 0, i32 2
  %27 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options, align 8
  %28 = bitcast %struct._GimpToolOptions* %27 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %28, %struct._GTypeInstance** %__inst39, align 8
  %call42 = call i64 @gimp_context_get_type() #5
  store i64 %call42, i64* %__t41, align 8
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst39, align 8
  %tobool45 = icmp ne %struct._GTypeInstance* %29, null
  br i1 %tobool45, label %if.else.47, label %if.then.46

if.then.46:                                       ; preds = %if.then.37
  store i32 0, i32* %__r44, align 4
  br label %if.end.58

if.else.47:                                       ; preds = %if.then.37
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst39, align 8
  %g_class48 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class48, align 8
  %tobool49 = icmp ne %struct._GTypeClass* %31, null
  br i1 %tobool49, label %land.lhs.true.50, label %if.else.55

land.lhs.true.50:                                 ; preds = %if.else.47
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst39, align 8
  %g_class51 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class51, align 8
  %g_type52 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %33, i32 0, i32 0
  %34 = load i64, i64* %g_type52, align 8
  %35 = load i64, i64* %__t41, align 8
  %cmp53 = icmp eq i64 %34, %35
  br i1 %cmp53, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %land.lhs.true.50
  store i32 1, i32* %__r44, align 4
  br label %if.end.57

if.else.55:                                       ; preds = %land.lhs.true.50, %if.else.47
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst39, align 8
  %37 = load i64, i64* %__t41, align 8
  %call56 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %36, i64 %37) #6
  store i32 %call56, i32* %__r44, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.55, %if.then.54
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.then.46
  %38 = load i32, i32* %__r44, align 4
  store i32 %38, i32* %tmp59
  %39 = load i32, i32* %tmp59
  %tobool60 = icmp ne i32 %39, 0
  br i1 %tobool60, label %if.then.61, label %if.else.63

if.then.61:                                       ; preds = %if.end.58
  %40 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset, align 8
  %41 = bitcast %struct._GimpToolPreset* %40 to i8*
  %call62 = call %struct._GList* @g_list_prepend(%struct._GList* null, i8* %41)
  store %struct._GList* %call62, %struct._GList** %retval
  br label %return

if.else.63:                                       ; preds = %if.end.58
  %42 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call64 = call i32 @gimp_config_error_quark() #5
  %call65 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0)) #7
  %43 = load i8*, i8** %filename.addr, align 8
  %call66 = call i8* @gimp_filename_to_utf8(i8* %43)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %42, i32 %call64, i32 3, i8* %call65, i8* %call66)
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.63
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %do.end.30
  %44 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset, align 8
  %45 = bitcast %struct._GimpToolPreset* %44 to i8*
  call void @g_object_unref(i8* %45)
  store %struct._GList* null, %struct._GList** %retval
  br label %return

return:                                           ; preds = %if.end.68, %if.then.61, %if.else.28, %if.else.21, %if.else.14, %if.else.9
  %46 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %46
}

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare i32 @g_path_is_absolute(i8*) #3

declare i8* @g_object_new(i64, i8*, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_preset_get_type() #1

declare i32 @gimp_config_deserialize_file(%struct._GimpConfig*, i8*, i8*, %struct._GError**) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #1

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #3

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #3

; Function Attrs: nounwind readnone
declare i32 @gimp_config_error_quark() #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i8* @gimp_filename_to_utf8(i8*) #3

declare void @g_object_unref(i8*) #3

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
