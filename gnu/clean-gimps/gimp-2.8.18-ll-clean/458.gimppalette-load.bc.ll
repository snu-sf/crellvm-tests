; ModuleID = './app/core/gimppalette-load.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpPalette = type { %struct._GimpData, %struct._GList*, i32, i32 }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpPaletteEntry = type { %struct._GimpRGB, i8*, i32 }
%struct._GimpRGB = type { double, double, double, double }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpHSV = type { double, double, double, double }
%struct._GimpCMYK = type { double, double, double, double, double }
%struct._GRegex = type opaque
%struct._GMatchInfo = type opaque
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_palette_load = private unnamed_addr constant [18 x i8] c"gimp_palette_load\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"filename != NULL\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"g_path_is_absolute (filename)\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for reading: %s\00", align 1
@.str.6 = private unnamed_addr constant [63 x i8] c"Fatal parse error in palette file '%s': Read error in line %d.\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"GIMP Palette\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"Fatal parse error in palette file '%s': Missing magic header.\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"mime-type\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"application/x-gimp-palette\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"Name: \00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"Invalid UTF-8 string in palette file '%s'\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"Columns: \00", align 1
@.str.14 = private unnamed_addr constant [86 x i8] c"Reading palette file '%s': Invalid number of columns in line %d. Using default value.\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.16 = private unnamed_addr constant [61 x i8] c"Reading palette file '%s': Missing RED component in line %d.\00", align 1
@.str.17 = private unnamed_addr constant [63 x i8] c"Reading palette file '%s': Missing GREEN component in line %d.\00", align 1
@.str.18 = private unnamed_addr constant [62 x i8] c"Reading palette file '%s': Missing BLUE component in line %d.\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.20 = private unnamed_addr constant [62 x i8] c"Reading palette file '%s': RGB value out of range in line %d.\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"Untitled\00", align 1
@__func__.gimp_palette_load_act = private unnamed_addr constant [22 x i8] c"gimp_palette_load_act\00", align 1
@__func__.gimp_palette_load_riff = private unnamed_addr constant [23 x i8] c"gimp_palette_load_riff\00", align 1
@__func__.gimp_palette_load_psp = private unnamed_addr constant [22 x i8] c"gimp_palette_load_psp\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"Premature end of file reading %s.\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"Corrupted palette file %s.\00", align 1
@__func__.gimp_palette_load_aco = private unnamed_addr constant [22 x i8] c"gimp_palette_load_aco\00", align 1
@.str.26 = private unnamed_addr constant [45 x i8] c"Could not read header from palette file '%s'\00", align 1
@.str.27 = private unnamed_addr constant [39 x i8] c"Fatal parse error in palette file '%s'\00", align 1
@.str.28 = private unnamed_addr constant [45 x i8] c"Unsupported color space (%d) in ACO file %s\0A\00", align 1
@__func__.gimp_palette_load_css = private unnamed_addr constant [22 x i8] c"gimp_palette_load_css\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c".*color.*:(?P<param>.*);\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"param\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"RIFF\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"PAL data\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"JASC-PAL\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c".aco\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c".css\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_palette_load(%struct._GimpContext* %context, i8* %filename, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GList*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %filename.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %palette = alloca %struct._GimpPalette*, align 8
  %entry1 = alloca %struct._GimpPaletteEntry*, align 8
  %str = alloca [1024 x i8], align 16
  %tok = alloca i8*, align 8
  %file = alloca %struct._IO_FILE*, align 8
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %linenum = alloca i32, align 4
  %utf8 = alloca i8*, align 8
  %columns = alloca i32, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_palette_load, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %1 = load i8*, i8** %filename.addr, align 8
  %call = call i32 @g_path_is_absolute(i8* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.2
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.2
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_palette_load, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %2 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp8 = icmp eq %struct._GError** %2, null
  br i1 %cmp8, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.7
  %3 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %4 = load %struct._GError*, %struct._GError** %3, align 8
  %cmp9 = icmp eq %struct._GError* %4, null
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %lor.lhs.false, %do.body.7
  br label %if.end.12

if.else.11:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_palette_load, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.12:                                        ; preds = %if.then.10
  br label %do.end.13

do.end.13:                                        ; preds = %if.end.12
  store i32 0, i32* %b, align 4
  store i32 0, i32* %g, align 4
  store i32 0, i32* %r, align 4
  %5 = load i8*, i8** %filename.addr, align 8
  %call14 = call %struct._IO_FILE* @fopen(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  store %struct._IO_FILE* %call14, %struct._IO_FILE** %file, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %tobool15 = icmp ne %struct._IO_FILE* %6, null
  br i1 %tobool15, label %if.end.22, label %if.then.16

if.then.16:                                       ; preds = %do.end.13
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call17 = call i32 @gimp_data_error_quark() #6
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0)) #5
  %8 = load i8*, i8** %filename.addr, align 8
  %call19 = call i8* @gimp_filename_to_utf8(i8* %8)
  %call20 = call i32* @__errno_location() #6
  %9 = load i32, i32* %call20, align 4
  %call21 = call i8* @g_strerror(i32 %9) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %7, i32 %call17, i32 0, i8* %call18, i8* %call19, i8* %call21)
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.22:                                        ; preds = %do.end.13
  store i32 1, i32* %linenum, align 4
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %str, i32 0, i32 0
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call23 = call i8* @fgets(i8* %arraydecay, i32 1024, %struct._IO_FILE* %10)
  %tobool24 = icmp ne i8* %call23, null
  br i1 %tobool24, label %if.end.30, label %if.then.25

if.then.25:                                       ; preds = %if.end.22
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call26 = call i32 @gimp_data_error_quark() #6
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i32 0, i32 0)) #5
  %12 = load i8*, i8** %filename.addr, align 8
  %call28 = call i8* @gimp_filename_to_utf8(i8* %12)
  %13 = load i32, i32* %linenum, align 4
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %11, i32 %call26, i32 1, i8* %call27, i8* %call28, i32 %13)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call29 = call i32 @fclose(%struct._IO_FILE* %14)
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.30:                                        ; preds = %if.end.22
  %arraydecay31 = getelementptr inbounds [1024 x i8], [1024 x i8]* %str, i32 0, i32 0
  %call32 = call i32 @g_str_has_prefix(i8* %arraydecay31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0))
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.end.39, label %if.then.34

if.then.34:                                       ; preds = %if.end.30
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call35 = call i32 @gimp_data_error_quark() #6
  %call36 = call i8* @gettext(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i32 0, i32 0)) #5
  %16 = load i8*, i8** %filename.addr, align 8
  %call37 = call i8* @gimp_filename_to_utf8(i8* %16)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %15, i32 %call35, i32 1, i8* %call36, i8* %call37)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call38 = call i32 @fclose(%struct._IO_FILE* %17)
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.39:                                        ; preds = %if.end.30
  %call40 = call i64 @gimp_palette_get_type() #6
  %call41 = call i8* (i64, i8*, ...) @g_object_new(i64 %call40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i32 0, i32 0), i8* null)
  %18 = bitcast i8* %call41 to %struct._GimpPalette*
  store %struct._GimpPalette* %18, %struct._GimpPalette** %palette, align 8
  %19 = load i32, i32* %linenum, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %linenum, align 4
  %arraydecay42 = getelementptr inbounds [1024 x i8], [1024 x i8]* %str, i32 0, i32 0
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call43 = call i8* @fgets(i8* %arraydecay42, i32 1024, %struct._IO_FILE* %20)
  %tobool44 = icmp ne i8* %call43, null
  br i1 %tobool44, label %if.end.50, label %if.then.45

if.then.45:                                       ; preds = %if.end.39
  %21 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call46 = call i32 @gimp_data_error_quark() #6
  %call47 = call i8* @gettext(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i32 0, i32 0)) #5
  %22 = load i8*, i8** %filename.addr, align 8
  %call48 = call i8* @gimp_filename_to_utf8(i8* %22)
  %23 = load i32, i32* %linenum, align 4
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %21, i32 %call46, i32 1, i8* %call47, i8* %call48, i32 %23)
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call49 = call i32 @fclose(%struct._IO_FILE* %24)
  %25 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %26 = bitcast %struct._GimpPalette* %25 to i8*
  call void @g_object_unref(i8* %26)
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.50:                                        ; preds = %if.end.39
  %arraydecay51 = getelementptr inbounds [1024 x i8], [1024 x i8]* %str, i32 0, i32 0
  %call52 = call i32 @g_str_has_prefix(i8* %arraydecay51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0))
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.then.54, label %if.else.100

if.then.54:                                       ; preds = %if.end.50
  %arraydecay55 = getelementptr inbounds [1024 x i8], [1024 x i8]* %str, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay55, i64 6
  %call56 = call i8* @g_strchug(i8* %add.ptr)
  %call57 = call i8* @g_strchomp(i8* %call56)
  %call58 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i32 0, i32 0)) #5
  %27 = load i8*, i8** %filename.addr, align 8
  %call59 = call i8* @gimp_filename_to_utf8(i8* %27)
  %call60 = call noalias i8* (i8*, i64, i8*, ...) @gimp_any_to_utf8(i8* %call57, i64 -1, i8* %call58, i8* %call59)
  store i8* %call60, i8** %utf8, align 8
  %28 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %29 = bitcast %struct._GimpPalette* %28 to %struct._GTypeInstance*
  %call61 = call i64 @gimp_object_get_type() #6
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call61)
  %30 = bitcast %struct._GTypeInstance* %call62 to %struct._GimpObject*
  %31 = load i8*, i8** %utf8, align 8
  call void @gimp_object_take_name(%struct._GimpObject* %30, i8* %31)
  %32 = load i32, i32* %linenum, align 4
  %inc63 = add nsw i32 %32, 1
  store i32 %inc63, i32* %linenum, align 4
  %arraydecay64 = getelementptr inbounds [1024 x i8], [1024 x i8]* %str, i32 0, i32 0
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call65 = call i8* @fgets(i8* %arraydecay64, i32 1024, %struct._IO_FILE* %33)
  %tobool66 = icmp ne i8* %call65, null
  br i1 %tobool66, label %if.end.72, label %if.then.67

