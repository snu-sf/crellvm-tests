; ModuleID = './app/core/gimpbrushgenerated-load.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpBrush = type { %struct._GimpData, %struct._TempBuf*, %struct._TempBuf*, i32, %struct._GimpVector2, %struct._GimpVector2, i32, %struct._GimpBrushCache*, %struct._GimpBrushCache*, %struct._GimpBrushCache* }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._TempBuf = type { i32, i32, i32, i32, i32, i8* }
%struct._GimpVector2 = type { double, double }
%struct._GimpBrushCache = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._GEnumClass = type { %struct._GTypeClass, i32, i32, i32, %struct._GEnumValue* }
%struct._GEnumValue = type { i32, i8*, i8* }

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_brush_generated_load = private unnamed_addr constant [26 x i8] c"gimp_brush_generated_load\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"filename != NULL\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"g_path_is_absolute (filename)\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for reading: %s\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"GIMP-VBR\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"Fatal parse error in brush file '%s': Not a GIMP brush file.\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"1.5\00", align 1
@.str.10 = private unnamed_addr constant [77 x i8] c"Fatal parse error in brush file '%s': Unknown GIMP brush version in line %d.\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"Untitled\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"Invalid UTF-8 string in brush file '%s'.\00", align 1
@.str.13 = private unnamed_addr constant [75 x i8] c"Fatal parse error in brush file '%s': Unknown GIMP brush shape in line %d.\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"Line %d: %s\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"File is truncated in line %d\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"Error while reading brush file '%s': %s\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_brush_generated_load(%struct._GimpContext* %context, i8* %filename, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GList*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %filename.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %brush = alloca %struct._GimpBrush*, align 8
  %file = alloca %struct._IO_FILE*, align 8
  %string = alloca [256 x i8], align 16
  %linenum = alloca i32, align 4
  %name = alloca i8*, align 8
  %shape = alloca i32, align 4
  %have_shape = alloca i32, align 4
  %spikes = alloca i32, align 4
  %spacing = alloca double, align 8
  %radius = alloca double, align 8
  %hardness = alloca double, align 8
  %aspect_ratio = alloca double, align 8
  %angle = alloca double, align 8
  %enum_class = alloca %struct._GEnumClass*, align 8
  %shape_val = alloca %struct._GEnumValue*, align 8
  %msg = alloca i8*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i8* null, i8** %name, align 8
  store i32 0, i32* %shape, align 4
  store i32 0, i32* %have_shape, align 4
  store i32 2, i32* %spikes, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %filename.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_brush_generated_load, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i8*, i8** %filename.addr, align 8
  %call = call i32 @g_path_is_absolute(i8* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %do.body.1
  br label %if.end.4

if.else.3:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_brush_generated_load, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.4:                                         ; preds = %if.then.2
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  br label %do.body.6

do.body.6:                                        ; preds = %do.end.5
  %2 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp7 = icmp eq %struct._GError** %2, null
  br i1 %cmp7, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.6
  %3 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %4 = load %struct._GError*, %struct._GError** %3, align 8
  %cmp8 = icmp eq %struct._GError* %4, null
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %lor.lhs.false, %do.body.6
  br label %if.end.11

if.else.10:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_brush_generated_load, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  %5 = load i8*, i8** %filename.addr, align 8
  %call13 = call %struct._IO_FILE* @fopen(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  store %struct._IO_FILE* %call13, %struct._IO_FILE** %file, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %tobool14 = icmp ne %struct._IO_FILE* %6, null
  br i1 %tobool14, label %if.end.21, label %if.then.15

if.then.15:                                       ; preds = %do.end.12
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call16 = call i32 @gimp_data_error_quark() #5
  %call17 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0)) #6
  %8 = load i8*, i8** %filename.addr, align 8
  %call18 = call i8* @gimp_filename_to_utf8(i8* %8)
  %call19 = call i32* @__errno_location() #5
  %9 = load i32, i32* %call19, align 4
  %call20 = call i8* @g_strerror(i32 %9) #5
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %7, i32 %call16, i32 0, i8* %call17, i8* %call18, i8* %call20)
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.21:                                        ; preds = %do.end.12
  %call22 = call i32* @__errno_location() #5
  store i32 0, i32* %call22, align 4
  store i32 1, i32* %linenum, align 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %string, i32 0, i32 0
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call23 = call i8* @fgets(i8* %arraydecay, i32 256, %struct._IO_FILE* %10)
  %tobool24 = icmp ne i8* %call23, null
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %if.end.21
  br label %failed

