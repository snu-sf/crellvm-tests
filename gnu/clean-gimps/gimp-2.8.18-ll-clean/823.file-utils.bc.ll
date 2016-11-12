; ModuleID = './app/file/file-utils.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GError = type { i32, i32, i8* }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type { %struct._GimpObject, %struct._Gimp*, %struct._GSList*, i32, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GimpPlugIn*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GimpPlugInShm*, %struct._GimpInterpreterDB*, %struct._GimpEnvironTable*, %struct._GimpPlugInDebug*, %struct._GList* }
%struct._GimpPlugIn = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GimpPlugInShm = type opaque
%struct._GimpInterpreterDB = type opaque
%struct._GimpEnvironTable = type opaque
%struct._GimpPlugInDebug = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque
%struct._GimpPlugInProcedure = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpThumbnail = type { %struct._GObject, i32, i8*, i8*, i64, i64, i32, i32, i32, i8*, i32, i32, i32, i8*, i64, i64, i8*, i8* }
%struct._GimpImagefile = type { %struct._GimpViewable }

@.str = private unnamed_addr constant [10 x i8] c"Gimp-File\00", align 1
@__func__.file_utils_filename_is_uri = private unnamed_addr constant [27 x i8] c"file_utils_filename_is_uri\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"filename != NULL\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"://\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+-.\00", align 1
@g_ascii_table = external constant i16*, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"'%s:' is not a valid URI scheme\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Invalid character sequence in URI\00", align 1
@__func__.file_utils_filename_to_uri = private unnamed_addr constant [27 x i8] c"file_utils_filename_to_uri\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@__func__.file_utils_any_to_uri = private unnamed_addr constant [22 x i8] c"file_utils_any_to_uri\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"filename_or_uri != NULL\00", align 1
@__func__.file_utils_filename_from_uri = private unnamed_addr constant [29 x i8] c"file_utils_filename_from_uri\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"uri != NULL\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c".gz\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c".bz2\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c".\00", align 1
@__func__.file_utils_uri_to_utf8_filename = private unnamed_addr constant [32 x i8] c"file_utils_uri_to_utf8_filename\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"file:\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"%s: cannot convert filename to UTF-8: %s\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"file-utils.c:300\00", align 1
@__func__.file_utils_uri_display_basename = private unnamed_addr constant [32 x i8] c"file_utils_uri_display_basename\00", align 1
@__func__.file_utils_uri_display_name = private unnamed_addr constant [28 x i8] c"file_utils_uri_display_name\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@__func__.file_utils_load_thumbnail = private unnamed_addr constant [26 x i8] c"file_utils_load_thumbnail\00", align 1
@__func__.file_utils_save_thumbnail = private unnamed_addr constant [26 x i8] c"file_utils_save_thumbnail\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@__func__.file_utils_uri_to_utf8_basename = private unnamed_addr constant [32 x i8] c"file_utils_uri_to_utf8_basename\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"file-utils.c\00", align 1
@__func__.file_utils_unescape_uri = private unnamed_addr constant [24 x i8] c"file_utils_unescape_uri\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"out - result <= len\00", align 1

; Function Attrs: nounwind uwtable
define i32 @file_utils_filename_is_uri(i8* %filename, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %scheme = alloca i8*, align 8
  %canon = alloca i8*, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.file_utils_filename_is_uri, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp2 = icmp eq %struct._GError** %1, null
  br i1 %cmp2, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.1
  %2 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %3 = load %struct._GError*, %struct._GError** %2, align 8
  %cmp3 = icmp eq %struct._GError* %3, null
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %lor.lhs.false, %do.body.1
  br label %if.end.6

if.else.5:                                        ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.file_utils_filename_is_uri, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.then.4
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  %4 = load i8*, i8** %filename.addr, align 8
  %call = call i8* @strstr(i8* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #7
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.then.8, label %if.end.29

if.then.8:                                        ; preds = %do.end.7
  %5 = load i8*, i8** %filename.addr, align 8
  %6 = load i8*, i8** %filename.addr, align 8
  %call9 = call i8* @strstr(i8* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #7
  %7 = load i8*, i8** %filename.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %call9 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call10 = call noalias i8* @g_strndup(i8* %5, i64 %sub.ptr.sub)
  store i8* %call10, i8** %scheme, align 8
  %8 = load i8*, i8** %scheme, align 8
  %call11 = call noalias i8* @g_strdup(i8* %8)
  store i8* %call11, i8** %canon, align 8
  %9 = load i8*, i8** %canon, align 8
  %call12 = call i8* @g_strcanon(i8* %9, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i32 0, i32 0), i8 signext 45)
  %10 = load i8*, i8** %scheme, align 8
  %11 = load i8*, i8** %canon, align 8
  %call13 = call i32 @strcmp(i8* %10, i8* %11) #7
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.19, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %if.then.8
  %12 = load i8*, i8** %canon, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 0
  %13 = load i8, i8* %arrayidx, align 1
  %idxprom = zext i8 %13 to i64
  %14 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx16 = getelementptr inbounds i16, i16* %14, i64 %idxprom
  %15 = load i16, i16* %arrayidx16, align 2
  %conv = zext i16 %15 to i32
  %and = and i32 %conv, 16
  %cmp17 = icmp ne i32 %and, 0
  br i1 %cmp17, label %if.end.22, label %if.then.19

if.then.19:                                       ; preds = %lor.lhs.false.15, %if.then.8
  %16 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call20 = call i32 @g_file_error_quark()
  %call21 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0)) #5
  %17 = load i8*, i8** %scheme, align 8
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %16, i32 %call20, i32 0, i8* %call21, i8* %17)
  %18 = load i8*, i8** %scheme, align 8
  call void @g_free(i8* %18)
  %19 = load i8*, i8** %canon, align 8
  call void @g_free(i8* %19)
  store i32 0, i32* %retval
  br label %return

