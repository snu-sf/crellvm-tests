; ModuleID = './app/paint/paint-enums.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GEnumValue = type { i32, i8*, i8* }
%struct._GimpEnumDesc = type { i32, i8*, i8* }

@gimp_brush_application_mode_get_type.values = internal constant [3 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str = private unnamed_addr constant [16 x i8] c"GIMP_BRUSH_HARD\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"hard\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"GIMP_BRUSH_SOFT\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"soft\00", align 1
@gimp_brush_application_mode_get_type.descs = internal constant [3 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@gimp_brush_application_mode_get_type.type = internal global i64 0, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"GimpBrushApplicationMode\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"brush-application-mode\00", align 1
@gimp_perspective_clone_mode_get_type.values = internal constant [3 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.6 = private unnamed_addr constant [35 x i8] c"GIMP_PERSPECTIVE_CLONE_MODE_ADJUST\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"adjust\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"GIMP_PERSPECTIVE_CLONE_MODE_PAINT\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"paint\00", align 1
@gimp_perspective_clone_mode_get_type.descs = internal constant [3 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.10 = private unnamed_addr constant [19 x i8] c"Modify Perspective\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"Perspective Clone\00", align 1
@gimp_perspective_clone_mode_get_type.type = internal global i64 0, align 8
@.str.12 = private unnamed_addr constant [25 x i8] c"GimpPerspectiveCloneMode\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"perspective-clone-mode\00", align 1
@gimp_source_align_mode_get_type.values = internal constant [5 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0) }, %struct._GEnumValue { i32 3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.14 = private unnamed_addr constant [21 x i8] c"GIMP_SOURCE_ALIGN_NO\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"GIMP_SOURCE_ALIGN_YES\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"GIMP_SOURCE_ALIGN_REGISTERED\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"registered\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"GIMP_SOURCE_ALIGN_FIXED\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"fixed\00", align 1
@gimp_source_align_mode_get_type.descs = internal constant [5 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.22 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"Aligned\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"Registered\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"Fixed\00", align 1
@gimp_source_align_mode_get_type.type = internal global i64 0, align 8
@.str.26 = private unnamed_addr constant [20 x i8] c"GimpSourceAlignMode\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"source-align-mode\00", align 1
@gimp_convolve_type_get_type.values = internal constant [3 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.28 = private unnamed_addr constant [19 x i8] c"GIMP_BLUR_CONVOLVE\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"blur-convolve\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"GIMP_SHARPEN_CONVOLVE\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"sharpen-convolve\00", align 1
@gimp_convolve_type_get_type.descs = internal constant [3 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.32 = private unnamed_addr constant [5 x i8] c"Blur\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"Sharpen\00", align 1
@gimp_convolve_type_get_type.type = internal global i64 0, align 8
@.str.34 = private unnamed_addr constant [17 x i8] c"GimpConvolveType\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"convolve-type\00", align 1
@gimp_ink_blob_type_get_type.values = internal constant [4 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@.str.36 = private unnamed_addr constant [26 x i8] c"GIMP_INK_BLOB_TYPE_CIRCLE\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"circle\00", align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"GIMP_INK_BLOB_TYPE_SQUARE\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"square\00", align 1
@.str.40 = private unnamed_addr constant [27 x i8] c"GIMP_INK_BLOB_TYPE_DIAMOND\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"diamond\00", align 1
@gimp_ink_blob_type_get_type.descs = internal constant [4 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.42 = private unnamed_addr constant [7 x i8] c"Circle\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"Square\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"Diamond\00", align 1
@gimp_ink_blob_type_get_type.type = internal global i64 0, align 8
@.str.45 = private unnamed_addr constant [16 x i8] c"GimpInkBlobType\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"ink-blob-type\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_brush_application_mode_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_brush_application_mode_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([3 x %struct._GEnumValue], [3 x %struct._GEnumValue]* @gimp_brush_application_mode_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_brush_application_mode_get_type.type, align 8
  %1 = load i64, i64* @gimp_brush_application_mode_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0))
  %2 = load i64, i64* @gimp_brush_application_mode_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([3 x %struct._GimpEnumDesc], [3 x %struct._GimpEnumDesc]* @gimp_brush_application_mode_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_brush_application_mode_get_type.type, align 8
  ret i64 %3
}

declare i64 @g_enum_register_static(i8*, %struct._GEnumValue*) #1

declare void @gimp_type_set_translation_context(i64, i8*) #1

declare void @gimp_enum_set_value_descriptions(i64, %struct._GimpEnumDesc*) #1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_perspective_clone_mode_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_perspective_clone_mode_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([3 x %struct._GEnumValue], [3 x %struct._GEnumValue]* @gimp_perspective_clone_mode_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_perspective_clone_mode_get_type.type, align 8
  %1 = load i64, i64* @gimp_perspective_clone_mode_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0))
  %2 = load i64, i64* @gimp_perspective_clone_mode_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([3 x %struct._GimpEnumDesc], [3 x %struct._GimpEnumDesc]* @gimp_perspective_clone_mode_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_perspective_clone_mode_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_source_align_mode_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_source_align_mode_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([5 x %struct._GEnumValue], [5 x %struct._GEnumValue]* @gimp_source_align_mode_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_source_align_mode_get_type.type, align 8
  %1 = load i64, i64* @gimp_source_align_mode_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i32 0, i32 0))
  %2 = load i64, i64* @gimp_source_align_mode_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([5 x %struct._GimpEnumDesc], [5 x %struct._GimpEnumDesc]* @gimp_source_align_mode_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_source_align_mode_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_convolve_type_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_convolve_type_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([3 x %struct._GEnumValue], [3 x %struct._GEnumValue]* @gimp_convolve_type_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_convolve_type_get_type.type, align 8
  %1 = load i64, i64* @gimp_convolve_type_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0))
  %2 = load i64, i64* @gimp_convolve_type_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([3 x %struct._GimpEnumDesc], [3 x %struct._GimpEnumDesc]* @gimp_convolve_type_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_convolve_type_get_type.type, align 8
  ret i64 %3
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_ink_blob_type_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_ink_blob_type_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_enum_register_static(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([4 x %struct._GEnumValue], [4 x %struct._GEnumValue]* @gimp_ink_blob_type_get_type.values, i32 0, i32 0))
  store i64 %call, i64* @gimp_ink_blob_type_get_type.type, align 8
  %1 = load i64, i64* @gimp_ink_blob_type_get_type.type, align 8
  call void @gimp_type_set_translation_context(i64 %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i32 0, i32 0))
  %2 = load i64, i64* @gimp_ink_blob_type_get_type.type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %2, %struct._GimpEnumDesc* getelementptr inbounds ([4 x %struct._GimpEnumDesc], [4 x %struct._GimpEnumDesc]* @gimp_ink_blob_type_get_type.descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_ink_blob_type_get_type.type, align 8
  ret i64 %3
}

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
