; ModuleID = './libgimpconfig/gimpcolorconfig-enums.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GEnumValue = type { i32, i8*, i8* }
%struct._GimpEnumDesc = type { i32, i8*, i8* }

@gimp_color_management_mode_get_type.values = internal constant [4 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str = private unnamed_addr constant [26 x i8] c"GIMP_COLOR_MANAGEMENT_OFF\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"GIMP_COLOR_MANAGEMENT_DISPLAY\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"GIMP_COLOR_MANAGEMENT_SOFTPROOF\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"softproof\00", align 1
@gimp_color_management_mode_get_type.descs = internal constant [4 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.6 = private unnamed_addr constant [20 x i8] c"No color management\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Color managed display\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"Print simulation\00", align 1
@gimp_color_management_mode_get_type.type = internal global i64 0, align 8
@.str.9 = private unnamed_addr constant [24 x i8] c"GimpColorManagementMode\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"gimp20-libgimp\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"color-management-mode\00", align 1
@gimp_color_rendering_intent_get_type.values = internal constant [5 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.12 = private unnamed_addr constant [39 x i8] c"GIMP_COLOR_RENDERING_INTENT_PERCEPTUAL\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"perceptual\00", align 1
@.str.14 = private unnamed_addr constant [50 x i8] c"GIMP_COLOR_RENDERING_INTENT_RELATIVE_COLORIMETRIC\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"relative-colorimetric\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"GIMP_COLOR_RENDERING_INTENT_SATURATION\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"saturation\00", align 1
@.str.18 = private unnamed_addr constant [50 x i8] c"GIMP_COLOR_RENDERING_INTENT_ABSOLUTE_COLORIMETRIC\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"absolute-colorimetric\00", align 1
@gimp_color_rendering_intent_get_type.descs = internal constant [5 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.20 = private unnamed_addr constant [11 x i8] c"Perceptual\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"Relative colorimetric\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"Saturation\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"Absolute colorimetric\00", align 1
@gimp_color_rendering_intent_get_type.type = internal global i64 0, align 8
@.str.24 = private unnamed_addr constant [25 x i8] c"GimpColorRenderingIntent\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"color-rendering-intent\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_color_management_mode_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_color_management_mode_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([4 x %struct._GEnumValue], [4 x %struct._GEnumValue]* @gimp_color_management_mode_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_color_management_mode_get_type.type, align 8
  %1 = load i64, i64* @gimp_color_management_mode_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0))
  %2 = load i64, i64* @gimp_color_management_mode_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0))
  %3 = load i64, i64* @gimp_color_management_mode_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([4 x %struct._GimpEnumDesc], [4 x %struct._GimpEnumDesc]* @gimp_color_management_mode_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_color_management_mode_get_type.type, align 8
  ret i64 %4
}

declare i64 @g_enum_register_static(i8*, %struct._GEnumValue*) #1

declare void @gimp_type_set_translation_domain(i64, i8*) #1

declare void @gimp_type_set_translation_context(i64, i8*) #1

declare void @gimp_enum_set_value_descriptions(i64, %struct._GimpEnumDesc*) #1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_color_rendering_intent_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_color_rendering_intent_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([5 x %struct._GEnumValue], [5 x %struct._GEnumValue]* @gimp_color_rendering_intent_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_color_rendering_intent_get_type.type, align 8
  %1 = load i64, i64* @gimp_color_rendering_intent_get_type.type, align 8
  call void @gimp_type_set_translation_domain(i64 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0))
  %2 = load i64, i64* @gimp_color_rendering_intent_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i32 0, i32 0))
  %3 = load i64, i64* @gimp_color_rendering_intent_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([5 x %struct._GimpEnumDesc], [5 x %struct._GimpEnumDesc]* @gimp_color_rendering_intent_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @gimp_color_rendering_intent_get_type.type, align 8
  ret i64 %4
}

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}