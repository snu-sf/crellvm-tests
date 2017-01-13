; ModuleID = './app/core/gimpbrush-load.bc'
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
%struct._BrushHeader = type { i32, i32, i32, i32, i32, i32, i32 }
%union.anon = type { float }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._AbrHeader = type { i16, i16 }
%struct._AbrBrushHeader = type { i16, i32 }
%struct._AbrSampledBrushHeader = type { i32, i16, i8, [4 x i16], [4 x i32], i16, i32 }

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_brush_load = private unnamed_addr constant [16 x i8] c"gimp_brush_load\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"filename != NULL\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"g_path_is_absolute (filename)\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for reading: %s\00", align 1
@__func__.gimp_brush_load_brush = private unnamed_addr constant [22 x i8] c"gimp_brush_load_brush\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"fd != -1\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Could not read %d byte from '%s': %s\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Could not read %d bytes from '%s': %s\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"Fatal parse error in brush file '%s': Width = 0.\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"Fatal parse error in brush file '%s': Height = 0.\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"Fatal parse error in brush file '%s': Bytes = 0.\00", align 1
@.str.11 = private unnamed_addr constant [56 x i8] c"Fatal parse error in brush file '%s': Unknown depth %d.\00", align 1
@.str.12 = private unnamed_addr constant [58 x i8] c"Fatal parse error in brush file '%s': Unknown version %d.\00", align 1
@.str.13 = private unnamed_addr constant [62 x i8] c"Fatal parse error in brush file '%s': File appears truncated.\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"Invalid UTF-8 string in brush file '%s'.\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"Unnamed\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"mime-type\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"image/x-gimp-gbr\00", align 1
@.str.19 = private unnamed_addr constant [186 x i8] c"Fatal parse error in brush file '%s': Unsupported brush depth %d\0AGIMP brushes must be GRAY or RGBA.\0AThis might be an obsolete GIMP brush file, try loading it as image and save it again.\00", align 1
@.str.20 = private unnamed_addr constant [100 x i8] c"Fatal parse error in brush file '%s': Unsupported brush depth %d\0AGIMP brushes must be GRAY or RGBA.\00", align 1
@__func__.gimp_brush_load_abr = private unnamed_addr constant [20 x i8] c"gimp_brush_load_abr\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.22 = private unnamed_addr constant [78 x i8] c"Fatal parse error in brush file '%s': unable to decode abr format version %d.\00", align 1
@__func__.gimp_brush_load_abr_brush_v12 = private unnamed_addr constant [30 x i8] c"gimp_brush_load_abr_brush_v12\00", align 1
@.str.23 = private unnamed_addr constant [48 x i8] c"WARNING: computed brush unsupported, skipping.\0A\00", align 1
@.str.24 = private unnamed_addr constant [70 x i8] c"Fatal parse error in brush file '%s': Wide brushes are not supported.\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"%s-%03d\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"application/x-photoshop-abr\00", align 1
@.str.28 = private unnamed_addr constant [40 x i8] c"WARNING: unknown brush type, skipping.\0A\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"UCS-2BE\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"samp\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"8BIM\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_brush_load(%struct._GimpContext* %context, i8* %filename, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GList*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %filename.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %brush = alloca %struct._GimpBrush*, align 8
  %fd = alloca i32, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_brush_load, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_brush_load, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_brush_load, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  %5 = load i8*, i8** %filename.addr, align 8
  %call13 = call i32 (i8*, i32, ...) @open(i8* %5, i32 0, i32 0)
  store i32 %call13, i32* %fd, align 4
  %6 = load i32, i32* %fd, align 4
  %cmp14 = icmp eq i32 %6, -1
  br i1 %cmp14, label %if.then.15, label %if.end.21

if.then.15:                                       ; preds = %do.end.12
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call16 = call i32 @gimp_data_error_quark() #5
  %call17 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0)) #6
  %8 = load i8*, i8** %filename.addr, align 8
  %call18 = call i8* @gimp_filename_to_utf8(i8* %8)
  %call19 = call i32* @__errno_location() #5
  %9 = load i32, i32* %call19, align 4
  %call20 = call i8* @g_strerror(i32 %9) #5
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %7, i32 %call16, i32 0, i8* %call17, i8* %call18, i8* %call20)
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.21:                                        ; preds = %do.end.12
  %10 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %11 = load i32, i32* %fd, align 4
  %12 = load i8*, i8** %filename.addr, align 8
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call22 = call %struct._GimpBrush* @gimp_brush_load_brush(%struct._GimpContext* %10, i32 %11, i8* %12, %struct._GError** %13)
  store %struct._GimpBrush* %call22, %struct._GimpBrush** %brush, align 8
  %14 = load i32, i32* %fd, align 4
  %call23 = call i32 @close(i32 %14)
  %15 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %tobool24 = icmp ne %struct._GimpBrush* %15, null
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %if.end.21
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.26:                                        ; preds = %if.end.21
  %16 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %17 = bitcast %struct._GimpBrush* %16 to i8*
  %call27 = call %struct._GList* @g_list_prepend(%struct._GList* null, i8* %17)
  store %struct._GList* %call27, %struct._GList** %retval
  br label %return

return:                                           ; preds = %if.end.26, %if.then.25, %if.then.15, %if.else.10, %if.else.3, %if.else
  %18 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %18
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i32 @g_path_is_absolute(i8*) #1

declare i32 @open(i8*, i32, ...) #1

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

; Function Attrs: nounwind uwtable
define %struct._GimpBrush* @gimp_brush_load_brush(%struct._GimpContext* %context, i32 %fd, i8* %filename, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GimpBrush*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %fd.addr = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %brush = alloca %struct._GimpBrush*, align 8
  %bn_size = alloca i32, align 4
  %header = alloca %struct._BrushHeader, align 4
  %name = alloca i8*, align 8
  %pixmap = alloca i8*, align 8
  %mask = alloca i8*, align 8
  %i = alloca i64, align 8
  %size = alloca i64, align 8
  %success = alloca i32, align 4
  %utf8 = alloca i8*, align 8
  %buf = alloca [8192 x i8], align 16
  %bytes214 = alloca i64, align 8
  %b = alloca i16*, align 8
  %short_float = alloca %union.anon, align 4
  %buf256 = alloca [8192 x i8], align 16
  %bytes270 = alloca i64, align 8
  %b285 = alloca i8*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i8* null, i8** %name, align 8
  store i32 1, i32* %success, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %filename.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_brush_load_brush, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpBrush* null, %struct._GimpBrush** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i32, i32* %fd.addr, align 4
  %cmp2 = icmp ne i32 %1, -1
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_brush_load_brush, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GimpBrush* null, %struct._GimpBrush** %retval
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_brush_load_brush, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpBrush* null, %struct._GimpBrush** %retval
  br label %return

if.end.12:                                        ; preds = %if.then.10
  br label %do.end.13

do.end.13:                                        ; preds = %if.end.12
  %5 = load i32, i32* %fd.addr, align 4
  %6 = bitcast %struct._BrushHeader* %header to i8*
  %call = call i64 @read(i32 %5, i8* %6, i64 28)
  %cmp14 = icmp ne i64 %call, 28
  br i1 %cmp14, label %if.then.15, label %if.end.21

if.then.15:                                       ; preds = %do.end.13
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call16 = call i32 @gimp_data_error_quark() #5
  %call17 = call i8* @ngettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i32 0, i32 0), i64 28) #6
  %8 = load i8*, i8** %filename.addr, align 8
  %call18 = call i8* @gimp_filename_to_utf8(i8* %8)
  %call19 = call i32* @__errno_location() #5
  %9 = load i32, i32* %call19, align 4
  %call20 = call i8* @g_strerror(i32 %9) #5
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %7, i32 %call16, i32 1, i8* %call17, i32 28, i8* %call18, i8* %call20)
  store %struct._GimpBrush* null, %struct._GimpBrush** %retval
  br label %return

if.end.21:                                        ; preds = %do.end.13
  %header_size = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 0
  %10 = load i32, i32* %header_size, align 4
  %and = and i32 %10, 255
  %shl = shl i32 %and, 24
  %header_size22 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 0
  %11 = load i32, i32* %header_size22, align 4
  %and23 = and i32 %11, 65280
  %shl24 = shl i32 %and23, 8
  %or = or i32 %shl, %shl24
  %header_size25 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 0
  %12 = load i32, i32* %header_size25, align 4
  %and26 = and i32 %12, 16711680
  %shr = lshr i32 %and26, 8
  %or27 = or i32 %or, %shr
  %header_size28 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 0
  %13 = load i32, i32* %header_size28, align 4
  %and29 = and i32 %13, -16777216
  %shr30 = lshr i32 %and29, 24
  %or31 = or i32 %or27, %shr30
  %header_size32 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 0
  store i32 %or31, i32* %header_size32, align 4
  %version = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 1
  %14 = load i32, i32* %version, align 4
  %and33 = and i32 %14, 255
  %shl34 = shl i32 %and33, 24
  %version35 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 1
  %15 = load i32, i32* %version35, align 4
  %and36 = and i32 %15, 65280
  %shl37 = shl i32 %and36, 8
  %or38 = or i32 %shl34, %shl37
  %version39 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 1
  %16 = load i32, i32* %version39, align 4
  %and40 = and i32 %16, 16711680
  %shr41 = lshr i32 %and40, 8
  %or42 = or i32 %or38, %shr41
  %version43 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 1
  %17 = load i32, i32* %version43, align 4
  %and44 = and i32 %17, -16777216
  %shr45 = lshr i32 %and44, 24
  %or46 = or i32 %or42, %shr45
  %version47 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 1
  store i32 %or46, i32* %version47, align 4
  %width = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 2
  %18 = load i32, i32* %width, align 4
  %and48 = and i32 %18, 255
  %shl49 = shl i32 %and48, 24
  %width50 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 2
  %19 = load i32, i32* %width50, align 4
  %and51 = and i32 %19, 65280
  %shl52 = shl i32 %and51, 8
  %or53 = or i32 %shl49, %shl52
  %width54 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 2
  %20 = load i32, i32* %width54, align 4
  %and55 = and i32 %20, 16711680
  %shr56 = lshr i32 %and55, 8
  %or57 = or i32 %or53, %shr56
  %width58 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 2
  %21 = load i32, i32* %width58, align 4
  %and59 = and i32 %21, -16777216
  %shr60 = lshr i32 %and59, 24
  %or61 = or i32 %or57, %shr60
  %width62 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 2
  store i32 %or61, i32* %width62, align 4
  %height = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 3
  %22 = load i32, i32* %height, align 4
  %and63 = and i32 %22, 255
  %shl64 = shl i32 %and63, 24
  %height65 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 3
  %23 = load i32, i32* %height65, align 4
  %and66 = and i32 %23, 65280
  %shl67 = shl i32 %and66, 8
  %or68 = or i32 %shl64, %shl67
  %height69 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 3
  %24 = load i32, i32* %height69, align 4
  %and70 = and i32 %24, 16711680
  %shr71 = lshr i32 %and70, 8
  %or72 = or i32 %or68, %shr71
  %height73 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 3
  %25 = load i32, i32* %height73, align 4
  %and74 = and i32 %25, -16777216
  %shr75 = lshr i32 %and74, 24
  %or76 = or i32 %or72, %shr75
  %height77 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 3
  store i32 %or76, i32* %height77, align 4
  %bytes = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 4
  %26 = load i32, i32* %bytes, align 4
  %and78 = and i32 %26, 255
  %shl79 = shl i32 %and78, 24
  %bytes80 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 4
  %27 = load i32, i32* %bytes80, align 4
  %and81 = and i32 %27, 65280
  %shl82 = shl i32 %and81, 8
  %or83 = or i32 %shl79, %shl82
  %bytes84 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 4
  %28 = load i32, i32* %bytes84, align 4
  %and85 = and i32 %28, 16711680
  %shr86 = lshr i32 %and85, 8
  %or87 = or i32 %or83, %shr86
  %bytes88 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 4
  %29 = load i32, i32* %bytes88, align 4
  %and89 = and i32 %29, -16777216
  %shr90 = lshr i32 %and89, 24
  %or91 = or i32 %or87, %shr90
  %bytes92 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 4
  store i32 %or91, i32* %bytes92, align 4
  %magic_number = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 5
  %30 = load i32, i32* %magic_number, align 4
  %and93 = and i32 %30, 255
  %shl94 = shl i32 %and93, 24
  %magic_number95 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 5
  %31 = load i32, i32* %magic_number95, align 4
  %and96 = and i32 %31, 65280
  %shl97 = shl i32 %and96, 8
  %or98 = or i32 %shl94, %shl97
  %magic_number99 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 5
  %32 = load i32, i32* %magic_number99, align 4
  %and100 = and i32 %32, 16711680
  %shr101 = lshr i32 %and100, 8
  %or102 = or i32 %or98, %shr101
  %magic_number103 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 5
  %33 = load i32, i32* %magic_number103, align 4
  %and104 = and i32 %33, -16777216
  %shr105 = lshr i32 %and104, 24
  %or106 = or i32 %or102, %shr105
  %magic_number107 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 5
  store i32 %or106, i32* %magic_number107, align 4
  %spacing = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 6
  %34 = load i32, i32* %spacing, align 4
  %and108 = and i32 %34, 255
  %shl109 = shl i32 %and108, 24
  %spacing110 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 6
  %35 = load i32, i32* %spacing110, align 4
  %and111 = and i32 %35, 65280
  %shl112 = shl i32 %and111, 8
  %or113 = or i32 %shl109, %shl112
  %spacing114 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 6
  %36 = load i32, i32* %spacing114, align 4
  %and115 = and i32 %36, 16711680
  %shr116 = lshr i32 %and115, 8
  %or117 = or i32 %or113, %shr116
  %spacing118 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 6
  %37 = load i32, i32* %spacing118, align 4
  %and119 = and i32 %37, -16777216
  %shr120 = lshr i32 %and119, 24
  %or121 = or i32 %or117, %shr120
  %spacing122 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 6
  store i32 %or121, i32* %spacing122, align 4
  %width123 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 2
  %38 = load i32, i32* %width123, align 4
  %cmp124 = icmp eq i32 %38, 0
  br i1 %cmp124, label %if.then.125, label %if.end.129