if.end.22:                                        ; preds = %lor.lhs.false.15
  %20 = load i8*, i8** %scheme, align 8
  call void @g_free(i8* %20)
  %21 = load i8*, i8** %canon, align 8
  call void @g_free(i8* %21)
  %22 = load i8*, i8** %filename.addr, align 8
  %call23 = call i32 @g_utf8_validate(i8* %22, i64 -1, i8** null)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end.28, label %if.then.25

if.then.25:                                       ; preds = %if.end.22
  %23 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call26 = call i32 @g_convert_error_quark()
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0)) #5
  call void @g_set_error_literal(%struct._GError** %23, i32 %call26, i32 1, i8* %call27)
  store i32 0, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.end.22
  store i32 1, i32* %retval
  br label %return

if.end.29:                                        ; preds = %do.end.7
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.29, %if.end.28, %if.then.25, %if.then.19, %if.else.5, %if.else
  %24 = load i32, i32* %retval
  ret i32 %24
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #2

declare noalias i8* @g_strndup(i8*, i64) #1

declare noalias i8* @g_strdup(i8*) #1

declare i8* @g_strcanon(i8*, i8*, i8 signext) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #1

declare i32 @g_file_error_quark() #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare void @g_free(i8*) #1

declare i32 @g_utf8_validate(i8*, i64, i8**) #1

declare void @g_set_error_literal(%struct._GError**, i32, i32, i8*) #1

declare i32 @g_convert_error_quark() #1

; Function Attrs: nounwind uwtable
define i8* @file_utils_filename_to_uri(%struct._Gimp* %gimp, i8* %filename, %struct._GError** %error) #0 {
entry:
  %retval = alloca i8*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %filename.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %temp_error = alloca %struct._GError*, align 8
  %absolute = alloca i8*, align 8
  %uri = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %current = alloca i8*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store %struct._GError* null, %struct._GError** %temp_error, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.file_utils_filename_to_uri, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %filename.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.file_utils_filename_to_uri, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp18 = icmp eq %struct._GError** %14, null
  br i1 %cmp18, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.17
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %16 = load %struct._GError*, %struct._GError** %15, align 8
  %cmp19 = icmp eq %struct._GError* %16, null
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %lor.lhs.false, %do.body.17
  br label %if.end.22

if.else.21:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.file_utils_filename_to_uri, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.22:                                        ; preds = %if.then.20
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %plug_in_manager = getelementptr inbounds %struct._Gimp, %struct._Gimp* %17, i32 0, i32 25
  %18 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager, align 8
  %load_procs = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %18, i32 0, i32 5
  %19 = load %struct._GSList*, %struct._GSList** %load_procs, align 8
  %20 = load i8*, i8** %filename.addr, align 8
  %call24 = call %struct._GimpPlugInProcedure* @file_procedure_find_by_prefix(%struct._GSList* %19, i8* %20)
  %tobool25 = icmp ne %struct._GimpPlugInProcedure* %call24, null
  br i1 %tobool25, label %if.then.26, label %if.else.34

if.then.26:                                       ; preds = %do.end.23
  %21 = load i8*, i8** %filename.addr, align 8
  %call27 = call i32 @g_utf8_validate(i8* %21, i64 -1, i8** null)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.else.31

if.then.29:                                       ; preds = %if.then.26
  %22 = load i8*, i8** %filename.addr, align 8
  %call30 = call noalias i8* @g_strdup(i8* %22)
  store i8* %call30, i8** %retval
  br label %return

if.else.31:                                       ; preds = %if.then.26
  %23 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call32 = call i32 @g_convert_error_quark()
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0)) #5
  call void @g_set_error_literal(%struct._GError** %23, i32 %call32, i32 1, i8* %call33)
  store i8* null, i8** %retval
  br label %return

if.else.34:                                       ; preds = %do.end.23
  %24 = load i8*, i8** %filename.addr, align 8
  %call35 = call i32 @file_utils_filename_is_uri(i8* %24, %struct._GError** %temp_error)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then.37, label %if.else.39

if.then.37:                                       ; preds = %if.else.34
  %25 = load i8*, i8** %filename.addr, align 8
  %call38 = call noalias i8* @g_strdup(i8* %25)
  store i8* %call38, i8** %retval
  br label %return

if.else.39:                                       ; preds = %if.else.34
  %26 = load %struct._GError*, %struct._GError** %temp_error, align 8
  %tobool40 = icmp ne %struct._GError* %26, null
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.else.39
  %27 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %28 = load %struct._GError*, %struct._GError** %temp_error, align 8
  call void @g_propagate_error(%struct._GError** %27, %struct._GError* %28)
  store i8* null, i8** %retval
  br label %return

if.end.42:                                        ; preds = %if.else.39
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43
  %29 = load i8*, i8** %filename.addr, align 8
  %call45 = call i32 @g_path_is_absolute(i8* %29)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.else.51, label %if.then.47

if.then.47:                                       ; preds = %if.end.44
  %call49 = call i8* @g_get_current_dir()
  store i8* %call49, i8** %current, align 8
  %30 = load i8*, i8** %current, align 8
  %31 = load i8*, i8** %filename.addr, align 8
  %call50 = call noalias i8* (i8*, ...) @g_build_filename(i8* %30, i8* %31, i8* null)
  store i8* %call50, i8** %absolute, align 8
  %32 = load i8*, i8** %current, align 8
  call void @g_free(i8* %32)
  br label %if.end.53

