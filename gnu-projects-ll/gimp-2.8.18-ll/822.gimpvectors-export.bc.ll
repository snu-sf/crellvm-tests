; ModuleID = './app/vectors/gimpvectors-export.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type opaque
%struct._GimpVectors = type { %struct._GimpItem, %struct._GList*, i32, i32, double, i8**, i32, i32, double, double, double, double }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GError = type { i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._GString = type { i8*, i64, i64 }
%struct._GimpStroke = type { %struct._GimpObject, i32, %struct._GList*, i32 }
%struct._GArray = type { i8*, i32 }
%struct._GimpAnchor = type { %struct._GimpCoords, i32, i32 }
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Vectors\00", align 1
@__func__.gimp_vectors_export_file = private unnamed_addr constant [25 x i8] c"gimp_vectors_export_file\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"vectors == NULL || GIMP_IS_VECTORS (vectors)\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"filename != NULL\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for writing: %s\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Error while writing '%s': %s\00", align 1
@__func__.gimp_vectors_export_string = private unnamed_addr constant [27 x i8] c"gimp_vectors_export_string\00", align 1
@.str.9 = private unnamed_addr constant [223 x i8] c"<?xml version=\221.0\22 encoding=\22UTF-8\22 standalone=\22no\22?>\0A<!DOCTYPE svg PUBLIC \22-//W3C//DTD SVG 20010904//EN\22\0A              \22http://www.w3.org/TR/2001/REC-SVG-20010904/DTD/svg10.dtd\22>\0A\0A<svg xmlns=\22http://www.w3.org/2000/svg\22\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"     \00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"     viewBox=\220 0 %d %d\22>\0A\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"</svg>\0A\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"mm\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"pt\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"pc\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"cm\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"width=\22%s%s\22 height=\22%s%s\22\00", align 1
@.str.20 = private unnamed_addr constant [87 x i8] c"  <path id=\22%s\22\0A        fill=\22none\22 stroke=\22black\22 stroke-width=\221\22\0A        d=\22%s\22 />\0A\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"\0A           \00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"%.2f\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"M %s,%s\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"\0A           C\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"\0A            \00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c" %s,%s\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c" Z\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"Unknown stroke type\0A\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c".2f\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"\0A           L\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_vectors_export_file(%struct._GimpImage* %image, %struct._GimpVectors* %vectors, i8* %filename, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %image.addr = alloca %struct._GimpImage*, align 8
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %filename.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %file = alloca %struct._IO_FILE*, align 8
  %str = alloca %struct._GString*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_vectors_export_file, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %cmp12 = icmp eq %struct._GimpVectors* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %15 = bitcast %struct._GimpVectors* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_vectors_get_type() #6
  store i64 %call17, i64* %__t16, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %lor.lhs.false
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type27, align 8
  %22 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %21, %22
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %24 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #7
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %25 = load i32, i32* %__r19, align 4
  store i32 %25, i32* %tmp34
  %26 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %26, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.33, %do.body.11
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_vectors_export_file, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %do.body.40

do.body.40:                                       ; preds = %do.end.39
  %27 = load i8*, i8** %filename.addr, align 8
  %cmp41 = icmp ne i8* %27, null
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %do.body.40
  br label %if.end.44

if.else.43:                                       ; preds = %do.body.40
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_vectors_export_file, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.44:                                        ; preds = %if.then.42
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  br label %do.body.46

do.body.46:                                       ; preds = %do.end.45
  %28 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp47 = icmp eq %struct._GError** %28, null
  br i1 %cmp47, label %if.then.50, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %do.body.46
  %29 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %30 = load %struct._GError*, %struct._GError** %29, align 8
  %cmp49 = icmp eq %struct._GError* %30, null
  br i1 %cmp49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %lor.lhs.false.48, %do.body.46
  br label %if.end.52

if.else.51:                                       ; preds = %lor.lhs.false.48
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_vectors_export_file, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.52:                                        ; preds = %if.then.50
  br label %do.end.53

do.end.53:                                        ; preds = %if.end.52
  %31 = load i8*, i8** %filename.addr, align 8
  %call54 = call %struct._IO_FILE* @fopen(i8* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  store %struct._IO_FILE* %call54, %struct._IO_FILE** %file, align 8
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %tobool55 = icmp ne %struct._IO_FILE* %32, null
  br i1 %tobool55, label %if.end.64, label %if.then.56

if.then.56:                                       ; preds = %do.end.53
  %33 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call57 = call i32 @g_file_error_quark()
  %call58 = call i32* @__errno_location() #6
  %34 = load i32, i32* %call58, align 4
  %call59 = call i32 @g_file_error_from_errno(i32 %34)
  %call60 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i32 0, i32 0)) #8
  %35 = load i8*, i8** %filename.addr, align 8
  %call61 = call i8* @gimp_filename_to_utf8(i8* %35)
  %call62 = call i32* @__errno_location() #6
  %36 = load i32, i32* %call62, align 4
  %call63 = call i8* @g_strerror(i32 %36) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %33, i32 %call57, i32 %call59, i8* %call60, i8* %call61, i8* %call63)
  store i32 0, i32* %retval
  br label %return