if.then.125:                                      ; preds = %if.end.21
  %39 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call126 = call i32 @gimp_data_error_quark() #5
  %call127 = call i8* @gettext(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i32 0, i32 0)) #6
  %40 = load i8*, i8** %filename.addr, align 8
  %call128 = call i8* @gimp_filename_to_utf8(i8* %40)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %39, i32 %call126, i32 1, i8* %call127, i8* %call128)
  store %struct._GimpBrush* null, %struct._GimpBrush** %retval
  br label %return

if.end.129:                                       ; preds = %if.end.21
  %height130 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 3
  %41 = load i32, i32* %height130, align 4
  %cmp131 = icmp eq i32 %41, 0
  br i1 %cmp131, label %if.then.132, label %if.end.136

if.then.132:                                      ; preds = %if.end.129
  %42 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call133 = call i32 @gimp_data_error_quark() #5
  %call134 = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i32 0, i32 0)) #6
  %43 = load i8*, i8** %filename.addr, align 8
  %call135 = call i8* @gimp_filename_to_utf8(i8* %43)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %42, i32 %call133, i32 1, i8* %call134, i8* %call135)
  store %struct._GimpBrush* null, %struct._GimpBrush** %retval
  br label %return

if.end.136:                                       ; preds = %if.end.129
  %bytes137 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 4
  %44 = load i32, i32* %bytes137, align 4
  %cmp138 = icmp eq i32 %44, 0
  br i1 %cmp138, label %if.then.139, label %if.end.143

if.then.139:                                      ; preds = %if.end.136
  %45 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call140 = call i32 @gimp_data_error_quark() #5
  %call141 = call i8* @gettext(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i32 0, i32 0)) #6
  %46 = load i8*, i8** %filename.addr, align 8
  %call142 = call i8* @gimp_filename_to_utf8(i8* %46)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %45, i32 %call140, i32 1, i8* %call141, i8* %call142)
  store %struct._GimpBrush* null, %struct._GimpBrush** %retval
  br label %return

if.end.143:                                       ; preds = %if.end.136
  %version144 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 1
  %47 = load i32, i32* %version144, align 4
  switch i32 %47, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.148
    i32 2, label %sw.bb.159
  ]

sw.bb:                                            ; preds = %if.end.143
  %48 = load i32, i32* %fd.addr, align 4
  %call145 = call i64 @lseek(i32 %48, i64 -8, i32 1) #6
  %header_size146 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 0
  %49 = load i32, i32* %header_size146, align 4
  %add = add i32 %49, 8
  store i32 %add, i32* %header_size146, align 4
  %spacing147 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 6
  store i32 25, i32* %spacing147, align 4
  br label %sw.epilog

sw.bb.148:                                        ; preds = %if.end.143
  %bytes149 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 4
  %50 = load i32, i32* %bytes149, align 4
  %cmp150 = icmp eq i32 %50, 18
  br i1 %cmp150, label %if.then.151, label %if.else.153

if.then.151:                                      ; preds = %sw.bb.148
  %bytes152 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 4
  store i32 2, i32* %bytes152, align 4
  br label %if.end.158

if.else.153:                                      ; preds = %sw.bb.148
  %51 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call154 = call i32 @gimp_data_error_quark() #5
  %call155 = call i8* @gettext(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.11, i32 0, i32 0)) #6
  %52 = load i8*, i8** %filename.addr, align 8
  %call156 = call i8* @gimp_filename_to_utf8(i8* %52)
  %bytes157 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 4
  %53 = load i32, i32* %bytes157, align 4
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %51, i32 %call154, i32 1, i8* %call155, i8* %call156, i32 %53)
  store %struct._GimpBrush* null, %struct._GimpBrush** %retval
  br label %return

if.end.158:                                       ; preds = %if.then.151
  br label %sw.bb.159

sw.bb.159:                                        ; preds = %if.end.143, %if.end.158
  %magic_number160 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 5
  %54 = load i32, i32* %magic_number160, align 4
  %cmp161 = icmp eq i32 %54, 1195986256
  br i1 %cmp161, label %if.then.162, label %if.end.163

if.then.162:                                      ; preds = %sw.bb.159
  br label %sw.epilog

if.end.163:                                       ; preds = %sw.bb.159
  br label %sw.default

sw.default:                                       ; preds = %if.end.143, %if.end.163
  %55 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call164 = call i32 @gimp_data_error_quark() #5
  %call165 = call i8* @gettext(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.12, i32 0, i32 0)) #6
  %56 = load i8*, i8** %filename.addr, align 8
  %call166 = call i8* @gimp_filename_to_utf8(i8* %56)
  %version167 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 1
  %57 = load i32, i32* %version167, align 4
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %55, i32 %call164, i32 1, i8* %call165, i8* %call166, i32 %57)
  store %struct._GimpBrush* null, %struct._GimpBrush** %retval
  br label %return

sw.epilog:                                        ; preds = %if.then.162, %sw.bb
  %header_size168 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 0
  %58 = load i32, i32* %header_size168, align 4
  %conv = zext i32 %58 to i64
  %sub = sub i64 %conv, 28
  %conv169 = trunc i64 %sub to i32
  store i32 %conv169, i32* %bn_size, align 4
  %tobool = icmp ne i32 %conv169, 0
  br i1 %tobool, label %if.then.170, label %if.end.186

if.then.170:                                      ; preds = %sw.epilog
  %59 = load i32, i32* %bn_size, align 4
  %conv171 = sext i32 %59 to i64
  %call172 = call noalias i8* @g_malloc_n(i64 %conv171, i64 1)
  store i8* %call172, i8** %name, align 8
  %60 = load i32, i32* %fd.addr, align 4
  %61 = load i8*, i8** %name, align 8
  %62 = load i32, i32* %bn_size, align 4
  %conv173 = sext i32 %62 to i64
  %call174 = call i64 @read(i32 %60, i8* %61, i64 %conv173)
  %63 = load i32, i32* %bn_size, align 4
  %conv175 = sext i32 %63 to i64
  %cmp176 = icmp slt i64 %call174, %conv175
  br i1 %cmp176, label %if.then.178, label %if.end.182

if.then.178:                                      ; preds = %if.then.170
  %64 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call179 = call i32 @gimp_data_error_quark() #5
  %call180 = call i8* @gettext(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.13, i32 0, i32 0)) #6
  %65 = load i8*, i8** %filename.addr, align 8
  %call181 = call i8* @gimp_filename_to_utf8(i8* %65)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %64, i32 %call179, i32 1, i8* %call180, i8* %call181)
  %66 = load i8*, i8** %name, align 8
  call void @g_free(i8* %66)
  store %struct._GimpBrush* null, %struct._GimpBrush** %retval
  br label %return

if.end.182:                                       ; preds = %if.then.170
  %67 = load i8*, i8** %name, align 8
  %call183 = call i8* @gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i32 0, i32 0)) #6
  %68 = load i8*, i8** %filename.addr, align 8
  %call184 = call i8* @gimp_filename_to_utf8(i8* %68)
  %call185 = call noalias i8* (i8*, i64, i8*, ...) @gimp_any_to_utf8(i8* %67, i64 -1, i8* %call183, i8* %call184)
  store i8* %call185, i8** %utf8, align 8
  %69 = load i8*, i8** %name, align 8
  call void @g_free(i8* %69)
  %70 = load i8*, i8** %utf8, align 8
  store i8* %70, i8** %name, align 8
  br label %if.end.186

if.end.186:                                       ; preds = %if.end.182, %sw.epilog
  %71 = load i8*, i8** %name, align 8
  %tobool187 = icmp ne i8* %71, null
  br i1 %tobool187, label %if.end.191, label %if.then.188

if.then.188:                                      ; preds = %if.end.186
  %call189 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0)) #6
  %call190 = call noalias i8* @g_strdup(i8* %call189)
  store i8* %call190, i8** %name, align 8
  br label %if.end.191

if.end.191:                                       ; preds = %if.then.188, %if.end.186
  %call192 = call i64 @gimp_brush_get_type() #5
  %72 = load i8*, i8** %name, align 8
  %call193 = call i8* (i64, i8*, ...) @g_object_new(i64 %call192, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0), i8* null)
  %73 = bitcast i8* %call193 to %struct._GimpBrush*
  store %struct._GimpBrush* %73, %struct._GimpBrush** %brush, align 8
  %74 = load i8*, i8** %name, align 8
  call void @g_free(i8* %74)
  %width194 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 2
  %75 = load i32, i32* %width194, align 4
  %height195 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 3
  %76 = load i32, i32* %height195, align 4
  %call196 = call %struct._TempBuf* @temp_buf_new(i32 %75, i32 %76, i32 1, i32 0, i32 0, i8* null)
  %77 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %mask197 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %77, i32 0, i32 1
  store %struct._TempBuf* %call196, %struct._TempBuf** %mask197, align 8
  %78 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %mask198 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %78, i32 0, i32 1
  %79 = load %struct._TempBuf*, %struct._TempBuf** %mask198, align 8
  %call199 = call i8* @temp_buf_get_data(%struct._TempBuf* %79)
  store i8* %call199, i8** %mask, align 8
  %width200 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 2
  %80 = load i32, i32* %width200, align 4
  %height201 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 3
  %81 = load i32, i32* %height201, align 4
  %mul = mul i32 %80, %81
  %bytes202 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 4
  %82 = load i32, i32* %bytes202, align 4
  %mul203 = mul i32 %mul, %82
  %conv204 = zext i32 %mul203 to i64
  store i64 %conv204, i64* %size, align 8
  %bytes205 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 4
  %83 = load i32, i32* %bytes205, align 4
  switch i32 %83, label %sw.default.307 [
    i32 1, label %sw.bb.206
    i32 2, label %sw.bb.210
    i32 3, label %sw.bb.250
    i32 4, label %sw.bb.255
  ]