if.else.51:                                       ; preds = %if.end.44
  %33 = load i8*, i8** %filename.addr, align 8
  %call52 = call noalias i8* @g_strdup(i8* %33)
  store i8* %call52, i8** %absolute, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.51, %if.then.47
  %34 = load i8*, i8** %absolute, align 8
  %35 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call54 = call noalias i8* @g_filename_to_uri(i8* %34, i8* null, %struct._GError** %35)
  store i8* %call54, i8** %uri, align 8
  %36 = load i8*, i8** %absolute, align 8
  call void @g_free(i8* %36)
  %37 = load i8*, i8** %uri, align 8
  store i8* %37, i8** %retval
  br label %return

return:                                           ; preds = %if.end.53, %if.then.41, %if.then.37, %if.else.31, %if.then.29, %if.else.21, %if.else.14, %if.else.9
  %38 = load i8*, i8** %retval
  ret i8* %38
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #4

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare %struct._GimpPlugInProcedure* @file_procedure_find_by_prefix(%struct._GSList*, i8*) #1

declare void @g_propagate_error(%struct._GError**, %struct._GError*) #1

declare i32 @g_path_is_absolute(i8*) #1

declare i8* @g_get_current_dir() #1

declare noalias i8* @g_build_filename(i8*, ...) #1

declare noalias i8* @g_filename_to_uri(i8*, i8*, %struct._GError**) #1

; Function Attrs: nounwind uwtable
define i8* @file_utils_any_to_uri(%struct._Gimp* %gimp, i8* %filename_or_uri, %struct._GError** %error) #0 {
entry:
  %retval = alloca i8*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %filename_or_uri.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %uri = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i8* %filename_or_uri, i8** %filename_or_uri.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.file_utils_any_to_uri, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %filename_or_uri.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.file_utils_any_to_uri, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp18 = icmp eq %struct._GError** %14, null
  br i1 %cmp18, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.17
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %16 = load %struct._GError*, %struct._GError** %15, align 8
  %cmp19 = icmp eq %struct._GError* %16, null
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %lor.lhs.false, %do.body.17
  br label %if.end.22

if.else.21:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.file_utils_any_to_uri, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.22:                                        ; preds = %if.then.20
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %17 = load i8*, i8** %filename_or_uri.addr, align 8
  %call24 = call noalias i8* @g_filename_from_uri(i8* %17, i8** null, %struct._GError** null)
  store i8* %call24, i8** %uri, align 8
  %18 = load i8*, i8** %uri, align 8
  %tobool25 = icmp ne i8* %18, null
  br i1 %tobool25, label %if.then.26, label %if.else.28

if.then.26:                                       ; preds = %do.end.23
  %19 = load i8*, i8** %uri, align 8
  call void @g_free(i8* %19)
  %20 = load i8*, i8** %filename_or_uri.addr, align 8
  %call27 = call noalias i8* @g_strdup(i8* %20)
  store i8* %call27, i8** %uri, align 8
  br label %if.end.30

if.else.28:                                       ; preds = %do.end.23
  %21 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %22 = load i8*, i8** %filename_or_uri.addr, align 8
  %23 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call29 = call i8* @file_utils_filename_to_uri(%struct._Gimp* %21, i8* %22, %struct._GError** %23)
  store i8* %call29, i8** %uri, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.28, %if.then.26
  %24 = load i8*, i8** %uri, align 8
  store i8* %24, i8** %retval
  br label %return

return:                                           ; preds = %if.end.30, %if.else.21, %if.else.14, %if.else.9
  %25 = load i8*, i8** %retval
  ret i8* %25
}

declare noalias i8* @g_filename_from_uri(i8*, i8**, %struct._GError**) #1

; Function Attrs: nounwind uwtable
define i8* @file_utils_filename_from_uri(i8* %uri) #0 {
entry:
  %retval = alloca i8*, align 8
  %uri.addr = alloca i8*, align 8
  %filename = alloca i8*, align 8
  %hostname = alloca i8*, align 8
  store i8* %uri, i8** %uri.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %uri.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.file_utils_filename_from_uri, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i8*, i8** %uri.addr, align 8
  %call = call noalias i8* @g_filename_from_uri(i8* %1, i8** %hostname, %struct._GError** null)
  store i8* %call, i8** %filename, align 8
  %2 = load i8*, i8** %filename, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %do.end
  store i8* null, i8** %retval
  br label %return

if.end.2:                                         ; preds = %do.end
  %3 = load i8*, i8** %hostname, align 8
  %tobool3 = icmp ne i8* %3, null
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end.2
  %4 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %4)
  store i8* null, i8** %filename, align 8
  %5 = load i8*, i8** %hostname, align 8
  call void @g_free(i8* %5)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end.2
  %6 = load i8*, i8** %filename, align 8
  store i8* %6, i8** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.1, %if.else
  %7 = load i8*, i8** %retval
  ret i8* %7
}