if.end.64:                                        ; preds = %do.end.53
  %37 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %38 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %call65 = call %struct._GString* @gimp_vectors_export(%struct._GimpImage* %37, %struct._GimpVectors* %38)
  store %struct._GString* %call65, %struct._GString** %str, align 8
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %40 = load %struct._GString*, %struct._GString** %str, align 8
  %str66 = getelementptr inbounds %struct._GString, %struct._GString* %40, i32 0, i32 0
  %41 = load i8*, i8** %str66, align 8
  %call67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* %41)
  %42 = load %struct._GString*, %struct._GString** %str, align 8
  %call68 = call i8* @g_string_free(%struct._GString* %42, i32 1)
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call69 = call i32 @fclose(%struct._IO_FILE* %43)
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.then.71, label %if.end.79

if.then.71:                                       ; preds = %if.end.64
  %44 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call72 = call i32 @g_file_error_quark()
  %call73 = call i32* @__errno_location() #6
  %45 = load i32, i32* %call73, align 4
  %call74 = call i32 @g_file_error_from_errno(i32 %45)
  %call75 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0)) #8
  %46 = load i8*, i8** %filename.addr, align 8
  %call76 = call i8* @gimp_filename_to_utf8(i8* %46)
  %call77 = call i32* @__errno_location() #6
  %47 = load i32, i32* %call77, align 4
  %call78 = call i8* @g_strerror(i32 %47) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %44, i32 %call72, i32 %call74, i8* %call75, i8* %call76, i8* %call78)
  store i32 0, i32* %retval
  br label %return

if.end.79:                                        ; preds = %if.end.64
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.79, %if.then.71, %if.then.56, %if.else.51, %if.else.43, %if.else.37, %if.else.9
  %48 = load i32, i32* %retval
  ret i32 %48
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_vectors_get_type() #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #3

declare i32 @g_file_error_quark() #3

declare i32 @g_file_error_from_errno(i32) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i8* @gimp_filename_to_utf8(i8*) #3

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GString* @gimp_vectors_export(%struct._GimpImage* %image, %struct._GimpVectors* %vectors) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %str = alloca %struct._GString*, align 8
  %list = alloca %struct._GList*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  %call = call %struct._GString* @g_string_new(i8* null)
  store %struct._GString* %call, %struct._GString** %str, align 8
  %0 = load %struct._GString*, %struct._GString** %str, align 8
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %0, i8* getelementptr inbounds ([223 x i8], [223 x i8]* @.str.9, i32 0, i32 0))
  %1 = load %struct._GString*, %struct._GString** %str, align 8
  %call1 = call %struct._GString* @g_string_append(%struct._GString* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0))
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %3 = load %struct._GString*, %struct._GString** %str, align 8
  call void @gimp_vectors_export_image_size(%struct._GimpImage* %2, %struct._GString* %3)
  %4 = load %struct._GString*, %struct._GString** %str, align 8
  %call2 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %4, i8 signext 10)
  %5 = load %struct._GString*, %struct._GString** %str, align 8
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call3 = call i32 @gimp_image_get_width(%struct._GimpImage* %6)
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call4 = call i32 @gimp_image_get_height(%struct._GimpImage* %7)
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %5, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i32 0, i32 0), i32 %call3, i32 %call4)
  %8 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %tobool = icmp ne %struct._GimpVectors* %8, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %10 = load %struct._GString*, %struct._GString** %str, align 8
  call void @gimp_vectors_export_path(%struct._GimpVectors* %9, %struct._GString* %10)
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call5 = call %struct._GList* @gimp_image_get_vectors_iter(%struct._GimpImage* %11)
  store %struct._GList* %call5, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %12 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool6 = icmp ne %struct._GList* %12, null
  br i1 %tobool6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %13, i32 0, i32 0
  %14 = load i8*, i8** %data, align 8
  %15 = bitcast i8* %14 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_vectors_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call7)
  %16 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpVectors*
  %17 = load %struct._GString*, %struct._GString** %str, align 8
  call void @gimp_vectors_export_path(%struct._GimpVectors* %16, %struct._GString* %17)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 1
  %19 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %19, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %20 = load %struct._GString*, %struct._GString** %str, align 8
  %call9 = call %struct._GString* @g_string_append(%struct._GString* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0))
  %21 = load %struct._GString*, %struct._GString** %str, align 8
  ret %struct._GString* %21
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