sw.bb.206:                                        ; preds = %if.end.191
  %84 = load i32, i32* %fd.addr, align 4
  %85 = load i8*, i8** %mask, align 8
  %86 = load i64, i64* %size, align 8
  %call207 = call i64 @read(i32 %84, i8* %85, i64 %86)
  %87 = load i64, i64* %size, align 8
  %cmp208 = icmp eq i64 %call207, %87
  %conv209 = zext i1 %cmp208 to i32
  store i32 %conv209, i32* %success, align 4
  br label %sw.epilog.312

sw.bb.210:                                        ; preds = %if.end.191
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.248, %sw.bb.210
  %88 = load i32, i32* %success, align 4
  %tobool211 = icmp ne i32 %88, 0
  br i1 %tobool211, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %89 = load i64, i64* %i, align 8
  %90 = load i64, i64* %size, align 8
  %cmp212 = icmp slt i64 %89, %90
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %91 = phi i1 [ false, %for.cond ], [ %cmp212, %land.rhs ]
  br i1 %91, label %for.body, label %for.end.249

for.body:                                         ; preds = %land.end
  %92 = load i64, i64* %size, align 8
  %93 = load i64, i64* %i, align 8
  %sub215 = sub nsw i64 %92, %93
  %cmp216 = icmp ult i64 %sub215, 8192
  br i1 %cmp216, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %94 = load i64, i64* %size, align 8
  %95 = load i64, i64* %i, align 8
  %sub218 = sub nsw i64 %94, %95
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub218, %cond.true ], [ 8192, %cond.false ]
  store i64 %cond, i64* %bytes214, align 8
  %96 = load i32, i32* %fd.addr, align 4
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i32 0
  %97 = load i64, i64* %bytes214, align 8
  %call219 = call i64 @read(i32 %96, i8* %arraydecay, i64 %97)
  %98 = load i64, i64* %bytes214, align 8
  %cmp220 = icmp eq i64 %call219, %98
  %conv221 = zext i1 %cmp220 to i32
  store i32 %conv221, i32* %success, align 4
  %99 = load i32, i32* %success, align 4
  %tobool222 = icmp ne i32 %99, 0
  br i1 %tobool222, label %if.then.223, label %if.end.248

if.then.223:                                      ; preds = %cond.end
  %arraydecay224 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i32 0
  %100 = bitcast i8* %arraydecay224 to i16*
  store i16* %100, i16** %b, align 8
  %101 = load i64, i64* %bytes214, align 8
  %102 = load i64, i64* %i, align 8
  %add225 = add nsw i64 %102, %101
  store i64 %add225, i64* %i, align 8
  br label %for.cond.226

for.cond.226:                                     ; preds = %for.inc, %if.then.223
  %103 = load i64, i64* %bytes214, align 8
  %cmp227 = icmp sgt i64 %103, 0
  br i1 %cmp227, label %for.body.229, label %for.end

for.body.229:                                     ; preds = %for.cond.226
  %u = bitcast %union.anon* %short_float to [2 x i16]*
  %arrayidx = getelementptr inbounds [2 x i16], [2 x i16]* %u, i32 0, i64 0
  store i16 0, i16* %arrayidx, align 2
  %104 = load i16*, i16** %b, align 8
  %105 = load i16, i16* %104, align 2
  %conv230 = zext i16 %105 to i32
  %shr231 = ashr i32 %conv230, 8
  %conv232 = trunc i32 %shr231 to i16
  %conv233 = zext i16 %conv232 to i32
  %106 = load i16*, i16** %b, align 8
  %107 = load i16, i16* %106, align 2
  %conv234 = zext i16 %107 to i32
  %shl235 = shl i32 %conv234, 8
  %conv236 = trunc i32 %shl235 to i16
  %conv237 = zext i16 %conv236 to i32
  %or238 = or i32 %conv233, %conv237
  %conv239 = trunc i32 %or238 to i16
  %u240 = bitcast %union.anon* %short_float to [2 x i16]*
  %arrayidx241 = getelementptr inbounds [2 x i16], [2 x i16]* %u240, i32 0, i64 1
  store i16 %conv239, i16* %arrayidx241, align 2
  %f = bitcast %union.anon* %short_float to float*
  %108 = load float, float* %f, align 4
  %conv242 = fpext float %108 to double
  %mul243 = fmul double %conv242, 2.550000e+02
  %add244 = fadd double %mul243, 5.000000e-01
  %conv245 = fptoui double %add244 to i8
  %109 = load i8*, i8** %mask, align 8
  store i8 %conv245, i8* %109, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.229
  %110 = load i64, i64* %bytes214, align 8
  %sub246 = sub nsw i64 %110, 2
  store i64 %sub246, i64* %bytes214, align 8
  %111 = load i8*, i8** %mask, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %incdec.ptr, i8** %mask, align 8
  %112 = load i16*, i16** %b, align 8
  %incdec.ptr247 = getelementptr inbounds i16, i16* %112, i32 1
  store i16* %incdec.ptr247, i16** %b, align 8
  br label %for.cond.226

for.end:                                          ; preds = %for.cond.226
  br label %if.end.248

if.end.248:                                       ; preds = %for.end, %cond.end
  br label %for.cond

for.end.249:                                      ; preds = %land.end
  br label %sw.epilog.312

sw.bb.250:                                        ; preds = %if.end.191
  %113 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %114 = bitcast %struct._GimpBrush* %113 to i8*
  call void @g_object_unref(i8* %114)
  %115 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call251 = call i32 @gimp_data_error_quark() #5
  %call252 = call i8* @gettext(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.19, i32 0, i32 0)) #6
  %116 = load i8*, i8** %filename.addr, align 8
  %call253 = call i8* @gimp_filename_to_utf8(i8* %116)
  %bytes254 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 4
  %117 = load i32, i32* %bytes254, align 4
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %115, i32 %call251, i32 1, i8* %call252, i8* %call253, i32 %117)
  store %struct._GimpBrush* null, %struct._GimpBrush** %retval
  br label %return

sw.bb.255:                                        ; preds = %if.end.191
  %width257 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 2
  %118 = load i32, i32* %width257, align 4
  %height258 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 3
  %119 = load i32, i32* %height258, align 4
  %call259 = call %struct._TempBuf* @temp_buf_new(i32 %118, i32 %119, i32 3, i32 0, i32 0, i8* null)
  %120 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %pixmap260 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %120, i32 0, i32 2
  store %struct._TempBuf* %call259, %struct._TempBuf** %pixmap260, align 8
  %121 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %pixmap261 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %121, i32 0, i32 2
  %122 = load %struct._TempBuf*, %struct._TempBuf** %pixmap261, align 8
  %call262 = call i8* @temp_buf_get_data(%struct._TempBuf* %122)
  store i8* %call262, i8** %pixmap, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond.263

for.cond.263:                                     ; preds = %if.end.305, %sw.bb.255
  %123 = load i32, i32* %success, align 4
  %tobool264 = icmp ne i32 %123, 0
  br i1 %tobool264, label %land.rhs.265, label %land.end.268

land.rhs.265:                                     ; preds = %for.cond.263
  %124 = load i64, i64* %i, align 8
  %125 = load i64, i64* %size, align 8
  %cmp266 = icmp slt i64 %124, %125
  br label %land.end.268

land.end.268:                                     ; preds = %land.rhs.265, %for.cond.263
  %126 = phi i1 [ false, %for.cond.263 ], [ %cmp266, %land.rhs.265 ]
  br i1 %126, label %for.body.269, label %for.end.306

for.body.269:                                     ; preds = %land.end.268
  %127 = load i64, i64* %size, align 8
  %128 = load i64, i64* %i, align 8
  %sub271 = sub nsw i64 %127, %128
  %cmp272 = icmp ult i64 %sub271, 8192
  br i1 %cmp272, label %cond.true.274, label %cond.false.276

cond.true.274:                                    ; preds = %for.body.269
  %129 = load i64, i64* %size, align 8
  %130 = load i64, i64* %i, align 8
  %sub275 = sub nsw i64 %129, %130
  br label %cond.end.277

cond.false.276:                                   ; preds = %for.body.269
  br label %cond.end.277

cond.end.277:                                     ; preds = %cond.false.276, %cond.true.274
  %cond278 = phi i64 [ %sub275, %cond.true.274 ], [ 8192, %cond.false.276 ]
  store i64 %cond278, i64* %bytes270, align 8
  %131 = load i32, i32* %fd.addr, align 4
  %arraydecay279 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf256, i32 0, i32 0
  %132 = load i64, i64* %bytes270, align 8
  %call280 = call i64 @read(i32 %131, i8* %arraydecay279, i64 %132)
  %133 = load i64, i64* %bytes270, align 8
  %cmp281 = icmp eq i64 %call280, %133
  %conv282 = zext i1 %cmp281 to i32
  store i32 %conv282, i32* %success, align 4
  %134 = load i32, i32* %success, align 4
  %tobool283 = icmp ne i32 %134, 0
  br i1 %tobool283, label %if.then.284, label %if.end.305

if.then.284:                                      ; preds = %cond.end.277
  %arraydecay286 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf256, i32 0, i32 0
  store i8* %arraydecay286, i8** %b285, align 8
  %135 = load i64, i64* %bytes270, align 8
  %136 = load i64, i64* %i, align 8
  %add287 = add nsw i64 %136, %135
  store i64 %add287, i64* %i, align 8
  br label %for.cond.288

for.cond.288:                                     ; preds = %for.inc.300, %if.then.284
  %137 = load i64, i64* %bytes270, align 8
  %cmp289 = icmp sgt i64 %137, 0
  br i1 %cmp289, label %for.body.291, label %for.end.304

for.body.291:                                     ; preds = %for.cond.288
  %138 = load i8*, i8** %b285, align 8
  %arrayidx292 = getelementptr inbounds i8, i8* %138, i64 0
  %139 = load i8, i8* %arrayidx292, align 1
  %140 = load i8*, i8** %pixmap, align 8
  %arrayidx293 = getelementptr inbounds i8, i8* %140, i64 0
  store i8 %139, i8* %arrayidx293, align 1
  %141 = load i8*, i8** %b285, align 8
  %arrayidx294 = getelementptr inbounds i8, i8* %141, i64 1
  %142 = load i8, i8* %arrayidx294, align 1
  %143 = load i8*, i8** %pixmap, align 8
  %arrayidx295 = getelementptr inbounds i8, i8* %143, i64 1
  store i8 %142, i8* %arrayidx295, align 1
  %144 = load i8*, i8** %b285, align 8
  %arrayidx296 = getelementptr inbounds i8, i8* %144, i64 2
  %145 = load i8, i8* %arrayidx296, align 1
  %146 = load i8*, i8** %pixmap, align 8
  %arrayidx297 = getelementptr inbounds i8, i8* %146, i64 2
  store i8 %145, i8* %arrayidx297, align 1
  %147 = load i8*, i8** %b285, align 8
  %arrayidx298 = getelementptr inbounds i8, i8* %147, i64 3
  %148 = load i8, i8* %arrayidx298, align 1
  %149 = load i8*, i8** %mask, align 8
  %arrayidx299 = getelementptr inbounds i8, i8* %149, i64 0
  store i8 %148, i8* %arrayidx299, align 1
  br label %for.inc.300

