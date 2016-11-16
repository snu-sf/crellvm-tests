; ModuleID = './app/core/gimpgradient-load.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GMarkupParser = type { void (%struct._GMarkupParseContext*, i8*, i8**, i8**, i8*, %struct._GError**)*, void (%struct._GMarkupParseContext*, i8*, i8*, %struct._GError**)*, void (%struct._GMarkupParseContext*, i8*, i64, i8*, %struct._GError**)*, void (%struct._GMarkupParseContext*, i8*, i64, i8*, %struct._GError**)*, void (%struct._GMarkupParseContext*, %struct._GError*, i8*)* }
%struct._GMarkupParseContext = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque
%struct._GimpGradient = type { %struct._GimpData, %struct._GimpGradientSegment* }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpGradientSegment = type { double, double, double, i32, %struct._GimpRGB, i32, %struct._GimpRGB, i32, i32, %struct._GimpGradientSegment*, %struct._GimpGradientSegment* }
%struct._GimpRGB = type { double, double, double, double }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._GimpXmlParser = type opaque
%struct.SvgParser = type { %struct._GimpGradient*, %struct._GList*, %struct._GList* }
%struct.SvgStop = type { double, %struct._GimpRGB }

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_gradient_load = private unnamed_addr constant [19 x i8] c"gimp_gradient_load\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"filename != NULL\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"g_path_is_absolute (filename)\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for reading: %s\00", align 1
@.str.6 = private unnamed_addr constant [64 x i8] c"Fatal parse error in gradient file '%s': Read error in line %d.\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"GIMP Gradient\00", align 1
@.str.8 = private unnamed_addr constant [67 x i8] c"Fatal parse error in gradient file '%s': Not a GIMP gradient file.\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"mime-type\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"application/x-gimp-gradient\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"Name: \00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"Invalid UTF-8 string in gradient file '%s'.\00", align 1
@.str.13 = private unnamed_addr constant [69 x i8] c"Fatal parse error in gradient file '%s': File is corrupt in line %d.\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"%d %d %d %d\00", align 1
@.str.15 = private unnamed_addr constant [72 x i8] c"Fatal parse error in gradient file '%s': Corrupt segment %d in line %d.\00", align 1
@.str.16 = private unnamed_addr constant [67 x i8] c"Gradient file '%s' is corrupt: Segments do not span the range 0-1.\00", align 1
@__func__.gimp_gradient_load_svg = private unnamed_addr constant [23 x i8] c"gimp_gradient_load_svg\00", align 1
@markup_parser = internal constant %struct._GMarkupParser { void (%struct._GMarkupParseContext*, i8*, i8**, i8**, i8*, %struct._GError**)* @svg_parser_start_element, void (%struct._GMarkupParseContext*, i8*, i8*, %struct._GError**)* @svg_parser_end_element, void (%struct._GMarkupParseContext*, i8*, i64, i8*, %struct._GError**)* null, void (%struct._GMarkupParseContext*, i8*, i64, i8*, %struct._GError**)* null, void (%struct._GMarkupParseContext*, %struct._GError*, i8*)* null }, align 8
@.str.17 = private unnamed_addr constant [34 x i8] c"No linear gradients found in '%s'\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"Failed to import gradients from '%s': %s\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"linearGradient\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"image/svg+xml\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"style\00", align 1
@g_ascii_table = external constant i16*, align 8
@.str.26 = private unnamed_addr constant [11 x i8] c"stop-color\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"stop-opacity\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_gradient_load(%struct._GimpContext* %context, i8* %filename, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GList*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %filename.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  %prev = alloca %struct._GimpGradientSegment*, align 8
  %num_segments = alloca i32, align 4
  %i = alloca i32, align 4
  %file = alloca %struct._IO_FILE*, align 8
  %line = alloca [1024 x i8], align 16
  %linenum = alloca i32, align 4
  %utf8 = alloca i8*, align 8
  %seg = alloca %struct._GimpGradientSegment*, align 8
  %end = alloca i8*, align 8
  %color = alloca i32, align 4
  %type = alloca i32, align 4
  %left_color_type = alloca i32, align 4
  %right_color_type = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %filename.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_gradient_load, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_gradient_load, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_gradient_load, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
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
  %call16 = call i32 @gimp_data_error_quark() #6
  %call17 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0)) #5
  %8 = load i8*, i8** %filename.addr, align 8
  %call18 = call i8* @gimp_filename_to_utf8(i8* %8)
  %call19 = call i32* @__errno_location() #6
  %9 = load i32, i32* %call19, align 4
  %call20 = call i8* @g_strerror(i32 %9) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %7, i32 %call16, i32 0, i8* %call17, i8* %call18, i8* %call20)
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.21:                                        ; preds = %do.end.12
  store i32 1, i32* %linenum, align 4
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call22 = call i8* @fgets(i8* %arraydecay, i32 1024, %struct._IO_FILE* %10)
  %tobool23 = icmp ne i8* %call22, null
  br i1 %tobool23, label %if.end.29, label %if.then.24

if.then.24:                                       ; preds = %if.end.21
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call25 = call i32 @gimp_data_error_quark() #6
  %call26 = call i8* @gettext(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.6, i32 0, i32 0)) #5
  %12 = load i8*, i8** %filename.addr, align 8
  %call27 = call i8* @gimp_filename_to_utf8(i8* %12)
  %13 = load i32, i32* %linenum, align 4
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %11, i32 %call25, i32 1, i8* %call26, i8* %call27, i32 %13)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call28 = call i32 @fclose(%struct._IO_FILE* %14)
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.29:                                        ; preds = %if.end.21
  %arraydecay30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %call31 = call i32 @g_str_has_prefix(i8* %arraydecay30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0))
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.end.38, label %if.then.33

if.then.33:                                       ; preds = %if.end.29
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call34 = call i32 @gimp_data_error_quark() #6
  %call35 = call i8* @gettext(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.8, i32 0, i32 0)) #5
  %16 = load i8*, i8** %filename.addr, align 8
  %call36 = call i8* @gimp_filename_to_utf8(i8* %16)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %15, i32 %call34, i32 1, i8* %call35, i8* %call36)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call37 = call i32 @fclose(%struct._IO_FILE* %17)
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.38:                                        ; preds = %if.end.29
  %call39 = call i64 @gimp_gradient_get_type() #6
  %call40 = call i8* (i64, i8*, ...) @g_object_new(i64 %call39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i32 0, i32 0), i8* null)
  %18 = bitcast i8* %call40 to %struct._GimpGradient*
  store %struct._GimpGradient* %18, %struct._GimpGradient** %gradient, align 8
  %19 = load i32, i32* %linenum, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %linenum, align 4
  %arraydecay41 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call42 = call i8* @fgets(i8* %arraydecay41, i32 1024, %struct._IO_FILE* %20)
  %tobool43 = icmp ne i8* %call42, null
  br i1 %tobool43, label %if.end.49, label %if.then.44

if.then.44:                                       ; preds = %if.end.38
  %21 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call45 = call i32 @gimp_data_error_quark() #6
  %call46 = call i8* @gettext(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.6, i32 0, i32 0)) #5
  %22 = load i8*, i8** %filename.addr, align 8
  %call47 = call i8* @gimp_filename_to_utf8(i8* %22)
  %23 = load i32, i32* %linenum, align 4
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %21, i32 %call45, i32 1, i8* %call46, i8* %call47, i32 %23)
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call48 = call i32 @fclose(%struct._IO_FILE* %24)
  %25 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %26 = bitcast %struct._GimpGradient* %25 to i8*
  call void @g_object_unref(i8* %26)
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.49:                                        ; preds = %if.end.38
  %arraydecay50 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %call51 = call i32 @g_str_has_prefix(i8* %arraydecay50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0))
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then.53, label %if.else.72

if.then.53:                                       ; preds = %if.end.49
  %arraydecay54 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay54, i64 6
  %call55 = call i8* @g_strchug(i8* %add.ptr)
  %call56 = call i8* @g_strchomp(i8* %call55)
  %call57 = call i8* @gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i32 0, i32 0)) #5
  %27 = load i8*, i8** %filename.addr, align 8
  %call58 = call i8* @gimp_filename_to_utf8(i8* %27)
  %call59 = call noalias i8* (i8*, i64, i8*, ...) @gimp_any_to_utf8(i8* %call56, i64 -1, i8* %call57, i8* %call58)
  store i8* %call59, i8** %utf8, align 8
  %28 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %29 = bitcast %struct._GimpGradient* %28 to %struct._GTypeInstance*
  %call60 = call i64 @gimp_object_get_type() #6
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call60)
  %30 = bitcast %struct._GTypeInstance* %call61 to %struct._GimpObject*
  %31 = load i8*, i8** %utf8, align 8
  call void @gimp_object_take_name(%struct._GimpObject* %30, i8* %31)
  %32 = load i32, i32* %linenum, align 4
  %inc62 = add nsw i32 %32, 1
  store i32 %inc62, i32* %linenum, align 4
  %arraydecay63 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call64 = call i8* @fgets(i8* %arraydecay63, i32 1024, %struct._IO_FILE* %33)
  %tobool65 = icmp ne i8* %call64, null
  br i1 %tobool65, label %if.end.71, label %if.then.66