declare i8* @g_string_free(%struct._GString*, i32) #3

declare i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define i8* @gimp_vectors_export_string(%struct._GimpImage* %image, %struct._GimpVectors* %vectors) #0 {
entry:
  %retval = alloca i8*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_vectors_export_string, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %cmp12 = icmp eq %struct._GimpVectors* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %15 = bitcast %struct._GimpVectors* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_vectors_get_type() #6
  store i64 %call17, i64* %__t16, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %lor.lhs.false
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type27, align 8
  %22 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %21, %22
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %24 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #7
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %25 = load i32, i32* %__r19, align 4
  store i32 %25, i32* %tmp34
  %26 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %26, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.33, %do.body.11
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_vectors_export_string, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %28 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %call40 = call %struct._GString* @gimp_vectors_export(%struct._GimpImage* %27, %struct._GimpVectors* %28)
  %call41 = call i8* @g_string_free(%struct._GString* %call40, i32 0)
  store i8* %call41, i8** %retval
  br label %return

return:                                           ; preds = %do.end.39, %if.else.37, %if.else.9
  %29 = load i8*, i8** %retval
  ret i8* %29
}

declare %struct._GString* @g_string_new(i8*) #3

declare void @g_string_append_printf(%struct._GString*, i8*, ...) #3

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_vectors_export_image_size(%struct._GimpImage* %image, %struct._GString* %str) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %str.addr = alloca %struct._GString*, align 8
  %unit = alloca i32, align 4
  %abbrev = alloca i8*, align 8
  %wbuf = alloca [39 x i8], align 16
  %hbuf = alloca [39 x i8], align 16
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %w = alloca double, align 8
  %h = alloca double, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GString* %str, %struct._GString** %str.addr, align 8
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %0, double* %xres, double* %yres)
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call = call i32 @gimp_image_get_width(%struct._GimpImage* %1)
  %conv = sitofp i32 %call to double
  %2 = load double, double* %xres, align 8
  %div = fdiv double %conv, %2
  store double %div, double* %w, align 8
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call1 = call i32 @gimp_image_get_height(%struct._GimpImage* %3)
  %conv2 = sitofp i32 %call1 to double
  %4 = load double, double* %yres, align 8
  %div3 = fdiv double %conv2, %4
  store double %div3, double* %h, align 8
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call4 = call i32 @gimp_image_get_unit(%struct._GimpImage* %5)
  store i32 %call4, i32* %unit, align 4
  %6 = load i32, i32* %unit, align 4
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.5
    i32 3, label %sw.bb.6
    i32 4, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i8** %abbrev, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8** %abbrev, align 8
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i8** %abbrev, align 8
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i8** %abbrev, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8** %abbrev, align 8
  store i32 2, i32* %unit, align 4
  %7 = load double, double* %w, align 8
  %div8 = fdiv double %7, 1.000000e+01
  store double %div8, double* %w, align 8
  %8 = load double, double* %h, align 8
  %div9 = fdiv double %8, 1.000000e+01
  store double %div9, double* %h, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb
  %arraydecay = getelementptr inbounds [39 x i8], [39 x i8]* %wbuf, i32 0, i32 0
  %9 = load double, double* %w, align 8
  %10 = load i32, i32* %unit, align 4
  %call10 = call double @gimp_unit_get_factor(i32 %10)
  %mul = fmul double %9, %call10
  %call11 = call i8* @g_ascii_formatd(i8* %arraydecay, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), double %mul)
  %arraydecay12 = getelementptr inbounds [39 x i8], [39 x i8]* %hbuf, i32 0, i32 0
  %11 = load double, double* %h, align 8
  %12 = load i32, i32* %unit, align 4
  %call13 = call double @gimp_unit_get_factor(i32 %12)
  %mul14 = fmul double %11, %call13
  %call15 = call i8* @g_ascii_formatd(i8* %arraydecay12, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), double %mul14)
  %13 = load %struct._GString*, %struct._GString** %str.addr, align 8
  %arraydecay16 = getelementptr inbounds [39 x i8], [39 x i8]* %wbuf, i32 0, i32 0
  %14 = load i8*, i8** %abbrev, align 8
  %arraydecay17 = getelementptr inbounds [39 x i8], [39 x i8]* %hbuf, i32 0, i32 0
  %15 = load i8*, i8** %abbrev, align 8
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i32 0, i32 0), i8* %arraydecay16, i8* %14, i8* %arraydecay17, i8* %15)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._GString* @g_string_append_c_inline(%struct._GString* %gstring, i8 signext %c) #5 {
entry:
  %gstring.addr = alloca %struct._GString*, align 8
  %c.addr = alloca i8, align 1
  store %struct._GString* %gstring, %struct._GString** %gstring.addr, align 8
  store i8 %c, i8* %c.addr, align 1
  %0 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %len = getelementptr inbounds %struct._GString, %struct._GString* %0, i32 0, i32 1
  %1 = load i64, i64* %len, align 8
  %add = add i64 %1, 1
  %2 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %allocated_len = getelementptr inbounds %struct._GString, %struct._GString* %2, i32 0, i32 2
  %3 = load i64, i64* %allocated_len, align 8
  %cmp = icmp ult i64 %add, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i8, i8* %c.addr, align 1
  %5 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %len1 = getelementptr inbounds %struct._GString, %struct._GString* %5, i32 0, i32 1
  %6 = load i64, i64* %len1, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %len1, align 8
  %7 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %7, i32 0, i32 0
  %8 = load i8*, i8** %str, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %6
  store i8 %4, i8* %arrayidx, align 1
  %9 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %len2 = getelementptr inbounds %struct._GString, %struct._GString* %9, i32 0, i32 1
  %10 = load i64, i64* %len2, align 8
  %11 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %str3 = getelementptr inbounds %struct._GString, %struct._GString* %11, i32 0, i32 0
  %12 = load i8*, i8** %str3, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %12, i64 %10
  store i8 0, i8* %arrayidx4, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %14 = load i8, i8* %c.addr, align 1
  %call = call %struct._GString* @g_string_insert_c(%struct._GString* %13, i64 -1, i8 signext %14)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  ret %struct._GString* %15
}