for.inc.300:                                      ; preds = %for.body.291
  %150 = load i64, i64* %bytes270, align 8
  %sub301 = sub nsw i64 %150, 4
  store i64 %sub301, i64* %bytes270, align 8
  %151 = load i8*, i8** %pixmap, align 8
  %add.ptr = getelementptr inbounds i8, i8* %151, i64 3
  store i8* %add.ptr, i8** %pixmap, align 8
  %152 = load i8*, i8** %mask, align 8
  %incdec.ptr302 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %incdec.ptr302, i8** %mask, align 8
  %153 = load i8*, i8** %b285, align 8
  %add.ptr303 = getelementptr inbounds i8, i8* %153, i64 4
  store i8* %add.ptr303, i8** %b285, align 8
  br label %for.cond.288

for.end.304:                                      ; preds = %for.cond.288
  br label %if.end.305

if.end.305:                                       ; preds = %for.end.304, %cond.end.277
  br label %for.cond.263

for.end.306:                                      ; preds = %land.end.268
  br label %sw.epilog.312

sw.default.307:                                   ; preds = %if.end.191
  %154 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %155 = bitcast %struct._GimpBrush* %154 to i8*
  call void @g_object_unref(i8* %155)
  %156 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call308 = call i32 @gimp_data_error_quark() #5
  %call309 = call i8* @gettext(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.20, i32 0, i32 0)) #6
  %157 = load i8*, i8** %filename.addr, align 8
  %call310 = call i8* @gimp_filename_to_utf8(i8* %157)
  %bytes311 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 4
  %158 = load i32, i32* %bytes311, align 4
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %156, i32 %call308, i32 1, i8* %call309, i8* %call310, i32 %158)
  store %struct._GimpBrush* null, %struct._GimpBrush** %retval
  br label %return

sw.epilog.312:                                    ; preds = %for.end.306, %for.end.249, %sw.bb.206
  %159 = load i32, i32* %success, align 4
  %tobool313 = icmp ne i32 %159, 0
  br i1 %tobool313, label %if.end.318, label %if.then.314

if.then.314:                                      ; preds = %sw.epilog.312
  %160 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %161 = bitcast %struct._GimpBrush* %160 to i8*
  call void @g_object_unref(i8* %161)
  %162 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call315 = call i32 @gimp_data_error_quark() #5
  %call316 = call i8* @gettext(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.13, i32 0, i32 0)) #6
  %163 = load i8*, i8** %filename.addr, align 8
  %call317 = call i8* @gimp_filename_to_utf8(i8* %163)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %162, i32 %call315, i32 1, i8* %call316, i8* %call317)
  store %struct._GimpBrush* null, %struct._GimpBrush** %retval
  br label %return

if.end.318:                                       ; preds = %sw.epilog.312
  %spacing319 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 6
  %164 = load i32, i32* %spacing319, align 4
  %165 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %spacing320 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %165, i32 0, i32 3
  store i32 %164, i32* %spacing320, align 4
  %width321 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 2
  %166 = load i32, i32* %width321, align 4
  %conv322 = uitofp i32 %166 to double
  %div = fdiv double %conv322, 2.000000e+00
  %167 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %x_axis = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %167, i32 0, i32 4
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %x_axis, i32 0, i32 0
  store double %div, double* %x, align 8
  %168 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %x_axis323 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %168, i32 0, i32 4
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %x_axis323, i32 0, i32 1
  store double 0.000000e+00, double* %y, align 8
  %169 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %y_axis = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %169, i32 0, i32 5
  %x324 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %y_axis, i32 0, i32 0
  store double 0.000000e+00, double* %x324, align 8
  %height325 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %header, i32 0, i32 3
  %170 = load i32, i32* %height325, align 4
  %conv326 = uitofp i32 %170 to double
  %div327 = fdiv double %conv326, 2.000000e+00
  %171 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %y_axis328 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %171, i32 0, i32 5
  %y329 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %y_axis328, i32 0, i32 1
  store double %div327, double* %y329, align 8
  %172 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  store %struct._GimpBrush* %172, %struct._GimpBrush** %retval
  br label %return

return:                                           ; preds = %if.end.318, %if.then.314, %sw.default.307, %sw.bb.250, %if.then.178, %sw.default, %if.else.153, %if.then.139, %if.then.132, %if.then.125, %if.then.15, %if.else.11, %if.else.4, %if.else
  %173 = load %struct._GimpBrush*, %struct._GimpBrush** %retval
  ret %struct._GimpBrush* %173
}

declare i32 @close(i32) #1

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

declare i64 @read(i32, i8*, i64) #1

; Function Attrs: nounwind
declare i8* @ngettext(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #3

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @g_free(i8*) #1

declare noalias i8* @gimp_any_to_utf8(i8*, i64, i8*, ...) #1

declare noalias i8* @g_strdup(i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_get_type() #2

declare %struct._TempBuf* @temp_buf_new(i32, i32, i32, i32, i32, i8*) #1

declare i8* @temp_buf_get_data(%struct._TempBuf*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_brush_load_abr(%struct._GimpContext* %context, i8* %filename, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GList*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %filename.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %file = alloca %struct._IO_FILE*, align 8
  %abr_hdr = alloca %struct._AbrHeader, align 2
  %brush_list = alloca %struct._GList*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store %struct._GList* null, %struct._GList** %brush_list, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %filename.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_brush_load_abr, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_brush_load_abr, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_brush_load_abr, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  %5 = load i8*, i8** %filename.addr, align 8
  %call13 = call %struct._IO_FILE* @fopen(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0))
  store %struct._IO_FILE* %call13, %struct._IO_FILE** %file, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %tobool14 = icmp ne %struct._IO_FILE* %6, null
  br i1 %tobool14, label %if.end.21, label %if.then.15

if.then.15:                                       ; preds = %do.end.12
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call16 = call i32 @gimp_data_error_quark() #5
  %call17 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0)) #6
  %8 = load i8*, i8** %filename.addr, align 8
  %call18 = call i8* @gimp_filename_to_utf8(i8* %8)
  %call19 = call i32* @__errno_location() #5
  %9 = load i32, i32* %call19, align 4
  %call20 = call i8* @g_strerror(i32 %9) #5
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %7, i32 %call16, i32 0, i8* %call17, i8* %call18, i8* %call20)
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.21:                                        ; preds = %do.end.12
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call22 = call signext i16 @abr_read_short(%struct._IO_FILE* %10)
  %version = getelementptr inbounds %struct._AbrHeader, %struct._AbrHeader* %abr_hdr, i32 0, i32 0
  store i16 %call22, i16* %version, align 2
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call23 = call signext i16 @abr_read_short(%struct._IO_FILE* %11)
  %count = getelementptr inbounds %struct._AbrHeader, %struct._AbrHeader* %abr_hdr, i32 0, i32 1
  store i16 %call23, i16* %count, align 2
  %12 = load i8*, i8** %filename.addr, align 8
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call24 = call i32 @abr_supported(%struct._AbrHeader* %abr_hdr, i8* %12, %struct._GError** %13)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.31

if.then.26:                                       ; preds = %if.end.21
  %version27 = getelementptr inbounds %struct._AbrHeader, %struct._AbrHeader* %abr_hdr, i32 0, i32 0
  %14 = load i16, i16* %version27, align 2
  %conv = sext i16 %14 to i32
  switch i32 %conv, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 6, label %sw.bb.29
  ]

sw.bb:                                            ; preds = %if.then.26, %if.then.26
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %16 = load i8*, i8** %filename.addr, align 8
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call28 = call %struct._GList* @gimp_brush_load_abr_v12(%struct._IO_FILE* %15, %struct._AbrHeader* %abr_hdr, i8* %16, %struct._GError** %17)
  store %struct._GList* %call28, %struct._GList** %brush_list, align 8
  br label %sw.epilog

sw.bb.29:                                         ; preds = %if.then.26
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %19 = load i8*, i8** %filename.addr, align 8
  %20 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call30 = call %struct._GList* @gimp_brush_load_abr_v6(%struct._IO_FILE* %18, %struct._AbrHeader* %abr_hdr, i8* %19, %struct._GError** %20)
  store %struct._GList* %call30, %struct._GList** %brush_list, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.29, %if.then.26, %sw.bb
  br label %if.end.31

if.end.31:                                        ; preds = %sw.epilog, %if.end.21
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call32 = call i32 @fclose(%struct._IO_FILE* %21)
  %22 = load %struct._GList*, %struct._GList** %brush_list, align 8
  %tobool33 = icmp ne %struct._GList* %22, null
  br i1 %tobool33, label %if.end.43, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.31
  %23 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool34 = icmp ne %struct._GError** %23, null
  br i1 %tobool34, label %land.lhs.true.35, label %if.end.43

land.lhs.true.35:                                 ; preds = %land.lhs.true
  %24 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %25 = load %struct._GError*, %struct._GError** %24, align 8
  %tobool36 = icmp ne %struct._GError* %25, null
  br i1 %tobool36, label %if.end.43, label %if.then.37

if.then.37:                                       ; preds = %land.lhs.true.35
  %26 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call38 = call i32 @gimp_data_error_quark() #5
  %call39 = call i8* @gettext(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.22, i32 0, i32 0)) #6
  %27 = load i8*, i8** %filename.addr, align 8
  %call40 = call i8* @gimp_filename_to_utf8(i8* %27)
  %version41 = getelementptr inbounds %struct._AbrHeader, %struct._AbrHeader* %abr_hdr, i32 0, i32 0
  %28 = load i16, i16* %version41, align 2
  %conv42 = sext i16 %28 to i32
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %26, i32 %call38, i32 1, i8* %call39, i8* %call40, i32 %conv42)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.37, %land.lhs.true.35, %land.lhs.true, %if.end.31
  %29 = load %struct._GList*, %struct._GList** %brush_list, align 8
  %call44 = call %struct._GList* @g_list_reverse(%struct._GList* %29)
  store %struct._GList* %call44, %struct._GList** %retval
  br label %return

return:                                           ; preds = %if.end.43, %if.then.15, %if.else.10, %if.else.3, %if.else
  %30 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %30
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal signext i16 @abr_read_short(%struct._IO_FILE* %file) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %val = alloca i16, align 2
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = bitcast i16* %val to i8*
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call i64 @fread(i8* %0, i64 2, i64 1, %struct._IO_FILE* %1)
  %2 = load i16, i16* %val, align 2
  %conv = zext i16 %2 to i32
  %shr = ashr i32 %conv, 8
  %conv1 = trunc i32 %shr to i16
  %conv2 = zext i16 %conv1 to i32
  %3 = load i16, i16* %val, align 2
  %conv3 = zext i16 %3 to i32
  %shl = shl i32 %conv3, 8
  %conv4 = trunc i32 %shl to i16
  %conv5 = zext i16 %conv4 to i32
  %or = or i32 %conv2, %conv5
  %conv6 = trunc i32 %or to i16
  ret i16 %conv6
}