if.then.67:                                       ; preds = %if.then.54
  %34 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call68 = call i32 @gimp_data_error_quark() #6
  %call69 = call i8* @gettext(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i32 0, i32 0)) #5
  %35 = load i8*, i8** %filename.addr, align 8
  %call70 = call i8* @gimp_filename_to_utf8(i8* %35)
  %36 = load i32, i32* %linenum, align 4
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %34, i32 %call68, i32 1, i8* %call69, i8* %call70, i32 %36)
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call71 = call i32 @fclose(%struct._IO_FILE* %37)
  %38 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %39 = bitcast %struct._GimpPalette* %38 to i8*
  call void @g_object_unref(i8* %39)
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.72:                                        ; preds = %if.then.54
  %arraydecay73 = getelementptr inbounds [1024 x i8], [1024 x i8]* %str, i32 0, i32 0
  %call74 = call i32 @g_str_has_prefix(i8* %arraydecay73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0))
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %if.then.76, label %if.end.99

if.then.76:                                       ; preds = %if.end.72
  %arraydecay77 = getelementptr inbounds [1024 x i8], [1024 x i8]* %str, i32 0, i32 0
  %add.ptr78 = getelementptr inbounds i8, i8* %arraydecay77, i64 9
  %call79 = call i8* @g_strchug(i8* %add.ptr78)
  %call80 = call i8* @g_strchomp(i8* %call79)
  %call81 = call i32 @atoi(i8* %call80) #7
  store i32 %call81, i32* %columns, align 4
  %40 = load i32, i32* %columns, align 4
  %cmp82 = icmp slt i32 %40, 0
  br i1 %cmp82, label %if.then.85, label %lor.lhs.false.83

lor.lhs.false.83:                                 ; preds = %if.then.76
  %41 = load i32, i32* %columns, align 4
  %cmp84 = icmp sgt i32 %41, 256
  br i1 %cmp84, label %if.then.85, label %if.end.88

if.then.85:                                       ; preds = %lor.lhs.false.83, %if.then.76
  %call86 = call i8* @gettext(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.14, i32 0, i32 0)) #5
  %42 = load i8*, i8** %filename.addr, align 8
  %call87 = call i8* @gimp_filename_to_utf8(i8* %42)
  %43 = load i32, i32* %linenum, align 4
  call void (i8*, ...) @g_message(i8* %call86, i8* %call87, i32 %43)
  store i32 0, i32* %columns, align 4
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.85, %lor.lhs.false.83
  %44 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %45 = load i32, i32* %columns, align 4
  call void @gimp_palette_set_columns(%struct._GimpPalette* %44, i32 %45)
  %46 = load i32, i32* %linenum, align 4
  %inc89 = add nsw i32 %46, 1
  store i32 %inc89, i32* %linenum, align 4
  %arraydecay90 = getelementptr inbounds [1024 x i8], [1024 x i8]* %str, i32 0, i32 0
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call91 = call i8* @fgets(i8* %arraydecay90, i32 1024, %struct._IO_FILE* %47)
  %tobool92 = icmp ne i8* %call91, null
  br i1 %tobool92, label %if.end.98, label %if.then.93

if.then.93:                                       ; preds = %if.end.88
  %48 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call94 = call i32 @gimp_data_error_quark() #6
  %call95 = call i8* @gettext(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i32 0, i32 0)) #5
  %49 = load i8*, i8** %filename.addr, align 8
  %call96 = call i8* @gimp_filename_to_utf8(i8* %49)
  %50 = load i32, i32* %linenum, align 4
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %48, i32 %call94, i32 1, i8* %call95, i8* %call96, i32 %50)
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call97 = call i32 @fclose(%struct._IO_FILE* %51)
  %52 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %53 = bitcast %struct._GimpPalette* %52 to i8*
  call void @g_object_unref(i8* %53)
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.98:                                        ; preds = %if.end.88
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.end.72
  br label %if.end.104

if.else.100:                                      ; preds = %if.end.50
  %54 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %55 = bitcast %struct._GimpPalette* %54 to %struct._GTypeInstance*
  %call101 = call i64 @gimp_object_get_type() #6
  %call102 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call101)
  %56 = bitcast %struct._GTypeInstance* %call102 to %struct._GimpObject*
  %57 = load i8*, i8** %filename.addr, align 8
  %call103 = call noalias i8* @g_filename_display_basename(i8* %57)
  call void @gimp_object_take_name(%struct._GimpObject* %56, i8* %call103)
  br label %if.end.104

if.end.104:                                       ; preds = %if.else.100, %if.end.99
  br label %while.cond

while.cond:                                       ; preds = %if.end.186, %if.end.104
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call105 = call i32 @feof(%struct._IO_FILE* %58) #5
  %tobool106 = icmp ne i32 %call105, 0
  %lnot = xor i1 %tobool106, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* %str, i32 0, i64 0
  %59 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %59 to i32
  %cmp107 = icmp ne i32 %conv, 35
  br i1 %cmp107, label %land.lhs.true, label %if.end.172

land.lhs.true:                                    ; preds = %while.body
  %arrayidx109 = getelementptr inbounds [1024 x i8], [1024 x i8]* %str, i32 0, i64 0
  %60 = load i8, i8* %arrayidx109, align 1
  %conv110 = sext i8 %60 to i32
  %cmp111 = icmp ne i32 %conv110, 10
  br i1 %cmp111, label %if.then.113, label %if.end.172

if.then.113:                                      ; preds = %land.lhs.true
  %arraydecay114 = getelementptr inbounds [1024 x i8], [1024 x i8]* %str, i32 0, i32 0
  %call115 = call i8* @strtok(i8* %arraydecay114, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0)) #5
  store i8* %call115, i8** %tok, align 8
  %61 = load i8*, i8** %tok, align 8
  %tobool116 = icmp ne i8* %61, null
  br i1 %tobool116, label %if.then.117, label %if.else.119

if.then.117:                                      ; preds = %if.then.113
  %62 = load i8*, i8** %tok, align 8
  %call118 = call i32 @atoi(i8* %62) #7
  store i32 %call118, i32* %r, align 4
  br label %if.end.122

if.else.119:                                      ; preds = %if.then.113
  %call120 = call i8* @gettext(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.16, i32 0, i32 0)) #5
  %63 = load i8*, i8** %filename.addr, align 8
  %call121 = call i8* @gimp_filename_to_utf8(i8* %63)
  %64 = load i32, i32* %linenum, align 4
  call void (i8*, ...) @g_message(i8* %call120, i8* %call121, i32 %64)
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.119, %if.then.117
  %call123 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0)) #5
  store i8* %call123, i8** %tok, align 8
  %65 = load i8*, i8** %tok, align 8
  %tobool124 = icmp ne i8* %65, null
  br i1 %tobool124, label %if.then.125, label %if.else.127

if.then.125:                                      ; preds = %if.end.122
  %66 = load i8*, i8** %tok, align 8
  %call126 = call i32 @atoi(i8* %66) #7
  store i32 %call126, i32* %g, align 4
  br label %if.end.130

if.else.127:                                      ; preds = %if.end.122
  %call128 = call i8* @gettext(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.17, i32 0, i32 0)) #5
  %67 = load i8*, i8** %filename.addr, align 8
  %call129 = call i8* @gimp_filename_to_utf8(i8* %67)
  %68 = load i32, i32* %linenum, align 4
  call void (i8*, ...) @g_message(i8* %call128, i8* %call129, i32 %68)
  br label %if.end.130

if.end.130:                                       ; preds = %if.else.127, %if.then.125
  %call131 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0)) #5
  store i8* %call131, i8** %tok, align 8
  %69 = load i8*, i8** %tok, align 8
  %tobool132 = icmp ne i8* %69, null
  br i1 %tobool132, label %if.then.133, label %if.else.135

if.then.133:                                      ; preds = %if.end.130
  %70 = load i8*, i8** %tok, align 8
  %call134 = call i32 @atoi(i8* %70) #7
  store i32 %call134, i32* %b, align 4
  br label %if.end.138

if.else.135:                                      ; preds = %if.end.130
  %call136 = call i8* @gettext(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.18, i32 0, i32 0)) #5
  %71 = load i8*, i8** %filename.addr, align 8
  %call137 = call i8* @gimp_filename_to_utf8(i8* %71)
  %72 = load i32, i32* %linenum, align 4
  call void (i8*, ...) @g_message(i8* %call136, i8* %call137, i32 %72)
  br label %if.end.138

if.end.138:                                       ; preds = %if.else.135, %if.then.133
  %call139 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)) #5
  store i8* %call139, i8** %tok, align 8
  %73 = load i32, i32* %r, align 4
  %cmp140 = icmp slt i32 %73, 0
  br i1 %cmp140, label %if.then.157, label %lor.lhs.false.142