if.end.26:                                        ; preds = %if.end.21
  %arraydecay27 = getelementptr inbounds [256 x i8], [256 x i8]* %string, i32 0, i32 0
  %call28 = call i32 @g_str_has_prefix(i8* %arraydecay27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0))
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.end.34, label %if.then.30

if.then.30:                                       ; preds = %if.end.26
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call31 = call i32 @gimp_data_error_quark() #5
  %call32 = call i8* @gettext(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i32 0)) #6
  %12 = load i8*, i8** %filename.addr, align 8
  %call33 = call i8* @gimp_filename_to_utf8(i8* %12)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %11, i32 %call31, i32 1, i8* %call32, i8* %call33)
  br label %failed

if.end.34:                                        ; preds = %if.end.26
  %call35 = call i32* @__errno_location() #5
  store i32 0, i32* %call35, align 4
  %13 = load i32, i32* %linenum, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %linenum, align 4
  %arraydecay36 = getelementptr inbounds [256 x i8], [256 x i8]* %string, i32 0, i32 0
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call37 = call i8* @fgets(i8* %arraydecay36, i32 256, %struct._IO_FILE* %14)
  %tobool38 = icmp ne i8* %call37, null
  br i1 %tobool38, label %if.end.40, label %if.then.39

if.then.39:                                       ; preds = %if.end.34
  br label %failed

if.end.40:                                        ; preds = %if.end.34
  %arraydecay41 = getelementptr inbounds [256 x i8], [256 x i8]* %string, i32 0, i32 0
  %call42 = call i32 @g_str_has_prefix(i8* %arraydecay41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0))
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.end.54, label %if.then.44

if.then.44:                                       ; preds = %if.end.40
  %arraydecay45 = getelementptr inbounds [256 x i8], [256 x i8]* %string, i32 0, i32 0
  %call46 = call i32 @g_str_has_prefix(i8* %arraydecay45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0))
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.else.52, label %if.then.48

if.then.48:                                       ; preds = %if.then.44
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call49 = call i32 @gimp_data_error_quark() #5
  %call50 = call i8* @gettext(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.10, i32 0, i32 0)) #6
  %16 = load i8*, i8** %filename.addr, align 8
  %call51 = call i8* @gimp_filename_to_utf8(i8* %16)
  %17 = load i32, i32* %linenum, align 4
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %15, i32 %call49, i32 1, i8* %call50, i8* %call51, i32 %17)
  br label %failed

if.else.52:                                       ; preds = %if.then.44
  store i32 1, i32* %have_shape, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.52
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.end.40
  %call55 = call i32* @__errno_location() #5
  store i32 0, i32* %call55, align 4
  %18 = load i32, i32* %linenum, align 4
  %inc56 = add nsw i32 %18, 1
  store i32 %inc56, i32* %linenum, align 4
  %arraydecay57 = getelementptr inbounds [256 x i8], [256 x i8]* %string, i32 0, i32 0
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call58 = call i8* @fgets(i8* %arraydecay57, i32 256, %struct._IO_FILE* %19)
  %tobool59 = icmp ne i8* %call58, null
  br i1 %tobool59, label %if.end.61, label %if.then.60

if.then.60:                                       ; preds = %if.end.54
  br label %failed

if.end.61:                                        ; preds = %if.end.54
  %arraydecay62 = getelementptr inbounds [256 x i8], [256 x i8]* %string, i32 0, i32 0
  %call63 = call i8* @g_strchug(i8* %arraydecay62)
  %call64 = call i8* @g_strchomp(i8* %call63)
  %arraydecay65 = getelementptr inbounds [256 x i8], [256 x i8]* %string, i32 0, i32 0
  %call66 = call i64 @strlen(i8* %arraydecay65) #7
  %cmp67 = icmp ult i64 %call66, 1
  br i1 %cmp67, label %if.then.68, label %if.end.72