; Function Attrs: nounwind uwtable
define i8* @file_utils_uri_with_new_ext(i8* %uri, i8* %ext_uri) #0 {
entry:
  %uri.addr = alloca i8*, align 8
  %ext_uri.addr = alloca i8*, align 8
  %uri_ext = alloca i8*, align 8
  %ext_uri_ext = alloca i8*, align 8
  %uri_without_ext = alloca i8*, align 8
  %ret = alloca i8*, align 8
  store i8* %uri, i8** %uri.addr, align 8
  store i8* %ext_uri, i8** %ext_uri.addr, align 8
  %0 = load i8*, i8** %uri.addr, align 8
  %call = call i8* @file_utils_uri_get_ext(i8* %0)
  store i8* %call, i8** %uri_ext, align 8
  %1 = load i8*, i8** %ext_uri.addr, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i8*, i8** %ext_uri.addr, align 8
  %call1 = call i8* @file_utils_uri_get_ext(i8* %2)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call1, %cond.true ], [ null, %cond.false ]
  store i8* %cond, i8** %ext_uri_ext, align 8
  %3 = load i8*, i8** %uri.addr, align 8
  %4 = load i8*, i8** %uri_ext, align 8
  %5 = load i8*, i8** %uri.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call2 = call noalias i8* @g_strndup(i8* %3, i64 %sub.ptr.sub)
  store i8* %call2, i8** %uri_without_ext, align 8
  %6 = load i8*, i8** %uri_without_ext, align 8
  %7 = load i8*, i8** %ext_uri_ext, align 8
  %call3 = call noalias i8* (i8*, ...) @g_strconcat(i8* %6, i8* %7, i8* null)
  store i8* %call3, i8** %ret, align 8
  %8 = load i8*, i8** %uri_without_ext, align 8
  call void @g_free(i8* %8)
  %9 = load i8*, i8** %ret, align 8
  ret i8* %9
}

; Function Attrs: nounwind uwtable
define i8* @file_utils_uri_get_ext(i8* %uri) #0 {
entry:
  %uri.addr = alloca i8*, align 8
  %ext = alloca i8*, align 8
  %uri_len = alloca i32, align 4
  %search_len = alloca i32, align 4
  store i8* %uri, i8** %uri.addr, align 8
  store i8* null, i8** %ext, align 8
  %0 = load i8*, i8** %uri.addr, align 8
  %call = call i64 @strlen(i8* %0) #7
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %uri_len, align 4
  store i32 0, i32* %search_len, align 4
  %1 = load i8*, i8** %uri.addr, align 8
  %call1 = call i8* @g_strrstr(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0))
  %tobool = icmp ne i8* %call1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %uri_len, align 4
  %sub = sub nsw i32 %2, 3
  store i32 %sub, i32* %search_len, align 4
  br label %if.end.7

if.else:                                          ; preds = %entry
  %3 = load i8*, i8** %uri.addr, align 8
  %call2 = call i8* @g_strrstr(i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0))
  %tobool3 = icmp ne i8* %call2, null
  br i1 %tobool3, label %if.then.4, label %if.else.6

if.then.4:                                        ; preds = %if.else
  %4 = load i32, i32* %uri_len, align 4
  %sub5 = sub nsw i32 %4, 4
  store i32 %sub5, i32* %search_len, align 4
  br label %if.end

if.else.6:                                        ; preds = %if.else
  %5 = load i32, i32* %uri_len, align 4
  store i32 %5, i32* %search_len, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.6, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %6 = load i8*, i8** %uri.addr, align 8
  %7 = load i32, i32* %search_len, align 4
  %conv8 = sext i32 %7 to i64
  %call9 = call i8* @g_strrstr_len(i8* %6, i64 %conv8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  store i8* %call9, i8** %ext, align 8
  %8 = load i8*, i8** %ext, align 8
  %tobool10 = icmp ne i8* %8, null
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end.7
  %9 = load i8*, i8** %uri.addr, align 8
  %10 = load i32, i32* %uri_len, align 4
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %idx.ext
  store i8* %add.ptr, i8** %ext, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.7
  %11 = load i8*, i8** %ext, align 8
  ret i8* %11
}

declare noalias i8* @g_strconcat(i8*, ...) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare i8* @g_strrstr(i8*, i8*) #1

declare i8* @g_strrstr_len(i8*, i64, i8*) #1

; Function Attrs: nounwind uwtable
define i8* @file_utils_uri_to_utf8_filename(i8* %uri) #0 {
entry:
  %retval = alloca i8*, align 8
  %uri.addr = alloca i8*, align 8
  %filename = alloca i8*, align 8
  %error = alloca %struct._GError*, align 8
  %utf8 = alloca i8*, align 8
  store i8* %uri, i8** %uri.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %uri.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.file_utils_uri_to_utf8_filename, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i8*, i8** %uri.addr, align 8
  %call = call i32 @g_str_has_prefix(i8* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.1, label %if.end.10

if.then.1:                                        ; preds = %do.end
  %2 = load i8*, i8** %uri.addr, align 8
  %call2 = call i8* @file_utils_filename_from_uri(i8* %2)
  store i8* %call2, i8** %filename, align 8
  %3 = load i8*, i8** %filename, align 8
  %tobool3 = icmp ne i8* %3, null
  br i1 %tobool3, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %if.then.1
  store %struct._GError* null, %struct._GError** %error, align 8
  %4 = load i8*, i8** %filename, align 8
  %call5 = call noalias i8* @g_filename_to_utf8(i8* %4, i64 -1, i64* null, i64* null, %struct._GError** %error)
  store i8* %call5, i8** %utf8, align 8
  %5 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %5)
  %6 = load i8*, i8** %utf8, align 8
  %tobool6 = icmp ne i8* %6, null
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.4
  %7 = load i8*, i8** %utf8, align 8
  store i8* %7, i8** %retval
  br label %return