lor.lhs.false.142:                                ; preds = %if.end.138
  %74 = load i32, i32* %r, align 4
  %cmp143 = icmp sgt i32 %74, 255
  br i1 %cmp143, label %if.then.157, label %lor.lhs.false.145

lor.lhs.false.145:                                ; preds = %lor.lhs.false.142
  %75 = load i32, i32* %g, align 4
  %cmp146 = icmp slt i32 %75, 0
  br i1 %cmp146, label %if.then.157, label %lor.lhs.false.148

lor.lhs.false.148:                                ; preds = %lor.lhs.false.145
  %76 = load i32, i32* %g, align 4
  %cmp149 = icmp sgt i32 %76, 255
  br i1 %cmp149, label %if.then.157, label %lor.lhs.false.151

lor.lhs.false.151:                                ; preds = %lor.lhs.false.148
  %77 = load i32, i32* %b, align 4
  %cmp152 = icmp slt i32 %77, 0
  br i1 %cmp152, label %if.then.157, label %lor.lhs.false.154

lor.lhs.false.154:                                ; preds = %lor.lhs.false.151
  %78 = load i32, i32* %b, align 4
  %cmp155 = icmp sgt i32 %78, 255
  br i1 %cmp155, label %if.then.157, label %if.end.160

if.then.157:                                      ; preds = %lor.lhs.false.154, %lor.lhs.false.151, %lor.lhs.false.148, %lor.lhs.false.145, %lor.lhs.false.142, %if.end.138
  %call158 = call i8* @gettext(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.20, i32 0, i32 0)) #5
  %79 = load i8*, i8** %filename.addr, align 8
  %call159 = call i8* @gimp_filename_to_utf8(i8* %79)
  %80 = load i32, i32* %linenum, align 4
  call void (i8*, ...) @g_message(i8* %call158, i8* %call159, i32 %80)
  br label %if.end.160

if.end.160:                                       ; preds = %if.then.157, %lor.lhs.false.154
  %call161 = call noalias i8* @g_slice_alloc0(i64 48)
  %81 = bitcast i8* %call161 to %struct._GimpPaletteEntry*
  store %struct._GimpPaletteEntry* %81, %struct._GimpPaletteEntry** %entry1, align 8
  %82 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry1, align 8
  %color = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %82, i32 0, i32 0
  %83 = load i32, i32* %r, align 4
  %conv162 = trunc i32 %83 to i8
  %84 = load i32, i32* %g, align 4
  %conv163 = trunc i32 %84 to i8
  %85 = load i32, i32* %b, align 4
  %conv164 = trunc i32 %85 to i8
  call void @gimp_rgba_set_uchar(%struct._GimpRGB* %color, i8 zeroext %conv162, i8 zeroext %conv163, i8 zeroext %conv164, i8 zeroext -1)
  %86 = load i8*, i8** %tok, align 8
  %tobool165 = icmp ne i8* %86, null
  br i1 %tobool165, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.160
  %87 = load i8*, i8** %tok, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.160
  %call166 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0)) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %87, %cond.true ], [ %call166, %cond.false ]
  %call167 = call noalias i8* @g_strdup(i8* %cond)
  %88 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry1, align 8
  %name = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %88, i32 0, i32 1
  store i8* %call167, i8** %name, align 8
  %89 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %call168 = call i32 @gimp_palette_get_n_colors(%struct._GimpPalette* %89)
  %90 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry1, align 8
  %position = getelementptr inbounds %struct._GimpPaletteEntry, %struct._GimpPaletteEntry* %90, i32 0, i32 2
  store i32 %call168, i32* %position, align 4
  %91 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %colors = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %91, i32 0, i32 1
  %92 = load %struct._GList*, %struct._GList** %colors, align 8
  %93 = load %struct._GimpPaletteEntry*, %struct._GimpPaletteEntry** %entry1, align 8
  %94 = bitcast %struct._GimpPaletteEntry* %93 to i8*
  %call169 = call %struct._GList* @g_list_prepend(%struct._GList* %92, i8* %94)
  %95 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %colors170 = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %95, i32 0, i32 1
  store %struct._GList* %call169, %struct._GList** %colors170, align 8
  %96 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %n_colors = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %96, i32 0, i32 2
  %97 = load i32, i32* %n_colors, align 4
  %inc171 = add nsw i32 %97, 1
  store i32 %inc171, i32* %n_colors, align 4
  br label %if.end.172

if.end.172:                                       ; preds = %cond.end, %land.lhs.true, %while.body
  %98 = load i32, i32* %linenum, align 4
  %inc173 = add nsw i32 %98, 1
  store i32 %inc173, i32* %linenum, align 4
  %arraydecay174 = getelementptr inbounds [1024 x i8], [1024 x i8]* %str, i32 0, i32 0
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call175 = call i8* @fgets(i8* %arraydecay174, i32 1024, %struct._IO_FILE* %99)
  %tobool176 = icmp ne i8* %call175, null
  br i1 %tobool176, label %if.end.186, label %if.then.177

if.then.177:                                      ; preds = %if.end.172
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call178 = call i32 @feof(%struct._IO_FILE* %100) #5
  %tobool179 = icmp ne i32 %call178, 0
  br i1 %tobool179, label %if.then.180, label %if.end.181

if.then.180:                                      ; preds = %if.then.177
  br label %while.end

if.end.181:                                       ; preds = %if.then.177
  %101 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call182 = call i32 @gimp_data_error_quark() #6
  %call183 = call i8* @gettext(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i32 0, i32 0)) #5
  %102 = load i8*, i8** %filename.addr, align 8
  %call184 = call i8* @gimp_filename_to_utf8(i8* %102)
  %103 = load i32, i32* %linenum, align 4
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %101, i32 %call182, i32 1, i8* %call183, i8* %call184, i32 %103)
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call185 = call i32 @fclose(%struct._IO_FILE* %104)
  %105 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %106 = bitcast %struct._GimpPalette* %105 to i8*
  call void @g_object_unref(i8* %106)
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.186:                                       ; preds = %if.end.172
  br label %while.cond

while.end:                                        ; preds = %if.then.180, %while.cond
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call187 = call i32 @fclose(%struct._IO_FILE* %107)
  %108 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %colors188 = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %108, i32 0, i32 1
  %109 = load %struct._GList*, %struct._GList** %colors188, align 8
  %call189 = call %struct._GList* @g_list_reverse(%struct._GList* %109)
  %110 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %colors190 = getelementptr inbounds %struct._GimpPalette, %struct._GimpPalette* %110, i32 0, i32 1
  store %struct._GList* %call189, %struct._GList** %colors190, align 8
  %111 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %112 = bitcast %struct._GimpPalette* %111 to i8*
  %call191 = call %struct._GList* @g_list_prepend(%struct._GList* null, i8* %112)
  store %struct._GList* %call191, %struct._GList** %retval
  br label %return

return:                                           ; preds = %while.end, %if.end.181, %if.then.93, %if.then.67, %if.then.45, %if.then.34, %if.then.25, %if.then.16, %if.else.11, %if.else.4, %if.else
  %113 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %113
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
declare i64 @gimp_palette_get_type() #2

declare void @g_object_unref(i8*) #1

declare noalias i8* @gimp_any_to_utf8(i8*, i64, i8*, ...) #1

declare i8* @g_strchomp(i8*) #1

declare i8* @g_strchug(i8*) #1