; Function Attrs: nounwind uwtable
define internal i32 @abr_supported(%struct._AbrHeader* %abr_hdr, i8* %filename, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %abr_hdr.addr = alloca %struct._AbrHeader*, align 8
  %filename.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  store %struct._AbrHeader* %abr_hdr, %struct._AbrHeader** %abr_hdr.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._AbrHeader*, %struct._AbrHeader** %abr_hdr.addr, align 8
  %version = getelementptr inbounds %struct._AbrHeader, %struct._AbrHeader* %0, i32 0, i32 0
  %1 = load i16, i16* %version, align 2
  %conv = sext i16 %1 to i32
  switch i32 %conv, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 6, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry, %entry
  store i32 1, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %2 = load %struct._AbrHeader*, %struct._AbrHeader** %abr_hdr.addr, align 8
  %count = getelementptr inbounds %struct._AbrHeader, %struct._AbrHeader* %2, i32 0, i32 1
  %3 = load i16, i16* %count, align 2
  %conv2 = sext i16 %3 to i32
  %cmp = icmp eq i32 %conv2, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.1
  %4 = load %struct._AbrHeader*, %struct._AbrHeader** %abr_hdr.addr, align 8
  %count4 = getelementptr inbounds %struct._AbrHeader, %struct._AbrHeader* %4, i32 0, i32 1
  %5 = load i16, i16* %count4, align 2
  %conv5 = sext i16 %5 to i32
  %cmp6 = icmp eq i32 %conv5, 2
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %sw.bb.1
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool = icmp ne %struct._GError** %6, null
  br i1 %tobool, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %if.end
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %8 = load %struct._GError*, %struct._GError** %7, align 8
  %tobool8 = icmp ne %struct._GError* %8, null
  br i1 %tobool8, label %if.end.16, label %if.then.9

if.then.9:                                        ; preds = %land.lhs.true
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call = call i32 @gimp_data_error_quark() #5
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.22, i32 0, i32 0)) #6
  %10 = load i8*, i8** %filename.addr, align 8
  %call11 = call i8* @gimp_filename_to_utf8(i8* %10)
  %11 = load %struct._AbrHeader*, %struct._AbrHeader** %abr_hdr.addr, align 8
  %version12 = getelementptr inbounds %struct._AbrHeader, %struct._AbrHeader* %11, i32 0, i32 0
  %12 = load i16, i16* %version12, align 2
  %conv13 = sext i16 %12 to i32
  %mul = mul nsw i32 %conv13, 10
  %13 = load %struct._AbrHeader*, %struct._AbrHeader** %abr_hdr.addr, align 8
  %count14 = getelementptr inbounds %struct._AbrHeader, %struct._AbrHeader* %13, i32 0, i32 1
  %14 = load i16, i16* %count14, align 2
  %conv15 = sext i16 %14 to i32
  %add = add nsw i32 %mul, %conv15
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %9, i32 %call, i32 1, i8* %call10, i8* %call11, i32 %add)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.9, %land.lhs.true, %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end.16
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then, %sw.bb
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal %struct._GList* @gimp_brush_load_abr_v12(%struct._IO_FILE* %file, %struct._AbrHeader* %abr_hdr, i8* %filename, %struct._GError** %error) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %abr_hdr.addr = alloca %struct._AbrHeader*, align 8
  %filename.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %brush_list = alloca %struct._GList*, align 8
  %i = alloca i32, align 4
  %brush = alloca %struct._GimpBrush*, align 8
  %my_error = alloca %struct._GError*, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store %struct._AbrHeader* %abr_hdr, %struct._AbrHeader** %abr_hdr.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store %struct._GList* null, %struct._GList** %brush_list, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct._AbrHeader*, %struct._AbrHeader** %abr_hdr.addr, align 8
  %count = getelementptr inbounds %struct._AbrHeader, %struct._AbrHeader* %1, i32 0, i32 1
  %2 = load i16, i16* %count, align 2
  %conv = sext i16 %2 to i32
  %cmp = icmp slt i32 %0, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store %struct._GError* null, %struct._GError** %my_error, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %4 = load %struct._AbrHeader*, %struct._AbrHeader** %abr_hdr.addr, align 8
  %5 = load i32, i32* %i, align 4
  %6 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._GimpBrush* @gimp_brush_load_abr_brush_v12(%struct._IO_FILE* %3, %struct._AbrHeader* %4, i32 %5, i8* %6, %struct._GError** %my_error)
  store %struct._GimpBrush* %call, %struct._GimpBrush** %brush, align 8
  %7 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %tobool = icmp ne %struct._GimpBrush* %7, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %8 = load %struct._GList*, %struct._GList** %brush_list, align 8
  %9 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %10 = bitcast %struct._GimpBrush* %9 to i8*
  %call2 = call %struct._GList* @g_list_prepend(%struct._GList* %8, i8* %10)
  store %struct._GList* %call2, %struct._GList** %brush_list, align 8
  br label %if.end.5

if.else:                                          ; preds = %for.body
  %11 = load %struct._GError*, %struct._GError** %my_error, align 8
  %tobool3 = icmp ne %struct._GError* %11, null
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %13 = load %struct._GError*, %struct._GError** %my_error, align 8
  call void @g_propagate_error(%struct._GError** %12, %struct._GError* %13)
  br label %for.end

if.end:                                           ; preds = %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.5
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.4, %for.cond
  %15 = load %struct._GList*, %struct._GList** %brush_list, align 8
  ret %struct._GList* %15
}

; Function Attrs: nounwind uwtable
define internal %struct._GList* @gimp_brush_load_abr_v6(%struct._IO_FILE* %file, %struct._AbrHeader* %abr_hdr, i8* %filename, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GList*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %abr_hdr.addr = alloca %struct._AbrHeader*, align 8
  %filename.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %brush_list = alloca %struct._GList*, align 8
  %sample_section_size = alloca i32, align 4
  %sample_section_end = alloca i32, align 4
  %i = alloca i32, align 4
  %brush = alloca %struct._GimpBrush*, align 8
  %my_error = alloca %struct._GError*, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store %struct._AbrHeader* %abr_hdr, %struct._AbrHeader** %abr_hdr.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store %struct._GList* null, %struct._GList** %brush_list, align 8
  store i32 1, i32* %i, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call i32 @abr_reach_8bim_section(%struct._IO_FILE* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._GList*, %struct._GList** %brush_list, align 8
  store %struct._GList* %1, %struct._GList** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call1 = call i32 @abr_read_long(%struct._IO_FILE* %2)
  store i32 %call1, i32* %sample_section_size, align 4
  %3 = load i32, i32* %sample_section_size, align 4
  %conv = sext i32 %3 to i64
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call2 = call i64 @ftell(%struct._IO_FILE* %4)
  %add = add nsw i64 %conv, %call2
  %conv3 = trunc i64 %add to i32
  store i32 %conv3, i32* %sample_section_end, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.14, %if.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call4 = call i64 @ftell(%struct._IO_FILE* %5)
  %6 = load i32, i32* %sample_section_end, align 4
  %conv5 = sext i32 %6 to i64
  %cmp = icmp slt i64 %call4, %conv5
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store %struct._GError* null, %struct._GError** %my_error, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %8 = load %struct._AbrHeader*, %struct._AbrHeader** %abr_hdr.addr, align 8
  %9 = load i32, i32* %sample_section_end, align 4
  %10 = load i32, i32* %i, align 4
  %11 = load i8*, i8** %filename.addr, align 8
  %call7 = call %struct._GimpBrush* @gimp_brush_load_abr_brush_v6(%struct._IO_FILE* %7, %struct._AbrHeader* %8, i32 %9, i32 %10, i8* %11, %struct._GError** %my_error)
  store %struct._GimpBrush* %call7, %struct._GimpBrush** %brush, align 8
  %12 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %tobool8 = icmp ne %struct._GimpBrush* %12, null
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %while.body
  %13 = load %struct._GList*, %struct._GList** %brush_list, align 8
  %14 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %15 = bitcast %struct._GimpBrush* %14 to i8*
  %call10 = call %struct._GList* @g_list_prepend(%struct._GList* %13, i8* %15)
  store %struct._GList* %call10, %struct._GList** %brush_list, align 8
  br label %if.end.14

if.else:                                          ; preds = %while.body
  %16 = load %struct._GError*, %struct._GError** %my_error, align 8
  %tobool11 = icmp ne %struct._GError* %16, null
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.else
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %18 = load %struct._GError*, %struct._GError** %my_error, align 8
  call void @g_propagate_error(%struct._GError** %17, %struct._GError* %18)
  br label %while.end

if.end.13:                                        ; preds = %if.else
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.9
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then.12, %while.cond
  %20 = load %struct._GList*, %struct._GList** %brush_list, align 8
  store %struct._GList* %20, %struct._GList** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %21 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %21
}

declare i32 @fclose(%struct._IO_FILE*) #1

declare %struct._GList* @g_list_reverse(%struct._GList*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpBrush* @gimp_brush_load_abr_brush_v12(%struct._IO_FILE* %file, %struct._AbrHeader* %abr_hdr, i32 %index, i8* %filename, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GimpBrush*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %abr_hdr.addr = alloca %struct._AbrHeader*, align 8
  %index.addr = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %brush = alloca %struct._GimpBrush*, align 8
  %abr_brush_hdr = alloca %struct._AbrBrushHeader, align 4
  %abr_sampled_brush_hdr = alloca %struct._AbrSampledBrushHeader, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bytes = alloca i32, align 4
  %size14 = alloca i32, align 4
  %mask = alloca i8*, align 8
  %i = alloca i32, align 4
  %name = alloca i8*, align 8
  %sample_name = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  %compress = alloca i16, align 2
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store %struct._AbrHeader* %abr_hdr, %struct._AbrHeader** %abr_hdr.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store %struct._GimpBrush* null, %struct._GimpBrush** %brush, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %filename.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_brush_load_abr_brush_v12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpBrush* null, %struct._GimpBrush** %retval
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_brush_load_abr_brush_v12, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpBrush* null, %struct._GimpBrush** %retval
  br label %return

if.end.6:                                         ; preds = %if.then.4
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call signext i16 @abr_read_short(%struct._IO_FILE* %4)
  %type = getelementptr inbounds %struct._AbrBrushHeader, %struct._AbrBrushHeader* %abr_brush_hdr, i32 0, i32 0
  store i16 %call, i16* %type, align 2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call8 = call i32 @abr_read_long(%struct._IO_FILE* %5)
  %size = getelementptr inbounds %struct._AbrBrushHeader, %struct._AbrBrushHeader* %abr_brush_hdr, i32 0, i32 1
  store i32 %call8, i32* %size, align 4
  %type9 = getelementptr inbounds %struct._AbrBrushHeader, %struct._AbrBrushHeader* %abr_brush_hdr, i32 0, i32 0
  %6 = load i16, i16* %type9, align 2
  %conv = sext i16 %6 to i32
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %do.end.7
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.23, i32 0, i32 0))
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %size10 = getelementptr inbounds %struct._AbrBrushHeader, %struct._AbrBrushHeader* %abr_brush_hdr, i32 0, i32 1
  %8 = load i32, i32* %size10, align 4
  %conv11 = sext i32 %8 to i64
  %call12 = call i32 @fseek(%struct._IO_FILE* %7, i64 %conv11, i32 1)
  br label %sw.epilog

sw.bb.13:                                         ; preds = %do.end.7
  store i8* null, i8** %sample_name, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call16 = call i32 @abr_read_long(%struct._IO_FILE* %9)
  %misc = getelementptr inbounds %struct._AbrSampledBrushHeader, %struct._AbrSampledBrushHeader* %abr_sampled_brush_hdr, i32 0, i32 0
  store i32 %call16, i32* %misc, align 4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call17 = call signext i16 @abr_read_short(%struct._IO_FILE* %10)
  %spacing = getelementptr inbounds %struct._AbrSampledBrushHeader, %struct._AbrSampledBrushHeader* %abr_sampled_brush_hdr, i32 0, i32 1
  store i16 %call17, i16* %spacing, align 2
  %11 = load %struct._AbrHeader*, %struct._AbrHeader** %abr_hdr.addr, align 8
  %version = getelementptr inbounds %struct._AbrHeader, %struct._AbrHeader* %11, i32 0, i32 0
  %12 = load i16, i16* %version, align 2
  %conv18 = sext i16 %12 to i32
  %cmp19 = icmp eq i32 %conv18, 2
  br i1 %cmp19, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %sw.bb.13
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call22 = call i8* @abr_read_ucs2_text(%struct._IO_FILE* %13)
  store i8* %call22, i8** %sample_name, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %sw.bb.13
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call24 = call signext i8 @abr_read_char(%struct._IO_FILE* %14)
  %antialiasing = getelementptr inbounds %struct._AbrSampledBrushHeader, %struct._AbrSampledBrushHeader* %abr_sampled_brush_hdr, i32 0, i32 2
  store i8 %call24, i8* %antialiasing, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.23
  %15 = load i32, i32* %i, align 4
  %cmp25 = icmp slt i32 %15, 4
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call27 = call signext i16 @abr_read_short(%struct._IO_FILE* %16)
  %17 = load i32, i32* %i, align 4
  %idxprom = sext i32 %17 to i64
  %bounds = getelementptr inbounds %struct._AbrSampledBrushHeader, %struct._AbrSampledBrushHeader* %abr_sampled_brush_hdr, i32 0, i32 3
  %arrayidx = getelementptr inbounds [4 x i16], [4 x i16]* %bounds, i32 0, i64 %idxprom
  store i16 %call27, i16* %arrayidx, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.35, %for.end
  %19 = load i32, i32* %i, align 4
  %cmp29 = icmp slt i32 %19, 4
  br i1 %cmp29, label %for.body.31, label %for.end.37

for.body.31:                                      ; preds = %for.cond.28
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call32 = call i32 @abr_read_long(%struct._IO_FILE* %20)
  %21 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %21 to i64
  %bounds_long = getelementptr inbounds %struct._AbrSampledBrushHeader, %struct._AbrSampledBrushHeader* %abr_sampled_brush_hdr, i32 0, i32 4
  %arrayidx34 = getelementptr inbounds [4 x i32], [4 x i32]* %bounds_long, i32 0, i64 %idxprom33
  store i32 %call32, i32* %arrayidx34, align 4
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.body.31
  %22 = load i32, i32* %i, align 4
  %inc36 = add nsw i32 %22, 1
  store i32 %inc36, i32* %i, align 4
  br label %for.cond.28

for.end.37:                                       ; preds = %for.cond.28
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call38 = call signext i16 @abr_read_short(%struct._IO_FILE* %23)
  %depth = getelementptr inbounds %struct._AbrSampledBrushHeader, %struct._AbrSampledBrushHeader* %abr_sampled_brush_hdr, i32 0, i32 5
  store i16 %call38, i16* %depth, align 2
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call39 = call i32 @feof(%struct._IO_FILE* %24) #6
  %tobool = icmp ne i32 %call39, 0
  br i1 %tobool, label %if.then.40, label %if.end.44

if.then.40:                                       ; preds = %for.end.37
  %25 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call41 = call i32 @gimp_data_error_quark() #5
  %call42 = call i8* @gettext(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.13, i32 0, i32 0)) #6
  %26 = load i8*, i8** %filename.addr, align 8
  %call43 = call i8* @gimp_filename_to_utf8(i8* %26)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %25, i32 %call41, i32 1, i8* %call42, i8* %call43)
  store %struct._GimpBrush* null, %struct._GimpBrush** %retval
  br label %return