if.then.66:                                       ; preds = %if.then.53
  %34 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call67 = call i32 @gimp_data_error_quark() #6
  %call68 = call i8* @gettext(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.6, i32 0, i32 0)) #5
  %35 = load i8*, i8** %filename.addr, align 8
  %call69 = call i8* @gimp_filename_to_utf8(i8* %35)
  %36 = load i32, i32* %linenum, align 4
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %34, i32 %call67, i32 1, i8* %call68, i8* %call69, i32 %36)
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call70 = call i32 @fclose(%struct._IO_FILE* %37)
  %38 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %39 = bitcast %struct._GimpGradient* %38 to i8*
  call void @g_object_unref(i8* %39)
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.71:                                        ; preds = %if.then.53
  br label %if.end.76

if.else.72:                                       ; preds = %if.end.49
  %40 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %41 = bitcast %struct._GimpGradient* %40 to %struct._GTypeInstance*
  %call73 = call i64 @gimp_object_get_type() #6
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call73)
  %42 = bitcast %struct._GTypeInstance* %call74 to %struct._GimpObject*
  %43 = load i8*, i8** %filename.addr, align 8
  %call75 = call noalias i8* @g_filename_display_basename(i8* %43)
  call void @gimp_object_take_name(%struct._GimpObject* %42, i8* %call75)
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.72, %if.end.71
  %arraydecay77 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %call78 = call i32 @atoi(i8* %arraydecay77) #7
  store i32 %call78, i32* %num_segments, align 4
  %44 = load i32, i32* %num_segments, align 4
  %cmp79 = icmp slt i32 %44, 1
  br i1 %cmp79, label %if.then.80, label %if.end.85

if.then.80:                                       ; preds = %if.end.76
  %45 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call81 = call i32 @gimp_data_error_quark() #6
  %call82 = call i8* @gettext(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.13, i32 0, i32 0)) #5
  %46 = load i8*, i8** %filename.addr, align 8
  %call83 = call i8* @gimp_filename_to_utf8(i8* %46)
  %47 = load i32, i32* %linenum, align 4
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %45, i32 %call81, i32 1, i8* %call82, i8* %call83, i32 %47)
  %48 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %49 = bitcast %struct._GimpGradient* %48 to i8*
  call void @g_object_unref(i8* %49)
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call84 = call i32 @fclose(%struct._IO_FILE* %50)
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.85:                                        ; preds = %if.end.76
  store %struct._GimpGradientSegment* null, %struct._GimpGradientSegment** %prev, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.85
  %51 = load i32, i32* %i, align 4
  %52 = load i32, i32* %num_segments, align 4
  %cmp86 = icmp slt i32 %51, %52
  br i1 %cmp86, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call87 = call %struct._GimpGradientSegment* @gimp_gradient_segment_new()
  store %struct._GimpGradientSegment* %call87, %struct._GimpGradientSegment** %seg, align 8
  %53 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev, align 8
  %54 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %prev88 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %54, i32 0, i32 9
  store %struct._GimpGradientSegment* %53, %struct._GimpGradientSegment** %prev88, align 8
  %55 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev, align 8
  %tobool89 = icmp ne %struct._GimpGradientSegment* %55, null
  br i1 %tobool89, label %if.then.90, label %if.else.91

if.then.90:                                       ; preds = %for.body
  %56 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %57 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev, align 8
  %next = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %57, i32 0, i32 10
  store %struct._GimpGradientSegment* %56, %struct._GimpGradientSegment** %next, align 8
  br label %if.end.92

if.else.91:                                       ; preds = %for.body
  %58 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %59 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %segments = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %59, i32 0, i32 1
  store %struct._GimpGradientSegment* %58, %struct._GimpGradientSegment** %segments, align 8
  br label %if.end.92

if.end.92:                                        ; preds = %if.else.91, %if.then.90
  %60 = load i32, i32* %linenum, align 4
  %inc93 = add nsw i32 %60, 1
  store i32 %inc93, i32* %linenum, align 4
  %arraydecay94 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call95 = call i8* @fgets(i8* %arraydecay94, i32 1024, %struct._IO_FILE* %61)
  %tobool96 = icmp ne i8* %call95, null
  br i1 %tobool96, label %if.end.102, label %if.then.97

if.then.97:                                       ; preds = %if.end.92
  %62 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call98 = call i32 @gimp_data_error_quark() #6
  %call99 = call i8* @gettext(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.6, i32 0, i32 0)) #5
  %63 = load i8*, i8** %filename.addr, align 8
  %call100 = call i8* @gimp_filename_to_utf8(i8* %63)
  %64 = load i32, i32* %linenum, align 4
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %62, i32 %call98, i32 1, i8* %call99, i8* %call100, i32 %64)
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call101 = call i32 @fclose(%struct._IO_FILE* %65)
  %66 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %67 = bitcast %struct._GimpGradient* %66 to i8*
  call void @g_object_unref(i8* %67)
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.102:                                       ; preds = %if.end.92
  %arraydecay103 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %call104 = call double @g_ascii_strtod(i8* %arraydecay103, i8** %end)
  %68 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %68, i32 0, i32 0
  store double %call104, double* %left, align 8
  %69 = load i8*, i8** %end, align 8
  %tobool105 = icmp ne i8* %69, null
  br i1 %tobool105, label %land.lhs.true, label %if.end.110

land.lhs.true:                                    ; preds = %if.end.102
  %call106 = call i32* @__errno_location() #6
  %70 = load i32, i32* %call106, align 4
  %cmp107 = icmp ne i32 %70, 34
  br i1 %cmp107, label %if.then.108, label %if.end.110

if.then.108:                                      ; preds = %land.lhs.true
  %71 = load i8*, i8** %end, align 8
  %call109 = call double @g_ascii_strtod(i8* %71, i8** %end)
  %72 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %middle = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %72, i32 0, i32 1
  store double %call109, double* %middle, align 8
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.108, %land.lhs.true, %if.end.102
  %73 = load i8*, i8** %end, align 8
  %tobool111 = icmp ne i8* %73, null
  br i1 %tobool111, label %land.lhs.true.112, label %if.end.117

land.lhs.true.112:                                ; preds = %if.end.110
  %call113 = call i32* @__errno_location() #6
  %74 = load i32, i32* %call113, align 4
  %cmp114 = icmp ne i32 %74, 34
  br i1 %cmp114, label %if.then.115, label %if.end.117

if.then.115:                                      ; preds = %land.lhs.true.112
  %75 = load i8*, i8** %end, align 8
  %call116 = call double @g_ascii_strtod(i8* %75, i8** %end)
  %76 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %76, i32 0, i32 2
  store double %call116, double* %right, align 8
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.115, %land.lhs.true.112, %if.end.110
  %77 = load i8*, i8** %end, align 8
  %tobool118 = icmp ne i8* %77, null
  br i1 %tobool118, label %land.lhs.true.119, label %if.end.124

land.lhs.true.119:                                ; preds = %if.end.117
  %call120 = call i32* @__errno_location() #6
  %78 = load i32, i32* %call120, align 4
  %cmp121 = icmp ne i32 %78, 34
  br i1 %cmp121, label %if.then.122, label %if.end.124

if.then.122:                                      ; preds = %land.lhs.true.119
  %79 = load i8*, i8** %end, align 8
  %call123 = call double @g_ascii_strtod(i8* %79, i8** %end)
  %80 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left_color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %80, i32 0, i32 4
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %left_color, i32 0, i32 0
  store double %call123, double* %r, align 8
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.122, %land.lhs.true.119, %if.end.117
  %81 = load i8*, i8** %end, align 8
  %tobool125 = icmp ne i8* %81, null
  br i1 %tobool125, label %land.lhs.true.126, label %if.end.132

land.lhs.true.126:                                ; preds = %if.end.124
  %call127 = call i32* @__errno_location() #6
  %82 = load i32, i32* %call127, align 4
  %cmp128 = icmp ne i32 %82, 34
  br i1 %cmp128, label %if.then.129, label %if.end.132

if.then.129:                                      ; preds = %land.lhs.true.126
  %83 = load i8*, i8** %end, align 8
  %call130 = call double @g_ascii_strtod(i8* %83, i8** %end)
  %84 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left_color131 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %84, i32 0, i32 4
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %left_color131, i32 0, i32 1
  store double %call130, double* %g, align 8
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.129, %land.lhs.true.126, %if.end.124
  %85 = load i8*, i8** %end, align 8
  %tobool133 = icmp ne i8* %85, null
  br i1 %tobool133, label %land.lhs.true.134, label %if.end.140

land.lhs.true.134:                                ; preds = %if.end.132
  %call135 = call i32* @__errno_location() #6
  %86 = load i32, i32* %call135, align 4
  %cmp136 = icmp ne i32 %86, 34
  br i1 %cmp136, label %if.then.137, label %if.end.140