declare void @gimp_object_take_name(%struct._GimpObject*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #4

; Function Attrs: nounwind uwtable
define internal void @g_message(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 32, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare void @gimp_palette_set_columns(%struct._GimpPalette*, i32) #1

declare noalias i8* @g_filename_display_basename(i8*) #1

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #3

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #3

declare noalias i8* @g_slice_alloc0(i64) #1

declare void @gimp_rgba_set_uchar(%struct._GimpRGB*, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare noalias i8* @g_strdup(i8*) #1

declare i32 @gimp_palette_get_n_colors(%struct._GimpPalette*) #1

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

declare %struct._GList* @g_list_reverse(%struct._GList*) #1

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_palette_load_act(%struct._GimpContext* %context, i8* %filename, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GList*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %filename.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %palette = alloca %struct._GimpPalette*, align 8
  %palette_name = alloca i8*, align 8
  %fd = alloca i32, align 4
  %color_bytes = alloca [4 x i8], align 1
  %color = alloca %struct._GimpRGB, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_palette_load_act, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_palette_load_act, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_palette_load_act, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  %5 = load i8*, i8** %filename.addr, align 8
  %call13 = call i32 (i8*, i32, ...) @open(i8* %5, i32 0, i32 0)
  store i32 %call13, i32* %fd, align 4
  %6 = load i32, i32* %fd, align 4
  %tobool14 = icmp ne i32 %6, 0
  br i1 %tobool14, label %if.end.23, label %if.then.15

if.then.15:                                       ; preds = %do.end.12
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call16 = call i32 @g_file_error_quark()
  %call17 = call i32* @__errno_location() #6
  %8 = load i32, i32* %call17, align 4
  %call18 = call i32 @g_file_error_from_errno(i32 %8)
  %call19 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0)) #5
  %9 = load i8*, i8** %filename.addr, align 8
  %call20 = call i8* @gimp_filename_to_utf8(i8* %9)
  %call21 = call i32* @__errno_location() #6
  %10 = load i32, i32* %call21, align 4
  %call22 = call i8* @g_strerror(i32 %10) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %7, i32 %call16, i32 %call18, i8* %call19, i8* %call20, i8* %call22)
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.23:                                        ; preds = %do.end.12
  %11 = load i8*, i8** %filename.addr, align 8
  %call24 = call noalias i8* @g_filename_display_basename(i8* %11)
  store i8* %call24, i8** %palette_name, align 8
  %12 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %13 = load i8*, i8** %palette_name, align 8
  %call25 = call %struct._GimpData* @gimp_palette_new(%struct._GimpContext* %12, i8* %13)
  %14 = bitcast %struct._GimpData* %call25 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_palette_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call26)
  %15 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpPalette*
  store %struct._GimpPalette* %15, %struct._GimpPalette** %palette, align 8
  %16 = load i8*, i8** %palette_name, align 8
  call void @g_free(i8* %16)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.23
  %17 = load i32, i32* %fd, align 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %color_bytes, i32 0, i32 0
  %call28 = call i64 @read(i32 %17, i8* %arraydecay, i64 3)
  %cmp29 = icmp eq i64 %call28, 3
  br i1 %cmp29, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %color_bytes, i32 0, i64 0
  %18 = load i8, i8* %arrayidx, align 1
  %arrayidx30 = getelementptr inbounds [4 x i8], [4 x i8]* %color_bytes, i32 0, i64 1
  %19 = load i8, i8* %arrayidx30, align 1
  %arrayidx31 = getelementptr inbounds [4 x i8], [4 x i8]* %color_bytes, i32 0, i64 2
  %20 = load i8, i8* %arrayidx31, align 1
  call void @gimp_rgba_set_uchar(%struct._GimpRGB* %color, i8 zeroext %18, i8 zeroext %19, i8 zeroext %20, i8 zeroext -1)
  %21 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %call32 = call %struct._GimpPaletteEntry* @gimp_palette_add_entry(%struct._GimpPalette* %21, i32 -1, i8* null, %struct._GimpRGB* %color)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %22 = load i32, i32* %fd, align 4
  %call33 = call i32 @close(i32 %22)
  %23 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %24 = bitcast %struct._GimpPalette* %23 to i8*
  %call34 = call %struct._GList* @g_list_prepend(%struct._GList* null, i8* %24)
  store %struct._GList* %call34, %struct._GList** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.15, %if.else.10, %if.else.3, %if.else
  %25 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %25
}

declare i32 @open(i8*, i32, ...) #1

declare i32 @g_file_error_quark() #1

declare i32 @g_file_error_from_errno(i32) #1

declare %struct._GimpData* @gimp_palette_new(%struct._GimpContext*, i8*) #1

declare void @g_free(i8*) #1

declare i64 @read(i32, i8*, i64) #1

declare %struct._GimpPaletteEntry* @gimp_palette_add_entry(%struct._GimpPalette*, i32, i8*, %struct._GimpRGB*) #1

declare i32 @close(i32) #1

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_palette_load_riff(%struct._GimpContext* %context, i8* %filename, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GList*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %filename.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %palette = alloca %struct._GimpPalette*, align 8
  %palette_name = alloca i8*, align 8
  %fd = alloca i32, align 4
  %color_bytes = alloca [4 x i8], align 1
  %color = alloca %struct._GimpRGB, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_palette_load_riff, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_palette_load_riff, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_palette_load_riff, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  %5 = load i8*, i8** %filename.addr, align 8
  %call13 = call i32 (i8*, i32, ...) @open(i8* %5, i32 0, i32 0)
  store i32 %call13, i32* %fd, align 4
  %6 = load i32, i32* %fd, align 4
  %tobool14 = icmp ne i32 %6, 0
  br i1 %tobool14, label %if.end.23, label %if.then.15

if.then.15:                                       ; preds = %do.end.12
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call16 = call i32 @g_file_error_quark()
  %call17 = call i32* @__errno_location() #6
  %8 = load i32, i32* %call17, align 4
  %call18 = call i32 @g_file_error_from_errno(i32 %8)
  %call19 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0)) #5
  %9 = load i8*, i8** %filename.addr, align 8
  %call20 = call i8* @gimp_filename_to_utf8(i8* %9)
  %call21 = call i32* @__errno_location() #6
  %10 = load i32, i32* %call21, align 4
  %call22 = call i8* @g_strerror(i32 %10) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %7, i32 %call16, i32 %call18, i8* %call19, i8* %call20, i8* %call22)
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.23:                                        ; preds = %do.end.12
  %11 = load i8*, i8** %filename.addr, align 8
  %call24 = call noalias i8* @g_filename_display_basename(i8* %11)
  store i8* %call24, i8** %palette_name, align 8
  %12 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %13 = load i8*, i8** %palette_name, align 8
  %call25 = call %struct._GimpData* @gimp_palette_new(%struct._GimpContext* %12, i8* %13)
  %14 = bitcast %struct._GimpData* %call25 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_palette_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call26)
  %15 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpPalette*
  store %struct._GimpPalette* %15, %struct._GimpPalette** %palette, align 8
  %16 = load i8*, i8** %palette_name, align 8
  call void @g_free(i8* %16)
  %17 = load i32, i32* %fd, align 4
  %call28 = call i64 @lseek(i32 %17, i64 28, i32 0) #5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.23
  %18 = load i32, i32* %fd, align 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %color_bytes, i32 0, i32 0
  %call29 = call i64 @read(i32 %18, i8* %arraydecay, i64 4)
  %cmp30 = icmp eq i64 %call29, 4
  br i1 %cmp30, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %color_bytes, i32 0, i64 0
  %19 = load i8, i8* %arrayidx, align 1
  %arrayidx31 = getelementptr inbounds [4 x i8], [4 x i8]* %color_bytes, i32 0, i64 1
  %20 = load i8, i8* %arrayidx31, align 1
  %arrayidx32 = getelementptr inbounds [4 x i8], [4 x i8]* %color_bytes, i32 0, i64 2
  %21 = load i8, i8* %arrayidx32, align 1
  call void @gimp_rgba_set_uchar(%struct._GimpRGB* %color, i8 zeroext %19, i8 zeroext %20, i8 zeroext %21, i8 zeroext -1)
  %22 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %call33 = call %struct._GimpPaletteEntry* @gimp_palette_add_entry(%struct._GimpPalette* %22, i32 -1, i8* null, %struct._GimpRGB* %color)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %23 = load i32, i32* %fd, align 4
  %call34 = call i32 @close(i32 %23)
  %24 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %25 = bitcast %struct._GimpPalette* %24 to i8*
  %call35 = call %struct._GList* @g_list_prepend(%struct._GList* null, i8* %25)
  store %struct._GList* %call35, %struct._GList** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.15, %if.else.10, %if.else.3, %if.else
  %26 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %26
}

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #3

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_palette_load_psp(%struct._GimpContext* %context, i8* %filename, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GList*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %filename.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %palette = alloca %struct._GimpPalette*, align 8
  %palette_name = alloca i8*, align 8
  %fd = alloca i32, align 4
  %color_bytes = alloca [4 x i8], align 1
  %number_of_colors = alloca i32, align 4
  %data_size = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %color_ok = alloca i32, align 4
  %buffer = alloca [4096 x i8], align 16
  %lines = alloca i8**, align 8
  %ascii_colors = alloca i8**, align 8
  %color = alloca %struct._GimpRGB, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_palette_load_psp, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_palette_load_psp, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_palette_load_psp, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  %5 = load i8*, i8** %filename.addr, align 8
  %call13 = call i32 (i8*, i32, ...) @open(i8* %5, i32 0, i32 0)
  store i32 %call13, i32* %fd, align 4
  %6 = load i32, i32* %fd, align 4
  %tobool14 = icmp ne i32 %6, 0
  br i1 %tobool14, label %if.end.23, label %if.then.15

if.then.15:                                       ; preds = %do.end.12
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call16 = call i32 @g_file_error_quark()
  %call17 = call i32* @__errno_location() #6
  %8 = load i32, i32* %call17, align 4
  %call18 = call i32 @g_file_error_from_errno(i32 %8)
  %call19 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0)) #5
  %9 = load i8*, i8** %filename.addr, align 8
  %call20 = call i8* @gimp_filename_to_utf8(i8* %9)
  %call21 = call i32* @__errno_location() #6
  %10 = load i32, i32* %call21, align 4
  %call22 = call i8* @g_strerror(i32 %10) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %7, i32 %call16, i32 %call18, i8* %call19, i8* %call20, i8* %call22)
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.23:                                        ; preds = %do.end.12
  %11 = load i8*, i8** %filename.addr, align 8
  %call24 = call noalias i8* @g_filename_display_basename(i8* %11)
  store i8* %call24, i8** %palette_name, align 8
  %12 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %13 = load i8*, i8** %palette_name, align 8
  %call25 = call %struct._GimpData* @gimp_palette_new(%struct._GimpContext* %12, i8* %13)
  %14 = bitcast %struct._GimpData* %call25 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_palette_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call26)
  %15 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpPalette*
  store %struct._GimpPalette* %15, %struct._GimpPalette** %palette, align 8
  %16 = load i8*, i8** %palette_name, align 8
  call void @g_free(i8* %16)
  %17 = load i32, i32* %fd, align 4
  %call28 = call i64 @lseek(i32 %17, i64 16, i32 0) #5
  %18 = load i32, i32* %fd, align 4
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %call29 = call i64 @read(i32 %18, i8* %arraydecay, i64 4095)
  %conv = trunc i64 %call29 to i32
  store i32 %conv, i32* %data_size, align 4
  %19 = load i32, i32* %data_size, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %arraydecay30 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %call31 = call noalias i8** @g_strsplit(i8* %arraydecay30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), i32 -1)
  store i8** %call31, i8*** %lines, align 8
  %20 = load i8**, i8*** %lines, align 8
  %arrayidx32 = getelementptr inbounds i8*, i8** %20, i64 0
  %21 = load i8*, i8** %arrayidx32, align 8
  %call33 = call i32 @atoi(i8* %21) #7
  store i32 %call33, i32* %number_of_colors, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.71, %if.end.23
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %number_of_colors, align 4
  %cmp34 = icmp slt i32 %22, %23
  br i1 %cmp34, label %for.body, label %for.end.73

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %i, align 4
  %add = add nsw i32 %24, 1
  %idxprom36 = sext i32 %add to i64
  %25 = load i8**, i8*** %lines, align 8
  %arrayidx37 = getelementptr inbounds i8*, i8** %25, i64 %idxprom36
  %26 = load i8*, i8** %arrayidx37, align 8
  %cmp38 = icmp eq i8* %26, null
  br i1 %cmp38, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %for.body
  %27 = load i8*, i8** %filename.addr, align 8
  %call41 = call i8* @gimp_filename_to_utf8(i8* %27)
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i32 0, i32 0), i8* %call41)
  br label %for.end.73