if.then.68:                                       ; preds = %if.end.61
  %arraydecay69 = getelementptr inbounds [256 x i8], [256 x i8]* %string, i32 0, i32 0
  %call70 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0)) #6
  %call71 = call i64 @g_strlcpy(i8* %arraydecay69, i8* %call70, i64 256)
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.68, %if.end.61
  %arraydecay73 = getelementptr inbounds [256 x i8], [256 x i8]* %string, i32 0, i32 0
  %call74 = call i8* @gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i32 0, i32 0)) #6
  %20 = load i8*, i8** %filename.addr, align 8
  %call75 = call i8* @gimp_filename_to_utf8(i8* %20)
  %call76 = call noalias i8* (i8*, i64, i8*, ...) @gimp_any_to_utf8(i8* %arraydecay73, i64 -1, i8* %call74, i8* %call75)
  store i8* %call76, i8** %name, align 8
  %21 = load i32, i32* %have_shape, align 4
  %tobool77 = icmp ne i32 %21, 0
  br i1 %tobool77, label %if.then.78, label %if.end.99

if.then.78:                                       ; preds = %if.end.72
  %call79 = call i64 @gimp_brush_generated_shape_get_type() #5
  %call80 = call i8* @g_type_class_peek(i64 %call79)
  %22 = bitcast i8* %call80 to %struct._GEnumClass*
  store %struct._GEnumClass* %22, %struct._GEnumClass** %enum_class, align 8
  %call81 = call i32* @__errno_location() #5
  store i32 0, i32* %call81, align 4
  %23 = load i32, i32* %linenum, align 4
  %inc82 = add nsw i32 %23, 1
  store i32 %inc82, i32* %linenum, align 4
  %arraydecay83 = getelementptr inbounds [256 x i8], [256 x i8]* %string, i32 0, i32 0
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call84 = call i8* @fgets(i8* %arraydecay83, i32 256, %struct._IO_FILE* %24)
  %tobool85 = icmp ne i8* %call84, null
  br i1 %tobool85, label %if.end.87, label %if.then.86

if.then.86:                                       ; preds = %if.then.78
  br label %failed

if.end.87:                                        ; preds = %if.then.78
  %arraydecay88 = getelementptr inbounds [256 x i8], [256 x i8]* %string, i32 0, i32 0
  %call89 = call i8* @g_strchug(i8* %arraydecay88)
  %call90 = call i8* @g_strchomp(i8* %call89)
  %25 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %arraydecay91 = getelementptr inbounds [256 x i8], [256 x i8]* %string, i32 0, i32 0
  %call92 = call %struct._GEnumValue* @g_enum_get_value_by_nick(%struct._GEnumClass* %25, i8* %arraydecay91)
  store %struct._GEnumValue* %call92, %struct._GEnumValue** %shape_val, align 8
  %26 = load %struct._GEnumValue*, %struct._GEnumValue** %shape_val, align 8
  %tobool93 = icmp ne %struct._GEnumValue* %26, null
  br i1 %tobool93, label %if.end.98, label %if.then.94

if.then.94:                                       ; preds = %if.end.87
  %27 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call95 = call i32 @gimp_data_error_quark() #5
  %call96 = call i8* @gettext(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.13, i32 0, i32 0)) #6
  %28 = load i8*, i8** %filename.addr, align 8
  %call97 = call i8* @gimp_filename_to_utf8(i8* %28)
  %29 = load i32, i32* %linenum, align 4
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %27, i32 %call95, i32 1, i8* %call96, i8* %call97, i32 %29)
  br label %failed

if.end.98:                                        ; preds = %if.end.87
  %30 = load %struct._GEnumValue*, %struct._GEnumValue** %shape_val, align 8
  %value = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %30, i32 0, i32 0
  %31 = load i32, i32* %value, align 4
  store i32 %31, i32* %shape, align 4
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.end.72
  %call100 = call i32* @__errno_location() #5
  store i32 0, i32* %call100, align 4
  %32 = load i32, i32* %linenum, align 4
  %inc101 = add nsw i32 %32, 1
  store i32 %inc101, i32* %linenum, align 4
  %arraydecay102 = getelementptr inbounds [256 x i8], [256 x i8]* %string, i32 0, i32 0
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call103 = call i8* @fgets(i8* %arraydecay102, i32 256, %struct._IO_FILE* %33)
  %tobool104 = icmp ne i8* %call103, null
  br i1 %tobool104, label %if.end.106, label %if.then.105