if.then.137:                                      ; preds = %land.lhs.true.134
  %87 = load i8*, i8** %end, align 8
  %call138 = call double @g_ascii_strtod(i8* %87, i8** %end)
  %88 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left_color139 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %88, i32 0, i32 4
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %left_color139, i32 0, i32 2
  store double %call138, double* %b, align 8
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.137, %land.lhs.true.134, %if.end.132
  %89 = load i8*, i8** %end, align 8
  %tobool141 = icmp ne i8* %89, null
  br i1 %tobool141, label %land.lhs.true.142, label %if.end.148

land.lhs.true.142:                                ; preds = %if.end.140
  %call143 = call i32* @__errno_location() #6
  %90 = load i32, i32* %call143, align 4
  %cmp144 = icmp ne i32 %90, 34
  br i1 %cmp144, label %if.then.145, label %if.end.148

if.then.145:                                      ; preds = %land.lhs.true.142
  %91 = load i8*, i8** %end, align 8
  %call146 = call double @g_ascii_strtod(i8* %91, i8** %end)
  %92 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left_color147 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %92, i32 0, i32 4
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %left_color147, i32 0, i32 3
  store double %call146, double* %a, align 8
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.145, %land.lhs.true.142, %if.end.140
  %93 = load i8*, i8** %end, align 8
  %tobool149 = icmp ne i8* %93, null
  br i1 %tobool149, label %land.lhs.true.150, label %if.end.156

land.lhs.true.150:                                ; preds = %if.end.148
  %call151 = call i32* @__errno_location() #6
  %94 = load i32, i32* %call151, align 4
  %cmp152 = icmp ne i32 %94, 34
  br i1 %cmp152, label %if.then.153, label %if.end.156

if.then.153:                                      ; preds = %land.lhs.true.150
  %95 = load i8*, i8** %end, align 8
  %call154 = call double @g_ascii_strtod(i8* %95, i8** %end)
  %96 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right_color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %96, i32 0, i32 6
  %r155 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %right_color, i32 0, i32 0
  store double %call154, double* %r155, align 8
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.153, %land.lhs.true.150, %if.end.148
  %97 = load i8*, i8** %end, align 8
  %tobool157 = icmp ne i8* %97, null
  br i1 %tobool157, label %land.lhs.true.158, label %if.end.165

land.lhs.true.158:                                ; preds = %if.end.156
  %call159 = call i32* @__errno_location() #6
  %98 = load i32, i32* %call159, align 4
  %cmp160 = icmp ne i32 %98, 34
  br i1 %cmp160, label %if.then.161, label %if.end.165

if.then.161:                                      ; preds = %land.lhs.true.158
  %99 = load i8*, i8** %end, align 8
  %call162 = call double @g_ascii_strtod(i8* %99, i8** %end)
  %100 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right_color163 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %100, i32 0, i32 6
  %g164 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %right_color163, i32 0, i32 1
  store double %call162, double* %g164, align 8
  br label %if.end.165

if.end.165:                                       ; preds = %if.then.161, %land.lhs.true.158, %if.end.156
  %101 = load i8*, i8** %end, align 8
  %tobool166 = icmp ne i8* %101, null
  br i1 %tobool166, label %land.lhs.true.167, label %if.end.174

land.lhs.true.167:                                ; preds = %if.end.165
  %call168 = call i32* @__errno_location() #6
  %102 = load i32, i32* %call168, align 4
  %cmp169 = icmp ne i32 %102, 34
  br i1 %cmp169, label %if.then.170, label %if.end.174

if.then.170:                                      ; preds = %land.lhs.true.167
  %103 = load i8*, i8** %end, align 8
  %call171 = call double @g_ascii_strtod(i8* %103, i8** %end)
  %104 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right_color172 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %104, i32 0, i32 6
  %b173 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %right_color172, i32 0, i32 2
  store double %call171, double* %b173, align 8
  br label %if.end.174

if.end.174:                                       ; preds = %if.then.170, %land.lhs.true.167, %if.end.165
  %105 = load i8*, i8** %end, align 8
  %tobool175 = icmp ne i8* %105, null
  br i1 %tobool175, label %land.lhs.true.176, label %if.end.183

land.lhs.true.176:                                ; preds = %if.end.174
  %call177 = call i32* @__errno_location() #6
  %106 = load i32, i32* %call177, align 4
  %cmp178 = icmp ne i32 %106, 34
  br i1 %cmp178, label %if.then.179, label %if.end.183

if.then.179:                                      ; preds = %land.lhs.true.176
  %107 = load i8*, i8** %end, align 8
  %call180 = call double @g_ascii_strtod(i8* %107, i8** %end)
  %108 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right_color181 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %108, i32 0, i32 6
  %a182 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %right_color181, i32 0, i32 3
  store double %call180, double* %a182, align 8
  br label %if.end.183

if.end.183:                                       ; preds = %if.then.179, %land.lhs.true.176, %if.end.174
  %call184 = call i32* @__errno_location() #6
  %109 = load i32, i32* %call184, align 4
  %cmp185 = icmp ne i32 %109, 34
  br i1 %cmp185, label %if.then.186, label %if.else.197

if.then.186:                                      ; preds = %if.end.183
  %110 = load i8*, i8** %end, align 8
  %call187 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %110, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i32* %type, i32* %color, i32* %left_color_type, i32* %right_color_type) #5
  switch i32 %call187, label %sw.default [
    i32 4, label %sw.bb
    i32 2, label %sw.bb.190
  ]

sw.bb:                                            ; preds = %if.then.186
  %111 = load i32, i32* %left_color_type, align 4
  %112 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left_color_type188 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %112, i32 0, i32 3
  store i32 %111, i32* %left_color_type188, align 4
  %113 = load i32, i32* %right_color_type, align 4
  %114 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right_color_type189 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %114, i32 0, i32 5
  store i32 %113, i32* %right_color_type189, align 4
  br label %sw.bb.190

sw.bb.190:                                        ; preds = %if.then.186, %sw.bb
  %115 = load i32, i32* %type, align 4
  %116 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %type191 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %116, i32 0, i32 7
  store i32 %115, i32* %type191, align 4
  %117 = load i32, i32* %color, align 4
  %118 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %color192 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %118, i32 0, i32 8
  store i32 %117, i32* %color192, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.186
  %119 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call193 = call i32 @gimp_data_error_quark() #6
  %call194 = call i8* @gettext(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.15, i32 0, i32 0)) #5
  %120 = load i8*, i8** %filename.addr, align 8
  %call195 = call i8* @gimp_filename_to_utf8(i8* %120)
  %121 = load i32, i32* %i, align 4
  %122 = load i32, i32* %linenum, align 4
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %119, i32 %call193, i32 1, i8* %call194, i8* %call195, i32 %121, i32 %122)
  %123 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %124 = bitcast %struct._GimpGradient* %123 to i8*
  call void @g_object_unref(i8* %124)
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call196 = call i32 @fclose(%struct._IO_FILE* %125)
  store %struct._GList* null, %struct._GList** %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.190
  br label %if.end.202

if.else.197:                                      ; preds = %if.end.183
  %126 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call198 = call i32 @gimp_data_error_quark() #6
  %call199 = call i8* @gettext(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.15, i32 0, i32 0)) #5
  %127 = load i8*, i8** %filename.addr, align 8
  %call200 = call i8* @gimp_filename_to_utf8(i8* %127)
  %128 = load i32, i32* %i, align 4
  %129 = load i32, i32* %linenum, align 4
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %126, i32 %call198, i32 1, i8* %call199, i8* %call200, i32 %128, i32 %129)
  %130 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %131 = bitcast %struct._GimpGradient* %130 to i8*
  call void @g_object_unref(i8* %131)
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call201 = call i32 @fclose(%struct._IO_FILE* %132)
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.202:                                       ; preds = %sw.epilog
  %133 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev, align 8
  %tobool203 = icmp ne %struct._GimpGradientSegment* %133, null
  br i1 %tobool203, label %land.lhs.true.204, label %lor.lhs.false.208

land.lhs.true.204:                                ; preds = %if.end.202
  %134 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev, align 8
  %right205 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %134, i32 0, i32 2
  %135 = load double, double* %right205, align 8
  %136 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left206 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %136, i32 0, i32 0
  %137 = load double, double* %left206, align 8
  %cmp207 = fcmp olt double %135, %137
  br i1 %cmp207, label %if.then.213, label %lor.lhs.false.208

lor.lhs.false.208:                                ; preds = %land.lhs.true.204, %if.end.202
  %138 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev, align 8
  %tobool209 = icmp ne %struct._GimpGradientSegment* %138, null
  br i1 %tobool209, label %if.end.218, label %land.lhs.true.210

land.lhs.true.210:                                ; preds = %lor.lhs.false.208
  %139 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left211 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %139, i32 0, i32 0
  %140 = load double, double* %left211, align 8
  %cmp212 = fcmp olt double 0.000000e+00, %140
  br i1 %cmp212, label %if.then.213, label %if.end.218