if.end.44:                                        ; preds = %for.end.37
  %bounds_long45 = getelementptr inbounds %struct._AbrSampledBrushHeader, %struct._AbrSampledBrushHeader* %abr_sampled_brush_hdr, i32 0, i32 4
  %arrayidx46 = getelementptr inbounds [4 x i32], [4 x i32]* %bounds_long45, i32 0, i64 2
  %27 = load i32, i32* %arrayidx46, align 4
  %bounds_long47 = getelementptr inbounds %struct._AbrSampledBrushHeader, %struct._AbrSampledBrushHeader* %abr_sampled_brush_hdr, i32 0, i32 4
  %arrayidx48 = getelementptr inbounds [4 x i32], [4 x i32]* %bounds_long47, i32 0, i64 0
  %28 = load i32, i32* %arrayidx48, align 4
  %sub = sub nsw i32 %27, %28
  store i32 %sub, i32* %height, align 4
  %bounds_long49 = getelementptr inbounds %struct._AbrSampledBrushHeader, %struct._AbrSampledBrushHeader* %abr_sampled_brush_hdr, i32 0, i32 4
  %arrayidx50 = getelementptr inbounds [4 x i32], [4 x i32]* %bounds_long49, i32 0, i64 3
  %29 = load i32, i32* %arrayidx50, align 4
  %bounds_long51 = getelementptr inbounds %struct._AbrSampledBrushHeader, %struct._AbrSampledBrushHeader* %abr_sampled_brush_hdr, i32 0, i32 4
  %arrayidx52 = getelementptr inbounds [4 x i32], [4 x i32]* %bounds_long51, i32 0, i64 1
  %30 = load i32, i32* %arrayidx52, align 4
  %sub53 = sub nsw i32 %29, %30
  store i32 %sub53, i32* %width, align 4
  %depth54 = getelementptr inbounds %struct._AbrSampledBrushHeader, %struct._AbrSampledBrushHeader* %abr_sampled_brush_hdr, i32 0, i32 5
  %31 = load i16, i16* %depth54, align 2
  %conv55 = sext i16 %31 to i32
  %shr = ashr i32 %conv55, 3
  store i32 %shr, i32* %bytes, align 4
  %32 = load i32, i32* %height, align 4
  %cmp56 = icmp sgt i32 %32, 16384
  %conv57 = zext i1 %cmp56 to i32
  %wide = getelementptr inbounds %struct._AbrSampledBrushHeader, %struct._AbrSampledBrushHeader* %abr_sampled_brush_hdr, i32 0, i32 6
  store i32 %conv57, i32* %wide, align 4
  %wide58 = getelementptr inbounds %struct._AbrSampledBrushHeader, %struct._AbrSampledBrushHeader* %abr_sampled_brush_hdr, i32 0, i32 6
  %33 = load i32, i32* %wide58, align 4
  %tobool59 = icmp ne i32 %33, 0
  br i1 %tobool59, label %if.then.60, label %if.end.64

if.then.60:                                       ; preds = %if.end.44
  %34 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call61 = call i32 @gimp_data_error_quark() #5
  %call62 = call i8* @gettext(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.24, i32 0, i32 0)) #6
  %35 = load i8*, i8** %filename.addr, align 8
  %call63 = call i8* @gimp_filename_to_utf8(i8* %35)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %34, i32 %call61, i32 1, i8* %call62, i8* %call63)
  store %struct._GimpBrush* null, %struct._GimpBrush** %retval
  br label %return

if.end.64:                                        ; preds = %if.end.44
  %36 = load i8*, i8** %filename.addr, align 8
  %call65 = call noalias i8* @g_filename_display_basename(i8* %36)
  store i8* %call65, i8** %tmp, align 8
  %37 = load i8*, i8** %sample_name, align 8
  %tobool66 = icmp ne i8* %37, null
  br i1 %tobool66, label %if.else.69, label %if.then.67

if.then.67:                                       ; preds = %if.end.64
  %38 = load i8*, i8** %tmp, align 8
  %39 = load i32, i32* %index.addr, align 4
  %call68 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i8* %38, i32 %39)
  store i8* %call68, i8** %name, align 8
  br label %if.end.71

if.else.69:                                       ; preds = %if.end.64
  %40 = load i8*, i8** %tmp, align 8
  %41 = load i8*, i8** %sample_name, align 8
  %call70 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i8* %40, i8* %41)
  store i8* %call70, i8** %name, align 8
  %42 = load i8*, i8** %sample_name, align 8
  call void @g_free(i8* %42)
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.69, %if.then.67
  %43 = load i8*, i8** %tmp, align 8
  call void @g_free(i8* %43)
  %call72 = call i64 @gimp_brush_get_type() #5
  %44 = load i8*, i8** %name, align 8
  %call73 = call i8* (i64, i8*, ...) @g_object_new(i64 %call72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i32 0, i32 0), i8* null)
  %45 = bitcast i8* %call73 to %struct._GimpBrush*
  store %struct._GimpBrush* %45, %struct._GimpBrush** %brush, align 8
  %46 = load i8*, i8** %name, align 8
  call void @g_free(i8* %46)
  %spacing74 = getelementptr inbounds %struct._AbrSampledBrushHeader, %struct._AbrSampledBrushHeader* %abr_sampled_brush_hdr, i32 0, i32 1
  %47 = load i16, i16* %spacing74, align 2
  %conv75 = sext i16 %47 to i32
  %48 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %spacing76 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %48, i32 0, i32 3
  store i32 %conv75, i32* %spacing76, align 4
  %49 = load i32, i32* %width, align 4
  %conv77 = sitofp i32 %49 to double
  %div = fdiv double %conv77, 2.000000e+00
  %50 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %x_axis = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %50, i32 0, i32 4
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %x_axis, i32 0, i32 0
  store double %div, double* %x, align 8
  %51 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %x_axis78 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %51, i32 0, i32 4
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %x_axis78, i32 0, i32 1
  store double 0.000000e+00, double* %y, align 8
  %52 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %y_axis = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %52, i32 0, i32 5
  %x79 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %y_axis, i32 0, i32 0
  store double 0.000000e+00, double* %x79, align 8
  %53 = load i32, i32* %height, align 4
  %conv80 = sitofp i32 %53 to double
  %div81 = fdiv double %conv80, 2.000000e+00
  %54 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %y_axis82 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %54, i32 0, i32 5
  %y83 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %y_axis82, i32 0, i32 1
  store double %div81, double* %y83, align 8
  %55 = load i32, i32* %width, align 4
  %56 = load i32, i32* %height, align 4
  %call84 = call %struct._TempBuf* @temp_buf_new(i32 %55, i32 %56, i32 1, i32 0, i32 0, i8* null)
  %57 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %mask85 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %57, i32 0, i32 1
  store %struct._TempBuf* %call84, %struct._TempBuf** %mask85, align 8
  %58 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %mask86 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %58, i32 0, i32 1
  %59 = load %struct._TempBuf*, %struct._TempBuf** %mask86, align 8
  %call87 = call i8* @temp_buf_get_data(%struct._TempBuf* %59)
  store i8* %call87, i8** %mask, align 8
  %60 = load i32, i32* %width, align 4
  %61 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %60, %61
  %62 = load i32, i32* %bytes, align 4
  %mul88 = mul nsw i32 %mul, %62
  store i32 %mul88, i32* %size14, align 4
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call89 = call signext i8 @abr_read_char(%struct._IO_FILE* %63)
  %conv90 = sext i8 %call89 to i16
  store i16 %conv90, i16* %compress, align 2
  %64 = load i16, i16* %compress, align 2
  %tobool91 = icmp ne i16 %64, 0
  br i1 %tobool91, label %if.else.95, label %if.then.92

if.then.92:                                       ; preds = %if.end.71
  %65 = load i8*, i8** %mask, align 8
  %66 = load i32, i32* %size14, align 4
  %conv93 = sext i32 %66 to i64
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call94 = call i64 @fread(i8* %65, i64 %conv93, i64 1, %struct._IO_FILE* %67)
  br label %if.end.97

if.else.95:                                       ; preds = %if.end.71
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %69 = load i8*, i8** %mask, align 8
  %70 = load i32, i32* %height, align 4
  %call96 = call i32 @abr_rle_decode(%struct._IO_FILE* %68, i8* %69, i32 %70)
  br label %if.end.97