declare i32 @gimp_image_get_width(%struct._GimpImage*) #3

declare i32 @gimp_image_get_height(%struct._GimpImage*) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_vectors_export_path(%struct._GimpVectors* %vectors, %struct._GString* %str) #0 {
entry:
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %str.addr = alloca %struct._GString*, align 8
  %name = alloca i8*, align 8
  %data = alloca i8*, align 8
  %esc_name = alloca i8*, align 8
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  store %struct._GString* %str, %struct._GString** %str.addr, align 8
  %0 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %1 = bitcast %struct._GimpVectors* %0 to i8*
  %call = call i8* @gimp_object_get_name(i8* %1)
  store i8* %call, i8** %name, align 8
  %2 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %call1 = call i8* @gimp_vectors_export_path_data(%struct._GimpVectors* %2)
  store i8* %call1, i8** %data, align 8
  %3 = load i8*, i8** %name, align 8
  %4 = load i8*, i8** %name, align 8
  %call2 = call i64 @strlen(i8* %4) #7
  %call3 = call i8* @g_markup_escape_text(i8* %3, i64 %call2)
  store i8* %call3, i8** %esc_name, align 8
  %5 = load %struct._GString*, %struct._GString** %str.addr, align 8
  %6 = load i8*, i8** %esc_name, align 8
  %7 = load i8*, i8** %data, align 8
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %5, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.20, i32 0, i32 0), i8* %6, i8* %7)
  %8 = load i8*, i8** %esc_name, align 8
  call void @g_free(i8* %8)
  %9 = load i8*, i8** %data, align 8
  call void @g_free(i8* %9)
  ret void
}