if.then.213:                                      ; preds = %land.lhs.true.210, %land.lhs.true.204
  %141 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call214 = call i32 @gimp_data_error_quark() #6
  %call215 = call i8* @gettext(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.16, i32 0, i32 0)) #5
  %142 = load i8*, i8** %filename.addr, align 8
  %call216 = call i8* @gimp_filename_to_utf8(i8* %142)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %141, i32 %call214, i32 1, i8* %call215, i8* %call216)
  %143 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %144 = bitcast %struct._GimpGradient* %143 to i8*
  call void @g_object_unref(i8* %144)
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call217 = call i32 @fclose(%struct._IO_FILE* %145)
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.218:                                       ; preds = %land.lhs.true.210, %lor.lhs.false.208
  %146 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  store %struct._GimpGradientSegment* %146, %struct._GimpGradientSegment** %prev, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.218
  %147 = load i32, i32* %i, align 4
  %inc219 = add nsw i32 %147, 1
  store i32 %inc219, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %148 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev, align 8
  %right220 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %148, i32 0, i32 2
  %149 = load double, double* %right220, align 8
  %cmp221 = fcmp olt double %149, 1.000000e+00
  br i1 %cmp221, label %if.then.222, label %if.end.227

if.then.222:                                      ; preds = %for.end
  %150 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call223 = call i32 @gimp_data_error_quark() #6
  %call224 = call i8* @gettext(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.16, i32 0, i32 0)) #5
  %151 = load i8*, i8** %filename.addr, align 8
  %call225 = call i8* @gimp_filename_to_utf8(i8* %151)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %150, i32 %call223, i32 1, i8* %call224, i8* %call225)
  %152 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %153 = bitcast %struct._GimpGradient* %152 to i8*
  call void @g_object_unref(i8* %153)
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call226 = call i32 @fclose(%struct._IO_FILE* %154)
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.227:                                       ; preds = %for.end
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call228 = call i32 @fclose(%struct._IO_FILE* %155)
  %156 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %157 = bitcast %struct._GimpGradient* %156 to i8*
  %call229 = call %struct._GList* @g_list_prepend(%struct._GList* null, i8* %157)
  store %struct._GList* %call229, %struct._GList** %retval
  br label %return

return:                                           ; preds = %if.end.227, %if.then.222, %if.then.213, %if.else.197, %sw.default, %if.then.97, %if.then.80, %if.then.66, %if.then.44, %if.then.33, %if.then.24, %if.then.15, %if.else.10, %if.else.3, %if.else
  %158 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %158
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

declare i32 @fclose(%struct._IO_FILE*) #1

declare i32 @g_str_has_prefix(i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_gradient_get_type() #2

declare void @g_object_unref(i8*) #1

declare noalias i8* @gimp_any_to_utf8(i8*, i64, i8*, ...) #1

declare i8* @g_strchomp(i8*) #1

declare i8* @g_strchug(i8*) #1

declare void @gimp_object_take_name(%struct._GimpObject*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare noalias i8* @g_filename_display_basename(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #4

declare %struct._GimpGradientSegment* @gimp_gradient_segment_new() #1

declare double @g_ascii_strtod(i8*, i8**) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #3

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_gradient_load_svg(%struct._GimpContext* %context, i8* %filename, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GList*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %filename.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %xml_parser = alloca %struct._GimpXmlParser*, align 8
  %parser = alloca %struct.SvgParser, align 8
  %success = alloca i32, align 4
  %msg = alloca i8*, align 8
  %list = alloca %struct._GList*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = bitcast %struct.SvgParser* %parser to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 24, i32 8, i1 false)
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load i8*, i8** %filename.addr, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_gradient_load_svg, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %2 = load i8*, i8** %filename.addr, align 8
  %call = call i32 @g_path_is_absolute(i8* %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %do.body.1
  br label %if.end.4

if.else.3:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_gradient_load_svg, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.4:                                         ; preds = %if.then.2
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  br label %do.body.6

do.body.6:                                        ; preds = %do.end.5
  %3 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp7 = icmp eq %struct._GError** %3, null
  br i1 %cmp7, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.6
  %4 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %5 = load %struct._GError*, %struct._GError** %4, align 8
  %cmp8 = icmp eq %struct._GError* %5, null
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %lor.lhs.false, %do.body.6
  br label %if.end.11

if.else.10:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_gradient_load_svg, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  %6 = bitcast %struct.SvgParser* %parser to i8*
  %call13 = call %struct._GimpXmlParser* @gimp_xml_parser_new(%struct._GMarkupParser* @markup_parser, i8* %6)
  store %struct._GimpXmlParser* %call13, %struct._GimpXmlParser** %xml_parser, align 8
  %7 = load %struct._GimpXmlParser*, %struct._GimpXmlParser** %xml_parser, align 8
  %8 = load i8*, i8** %filename.addr, align 8
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call14 = call i32 @gimp_xml_parser_parse_file(%struct._GimpXmlParser* %7, i8* %8, %struct._GError** %9)
  store i32 %call14, i32* %success, align 4
  %10 = load %struct._GimpXmlParser*, %struct._GimpXmlParser** %xml_parser, align 8
  call void @gimp_xml_parser_free(%struct._GimpXmlParser* %10)
  %11 = load i32, i32* %success, align 4
  %tobool15 = icmp ne i32 %11, 0
  br i1 %tobool15, label %land.lhs.true, label %if.else.21

land.lhs.true:                                    ; preds = %do.end.12
  %gradients = getelementptr inbounds %struct.SvgParser, %struct.SvgParser* %parser, i32 0, i32 1
  %12 = load %struct._GList*, %struct._GList** %gradients, align 8
  %tobool16 = icmp ne %struct._GList* %12, null
  br i1 %tobool16, label %if.else.21, label %if.then.17

if.then.17:                                       ; preds = %land.lhs.true
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call18 = call i32 @gimp_data_error_quark() #6
  %call19 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i32 0, i32 0)) #5
  %14 = load i8*, i8** %filename.addr, align 8
  %call20 = call i8* @gimp_filename_to_utf8(i8* %14)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %13, i32 %call18, i32 1, i8* %call19, i8* %call20)
  br label %if.end.31

if.else.21:                                       ; preds = %land.lhs.true, %do.end.12
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool22 = icmp ne %struct._GError** %15, null
  br i1 %tobool22, label %land.lhs.true.23, label %if.end.30

land.lhs.true.23:                                 ; preds = %if.else.21
  %16 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %17 = load %struct._GError*, %struct._GError** %16, align 8
  %tobool24 = icmp ne %struct._GError* %17, null
  br i1 %tobool24, label %if.then.25, label %if.end.30

if.then.25:                                       ; preds = %land.lhs.true.23
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %19 = load %struct._GError*, %struct._GError** %18, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %19, i32 0, i32 2
  %20 = load i8*, i8** %message, align 8
  store i8* %20, i8** %msg, align 8
  %call26 = call i8* @gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i32 0, i32 0)) #5
  %21 = load i8*, i8** %filename.addr, align 8
  %call27 = call i8* @gimp_filename_to_utf8(i8* %21)
  %22 = load i8*, i8** %msg, align 8
  %call28 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call26, i8* %call27, i8* %22)
  %23 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %24 = load %struct._GError*, %struct._GError** %23, align 8
  %message29 = getelementptr inbounds %struct._GError, %struct._GError* %24, i32 0, i32 2
  store i8* %call28, i8** %message29, align 8
  %25 = load i8*, i8** %msg, align 8
  call void @g_free(i8* %25)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.25, %land.lhs.true.23, %if.else.21
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.17
  %gradient = getelementptr inbounds %struct.SvgParser, %struct.SvgParser* %parser, i32 0, i32 0
  %26 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %tobool32 = icmp ne %struct._GimpGradient* %26, null
  br i1 %tobool32, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.end.31
  %gradient34 = getelementptr inbounds %struct.SvgParser, %struct.SvgParser* %parser, i32 0, i32 0
  %27 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient34, align 8
  %28 = bitcast %struct._GimpGradient* %27 to i8*
  call void @g_object_unref(i8* %28)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %if.end.31
  %stops = getelementptr inbounds %struct.SvgParser, %struct.SvgParser* %parser, i32 0, i32 2
  %29 = load %struct._GList*, %struct._GList** %stops, align 8
  %tobool36 = icmp ne %struct._GList* %29, null
  br i1 %tobool36, label %if.then.37, label %if.end.43

if.then.37:                                       ; preds = %if.end.35
  %stops38 = getelementptr inbounds %struct.SvgParser, %struct.SvgParser* %parser, i32 0, i32 2
  %30 = load %struct._GList*, %struct._GList** %stops38, align 8
  store %struct._GList* %30, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.37
  %31 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool39 = icmp ne %struct._GList* %31, null
  br i1 %tobool39, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body.40

do.body.40:                                       ; preds = %for.body
  %32 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %32, i32 0, i32 0
  %33 = load i8*, i8** %data, align 8
  call void @g_slice_free1(i64 40, i8* %33)
  br label %do.end.41

do.end.41:                                        ; preds = %do.body.40
  br label %for.inc

for.inc:                                          ; preds = %do.end.41
  %34 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %34, i32 0, i32 1
  %35 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %35, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %stops42 = getelementptr inbounds %struct.SvgParser, %struct.SvgParser* %parser, i32 0, i32 2
  %36 = load %struct._GList*, %struct._GList** %stops42, align 8
  call void @g_list_free(%struct._GList* %36)
  br label %if.end.43