if.end.97:                                        ; preds = %if.else.95, %if.then.92
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call98 = call i32 @feof(%struct._IO_FILE* %71) #6
  %tobool99 = icmp ne i32 %call98, 0
  br i1 %tobool99, label %if.then.100, label %if.end.104

if.then.100:                                      ; preds = %if.end.97
  %72 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call101 = call i32 @gimp_data_error_quark() #5
  %call102 = call i8* @gettext(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.13, i32 0, i32 0)) #6
  %73 = load i8*, i8** %filename.addr, align 8
  %call103 = call i8* @gimp_filename_to_utf8(i8* %73)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %72, i32 %call101, i32 1, i8* %call102, i8* %call103)
  %74 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %75 = bitcast %struct._GimpBrush* %74 to i8*
  call void @g_object_unref(i8* %75)
  store %struct._GimpBrush* null, %struct._GimpBrush** %retval
  br label %return

if.end.104:                                       ; preds = %if.end.97
  br label %sw.epilog

sw.default:                                       ; preds = %do.end.7
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.28, i32 0, i32 0))
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %size105 = getelementptr inbounds %struct._AbrBrushHeader, %struct._AbrBrushHeader* %abr_brush_hdr, i32 0, i32 1
  %77 = load i32, i32* %size105, align 4
  %conv106 = sext i32 %77 to i64
  %call107 = call i32 @fseek(%struct._IO_FILE* %76, i64 %conv106, i32 1)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.104, %sw.bb
  %78 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  store %struct._GimpBrush* %78, %struct._GimpBrush** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.100, %if.then.60, %if.then.40, %if.else.5, %if.else
  %79 = load %struct._GimpBrush*, %struct._GimpBrush** %retval
  ret %struct._GimpBrush* %79
}

declare void @g_propagate_error(%struct._GError**, %struct._GError*) #1

; Function Attrs: nounwind uwtable
define internal i32 @abr_read_long(%struct._IO_FILE* %file) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %val = alloca i32, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = bitcast i32* %val to i8*
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call i64 @fread(i8* %0, i64 4, i64 1, %struct._IO_FILE* %1)
  %2 = load i32, i32* %val, align 4
  %and = and i32 %2, 255
  %shl = shl i32 %and, 24
  %3 = load i32, i32* %val, align 4
  %and1 = and i32 %3, 65280
  %shl2 = shl i32 %and1, 8
  %or = or i32 %shl, %shl2
  %4 = load i32, i32* %val, align 4
  %and3 = and i32 %4, 16711680
  %shr = lshr i32 %and3, 8
  %or4 = or i32 %or, %shr
  %5 = load i32, i32* %val, align 4
  %and5 = and i32 %5, -16777216
  %shr6 = lshr i32 %and5, 24
  %or7 = or i32 %or4, %shr6
  ret i32 %or7
}

declare void @g_printerr(i8*, ...) #1

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #1

; Function Attrs: nounwind uwtable
define internal i8* @abr_read_ucs2_text(%struct._IO_FILE* %file) #0 {
entry:
  %retval = alloca i8*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %name_ucs2 = alloca i8*, align 8
  %name_utf8 = alloca i8*, align 8
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call i32 @abr_read_long(%struct._IO_FILE* %0)
  %mul = mul nsw i32 2, %call
  store i32 %mul, i32* %len, align 4
  %1 = load i32, i32* %len, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %len, align 4
  %conv = sext i32 %2 to i64
  %call1 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call1, i8** %name_ucs2, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %len, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call4 = call signext i8 @abr_read_char(%struct._IO_FILE* %5)
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i8*, i8** %name_ucs2, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  store i8 %call4, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i8*, i8** %name_ucs2, align 8
  %10 = load i32, i32* %len, align 4
  %conv5 = sext i32 %10 to i64
  %call6 = call noalias i8* @g_convert(i8* %9, i64 %conv5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i64* null, i64* null, %struct._GError** null)
  store i8* %call6, i8** %name_utf8, align 8
  %11 = load i8*, i8** %name_ucs2, align 8
  call void @g_free(i8* %11)
  %12 = load i8*, i8** %name_utf8, align 8
  store i8* %12, i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %13 = load i8*, i8** %retval
  ret i8* %13
}

; Function Attrs: nounwind uwtable
define internal signext i8 @abr_read_char(%struct._IO_FILE* %file) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call i32 @fgetc(%struct._IO_FILE* %0)
  %conv = trunc i32 %call to i8
  ret i8 %conv
}

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #3

declare noalias i8* @g_filename_display_basename(i8*) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal i32 @abr_rle_decode(%struct._IO_FILE* %file, i8* %buffer, i32 %height) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %buffer.addr = alloca i8*, align 8
  %height.addr = alloca i32, align 4
  %ch = alloca i8, align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %c = alloca i32, align 4
  %cscanline_len = alloca i16*, align 8
  %data = alloca i8*, align 8
  %n = alloca i32, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %height, i32* %height.addr, align 4
  %0 = load i8*, i8** %buffer.addr, align 8
  store i8* %0, i8** %data, align 8
  %1 = load i32, i32* %height.addr, align 4
  %conv = sext i32 %1 to i64
  %call = call noalias i8* @g_malloc0_n(i64 %conv, i64 2)
  %2 = bitcast i8* %call to i16*
  store i16* %2, i16** %cscanline_len, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %height.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call2 = call signext i16 @abr_read_short(%struct._IO_FILE* %5)
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i16*, i16** %cscanline_len, align 8
  %arrayidx = getelementptr inbounds i16, i16* %7, i64 %idxprom
  store i16 %call2, i16* %arrayidx, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.49, %for.end
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %height.addr, align 4
  %cmp4 = icmp slt i32 %9, %10
  br i1 %cmp4, label %for.body.6, label %for.end.51

for.body.6:                                       ; preds = %for.cond.3
  store i32 0, i32* %j, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %if.end.47, %if.then.24, %for.body.6
  %11 = load i32, i32* %j, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %12 to i64
  %13 = load i16*, i16** %cscanline_len, align 8
  %arrayidx9 = getelementptr inbounds i16, i16* %13, i64 %idxprom8
  %14 = load i16, i16* %arrayidx9, align 2
  %conv10 = sext i16 %14 to i32
  %cmp11 = icmp slt i32 %11, %conv10
  br i1 %cmp11, label %for.body.13, label %for.end.48

for.body.13:                                      ; preds = %for.cond.7
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call14 = call signext i8 @abr_read_char(%struct._IO_FILE* %15)
  %conv15 = sext i8 %call14 to i32
  store i32 %conv15, i32* %n, align 4
  %16 = load i32, i32* %j, align 4
  %inc16 = add nsw i32 %16, 1
  store i32 %inc16, i32* %j, align 4
  %17 = load i32, i32* %n, align 4
  %cmp17 = icmp sge i32 %17, 128
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.13
  %18 = load i32, i32* %n, align 4
  %sub = sub nsw i32 %18, 256
  store i32 %sub, i32* %n, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.13
  %19 = load i32, i32* %n, align 4
  %cmp19 = icmp slt i32 %19, 0
  br i1 %cmp19, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.end
  %20 = load i32, i32* %n, align 4
  %cmp22 = icmp eq i32 %20, -128
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.then.21
  br label %for.cond.7

if.end.25:                                        ; preds = %if.then.21
  %21 = load i32, i32* %n, align 4
  %sub26 = sub nsw i32 0, %21
  %add = add nsw i32 %sub26, 1
  store i32 %add, i32* %n, align 4
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call27 = call signext i8 @abr_read_char(%struct._IO_FILE* %22)
  store i8 %call27, i8* %ch, align 1
  %23 = load i32, i32* %j, align 4
  %inc28 = add nsw i32 %23, 1
  store i32 %inc28, i32* %j, align 4
  store i32 0, i32* %c, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.33, %if.end.25
  %24 = load i32, i32* %c, align 4
  %25 = load i32, i32* %n, align 4
  %cmp30 = icmp slt i32 %24, %25
  br i1 %cmp30, label %for.body.32, label %for.end.35

for.body.32:                                      ; preds = %for.cond.29
  %26 = load i8, i8* %ch, align 1
  %27 = load i8*, i8** %data, align 8
  store i8 %26, i8* %27, align 1
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.body.32
  %28 = load i32, i32* %c, align 4
  %inc34 = add nsw i32 %28, 1
  store i32 %inc34, i32* %c, align 4
  %29 = load i8*, i8** %data, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr, i8** %data, align 8
  br label %for.cond.29

for.end.35:                                       ; preds = %for.cond.29
  br label %if.end.47

if.else:                                          ; preds = %if.end
  store i32 0, i32* %c, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.42, %if.else
  %30 = load i32, i32* %c, align 4
  %31 = load i32, i32* %n, align 4
  %add37 = add nsw i32 %31, 1
  %cmp38 = icmp slt i32 %30, %add37
  br i1 %cmp38, label %for.body.40, label %for.end.46

for.body.40:                                      ; preds = %for.cond.36
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call41 = call signext i8 @abr_read_char(%struct._IO_FILE* %32)
  %33 = load i8*, i8** %data, align 8
  store i8 %call41, i8* %33, align 1
  br label %for.inc.42

for.inc.42:                                       ; preds = %for.body.40
  %34 = load i32, i32* %c, align 4
  %inc43 = add nsw i32 %34, 1
  store i32 %inc43, i32* %c, align 4
  %35 = load i32, i32* %j, align 4
  %inc44 = add nsw i32 %35, 1
  store i32 %inc44, i32* %j, align 4
  %36 = load i8*, i8** %data, align 8
  %incdec.ptr45 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr45, i8** %data, align 8
  br label %for.cond.36

for.end.46:                                       ; preds = %for.cond.36
  br label %if.end.47

if.end.47:                                        ; preds = %for.end.46, %for.end.35
  br label %for.cond.7

for.end.48:                                       ; preds = %for.cond.7
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.end.48
  %37 = load i32, i32* %i, align 4
  %inc50 = add nsw i32 %37, 1
  store i32 %inc50, i32* %i, align 4
  br label %for.cond.3

for.end.51:                                       ; preds = %for.cond.3
  %38 = load i16*, i16** %cscanline_len, align 8
  %39 = bitcast i16* %38 to i8*
  call void @g_free(i8* %39)
  ret i32 0
}

declare noalias i8* @g_convert(i8*, i64, i8*, i8*, i64*, i64*, %struct._GError**) #1