if.end.8:                                         ; preds = %if.then.4
  %8 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %8, i32 0, i32 2
  %9 = load i8*, i8** %message, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i8* %9)
  %10 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %10)
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.then.1
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %do.end
  %11 = load i8*, i8** %uri.addr, align 8
  %call11 = call noalias i8* @g_strdup(i8* %11)
  store i8* %call11, i8** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.7, %if.else
  %12 = load i8*, i8** %retval
  ret i8* %12
}

declare i32 @g_str_has_prefix(i8*, i8*) #1

declare noalias i8* @g_filename_to_utf8(i8*, i64, i64*, i64*, %struct._GError**) #1

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare void @g_error_free(%struct._GError*) #1

; Function Attrs: nounwind uwtable
define i8* @file_utils_uri_display_basename(i8* %uri) #0 {
entry:
  %retval = alloca i8*, align 8
  %uri.addr = alloca i8*, align 8
  %basename = alloca i8*, align 8
  %filename = alloca i8*, align 8
  %name = alloca i8*, align 8
  store i8* %uri, i8** %uri.addr, align 8
  store i8* null, i8** %basename, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %uri.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.file_utils_uri_display_basename, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i8*, i8** %uri.addr, align 8
  %call = call i32 @g_str_has_prefix(i8* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.1, label %if.else.7

if.then.1:                                        ; preds = %do.end
  %2 = load i8*, i8** %uri.addr, align 8
  %call2 = call i8* @file_utils_filename_from_uri(i8* %2)
  store i8* %call2, i8** %filename, align 8
  %3 = load i8*, i8** %filename, align 8
  %tobool3 = icmp ne i8* %3, null
  br i1 %tobool3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.then.1
  %4 = load i8*, i8** %filename, align 8
  %call5 = call noalias i8* @g_filename_display_basename(i8* %4)
  store i8* %call5, i8** %basename, align 8
  %5 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %5)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.then.1
  br label %if.end.14

if.else.7:                                        ; preds = %do.end
  %6 = load i8*, i8** %uri.addr, align 8
  %call8 = call i8* @file_utils_uri_display_name(i8* %6)
  store i8* %call8, i8** %name, align 8
  %7 = load i8*, i8** %name, align 8
  %call9 = call i8* @strrchr(i8* %7, i32 47) #7
  store i8* %call9, i8** %basename, align 8
  %8 = load i8*, i8** %basename, align 8
  %tobool10 = icmp ne i8* %8, null
  br i1 %tobool10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.else.7
  %9 = load i8*, i8** %basename, align 8
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 1
  %call12 = call noalias i8* @g_strdup(i8* %add.ptr)
  store i8* %call12, i8** %basename, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.else.7
  %10 = load i8*, i8** %name, align 8
  call void @g_free(i8* %10)
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end.6
  %11 = load i8*, i8** %basename, align 8
  %tobool15 = icmp ne i8* %11, null
  br i1 %tobool15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.14
  %12 = load i8*, i8** %basename, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.14
  %13 = load i8*, i8** %uri.addr, align 8
  %call16 = call i8* @file_utils_uri_to_utf8_basename(i8* %13)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %12, %cond.true ], [ %call16, %cond.false ]
  store i8* %cond, i8** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.else
  %14 = load i8*, i8** %retval
  ret i8* %14
}

declare noalias i8* @g_filename_display_basename(i8*) #1

; Function Attrs: nounwind uwtable
define i8* @file_utils_uri_display_name(i8* %uri) #0 {
entry:
  %retval = alloca i8*, align 8
  %uri.addr = alloca i8*, align 8
  %name = alloca i8*, align 8
  %filename = alloca i8*, align 8
  store i8* %uri, i8** %uri.addr, align 8
  store i8* null, i8** %name, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %uri.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.file_utils_uri_display_name, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i8*, i8** %uri.addr, align 8
  %call = call i32 @g_str_has_prefix(i8* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.1, label %if.else.7

if.then.1:                                        ; preds = %do.end
  %2 = load i8*, i8** %uri.addr, align 8
  %call2 = call i8* @file_utils_filename_from_uri(i8* %2)
  store i8* %call2, i8** %filename, align 8
  %3 = load i8*, i8** %filename, align 8
  %tobool3 = icmp ne i8* %3, null
  br i1 %tobool3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.then.1
  %4 = load i8*, i8** %filename, align 8
  %call5 = call noalias i8* @g_filename_display_name(i8* %4)
  store i8* %call5, i8** %name, align 8
  %5 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %5)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.then.1
  br label %if.end.9

if.else.7:                                        ; preds = %do.end
  %6 = load i8*, i8** %uri.addr, align 8
  %call8 = call i8* @file_utils_unescape_uri(i8* %6, i32 -1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i32 0)
  store i8* %call8, i8** %name, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.else.7, %if.end.6
  %7 = load i8*, i8** %name, align 8
  %tobool10 = icmp ne i8* %7, null
  br i1 %tobool10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.9
  %8 = load i8*, i8** %name, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.9
  %9 = load i8*, i8** %uri.addr, align 8
  %call11 = call noalias i8* @g_strdup(i8* %9)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %8, %cond.true ], [ %call11, %cond.false ]
  store i8* %cond, i8** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.else
  %10 = load i8*, i8** %retval
  ret i8* %10
}

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal i8* @file_utils_uri_to_utf8_basename(i8* %uri) #0 {
entry:
  %retval = alloca i8*, align 8
  %uri.addr = alloca i8*, align 8
  %filename = alloca i8*, align 8
  %basename = alloca i8*, align 8
  store i8* %uri, i8** %uri.addr, align 8
  store i8* null, i8** %basename, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %uri.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.file_utils_uri_to_utf8_basename, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i8*, i8** %uri.addr, align 8
  %call = call i8* @file_utils_uri_to_utf8_filename(i8* %1)
  store i8* %call, i8** %filename, align 8
  %2 = load i8*, i8** %filename, align 8
  %call1 = call i8* @strstr(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0)) #7
  %tobool = icmp ne i8* %call1, null
  br i1 %tobool, label %if.then.2, label %if.else.4