if.end.43:                                        ; preds = %for.end, %if.end.35
  %gradients44 = getelementptr inbounds %struct.SvgParser, %struct.SvgParser* %parser, i32 0, i32 1
  %37 = load %struct._GList*, %struct._GList** %gradients44, align 8
  %call45 = call %struct._GList* @g_list_reverse(%struct._GList* %37)
  store %struct._GList* %call45, %struct._GList** %retval
  br label %return

return:                                           ; preds = %if.end.43, %if.else.10, %if.else.3, %if.else
  %38 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %38
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare %struct._GimpXmlParser* @gimp_xml_parser_new(%struct._GMarkupParser*, i8*) #1

declare i32 @gimp_xml_parser_parse_file(%struct._GimpXmlParser*, i8*, %struct._GError**) #1

declare void @gimp_xml_parser_free(%struct._GimpXmlParser*) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare void @g_free(i8*) #1

declare void @g_slice_free1(i64, i8*) #1

declare void @g_list_free(%struct._GList*) #1

declare %struct._GList* @g_list_reverse(%struct._GList*) #1

; Function Attrs: nounwind uwtable
define internal void @svg_parser_start_element(%struct._GMarkupParseContext* %context, i8* %element_name, i8** %attribute_names, i8** %attribute_values, i8* %user_data, %struct._GError** %error) #0 {
entry:
  %context.addr = alloca %struct._GMarkupParseContext*, align 8
  %element_name.addr = alloca i8*, align 8
  %attribute_names.addr = alloca i8**, align 8
  %attribute_values.addr = alloca i8**, align 8
  %user_data.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %parser = alloca %struct.SvgParser*, align 8
  %name = alloca i8*, align 8
  %stop = alloca %struct.SvgStop*, align 8
  store %struct._GMarkupParseContext* %context, %struct._GMarkupParseContext** %context.addr, align 8
  store i8* %element_name, i8** %element_name.addr, align 8
  store i8** %attribute_names, i8*** %attribute_names.addr, align 8
  store i8** %attribute_values, i8*** %attribute_values.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct.SvgParser*
  store %struct.SvgParser* %1, %struct.SvgParser** %parser, align 8
  %2 = load %struct.SvgParser*, %struct.SvgParser** %parser, align 8
  %gradient = getelementptr inbounds %struct.SvgParser, %struct.SvgParser* %2, i32 0, i32 0
  %3 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %tobool = icmp ne %struct._GimpGradient* %3, null
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %4 = load i8*, i8** %element_name.addr, align 8
  %call = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0)) #7
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i8* null, i8** %name, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %5 = load i8**, i8*** %attribute_names.addr, align 8
  %6 = load i8*, i8** %5, align 8
  %tobool1 = icmp ne i8* %6, null
  br i1 %tobool1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %7 = load i8**, i8*** %attribute_values.addr, align 8
  %8 = load i8*, i8** %7, align 8
  %tobool2 = icmp ne i8* %8, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %tobool2, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load i8**, i8*** %attribute_names.addr, align 8
  %11 = load i8*, i8** %10, align 8
  %call3 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0)) #7
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %land.lhs.true.5, label %if.end

land.lhs.true.5:                                  ; preds = %while.body
  %12 = load i8**, i8*** %attribute_values.addr, align 8
  %13 = load i8*, i8** %12, align 8
  %tobool6 = icmp ne i8* %13, null
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %land.lhs.true.5
  %14 = load i8**, i8*** %attribute_values.addr, align 8
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %name, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.7, %land.lhs.true.5, %while.body
  %16 = load i8**, i8*** %attribute_names.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %16, i32 1
  store i8** %incdec.ptr, i8*** %attribute_names.addr, align 8
  %17 = load i8**, i8*** %attribute_values.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i8*, i8** %17, i32 1
  store i8** %incdec.ptr8, i8*** %attribute_values.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %call9 = call i64 @gimp_gradient_get_type() #6
  %18 = load i8*, i8** %name, align 8
  %call10 = call i8* (i64, i8*, ...) @g_object_new(i64 %call9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i8* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i32 0, i32 0), i8* null)
  %19 = bitcast i8* %call10 to %struct._GimpGradient*
  %20 = load %struct.SvgParser*, %struct.SvgParser** %parser, align 8
  %gradient11 = getelementptr inbounds %struct.SvgParser, %struct.SvgParser* %20, i32 0, i32 0
  store %struct._GimpGradient* %19, %struct._GimpGradient** %gradient11, align 8
  br label %if.end.34

if.else:                                          ; preds = %land.lhs.true, %entry
  %21 = load %struct.SvgParser*, %struct.SvgParser** %parser, align 8
  %gradient12 = getelementptr inbounds %struct.SvgParser, %struct.SvgParser* %21, i32 0, i32 0
  %22 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient12, align 8
  %tobool13 = icmp ne %struct._GimpGradient* %22, null
  br i1 %tobool13, label %land.lhs.true.14, label %if.end.33

land.lhs.true.14:                                 ; preds = %if.else
  %23 = load i8*, i8** %element_name.addr, align 8
  %call15 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0)) #7
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then.17, label %if.end.33

if.then.17:                                       ; preds = %land.lhs.true.14
  %24 = load i8**, i8*** %attribute_names.addr, align 8
  %25 = load i8**, i8*** %attribute_values.addr, align 8
  %call18 = call %struct.SvgStop* @svg_parse_gradient_stop(i8** %24, i8** %25)
  store %struct.SvgStop* %call18, %struct.SvgStop** %stop, align 8
  %26 = load %struct.SvgParser*, %struct.SvgParser** %parser, align 8
  %stops = getelementptr inbounds %struct.SvgParser, %struct.SvgParser* %26, i32 0, i32 2
  %27 = load %struct._GList*, %struct._GList** %stops, align 8
  %tobool19 = icmp ne %struct._GList* %27, null
  br i1 %tobool19, label %if.then.20, label %if.end.29