if.end.42:                                        ; preds = %for.body
  %28 = load i32, i32* %i, align 4
  %add43 = add nsw i32 %28, 1
  %idxprom44 = sext i32 %add43 to i64
  %29 = load i8**, i8*** %lines, align 8
  %arrayidx45 = getelementptr inbounds i8*, i8** %29, i64 %idxprom44
  %30 = load i8*, i8** %arrayidx45, align 8
  %call46 = call noalias i8** @g_strsplit(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0), i32 3)
  store i8** %call46, i8*** %ascii_colors, align 8
  store i32 1, i32* %color_ok, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc, %if.end.42
  %31 = load i32, i32* %j, align 4
  %cmp48 = icmp slt i32 %31, 3
  br i1 %cmp48, label %for.body.50, label %for.end

for.body.50:                                      ; preds = %for.cond.47
  %32 = load i32, i32* %j, align 4
  %idxprom51 = sext i32 %32 to i64
  %33 = load i8**, i8*** %ascii_colors, align 8
  %arrayidx52 = getelementptr inbounds i8*, i8** %33, i64 %idxprom51
  %34 = load i8*, i8** %arrayidx52, align 8
  %cmp53 = icmp eq i8* %34, null
  br i1 %cmp53, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %for.body.50
  %35 = load i8*, i8** %filename.addr, align 8
  %call56 = call i8* @gimp_filename_to_utf8(i8* %35)
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i32 0, i32 0), i8* %call56)
  store i32 0, i32* %color_ok, align 4
  br label %for.end

if.end.57:                                        ; preds = %for.body.50
  %36 = load i32, i32* %j, align 4
  %idxprom58 = sext i32 %36 to i64
  %37 = load i8**, i8*** %ascii_colors, align 8
  %arrayidx59 = getelementptr inbounds i8*, i8** %37, i64 %idxprom58
  %38 = load i8*, i8** %arrayidx59, align 8
  %call60 = call i32 @atoi(i8* %38) #7
  %conv61 = trunc i32 %call60 to i8
  %39 = load i32, i32* %j, align 4
  %idxprom62 = sext i32 %39 to i64
  %arrayidx63 = getelementptr inbounds [4 x i8], [4 x i8]* %color_bytes, i32 0, i64 %idxprom62
  store i8 %conv61, i8* %arrayidx63, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end.57
  %40 = load i32, i32* %j, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.47

for.end:                                          ; preds = %if.then.55, %for.cond.47
  %41 = load i32, i32* %color_ok, align 4
  %tobool64 = icmp ne i32 %41, 0
  br i1 %tobool64, label %if.then.65, label %if.end.70

if.then.65:                                       ; preds = %for.end
  %arrayidx66 = getelementptr inbounds [4 x i8], [4 x i8]* %color_bytes, i32 0, i64 0
  %42 = load i8, i8* %arrayidx66, align 1
  %arrayidx67 = getelementptr inbounds [4 x i8], [4 x i8]* %color_bytes, i32 0, i64 1
  %43 = load i8, i8* %arrayidx67, align 1
  %arrayidx68 = getelementptr inbounds [4 x i8], [4 x i8]* %color_bytes, i32 0, i64 2
  %44 = load i8, i8* %arrayidx68, align 1
  call void @gimp_rgba_set_uchar(%struct._GimpRGB* %color, i8 zeroext %42, i8 zeroext %43, i8 zeroext %44, i8 zeroext -1)
  %45 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %call69 = call %struct._GimpPaletteEntry* @gimp_palette_add_entry(%struct._GimpPalette* %45, i32 -1, i8* null, %struct._GimpRGB* %color)
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.65, %for.end
  %46 = load i8**, i8*** %ascii_colors, align 8
  call void @g_strfreev(i8** %46)
  br label %for.inc.71

for.inc.71:                                       ; preds = %if.end.70
  %47 = load i32, i32* %i, align 4
  %inc72 = add nsw i32 %47, 1
  store i32 %inc72, i32* %i, align 4
  br label %for.cond

for.end.73:                                       ; preds = %if.then.40, %for.cond
  %48 = load i8**, i8*** %lines, align 8
  call void @g_strfreev(i8** %48)
  %49 = load i32, i32* %fd, align 4
  %call74 = call i32 @close(i32 %49)
  %50 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %51 = bitcast %struct._GimpPalette* %50 to i8*
  %call75 = call %struct._GList* @g_list_prepend(%struct._GList* null, i8* %51)
  store %struct._GList* %call75, %struct._GList** %retval
  br label %return

return:                                           ; preds = %for.end.73, %if.then.15, %if.else.10, %if.else.3, %if.else
  %52 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %52
}

declare noalias i8** @g_strsplit(i8*, i8*, i32) #1

declare void @g_printerr(i8*, ...) #1

declare void @g_strfreev(i8**) #1

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_palette_load_aco(%struct._GimpContext* %context, i8* %filename, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GList*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %filename.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %palette = alloca %struct._GimpPalette*, align 8
  %palette_name = alloca i8*, align 8
  %fd = alloca i32, align 4
  %format_version = alloca i32, align 4
  %number_of_colors = alloca i32, align 4
  %i = alloca i32, align 4
  %header = alloca [4 x i8], align 1
  %color_info = alloca [10 x i8], align 1
  %format2_preamble = alloca [4 x i8], align 1
  %status = alloca i32, align 4
  %color_space = alloca i32, align 4
  %w = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  %color_ok = alloca i32, align 4
  %color = alloca %struct._GimpRGB, align 8
  %R = alloca double, align 8
  %G = alloca double, align 8
  %B = alloca double, align 8
  %hsv = alloca %struct._GimpHSV, align 8
  %H = alloca double, align 8
  %S = alloca double, align 8
  %V = alloca double, align 8
  %cmyk = alloca %struct._GimpCMYK, align 8
  %C = alloca double, align 8
  %M = alloca double, align 8
  %Y = alloca double, align 8
  %K = alloca double, align 8
  %K126 = alloca double, align 8
  %cmyk134 = alloca %struct._GimpCMYK, align 8
  %C135 = alloca double, align 8
  %M139 = alloca double, align 8
  %Y143 = alloca double, align 8
  %K147 = alloca double, align 8
  %number_of_chars = alloca i32, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_palette_load_aco, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_palette_load_aco, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_palette_load_aco, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  %5 = load i8*, i8** %filename.addr, align 8
  %call13 = call i32 (i8*, i32, ...) @open(i8* %5, i32 0, i32 0)
  store i32 %call13, i32* %fd, align 4
  %6 = load i32, i32* %fd, align 4
  %tobool14 = icmp ne i32 %6, 0
  br i1 %tobool14, label %if.end.23, label %if.then.15

if.then.15:                                       ; preds = %do.end.12
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call16 = call i32 @g_file_error_quark()
  %call17 = call i32* @__errno_location() #6
  %8 = load i32, i32* %call17, align 4
  %call18 = call i32 @g_file_error_from_errno(i32 %8)
  %call19 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0)) #5
  %9 = load i8*, i8** %filename.addr, align 8
  %call20 = call i8* @gimp_filename_to_utf8(i8* %9)
  %call21 = call i32* @__errno_location() #6
  %10 = load i32, i32* %call21, align 4
  %call22 = call i8* @g_strerror(i32 %10) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %7, i32 %call16, i32 %call18, i8* %call19, i8* %call20, i8* %call22)
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.23:                                        ; preds = %do.end.12
  %11 = load i32, i32* %fd, align 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %header, i32 0, i32 0
  %call24 = call i64 @read(i32 %11, i8* %arraydecay, i64 4)
  %conv = trunc i64 %call24 to i32
  store i32 %conv, i32* %status, align 4
  %12 = load i32, i32* %status, align 4
  %conv25 = sext i32 %12 to i64
  %cmp26 = icmp ne i64 %conv25, 4
  br i1 %cmp26, label %if.then.28, label %if.end.33

