; ModuleID = './libgimpthumb/gimpthumb-enums.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GEnumValue = type { i32, i8*, i8* }

@gimp_thumb_file_type_get_type.values = internal constant [5 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str = private unnamed_addr constant [26 x i8] c"GIMP_THUMB_FILE_TYPE_NONE\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"GIMP_THUMB_FILE_TYPE_REGULAR\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"regular\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"GIMP_THUMB_FILE_TYPE_FOLDER\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"folder\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"GIMP_THUMB_FILE_TYPE_SPECIAL\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"special\00", align 1
@gimp_thumb_file_type_get_type.type = internal global i64 0, align 8
@.str.8 = private unnamed_addr constant [18 x i8] c"GimpThumbFileType\00", align 1
@gimp_thumb_size_get_type.values = internal constant [4 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0) }, %struct._GEnumValue { i32 128, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0) }, %struct._GEnumValue { i32 256, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.9 = private unnamed_addr constant [21 x i8] c"GIMP_THUMB_SIZE_FAIL\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"fail\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"GIMP_THUMB_SIZE_NORMAL\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"GIMP_THUMB_SIZE_LARGE\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"large\00", align 1
@gimp_thumb_size_get_type.type = internal global i64 0, align 8
@.str.15 = private unnamed_addr constant [14 x i8] c"GimpThumbSize\00", align 1
@gimp_thumb_state_get_type.values = internal constant [10 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0) }, %struct._GEnumValue { i32 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0) }, %struct._GEnumValue { i32 5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0) }, %struct._GEnumValue { i32 6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0) }, %struct._GEnumValue { i32 7, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0) }, %struct._GEnumValue { i32 8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.16 = private unnamed_addr constant [25 x i8] c"GIMP_THUMB_STATE_UNKNOWN\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"GIMP_THUMB_STATE_REMOTE\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"remote\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"GIMP_THUMB_STATE_FOLDER\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"GIMP_THUMB_STATE_SPECIAL\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"GIMP_THUMB_STATE_NOT_FOUND\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"not-found\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"GIMP_THUMB_STATE_EXISTS\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"exists\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"GIMP_THUMB_STATE_OLD\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"old\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"GIMP_THUMB_STATE_FAILED\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"GIMP_THUMB_STATE_OK\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@gimp_thumb_state_get_type.type = internal global i64 0, align 8
@.str.32 = private unnamed_addr constant [15 x i8] c"GimpThumbState\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_thumb_file_type_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_thumb_file_type_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([5 x %struct._GEnumValue], [5 x %struct._GEnumValue]* @gimp_thumb_file_type_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_thumb_file_type_get_type.type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gimp_thumb_file_type_get_type.type, align 8
  ret i64 %1
}

declare i64 @g_enum_register_static(i8*, %struct._GEnumValue*) #1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_thumb_size_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_thumb_size_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([4 x %struct._GEnumValue], [4 x %struct._GEnumValue]* @gimp_thumb_size_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_thumb_size_get_type.type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gimp_thumb_size_get_type.type, align 8
  ret i64 %1
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_thumb_state_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_thumb_state_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([10 x %struct._GEnumValue], [10 x %struct._GEnumValue]* @gimp_thumb_state_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_thumb_state_get_type.type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gimp_thumb_state_get_type.type, align 8
  ret i64 %1
}

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