if.then.20:                                       ; preds = %if.then.17
  %28 = load %struct.SvgStop*, %struct.SvgStop** %stop, align 8
  %offset = getelementptr inbounds %struct.SvgStop, %struct.SvgStop* %28, i32 0, i32 0
  %29 = load double, double* %offset, align 8
  %30 = load %struct.SvgParser*, %struct.SvgParser** %parser, align 8
  %stops21 = getelementptr inbounds %struct.SvgParser, %struct.SvgParser* %30, i32 0, i32 2
  %31 = load %struct._GList*, %struct._GList** %stops21, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %31, i32 0, i32 0
  %32 = load i8*, i8** %data, align 8
  %33 = bitcast i8* %32 to %struct.SvgStop*
  %offset22 = getelementptr inbounds %struct.SvgStop, %struct.SvgStop* %33, i32 0, i32 0
  %34 = load double, double* %offset22, align 8
  %cmp23 = fcmp ogt double %29, %34
  br i1 %cmp23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.20
  %35 = load %struct.SvgStop*, %struct.SvgStop** %stop, align 8
  %offset24 = getelementptr inbounds %struct.SvgStop, %struct.SvgStop* %35, i32 0, i32 0
  %36 = load double, double* %offset24, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.20
  %37 = load %struct.SvgParser*, %struct.SvgParser** %parser, align 8
  %stops25 = getelementptr inbounds %struct.SvgParser, %struct.SvgParser* %37, i32 0, i32 2
  %38 = load %struct._GList*, %struct._GList** %stops25, align 8
  %data26 = getelementptr inbounds %struct._GList, %struct._GList* %38, i32 0, i32 0
  %39 = load i8*, i8** %data26, align 8
  %40 = bitcast i8* %39 to %struct.SvgStop*
  %offset27 = getelementptr inbounds %struct.SvgStop, %struct.SvgStop* %40, i32 0, i32 0
  %41 = load double, double* %offset27, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %36, %cond.true ], [ %41, %cond.false ]
  %42 = load %struct.SvgStop*, %struct.SvgStop** %stop, align 8
  %offset28 = getelementptr inbounds %struct.SvgStop, %struct.SvgStop* %42, i32 0, i32 0
  store double %cond, double* %offset28, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %cond.end, %if.then.17
  %43 = load %struct.SvgParser*, %struct.SvgParser** %parser, align 8
  %stops30 = getelementptr inbounds %struct.SvgParser, %struct.SvgParser* %43, i32 0, i32 2
  %44 = load %struct._GList*, %struct._GList** %stops30, align 8
  %45 = load %struct.SvgStop*, %struct.SvgStop** %stop, align 8
  %46 = bitcast %struct.SvgStop* %45 to i8*
  %call31 = call %struct._GList* @g_list_prepend(%struct._GList* %44, i8* %46)
  %47 = load %struct.SvgParser*, %struct.SvgParser** %parser, align 8
  %stops32 = getelementptr inbounds %struct.SvgParser, %struct.SvgParser* %47, i32 0, i32 2
  store %struct._GList* %call31, %struct._GList** %stops32, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.29, %land.lhs.true.14, %if.else
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %while.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @svg_parser_end_element(%struct._GMarkupParseContext* %context, i8* %element_name, i8* %user_data, %struct._GError** %error) #0 {
entry:
  %context.addr = alloca %struct._GMarkupParseContext*, align 8
  %element_name.addr = alloca i8*, align 8
  %user_data.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %parser = alloca %struct.SvgParser*, align 8
  %list = alloca %struct._GList*, align 8
  store %struct._GMarkupParseContext* %context, %struct._GMarkupParseContext** %context.addr, align 8
  store i8* %element_name, i8** %element_name.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct.SvgParser*
  store %struct.SvgParser* %1, %struct.SvgParser** %parser, align 8
  %2 = load %struct.SvgParser*, %struct.SvgParser** %parser, align 8
  %gradient = getelementptr inbounds %struct.SvgParser, %struct.SvgParser* %2, i32 0, i32 0
  %3 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %tobool = icmp ne %struct._GimpGradient* %3, null
  br i1 %tobool, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %entry
  %4 = load i8*, i8** %element_name.addr, align 8
  %call = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0)) #7
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end.16

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.SvgParser*, %struct.SvgParser** %parser, align 8
  %stops = getelementptr inbounds %struct.SvgParser, %struct.SvgParser* %5, i32 0, i32 2
  %6 = load %struct._GList*, %struct._GList** %stops, align 8
  %call1 = call %struct._GimpGradientSegment* @svg_parser_gradient_segments(%struct._GList* %6)
  %7 = load %struct.SvgParser*, %struct.SvgParser** %parser, align 8
  %gradient2 = getelementptr inbounds %struct.SvgParser, %struct.SvgParser* %7, i32 0, i32 0
  %8 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient2, align 8
  %segments = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %8, i32 0, i32 1
  store %struct._GimpGradientSegment* %call1, %struct._GimpGradientSegment** %segments, align 8
  %9 = load %struct.SvgParser*, %struct.SvgParser** %parser, align 8
  %stops3 = getelementptr inbounds %struct.SvgParser, %struct.SvgParser* %9, i32 0, i32 2
  %10 = load %struct._GList*, %struct._GList** %stops3, align 8
  store %struct._GList* %10, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %11 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool4 = icmp ne %struct._GList* %11, null
  br i1 %tobool4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %12 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %12, i32 0, i32 0
  %13 = load i8*, i8** %data, align 8
  call void @g_slice_free1(i64 40, i8* %13)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %14 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %14, i32 0, i32 1
  %15 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %15, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct.SvgParser*, %struct.SvgParser** %parser, align 8
  %stops5 = getelementptr inbounds %struct.SvgParser, %struct.SvgParser* %16, i32 0, i32 2
  %17 = load %struct._GList*, %struct._GList** %stops5, align 8
  call void @g_list_free(%struct._GList* %17)
  %18 = load %struct.SvgParser*, %struct.SvgParser** %parser, align 8
  %stops6 = getelementptr inbounds %struct.SvgParser, %struct.SvgParser* %18, i32 0, i32 2
  store %struct._GList* null, %struct._GList** %stops6, align 8
  %19 = load %struct.SvgParser*, %struct.SvgParser** %parser, align 8
  %gradient7 = getelementptr inbounds %struct.SvgParser, %struct.SvgParser* %19, i32 0, i32 0
  %20 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient7, align 8
  %segments8 = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %20, i32 0, i32 1
  %21 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segments8, align 8
  %tobool9 = icmp ne %struct._GimpGradientSegment* %21, null
  br i1 %tobool9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %for.end
  %22 = load %struct.SvgParser*, %struct.SvgParser** %parser, align 8
  %gradients = getelementptr inbounds %struct.SvgParser, %struct.SvgParser* %22, i32 0, i32 1
  %23 = load %struct._GList*, %struct._GList** %gradients, align 8
  %24 = load %struct.SvgParser*, %struct.SvgParser** %parser, align 8
  %gradient11 = getelementptr inbounds %struct.SvgParser, %struct.SvgParser* %24, i32 0, i32 0
  %25 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient11, align 8
  %26 = bitcast %struct._GimpGradient* %25 to i8*
  %call12 = call %struct._GList* @g_list_prepend(%struct._GList* %23, i8* %26)
  %27 = load %struct.SvgParser*, %struct.SvgParser** %parser, align 8
  %gradients13 = getelementptr inbounds %struct.SvgParser, %struct.SvgParser* %27, i32 0, i32 1
  store %struct._GList* %call12, %struct._GList** %gradients13, align 8
  br label %if.end

if.else:                                          ; preds = %for.end
  %28 = load %struct.SvgParser*, %struct.SvgParser** %parser, align 8
  %gradient14 = getelementptr inbounds %struct.SvgParser, %struct.SvgParser* %28, i32 0, i32 0
  %29 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient14, align 8
  %30 = bitcast %struct._GimpGradient* %29 to i8*
  call void @g_object_unref(i8* %30)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.10
  %31 = load %struct.SvgParser*, %struct.SvgParser** %parser, align 8
  %gradient15 = getelementptr inbounds %struct.SvgParser, %struct.SvgParser* %31, i32 0, i32 0
  store %struct._GimpGradient* null, %struct._GimpGradient** %gradient15, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal %struct.SvgStop* @svg_parse_gradient_stop(i8** %names, i8** %values) #0 {
entry:
  %names.addr = alloca i8**, align 8
  %values.addr = alloca i8**, align 8
  %stop = alloca %struct.SvgStop*, align 8
  %end = alloca i8*, align 8
  store i8** %names, i8*** %names.addr, align 8
  store i8** %values, i8*** %values.addr, align 8
  %call = call noalias i8* @g_slice_alloc0(i64 40)
  %0 = bitcast i8* %call to %struct.SvgStop*
  store %struct.SvgStop* %0, %struct.SvgStop** %stop, align 8
  %1 = load %struct.SvgStop*, %struct.SvgStop** %stop, align 8
  %color = getelementptr inbounds %struct.SvgStop, %struct.SvgStop* %1, i32 0, i32 1
  call void @gimp_rgb_set_alpha(%struct._GimpRGB* %color, double 1.000000e+00)
  br label %while.cond

while.cond:                                       ; preds = %if.end.27, %entry
  %2 = load i8**, i8*** %names.addr, align 8
  %3 = load i8*, i8** %2, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i8**, i8*** %values.addr, align 8
  %5 = load i8*, i8** %4, align 8
  %tobool1 = icmp ne i8* %5, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %tobool1, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load i8**, i8*** %names.addr, align 8
  %8 = load i8*, i8** %7, align 8
  %call2 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0)) #7
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %9 = load i8**, i8*** %values.addr, align 8
  %10 = load i8*, i8** %9, align 8
  %call3 = call double @g_ascii_strtod(i8* %10, i8** %end)
  %11 = load %struct.SvgStop*, %struct.SvgStop** %stop, align 8
  %offset = getelementptr inbounds %struct.SvgStop, %struct.SvgStop* %11, i32 0, i32 0
  store double %call3, double* %offset, align 8
  %12 = load i8*, i8** %end, align 8
  %tobool4 = icmp ne i8* %12, null
  br i1 %tobool4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %13 = load i8*, i8** %end, align 8
  %14 = load i8, i8* %13, align 1
  %conv = sext i8 %14 to i32
  %cmp5 = icmp eq i32 %conv, 37
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %land.lhs.true
  %15 = load %struct.SvgStop*, %struct.SvgStop** %stop, align 8
  %offset8 = getelementptr inbounds %struct.SvgStop, %struct.SvgStop* %15, i32 0, i32 0
  %16 = load double, double* %offset8, align 8
  %div = fdiv double %16, 1.000000e+02
  store double %div, double* %offset8, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.7, %land.lhs.true, %if.then
  %17 = load %struct.SvgStop*, %struct.SvgStop** %stop, align 8
  %offset9 = getelementptr inbounds %struct.SvgStop, %struct.SvgStop* %17, i32 0, i32 0
  %18 = load double, double* %offset9, align 8
  %cmp10 = fcmp ogt double %18, 1.000000e+00
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end.18

cond.false:                                       ; preds = %if.end
  %19 = load %struct.SvgStop*, %struct.SvgStop** %stop, align 8
  %offset12 = getelementptr inbounds %struct.SvgStop, %struct.SvgStop* %19, i32 0, i32 0
  %20 = load double, double* %offset12, align 8
  %cmp13 = fcmp olt double %20, 0.000000e+00
  br i1 %cmp13, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %cond.false
  br label %cond.end

cond.false.16:                                    ; preds = %cond.false
  %21 = load %struct.SvgStop*, %struct.SvgStop** %stop, align 8
  %offset17 = getelementptr inbounds %struct.SvgStop, %struct.SvgStop* %21, i32 0, i32 0
  %22 = load double, double* %offset17, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.16, %cond.true.15
  %cond = phi double [ 0.000000e+00, %cond.true.15 ], [ %22, %cond.false.16 ]
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.end, %cond.true
  %cond19 = phi double [ 1.000000e+00, %cond.true ], [ %cond, %cond.end ]
  %23 = load %struct.SvgStop*, %struct.SvgStop** %stop, align 8
  %offset20 = getelementptr inbounds %struct.SvgStop, %struct.SvgStop* %23, i32 0, i32 0
  store double %cond19, double* %offset20, align 8
  br label %if.end.27