declare %struct._GList* @gimp_image_get_vectors_iter(%struct._GimpImage*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

declare void @gimp_image_get_resolution(%struct._GimpImage*, double*, double*) #3

declare i32 @gimp_image_get_unit(%struct._GimpImage*) #3

declare i8* @g_ascii_formatd(i8*, i32, i8*, double) #3

declare double @gimp_unit_get_factor(i32) #3

declare %struct._GString* @g_string_insert_c(%struct._GString*, i64, i8 signext) #3

declare i8* @gimp_object_get_name(i8*) #3

; Function Attrs: nounwind uwtable
define internal i8* @gimp_vectors_export_path_data(%struct._GimpVectors* %vectors) #0 {
entry:
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %str = alloca %struct._GString*, align 8
  %strokes = alloca %struct._GList*, align 8
  %x_string = alloca [39 x i8], align 16
  %y_string = alloca [39 x i8], align 16
  %closed = alloca i32, align 4
  %stroke = alloca %struct._GimpStroke*, align 8
  %control_points = alloca %struct._GArray*, align 8
  %anchor = alloca %struct._GimpAnchor*, align 8
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  store i32 0, i32* %closed, align 4
  %call = call %struct._GString* @g_string_new(i8* null)
  store %struct._GString* %call, %struct._GString** %str, align 8
  %0 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %strokes1 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %0, i32 0, i32 1
  %1 = load %struct._GList*, %struct._GList** %strokes1, align 8
  store %struct._GList* %1, %struct._GList** %strokes, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.115, %entry
  %2 = load %struct._GList*, %struct._GList** %strokes, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end.116

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %strokes, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct._GimpStroke*
  store %struct._GimpStroke* %5, %struct._GimpStroke** %stroke, align 8
  %6 = load i32, i32* %closed, align 4
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load %struct._GString*, %struct._GString** %str, align 8
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %8 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %call3 = call %struct._GArray* @gimp_stroke_control_points_get(%struct._GimpStroke* %8, i32* %closed)
  store %struct._GArray* %call3, %struct._GArray** %control_points, align 8
  %9 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %10 = bitcast %struct._GimpStroke* %9 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %10, %struct._GTypeInstance** %__inst, align 8
  %call4 = call i64 @gimp_bezier_stroke_get_type() #6
  store i64 %call4, i64* %__t, align 8
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool5 = icmp ne %struct._GTypeInstance* %11, null
  br i1 %tobool5, label %if.else, label %if.then.6

if.then.6:                                        ; preds = %if.end
  store i32 0, i32* %__r, align 4
  br label %if.end.13

if.else:                                          ; preds = %if.end
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool7 = icmp ne %struct._GTypeClass* %13, null
  br i1 %tobool7, label %land.lhs.true, label %if.else.10

land.lhs.true:                                    ; preds = %if.else
  %14 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class8 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class8, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %15, i32 0, i32 0
  %16 = load i64, i64* %g_type, align 8
  %17 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %16, %17
  br i1 %cmp, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.12

if.else.10:                                       ; preds = %land.lhs.true, %if.else
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %19 = load i64, i64* %__t, align 8
  %call11 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %18, i64 %19) #7
  store i32 %call11, i32* %__r, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.10, %if.then.9
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.6
  %20 = load i32, i32* %__r, align 4
  store i32 %20, i32* %tmp
  %21 = load i32, i32* %tmp
  %tobool14 = icmp ne i32 %21, 0
  br i1 %tobool14, label %if.then.15, label %if.else.60

if.then.15:                                       ; preds = %if.end.13
  %22 = load %struct._GArray*, %struct._GArray** %control_points, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %22, i32 0, i32 1
  %23 = load i32, i32* %len, align 4
  %cmp16 = icmp uge i32 %23, 3
  br i1 %cmp16, label %if.then.17, label %if.end.25