if.then.2:                                        ; preds = %do.end
  %3 = load i8*, i8** %filename, align 8
  %call3 = call noalias i8* @g_path_get_basename(i8* %3)
  store i8* %call3, i8** %basename, align 8
  br label %if.end.14

if.else.4:                                        ; preds = %do.end
  %4 = load i8*, i8** %filename, align 8
  %call5 = call i8* @strstr(i8* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #7
  %tobool6 = icmp ne i8* %call5, null
  br i1 %tobool6, label %if.then.7, label %if.end.13

if.then.7:                                        ; preds = %if.else.4
  %5 = load i8*, i8** %uri.addr, align 8
  %call8 = call i8* @strrchr(i8* %5, i32 47) #7
  store i8* %call8, i8** %basename, align 8
  %6 = load i8*, i8** %basename, align 8
  %tobool9 = icmp ne i8* %6, null
  br i1 %tobool9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.then.7
  %7 = load i8*, i8** %basename, align 8
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 1
  %call11 = call noalias i8* @g_strdup(i8* %add.ptr)
  store i8* %call11, i8** %basename, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.then.7
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.else.4
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.2
  %8 = load i8*, i8** %basename, align 8
  %tobool15 = icmp ne i8* %8, null
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.14
  %9 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %9)
  %10 = load i8*, i8** %basename, align 8
  store i8* %10, i8** %retval
  br label %return

if.end.17:                                        ; preds = %if.end.14
  %11 = load i8*, i8** %filename, align 8
  store i8* %11, i8** %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.16, %if.else
  %12 = load i8*, i8** %retval
  ret i8* %12
}

declare noalias i8* @g_filename_display_name(i8*) #1

; Function Attrs: nounwind uwtable
define internal i8* @file_utils_unescape_uri(i8* %escaped, i32 %len, i8* %illegal_escaped_characters, i32 %ascii_must_not_be_escaped) #0 {
entry:
  %retval = alloca i8*, align 8
  %escaped.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %illegal_escaped_characters.addr = alloca i8*, align 8
  %ascii_must_not_be_escaped.addr = alloca i32, align 4
  %in = alloca i8*, align 8
  %in_end = alloca i8*, align 8
  %out = alloca i8*, align 8
  %result = alloca i8*, align 8
  %c = alloca i32, align 4
  store i8* %escaped, i8** %escaped.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i8* %illegal_escaped_characters, i8** %illegal_escaped_characters.addr, align 8
  store i32 %ascii_must_not_be_escaped, i32* %ascii_must_not_be_escaped.addr, align 4
  %0 = load i8*, i8** %escaped.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %len.addr, align 4
  %cmp1 = icmp slt i32 %1, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %2 = load i8*, i8** %escaped.addr, align 8
  %call = call i64 @strlen(i8* %2) #7
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len.addr, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %3 = load i32, i32* %len.addr, align 4
  %add = add nsw i32 %3, 1
  %conv4 = sext i32 %add to i64
  %call5 = call noalias i8* @g_malloc(i64 %conv4)
  store i8* %call5, i8** %result, align 8
  %4 = load i8*, i8** %result, align 8
  store i8* %4, i8** %out, align 8
  %5 = load i8*, i8** %escaped.addr, align 8
  store i8* %5, i8** %in, align 8
  %6 = load i8*, i8** %escaped.addr, align 8
  %7 = load i32, i32* %len.addr, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  store i8* %add.ptr, i8** %in_end, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %8 = load i8*, i8** %in, align 8
  %9 = load i8*, i8** %in_end, align 8
  %cmp6 = icmp ult i8* %8, %9
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i8*, i8** %in, align 8
  %11 = load i8, i8* %10, align 1
  %conv8 = sext i8 %11 to i32
  store i32 %conv8, i32* %c, align 4
  %12 = load i32, i32* %c, align 4
  %cmp9 = icmp eq i32 %12, 37
  br i1 %cmp9, label %if.then.11, label %if.end.33

if.then.11:                                       ; preds = %for.body
  %13 = load i8*, i8** %in, align 8
  %add.ptr12 = getelementptr inbounds i8, i8* %13, i64 3
  %14 = load i8*, i8** %in_end, align 8
  %cmp13 = icmp ugt i8* %add.ptr12, %14
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.11
  br label %for.end

if.end.16:                                        ; preds = %if.then.11
  %15 = load i8*, i8** %in, align 8
  %add.ptr17 = getelementptr inbounds i8, i8* %15, i64 1
  %call18 = call i32 @unescape_character(i8* %add.ptr17)
  store i32 %call18, i32* %c, align 4
  %16 = load i32, i32* %c, align 4
  %cmp19 = icmp sle i32 %16, 0
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.16
  br label %for.end

if.end.22:                                        ; preds = %if.end.16
  %17 = load i32, i32* %ascii_must_not_be_escaped.addr, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.26

land.lhs.true:                                    ; preds = %if.end.22
  %18 = load i32, i32* %c, align 4
  %cmp23 = icmp sle i32 %18, 127
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %land.lhs.true
  br label %for.end