if.then.105:                                      ; preds = %if.end.99
  br label %failed

if.end.106:                                       ; preds = %if.end.99
  %arraydecay107 = getelementptr inbounds [256 x i8], [256 x i8]* %string, i32 0, i32 0
  %call108 = call double @g_ascii_strtod(i8* %arraydecay107, i8** null)
  store double %call108, double* %spacing, align 8
  %call109 = call i32* @__errno_location() #5
  store i32 0, i32* %call109, align 4
  %34 = load i32, i32* %linenum, align 4
  %inc110 = add nsw i32 %34, 1
  store i32 %inc110, i32* %linenum, align 4
  %arraydecay111 = getelementptr inbounds [256 x i8], [256 x i8]* %string, i32 0, i32 0
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call112 = call i8* @fgets(i8* %arraydecay111, i32 256, %struct._IO_FILE* %35)
  %tobool113 = icmp ne i8* %call112, null
  br i1 %tobool113, label %if.end.115, label %if.then.114

if.then.114:                                      ; preds = %if.end.106
  br label %failed

if.end.115:                                       ; preds = %if.end.106
  %arraydecay116 = getelementptr inbounds [256 x i8], [256 x i8]* %string, i32 0, i32 0
  %call117 = call double @g_ascii_strtod(i8* %arraydecay116, i8** null)
  store double %call117, double* %radius, align 8
  %36 = load i32, i32* %have_shape, align 4
  %tobool118 = icmp ne i32 %36, 0
  br i1 %tobool118, label %if.then.119, label %if.end.139

if.then.119:                                      ; preds = %if.end.115
  %call120 = call i32* @__errno_location() #5
  store i32 0, i32* %call120, align 4
  %37 = load i32, i32* %linenum, align 4
  %inc121 = add nsw i32 %37, 1
  store i32 %inc121, i32* %linenum, align 4
  %arraydecay122 = getelementptr inbounds [256 x i8], [256 x i8]* %string, i32 0, i32 0
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call123 = call i8* @fgets(i8* %arraydecay122, i32 256, %struct._IO_FILE* %38)
  %tobool124 = icmp ne i8* %call123, null
  br i1 %tobool124, label %if.end.126, label %if.then.125

if.then.125:                                      ; preds = %if.then.119
  br label %failed

if.end.126:                                       ; preds = %if.then.119
  %arraydecay127 = getelementptr inbounds [256 x i8], [256 x i8]* %string, i32 0, i32 0
  %call128 = call i32 @atoi(i8* %arraydecay127) #7
  %cmp129 = icmp sgt i32 %call128, 20
  br i1 %cmp129, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.126
  br label %cond.end.137

cond.false:                                       ; preds = %if.end.126
  %arraydecay130 = getelementptr inbounds [256 x i8], [256 x i8]* %string, i32 0, i32 0
  %call131 = call i32 @atoi(i8* %arraydecay130) #7
  %cmp132 = icmp slt i32 %call131, 2
  br i1 %cmp132, label %cond.true.133, label %cond.false.134

cond.true.133:                                    ; preds = %cond.false
  br label %cond.end

cond.false.134:                                   ; preds = %cond.false
  %arraydecay135 = getelementptr inbounds [256 x i8], [256 x i8]* %string, i32 0, i32 0
  %call136 = call i32 @atoi(i8* %arraydecay135) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false.134, %cond.true.133
  %cond = phi i32 [ 2, %cond.true.133 ], [ %call136, %cond.false.134 ]
  br label %cond.end.137

