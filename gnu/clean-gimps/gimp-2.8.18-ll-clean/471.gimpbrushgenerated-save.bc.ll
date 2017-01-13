; ModuleID = './app/core/gimpbrushgenerated-save.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpBrushGenerated = type { %struct._GimpBrush, i32, float, i32, float, float, float }
%struct._GimpBrush = type { %struct._GimpData, %struct._TempBuf*, %struct._TempBuf*, i32, %struct._GimpVector2, %struct._GimpVector2, i32, %struct._GimpBrushCache*, %struct._GimpBrushCache*, %struct._GimpBrushCache* }
%struct._TempBuf = type { i32, i32, i32, i32, i32, i8* }
%struct._GimpVector2 = type { double, double }
%struct._GimpBrushCache = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._GEnumClass = type { %struct._GTypeClass, i32, i32, i32, %struct._GEnumValue* }
%struct._GEnumValue = type { i32, i8*, i8* }

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_brush_generated_save = private unnamed_addr constant [26 x i8] c"gimp_brush_generated_save\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"name != NULL && *name != '\5C0'\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for writing: %s\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"GIMP-VBR\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"1.5\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"1.0\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"%.255s\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_brush_generated_save(%struct._GimpData* %data, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca %struct._GimpData*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %brush = alloca %struct._GimpBrushGenerated*, align 8
  %name = alloca i8*, align 8
  %file = alloca %struct._IO_FILE*, align 8
  %buf = alloca [39 x i8], align 16
  %have_shape = alloca i32, align 4
  %enum_class = alloca %struct._GEnumClass*, align 8
  %shape_val = alloca %struct._GEnumValue*, align 8
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %1 = bitcast %struct._GimpData* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_generated_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrushGenerated*
  store %struct._GimpBrushGenerated* %2, %struct._GimpBrushGenerated** %brush, align 8
  %3 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %4 = bitcast %struct._GimpData* %3 to i8*
  %call2 = call i8* @gimp_object_get_name(i8* %4)
  store i8* %call2, i8** %name, align 8
  store i32 0, i32* %have_shape, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %5 = load i8*, i8** %name, align 8
  %cmp = icmp ne i8* %5, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %6 = load i8*, i8** %name, align 8
  %7 = load i8, i8* %6, align 1
  %conv = sext i8 %7 to i32
  %cmp3 = icmp ne i32 %conv, 0
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_brush_generated_save, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %8 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %call5 = call i8* @gimp_data_get_filename(%struct._GimpData* %8)
  %call6 = call %struct._IO_FILE* @fopen(i8* %call5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  store %struct._IO_FILE* %call6, %struct._IO_FILE** %file, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %tobool = icmp ne %struct._IO_FILE* %9, null
  br i1 %tobool, label %if.end.14, label %if.then.7

if.then.7:                                        ; preds = %do.end
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call8 = call i32 @gimp_data_error_quark() #4
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0)) #5
  %11 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %call10 = call i8* @gimp_data_get_filename(%struct._GimpData* %11)
  %call11 = call i8* @gimp_filename_to_utf8(i8* %call10)
  %call12 = call i32* @__errno_location() #4
  %12 = load i32, i32* %call12, align 4
  %call13 = call i8* @g_strerror(i32 %12) #4
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %10, i32 %call8, i32 0, i8* %call9, i8* %call11, i8* %call13)
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %do.end
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0))
  %14 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %shape = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %14, i32 0, i32 1
  %15 = load i32, i32* %shape, align 4
  %cmp16 = icmp ne i32 %15, 0
  br i1 %cmp16, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.14
  %16 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %spikes = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %16, i32 0, i32 3
  %17 = load i32, i32* %spikes, align 4
  %cmp18 = icmp sgt i32 %17, 2
  br i1 %cmp18, label %if.then.20, label %if.else.22

if.then.20:                                       ; preds = %lor.lhs.false, %if.end.14
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0))
  store i32 1, i32* %have_shape, align 4
  br label %if.end.24