if.end.26:                                        ; preds = %land.lhs.true, %if.end.22
  %19 = load i8*, i8** %illegal_escaped_characters.addr, align 8
  %20 = load i32, i32* %c, align 4
  %call27 = call i8* @strchr(i8* %19, i32 %20) #7
  %cmp28 = icmp ne i8* %call27, null
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.26
  br label %for.end

if.end.31:                                        ; preds = %if.end.26
  %21 = load i8*, i8** %in, align 8
  %add.ptr32 = getelementptr inbounds i8, i8* %21, i64 2
  store i8* %add.ptr32, i8** %in, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.31, %for.body
  %22 = load i32, i32* %c, align 4
  %conv34 = trunc i32 %22 to i8
  %23 = load i8*, i8** %out, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr, i8** %out, align 8
  store i8 %conv34, i8* %23, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end.33
  %24 = load i8*, i8** %in, align 8
  %incdec.ptr35 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr35, i8** %in, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.30, %if.then.25, %if.then.21, %if.then.15, %for.cond
  br label %do.body

do.body:                                          ; preds = %for.end
  %25 = load i8*, i8** %out, align 8
  %26 = load i8*, i8** %result, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %25 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %26 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %27 = load i32, i32* %len.addr, align 4
  %conv36 = sext i32 %27 to i64
  %cmp37 = icmp sle i64 %sub.ptr.sub, %conv36
  br i1 %cmp37, label %if.then.39, label %if.else

if.then.39:                                       ; preds = %do.body
  br label %if.end.40

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i32 545, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.file_utils_unescape_uri, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0)) #9
  unreachable

if.end.40:                                        ; preds = %if.then.39
  br label %do.end

do.end:                                           ; preds = %if.end.40
  %28 = load i8*, i8** %out, align 8
  store i8 0, i8* %28, align 1
  %29 = load i8*, i8** %in, align 8
  %30 = load i8*, i8** %in_end, align 8
  %cmp41 = icmp ne i8* %29, %30
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %do.end
  %31 = load i8*, i8** %result, align 8
  call void @g_free(i8* %31)
  store i8* null, i8** %retval
  br label %return

if.end.44:                                        ; preds = %do.end
  %32 = load i8*, i8** %result, align 8
  store i8* %32, i8** %retval
  br label %return

return:                                           ; preds = %if.end.44, %if.then.43, %if.then
  %33 = load i8*, i8** %retval
  ret i8* %33
}

; Function Attrs: nounwind uwtable
define %struct._GdkPixbuf* @file_utils_load_thumbnail(i8* %filename) #0 {
entry:
  %retval = alloca %struct._GdkPixbuf*, align 8
  %filename.addr = alloca i8*, align 8
  %thumbnail = alloca %struct._GimpThumbnail*, align 8
  %pixbuf = alloca %struct._GdkPixbuf*, align 8
  %uri = alloca i8*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %tmp = alloca %struct._GdkPixbuf*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GimpThumbnail* null, %struct._GimpThumbnail** %thumbnail, align 8
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %pixbuf, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %filename.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.file_utils_load_thumbnail, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i8*, i8** %filename.addr, align 8
  %call = call noalias i8* @g_filename_to_uri(i8* %1, i8* null, %struct._GError** null)
  store i8* %call, i8** %uri, align 8
  %2 = load i8*, i8** %uri, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then.1, label %if.end.4

if.then.1:                                        ; preds = %do.end
  %call2 = call %struct._GimpThumbnail* @gimp_thumbnail_new()
  store %struct._GimpThumbnail* %call2, %struct._GimpThumbnail** %thumbnail, align 8
  %3 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %4 = load i8*, i8** %uri, align 8
  call void @gimp_thumbnail_set_uri(%struct._GimpThumbnail* %3, i8* %4)
  %5 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %call3 = call %struct._GdkPixbuf* @gimp_thumbnail_load_thumb(%struct._GimpThumbnail* %5, i32 128, %struct._GError** null)
  store %struct._GdkPixbuf* %call3, %struct._GdkPixbuf** %pixbuf, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.1, %do.end
  %6 = load i8*, i8** %uri, align 8
  call void @g_free(i8* %6)
  %7 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %tobool5 = icmp ne %struct._GdkPixbuf* %7, null
  br i1 %tobool5, label %if.then.6, label %if.end.14

if.then.6:                                        ; preds = %if.end.4
  %8 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %call7 = call i32 @gdk_pixbuf_get_width(%struct._GdkPixbuf* %8)
  store i32 %call7, i32* %width, align 4
  %9 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %call8 = call i32 @gdk_pixbuf_get_height(%struct._GdkPixbuf* %9)
  store i32 %call8, i32* %height, align 4
  %10 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %call9 = call i32 @gdk_pixbuf_get_n_channels(%struct._GdkPixbuf* %10)
  %cmp10 = icmp ne i32 %call9, 3
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.then.6
  %11 = load i32, i32* %width, align 4
  %12 = load i32, i32* %height, align 4
  %call12 = call %struct._GdkPixbuf* @gdk_pixbuf_new(i32 0, i32 0, i32 8, i32 %11, i32 %12)
  store %struct._GdkPixbuf* %call12, %struct._GdkPixbuf** %tmp, align 8
  %13 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %14 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %tmp, align 8
  %15 = load i32, i32* %width, align 4
  %16 = load i32, i32* %height, align 4
  call void @gdk_pixbuf_composite_color(%struct._GdkPixbuf* %13, %struct._GdkPixbuf* %14, i32 0, i32 0, i32 %15, i32 %16, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00, double 1.000000e+00, i32 0, i32 255, i32 0, i32 0, i32 4, i32 1717986918, i32 -1717986919)
  %17 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %18 = bitcast %struct._GdkPixbuf* %17 to i8*
  call void @g_object_unref(i8* %18)
  %19 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %tmp, align 8
  store %struct._GdkPixbuf* %19, %struct._GdkPixbuf** %pixbuf, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.then.6
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end.4
  %20 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  store %struct._GdkPixbuf* %20, %struct._GdkPixbuf** %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.else
  %21 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %retval
  ret %struct._GdkPixbuf* %21
}