cond.end.137:                                     ; preds = %cond.end, %cond.true
  %cond138 = phi i32 [ 20, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond138, i32* %spikes, align 4
  br label %if.end.139

if.end.139:                                       ; preds = %cond.end.137, %if.end.115
  %call140 = call i32* @__errno_location() #5
  store i32 0, i32* %call140, align 4
  %39 = load i32, i32* %linenum, align 4
  %inc141 = add nsw i32 %39, 1
  store i32 %inc141, i32* %linenum, align 4
  %arraydecay142 = getelementptr inbounds [256 x i8], [256 x i8]* %string, i32 0, i32 0
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call143 = call i8* @fgets(i8* %arraydecay142, i32 256, %struct._IO_FILE* %40)
  %tobool144 = icmp ne i8* %call143, null
  br i1 %tobool144, label %if.end.146, label %if.then.145

if.then.145:                                      ; preds = %if.end.139
  br label %failed

if.end.146:                                       ; preds = %if.end.139
  %arraydecay147 = getelementptr inbounds [256 x i8], [256 x i8]* %string, i32 0, i32 0
  %call148 = call double @g_ascii_strtod(i8* %arraydecay147, i8** null)
  store double %call148, double* %hardness, align 8
  %call149 = call i32* @__errno_location() #5
  store i32 0, i32* %call149, align 4
  %41 = load i32, i32* %linenum, align 4
  %inc150 = add nsw i32 %41, 1
  store i32 %inc150, i32* %linenum, align 4
  %arraydecay151 = getelementptr inbounds [256 x i8], [256 x i8]* %string, i32 0, i32 0
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call152 = call i8* @fgets(i8* %arraydecay151, i32 256, %struct._IO_FILE* %42)
  %tobool153 = icmp ne i8* %call152, null
  br i1 %tobool153, label %if.end.155, label %if.then.154

if.then.154:                                      ; preds = %if.end.146
  br label %failed

if.end.155:                                       ; preds = %if.end.146
  %arraydecay156 = getelementptr inbounds [256 x i8], [256 x i8]* %string, i32 0, i32 0
  %call157 = call double @g_ascii_strtod(i8* %arraydecay156, i8** null)
  store double %call157, double* %aspect_ratio, align 8
  %call158 = call i32* @__errno_location() #5
  store i32 0, i32* %call158, align 4
  %43 = load i32, i32* %linenum, align 4
  %inc159 = add nsw i32 %43, 1
  store i32 %inc159, i32* %linenum, align 4
  %arraydecay160 = getelementptr inbounds [256 x i8], [256 x i8]* %string, i32 0, i32 0
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call161 = call i8* @fgets(i8* %arraydecay160, i32 256, %struct._IO_FILE* %44)
  %tobool162 = icmp ne i8* %call161, null
  br i1 %tobool162, label %if.end.164, label %if.then.163

if.then.163:                                      ; preds = %if.end.155
  br label %failed

if.end.164:                                       ; preds = %if.end.155
  %arraydecay165 = getelementptr inbounds [256 x i8], [256 x i8]* %string, i32 0, i32 0
  %call166 = call double @g_ascii_strtod(i8* %arraydecay165, i8** null)
  store double %call166, double* %angle, align 8
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call167 = call i32 @fclose(%struct._IO_FILE* %45)
  %46 = load i8*, i8** %name, align 8
  %47 = load i32, i32* %shape, align 4
  %48 = load double, double* %radius, align 8
  %conv = fptrunc double %48 to float
  %49 = load i32, i32* %spikes, align 4
  %50 = load double, double* %hardness, align 8
  %conv168 = fptrunc double %50 to float
  %51 = load double, double* %aspect_ratio, align 8
  %conv169 = fptrunc double %51 to float
  %52 = load double, double* %angle, align 8
  %conv170 = fptrunc double %52 to float
  %call171 = call %struct._GimpData* @gimp_brush_generated_new(i8* %46, i32 %47, float %conv, i32 %49, float %conv168, float %conv169, float %conv170)
  %53 = bitcast %struct._GimpData* %call171 to %struct._GTypeInstance*
  %call172 = call i64 @gimp_brush_get_type() #5
  %call173 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call172)
  %54 = bitcast %struct._GTypeInstance* %call173 to %struct._GimpBrush*
  store %struct._GimpBrush* %54, %struct._GimpBrush** %brush, align 8
  %55 = load i8*, i8** %name, align 8
  call void @g_free(i8* %55)
  %56 = load double, double* %spacing, align 8
  %conv174 = fptosi double %56 to i32
  %57 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %spacing175 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %57, i32 0, i32 3
  store i32 %conv174, i32* %spacing175, align 4
  %58 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %59 = bitcast %struct._GimpBrush* %58 to i8*
  %call176 = call %struct._GList* @g_list_prepend(%struct._GList* null, i8* %59)
  store %struct._GList* %call176, %struct._GList** %retval
  br label %return