if.else:                                          ; preds = %while.body
  %24 = load i8**, i8*** %names.addr, align 8
  %25 = load i8*, i8** %24, align 8
  %call21 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0)) #7
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %if.else
  %26 = load %struct.SvgStop*, %struct.SvgStop** %stop, align 8
  %27 = load i8**, i8*** %values.addr, align 8
  %28 = load i8*, i8** %27, align 8
  call void @svg_parse_gradient_stop_style(%struct.SvgStop* %26, i8* %28)
  br label %if.end.26

if.else.25:                                       ; preds = %if.else
  %29 = load %struct.SvgStop*, %struct.SvgStop** %stop, align 8
  %30 = load i8**, i8*** %names.addr, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = load i8**, i8*** %values.addr, align 8
  %33 = load i8*, i8** %32, align 8
  call void @svg_parse_gradient_stop_style_prop(%struct.SvgStop* %29, i8* %31, i8* %33)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.25, %if.then.24
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %cond.end.18
  %34 = load i8**, i8*** %names.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %34, i32 1
  store i8** %incdec.ptr, i8*** %names.addr, align 8
  %35 = load i8**, i8*** %values.addr, align 8
  %incdec.ptr28 = getelementptr inbounds i8*, i8** %35, i32 1
  store i8** %incdec.ptr28, i8*** %values.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %36 = load %struct.SvgStop*, %struct.SvgStop** %stop, align 8
  ret %struct.SvgStop* %36
}

declare noalias i8* @g_slice_alloc0(i64) #1

declare void @gimp_rgb_set_alpha(%struct._GimpRGB*, double) #1

; Function Attrs: nounwind uwtable
define internal void @svg_parse_gradient_stop_style(%struct.SvgStop* %stop, i8* %style) #0 {
entry:
  %stop.addr = alloca %struct.SvgStop*, align 8
  %style.addr = alloca i8*, align 8
  %end = alloca i8*, align 8
  %sep = alloca i8*, align 8
  %name = alloca i8*, align 8
  %value = alloca i8*, align 8
  store %struct.SvgStop* %stop, %struct.SvgStop** %stop.addr, align 8
  store i8* %style, i8** %style.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.40, %entry
  %0 = load i8*, i8** %style.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end.41

while.body:                                       ; preds = %while.cond
  br label %while.cond.1

while.cond.1:                                     ; preds = %while.body.3, %while.body
  %2 = load i8*, i8** %style.addr, align 8
  %3 = load i8, i8* %2, align 1
  %idxprom = zext i8 %3 to i64
  %4 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 %idxprom
  %5 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, 256
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %while.body.3, label %while.end

while.body.3:                                     ; preds = %while.cond.1
  %6 = load i8*, i8** %style.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %style.addr, align 8
  br label %while.cond.1

while.end:                                        ; preds = %while.cond.1
  %7 = load i8*, i8** %style.addr, align 8
  store i8* %7, i8** %end, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %8 = load i8*, i8** %end, align 8
  %9 = load i8, i8* %8, align 1
  %conv4 = sext i8 %9 to i32
  %tobool5 = icmp ne i32 %conv4, 0
  br i1 %tobool5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %10 = load i8*, i8** %end, align 8
  %11 = load i8, i8* %10, align 1
  %conv6 = sext i8 %11 to i32
  %cmp7 = icmp ne i32 %conv6, 59
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %12 = phi i1 [ false, %for.cond ], [ %cmp7, %land.rhs ]
  br i1 %12, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i8*, i8** %end, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr9, i8** %end, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %14 = load i8*, i8** %style.addr, align 8
  store i8* %14, i8** %sep, align 8
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.19, %for.end
  %15 = load i8*, i8** %sep, align 8
  %16 = load i8*, i8** %end, align 8
  %cmp11 = icmp ult i8* %15, %16
  br i1 %cmp11, label %land.rhs.13, label %land.end.17

land.rhs.13:                                      ; preds = %for.cond.10
  %17 = load i8*, i8** %sep, align 8
  %18 = load i8, i8* %17, align 1
  %conv14 = sext i8 %18 to i32
  %cmp15 = icmp ne i32 %conv14, 58
  br label %land.end.17

land.end.17:                                      ; preds = %land.rhs.13, %for.cond.10
  %19 = phi i1 [ false, %for.cond.10 ], [ %cmp15, %land.rhs.13 ]
  br i1 %19, label %for.body.18, label %for.end.21

for.body.18:                                      ; preds = %land.end.17
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.body.18
  %20 = load i8*, i8** %sep, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr20, i8** %sep, align 8
  br label %for.cond.10

for.end.21:                                       ; preds = %land.end.17
  %21 = load i8*, i8** %end, align 8
  %22 = load i8*, i8** %sep, align 8
  %cmp22 = icmp ugt i8* %21, %22
  br i1 %cmp22, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.end.21
  %23 = load i8*, i8** %sep, align 8
  %24 = load i8*, i8** %style.addr, align 8
  %cmp24 = icmp ugt i8* %23, %24
  br i1 %cmp24, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %25 = load i8*, i8** %style.addr, align 8
  %26 = load i8*, i8** %sep, align 8
  %27 = load i8*, i8** %style.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %26 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %27 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call = call noalias i8* @g_strndup(i8* %25, i64 %sub.ptr.sub)
  store i8* %call, i8** %name, align 8
  %28 = load i8*, i8** %sep, align 8
  %incdec.ptr26 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr26, i8** %sep, align 8
  %29 = load i8*, i8** %sep, align 8
  %30 = load i8*, i8** %end, align 8
  %31 = load i8*, i8** %sep, align 8
  %sub.ptr.lhs.cast27 = ptrtoint i8* %30 to i64
  %sub.ptr.rhs.cast28 = ptrtoint i8* %31 to i64
  %sub.ptr.sub29 = sub i64 %sub.ptr.lhs.cast27, %sub.ptr.rhs.cast28
  %32 = load i8*, i8** %end, align 8
  %33 = load i8, i8* %32, align 1
  %conv30 = sext i8 %33 to i32
  %cmp31 = icmp eq i32 %conv30, 59
  %cond = select i1 %cmp31, i32 1, i32 0
  %conv33 = sext i32 %cond to i64
  %sub = sub nsw i64 %sub.ptr.sub29, %conv33
  %call34 = call noalias i8* @g_strndup(i8* %29, i64 %sub)
  store i8* %call34, i8** %value, align 8
  %34 = load %struct.SvgStop*, %struct.SvgStop** %stop.addr, align 8
  %35 = load i8*, i8** %name, align 8
  %36 = load i8*, i8** %value, align 8
  call void @svg_parse_gradient_stop_style_prop(%struct.SvgStop* %34, i8* %35, i8* %36)
  %37 = load i8*, i8** %value, align 8
  call void @g_free(i8* %37)
  %38 = load i8*, i8** %name, align 8
  call void @g_free(i8* %38)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.end.21
  %39 = load i8*, i8** %end, align 8
  store i8* %39, i8** %style.addr, align 8
  %40 = load i8*, i8** %style.addr, align 8
  %41 = load i8, i8* %40, align 1
  %conv35 = sext i8 %41 to i32
  %cmp36 = icmp eq i32 %conv35, 59
  br i1 %cmp36, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %if.end
  %42 = load i8*, i8** %style.addr, align 8
  %incdec.ptr39 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr39, i8** %style.addr, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %if.end
  br label %while.cond

while.end.41:                                     ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @svg_parse_gradient_stop_style_prop(%struct.SvgStop* %stop, i8* %name, i8* %value) #0 {
entry:
  %stop.addr = alloca %struct.SvgStop*, align 8
  %name.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %opacity = alloca double, align 8
  store %struct.SvgStop* %stop, %struct.SvgStop** %stop.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0)) #7
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.SvgStop*, %struct.SvgStop** %stop.addr, align 8
  %color = getelementptr inbounds %struct.SvgStop, %struct.SvgStop* %1, i32 0, i32 1
  %2 = load i8*, i8** %value.addr, align 8
  %call1 = call i32 @gimp_rgb_parse_css(%struct._GimpRGB* %color, i8* %2, i32 -1)
  br label %if.end.17

if.else:                                          ; preds = %entry
  %3 = load i8*, i8** %name.addr, align 8
  %call2 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0)) #7
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.16

if.then.4:                                        ; preds = %if.else
  %4 = load i8*, i8** %value.addr, align 8
  %call5 = call double @g_ascii_strtod(i8* %4, i8** null)
  store double %call5, double* %opacity, align 8
  %call6 = call i32* @__errno_location() #6
  %5 = load i32, i32* %call6, align 4
  %cmp7 = icmp ne i32 %5, 34
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then.4
  %6 = load %struct.SvgStop*, %struct.SvgStop** %stop.addr, align 8
  %color9 = getelementptr inbounds %struct.SvgStop, %struct.SvgStop* %6, i32 0, i32 1
  %7 = load double, double* %opacity, align 8
  %cmp10 = fcmp ogt double %7, 1.000000e+00
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.8
  br label %cond.end.14