if.then.17:                                       ; preds = %if.then.15
  %24 = load %struct._GArray*, %struct._GArray** %control_points, align 8
  %data18 = getelementptr inbounds %struct._GArray, %struct._GArray* %24, i32 0, i32 0
  %25 = load i8*, i8** %data18, align 8
  %26 = bitcast i8* %25 to %struct._GimpAnchor*
  %arrayidx = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %26, i64 1
  store %struct._GimpAnchor* %arrayidx, %struct._GimpAnchor** %anchor, align 8
  %arraydecay = getelementptr inbounds [39 x i8], [39 x i8]* %x_string, i32 0, i32 0
  %27 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %position = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %27, i32 0, i32 0
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position, i32 0, i32 0
  %28 = load double, double* %x, align 8
  %call19 = call i8* @g_ascii_formatd(i8* %arraydecay, i32 39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), double %28)
  %arraydecay20 = getelementptr inbounds [39 x i8], [39 x i8]* %y_string, i32 0, i32 0
  %29 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %position21 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %29, i32 0, i32 0
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position21, i32 0, i32 1
  %30 = load double, double* %y, align 8
  %call22 = call i8* @g_ascii_formatd(i8* %arraydecay20, i32 39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), double %30)
  %31 = load %struct._GString*, %struct._GString** %str, align 8
  %arraydecay23 = getelementptr inbounds [39 x i8], [39 x i8]* %x_string, i32 0, i32 0
  %arraydecay24 = getelementptr inbounds [39 x i8], [39 x i8]* %y_string, i32 0, i32 0
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i8* %arraydecay23, i8* %arraydecay24)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.17, %if.then.15
  %32 = load %struct._GArray*, %struct._GArray** %control_points, align 8
  %len26 = getelementptr inbounds %struct._GArray, %struct._GArray* %32, i32 0, i32 1
  %33 = load i32, i32* %len26, align 4
  %cmp27 = icmp ugt i32 %33, 3
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.25
  %34 = load %struct._GString*, %struct._GString** %str, align 8
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.end.25
  store i32 2, i32* %i, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc, %if.end.29
  %35 = load i32, i32* %i, align 4
  %36 = load %struct._GArray*, %struct._GArray** %control_points, align 8
  %len31 = getelementptr inbounds %struct._GArray, %struct._GArray* %36, i32 0, i32 1
  %37 = load i32, i32* %len31, align 4
  %38 = load i32, i32* %closed, align 4
  %tobool32 = icmp ne i32 %38, 0
  %cond = select i1 %tobool32, i32 2, i32 -1
  %add = add i32 %37, %cond
  %cmp33 = icmp ult i32 %35, %add
  br i1 %cmp33, label %for.body.34, label %for.end

for.body.34:                                      ; preds = %for.cond.30
  %39 = load i32, i32* %i, align 4
  %cmp35 = icmp sgt i32 %39, 2
  br i1 %cmp35, label %land.lhs.true.36, label %if.end.39

land.lhs.true.36:                                 ; preds = %for.body.34
  %40 = load i32, i32* %i, align 4
  %rem = srem i32 %40, 3
  %cmp37 = icmp eq i32 %rem, 2
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %land.lhs.true.36
  %41 = load %struct._GString*, %struct._GString** %str, align 8
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %land.lhs.true.36, %for.body.34
  %42 = load i32, i32* %i, align 4
  %43 = load %struct._GArray*, %struct._GArray** %control_points, align 8
  %len40 = getelementptr inbounds %struct._GArray, %struct._GArray* %43, i32 0, i32 1
  %44 = load i32, i32* %len40, align 4
  %rem41 = urem i32 %42, %44
  %idxprom = zext i32 %rem41 to i64
  %45 = load %struct._GArray*, %struct._GArray** %control_points, align 8
  %data42 = getelementptr inbounds %struct._GArray, %struct._GArray* %45, i32 0, i32 0
  %46 = load i8*, i8** %data42, align 8
  %47 = bitcast i8* %46 to %struct._GimpAnchor*
  %arrayidx43 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %47, i64 %idxprom
  store %struct._GimpAnchor* %arrayidx43, %struct._GimpAnchor** %anchor, align 8
  %arraydecay44 = getelementptr inbounds [39 x i8], [39 x i8]* %x_string, i32 0, i32 0
  %48 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %position45 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %48, i32 0, i32 0
  %x46 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position45, i32 0, i32 0
  %49 = load double, double* %x46, align 8
  %call47 = call i8* @g_ascii_formatd(i8* %arraydecay44, i32 39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), double %49)
  %arraydecay48 = getelementptr inbounds [39 x i8], [39 x i8]* %y_string, i32 0, i32 0
  %50 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %position49 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %50, i32 0, i32 0
  %y50 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position49, i32 0, i32 1
  %51 = load double, double* %y50, align 8
  %call51 = call i8* @g_ascii_formatd(i8* %arraydecay48, i32 39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), double %51)
  %52 = load %struct._GString*, %struct._GString** %str, align 8
  %arraydecay52 = getelementptr inbounds [39 x i8], [39 x i8]* %x_string, i32 0, i32 0
  %arraydecay53 = getelementptr inbounds [39 x i8], [39 x i8]* %y_string, i32 0, i32 0
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* %arraydecay52, i8* %arraydecay53)
  br label %for.inc

