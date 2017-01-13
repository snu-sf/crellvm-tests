; ModuleID = './app/core/gimppalette-save.bc'
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
%struct._GimpPalette = type { %struct._GimpData, %struct._GList*, i32, i32 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._GimpPaletteEntry = type { %struct._GimpRGB, i8*, i32 }
%struct._GimpRGB = type { double, double, double, double }

@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for writing: %s\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"GIMP Palette\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Name: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Columns: %d\0A#\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"%3d %3d %3d\09%s\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_palette_save(%struct._GimpData* %data, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca %struct._GimpData*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %palette = alloca %struct._GimpPalette*, align 8
  %list = alloca %struct._GList*, align 8
  %file = alloca %struct._IO_FILE*, align 8
  %entry24 = alloca %struct._GimpPaletteEntry*, align 8
  %r = alloca i8, align 1
  %g = alloca i8, align 1
  %b = alloca i8, align 1
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %1 = bitcast %struct._GimpData* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_palette_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPalette*
  store %struct._GimpPalette* %2, %struct._GimpPalette** %palette, align 8
  %3 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %call2 = call i8* @gimp_data_get_filename(%struct._GimpData* %3)
  %call3 = call %struct._IO_FILE* @fopen(i8* %call2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0))
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %file, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %tobool = icmp ne %struct._IO_FILE* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call i32 @gimp_data_error_quark() #4
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0)) #5
  %6 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %call6 = call i8* @gimp_data_get_filename(%struct._GimpData* %6)
  %call7 = call i8* @gimp_filename_to_utf8(i8* %call6)
  %call8 = call i32* @__errno_location() #4
  %7 = load i32, i32* %call8, align 4
  %call9 = call i8* @g_strerror(i32 %7) #4
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %5, i32 %call4, i32 0, i8* %call5, i8* %call7, i8* %call9)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %10 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %11 = bitcast %struct._GimpPalette* %10 to i8*
  %call11 = call i8* @gimp_object_get_name(i8* %11)
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* %call11)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %13 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %call13 = call i32 @gimp_palette_get_columns(%struct._GimpPalette* %13)
  %cmp = icmp sgt i32 %call13, 256
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end.19

cond.false:                                       ; preds = %if.end
  %14 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %call14 = call i32 @gimp_palette_get_columns(%struct._GimpPalette* %14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %cond.true.16, label %cond.false.17

cond.true.16:                                     ; preds = %cond.false
  br label %cond.end

cond.false.17:                                    ; preds = %cond.false
  %15 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %call18 = call i32 @gimp_palette_get_columns(%struct._GimpPalette* %15)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.17, %cond.true.16
  %cond = phi i32 [ 0, %cond.true.16 ], [ %call18, %cond.false.17 ]
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.end, %cond.true
  %cond20 = phi i32 [ 256, %cond.true ], [ %cond, %cond.end ]
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 %cond20)
  %16 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %call22 = call %struct._GList* @gimp_palette_get_colors(%struct._GimpPalette* %16)
  store %struct._GList* %call22, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end.32, %cond.end.19
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool23 = icmp ne %struct._GList* %17, null
  br i1 %tobool23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %data25 = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 0
  %19 = load i8*, i8** %data25, align 8
  %20 = bitcast i8* %19 to %struct._GimpPaletteEntry*
  store %struct._GimpPaletteEntry* %20, %struct._GimpPaletteEntry** %entry24, align 8
  %21 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry24, align 8
  %color = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %21, i32 0, i32 0
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %color, i8* %r, i8* %g, i8* %b)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %23 = load i8, i8* %r, align 1
  %conv = zext i8 %23 to i32
  %24 = load i8, i8* %g, align 1
  %conv26 = zext i8 %24 to i32
  %25 = load i8, i8* %b, align 1
  %conv27 = zext i8 %25 to i32
  %26 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry24, align 8
  %name = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %26, i32 0, i32 1
  %27 = load i8*, i8** %name, align 8
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i32 %conv, i32 %conv26, i32 %conv27, i8* %27)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool29 = icmp ne %struct._GList* %28, null
  br i1 %tobool29, label %cond.true.30, label %cond.false.31

cond.true.30:                                     ; preds = %for.inc
  %29 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %29, i32 0, i32 1
  %30 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end.32

cond.false.31:                                    ; preds = %for.inc
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.31, %cond.true.30
  %cond33 = phi %struct._GList* [ %30, %cond.true.30 ], [ null, %cond.false.31 ]
  store %struct._GList* %cond33, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call34 = call i32 @fclose(%struct._IO_FILE* %31)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %32 = load i32, i32* %retval
  ret i32 %32
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_palette_get_type() #2

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

declare i8* @gimp_object_get_name(i8*) #1

declare i32 @gimp_palette_get_columns(%struct._GimpPalette*) #1

declare %struct._GList* @gimp_palette_get_colors(%struct._GimpPalette*) #1

declare void @gimp_rgb_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