declare i32 @fgetc(%struct._IO_FILE*) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @abr_reach_8bim_section(%struct._IO_FILE* %abr, i8* %name) #0 {
entry:
  %retval = alloca i32, align 4
  %abr.addr = alloca %struct._IO_FILE*, align 8
  %name.addr = alloca i8*, align 8
  %tag = alloca [4 x i8], align 1
  %tagname = alloca [5 x i8], align 1
  %section_size = alloca i32, align 4
  %r = alloca i32, align 4
  store %struct._IO_FILE* %abr, %struct._IO_FILE** %abr.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.24, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %abr.addr, align 8
  %call = call i32 @feof(%struct._IO_FILE* %0) #6
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = bitcast [4 x i8]* %tag to i8*
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %abr.addr, align 8
  %call1 = call i64 @fread(i8* %1, i64 1, i64 4, %struct._IO_FILE* %2)
  %conv = trunc i64 %call1 to i32
  store i32 %conv, i32* %r, align 4
  %3 = load i32, i32* %r, align 4
  %cmp = icmp ne i32 %3, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %tag, i32 0, i32 0
  %call3 = call i32 @strncmp(i8* %arraydecay, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i64 4) #7
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = bitcast [5 x i8]* %tagname to i8*
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %abr.addr, align 8
  %call7 = call i64 @fread(i8* %4, i64 1, i64 4, %struct._IO_FILE* %5)
  %conv8 = trunc i64 %call7 to i32
  store i32 %conv8, i32* %r, align 4
  %6 = load i32, i32* %r, align 4
  %cmp9 = icmp ne i32 %6, 4
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.6
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.6
  %arrayidx = getelementptr inbounds [5 x i8], [5 x i8]* %tagname, i32 0, i64 4
  store i8 0, i8* %arrayidx, align 1
  %arraydecay13 = getelementptr inbounds [5 x i8], [5 x i8]* %tagname, i32 0, i32 0
  %7 = load i8*, i8** %name.addr, align 8
  %call14 = call i32 @strncmp(i8* %arraydecay13, i8* %7, i64 4) #7
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.end.12
  store i32 1, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.12
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %abr.addr, align 8
  %call18 = call i32 @abr_read_long(%struct._IO_FILE* %8)
  store i32 %call18, i32* %section_size, align 4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %abr.addr, align 8
  %10 = load i32, i32* %section_size, align 4
  %conv19 = sext i32 %10 to i64
  %call20 = call i32 @fseek(%struct._IO_FILE* %9, i64 %conv19, i32 1)
  store i32 %call20, i32* %r, align 4
  %11 = load i32, i32* %r, align 4
  %cmp21 = icmp eq i32 %11, -1
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.17
  store i32 0, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.end.17
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.23, %if.then.16, %if.then.11, %if.then.5, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare i64 @ftell(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpBrush* @gimp_brush_load_abr_brush_v6(%struct._IO_FILE* %file, %struct._AbrHeader* %abr_hdr, i32 %max_offset, i32 %index, i8* %filename, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GimpBrush*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %abr_hdr.addr = alloca %struct._AbrHeader*, align 8
  %max_offset.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %brush = alloca %struct._GimpBrush*, align 8
  %mask = alloca i8*, align 8
  %brush_size = alloca i32, align 4
  %brush_end = alloca i32, align 4
  %next_brush = alloca i32, align 4
  %top = alloca i32, align 4
  %left = alloca i32, align 4
  %bottom = alloca i32, align 4
  %right = alloca i32, align 4
  %depth = alloca i16, align 2
  %compress = alloca i8, align 1
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %size = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %name = alloca i8*, align 8
  %r = alloca i32, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store %struct._AbrHeader* %abr_hdr, %struct._AbrHeader** %abr_hdr.addr, align 8
  store i32 %max_offset, i32* %max_offset.addr, align 4
  store i32 %index, i32* %index.addr, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store %struct._GimpBrush* null, %struct._GimpBrush** %brush, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call i32 @abr_read_long(%struct._IO_FILE* %0)
  store i32 %call, i32* %brush_size, align 4
  %1 = load i32, i32* %brush_size, align 4
  store i32 %1, i32* %brush_end, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i32, i32* %brush_end, align 4
  %rem = srem i32 %2, 4
  %cmp = icmp ne i32 %rem, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %brush_end, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %brush_end, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call3 = call i64 @ftell(%struct._IO_FILE* %4)
  %5 = load i32, i32* %brush_end, align 4
  %conv = sext i32 %5 to i64
  %add = add nsw i64 %call3, %conv
  %conv4 = trunc i64 %add to i32
  store i32 %conv4, i32* %next_brush, align 4
  %6 = load %struct._AbrHeader*, %struct._AbrHeader** %abr_hdr.addr, align 8
  %count = getelementptr inbounds %struct._AbrHeader, %struct._AbrHeader* %6, i32 0, i32 1
  %7 = load i16, i16* %count, align 2
  %conv5 = sext i16 %7 to i32
  %cmp6 = icmp eq i32 %conv5, 1
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call8 = call i32 @fseek(%struct._IO_FILE* %8, i64 47, i32 1)
  store i32 %call8, i32* %r, align 4
  br label %if.end

if.else:                                          ; preds = %while.end
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call9 = call i32 @fseek(%struct._IO_FILE* %9, i64 301, i32 1)
  store i32 %call9, i32* %r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load i32, i32* %r, align 4
  %cmp10 = icmp eq i32 %10, -1
  br i1 %cmp10, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %if.end
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call13 = call i32 @gimp_data_error_quark() #5
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.13, i32 0, i32 0)) #6
  %12 = load i8*, i8** %filename.addr, align 8
  %call15 = call i8* @gimp_filename_to_utf8(i8* %12)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %11, i32 %call13, i32 1, i8* %call14, i8* %call15)
  store %struct._GimpBrush* null, %struct._GimpBrush** %retval
  br label %return

if.end.16:                                        ; preds = %if.end
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call17 = call i32 @abr_read_long(%struct._IO_FILE* %13)
  store i32 %call17, i32* %top, align 4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call18 = call i32 @abr_read_long(%struct._IO_FILE* %14)
  store i32 %call18, i32* %left, align 4
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call19 = call i32 @abr_read_long(%struct._IO_FILE* %15)
  store i32 %call19, i32* %bottom, align 4
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call20 = call i32 @abr_read_long(%struct._IO_FILE* %16)
  store i32 %call20, i32* %right, align 4
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call21 = call signext i16 @abr_read_short(%struct._IO_FILE* %17)
  store i16 %call21, i16* %depth, align 2
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call22 = call signext i8 @abr_read_char(%struct._IO_FILE* %18)
  store i8 %call22, i8* %compress, align 1
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call23 = call i32 @feof(%struct._IO_FILE* %19) #6
  %tobool = icmp ne i32 %call23, 0
  br i1 %tobool, label %if.then.24, label %if.end.28

if.then.24:                                       ; preds = %if.end.16
  %20 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call25 = call i32 @gimp_data_error_quark() #5
  %call26 = call i8* @gettext(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.13, i32 0, i32 0)) #6
  %21 = load i8*, i8** %filename.addr, align 8
  %call27 = call i8* @gimp_filename_to_utf8(i8* %21)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %20, i32 %call25, i32 1, i8* %call26, i8* %call27)
  store %struct._GimpBrush* null, %struct._GimpBrush** %retval
  br label %return

if.end.28:                                        ; preds = %if.end.16
  %22 = load i32, i32* %right, align 4
  %23 = load i32, i32* %left, align 4
  %sub = sub nsw i32 %22, %23
  store i32 %sub, i32* %width, align 4
  %24 = load i32, i32* %bottom, align 4
  %25 = load i32, i32* %top, align 4
  %sub29 = sub nsw i32 %24, %25
  store i32 %sub29, i32* %height, align 4
  %26 = load i32, i32* %width, align 4
  %27 = load i16, i16* %depth, align 2
  %conv30 = sext i16 %27 to i32
  %shr = ashr i32 %conv30, 3
  %mul = mul nsw i32 %26, %shr
  %28 = load i32, i32* %height, align 4
  %mul31 = mul nsw i32 %mul, %28
  store i32 %mul31, i32* %size, align 4
  %29 = load i8*, i8** %filename.addr, align 8
  %call32 = call noalias i8* @g_filename_display_basename(i8* %29)
  store i8* %call32, i8** %tmp, align 8
  %30 = load i8*, i8** %tmp, align 8
  %31 = load i32, i32* %index.addr, align 4
  %call33 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i8* %30, i32 %31)
  store i8* %call33, i8** %name, align 8
  %32 = load i8*, i8** %tmp, align 8
  call void @g_free(i8* %32)
  %call34 = call i64 @gimp_brush_get_type() #5
  %33 = load i8*, i8** %name, align 8
  %call35 = call i8* (i64, i8*, ...) @g_object_new(i64 %call34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i32 0, i32 0), i8* null)
  %34 = bitcast i8* %call35 to %struct._GimpBrush*
  store %struct._GimpBrush* %34, %struct._GimpBrush** %brush, align 8
  %35 = load i8*, i8** %name, align 8
  call void @g_free(i8* %35)
  %36 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %spacing = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %36, i32 0, i32 3
  store i32 25, i32* %spacing, align 4
  %37 = load i32, i32* %width, align 4
  %conv36 = sitofp i32 %37 to double
  %div = fdiv double %conv36, 2.000000e+00
  %38 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %x_axis = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %38, i32 0, i32 4
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %x_axis, i32 0, i32 0
  store double %div, double* %x, align 8
  %39 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %x_axis37 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %39, i32 0, i32 4
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %x_axis37, i32 0, i32 1
  store double 0.000000e+00, double* %y, align 8
  %40 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %y_axis = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %40, i32 0, i32 5
  %x38 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %y_axis, i32 0, i32 0
  store double 0.000000e+00, double* %x38, align 8
  %41 = load i32, i32* %height, align 4
  %conv39 = sitofp i32 %41 to double
  %div40 = fdiv double %conv39, 2.000000e+00
  %42 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %y_axis41 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %42, i32 0, i32 5
  %y42 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %y_axis41, i32 0, i32 1
  store double %div40, double* %y42, align 8
  %43 = load i32, i32* %width, align 4
  %44 = load i32, i32* %height, align 4
  %call43 = call %struct._TempBuf* @temp_buf_new(i32 %43, i32 %44, i32 1, i32 0, i32 0, i8* null)
  %45 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %mask44 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %45, i32 0, i32 1
  store %struct._TempBuf* %call43, %struct._TempBuf** %mask44, align 8
  %46 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %mask45 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %46, i32 0, i32 1
  %47 = load %struct._TempBuf*, %struct._TempBuf** %mask45, align 8
  %call46 = call i8* @temp_buf_get_data(%struct._TempBuf* %47)
  store i8* %call46, i8** %mask, align 8
  %48 = load i8, i8* %compress, align 1
  %tobool47 = icmp ne i8 %48, 0
  br i1 %tobool47, label %if.else.51, label %if.then.48

if.then.48:                                       ; preds = %if.end.28
  %49 = load i8*, i8** %mask, align 8
  %50 = load i32, i32* %size, align 4
  %conv49 = sext i32 %50 to i64
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call50 = call i64 @fread(i8* %49, i64 %conv49, i64 1, %struct._IO_FILE* %51)
  br label %if.end.53

if.else.51:                                       ; preds = %if.end.28
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %53 = load i8*, i8** %mask, align 8
  %54 = load i32, i32* %height, align 4
  %call52 = call i32 @abr_rle_decode(%struct._IO_FILE* %52, i8* %53, i32 %54)
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.51, %if.then.48
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %56 = load i32, i32* %next_brush, align 4
  %conv54 = sext i32 %56 to i64
  %call55 = call i32 @fseek(%struct._IO_FILE* %55, i64 %conv54, i32 0)
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call56 = call i32 @feof(%struct._IO_FILE* %57) #6
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.then.58, label %if.end.62

if.then.58:                                       ; preds = %if.end.53
  %58 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call59 = call i32 @gimp_data_error_quark() #5
  %call60 = call i8* @gettext(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.13, i32 0, i32 0)) #6
  %59 = load i8*, i8** %filename.addr, align 8
  %call61 = call i8* @gimp_filename_to_utf8(i8* %59)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %58, i32 %call59, i32 1, i8* %call60, i8* %call61)
  %60 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %61 = bitcast %struct._GimpBrush* %60 to i8*
  call void @g_object_unref(i8* %61)
  store %struct._GimpBrush* null, %struct._GimpBrush** %retval
  br label %return

if.end.62:                                        ; preds = %if.end.53
  %62 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  store %struct._GimpBrush* %62, %struct._GimpBrush** %retval
  br label %return

return:                                           ; preds = %if.end.62, %if.then.58, %if.then.24, %if.then.12
  %63 = load %struct._GimpBrush*, %struct._GimpBrush** %retval
  ret %struct._GimpBrush* %63
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

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
