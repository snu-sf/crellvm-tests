; ModuleID = './app/gegl/gimp-gegl-enums.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GEnumValue = type { i32, i8*, i8* }
%struct._GimpEnumDesc = type { i32, i8*, i8* }

@gimp_cage_mode_get_type.values = internal constant [3 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str = private unnamed_addr constant [27 x i8] c"GIMP_CAGE_MODE_CAGE_CHANGE\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"cage-change\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"GIMP_CAGE_MODE_DEFORM\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"deform\00", align 1
@gimp_cage_mode_get_type.descs = internal constant [3 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.4 = private unnamed_addr constant [26 x i8] c"Create or adjust the cage\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Deform the cage to deform the image\00", align 1
@gimp_cage_mode_get_type.type = internal global i64 0, align 8
@.str.6 = private unnamed_addr constant [13 x i8] c"GimpCageMode\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"cage-mode\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_cage_mode_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_cage_mode_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([3 x %struct._GEnumValue], [3 x %struct._GEnumValue]* @gimp_cage_mode_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_cage_mode_get_type.type, align 8
  %1 = load i64, i64* @gimp_cage_mode_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0))
  %2 = load i64, i64* @gimp_cage_mode_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([3 x %struct._GimpEnumDesc], [3 x %struct._GimpEnumDesc]* @gimp_cage_mode_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_cage_mode_get_type.type, align 8
  ret i64 %3
}

declare i64 @g_enum_register_static(i8*, %struct._GEnumValue*) #1

declare void @gimp_type_set_translation_context(i64, i8*) #1

declare void @gimp_enum_set_value_descriptions(i64, %struct._GimpEnumDesc*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