if.then.28:                                       ; preds = %if.end.23
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call29 = call i32 @gimp_data_error_quark() #6
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.26, i32 0, i32 0)) #5
  %14 = load i8*, i8** %filename.addr, align 8
  %call31 = call i8* @gimp_filename_to_utf8(i8* %14)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %13, i32 %call29, i32 1, i8* %call30, i8* %call31)
  %15 = load i32, i32* %fd, align 4
  %call32 = call i32 @close(i32 %15)
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.33:                                        ; preds = %if.end.23
  %16 = load i8*, i8** %filename.addr, align 8
  %call34 = call noalias i8* @g_filename_display_basename(i8* %16)
  store i8* %call34, i8** %palette_name, align 8
  %17 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %18 = load i8*, i8** %palette_name, align 8
  %call35 = call %struct._GimpData* @gimp_palette_new(%struct._GimpContext* %17, i8* %18)
  %19 = bitcast %struct._GimpData* %call35 to %struct._GTypeInstance*
  %call36 = call i64 @gimp_palette_get_type() #6
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call36)
  %20 = bitcast %struct._GTypeInstance* %call37 to %struct._GimpPalette*
  store %struct._GimpPalette* %20, %struct._GimpPalette** %palette, align 8
  %21 = load i8*, i8** %palette_name, align 8
  call void @g_free(i8* %21)
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %header, i32 0, i64 1
  %22 = load i8, i8* %arrayidx, align 1
  %conv38 = sext i8 %22 to i32
  %arrayidx39 = getelementptr inbounds [4 x i8], [4 x i8]* %header, i32 0, i64 0
  %23 = load i8, i8* %arrayidx39, align 1
  %conv40 = sext i8 %23 to i32
  %shl = shl i32 %conv40, 8
  %add = add nsw i32 %conv38, %shl
  store i32 %add, i32* %format_version, align 4
  %arrayidx41 = getelementptr inbounds [4 x i8], [4 x i8]* %header, i32 0, i64 3
  %24 = load i8, i8* %arrayidx41, align 1
  %conv42 = sext i8 %24 to i32
  %arrayidx43 = getelementptr inbounds [4 x i8], [4 x i8]* %header, i32 0, i64 2
  %25 = load i8, i8* %arrayidx43, align 1
  %conv44 = sext i8 %25 to i32
  %shl45 = shl i32 %conv44, 8
  %add46 = add nsw i32 %conv42, %shl45
  store i32 %add46, i32* %number_of_colors, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.33
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %number_of_colors, align 4
  %cmp47 = icmp slt i32 %26, %27
  br i1 %cmp47, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %color_ok, align 4
  %28 = load i32, i32* %fd, align 4
  %arraydecay49 = getelementptr inbounds [10 x i8], [10 x i8]* %color_info, i32 0, i32 0
  %call50 = call i64 @read(i32 %28, i8* %arraydecay49, i64 10)
  %cmp51 = icmp ne i64 %call50, 10
  br i1 %cmp51, label %if.then.53, label %if.end.58

if.then.53:                                       ; preds = %for.body
  %29 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call54 = call i32 @gimp_data_error_quark() #6
  %call55 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.27, i32 0, i32 0)) #5
  %30 = load i8*, i8** %filename.addr, align 8
  %call56 = call i8* @gimp_filename_to_utf8(i8* %30)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %29, i32 %call54, i32 1, i8* %call55, i8* %call56)
  %31 = load i32, i32* %fd, align 4
  %call57 = call i32 @close(i32 %31)
  %32 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %33 = bitcast %struct._GimpPalette* %32 to i8*
  call void @g_object_unref(i8* %33)
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.58:                                        ; preds = %for.body
  %arrayidx59 = getelementptr inbounds [10 x i8], [10 x i8]* %color_info, i32 0, i64 1
  %34 = load i8, i8* %arrayidx59, align 1
  %conv60 = sext i8 %34 to i32
  %arrayidx61 = getelementptr inbounds [10 x i8], [10 x i8]* %color_info, i32 0, i64 0
  %35 = load i8, i8* %arrayidx61, align 1
  %conv62 = sext i8 %35 to i32
  %shl63 = shl i32 %conv62, 8
  %add64 = add nsw i32 %conv60, %shl63
  store i32 %add64, i32* %color_space, align 4
  %arrayidx65 = getelementptr inbounds [10 x i8], [10 x i8]* %color_info, i32 0, i64 3
  %36 = load i8, i8* %arrayidx65, align 1
  %conv66 = zext i8 %36 to i32
  %arrayidx67 = getelementptr inbounds [10 x i8], [10 x i8]* %color_info, i32 0, i64 2
  %37 = load i8, i8* %arrayidx67, align 1
  %conv68 = zext i8 %37 to i32
  %shl69 = shl i32 %conv68, 8
  %add70 = add nsw i32 %conv66, %shl69
  store i32 %add70, i32* %w, align 4
  %arrayidx71 = getelementptr inbounds [10 x i8], [10 x i8]* %color_info, i32 0, i64 5
  %38 = load i8, i8* %arrayidx71, align 1
  %conv72 = zext i8 %38 to i32
  %arrayidx73 = getelementptr inbounds [10 x i8], [10 x i8]* %color_info, i32 0, i64 4
  %39 = load i8, i8* %arrayidx73, align 1
  %conv74 = zext i8 %39 to i32
  %shl75 = shl i32 %conv74, 8
  %add76 = add nsw i32 %conv72, %shl75
  store i32 %add76, i32* %x, align 4
  %arrayidx77 = getelementptr inbounds [10 x i8], [10 x i8]* %color_info, i32 0, i64 7
  %40 = load i8, i8* %arrayidx77, align 1
  %conv78 = zext i8 %40 to i32
  %arrayidx79 = getelementptr inbounds [10 x i8], [10 x i8]* %color_info, i32 0, i64 6
  %41 = load i8, i8* %arrayidx79, align 1
  %conv80 = zext i8 %41 to i32
  %shl81 = shl i32 %conv80, 8
  %add82 = add nsw i32 %conv78, %shl81
  store i32 %add82, i32* %y, align 4
  %arrayidx83 = getelementptr inbounds [10 x i8], [10 x i8]* %color_info, i32 0, i64 9
  %42 = load i8, i8* %arrayidx83, align 1
  %conv84 = zext i8 %42 to i32
  %arrayidx85 = getelementptr inbounds [10 x i8], [10 x i8]* %color_info, i32 0, i64 8
  %43 = load i8, i8* %arrayidx85, align 1
  %conv86 = zext i8 %43 to i32
  %shl87 = shl i32 %conv86, 8
  %add88 = add nsw i32 %conv84, %shl87
  store i32 %add88, i32* %z, align 4
  %44 = load i32, i32* %color_space, align 4
  %cmp89 = icmp eq i32 %44, 0
  br i1 %cmp89, label %if.then.91, label %if.else.97

if.then.91:                                       ; preds = %if.end.58
  %45 = load i32, i32* %w, align 4
  %conv92 = sitofp i32 %45 to double
  %div = fdiv double %conv92, 6.553600e+04
  store double %div, double* %R, align 8
  %46 = load i32, i32* %x, align 4
  %conv93 = sitofp i32 %46 to double
  %div94 = fdiv double %conv93, 6.553600e+04
  store double %div94, double* %G, align 8
  %47 = load i32, i32* %y, align 4
  %conv95 = sitofp i32 %47 to double
  %div96 = fdiv double %conv95, 6.553600e+04
  store double %div96, double* %B, align 8
  %48 = load double, double* %R, align 8
  %49 = load double, double* %G, align 8
  %50 = load double, double* %B, align 8
  call void @gimp_rgba_set(%struct._GimpRGB* %color, double %48, double %49, double %50, double 1.000000e+00)
  store i32 1, i32* %color_ok, align 4
  br label %if.end.157

if.else.97:                                       ; preds = %if.end.58
  %51 = load i32, i32* %color_space, align 4
  %cmp98 = icmp eq i32 %51, 1
  br i1 %cmp98, label %if.then.100, label %if.else.107

if.then.100:                                      ; preds = %if.else.97
  %52 = load i32, i32* %w, align 4
  %conv101 = sitofp i32 %52 to double
  %div102 = fdiv double %conv101, 6.553600e+04
  store double %div102, double* %H, align 8
  %53 = load i32, i32* %x, align 4
  %conv103 = sitofp i32 %53 to double
  %div104 = fdiv double %conv103, 6.553600e+04
  store double %div104, double* %S, align 8
  %54 = load i32, i32* %y, align 4
  %conv105 = sitofp i32 %54 to double
  %div106 = fdiv double %conv105, 6.553600e+04
  store double %div106, double* %V, align 8
  %55 = load double, double* %H, align 8
  %56 = load double, double* %S, align 8
  %57 = load double, double* %V, align 8
  call void @gimp_hsva_set(%struct._GimpHSV* %hsv, double %55, double %56, double %57, double 1.000000e+00)
  call void @gimp_hsv_to_rgb(%struct._GimpHSV* %hsv, %struct._GimpRGB* %color)
  store i32 1, i32* %color_ok, align 4
  br label %if.end.156

if.else.107:                                      ; preds = %if.else.97
  %58 = load i32, i32* %color_space, align 4
  %cmp108 = icmp eq i32 %58, 2
  br i1 %cmp108, label %if.then.110, label %if.else.122