if.else.22:                                       ; preds = %lor.lhs.false
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.22, %if.then.20
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %21 = load i8*, i8** %name, align 8
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* %21)
  %22 = load i32, i32* %have_shape, align 4
  %tobool26 = icmp ne i32 %22, 0
  br i1 %tobool26, label %if.then.27, label %if.end.33

if.then.27:                                       ; preds = %if.end.24
  %call28 = call i64 @gimp_brush_generated_shape_get_type() #4
  %call29 = call i8* @g_type_class_peek(i64 %call28)
  %23 = bitcast i8* %call29 to %struct._GEnumClass*
  store %struct._GEnumClass* %23, %struct._GEnumClass** %enum_class, align 8
  %24 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %25 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %shape30 = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %25, i32 0, i32 1
  %26 = load i32, i32* %shape30, align 4
  %call31 = call %struct._GEnumValue* @g_enum_get_value(%struct._GEnumClass* %24, i32 %26)
  store %struct._GEnumValue* %call31, %struct._GEnumValue** %shape_val, align 8
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %28 = load %struct._GEnumValue*, %struct._GEnumValue** %shape_val, align 8
  %value_nick = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %28, i32 0, i32 2
  %29 = load i8*, i8** %value_nick, align 8
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* %29)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.27, %if.end.24
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %arraydecay = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %31 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %32 = bitcast %struct._GimpBrushGenerated* %31 to %struct._GTypeInstance*
  %call34 = call i64 @gimp_brush_get_type() #4
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call34)
  %33 = bitcast %struct._GTypeInstance* %call35 to %struct._GimpBrush*
  %call36 = call i32 @gimp_brush_get_spacing(%struct._GimpBrush* %33)
  %conv37 = sitofp i32 %call36 to double
  %call38 = call i8* @g_ascii_formatd(i8* %arraydecay, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), double %conv37)
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* %call38)
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %arraydecay40 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %35 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %radius = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %35, i32 0, i32 2
  %36 = load float, float* %radius, align 4
  %conv41 = fpext float %36 to double
  %call42 = call i8* @g_ascii_formatd(i8* %arraydecay40, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), double %conv41)
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* %call42)
  %37 = load i32, i32* %have_shape, align 4
  %tobool44 = icmp ne i32 %37, 0
  br i1 %tobool44, label %if.then.45, label %if.end.48

if.then.45:                                       ; preds = %if.end.33
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %39 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %spikes46 = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %39, i32 0, i32 3
  %40 = load i32, i32* %spikes46, align 4
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i32 %40)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.45, %if.end.33
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %arraydecay49 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %42 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %hardness = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %42, i32 0, i32 4
  %43 = load float, float* %hardness, align 4
  %conv50 = fpext float %43 to double
  %call51 = call i8* @g_ascii_formatd(i8* %arraydecay49, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), double %conv50)
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* %call51)
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %arraydecay53 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %45 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %aspect_ratio = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %45, i32 0, i32 5
  %46 = load float, float* %aspect_ratio, align 4
  %conv54 = fpext float %46 to double
  %call55 = call i8* @g_ascii_formatd(i8* %arraydecay53, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), double %conv54)
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* %call55)
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %arraydecay57 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %48 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %angle = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %48, i32 0, i32 6
  %49 = load float, float* %angle, align 4
  %conv58 = fpext float %49 to double
  %call59 = call i8* @g_ascii_formatd(i8* %arraydecay57, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), double %conv58)
  %call60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* %call59)
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call61 = call i32 @fclose(%struct._IO_FILE* %50)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.48, %if.then.7, %if.else
  %51 = load i32, i32* %retval
  ret i32 %51
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_generated_get_type() #2

declare i8* @gimp_object_get_name(i8*) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i8* @gimp_data_get_filename(%struct._GimpData*) #1

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_data_error_quark() #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare i8* @gimp_filename_to_utf8(i8*) #1

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i8* @g_type_class_peek(i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_generated_shape_get_type() #2

declare %struct._GEnumValue* @g_enum_get_value(%struct._GEnumClass*, i32) #1

declare i8* @g_ascii_formatd(i8*, i32, i8*, double) #1

declare i32 @gimp_brush_get_spacing(%struct._GimpBrush*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_get_type() #2

declare i32 @fclose(%struct._IO_FILE*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