for.inc:                                          ; preds = %if.end.39
  %53 = load i32, i32* %i, align 4
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.30

for.end:                                          ; preds = %for.cond.30
  %54 = load i32, i32* %closed, align 4
  %tobool54 = icmp ne i32 %54, 0
  br i1 %tobool54, label %land.lhs.true.55, label %if.end.59

land.lhs.true.55:                                 ; preds = %for.end
  %55 = load %struct._GArray*, %struct._GArray** %control_points, align 8
  %len56 = getelementptr inbounds %struct._GArray, %struct._GArray* %55, i32 0, i32 1
  %56 = load i32, i32* %len56, align 4
  %cmp57 = icmp ugt i32 %56, 3
  br i1 %cmp57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %land.lhs.true.55
  %57 = load %struct._GString*, %struct._GString** %str, align 8
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %land.lhs.true.55, %for.end
  br label %if.end.113

if.else.60:                                       ; preds = %if.end.13
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i32 0, i32 0))
  %58 = load %struct._GArray*, %struct._GArray** %control_points, align 8
  %len61 = getelementptr inbounds %struct._GArray, %struct._GArray* %58, i32 0, i32 1
  %59 = load i32, i32* %len61, align 4
  %cmp62 = icmp uge i32 %59, 1
  br i1 %cmp62, label %if.then.63, label %if.end.76

if.then.63:                                       ; preds = %if.else.60
  %60 = load %struct._GArray*, %struct._GArray** %control_points, align 8
  %data64 = getelementptr inbounds %struct._GArray, %struct._GArray* %60, i32 0, i32 0
  %61 = load i8*, i8** %data64, align 8
  %62 = bitcast i8* %61 to %struct._GimpAnchor*
  %arrayidx65 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %62, i64 0
  store %struct._GimpAnchor* %arrayidx65, %struct._GimpAnchor** %anchor, align 8
  %arraydecay66 = getelementptr inbounds [39 x i8], [39 x i8]* %x_string, i32 0, i32 0
  %63 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %position67 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %63, i32 0, i32 0
  %x68 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position67, i32 0, i32 0
  %64 = load double, double* %x68, align 8
  %call69 = call i8* @g_ascii_formatd(i8* %arraydecay66, i32 39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), double %64)
  %arraydecay70 = getelementptr inbounds [39 x i8], [39 x i8]* %y_string, i32 0, i32 0
  %65 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %position71 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %65, i32 0, i32 0
  %y72 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position71, i32 0, i32 1
  %66 = load double, double* %y72, align 8
  %call73 = call i8* @g_ascii_formatd(i8* %arraydecay70, i32 39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), double %66)
  %67 = load %struct._GString*, %struct._GString** %str, align 8
  %arraydecay74 = getelementptr inbounds [39 x i8], [39 x i8]* %x_string, i32 0, i32 0
  %arraydecay75 = getelementptr inbounds [39 x i8], [39 x i8]* %y_string, i32 0, i32 0
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i8* %arraydecay74, i8* %arraydecay75)
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.63, %if.else.60
  %68 = load %struct._GArray*, %struct._GArray** %control_points, align 8
  %len77 = getelementptr inbounds %struct._GArray, %struct._GArray* %68, i32 0, i32 1
  %69 = load i32, i32* %len77, align 4
  %cmp78 = icmp ugt i32 %69, 1
  br i1 %cmp78, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %if.end.76
  %70 = load %struct._GString*, %struct._GString** %str, align 8
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0))
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.79, %if.end.76
  store i32 1, i32* %i, align 4
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc.104, %if.end.80
  %71 = load i32, i32* %i, align 4
  %72 = load %struct._GArray*, %struct._GArray** %control_points, align 8
  %len82 = getelementptr inbounds %struct._GArray, %struct._GArray* %72, i32 0, i32 1
  %73 = load i32, i32* %len82, align 4
  %cmp83 = icmp ult i32 %71, %73
  br i1 %cmp83, label %for.body.84, label %for.end.106