if.then.110:                                      ; preds = %if.else.107
  %59 = load i32, i32* %w, align 4
  %conv111 = sitofp i32 %59 to double
  %div112 = fdiv double %conv111, 6.553600e+04
  %sub = fsub double 1.000000e+00, %div112
  store double %sub, double* %C, align 8
  %60 = load i32, i32* %x, align 4
  %conv113 = sitofp i32 %60 to double
  %div114 = fdiv double %conv113, 6.553600e+04
  %sub115 = fsub double 1.000000e+00, %div114
  store double %sub115, double* %M, align 8
  %61 = load i32, i32* %y, align 4
  %conv116 = sitofp i32 %61 to double
  %div117 = fdiv double %conv116, 6.553600e+04
  %sub118 = fsub double 1.000000e+00, %div117
  store double %sub118, double* %Y, align 8
  %62 = load i32, i32* %z, align 4
  %conv119 = sitofp i32 %62 to double
  %div120 = fdiv double %conv119, 6.553600e+04
  %sub121 = fsub double 1.000000e+00, %div120
  store double %sub121, double* %K, align 8
  %63 = load double, double* %C, align 8
  %64 = load double, double* %M, align 8
  %65 = load double, double* %Y, align 8
  %66 = load double, double* %K, align 8
  call void @gimp_cmyka_set(%struct._GimpCMYK* %cmyk, double %63, double %64, double %65, double %66, double 1.000000e+00)
  call void @gimp_cmyk_to_rgb(%struct._GimpCMYK* %cmyk, %struct._GimpRGB* %color)
  store i32 1, i32* %color_ok, align 4
  br label %if.end.155

if.else.122:                                      ; preds = %if.else.107
  %67 = load i32, i32* %color_space, align 4
  %cmp123 = icmp eq i32 %67, 8
  br i1 %cmp123, label %if.then.125, label %if.else.130

if.then.125:                                      ; preds = %if.else.122
  %68 = load i32, i32* %w, align 4
  %conv127 = sitofp i32 %68 to double
  %div128 = fdiv double %conv127, 1.000000e+04
  %sub129 = fsub double 1.000000e+00, %div128
  store double %sub129, double* %K126, align 8
  %69 = load double, double* %K126, align 8
  %70 = load double, double* %K126, align 8
  %71 = load double, double* %K126, align 8
  call void @gimp_rgba_set(%struct._GimpRGB* %color, double %69, double %70, double %71, double 1.000000e+00)
  store i32 1, i32* %color_ok, align 4
  br label %if.end.154

if.else.130:                                      ; preds = %if.else.122
  %72 = load i32, i32* %color_space, align 4
  %cmp131 = icmp eq i32 %72, 9
  br i1 %cmp131, label %if.then.133, label %if.else.151

if.then.133:                                      ; preds = %if.else.130
  %73 = load i32, i32* %w, align 4
  %conv136 = sitofp i32 %73 to double
  %div137 = fdiv double %conv136, 1.000000e+04
  %sub138 = fsub double 1.000000e+00, %div137
  store double %sub138, double* %C135, align 8
  %74 = load i32, i32* %x, align 4
  %conv140 = sitofp i32 %74 to double
  %div141 = fdiv double %conv140, 1.000000e+04
  %sub142 = fsub double 1.000000e+00, %div141
  store double %sub142, double* %M139, align 8
  %75 = load i32, i32* %y, align 4
  %conv144 = sitofp i32 %75 to double
  %div145 = fdiv double %conv144, 1.000000e+04
  %sub146 = fsub double 1.000000e+00, %div145
  store double %sub146, double* %Y143, align 8
  %76 = load i32, i32* %z, align 4
  %conv148 = sitofp i32 %76 to double
  %div149 = fdiv double %conv148, 1.000000e+04
  %sub150 = fsub double 1.000000e+00, %div149
  store double %sub150, double* %K147, align 8
  %77 = load double, double* %C135, align 8
  %78 = load double, double* %M139, align 8
  %79 = load double, double* %Y143, align 8
  %80 = load double, double* %K147, align 8
  call void @gimp_cmyka_set(%struct._GimpCMYK* %cmyk134, double %77, double %78, double %79, double %80, double 1.000000e+00)
  call void @gimp_cmyk_to_rgb(%struct._GimpCMYK* %cmyk134, %struct._GimpRGB* %color)
  store i32 1, i32* %color_ok, align 4
  br label %if.end.153

if.else.151:                                      ; preds = %if.else.130
  %81 = load i32, i32* %color_space, align 4
  %82 = load i8*, i8** %filename.addr, align 8
  %call152 = call i8* @gimp_filename_to_utf8(i8* %82)
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.28, i32 0, i32 0), i32 %81, i8* %call152)
  br label %if.end.153

if.end.153:                                       ; preds = %if.else.151, %if.then.133
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.153, %if.then.125
  br label %if.end.155

if.end.155:                                       ; preds = %if.end.154, %if.then.110
  br label %if.end.156

if.end.156:                                       ; preds = %if.end.155, %if.then.100
  br label %if.end.157

if.end.157:                                       ; preds = %if.end.156, %if.then.91
  %83 = load i32, i32* %format_version, align 4
  %cmp158 = icmp eq i32 %83, 2
  br i1 %cmp158, label %if.then.160, label %if.end.179

if.then.160:                                      ; preds = %if.end.157
  %84 = load i32, i32* %fd, align 4
  %arraydecay161 = getelementptr inbounds [4 x i8], [4 x i8]* %format2_preamble, i32 0, i32 0
  %call162 = call i64 @read(i32 %84, i8* %arraydecay161, i64 4)
  %cmp163 = icmp ne i64 %call162, 4
  br i1 %cmp163, label %if.then.165, label %if.end.170

if.then.165:                                      ; preds = %if.then.160
  %85 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call166 = call i32 @gimp_data_error_quark() #6
  %call167 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.27, i32 0, i32 0)) #5
  %86 = load i8*, i8** %filename.addr, align 8
  %call168 = call i8* @gimp_filename_to_utf8(i8* %86)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %85, i32 %call166, i32 1, i8* %call167, i8* %call168)
  %87 = load i32, i32* %fd, align 4
  %call169 = call i32 @close(i32 %87)
  %88 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %89 = bitcast %struct._GimpPalette* %88 to i8*
  call void @g_object_unref(i8* %89)
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.170:                                       ; preds = %if.then.160
  %arrayidx171 = getelementptr inbounds [4 x i8], [4 x i8]* %format2_preamble, i32 0, i64 3
  %90 = load i8, i8* %arrayidx171, align 1
  %conv172 = sext i8 %90 to i32
  %arrayidx173 = getelementptr inbounds [4 x i8], [4 x i8]* %format2_preamble, i32 0, i64 2
  %91 = load i8, i8* %arrayidx173, align 1
  %conv174 = sext i8 %91 to i32
  %shl175 = shl i32 %conv174, 8
  %add176 = add nsw i32 %conv172, %shl175
  store i32 %add176, i32* %number_of_chars, align 4
  %92 = load i32, i32* %fd, align 4
  %93 = load i32, i32* %number_of_chars, align 4
  %mul = mul nsw i32 %93, 2
  %conv177 = sext i32 %mul to i64
  %call178 = call i64 @lseek(i32 %92, i64 %conv177, i32 0) #5
  br label %if.end.179

if.end.179:                                       ; preds = %if.end.170, %if.end.157
  %94 = load i32, i32* %color_ok, align 4
  %tobool180 = icmp ne i32 %94, 0
  br i1 %tobool180, label %if.then.181, label %if.end.183

if.then.181:                                      ; preds = %if.end.179
  %95 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %call182 = call %struct._GimpPaletteEntry* @gimp_palette_add_entry(%struct._GimpPalette* %95, i32 -1, i8* null, %struct._GimpRGB* %color)
  br label %if.end.183

if.end.183:                                       ; preds = %if.then.181, %if.end.179
  br label %for.inc

for.inc:                                          ; preds = %if.end.183
  %96 = load i32, i32* %i, align 4
  %inc = add nsw i32 %96, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %97 = load i32, i32* %fd, align 4
  %call184 = call i32 @close(i32 %97)
  %98 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %99 = bitcast %struct._GimpPalette* %98 to i8*
  %call185 = call %struct._GList* @g_list_prepend(%struct._GList* null, i8* %99)
  store %struct._GList* %call185, %struct._GList** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.165, %if.then.53, %if.then.28, %if.then.15, %if.else.10, %if.else.3, %if.else
  %100 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %100
}

declare void @gimp_rgba_set(%struct._GimpRGB*, double, double, double, double) #1

declare void @gimp_hsva_set(%struct._GimpHSV*, double, double, double, double) #1

declare void @gimp_hsv_to_rgb(%struct._GimpHSV*, %struct._GimpRGB*) #1

declare void @gimp_cmyka_set(%struct._GimpCMYK*, double, double, double, double, double) #1