failed:                                           ; preds = %if.then.163, %if.then.154, %if.then.145, %if.then.125, %if.then.114, %if.then.105, %if.then.94, %if.then.86, %if.then.60, %if.then.48, %if.then.39, %if.then.30, %if.then.25
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call177 = call i32 @fclose(%struct._IO_FILE* %60)
  %61 = load i8*, i8** %name, align 8
  %tobool178 = icmp ne i8* %61, null
  br i1 %tobool178, label %if.then.179, label %if.end.180

if.then.179:                                      ; preds = %failed
  %62 = load i8*, i8** %name, align 8
  call void @g_free(i8* %62)
  br label %if.end.180

if.end.180:                                       ; preds = %if.then.179, %failed
  %63 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool181 = icmp ne %struct._GError** %63, null
  br i1 %tobool181, label %land.lhs.true, label %if.end.199

land.lhs.true:                                    ; preds = %if.end.180
  %64 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %65 = load %struct._GError*, %struct._GError** %64, align 8
  %cmp182 = icmp eq %struct._GError* %65, null
  br i1 %cmp182, label %if.then.184, label %if.end.199

if.then.184:                                      ; preds = %land.lhs.true
  %call185 = call i32* @__errno_location() #5
  %66 = load i32, i32* %call185, align 4
  %tobool186 = icmp ne i32 %66, 0
  br i1 %tobool186, label %if.then.187, label %if.else.192

if.then.187:                                      ; preds = %if.then.184
  %call188 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0)) #6
  %67 = load i32, i32* %linenum, align 4
  %call189 = call i32* @__errno_location() #5
  %68 = load i32, i32* %call189, align 4
  %call190 = call i8* @g_strerror(i32 %68) #5
  %call191 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call188, i32 %67, i8* %call190)
  store i8* %call191, i8** %msg, align 8
  br label %if.end.195

if.else.192:                                      ; preds = %if.then.184
  %call193 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i32 0, i32 0)) #6
  %69 = load i32, i32* %linenum, align 4
  %call194 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call193, i32 %69)
  store i8* %call194, i8** %msg, align 8
  br label %if.end.195

if.end.195:                                       ; preds = %if.else.192, %if.then.187
  %70 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call196 = call i32 @gimp_data_error_quark() #5
  %call197 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i32 0, i32 0)) #6
  %71 = load i8*, i8** %filename.addr, align 8
  %call198 = call i8* @gimp_filename_to_utf8(i8* %71)
  %72 = load i8*, i8** %msg, align 8
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %70, i32 %call196, i32 1, i8* %call197, i8* %call198, i8* %72)
  %73 = load i8*, i8** %msg, align 8
  call void @g_free(i8* %73)
  br label %if.end.199

if.end.199:                                       ; preds = %if.end.195, %land.lhs.true, %if.end.180
  store %struct._GList* null, %struct._GList** %retval
  br label %return

return:                                           ; preds = %if.end.199, %if.end.164, %if.then.15, %if.else.10, %if.else.3, %if.else
  %74 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %74
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i32 @g_path_is_absolute(i8*) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

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

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

declare i32 @g_str_has_prefix(i8*, i8*) #1

declare i8* @g_strchomp(i8*) #1

declare i8* @g_strchug(i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i64 @g_strlcpy(i8*, i8*, i64) #1

declare noalias i8* @gimp_any_to_utf8(i8*, i64, i8*, ...) #1

declare i8* @g_type_class_peek(i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_generated_shape_get_type() #2

declare %struct._GEnumValue* @g_enum_get_value_by_nick(%struct._GEnumClass*, i8*) #1

declare double @g_ascii_strtod(i8*, i8**) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #4

declare i32 @fclose(%struct._IO_FILE*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GimpData* @gimp_brush_generated_new(i8*, i32, float, i32, float, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_get_type() #2

declare void @g_free(i8*) #1

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