for.body.84:                                      ; preds = %for.cond.81
  %74 = load i32, i32* %i, align 4
  %cmp85 = icmp sgt i32 %74, 1
  br i1 %cmp85, label %land.lhs.true.86, label %if.end.90

land.lhs.true.86:                                 ; preds = %for.body.84
  %75 = load i32, i32* %i, align 4
  %rem87 = srem i32 %75, 3
  %cmp88 = icmp eq i32 %rem87, 1
  br i1 %cmp88, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %land.lhs.true.86
  %76 = load %struct._GString*, %struct._GString** %str, align 8
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %76, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.89, %land.lhs.true.86, %for.body.84
  %77 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %77 to i64
  %78 = load %struct._GArray*, %struct._GArray** %control_points, align 8
  %data92 = getelementptr inbounds %struct._GArray, %struct._GArray* %78, i32 0, i32 0
  %79 = load i8*, i8** %data92, align 8
  %80 = bitcast i8* %79 to %struct._GimpAnchor*
  %arrayidx93 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %80, i64 %idxprom91
  store %struct._GimpAnchor* %arrayidx93, %struct._GimpAnchor** %anchor, align 8
  %arraydecay94 = getelementptr inbounds [39 x i8], [39 x i8]* %x_string, i32 0, i32 0
  %81 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %position95 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %81, i32 0, i32 0
  %x96 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position95, i32 0, i32 0
  %82 = load double, double* %x96, align 8
  %call97 = call i8* @g_ascii_formatd(i8* %arraydecay94, i32 39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), double %82)
  %arraydecay98 = getelementptr inbounds [39 x i8], [39 x i8]* %y_string, i32 0, i32 0
  %83 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %position99 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %83, i32 0, i32 0
  %y100 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position99, i32 0, i32 1
  %84 = load double, double* %y100, align 8
  %call101 = call i8* @g_ascii_formatd(i8* %arraydecay98, i32 39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), double %84)
  %85 = load %struct._GString*, %struct._GString** %str, align 8
  %arraydecay102 = getelementptr inbounds [39 x i8], [39 x i8]* %x_string, i32 0, i32 0
  %arraydecay103 = getelementptr inbounds [39 x i8], [39 x i8]* %y_string, i32 0, i32 0
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* %arraydecay102, i8* %arraydecay103)
  br label %for.inc.104

for.inc.104:                                      ; preds = %if.end.90
  %86 = load i32, i32* %i, align 4
  %inc105 = add nsw i32 %86, 1
  store i32 %inc105, i32* %i, align 4
  br label %for.cond.81

for.end.106:                                      ; preds = %for.cond.81
  %87 = load i32, i32* %closed, align 4
  %tobool107 = icmp ne i32 %87, 0
  br i1 %tobool107, label %land.lhs.true.108, label %if.end.112

land.lhs.true.108:                                ; preds = %for.end.106
  %88 = load %struct._GArray*, %struct._GArray** %control_points, align 8
  %len109 = getelementptr inbounds %struct._GArray, %struct._GArray* %88, i32 0, i32 1
  %89 = load i32, i32* %len109, align 4
  %cmp110 = icmp ugt i32 %89, 1
  br i1 %cmp110, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %land.lhs.true.108
  %90 = load %struct._GString*, %struct._GString** %str, align 8
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.111, %land.lhs.true.108, %for.end.106
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %if.end.59
  %91 = load %struct._GArray*, %struct._GArray** %control_points, align 8
  %call114 = call i8* @g_array_free(%struct._GArray* %91, i32 1)
  br label %for.inc.115

for.inc.115:                                      ; preds = %if.end.113
  %92 = load %struct._GList*, %struct._GList** %strokes, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %92, i32 0, i32 1
  %93 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %93, %struct._GList** %strokes, align 8
  br label %for.cond

for.end.116:                                      ; preds = %for.cond
  %94 = load %struct._GString*, %struct._GString** %str, align 8
  %call117 = call i8* @g_string_free(%struct._GString* %94, i32 0)
  %call118 = call i8* @g_strchomp(i8* %call117)
  ret i8* %call118
}

declare i8* @g_markup_escape_text(i8*, i64) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare void @g_free(i8*) #3

declare %struct._GArray* @gimp_stroke_control_points_get(%struct._GimpStroke*, i32*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_bezier_stroke_get_type() #1

declare void @g_printerr(i8*, ...) #3

declare i8* @g_array_free(%struct._GArray*, i32) #3

declare i8* @g_strchomp(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