declare void @gimp_cmyk_to_rgb(%struct._GimpCMYK*, %struct._GimpRGB*) #1

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_palette_load_css(%struct._GimpContext* %context, i8* %filename, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GList*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %filename.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %palette = alloca %struct._GimpPalette*, align 8
  %name = alloca i8*, align 8
  %file = alloca %struct._IO_FILE*, align 8
  %regex = alloca %struct._GRegex*, align 8
  %color = alloca %struct._GimpRGB, align 8
  %matches = alloca %struct._GMatchInfo*, align 8
  %buf = alloca [1024 x i8], align 16
  %word = alloca i8*, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_palette_load_css, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_palette_load_css, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_palette_load_css, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call13 = call %struct._GRegex* @g_regex_new(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i32 0, i32 0), i32 1, i32 0, %struct._GError** %5)
  store %struct._GRegex* %call13, %struct._GRegex** %regex, align 8
  %6 = load %struct._GRegex*, %struct._GRegex** %regex, align 8
  %tobool14 = icmp ne %struct._GRegex* %6, null
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %do.end.12
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.16:                                        ; preds = %do.end.12
  %7 = load i8*, i8** %filename.addr, align 8
  %call17 = call %struct._IO_FILE* @fopen(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  store %struct._IO_FILE* %call17, %struct._IO_FILE** %file, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %tobool18 = icmp ne %struct._IO_FILE* %8, null
  br i1 %tobool18, label %if.end.25, label %if.then.19

if.then.19:                                       ; preds = %if.end.16
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call20 = call i32 @gimp_data_error_quark() #6
  %call21 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0)) #5
  %10 = load i8*, i8** %filename.addr, align 8
  %call22 = call i8* @gimp_filename_to_utf8(i8* %10)
  %call23 = call i32* @__errno_location() #6
  %11 = load i32, i32* %call23, align 4
  %call24 = call i8* @g_strerror(i32 %11) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %9, i32 %call20, i32 0, i8* %call21, i8* %call22, i8* %call24)
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.25:                                        ; preds = %if.end.16
  %12 = load i8*, i8** %filename.addr, align 8
  %call26 = call noalias i8* @g_filename_display_basename(i8* %12)
  store i8* %call26, i8** %name, align 8
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = load i8*, i8** %name, align 8
  %call27 = call %struct._GimpData* @gimp_palette_new(%struct._GimpContext* %13, i8* %14)
  %15 = bitcast %struct._GimpData* %call27 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_palette_get_type() #6
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call28)
  %16 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpPalette*
  store %struct._GimpPalette* %16, %struct._GimpPalette** %palette, align 8
  %17 = load i8*, i8** %name, align 8
  call void @g_free(i8* %17)
  br label %do.body.30

do.body.30:                                       ; preds = %do.cond, %if.end.25
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call31 = call i8* @fgets(i8* %arraydecay, i32 1024, %struct._IO_FILE* %18)
  %cmp32 = icmp ne i8* %call31, null
  br i1 %cmp32, label %if.then.33, label %if.end.49

if.then.33:                                       ; preds = %do.body.30
  %19 = load %struct._GRegex*, %struct._GRegex** %regex, align 8
  %arraydecay34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %call35 = call i32 @g_regex_match(%struct._GRegex* %19, i8* %arraydecay34, i32 0, %struct._GMatchInfo** %matches)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then.37, label %if.end.48

if.then.37:                                       ; preds = %if.then.33
  %20 = load %struct._GMatchInfo*, %struct._GMatchInfo** %matches, align 8
  %call38 = call i8* @g_match_info_fetch_named(%struct._GMatchInfo* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0))
  store i8* %call38, i8** %word, align 8
  %21 = load i8*, i8** %word, align 8
  %call39 = call i32 @gimp_rgb_parse_css(%struct._GimpRGB* %color, i8* %21, i32 -1)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.then.41, label %if.end.47

if.then.41:                                       ; preds = %if.then.37
  %22 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %call42 = call %struct._GimpPaletteEntry* @gimp_palette_find_entry(%struct._GimpPalette* %22, %struct._GimpRGB* %color, %struct._GimpPaletteEntry* null)
  %tobool43 = icmp ne %struct._GimpPaletteEntry* %call42, null
  br i1 %tobool43, label %if.end.46, label %if.then.44

if.then.44:                                       ; preds = %if.then.41
  %23 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %call45 = call %struct._GimpPaletteEntry* @gimp_palette_add_entry(%struct._GimpPalette* %23, i32 -1, i8* null, %struct._GimpRGB* %color)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.then.41
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.37
  %24 = load i8*, i8** %word, align 8
  call void @g_free(i8* %24)
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then.33
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %do.body.30
  br label %do.cond

do.cond:                                          ; preds = %if.end.49
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call50 = call i32 @feof(%struct._IO_FILE* %25) #5
  %tobool51 = icmp ne i32 %call50, 0
  %lnot = xor i1 %tobool51, true
  br i1 %lnot, label %do.body.30, label %do.end.52

do.end.52:                                        ; preds = %do.cond
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call53 = call i32 @fclose(%struct._IO_FILE* %26)
  %27 = load %struct._GRegex*, %struct._GRegex** %regex, align 8
  call void @g_regex_unref(%struct._GRegex* %27)
  %28 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %29 = bitcast %struct._GimpPalette* %28 to i8*
  %call54 = call %struct._GList* @g_list_prepend(%struct._GList* null, i8* %29)
  store %struct._GList* %call54, %struct._GList** %retval
  br label %return

return:                                           ; preds = %do.end.52, %if.then.19, %if.then.15, %if.else.10, %if.else.3, %if.else
  %30 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %30
}

declare %struct._GRegex* @g_regex_new(i8*, i32, i32, %struct._GError**) #1

declare i32 @g_regex_match(%struct._GRegex*, i8*, i32, %struct._GMatchInfo**) #1

declare i8* @g_match_info_fetch_named(%struct._GMatchInfo*, i8*) #1

declare i32 @gimp_rgb_parse_css(%struct._GimpRGB*, i8*, i32) #1

declare %struct._GimpPaletteEntry* @gimp_palette_find_entry(%struct._GimpPalette*, %struct._GimpRGB*, %struct._GimpPaletteEntry*) #1

declare void @g_regex_unref(%struct._GRegex*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_palette_load_detect_format(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %format = alloca i32, align 4
  %fd = alloca i32, align 4
  %header = alloca [16 x i8], align 16
  %lower_filename = alloca i8*, align 8
  %file_stat = alloca %struct.stat, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32 0, i32* %format, align 4
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i32 (i8*, i32, ...) @open(i8* %0, i32 0, i32 0)
  store i32 %call, i32* %fd, align 4
  %1 = load i32, i32* %fd, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end.47

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %fd, align 4
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %header, i32 0, i32 0
  %call1 = call i64 @read(i32 %2, i8* %arraydecay, i64 16)
  %cmp = icmp eq i64 %call1, 16
  br i1 %cmp, label %if.then.2, label %if.end.22

if.then.2:                                        ; preds = %if.then
  %arraydecay3 = getelementptr inbounds [16 x i8], [16 x i8]* %header, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay3, i64 0
  %call4 = call i32 @g_str_has_prefix(i8* %add.ptr, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0))
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.2
  %arraydecay6 = getelementptr inbounds [16 x i8], [16 x i8]* %header, i32 0, i32 0
  %add.ptr7 = getelementptr inbounds i8, i8* %arraydecay6, i64 8
  %call8 = call i32 @g_str_has_prefix(i8* %add.ptr7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0))
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %land.lhs.true
  store i32 2, i32* %format, align 4
  br label %if.end.21

if.else:                                          ; preds = %land.lhs.true, %if.then.2
  %arraydecay11 = getelementptr inbounds [16 x i8], [16 x i8]* %header, i32 0, i32 0
  %call12 = call i32 @g_str_has_prefix(i8* %arraydecay11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0))
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.else
  store i32 1, i32* %format, align 4
  br label %if.end.20

if.else.15:                                       ; preds = %if.else
  %arraydecay16 = getelementptr inbounds [16 x i8], [16 x i8]* %header, i32 0, i32 0
  %call17 = call i32 @g_str_has_prefix(i8* %arraydecay16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0))
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %if.else.15
  store i32 4, i32* %format, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.19, %if.else.15
  br label %if.end.20

if.end.20:                                        ; preds = %if.end, %if.then.14
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.10
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then
  %3 = load i32, i32* %format, align 4
  %cmp23 = icmp eq i32 %3, 0
  br i1 %cmp23, label %if.then.24, label %if.end.35

if.then.24:                                       ; preds = %if.end.22
  %4 = load i8*, i8** %filename.addr, align 8
  %call25 = call noalias i8* @g_ascii_strdown(i8* %4, i64 -1)
  store i8* %call25, i8** %lower_filename, align 8
  %5 = load i8*, i8** %lower_filename, align 8
  %call26 = call i32 @g_str_has_suffix(i8* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0))
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %if.then.24
  store i32 5, i32* %format, align 4
  br label %if.end.34

if.else.29:                                       ; preds = %if.then.24
  %6 = load i8*, i8** %lower_filename, align 8
  %call30 = call i32 @g_str_has_suffix(i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0))
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.else.29
  store i32 6, i32* %format, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.else.29
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.28
  %7 = load i8*, i8** %lower_filename, align 8
  call void @g_free(i8* %7)
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.end.22
  %8 = load i32, i32* %format, align 4
  %cmp36 = icmp eq i32 %8, 0
  br i1 %cmp36, label %if.then.37, label %if.end.45

if.then.37:                                       ; preds = %if.end.35
  %9 = load i32, i32* %fd, align 4
  %call38 = call i32 @fstat(i32 %9, %struct.stat* %file_stat) #5
  %cmp39 = icmp sge i32 %call38, 0
  br i1 %cmp39, label %if.then.40, label %if.end.44

if.then.40:                                       ; preds = %if.then.37
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %file_stat, i32 0, i32 8
  %10 = load i64, i64* %st_size, align 8
  %cmp41 = icmp eq i64 %10, 768
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.then.40
  store i32 3, i32* %format, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %if.then.40
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.37
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end.35
  %11 = load i32, i32* %fd, align 4
  %call46 = call i32 @close(i32 %11)
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.45, %entry
  %12 = load i32, i32* %format, align 4
  ret i32 %12
}

declare noalias i8* @g_ascii_strdown(i8*, i64) #1

declare i32 @g_str_has_suffix(i8*, i8*) #1

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

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