cond.false:                                       ; preds = %if.then.8
  %8 = load double, double* %opacity, align 8
  %cmp11 = fcmp olt double %8, 0.000000e+00
  br i1 %cmp11, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %cond.false
  br label %cond.end

cond.false.13:                                    ; preds = %cond.false
  %9 = load double, double* %opacity, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.13, %cond.true.12
  %cond = phi double [ 0.000000e+00, %cond.true.12 ], [ %9, %cond.false.13 ]
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.end, %cond.true
  %cond15 = phi double [ 1.000000e+00, %cond.true ], [ %cond, %cond.end ]
  call void @gimp_rgb_set_alpha(%struct._GimpRGB* %color9, double %cond15)
  br label %if.end

if.end:                                           ; preds = %cond.end.14, %if.then.4
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %if.else
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then
  ret void
}

declare noalias i8* @g_strndup(i8*, i64) #1

declare i32 @gimp_rgb_parse_css(%struct._GimpRGB*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpGradientSegment* @svg_parser_gradient_segments(%struct._GList* %stops) #0 {
entry:
  %retval = alloca %struct._GimpGradientSegment*, align 8
  %stops.addr = alloca %struct._GList*, align 8
  %segment = alloca %struct._GimpGradientSegment*, align 8
  %stop = alloca %struct.SvgStop*, align 8
  %list = alloca %struct._GList*, align 8
  %next4 = alloca %struct._GimpGradientSegment*, align 8
  store %struct._GList* %stops, %struct._GList** %stops.addr, align 8
  %0 = load %struct._GList*, %struct._GList** %stops.addr, align 8
  %tobool = icmp ne %struct._GList* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._GimpGradientSegment* null, %struct._GimpGradientSegment** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._GList*, %struct._GList** %stops.addr, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %1, i32 0, i32 0
  %2 = load i8*, i8** %data, align 8
  %3 = bitcast i8* %2 to %struct.SvgStop*
  store %struct.SvgStop* %3, %struct.SvgStop** %stop, align 8
  %call = call %struct._GimpGradientSegment* @gimp_gradient_segment_new()
  store %struct._GimpGradientSegment* %call, %struct._GimpGradientSegment** %segment, align 8
  %4 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segment, align 8
  %left_color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %4, i32 0, i32 4
  %5 = load %struct.SvgStop*, %struct.SvgStop** %stop, align 8
  %color = getelementptr inbounds %struct.SvgStop, %struct.SvgStop* %5, i32 0, i32 1
  %6 = bitcast %struct._GimpRGB* %left_color to i8*
  %7 = bitcast %struct._GimpRGB* %color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 32, i32 8, i1 false)
  %8 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segment, align 8
  %right_color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %8, i32 0, i32 6
  %9 = load %struct.SvgStop*, %struct.SvgStop** %stop, align 8
  %color1 = getelementptr inbounds %struct.SvgStop, %struct.SvgStop* %9, i32 0, i32 1
  %10 = bitcast %struct._GimpRGB* %right_color to i8*
  %11 = bitcast %struct._GimpRGB* %color1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 32, i32 8, i1 false)
  %12 = load %struct._GList*, %struct._GList** %stops.addr, align 8
  %tobool2 = icmp ne %struct._GList* %12, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %13 = load %struct._GList*, %struct._GList** %stops.addr, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %13, i32 0, i32 1
  %14 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %14, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end.19, %cond.end
  %15 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool3 = icmp ne %struct._GList* %15, null
  br i1 %tobool3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segment, align 8
  store %struct._GimpGradientSegment* %16, %struct._GimpGradientSegment** %next4, align 8
  %17 = load %struct.SvgStop*, %struct.SvgStop** %stop, align 8
  %offset = getelementptr inbounds %struct.SvgStop, %struct.SvgStop* %17, i32 0, i32 0
  %18 = load double, double* %offset, align 8
  %19 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segment, align 8
  %left = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %19, i32 0, i32 0
  store double %18, double* %left, align 8
  %20 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segment, align 8
  %left5 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %20, i32 0, i32 0
  %21 = load double, double* %left5, align 8
  %22 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segment, align 8
  %right = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %22, i32 0, i32 2
  %23 = load double, double* %right, align 8
  %add = fadd double %21, %23
  %div = fdiv double %add, 2.000000e+00
  %24 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segment, align 8
  %middle = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %24, i32 0, i32 1
  store double %div, double* %middle, align 8
  %call6 = call %struct._GimpGradientSegment* @gimp_gradient_segment_new()
  store %struct._GimpGradientSegment* %call6, %struct._GimpGradientSegment** %segment, align 8
  %25 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next4, align 8
  %26 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segment, align 8
  %next7 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %26, i32 0, i32 10
  store %struct._GimpGradientSegment* %25, %struct._GimpGradientSegment** %next7, align 8
  %27 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segment, align 8
  %28 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next4, align 8
  %prev = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %28, i32 0, i32 9
  store %struct._GimpGradientSegment* %27, %struct._GimpGradientSegment** %prev, align 8
  %29 = load %struct.SvgStop*, %struct.SvgStop** %stop, align 8
  %offset8 = getelementptr inbounds %struct.SvgStop, %struct.SvgStop* %29, i32 0, i32 0
  %30 = load double, double* %offset8, align 8
  %31 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segment, align 8
  %right9 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %31, i32 0, i32 2
  store double %30, double* %right9, align 8
  %32 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segment, align 8
  %right_color10 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %32, i32 0, i32 6
  %33 = load %struct.SvgStop*, %struct.SvgStop** %stop, align 8
  %color11 = getelementptr inbounds %struct.SvgStop, %struct.SvgStop* %33, i32 0, i32 1
  %34 = bitcast %struct._GimpRGB* %right_color10 to i8*
  %35 = bitcast %struct._GimpRGB* %color11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 32, i32 8, i1 false)
  %36 = load %struct._GList*, %struct._GList** %list, align 8
  %data12 = getelementptr inbounds %struct._GList, %struct._GList* %36, i32 0, i32 0
  %37 = load i8*, i8** %data12, align 8
  %38 = bitcast i8* %37 to %struct.SvgStop*
  store %struct.SvgStop* %38, %struct.SvgStop** %stop, align 8
  %39 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segment, align 8
  %left_color13 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %39, i32 0, i32 4
  %40 = load %struct.SvgStop*, %struct.SvgStop** %stop, align 8
  %color14 = getelementptr inbounds %struct.SvgStop, %struct.SvgStop* %40, i32 0, i32 1
  %41 = bitcast %struct._GimpRGB* %left_color13 to i8*
  %42 = bitcast %struct._GimpRGB* %color14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 32, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %43 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool15 = icmp ne %struct._GList* %43, null
  br i1 %tobool15, label %cond.true.16, label %cond.false.18

cond.true.16:                                     ; preds = %for.inc
  %44 = load %struct._GList*, %struct._GList** %list, align 8
  %next17 = getelementptr inbounds %struct._GList, %struct._GList* %44, i32 0, i32 1
  %45 = load %struct._GList*, %struct._GList** %next17, align 8
  br label %cond.end.19

cond.false.18:                                    ; preds = %for.inc
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.18, %cond.true.16
  %cond20 = phi %struct._GList* [ %45, %cond.true.16 ], [ null, %cond.false.18 ]
  store %struct._GList* %cond20, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %46 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segment, align 8
  %left21 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %46, i32 0, i32 0
  %47 = load double, double* %left21, align 8
  %48 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segment, align 8
  %right22 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %48, i32 0, i32 2
  %49 = load double, double* %right22, align 8
  %add23 = fadd double %47, %49
  %div24 = fdiv double %add23, 2.000000e+00
  %50 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segment, align 8
  %middle25 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %50, i32 0, i32 1
  store double %div24, double* %middle25, align 8
  %51 = load %struct.SvgStop*, %struct.SvgStop** %stop, align 8
  %offset26 = getelementptr inbounds %struct.SvgStop, %struct.SvgStop* %51, i32 0, i32 0
  %52 = load double, double* %offset26, align 8
  %cmp = fcmp ogt double %52, 0.000000e+00
  br i1 %cmp, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %for.end
  %53 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segment, align 8
  %right_color28 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %53, i32 0, i32 6
  %54 = load %struct.SvgStop*, %struct.SvgStop** %stop, align 8
  %color29 = getelementptr inbounds %struct.SvgStop, %struct.SvgStop* %54, i32 0, i32 1
  %55 = bitcast %struct._GimpRGB* %right_color28 to i8*
  %56 = bitcast %struct._GimpRGB* %color29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %55, i8* %56, i64 32, i32 8, i1 false)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.27, %for.end
  %57 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segment, align 8
  store %struct._GimpGradientSegment* %57, %struct._GimpGradientSegment** %retval
  br label %return

return:                                           ; preds = %if.end.30, %if.then
  %58 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %retval
  ret %struct._GimpGradientSegment* %58
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