declare %struct._GimpThumbnail* @gimp_thumbnail_new() #1

declare void @gimp_thumbnail_set_uri(%struct._GimpThumbnail*, i8*) #1

declare %struct._GdkPixbuf* @gimp_thumbnail_load_thumb(%struct._GimpThumbnail*, i32, %struct._GError**) #1

declare i32 @gdk_pixbuf_get_width(%struct._GdkPixbuf*) #1

declare i32 @gdk_pixbuf_get_height(%struct._GdkPixbuf*) #1

declare i32 @gdk_pixbuf_get_n_channels(%struct._GdkPixbuf*) #1

declare %struct._GdkPixbuf* @gdk_pixbuf_new(i32, i32, i32, i32, i32) #1

declare void @gdk_pixbuf_composite_color(%struct._GdkPixbuf*, %struct._GdkPixbuf*, i32, i32, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, i32, i32) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @file_utils_save_thumbnail(%struct._GimpImage* %image, i8* %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %image.addr = alloca %struct._GimpImage*, align 8
  %filename.addr = alloca i8*, align 8
  %image_uri = alloca i8*, align 8
  %success = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %uri = alloca i8*, align 8
  %imagefile = alloca %struct._GimpImagefile*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32 0, i32* %success, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.file_utils_save_thumbnail, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %filename.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.file_utils_save_thumbnail, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call17 = call i8* @gimp_image_get_uri(%struct._GimpImage* %14)
  store i8* %call17, i8** %image_uri, align 8
  %15 = load i8*, i8** %image_uri, align 8
  %tobool18 = icmp ne i8* %15, null
  br i1 %tobool18, label %if.then.19, label %if.end.32

if.then.19:                                       ; preds = %do.end.16
  %16 = load i8*, i8** %filename.addr, align 8
  %call21 = call noalias i8* @g_filename_to_uri(i8* %16, i8* null, %struct._GError** null)
  store i8* %call21, i8** %uri, align 8
  %17 = load i8*, i8** %uri, align 8
  %tobool22 = icmp ne i8* %17, null
  br i1 %tobool22, label %if.then.23, label %if.end.31

if.then.23:                                       ; preds = %if.then.19
  %18 = load i8*, i8** %uri, align 8
  %19 = load i8*, i8** %image_uri, align 8
  %call24 = call i32 @strcmp(i8* %18, i8* %19) #7
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end.30, label %if.then.26

if.then.26:                                       ; preds = %if.then.23
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %20, i32 0, i32 1
  %21 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %22 = load i8*, i8** %uri, align 8
  %call28 = call %struct._GimpImagefile* @gimp_imagefile_new(%struct._Gimp* %21, i8* %22)
  store %struct._GimpImagefile* %call28, %struct._GimpImagefile** %imagefile, align 8
  %23 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %24 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call29 = call i32 @gimp_imagefile_save_thumbnail(%struct._GimpImagefile* %23, i8* null, %struct._GimpImage* %24)
  store i32 %call29, i32* %success, align 4
  %25 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %26 = bitcast %struct._GimpImagefile* %25 to i8*
  call void @g_object_unref(i8* %26)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.26, %if.then.23
  %27 = load i8*, i8** %uri, align 8
  call void @g_free(i8* %27)
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.19
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %do.end.16
  %28 = load i32, i32* %success, align 4
  store i32 %28, i32* %retval
  br label %return

return:                                           ; preds = %if.end.32, %if.else.14, %if.else.9
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #4

declare i8* @gimp_image_get_uri(%struct._GimpImage*) #1

declare %struct._GimpImagefile* @gimp_imagefile_new(%struct._Gimp*, i8*) #1

declare i32 @gimp_imagefile_save_thumbnail(%struct._GimpImagefile*, i8*, %struct._GimpImage*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare noalias i8* @g_path_get_basename(i8*) #1

declare noalias i8* @g_malloc(i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @unescape_character(i8* %scanner) #0 {
entry:
  %retval = alloca i32, align 4
  %scanner.addr = alloca i8*, align 8
  %first_digit = alloca i32, align 4
  %second_digit = alloca i32, align 4
  store i8* %scanner, i8** %scanner.addr, align 8
  %0 = load i8*, i8** %scanner.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %call = call i32 @g_ascii_xdigit_value(i8 signext %1) #8
  store i32 %call, i32* %first_digit, align 4
  %2 = load i32, i32* %first_digit, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %scanner.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8, i8* %arrayidx1, align 1
  %call2 = call i32 @g_ascii_xdigit_value(i8 signext %4) #8
  store i32 %call2, i32* %second_digit, align 4
  %5 = load i32, i32* %second_digit, align 4
  %cmp3 = icmp slt i32 %5, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %6 = load i32, i32* %first_digit, align 4
  %shl = shl i32 %6, 4
  %7 = load i32, i32* %second_digit, align 4
  %or = or i32 %shl, %7
  store i32 %or, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #6

; Function Attrs: nounwind readnone
declare i32 @g_ascii_xdigit_value(i8 signext) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind readnone }
attributes #9 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
