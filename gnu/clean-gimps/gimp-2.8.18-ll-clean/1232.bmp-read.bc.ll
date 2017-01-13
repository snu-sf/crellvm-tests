; ModuleID = './plug-ins/file-bmp/bmp-read.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Bitmap_File_Head_Struct = type { [2 x i8], i64, i16, i16, i64, i64 }
%struct.Bitmap_Head_Struct = type { i64, i64, i16, i16, i64, i64, i64, i64, i64, i64, [4 x i32] }
%struct._GError = type { i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Bitmap_Channel = type { i32, i32, float }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@filename = external global i8*, align 8
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for reading: %s\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Opening '%s'\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"BA\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"BM\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"IC\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"PT\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"CI\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"CP\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"'%s' is not a valid BMP file\00", align 1
@Bitmap_File_Head = external global %struct.Bitmap_File_Head_Struct, align 8
@.str.10 = private unnamed_addr constant [40 x i8] c"Error reading BMP file header from '%s'\00", align 1
@Bitmap_Head = external global %struct.Bitmap_Head_Struct, align 8
@.str.11 = private unnamed_addr constant [52 x i8] c"Unsupported compression (%lu) in BMP file from '%s'\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"Bad colormap\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.14 = private unnamed_addr constant [48 x i8] c"Unrecognized or invalid BMP compression format.\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"Unsupported or invalid bitdepth.\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"Unsupported or invalid image width: %d\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"Unsupported or invalid image height: %d\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"Background\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"The bitmap ends unexpectedly.\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"bmp-read.c\00", align 1
@__func__.ReadImage = private unnamed_addr constant [10 x i8] c"ReadImage\00", align 1

; Function Attrs: nounwind uwtable
define i32 @ReadBMP(i8* %name, %struct._GError** %error) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %fd = alloca %struct._IO_FILE*, align 8
  %buffer = alloca [124 x i8], align 16
  %ColormapSize = alloca i32, align 4
  %rowbytes = alloca i32, align 4
  %Maps = alloca i32, align 4
  %Grey = alloca i32, align 4
  %ColorMap = alloca [256 x [3 x i8]], align 16
  %image_ID = alloca i32, align 4
  %magick = alloca [2 x i8], align 1
  %masks = alloca [4 x %struct._Bitmap_Channel], align 16
  %xresolution = alloca double, align 8
  %yresolution = alloca double, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 0, i32* %Grey, align 4
  store i32 -1, i32* %image_ID, align 4
  %0 = load i8*, i8** %name.addr, align 8
  store i8* %0, i8** @filename, align 8
  %1 = load i8*, i8** @filename, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fd, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %tobool = icmp ne %struct._IO_FILE* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call i32 @g_file_error_quark()
  %call2 = call i32* @__errno_location() #7
  %4 = load i32, i32* %call2, align 4
  %call3 = call i32 @g_file_error_from_errno(i32 %4)
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0)) #5
  %5 = load i8*, i8** @filename, align 8
  %call5 = call i8* @gimp_filename_to_utf8(i8* %5)
  %call6 = call i32* @__errno_location() #7
  %6 = load i32, i32* %call6, align 4
  %call7 = call i8* @g_strerror(i32 %6) #7
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %3, i32 %call1, i32 %call3, i8* %call4, i8* %call5, i8* %call7)
  br label %out

if.end:                                           ; preds = %entry
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)) #5
  %7 = load i8*, i8** %name.addr, align 8
  %call9 = call i8* @gimp_filename_to_utf8(i8* %7)
  %call10 = call i32 (i8*, ...) @gimp_progress_init_printf(i8* %call8, i8* %call9)
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %magick, i32 0, i32 0
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call11 = call i64 @fread(i8* %arraydecay, i64 2, i64 1, %struct._IO_FILE* %8)
  %cmp = icmp ne i64 %call11, 0
  br i1 %cmp, label %lor.lhs.false, label %if.then.35

lor.lhs.false:                                    ; preds = %if.end
  %arraydecay12 = getelementptr inbounds [2 x i8], [2 x i8]* %magick, i32 0, i32 0
  %call13 = call i32 @strncmp(i8* %arraydecay12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i64 2) #8
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %lor.lhs.false.15, label %if.end.39

lor.lhs.false.15:                                 ; preds = %lor.lhs.false
  %arraydecay16 = getelementptr inbounds [2 x i8], [2 x i8]* %magick, i32 0, i32 0
  %call17 = call i32 @strncmp(i8* %arraydecay16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i64 2) #8
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %lor.lhs.false.19, label %if.end.39

lor.lhs.false.19:                                 ; preds = %lor.lhs.false.15
  %arraydecay20 = getelementptr inbounds [2 x i8], [2 x i8]* %magick, i32 0, i32 0
  %call21 = call i32 @strncmp(i8* %arraydecay20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i64 2) #8
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %lor.lhs.false.23, label %if.end.39

lor.lhs.false.23:                                 ; preds = %lor.lhs.false.19
  %arraydecay24 = getelementptr inbounds [2 x i8], [2 x i8]* %magick, i32 0, i32 0
  %call25 = call i32 @strncmp(i8* %arraydecay24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i64 2) #8
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %lor.lhs.false.27, label %if.end.39

lor.lhs.false.27:                                 ; preds = %lor.lhs.false.23
  %arraydecay28 = getelementptr inbounds [2 x i8], [2 x i8]* %magick, i32 0, i32 0
  %call29 = call i32 @strncmp(i8* %arraydecay28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i64 2) #8
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %lor.lhs.false.31, label %if.end.39

lor.lhs.false.31:                                 ; preds = %lor.lhs.false.27
  %arraydecay32 = getelementptr inbounds [2 x i8], [2 x i8]* %magick, i32 0, i32 0
  %call33 = call i32 @strncmp(i8* %arraydecay32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i64 2) #8
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then.35, label %if.end.39

if.then.35:                                       ; preds = %lor.lhs.false.31, %if.end
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call36 = call i32 @g_file_error_quark()
  %call37 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0)) #5
  %10 = load i8*, i8** @filename, align 8
  %call38 = call i8* @gimp_filename_to_utf8(i8* %10)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %9, i32 %call36, i32 24, i8* %call37, i8* %call38)
  br label %out

if.end.39:                                        ; preds = %lor.lhs.false.31, %lor.lhs.false.27, %lor.lhs.false.23, %lor.lhs.false.19, %lor.lhs.false.15, %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %if.end.58, %if.end.39
  %arraydecay40 = getelementptr inbounds [2 x i8], [2 x i8]* %magick, i32 0, i32 0
  %call41 = call i32 @strncmp(i8* %arraydecay40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i64 2) #8
  %tobool42 = icmp ne i32 %call41, 0
  %lnot = xor i1 %tobool42, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay43 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i32 0
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call44 = call i64 @fread(i8* %arraydecay43, i64 12, i64 1, %struct._IO_FILE* %11)
  %cmp45 = icmp ne i64 %call44, 0
  br i1 %cmp45, label %if.end.50, label %if.then.46

if.then.46:                                       ; preds = %while.body
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call47 = call i32 @g_file_error_quark()
  %call48 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0)) #5
  %13 = load i8*, i8** @filename, align 8
  %call49 = call i8* @gimp_filename_to_utf8(i8* %13)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %12, i32 %call47, i32 24, i8* %call48, i8* %call49)
  br label %out

if.end.50:                                        ; preds = %while.body
  %arraydecay51 = getelementptr inbounds [2 x i8], [2 x i8]* %magick, i32 0, i32 0
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call52 = call i64 @fread(i8* %arraydecay51, i64 2, i64 1, %struct._IO_FILE* %14)
  %cmp53 = icmp ne i64 %call52, 0
  br i1 %cmp53, label %if.end.58, label %if.then.54

if.then.54:                                       ; preds = %if.end.50
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call55 = call i32 @g_file_error_quark()
  %call56 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0)) #5
  %16 = load i8*, i8** @filename, align 8
  %call57 = call i8* @gimp_filename_to_utf8(i8* %16)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %15, i32 %call55, i32 24, i8* %call56, i8* %call57)
  br label %out

if.end.58:                                        ; preds = %if.end.50
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %arraydecay59 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i32 0
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call60 = call i64 @fread(i8* %arraydecay59, i64 12, i64 1, %struct._IO_FILE* %17)
  %cmp61 = icmp ne i64 %call60, 0
  br i1 %cmp61, label %if.end.66, label %if.then.62

if.then.62:                                       ; preds = %while.end
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call63 = call i32 @g_file_error_quark()
  %call64 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0)) #5
  %19 = load i8*, i8** @filename, align 8
  %call65 = call i8* @gimp_filename_to_utf8(i8* %19)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %18, i32 %call63, i32 24, i8* %call64, i8* %call65)
  br label %out

if.end.66:                                        ; preds = %while.end
  %arrayidx = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i64 0
  %call67 = call i32 @ToL(i8* %arrayidx)
  %conv = sext i32 %call67 to i64
  store i64 %conv, i64* getelementptr inbounds (%struct.Bitmap_File_Head_Struct, %struct.Bitmap_File_Head_Struct* @Bitmap_File_Head, i32 0, i32 1), align 8
  %arrayidx68 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i64 4
  %call69 = call signext i16 @ToS(i8* %arrayidx68)
  store i16 %call69, i16* getelementptr inbounds (%struct.Bitmap_File_Head_Struct, %struct.Bitmap_File_Head_Struct* @Bitmap_File_Head, i32 0, i32 2), align 2
  %arrayidx70 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i64 6
  %call71 = call signext i16 @ToS(i8* %arrayidx70)
  store i16 %call71, i16* getelementptr inbounds (%struct.Bitmap_File_Head_Struct, %struct.Bitmap_File_Head_Struct* @Bitmap_File_Head, i32 0, i32 3), align 2
  %arrayidx72 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i64 8
  %call73 = call i32 @ToL(i8* %arrayidx72)
  %conv74 = sext i32 %call73 to i64
  store i64 %conv74, i64* getelementptr inbounds (%struct.Bitmap_File_Head_Struct, %struct.Bitmap_File_Head_Struct* @Bitmap_File_Head, i32 0, i32 4), align 8
  %arraydecay75 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i32 0
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call76 = call i64 @fread(i8* %arraydecay75, i64 4, i64 1, %struct._IO_FILE* %20)
  %cmp77 = icmp ne i64 %call76, 0
  br i1 %cmp77, label %if.end.83, label %if.then.79

if.then.79:                                       ; preds = %if.end.66
  %21 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call80 = call i32 @g_file_error_quark()
  %call81 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0)) #5
  %22 = load i8*, i8** @filename, align 8
  %call82 = call i8* @gimp_filename_to_utf8(i8* %22)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %21, i32 %call80, i32 24, i8* %call81, i8* %call82)
  br label %out

if.end.83:                                        ; preds = %if.end.66
  %arrayidx84 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i64 0
  %call85 = call i32 @ToL(i8* %arrayidx84)
  %conv86 = sext i32 %call85 to i64
  store i64 %conv86, i64* getelementptr inbounds (%struct.Bitmap_File_Head_Struct, %struct.Bitmap_File_Head_Struct* @Bitmap_File_Head, i32 0, i32 5), align 8
  %23 = load i64, i64* getelementptr inbounds (%struct.Bitmap_File_Head_Struct, %struct.Bitmap_File_Head_Struct* @Bitmap_File_Head, i32 0, i32 5), align 8
  %cmp87 = icmp eq i64 %23, 12
  br i1 %cmp87, label %if.then.89, label %if.else

if.then.89:                                       ; preds = %if.end.83
  %arraydecay90 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i32 0
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call91 = call i64 @fread(i8* %arraydecay90, i64 8, i64 1, %struct._IO_FILE* %24)
  %cmp92 = icmp ne i64 %call91, 0
  br i1 %cmp92, label %if.end.98, label %if.then.94

if.then.94:                                       ; preds = %if.then.89
  %25 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call95 = call i32 @g_file_error_quark()
  %call96 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i32 0, i32 0)) #5
  %26 = load i8*, i8** @filename, align 8
  %call97 = call i8* @gimp_filename_to_utf8(i8* %26)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %25, i32 %call95, i32 24, i8* %call96, i8* %call97)
  br label %out

if.end.98:                                        ; preds = %if.then.89
  %arrayidx99 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i64 0
  %call100 = call signext i16 @ToS(i8* %arrayidx99)
  %conv101 = sext i16 %call100 to i64
  store i64 %conv101, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 0), align 8
  %arrayidx102 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i64 2
  %call103 = call signext i16 @ToS(i8* %arrayidx102)
  %conv104 = sext i16 %call103 to i64
  store i64 %conv104, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 1), align 8
  %arrayidx105 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i64 4
  %call106 = call signext i16 @ToS(i8* %arrayidx105)
  store i16 %call106, i16* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 2), align 2
  %arrayidx107 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i64 6
  %call108 = call signext i16 @ToS(i8* %arrayidx107)
  store i16 %call108, i16* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 3), align 2
  store i64 0, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 4), align 8
  store i64 0, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 5), align 8
  store i64 0, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 7), align 8
  store i64 0, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 6), align 8
  store i64 0, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 8), align 8
  store i64 0, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 9), align 8
  store i32 0, i32* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 10, i64 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 10, i64 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 10, i64 2), align 4
  store i32 0, i32* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 10, i64 3), align 4
  %27 = bitcast [4 x %struct._Bitmap_Channel]* %masks to i8*
  call void @llvm.memset.p0i8.i64(i8* %27, i8 0, i64 48, i32 16, i1 false)
  store i32 3, i32* %Maps, align 4
  br label %if.end.312

if.else:                                          ; preds = %if.end.83
  %28 = load i64, i64* getelementptr inbounds (%struct.Bitmap_File_Head_Struct, %struct.Bitmap_File_Head_Struct* @Bitmap_File_Head, i32 0, i32 5), align 8
  %cmp109 = icmp eq i64 %28, 40
  br i1 %cmp109, label %if.then.111, label %if.else.186

if.then.111:                                      ; preds = %if.else
  %arraydecay112 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i32 0
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call113 = call i64 @fread(i8* %arraydecay112, i64 36, i64 1, %struct._IO_FILE* %29)
  %cmp114 = icmp ne i64 %call113, 0
  br i1 %cmp114, label %if.end.120, label %if.then.116

if.then.116:                                      ; preds = %if.then.111
  %30 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call117 = call i32 @g_file_error_quark()
  %call118 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i32 0, i32 0)) #5
  %31 = load i8*, i8** @filename, align 8
  %call119 = call i8* @gimp_filename_to_utf8(i8* %31)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %30, i32 %call117, i32 24, i8* %call118, i8* %call119)
  br label %out

if.end.120:                                       ; preds = %if.then.111
  %arrayidx121 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i64 0
  %call122 = call i32 @ToL(i8* %arrayidx121)
  %conv123 = sext i32 %call122 to i64
  store i64 %conv123, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 0), align 8
  %arrayidx124 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i64 4
  %call125 = call i32 @ToL(i8* %arrayidx124)
  %conv126 = sext i32 %call125 to i64
  store i64 %conv126, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 1), align 8
  %arrayidx127 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i64 8
  %call128 = call signext i16 @ToS(i8* %arrayidx127)
  store i16 %call128, i16* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 2), align 2
  %arrayidx129 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i64 10
  %call130 = call signext i16 @ToS(i8* %arrayidx129)
  store i16 %call130, i16* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 3), align 2
  %arrayidx131 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i64 12
  %call132 = call i32 @ToL(i8* %arrayidx131)
  %conv133 = sext i32 %call132 to i64
  store i64 %conv133, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 4), align 8
  %arrayidx134 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i64 16
  %call135 = call i32 @ToL(i8* %arrayidx134)
  %conv136 = sext i32 %call135 to i64
  store i64 %conv136, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 5), align 8
  %arrayidx137 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i64 20
  %call138 = call i32 @ToL(i8* %arrayidx137)
  %conv139 = sext i32 %call138 to i64
  store i64 %conv139, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 6), align 8
  %arrayidx140 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i64 24
  %call141 = call i32 @ToL(i8* %arrayidx140)
  %conv142 = sext i32 %call141 to i64
  store i64 %conv142, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 7), align 8
  %arrayidx143 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i64 28
  %call144 = call i32 @ToL(i8* %arrayidx143)
  %conv145 = sext i32 %call144 to i64
  store i64 %conv145, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 8), align 8
  %arrayidx146 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i64 32
  %call147 = call i32 @ToL(i8* %arrayidx146)
  %conv148 = sext i32 %call147 to i64
  store i64 %conv148, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 9), align 8
  store i32 0, i32* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 10, i64 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 10, i64 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 10, i64 2), align 4
  store i32 0, i32* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 10, i64 3), align 4
  store i32 4, i32* %Maps, align 4
  %32 = bitcast [4 x %struct._Bitmap_Channel]* %masks to i8*
  call void @llvm.memset.p0i8.i64(i8* %32, i8 0, i64 48, i32 16, i1 false)
  %33 = load i64, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 4), align 8
  %cmp149 = icmp eq i64 %33, 3
  br i1 %cmp149, label %if.then.151, label %if.else.169

if.then.151:                                      ; preds = %if.end.120
  %arraydecay152 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i32 0
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call153 = call i64 @fread(i8* %arraydecay152, i64 12, i64 1, %struct._IO_FILE* %34)
  %cmp154 = icmp ne i64 %call153, 0
  br i1 %cmp154, label %if.end.160, label %if.then.156

if.then.156:                                      ; preds = %if.then.151
  %35 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call157 = call i32 @g_file_error_quark()
  %call158 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i32 0, i32 0)) #5
  %36 = load i8*, i8** @filename, align 8
  %call159 = call i8* @gimp_filename_to_utf8(i8* %36)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %35, i32 %call157, i32 24, i8* %call158, i8* %call159)
  br label %out

if.end.160:                                       ; preds = %if.then.151
  %arrayidx161 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i64 0
  %call162 = call i32 @ToL(i8* %arrayidx161)
  store i32 %call162, i32* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 10, i64 0), align 4
  %arrayidx163 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i64 4
  %call164 = call i32 @ToL(i8* %arrayidx163)
  store i32 %call164, i32* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 10, i64 1), align 4
  %arrayidx165 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i64 8
  %call166 = call i32 @ToL(i8* %arrayidx165)
  store i32 %call166, i32* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 10, i64 2), align 4
  %arraydecay167 = getelementptr inbounds [4 x %struct._Bitmap_Channel], [4 x %struct._Bitmap_Channel]* %masks, i32 0, i32 0
  %call168 = call i32 @ReadChannelMasks(i32* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 10, i64 0), %struct._Bitmap_Channel* %arraydecay167, i32 3)
  br label %if.end.185

if.else.169:                                      ; preds = %if.end.120
  %37 = load i64, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 4), align 8
  %cmp170 = icmp eq i64 %37, 0
  br i1 %cmp170, label %if.then.172, label %if.else.174

if.then.172:                                      ; preds = %if.else.169
  %38 = load i16, i16* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 3), align 2
  %arraydecay173 = getelementptr inbounds [4 x %struct._Bitmap_Channel], [4 x %struct._Bitmap_Channel]* %masks, i32 0, i32 0
  call void @setMasksDefault(i16 zeroext %38, %struct._Bitmap_Channel* %arraydecay173)
  br label %if.end.184

if.else.174:                                      ; preds = %if.else.169
  %39 = load i64, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 4), align 8
  %cmp175 = icmp ne i64 %39, 2
  br i1 %cmp175, label %land.lhs.true, label %if.end.183

land.lhs.true:                                    ; preds = %if.else.174
  %40 = load i64, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 4), align 8
  %cmp177 = icmp ne i64 %40, 1
  br i1 %cmp177, label %if.then.179, label %if.end.183

if.then.179:                                      ; preds = %land.lhs.true
  %41 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call180 = call i32 @g_file_error_quark()
  %call181 = call i8* @gettext(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.11, i32 0, i32 0)) #5
  %42 = load i64, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 4), align 8
  %43 = load i8*, i8** @filename, align 8
  %call182 = call i8* @gimp_filename_to_utf8(i8* %43)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %41, i32 %call180, i32 24, i8* %call181, i64 %42, i8* %call182)
  br label %if.end.183

if.end.183:                                       ; preds = %if.then.179, %land.lhs.true, %if.else.174
  br label %if.end.184

if.end.184:                                       ; preds = %if.end.183, %if.then.172
  br label %if.end.185

if.end.185:                                       ; preds = %if.end.184, %if.end.160
  br label %if.end.311

if.else.186:                                      ; preds = %if.else
  %44 = load i64, i64* getelementptr inbounds (%struct.Bitmap_File_Head_Struct, %struct.Bitmap_File_Head_Struct* @Bitmap_File_Head, i32 0, i32 5), align 8
  %cmp187 = icmp uge i64 %44, 56
  br i1 %cmp187, label %land.lhs.true.189, label %if.else.240

land.lhs.true.189:                                ; preds = %if.else.186
  %45 = load i64, i64* getelementptr inbounds (%struct.Bitmap_File_Head_Struct, %struct.Bitmap_File_Head_Struct* @Bitmap_File_Head, i32 0, i32 5), align 8
  %cmp190 = icmp ule i64 %45, 64
  br i1 %cmp190, label %if.then.192, label %if.else.240

if.then.192:                                      ; preds = %land.lhs.true.189
  %arraydecay193 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i32 0
  %46 = load i64, i64* getelementptr inbounds (%struct.Bitmap_File_Head_Struct, %struct.Bitmap_File_Head_Struct* @Bitmap_File_Head, i32 0, i32 5), align 8
  %sub = sub i64 %46, 4
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call194 = call i64 @fread(i8* %arraydecay193, i64 %sub, i64 1, %struct._IO_FILE* %47)
  %cmp195 = icmp ne i64 %call194, 0
  br i1 %cmp195, label %if.end.201, label %if.then.197

if.then.197:                                      ; preds = %if.then.192
  %48 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call198 = call i32 @g_file_error_quark()
  %call199 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i32 0, i32 0)) #5
  %49 = load i8*, i8** @filename, align 8
  %call200 = call i8* @gimp_filename_to_utf8(i8* %49)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %48, i32 %call198, i32 24, i8* %call199, i8* %call200)
  br label %out

if.end.201:                                       ; preds = %if.then.192
  %arrayidx202 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i64 0
  %call203 = call i32 @ToL(i8* %arrayidx202)
  %conv204 = sext i32 %call203 to i64
  store i64 %conv204, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 0), align 8
  %arrayidx205 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i64 4
  %call206 = call i32 @ToL(i8* %arrayidx205)
  %conv207 = sext i32 %call206 to i64
  store i64 %conv207, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 1), align 8
  %arrayidx208 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i64 8
  %call209 = call signext i16 @ToS(i8* %arrayidx208)
  store i16 %call209, i16* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 2), align 2
  %arrayidx210 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i64 10
  %call211 = call signext i16 @ToS(i8* %arrayidx210)
  store i16 %call211, i16* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 3), align 2
  %arrayidx212 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i64 12
  %call213 = call i32 @ToL(i8* %arrayidx212)
  %conv214 = sext i32 %call213 to i64
  store i64 %conv214, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 4), align 8
  %arrayidx215 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i64 16
  %call216 = call i32 @ToL(i8* %arrayidx215)
  %conv217 = sext i32 %call216 to i64
  store i64 %conv217, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 5), align 8
  %arrayidx218 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i64 20
  %call219 = call i32 @ToL(i8* %arrayidx218)
  %conv220 = sext i32 %call219 to i64
  store i64 %conv220, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 6), align 8
  %arrayidx221 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i64 24
  %call222 = call i32 @ToL(i8* %arrayidx221)
  %conv223 = sext i32 %call222 to i64
  store i64 %conv223, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 7), align 8
  %arrayidx224 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i64 28
  %call225 = call i32 @ToL(i8* %arrayidx224)
  %conv226 = sext i32 %call225 to i64
  store i64 %conv226, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 8), align 8
  %arrayidx227 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i64 32
  %call228 = call i32 @ToL(i8* %arrayidx227)
  %conv229 = sext i32 %call228 to i64
  store i64 %conv229, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 9), align 8
  %arrayidx230 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i64 36
  %call231 = call i32 @ToL(i8* %arrayidx230)
  store i32 %call231, i32* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 10, i64 0), align 4
  %arrayidx232 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i64 40
  %call233 = call i32 @ToL(i8* %arrayidx232)
  store i32 %call233, i32* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 10, i64 1), align 4
  %arrayidx234 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i64 44
  %call235 = call i32 @ToL(i8* %arrayidx234)
  store i32 %call235, i32* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 10, i64 2), align 4
  %arrayidx236 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i64 48
  %call237 = call i32 @ToL(i8* %arrayidx236)
  store i32 %call237, i32* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 10, i64 3), align 4
  store i32 4, i32* %Maps, align 4
  %arraydecay238 = getelementptr inbounds [4 x %struct._Bitmap_Channel], [4 x %struct._Bitmap_Channel]* %masks, i32 0, i32 0
  %call239 = call i32 @ReadChannelMasks(i32* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 10, i64 0), %struct._Bitmap_Channel* %arraydecay238, i32 4)
  br label %if.end.310

if.else.240:                                      ; preds = %land.lhs.true.189, %if.else.186
  %50 = load i64, i64* getelementptr inbounds (%struct.Bitmap_File_Head_Struct, %struct.Bitmap_File_Head_Struct* @Bitmap_File_Head, i32 0, i32 5), align 8
  %cmp241 = icmp eq i64 %50, 108
  br i1 %cmp241, label %if.then.246, label %lor.lhs.false.243

lor.lhs.false.243:                                ; preds = %if.else.240
  %51 = load i64, i64* getelementptr inbounds (%struct.Bitmap_File_Head_Struct, %struct.Bitmap_File_Head_Struct* @Bitmap_File_Head, i32 0, i32 5), align 8
  %cmp244 = icmp eq i64 %51, 124
  br i1 %cmp244, label %if.then.246, label %if.else.305

if.then.246:                                      ; preds = %lor.lhs.false.243, %if.else.240
  %arraydecay247 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i32 0
  %52 = load i64, i64* getelementptr inbounds (%struct.Bitmap_File_Head_Struct, %struct.Bitmap_File_Head_Struct* @Bitmap_File_Head, i32 0, i32 5), align 8
  %sub248 = sub i64 %52, 4
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call249 = call i64 @fread(i8* %arraydecay247, i64 %sub248, i64 1, %struct._IO_FILE* %53)
  %cmp250 = icmp ne i64 %call249, 0
  br i1 %cmp250, label %if.end.256, label %if.then.252

if.then.252:                                      ; preds = %if.then.246
  %54 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call253 = call i32 @g_file_error_quark()
  %call254 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i32 0, i32 0)) #5
  %55 = load i8*, i8** @filename, align 8
  %call255 = call i8* @gimp_filename_to_utf8(i8* %55)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %54, i32 %call253, i32 24, i8* %call254, i8* %call255)
  br label %out

if.end.256:                                       ; preds = %if.then.246
  %arrayidx257 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i64 0
  %call258 = call i32 @ToL(i8* %arrayidx257)
  %conv259 = sext i32 %call258 to i64
  store i64 %conv259, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 0), align 8
  %arrayidx260 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i64 4
  %call261 = call i32 @ToL(i8* %arrayidx260)
  %conv262 = sext i32 %call261 to i64
  store i64 %conv262, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 1), align 8
  %arrayidx263 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i64 8
  %call264 = call signext i16 @ToS(i8* %arrayidx263)
  store i16 %call264, i16* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 2), align 2
  %arrayidx265 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i64 10
  %call266 = call signext i16 @ToS(i8* %arrayidx265)
  store i16 %call266, i16* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 3), align 2
  %arrayidx267 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i64 12
  %call268 = call i32 @ToL(i8* %arrayidx267)
  %conv269 = sext i32 %call268 to i64
  store i64 %conv269, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 4), align 8
  %arrayidx270 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i64 16
  %call271 = call i32 @ToL(i8* %arrayidx270)
  %conv272 = sext i32 %call271 to i64
  store i64 %conv272, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 5), align 8
  %arrayidx273 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i64 20
  %call274 = call i32 @ToL(i8* %arrayidx273)
  %conv275 = sext i32 %call274 to i64
  store i64 %conv275, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 6), align 8
  %arrayidx276 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i64 24
  %call277 = call i32 @ToL(i8* %arrayidx276)
  %conv278 = sext i32 %call277 to i64
  store i64 %conv278, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 7), align 8
  %arrayidx279 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i64 28
  %call280 = call i32 @ToL(i8* %arrayidx279)
  %conv281 = sext i32 %call280 to i64
  store i64 %conv281, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 8), align 8
  %arrayidx282 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i64 32
  %call283 = call i32 @ToL(i8* %arrayidx282)
  %conv284 = sext i32 %call283 to i64
  store i64 %conv284, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 9), align 8
  %arrayidx285 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i64 36
  %call286 = call i32 @ToL(i8* %arrayidx285)
  store i32 %call286, i32* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 10, i64 0), align 4
  %arrayidx287 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i64 40
  %call288 = call i32 @ToL(i8* %arrayidx287)
  store i32 %call288, i32* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 10, i64 1), align 4
  %arrayidx289 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i64 44
  %call290 = call i32 @ToL(i8* %arrayidx289)
  store i32 %call290, i32* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 10, i64 2), align 4
  %arrayidx291 = getelementptr inbounds [124 x i8], [124 x i8]* %buffer, i32 0, i64 48
  %call292 = call i32 @ToL(i8* %arrayidx291)
  store i32 %call292, i32* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 10, i64 3), align 4
  store i32 4, i32* %Maps, align 4
  %56 = load i64, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 4), align 8
  %cmp293 = icmp eq i64 %56, 3
  br i1 %cmp293, label %if.then.295, label %if.else.298

if.then.295:                                      ; preds = %if.end.256
  %arraydecay296 = getelementptr inbounds [4 x %struct._Bitmap_Channel], [4 x %struct._Bitmap_Channel]* %masks, i32 0, i32 0
  %call297 = call i32 @ReadChannelMasks(i32* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 10, i64 0), %struct._Bitmap_Channel* %arraydecay296, i32 4)
  br label %if.end.304

if.else.298:                                      ; preds = %if.end.256
  %57 = load i64, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 4), align 8
  %cmp299 = icmp eq i64 %57, 0
  br i1 %cmp299, label %if.then.301, label %if.end.303

if.then.301:                                      ; preds = %if.else.298
  %58 = load i16, i16* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 3), align 2
  %arraydecay302 = getelementptr inbounds [4 x %struct._Bitmap_Channel], [4 x %struct._Bitmap_Channel]* %masks, i32 0, i32 0
  call void @setMasksDefault(i16 zeroext %58, %struct._Bitmap_Channel* %arraydecay302)
  br label %if.end.303

if.end.303:                                       ; preds = %if.then.301, %if.else.298
  br label %if.end.304

if.end.304:                                       ; preds = %if.end.303, %if.then.295
  br label %if.end.309

if.else.305:                                      ; preds = %lor.lhs.false.243
  %59 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call306 = call i32 @g_file_error_quark()
  %call307 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i32 0, i32 0)) #5
  %60 = load i8*, i8** @filename, align 8
  %call308 = call i8* @gimp_filename_to_utf8(i8* %60)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %59, i32 %call306, i32 24, i8* %call307, i8* %call308)
  br label %out

if.end.309:                                       ; preds = %if.end.304
  br label %if.end.310

if.end.310:                                       ; preds = %if.end.309, %if.end.201
  br label %if.end.311

if.end.311:                                       ; preds = %if.end.310, %if.end.185
  br label %if.end.312

if.end.312:                                       ; preds = %if.end.311, %if.end.98
  %61 = load i16, i16* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 3), align 2
  %conv313 = zext i16 %61 to i32
  switch i32 %conv313, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 4, label %sw.bb
    i32 8, label %sw.bb
    i32 16, label %sw.bb
    i32 24, label %sw.bb
    i32 32, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end.312, %if.end.312, %if.end.312, %if.end.312, %if.end.312, %if.end.312, %if.end.312
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.312
  %62 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call314 = call i32 @g_file_error_quark()
  %call315 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0)) #5
  %63 = load i8*, i8** @filename, align 8
  %call316 = call i8* @gimp_filename_to_utf8(i8* %63)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %62, i32 %call314, i32 24, i8* %call315, i8* %call316)
  br label %out

sw.epilog:                                        ; preds = %sw.bb
  %64 = load i64, i64* getelementptr inbounds (%struct.Bitmap_File_Head_Struct, %struct.Bitmap_File_Head_Struct* @Bitmap_File_Head, i32 0, i32 4), align 8
  %65 = load i64, i64* getelementptr inbounds (%struct.Bitmap_File_Head_Struct, %struct.Bitmap_File_Head_Struct* @Bitmap_File_Head, i32 0, i32 5), align 8
  %sub317 = sub i64 %64, %65
  %sub318 = sub i64 %sub317, 14
  %66 = load i32, i32* %Maps, align 4
  %conv319 = sext i32 %66 to i64
  %div = udiv i64 %sub318, %conv319
  %conv320 = trunc i64 %div to i32
  store i32 %conv320, i32* %ColormapSize, align 4
  %67 = load i64, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 8), align 8
  %cmp321 = icmp eq i64 %67, 0
  br i1 %cmp321, label %land.lhs.true.323, label %if.end.331

land.lhs.true.323:                                ; preds = %sw.epilog
  %68 = load i16, i16* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 3), align 2
  %conv324 = zext i16 %68 to i32
  %cmp325 = icmp sle i32 %conv324, 8
  br i1 %cmp325, label %if.then.327, label %if.end.331

if.then.327:                                      ; preds = %land.lhs.true.323
  %69 = load i16, i16* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 3), align 2
  %conv328 = zext i16 %69 to i32
  %shl = shl i32 1, %conv328
  %conv329 = sext i32 %shl to i64
  store i64 %conv329, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 8), align 8
  %conv330 = trunc i64 %conv329 to i32
  store i32 %conv330, i32* %ColormapSize, align 4
  br label %if.end.331

if.end.331:                                       ; preds = %if.then.327, %land.lhs.true.323, %sw.epilog
  %70 = load i32, i32* %ColormapSize, align 4
  %cmp332 = icmp sgt i32 %70, 256
  br i1 %cmp332, label %if.then.334, label %if.end.335

if.then.334:                                      ; preds = %if.end.331
  store i32 256, i32* %ColormapSize, align 4
  br label %if.end.335

if.end.335:                                       ; preds = %if.then.334, %if.end.331
  %71 = load i64, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 1), align 8
  %cmp336 = icmp eq i64 %71, 0
  br i1 %cmp336, label %if.then.341, label %lor.lhs.false.338

lor.lhs.false.338:                                ; preds = %if.end.335
  %72 = load i64, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 0), align 8
  %cmp339 = icmp eq i64 %72, 0
  br i1 %cmp339, label %if.then.341, label %if.end.345

if.then.341:                                      ; preds = %lor.lhs.false.338, %if.end.335
  %73 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call342 = call i32 @g_file_error_quark()
  %call343 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0)) #5
  %74 = load i8*, i8** @filename, align 8
  %call344 = call i8* @gimp_filename_to_utf8(i8* %74)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %73, i32 %call342, i32 24, i8* %call343, i8* %call344)
  br label %out

if.end.345:                                       ; preds = %lor.lhs.false.338
  %75 = load i64, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 0), align 8
  %cmp346 = icmp slt i64 %75, 0
  br i1 %cmp346, label %if.then.351, label %lor.lhs.false.348

lor.lhs.false.348:                                ; preds = %if.end.345
  %76 = load i64, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 1), align 8
  %cmp349 = icmp eq i64 %76, -2147483648
  br i1 %cmp349, label %if.then.351, label %if.end.355

if.then.351:                                      ; preds = %lor.lhs.false.348, %if.end.345
  %77 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call352 = call i32 @g_file_error_quark()
  %call353 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0)) #5
  %78 = load i8*, i8** @filename, align 8
  %call354 = call i8* @gimp_filename_to_utf8(i8* %78)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %77, i32 %call352, i32 24, i8* %call353, i8* %call354)
  br label %out

if.end.355:                                       ; preds = %lor.lhs.false.348
  %79 = load i16, i16* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 2), align 2
  %conv356 = zext i16 %79 to i32
  %cmp357 = icmp ne i32 %conv356, 1
  br i1 %cmp357, label %if.then.359, label %if.end.363

if.then.359:                                      ; preds = %if.end.355
  %80 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call360 = call i32 @g_file_error_quark()
  %call361 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0)) #5
  %81 = load i8*, i8** @filename, align 8
  %call362 = call i8* @gimp_filename_to_utf8(i8* %81)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %80, i32 %call360, i32 24, i8* %call361, i8* %call362)
  br label %out

if.end.363:                                       ; preds = %if.end.355
  %82 = load i64, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 8), align 8
  %cmp364 = icmp ugt i64 %82, 256
  br i1 %cmp364, label %land.lhs.true.366, label %if.end.374

land.lhs.true.366:                                ; preds = %if.end.363
  %83 = load i16, i16* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 3), align 2
  %conv367 = zext i16 %83 to i32
  %cmp368 = icmp sle i32 %conv367, 8
  br i1 %cmp368, label %if.then.370, label %if.end.374

if.then.370:                                      ; preds = %land.lhs.true.366
  %84 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call371 = call i32 @g_file_error_quark()
  %call372 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0)) #5
  %85 = load i8*, i8** @filename, align 8
  %call373 = call i8* @gimp_filename_to_utf8(i8* %85)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %84, i32 %call371, i32 24, i8* %call372, i8* %call373)
  br label %out

if.end.374:                                       ; preds = %land.lhs.true.366, %if.end.363
  %86 = load i64, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 0), align 8
  %87 = load i16, i16* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 3), align 2
  %conv375 = zext i16 %87 to i32
  %div376 = sdiv i32 2147483647, %conv375
  %conv377 = sext i32 %div376 to i64
  %cmp378 = icmp ugt i64 %86, %conv377
  br i1 %cmp378, label %if.then.388, label %lor.lhs.false.380

lor.lhs.false.380:                                ; preds = %if.end.374
  %88 = load i64, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 0), align 8
  %89 = load i64, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 1), align 8
  %cmp381 = icmp slt i64 %89, 0
  br i1 %cmp381, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false.380
  %90 = load i64, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 1), align 8
  %sub383 = sub nsw i64 0, %90
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false.380
  %91 = load i64, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 1), align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub383, %cond.true ], [ %91, %cond.false ]
  %div384 = sdiv i64 2147483647, %cond
  %div385 = sdiv i64 %div384, 4
  %cmp386 = icmp ugt i64 %88, %div385
  br i1 %cmp386, label %if.then.388, label %if.end.392

if.then.388:                                      ; preds = %cond.end, %if.end.374
  %92 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call389 = call i32 @g_file_error_quark()
  %call390 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0)) #5
  %93 = load i8*, i8** @filename, align 8
  %call391 = call i8* @gimp_filename_to_utf8(i8* %93)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %92, i32 %call389, i32 24, i8* %call390, i8* %call391)
  br label %out

if.end.392:                                       ; preds = %cond.end
  %94 = load i64, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 0), align 8
  %95 = load i16, i16* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 3), align 2
  %conv393 = zext i16 %95 to i64
  %mul = mul nsw i64 %94, %conv393
  %sub394 = sub nsw i64 %mul, 1
  %div395 = sdiv i64 %sub394, 32
  %mul396 = mul nsw i64 %div395, 4
  %add = add nsw i64 %mul396, 4
  %conv397 = trunc i64 %add to i32
  store i32 %conv397, i32* %rowbytes, align 4
  %96 = load i16, i16* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 3), align 2
  %conv398 = zext i16 %96 to i32
  %cmp399 = icmp sle i32 %conv398, 8
  br i1 %cmp399, label %if.then.401, label %if.end.407

if.then.401:                                      ; preds = %if.end.392
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %arraydecay402 = getelementptr inbounds [256 x [3 x i8]], [256 x [3 x i8]]* %ColorMap, i32 0, i32 0
  %98 = load i32, i32* %ColormapSize, align 4
  %99 = load i32, i32* %Maps, align 4
  %call403 = call i32 @ReadColorMap(%struct._IO_FILE* %97, [3 x i8]* %arraydecay402, i32 %98, i32 %99, i32* %Grey)
  %tobool404 = icmp ne i32 %call403, 0
  br i1 %tobool404, label %if.end.406, label %if.then.405

if.then.405:                                      ; preds = %if.then.401
  br label %out

if.end.406:                                       ; preds = %if.then.401
  br label %if.end.407

if.end.407:                                       ; preds = %if.end.406, %if.end.392
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %101 = load i64, i64* getelementptr inbounds (%struct.Bitmap_File_Head_Struct, %struct.Bitmap_File_Head_Struct* @Bitmap_File_Head, i32 0, i32 4), align 8
  %call408 = call i32 @fseek(%struct._IO_FILE* %100, i64 %101, i32 0)
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %103 = load i64, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 0), align 8
  %conv409 = trunc i64 %103 to i32
  %104 = load i64, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 1), align 8
  %cmp410 = icmp slt i64 %104, 0
  br i1 %cmp410, label %cond.true.412, label %cond.false.414

cond.true.412:                                    ; preds = %if.end.407
  %105 = load i64, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 1), align 8
  %sub413 = sub nsw i64 0, %105
  br label %cond.end.415

cond.false.414:                                   ; preds = %if.end.407
  %106 = load i64, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 1), align 8
  br label %cond.end.415

cond.end.415:                                     ; preds = %cond.false.414, %cond.true.412
  %cond416 = phi i64 [ %sub413, %cond.true.412 ], [ %106, %cond.false.414 ]
  %conv417 = trunc i64 %cond416 to i32
  %arraydecay418 = getelementptr inbounds [256 x [3 x i8]], [256 x [3 x i8]]* %ColorMap, i32 0, i32 0
  %107 = load i64, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 8), align 8
  %conv419 = trunc i64 %107 to i32
  %108 = load i16, i16* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 3), align 2
  %conv420 = zext i16 %108 to i32
  %109 = load i64, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 4), align 8
  %conv421 = trunc i64 %109 to i32
  %110 = load i32, i32* %rowbytes, align 4
  %111 = load i32, i32* %Grey, align 4
  %arraydecay422 = getelementptr inbounds [4 x %struct._Bitmap_Channel], [4 x %struct._Bitmap_Channel]* %masks, i32 0, i32 0
  %112 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call423 = call i32 @ReadImage(%struct._IO_FILE* %102, i32 %conv409, i32 %conv417, [3 x i8]* %arraydecay418, i32 %conv419, i32 %conv420, i32 %conv421, i32 %110, i32 %111, %struct._Bitmap_Channel* %arraydecay422, %struct._GError** %112)
  store i32 %call423, i32* %image_ID, align 4
  %113 = load i32, i32* %image_ID, align 4
  %cmp424 = icmp slt i32 %113, 0
  br i1 %cmp424, label %if.then.426, label %if.end.427

if.then.426:                                      ; preds = %cond.end.415
  br label %out

if.end.427:                                       ; preds = %cond.end.415
  %114 = load i64, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 6), align 8
  %cmp428 = icmp ugt i64 %114, 0
  br i1 %cmp428, label %land.lhs.true.430, label %if.end.439

land.lhs.true.430:                                ; preds = %if.end.427
  %115 = load i64, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 7), align 8
  %cmp431 = icmp ugt i64 %115, 0
  br i1 %cmp431, label %if.then.433, label %if.end.439

if.then.433:                                      ; preds = %land.lhs.true.430
  %116 = load i64, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 6), align 8
  %conv434 = uitofp i64 %116 to double
  %mul435 = fmul double %conv434, 2.540000e-02
  store double %mul435, double* %xresolution, align 8
  %117 = load i64, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 7), align 8
  %conv436 = uitofp i64 %117 to double
  %mul437 = fmul double %conv436, 2.540000e-02
  store double %mul437, double* %yresolution, align 8
  %118 = load i32, i32* %image_ID, align 4
  %119 = load double, double* %xresolution, align 8
  %120 = load double, double* %yresolution, align 8
  %call438 = call i32 @gimp_image_set_resolution(i32 %118, double %119, double %120)
  br label %if.end.439

if.end.439:                                       ; preds = %if.then.433, %land.lhs.true.430, %if.end.427
  %121 = load i64, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 1), align 8
  %cmp440 = icmp slt i64 %121, 0
  br i1 %cmp440, label %if.then.442, label %if.end.444

if.then.442:                                      ; preds = %if.end.439
  %122 = load i32, i32* %image_ID, align 4
  %call443 = call i32 @gimp_image_flip(i32 %122, i32 1)
  br label %if.end.444

if.end.444:                                       ; preds = %if.then.442, %if.end.439
  br label %out

out:                                              ; preds = %if.end.444, %if.then.426, %if.then.405, %if.then.388, %if.then.370, %if.then.359, %if.then.351, %if.then.341, %sw.default, %if.else.305, %if.then.252, %if.then.197, %if.then.156, %if.then.116, %if.then.94, %if.then.79, %if.then.62, %if.then.54, %if.then.46, %if.then.35, %if.then
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %tobool445 = icmp ne %struct._IO_FILE* %123, null
  br i1 %tobool445, label %if.then.446, label %if.end.448

if.then.446:                                      ; preds = %out
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call447 = call i32 @fclose(%struct._IO_FILE* %124)
  br label %if.end.448

if.end.448:                                       ; preds = %if.then.446, %out
  %125 = load i32, i32* %image_ID, align 4
  ret i32 %125
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #1

declare i32 @g_file_error_quark() #1

declare i32 @g_file_error_from_errno(i32) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare i8* @gimp_filename_to_utf8(i8*) #1

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #2

declare i32 @gimp_progress_init_printf(i8*, ...) #1

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define internal i32 @ToL(i8* %puffer) #0 {
entry:
  %puffer.addr = alloca i8*, align 8
  store i8* %puffer, i8** %puffer.addr, align 8
  %0 = load i8*, i8** %puffer.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %2 = load i8*, i8** %puffer.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %shl = shl i32 %conv2, 8
  %or = or i32 %conv, %shl
  %4 = load i8*, i8** %puffer.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %4, i64 2
  %5 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %5 to i32
  %shl5 = shl i32 %conv4, 16
  %or6 = or i32 %or, %shl5
  %6 = load i8*, i8** %puffer.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %6, i64 3
  %7 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %7 to i32
  %shl9 = shl i32 %conv8, 24
  %or10 = or i32 %or6, %shl9
  ret i32 %or10
}

; Function Attrs: nounwind uwtable
define internal signext i16 @ToS(i8* %puffer) #0 {
entry:
  %puffer.addr = alloca i8*, align 8
  store i8* %puffer, i8** %puffer.addr, align 8
  %0 = load i8*, i8** %puffer.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %2 = load i8*, i8** %puffer.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %shl = shl i32 %conv2, 8
  %or = or i32 %conv, %shl
  %conv3 = trunc i32 %or to i16
  ret i16 %conv3
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define internal i32 @ReadChannelMasks(i32* %tmp, %struct._Bitmap_Channel* %masks, i32 %channels) #0 {
entry:
  %tmp.addr = alloca i32*, align 8
  %masks.addr = alloca %struct._Bitmap_Channel*, align 8
  %channels.addr = alloca i32, align 4
  %mask = alloca i32, align 4
  %i = alloca i32, align 4
  %nbits = alloca i32, align 4
  %offset = alloca i32, align 4
  %bit = alloca i32, align 4
  store i32* %tmp, i32** %tmp.addr, align 8
  store %struct._Bitmap_Channel* %masks, %struct._Bitmap_Channel** %masks.addr, align 8
  store i32 %channels, i32* %channels.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.20, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %channels.addr, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.22

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** %tmp.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  store i32 %4, i32* %mask, align 4
  %5 = load i32, i32* %mask, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %6 to i64
  %7 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %7, i64 %idxprom6
  %mask8 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx7, i32 0, i32 0
  store i32 %5, i32* %mask8, align 4
  store i32 0, i32* %nbits, align 4
  store i32 -1, i32* %offset, align 4
  store i32 0, i32* %bit, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %for.body
  %8 = load i32, i32* %bit, align 4
  %cmp10 = icmp slt i32 %8, 32
  br i1 %cmp10, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.9
  %9 = load i32, i32* %mask, align 4
  %and = and i32 %9, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.14

if.then:                                          ; preds = %for.body.11
  %10 = load i32, i32* %nbits, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %nbits, align 4
  %11 = load i32, i32* %offset, align 4
  %cmp12 = icmp eq i32 %11, -1
  br i1 %cmp12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.then
  %12 = load i32, i32* %bit, align 4
  store i32 %12, i32* %offset, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.then
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %for.body.11
  %13 = load i32, i32* %mask, align 4
  %shr = lshr i32 %13, 1
  store i32 %shr, i32* %mask, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %14 = load i32, i32* %bit, align 4
  %inc15 = add nsw i32 %14, 1
  store i32 %inc15, i32* %bit, align 4
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  %15 = load i32, i32* %offset, align 4
  %16 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %16 to i64
  %17 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %17, i64 %idxprom16
  %shiftin = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx17, i32 0, i32 1
  store i32 %15, i32* %shiftin, align 4
  %18 = load i32, i32* %nbits, align 4
  %shl = shl i32 1, %18
  %sub = sub nsw i32 %shl, 1
  %conv = sitofp i32 %sub to float
  %19 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %19 to i64
  %20 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx19 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %20, i64 %idxprom18
  %max_value = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx19, i32 0, i32 2
  store float %conv, float* %max_value, align 4
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.end
  %21 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %21, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond

for.end.22:                                       ; preds = %for.cond
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @setMasksDefault(i16 zeroext %biBitCnt, %struct._Bitmap_Channel* %masks) #0 {
entry:
  %biBitCnt.addr = alloca i16, align 2
  %masks.addr = alloca %struct._Bitmap_Channel*, align 8
  store i16 %biBitCnt, i16* %biBitCnt.addr, align 2
  store %struct._Bitmap_Channel* %masks, %struct._Bitmap_Channel** %masks.addr, align 8
  %0 = load i16, i16* %biBitCnt.addr, align 2
  %conv = zext i16 %0 to i32
  switch i32 %conv, label %sw.default [
    i32 32, label %sw.bb
    i32 24, label %sw.bb.21
    i32 16, label %sw.bb.46
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %1, i64 0
  %mask = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx, i32 0, i32 0
  store i32 16711680, i32* %mask, align 4
  %2 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx1 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %2, i64 0
  %shiftin = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx1, i32 0, i32 1
  store i32 16, i32* %shiftin, align 4
  %3 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %3, i64 0
  %max_value = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx2, i32 0, i32 2
  store float 2.550000e+02, float* %max_value, align 4
  %4 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx3 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %4, i64 1
  %mask4 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx3, i32 0, i32 0
  store i32 65280, i32* %mask4, align 4
  %5 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %5, i64 1
  %shiftin6 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx5, i32 0, i32 1
  store i32 8, i32* %shiftin6, align 4
  %6 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %6, i64 1
  %max_value8 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx7, i32 0, i32 2
  store float 2.550000e+02, float* %max_value8, align 4
  %7 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx9 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %7, i64 2
  %mask10 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx9, i32 0, i32 0
  store i32 255, i32* %mask10, align 4
  %8 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %8, i64 2
  %shiftin12 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx11, i32 0, i32 1
  store i32 0, i32* %shiftin12, align 4
  %9 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx13 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %9, i64 2
  %max_value14 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx13, i32 0, i32 2
  store float 2.550000e+02, float* %max_value14, align 4
  %10 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx15 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %10, i64 3
  %mask16 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx15, i32 0, i32 0
  store i32 0, i32* %mask16, align 4
  %11 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %11, i64 3
  %shiftin18 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx17, i32 0, i32 1
  store i32 0, i32* %shiftin18, align 4
  %12 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx19 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %12, i64 3
  %max_value20 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx19, i32 0, i32 2
  store float 0.000000e+00, float* %max_value20, align 4
  br label %sw.epilog

sw.bb.21:                                         ; preds = %entry
  %13 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx22 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %13, i64 0
  %mask23 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx22, i32 0, i32 0
  store i32 16711680, i32* %mask23, align 4
  %14 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx24 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %14, i64 0
  %shiftin25 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx24, i32 0, i32 1
  store i32 16, i32* %shiftin25, align 4
  %15 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx26 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %15, i64 0
  %max_value27 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx26, i32 0, i32 2
  store float 2.550000e+02, float* %max_value27, align 4
  %16 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx28 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %16, i64 1
  %mask29 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx28, i32 0, i32 0
  store i32 65280, i32* %mask29, align 4
  %17 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx30 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %17, i64 1
  %shiftin31 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx30, i32 0, i32 1
  store i32 8, i32* %shiftin31, align 4
  %18 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx32 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %18, i64 1
  %max_value33 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx32, i32 0, i32 2
  store float 2.550000e+02, float* %max_value33, align 4
  %19 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx34 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %19, i64 2
  %mask35 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx34, i32 0, i32 0
  store i32 255, i32* %mask35, align 4
  %20 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx36 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %20, i64 2
  %shiftin37 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx36, i32 0, i32 1
  store i32 0, i32* %shiftin37, align 4
  %21 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx38 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %21, i64 2
  %max_value39 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx38, i32 0, i32 2
  store float 2.550000e+02, float* %max_value39, align 4
  %22 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx40 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %22, i64 3
  %mask41 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx40, i32 0, i32 0
  store i32 0, i32* %mask41, align 4
  %23 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx42 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %23, i64 3
  %shiftin43 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx42, i32 0, i32 1
  store i32 0, i32* %shiftin43, align 4
  %24 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx44 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %24, i64 3
  %max_value45 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx44, i32 0, i32 2
  store float 0.000000e+00, float* %max_value45, align 4
  br label %sw.epilog

sw.bb.46:                                         ; preds = %entry
  %25 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx47 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %25, i64 0
  %mask48 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx47, i32 0, i32 0
  store i32 31744, i32* %mask48, align 4
  %26 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx49 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %26, i64 0
  %shiftin50 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx49, i32 0, i32 1
  store i32 10, i32* %shiftin50, align 4
  %27 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx51 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %27, i64 0
  %max_value52 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx51, i32 0, i32 2
  store float 3.100000e+01, float* %max_value52, align 4
  %28 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx53 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %28, i64 1
  %mask54 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx53, i32 0, i32 0
  store i32 992, i32* %mask54, align 4
  %29 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx55 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %29, i64 1
  %shiftin56 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx55, i32 0, i32 1
  store i32 5, i32* %shiftin56, align 4
  %30 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx57 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %30, i64 1
  %max_value58 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx57, i32 0, i32 2
  store float 3.100000e+01, float* %max_value58, align 4
  %31 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx59 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %31, i64 2
  %mask60 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx59, i32 0, i32 0
  store i32 31, i32* %mask60, align 4
  %32 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx61 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %32, i64 2
  %shiftin62 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx61, i32 0, i32 1
  store i32 0, i32* %shiftin62, align 4
  %33 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx63 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %33, i64 2
  %max_value64 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx63, i32 0, i32 2
  store float 3.100000e+01, float* %max_value64, align 4
  %34 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx65 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %34, i64 3
  %mask66 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx65, i32 0, i32 0
  store i32 0, i32* %mask66, align 4
  %35 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx67 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %35, i64 3
  %shiftin68 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx67, i32 0, i32 1
  store i32 0, i32* %shiftin68, align 4
  %36 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx69 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %36, i64 3
  %max_value70 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx69, i32 0, i32 2
  store float 0.000000e+00, float* %max_value70, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.46, %sw.bb.21, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @ReadColorMap(%struct._IO_FILE* %fd, [3 x i8]* %buffer, i32 %number, i32 %size, i32* %grey) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca %struct._IO_FILE*, align 8
  %buffer.addr = alloca [3 x i8]*, align 8
  %number.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %grey.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %rgb = alloca [4 x i8], align 1
  store %struct._IO_FILE* %fd, %struct._IO_FILE** %fd.addr, align 8
  store [3 x i8]* %buffer, [3 x i8]** %buffer.addr, align 8
  store i32 %number, i32* %number.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  store i32* %grey, i32** %grey.addr, align 8
  %0 = load i32, i32* %number.addr, align 4
  %cmp = icmp sgt i32 %0, 2
  %conv = zext i1 %cmp to i32
  %1 = load i32*, i32** %grey.addr, align 8
  store i32 %conv, i32* %1, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %number.addr, align 4
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %rgb, i32 0, i32 0
  %4 = load i32, i32* %size.addr, align 4
  %conv3 = sext i32 %4 to i64
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fd.addr, align 8
  %call = call i64 @fread(i8* %arraydecay, i64 %conv3, i64 1, %struct._IO_FILE* %5)
  %cmp4 = icmp ne i64 %call, 0
  br i1 %cmp4, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0)) #5
  call void (i8*, ...) @g_message(i8* %call6)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %rgb, i32 0, i64 2
  %6 = load i8, i8* %arrayidx, align 1
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load [3 x i8]*, [3 x i8]** %buffer.addr, align 8
  %arrayidx7 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 %idxprom
  %arrayidx8 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx7, i32 0, i64 0
  store i8 %6, i8* %arrayidx8, align 1
  %arrayidx9 = getelementptr inbounds [4 x i8], [4 x i8]* %rgb, i32 0, i64 1
  %9 = load i8, i8* %arrayidx9, align 1
  %10 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %10 to i64
  %11 = load [3 x i8]*, [3 x i8]** %buffer.addr, align 8
  %arrayidx11 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 %idxprom10
  %arrayidx12 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx11, i32 0, i64 1
  store i8 %9, i8* %arrayidx12, align 1
  %arrayidx13 = getelementptr inbounds [4 x i8], [4 x i8]* %rgb, i32 0, i64 0
  %12 = load i8, i8* %arrayidx13, align 1
  %13 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %13 to i64
  %14 = load [3 x i8]*, [3 x i8]** %buffer.addr, align 8
  %arrayidx15 = getelementptr inbounds [3 x i8], [3 x i8]* %14, i64 %idxprom14
  %arrayidx16 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx15, i32 0, i64 2
  store i8 %12, i8* %arrayidx16, align 1
  %15 = load i32*, i32** %grey.addr, align 8
  %16 = load i32, i32* %15, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %if.end
  %arrayidx17 = getelementptr inbounds [4 x i8], [4 x i8]* %rgb, i32 0, i64 0
  %17 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %17 to i32
  %arrayidx19 = getelementptr inbounds [4 x i8], [4 x i8]* %rgb, i32 0, i64 1
  %18 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %18 to i32
  %cmp21 = icmp eq i32 %conv18, %conv20
  br i1 %cmp21, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %arrayidx23 = getelementptr inbounds [4 x i8], [4 x i8]* %rgb, i32 0, i64 1
  %19 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %19 to i32
  %arrayidx25 = getelementptr inbounds [4 x i8], [4 x i8]* %rgb, i32 0, i64 2
  %20 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %20 to i32
  %cmp27 = icmp eq i32 %conv24, %conv26
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %if.end
  %21 = phi i1 [ false, %land.lhs.true ], [ false, %if.end ], [ %cmp27, %land.rhs ]
  %land.ext = zext i1 %21 to i32
  %22 = load i32*, i32** %grey.addr, align 8
  store i32 %land.ext, i32* %22, align 4
  br label %for.inc

for.inc:                                          ; preds = %land.end
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @ReadImage(%struct._IO_FILE* %fd, i32 %width, i32 %height, [3 x i8]* %cmap, i32 %ncols, i32 %bpp, i32 %compression, i32 %rowbytes, i32 %grey, %struct._Bitmap_Channel* %masks, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca %struct._IO_FILE*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %cmap.addr = alloca [3 x i8]*, align 8
  %ncols.addr = alloca i32, align 4
  %bpp.addr = alloca i32, align 4
  %compression.addr = alloca i32, align 4
  %rowbytes.addr = alloca i32, align 4
  %grey.addr = alloca i32, align 4
  %masks.addr = alloca %struct._Bitmap_Channel*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %v = alloca i8, align 1
  %n = alloca i8, align 1
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %xpos = alloca i32, align 4
  %ypos = alloca i32, align 4
  %image = alloca i32, align 4
  %layer = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %dest = alloca i8*, align 8
  %temp = alloca i8*, align 8
  %buffer = alloca i8*, align 8
  %gimp_cmap = alloca [768 x i8], align 16
  %rgb = alloca i16, align 2
  %rowstride = alloca i64, align 8
  %channels = alloca i64, align 8
  %i = alloca i32, align 4
  %i_max = alloca i32, align 4
  %j = alloca i32, align 4
  %cur_progress = alloca i32, align 4
  %max_progress = alloca i32, align 4
  %total_bytes_read = alloca i32, align 4
  %base_type = alloca i32, align 4
  %image_type = alloca i32, align 4
  %px32 = alloca i32, align 4
  store %struct._IO_FILE* %fd, %struct._IO_FILE** %fd.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store [3 x i8]* %cmap, [3 x i8]** %cmap.addr, align 8
  store i32 %ncols, i32* %ncols.addr, align 4
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %compression, i32* %compression.addr, align 4
  store i32 %rowbytes, i32* %rowbytes.addr, align 4
  store i32 %grey, i32* %grey.addr, align 4
  store %struct._Bitmap_Channel* %masks, %struct._Bitmap_Channel** %masks.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 0, i32* %xpos, align 4
  store i32 0, i32* %ypos, align 4
  %0 = load i32, i32* %compression.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %bpp.addr, align 4
  %cmp1 = icmp eq i32 %1, 8
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false.3

land.lhs.true:                                    ; preds = %lor.lhs.false
  %2 = load i32, i32* %compression.addr, align 4
  %cmp2 = icmp eq i32 %2, 1
  br i1 %cmp2, label %if.end, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %land.lhs.true, %lor.lhs.false
  %3 = load i32, i32* %bpp.addr, align 4
  %cmp4 = icmp eq i32 %3, 4
  br i1 %cmp4, label %land.lhs.true.5, label %lor.lhs.false.7

land.lhs.true.5:                                  ; preds = %lor.lhs.false.3
  %4 = load i32, i32* %compression.addr, align 4
  %cmp6 = icmp eq i32 %4, 2
  br i1 %cmp6, label %if.end, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %land.lhs.true.5, %lor.lhs.false.3
  %5 = load i32, i32* %bpp.addr, align 4
  %cmp8 = icmp eq i32 %5, 16
  br i1 %cmp8, label %land.lhs.true.9, label %lor.lhs.false.11

land.lhs.true.9:                                  ; preds = %lor.lhs.false.7
  %6 = load i32, i32* %compression.addr, align 4
  %cmp10 = icmp eq i32 %6, 3
  br i1 %cmp10, label %if.end, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %land.lhs.true.9, %lor.lhs.false.7
  %7 = load i32, i32* %bpp.addr, align 4
  %cmp12 = icmp eq i32 %7, 32
  br i1 %cmp12, label %land.lhs.true.13, label %if.then

land.lhs.true.13:                                 ; preds = %lor.lhs.false.11
  %8 = load i32, i32* %compression.addr, align 4
  %cmp14 = icmp eq i32 %8, 3
  br i1 %cmp14, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.13, %lor.lhs.false.11
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call = call i32 @g_file_error_quark()
  %call15 = call i8* @gettext(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14, i32 0, i32 0)) #5
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %9, i32 %call, i32 24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i8* %call15)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.13, %land.lhs.true.9, %land.lhs.true.5, %land.lhs.true, %entry
  %10 = load i32, i32* %bpp.addr, align 4
  switch i32 %10, label %sw.default [
    i32 32, label %sw.bb
    i32 24, label %sw.bb
    i32 16, label %sw.bb
    i32 8, label %sw.bb.19
    i32 4, label %sw.bb.19
    i32 1, label %sw.bb.19
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end
  store i32 0, i32* %base_type, align 4
  %11 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %11, i64 3
  %mask = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx, i32 0, i32 0
  %12 = load i32, i32* %mask, align 4
  %cmp16 = icmp ne i32 %12, 0
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %sw.bb
  store i32 1, i32* %image_type, align 4
  store i64 4, i64* %channels, align 8
  br label %if.end.18

if.else:                                          ; preds = %sw.bb
  store i32 0, i32* %image_type, align 4
  store i64 3, i64* %channels, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.17
  br label %sw.epilog

sw.bb.19:                                         ; preds = %if.end, %if.end, %if.end
  %13 = load i32, i32* %grey.addr, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %sw.bb.19
  store i32 1, i32* %base_type, align 4
  store i32 2, i32* %image_type, align 4
  br label %if.end.22

if.else.21:                                       ; preds = %sw.bb.19
  store i32 2, i32* %base_type, align 4
  store i32 4, i32* %image_type, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.21, %if.then.20
  store i64 1, i64* %channels, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %call23 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i32 0, i32 0)) #5
  call void (i8*, ...) @g_message(i8* %call23)
  store i32 -1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.22, %if.end.18
  %14 = load i32, i32* %width.addr, align 4
  %cmp24 = icmp slt i32 %14, 0
  br i1 %cmp24, label %if.then.27, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %sw.epilog
  %15 = load i32, i32* %width.addr, align 4
  %cmp26 = icmp sgt i32 %15, 262144
  br i1 %cmp26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %lor.lhs.false.25, %sw.epilog
  %call28 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i32 0, i32 0)) #5
  %16 = load i32, i32* %width.addr, align 4
  call void (i8*, ...) @g_message(i8* %call28, i32 %16)
  store i32 -1, i32* %retval
  br label %return

if.end.29:                                        ; preds = %lor.lhs.false.25
  %17 = load i32, i32* %height.addr, align 4
  %cmp30 = icmp slt i32 %17, 0
  br i1 %cmp30, label %if.then.33, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %if.end.29
  %18 = load i32, i32* %height.addr, align 4
  %cmp32 = icmp sgt i32 %18, 262144
  br i1 %cmp32, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %lor.lhs.false.31, %if.end.29
  %call34 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i32 0, i32 0)) #5
  %19 = load i32, i32* %height.addr, align 4
  call void (i8*, ...) @g_message(i8* %call34, i32 %19)
  store i32 -1, i32* %retval
  br label %return

if.end.35:                                        ; preds = %lor.lhs.false.31
  %20 = load i32, i32* %width.addr, align 4
  %21 = load i32, i32* %height.addr, align 4
  %22 = load i32, i32* %base_type, align 4
  %call36 = call i32 @gimp_image_new(i32 %20, i32 %21, i32 %22)
  store i32 %call36, i32* %image, align 4
  %23 = load i32, i32* %image, align 4
  %call37 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0)) #5
  %24 = load i32, i32* %width.addr, align 4
  %25 = load i32, i32* %height.addr, align 4
  %26 = load i32, i32* %image_type, align 4
  %call38 = call i32 @gimp_layer_new(i32 %23, i8* %call37, i32 %24, i32 %25, i32 %26, double 1.000000e+02, i32 0)
  store i32 %call38, i32* %layer, align 4
  %27 = load i32, i32* %image, align 4
  %28 = load i8*, i8** @filename, align 8
  %call39 = call i32 @gimp_image_set_filename(i32 %27, i8* %28)
  %29 = load i32, i32* %image, align 4
  %30 = load i32, i32* %layer, align 4
  %call40 = call i32 @gimp_image_insert_layer(i32 %29, i32 %30, i32 -1, i32 0)
  %31 = load i32, i32* %layer, align 4
  %call41 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %31)
  store %struct._GimpDrawable* %call41, %struct._GimpDrawable** %drawable, align 8
  %32 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width42 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %32, i32 0, i32 1
  %33 = load i32, i32* %width42, align 4
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height43 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %34, i32 0, i32 2
  %35 = load i32, i32* %height43, align 4
  %mul = mul i32 %33, %35
  %conv = zext i32 %mul to i64
  %36 = load i64, i64* %channels, align 8
  %mul44 = mul nsw i64 %conv, %36
  %call45 = call noalias i8* @g_malloc0(i64 %mul44)
  store i8* %call45, i8** %dest, align 8
  %37 = load i32, i32* %rowbytes.addr, align 4
  %conv46 = sext i32 %37 to i64
  %call47 = call noalias i8* @g_malloc(i64 %conv46)
  store i8* %call47, i8** %buffer, align 8
  %38 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width48 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %38, i32 0, i32 1
  %39 = load i32, i32* %width48, align 4
  %conv49 = zext i32 %39 to i64
  %40 = load i64, i64* %channels, align 8
  %mul50 = mul nsw i64 %conv49, %40
  store i64 %mul50, i64* %rowstride, align 8
  %41 = load i32, i32* %height.addr, align 4
  %sub = sub nsw i32 %41, 1
  store i32 %sub, i32* %ypos, align 4
  store i32 0, i32* %cur_progress, align 4
  %42 = load i32, i32* %height.addr, align 4
  store i32 %42, i32* %max_progress, align 4
  %43 = load i32, i32* %bpp.addr, align 4
  switch i32 %43, label %sw.default.567 [
    i32 32, label %sw.bb.51
    i32 24, label %sw.bb.133
    i32 16, label %sw.bb.180
    i32 8, label %sw.bb.285
    i32 4, label %sw.bb.285
    i32 1, label %sw.bb.285
  ]

sw.bb.51:                                         ; preds = %if.end.35
  br label %while.cond

while.cond:                                       ; preds = %if.end.132, %sw.bb.51
  %44 = load i8*, i8** %buffer, align 8
  %45 = load i32, i32* %rowbytes.addr, align 4
  %conv52 = sext i32 %45 to i64
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %fd.addr, align 8
  %call53 = call i64 @fread(i8* %44, i64 %conv52, i64 1, %struct._IO_FILE* %46)
  %cmp54 = icmp ne i64 %call53, 0
  br i1 %cmp54, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %47 = load i8*, i8** %dest, align 8
  %48 = load i32, i32* %ypos, align 4
  %conv56 = sext i32 %48 to i64
  %49 = load i64, i64* %rowstride, align 8
  %mul57 = mul nsw i64 %conv56, %49
  %add.ptr = getelementptr inbounds i8, i8* %47, i64 %mul57
  store i8* %add.ptr, i8** %temp, align 8
  store i32 0, i32* %xpos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %50 = load i32, i32* %xpos, align 4
  %51 = load i32, i32* %width.addr, align 4
  %cmp58 = icmp slt i32 %50, %51
  br i1 %cmp58, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %52 = load i32, i32* %xpos, align 4
  %mul60 = mul nsw i32 %52, 4
  %idxprom = sext i32 %mul60 to i64
  %53 = load i8*, i8** %buffer, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %53, i64 %idxprom
  %call62 = call i32 @ToL(i8* %arrayidx61)
  store i32 %call62, i32* %px32, align 4
  %54 = load i32, i32* %px32, align 4
  %55 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx63 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %55, i64 0
  %mask64 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx63, i32 0, i32 0
  %56 = load i32, i32* %mask64, align 4
  %and = and i32 %54, %56
  %57 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx65 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %57, i64 0
  %shiftin = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx65, i32 0, i32 1
  %58 = load i32, i32* %shiftin, align 4
  %shr = lshr i32 %and, %58
  %conv66 = uitofp i32 %shr to double
  %mul67 = fmul double %conv66, 2.550000e+02
  %59 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx68 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %59, i64 0
  %max_value = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx68, i32 0, i32 2
  %60 = load float, float* %max_value, align 4
  %conv69 = fpext float %60 to double
  %div = fdiv double %mul67, %conv69
  %add = fadd double %div, 5.000000e-01
  %conv70 = fptoui double %add to i8
  %61 = load i8*, i8** %temp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr, i8** %temp, align 8
  store i8 %conv70, i8* %61, align 1
  %62 = load i32, i32* %px32, align 4
  %63 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx71 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %63, i64 1
  %mask72 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx71, i32 0, i32 0
  %64 = load i32, i32* %mask72, align 4
  %and73 = and i32 %62, %64
  %65 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx74 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %65, i64 1
  %shiftin75 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx74, i32 0, i32 1
  %66 = load i32, i32* %shiftin75, align 4
  %shr76 = lshr i32 %and73, %66
  %conv77 = uitofp i32 %shr76 to double
  %mul78 = fmul double %conv77, 2.550000e+02
  %67 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx79 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %67, i64 1
  %max_value80 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx79, i32 0, i32 2
  %68 = load float, float* %max_value80, align 4
  %conv81 = fpext float %68 to double
  %div82 = fdiv double %mul78, %conv81
  %add83 = fadd double %div82, 5.000000e-01
  %conv84 = fptoui double %add83 to i8
  %69 = load i8*, i8** %temp, align 8
  %incdec.ptr85 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %incdec.ptr85, i8** %temp, align 8
  store i8 %conv84, i8* %69, align 1
  %70 = load i32, i32* %px32, align 4
  %71 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx86 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %71, i64 2
  %mask87 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx86, i32 0, i32 0
  %72 = load i32, i32* %mask87, align 4
  %and88 = and i32 %70, %72
  %73 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx89 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %73, i64 2
  %shiftin90 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx89, i32 0, i32 1
  %74 = load i32, i32* %shiftin90, align 4
  %shr91 = lshr i32 %and88, %74
  %conv92 = uitofp i32 %shr91 to double
  %mul93 = fmul double %conv92, 2.550000e+02
  %75 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx94 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %75, i64 2
  %max_value95 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx94, i32 0, i32 2
  %76 = load float, float* %max_value95, align 4
  %conv96 = fpext float %76 to double
  %div97 = fdiv double %mul93, %conv96
  %add98 = fadd double %div97, 5.000000e-01
  %conv99 = fptoui double %add98 to i8
  %77 = load i8*, i8** %temp, align 8
  %incdec.ptr100 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %incdec.ptr100, i8** %temp, align 8
  store i8 %conv99, i8* %77, align 1
  %78 = load i64, i64* %channels, align 8
  %cmp101 = icmp sgt i64 %78, 3
  br i1 %cmp101, label %if.then.103, label %if.end.119

if.then.103:                                      ; preds = %for.body
  %79 = load i32, i32* %px32, align 4
  %80 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx104 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %80, i64 3
  %mask105 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx104, i32 0, i32 0
  %81 = load i32, i32* %mask105, align 4
  %and106 = and i32 %79, %81
  %82 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx107 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %82, i64 3
  %shiftin108 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx107, i32 0, i32 1
  %83 = load i32, i32* %shiftin108, align 4
  %shr109 = lshr i32 %and106, %83
  %conv110 = uitofp i32 %shr109 to double
  %mul111 = fmul double %conv110, 2.550000e+02
  %84 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx112 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %84, i64 3
  %max_value113 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx112, i32 0, i32 2
  %85 = load float, float* %max_value113, align 4
  %conv114 = fpext float %85 to double
  %div115 = fdiv double %mul111, %conv114
  %add116 = fadd double %div115, 5.000000e-01
  %conv117 = fptoui double %add116 to i8
  %86 = load i8*, i8** %temp, align 8
  %incdec.ptr118 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %incdec.ptr118, i8** %temp, align 8
  store i8 %conv117, i8* %86, align 1
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.103, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.119
  %87 = load i32, i32* %xpos, align 4
  %inc = add nsw i32 %87, 1
  store i32 %inc, i32* %xpos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %88 = load i32, i32* %ypos, align 4
  %cmp120 = icmp eq i32 %88, 0
  br i1 %cmp120, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %for.end
  br label %while.end

if.end.123:                                       ; preds = %for.end
  %89 = load i32, i32* %ypos, align 4
  %dec = add nsw i32 %89, -1
  store i32 %dec, i32* %ypos, align 4
  %90 = load i32, i32* %cur_progress, align 4
  %inc124 = add nsw i32 %90, 1
  store i32 %inc124, i32* %cur_progress, align 4
  %91 = load i32, i32* %cur_progress, align 4
  %rem = srem i32 %91, 5
  %cmp125 = icmp eq i32 %rem, 0
  br i1 %cmp125, label %if.then.127, label %if.end.132

if.then.127:                                      ; preds = %if.end.123
  %92 = load i32, i32* %cur_progress, align 4
  %conv128 = sitofp i32 %92 to double
  %93 = load i32, i32* %max_progress, align 4
  %conv129 = sitofp i32 %93 to double
  %div130 = fdiv double %conv128, %conv129
  %call131 = call i32 @gimp_progress_update(double %div130)
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.127, %if.end.123
  br label %while.cond

while.end:                                        ; preds = %if.then.122, %while.cond
  br label %sw.epilog.568

sw.bb.133:                                        ; preds = %if.end.35
  br label %while.cond.134

while.cond.134:                                   ; preds = %if.end.178, %sw.bb.133
  %94 = load i8*, i8** %buffer, align 8
  %95 = load i32, i32* %rowbytes.addr, align 4
  %conv135 = sext i32 %95 to i64
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** %fd.addr, align 8
  %call136 = call i64 @fread(i8* %94, i64 %conv135, i64 1, %struct._IO_FILE* %96)
  %cmp137 = icmp ne i64 %call136, 0
  br i1 %cmp137, label %while.body.139, label %while.end.179

while.body.139:                                   ; preds = %while.cond.134
  %97 = load i8*, i8** %dest, align 8
  %98 = load i32, i32* %ypos, align 4
  %conv140 = sext i32 %98 to i64
  %99 = load i64, i64* %rowstride, align 8
  %mul141 = mul nsw i64 %conv140, %99
  %add.ptr142 = getelementptr inbounds i8, i8* %97, i64 %mul141
  store i8* %add.ptr142, i8** %temp, align 8
  store i32 0, i32* %xpos, align 4
  br label %for.cond.143

for.cond.143:                                     ; preds = %for.inc.161, %while.body.139
  %100 = load i32, i32* %xpos, align 4
  %101 = load i32, i32* %width.addr, align 4
  %cmp144 = icmp slt i32 %100, %101
  br i1 %cmp144, label %for.body.146, label %for.end.163

for.body.146:                                     ; preds = %for.cond.143
  %102 = load i32, i32* %xpos, align 4
  %mul147 = mul nsw i32 %102, 3
  %add148 = add nsw i32 %mul147, 2
  %idxprom149 = sext i32 %add148 to i64
  %103 = load i8*, i8** %buffer, align 8
  %arrayidx150 = getelementptr inbounds i8, i8* %103, i64 %idxprom149
  %104 = load i8, i8* %arrayidx150, align 1
  %105 = load i8*, i8** %temp, align 8
  %incdec.ptr151 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %incdec.ptr151, i8** %temp, align 8
  store i8 %104, i8* %105, align 1
  %106 = load i32, i32* %xpos, align 4
  %mul152 = mul nsw i32 %106, 3
  %add153 = add nsw i32 %mul152, 1
  %idxprom154 = sext i32 %add153 to i64
  %107 = load i8*, i8** %buffer, align 8
  %arrayidx155 = getelementptr inbounds i8, i8* %107, i64 %idxprom154
  %108 = load i8, i8* %arrayidx155, align 1
  %109 = load i8*, i8** %temp, align 8
  %incdec.ptr156 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %incdec.ptr156, i8** %temp, align 8
  store i8 %108, i8* %109, align 1
  %110 = load i32, i32* %xpos, align 4
  %mul157 = mul nsw i32 %110, 3
  %idxprom158 = sext i32 %mul157 to i64
  %111 = load i8*, i8** %buffer, align 8
  %arrayidx159 = getelementptr inbounds i8, i8* %111, i64 %idxprom158
  %112 = load i8, i8* %arrayidx159, align 1
  %113 = load i8*, i8** %temp, align 8
  %incdec.ptr160 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %incdec.ptr160, i8** %temp, align 8
  store i8 %112, i8* %113, align 1
  br label %for.inc.161

for.inc.161:                                      ; preds = %for.body.146
  %114 = load i32, i32* %xpos, align 4
  %inc162 = add nsw i32 %114, 1
  store i32 %inc162, i32* %xpos, align 4
  br label %for.cond.143

for.end.163:                                      ; preds = %for.cond.143
  %115 = load i32, i32* %ypos, align 4
  %cmp164 = icmp eq i32 %115, 0
  br i1 %cmp164, label %if.then.166, label %if.end.167

if.then.166:                                      ; preds = %for.end.163
  br label %while.end.179

if.end.167:                                       ; preds = %for.end.163
  %116 = load i32, i32* %ypos, align 4
  %dec168 = add nsw i32 %116, -1
  store i32 %dec168, i32* %ypos, align 4
  %117 = load i32, i32* %cur_progress, align 4
  %inc169 = add nsw i32 %117, 1
  store i32 %inc169, i32* %cur_progress, align 4
  %118 = load i32, i32* %cur_progress, align 4
  %rem170 = srem i32 %118, 5
  %cmp171 = icmp eq i32 %rem170, 0
  br i1 %cmp171, label %if.then.173, label %if.end.178

if.then.173:                                      ; preds = %if.end.167
  %119 = load i32, i32* %cur_progress, align 4
  %conv174 = sitofp i32 %119 to double
  %120 = load i32, i32* %max_progress, align 4
  %conv175 = sitofp i32 %120 to double
  %div176 = fdiv double %conv174, %conv175
  %call177 = call i32 @gimp_progress_update(double %div176)
  br label %if.end.178

if.end.178:                                       ; preds = %if.then.173, %if.end.167
  br label %while.cond.134

while.end.179:                                    ; preds = %if.then.166, %while.cond.134
  br label %sw.epilog.568

sw.bb.180:                                        ; preds = %if.end.35
  br label %while.cond.181

while.cond.181:                                   ; preds = %if.end.283, %sw.bb.180
  %121 = load i8*, i8** %buffer, align 8
  %122 = load i32, i32* %rowbytes.addr, align 4
  %conv182 = sext i32 %122 to i64
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** %fd.addr, align 8
  %call183 = call i64 @fread(i8* %121, i64 %conv182, i64 1, %struct._IO_FILE* %123)
  %cmp184 = icmp ne i64 %call183, 0
  br i1 %cmp184, label %while.body.186, label %while.end.284

while.body.186:                                   ; preds = %while.cond.181
  %124 = load i8*, i8** %dest, align 8
  %125 = load i32, i32* %ypos, align 4
  %conv187 = sext i32 %125 to i64
  %126 = load i64, i64* %rowstride, align 8
  %mul188 = mul nsw i64 %conv187, %126
  %add.ptr189 = getelementptr inbounds i8, i8* %124, i64 %mul188
  store i8* %add.ptr189, i8** %temp, align 8
  store i32 0, i32* %xpos, align 4
  br label %for.cond.190

for.cond.190:                                     ; preds = %for.inc.266, %while.body.186
  %127 = load i32, i32* %xpos, align 4
  %128 = load i32, i32* %width.addr, align 4
  %cmp191 = icmp slt i32 %127, %128
  br i1 %cmp191, label %for.body.193, label %for.end.268

for.body.193:                                     ; preds = %for.cond.190
  %129 = load i32, i32* %xpos, align 4
  %mul194 = mul nsw i32 %129, 2
  %idxprom195 = sext i32 %mul194 to i64
  %130 = load i8*, i8** %buffer, align 8
  %arrayidx196 = getelementptr inbounds i8, i8* %130, i64 %idxprom195
  %call197 = call signext i16 @ToS(i8* %arrayidx196)
  store i16 %call197, i16* %rgb, align 2
  %131 = load i16, i16* %rgb, align 2
  %conv198 = zext i16 %131 to i32
  %132 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx199 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %132, i64 0
  %mask200 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx199, i32 0, i32 0
  %133 = load i32, i32* %mask200, align 4
  %and201 = and i32 %conv198, %133
  %134 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx202 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %134, i64 0
  %shiftin203 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx202, i32 0, i32 1
  %135 = load i32, i32* %shiftin203, align 4
  %shr204 = lshr i32 %and201, %135
  %conv205 = uitofp i32 %shr204 to double
  %mul206 = fmul double %conv205, 2.550000e+02
  %136 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx207 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %136, i64 0
  %max_value208 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx207, i32 0, i32 2
  %137 = load float, float* %max_value208, align 4
  %conv209 = fpext float %137 to double
  %div210 = fdiv double %mul206, %conv209
  %add211 = fadd double %div210, 5.000000e-01
  %conv212 = fptoui double %add211 to i8
  %138 = load i8*, i8** %temp, align 8
  %incdec.ptr213 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %incdec.ptr213, i8** %temp, align 8
  store i8 %conv212, i8* %138, align 1
  %139 = load i16, i16* %rgb, align 2
  %conv214 = zext i16 %139 to i32
  %140 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx215 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %140, i64 1
  %mask216 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx215, i32 0, i32 0
  %141 = load i32, i32* %mask216, align 4
  %and217 = and i32 %conv214, %141
  %142 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx218 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %142, i64 1
  %shiftin219 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx218, i32 0, i32 1
  %143 = load i32, i32* %shiftin219, align 4
  %shr220 = lshr i32 %and217, %143
  %conv221 = uitofp i32 %shr220 to double
  %mul222 = fmul double %conv221, 2.550000e+02
  %144 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx223 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %144, i64 1
  %max_value224 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx223, i32 0, i32 2
  %145 = load float, float* %max_value224, align 4
  %conv225 = fpext float %145 to double
  %div226 = fdiv double %mul222, %conv225
  %add227 = fadd double %div226, 5.000000e-01
  %conv228 = fptoui double %add227 to i8
  %146 = load i8*, i8** %temp, align 8
  %incdec.ptr229 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %incdec.ptr229, i8** %temp, align 8
  store i8 %conv228, i8* %146, align 1
  %147 = load i16, i16* %rgb, align 2
  %conv230 = zext i16 %147 to i32
  %148 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx231 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %148, i64 2
  %mask232 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx231, i32 0, i32 0
  %149 = load i32, i32* %mask232, align 4
  %and233 = and i32 %conv230, %149
  %150 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx234 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %150, i64 2
  %shiftin235 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx234, i32 0, i32 1
  %151 = load i32, i32* %shiftin235, align 4
  %shr236 = lshr i32 %and233, %151
  %conv237 = uitofp i32 %shr236 to double
  %mul238 = fmul double %conv237, 2.550000e+02
  %152 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx239 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %152, i64 2
  %max_value240 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx239, i32 0, i32 2
  %153 = load float, float* %max_value240, align 4
  %conv241 = fpext float %153 to double
  %div242 = fdiv double %mul238, %conv241
  %add243 = fadd double %div242, 5.000000e-01
  %conv244 = fptoui double %add243 to i8
  %154 = load i8*, i8** %temp, align 8
  %incdec.ptr245 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %incdec.ptr245, i8** %temp, align 8
  store i8 %conv244, i8* %154, align 1
  %155 = load i64, i64* %channels, align 8
  %cmp246 = icmp sgt i64 %155, 3
  br i1 %cmp246, label %if.then.248, label %if.end.265

if.then.248:                                      ; preds = %for.body.193
  %156 = load i16, i16* %rgb, align 2
  %conv249 = zext i16 %156 to i32
  %157 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx250 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %157, i64 3
  %mask251 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx250, i32 0, i32 0
  %158 = load i32, i32* %mask251, align 4
  %and252 = and i32 %conv249, %158
  %159 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx253 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %159, i64 3
  %shiftin254 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx253, i32 0, i32 1
  %160 = load i32, i32* %shiftin254, align 4
  %shr255 = lshr i32 %and252, %160
  %conv256 = uitofp i32 %shr255 to double
  %mul257 = fmul double %conv256, 2.550000e+02
  %161 = load %struct._Bitmap_Channel*, %struct._Bitmap_Channel** %masks.addr, align 8
  %arrayidx258 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %161, i64 3
  %max_value259 = getelementptr inbounds %struct._Bitmap_Channel, %struct._Bitmap_Channel* %arrayidx258, i32 0, i32 2
  %162 = load float, float* %max_value259, align 4
  %conv260 = fpext float %162 to double
  %div261 = fdiv double %mul257, %conv260
  %add262 = fadd double %div261, 5.000000e-01
  %conv263 = fptoui double %add262 to i8
  %163 = load i8*, i8** %temp, align 8
  %incdec.ptr264 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %incdec.ptr264, i8** %temp, align 8
  store i8 %conv263, i8* %163, align 1
  br label %if.end.265

if.end.265:                                       ; preds = %if.then.248, %for.body.193
  br label %for.inc.266

for.inc.266:                                      ; preds = %if.end.265
  %164 = load i32, i32* %xpos, align 4
  %inc267 = add nsw i32 %164, 1
  store i32 %inc267, i32* %xpos, align 4
  br label %for.cond.190

for.end.268:                                      ; preds = %for.cond.190
  %165 = load i32, i32* %ypos, align 4
  %cmp269 = icmp eq i32 %165, 0
  br i1 %cmp269, label %if.then.271, label %if.end.272

if.then.271:                                      ; preds = %for.end.268
  br label %while.end.284

if.end.272:                                       ; preds = %for.end.268
  %166 = load i32, i32* %ypos, align 4
  %dec273 = add nsw i32 %166, -1
  store i32 %dec273, i32* %ypos, align 4
  %167 = load i32, i32* %cur_progress, align 4
  %inc274 = add nsw i32 %167, 1
  store i32 %inc274, i32* %cur_progress, align 4
  %168 = load i32, i32* %cur_progress, align 4
  %rem275 = srem i32 %168, 5
  %cmp276 = icmp eq i32 %rem275, 0
  br i1 %cmp276, label %if.then.278, label %if.end.283

if.then.278:                                      ; preds = %if.end.272
  %169 = load i32, i32* %cur_progress, align 4
  %conv279 = sitofp i32 %169 to double
  %170 = load i32, i32* %max_progress, align 4
  %conv280 = sitofp i32 %170 to double
  %div281 = fdiv double %conv279, %conv280
  %call282 = call i32 @gimp_progress_update(double %div281)
  br label %if.end.283

if.end.283:                                       ; preds = %if.then.278, %if.end.272
  br label %while.cond.181

while.end.284:                                    ; preds = %if.then.271, %while.cond.181
  br label %sw.epilog.568

sw.bb.285:                                        ; preds = %if.end.35, %if.end.35, %if.end.35
  %171 = load i32, i32* %compression.addr, align 4
  %cmp286 = icmp eq i32 %171, 0
  br i1 %cmp286, label %if.then.288, label %if.else.358

if.then.288:                                      ; preds = %sw.bb.285
  br label %while.cond.289

while.cond.289:                                   ; preds = %if.end.356, %if.then.288
  %172 = load %struct._IO_FILE*, %struct._IO_FILE** %fd.addr, align 8
  %call290 = call i64 @fread(i8* %v, i64 1, i64 1, %struct._IO_FILE* %172)
  %cmp291 = icmp ne i64 %call290, 0
  br i1 %cmp291, label %while.body.293, label %while.end.357

while.body.293:                                   ; preds = %while.cond.289
  store i32 1, i32* %i, align 4
  br label %for.cond.294

for.cond.294:                                     ; preds = %for.inc.323, %while.body.293
  %173 = load i32, i32* %i, align 4
  %174 = load i32, i32* %bpp.addr, align 4
  %div295 = sdiv i32 8, %174
  %cmp296 = icmp sle i32 %173, %div295
  br i1 %cmp296, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.294
  %175 = load i32, i32* %xpos, align 4
  %176 = load i32, i32* %width.addr, align 4
  %cmp298 = icmp slt i32 %175, %176
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.294
  %177 = phi i1 [ false, %for.cond.294 ], [ %cmp298, %land.rhs ]
  br i1 %177, label %for.body.300, label %for.end.326

for.body.300:                                     ; preds = %land.end
  %178 = load i8*, i8** %dest, align 8
  %179 = load i32, i32* %ypos, align 4
  %conv301 = sext i32 %179 to i64
  %180 = load i64, i64* %rowstride, align 8
  %mul302 = mul nsw i64 %conv301, %180
  %add.ptr303 = getelementptr inbounds i8, i8* %178, i64 %mul302
  %181 = load i32, i32* %xpos, align 4
  %conv304 = sext i32 %181 to i64
  %182 = load i64, i64* %channels, align 8
  %mul305 = mul nsw i64 %conv304, %182
  %add.ptr306 = getelementptr inbounds i8, i8* %add.ptr303, i64 %mul305
  store i8* %add.ptr306, i8** %temp, align 8
  %183 = load i8, i8* %v, align 1
  %conv307 = zext i8 %183 to i32
  %184 = load i32, i32* %bpp.addr, align 4
  %shl = shl i32 1, %184
  %sub308 = sub nsw i32 %shl, 1
  %185 = load i32, i32* %i, align 4
  %186 = load i32, i32* %bpp.addr, align 4
  %mul309 = mul nsw i32 %185, %186
  %sub310 = sub nsw i32 8, %mul309
  %shl311 = shl i32 %sub308, %sub310
  %and312 = and i32 %conv307, %shl311
  %187 = load i32, i32* %i, align 4
  %188 = load i32, i32* %bpp.addr, align 4
  %mul313 = mul nsw i32 %187, %188
  %sub314 = sub nsw i32 8, %mul313
  %shr315 = ashr i32 %and312, %sub314
  %conv316 = trunc i32 %shr315 to i8
  %189 = load i8*, i8** %temp, align 8
  store i8 %conv316, i8* %189, align 1
  %190 = load i32, i32* %grey.addr, align 4
  %tobool317 = icmp ne i32 %190, 0
  br i1 %tobool317, label %if.then.318, label %if.end.322

if.then.318:                                      ; preds = %for.body.300
  %191 = load i8*, i8** %temp, align 8
  %192 = load i8, i8* %191, align 1
  %idxprom319 = zext i8 %192 to i64
  %193 = load [3 x i8]*, [3 x i8]** %cmap.addr, align 8
  %arrayidx320 = getelementptr inbounds [3 x i8], [3 x i8]* %193, i64 %idxprom319
  %arrayidx321 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx320, i32 0, i64 0
  %194 = load i8, i8* %arrayidx321, align 1
  %195 = load i8*, i8** %temp, align 8
  store i8 %194, i8* %195, align 1
  br label %if.end.322

if.end.322:                                       ; preds = %if.then.318, %for.body.300
  br label %for.inc.323

for.inc.323:                                      ; preds = %if.end.322
  %196 = load i32, i32* %i, align 4
  %inc324 = add nsw i32 %196, 1
  store i32 %inc324, i32* %i, align 4
  %197 = load i32, i32* %xpos, align 4
  %inc325 = add nsw i32 %197, 1
  store i32 %inc325, i32* %xpos, align 4
  br label %for.cond.294

for.end.326:                                      ; preds = %land.end
  %198 = load i32, i32* %xpos, align 4
  %199 = load i32, i32* %width.addr, align 4
  %cmp327 = icmp eq i32 %198, %199
  br i1 %cmp327, label %if.then.329, label %if.end.352

if.then.329:                                      ; preds = %for.end.326
  %200 = load i8*, i8** %buffer, align 8
  %201 = load i32, i32* %rowbytes.addr, align 4
  %sub330 = sub nsw i32 %201, 1
  %202 = load i32, i32* %width.addr, align 4
  %203 = load i32, i32* %bpp.addr, align 4
  %mul331 = mul nsw i32 %202, %203
  %sub332 = sub nsw i32 %mul331, 1
  %div333 = sdiv i32 %sub332, 8
  %sub334 = sub nsw i32 %sub330, %div333
  %conv335 = sext i32 %sub334 to i64
  %204 = load %struct._IO_FILE*, %struct._IO_FILE** %fd.addr, align 8
  %call336 = call i64 @fread(i8* %200, i64 %conv335, i64 1, %struct._IO_FILE* %204)
  %205 = load i32, i32* %ypos, align 4
  %cmp337 = icmp eq i32 %205, 0
  br i1 %cmp337, label %if.then.339, label %if.end.340

if.then.339:                                      ; preds = %if.then.329
  br label %while.end.357

if.end.340:                                       ; preds = %if.then.329
  %206 = load i32, i32* %ypos, align 4
  %dec341 = add nsw i32 %206, -1
  store i32 %dec341, i32* %ypos, align 4
  store i32 0, i32* %xpos, align 4
  %207 = load i32, i32* %cur_progress, align 4
  %inc342 = add nsw i32 %207, 1
  store i32 %inc342, i32* %cur_progress, align 4
  %208 = load i32, i32* %cur_progress, align 4
  %rem343 = srem i32 %208, 5
  %cmp344 = icmp eq i32 %rem343, 0
  br i1 %cmp344, label %if.then.346, label %if.end.351

if.then.346:                                      ; preds = %if.end.340
  %209 = load i32, i32* %cur_progress, align 4
  %conv347 = sitofp i32 %209 to double
  %210 = load i32, i32* %max_progress, align 4
  %conv348 = sitofp i32 %210 to double
  %div349 = fdiv double %conv347, %conv348
  %call350 = call i32 @gimp_progress_update(double %div349)
  br label %if.end.351

if.end.351:                                       ; preds = %if.then.346, %if.end.340
  br label %if.end.352

if.end.352:                                       ; preds = %if.end.351, %for.end.326
  %211 = load i32, i32* %ypos, align 4
  %cmp353 = icmp slt i32 %211, 0
  br i1 %cmp353, label %if.then.355, label %if.end.356

if.then.355:                                      ; preds = %if.end.352
  br label %while.end.357

if.end.356:                                       ; preds = %if.end.352
  br label %while.cond.289

while.end.357:                                    ; preds = %if.then.355, %if.then.339, %while.cond.289
  br label %sw.epilog.568

if.else.358:                                      ; preds = %sw.bb.285
  br label %while.cond.359

while.cond.359:                                   ; preds = %if.end.565, %if.else.358
  %212 = load i32, i32* %ypos, align 4
  %cmp360 = icmp sge i32 %212, 0
  br i1 %cmp360, label %land.rhs.362, label %land.end.365

land.rhs.362:                                     ; preds = %while.cond.359
  %213 = load i32, i32* %xpos, align 4
  %214 = load i32, i32* %width.addr, align 4
  %cmp363 = icmp sle i32 %213, %214
  br label %land.end.365

land.end.365:                                     ; preds = %land.rhs.362, %while.cond.359
  %215 = phi i1 [ false, %while.cond.359 ], [ %cmp363, %land.rhs.362 ]
  br i1 %215, label %while.body.366, label %while.end.566

while.body.366:                                   ; preds = %land.end.365
  %216 = load i8*, i8** %buffer, align 8
  %217 = load %struct._IO_FILE*, %struct._IO_FILE** %fd.addr, align 8
  %call367 = call i64 @fread(i8* %216, i64 2, i64 1, %struct._IO_FILE* %217)
  %cmp368 = icmp ne i64 %call367, 0
  br i1 %cmp368, label %if.end.372, label %if.then.370

if.then.370:                                      ; preds = %while.body.366
  %call371 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i32 0, i32 0)) #5
  call void (i8*, ...) @g_message(i8* %call371)
  br label %while.end.566

if.end.372:                                       ; preds = %while.body.366
  %218 = load i8*, i8** %buffer, align 8
  %arrayidx373 = getelementptr inbounds i8, i8* %218, i64 0
  %219 = load i8, i8* %arrayidx373, align 1
  %conv374 = zext i8 %219 to i32
  %cmp375 = icmp ne i32 %conv374, 0
  br i1 %cmp375, label %if.then.377, label %if.end.436

if.then.377:                                      ; preds = %if.end.372
  store i32 0, i32* %j, align 4
  br label %for.cond.378

for.cond.378:                                     ; preds = %for.end.434, %if.then.377
  %220 = load i32, i32* %j, align 4
  %conv379 = trunc i32 %220 to i8
  %conv380 = zext i8 %conv379 to i32
  %221 = load i8*, i8** %buffer, align 8
  %arrayidx381 = getelementptr inbounds i8, i8* %221, i64 0
  %222 = load i8, i8* %arrayidx381, align 1
  %conv382 = zext i8 %222 to i32
  %cmp383 = icmp slt i32 %conv380, %conv382
  br i1 %cmp383, label %land.rhs.385, label %land.end.388

land.rhs.385:                                     ; preds = %for.cond.378
  %223 = load i32, i32* %xpos, align 4
  %224 = load i32, i32* %width.addr, align 4
  %cmp386 = icmp slt i32 %223, %224
  br label %land.end.388

land.end.388:                                     ; preds = %land.rhs.385, %for.cond.378
  %225 = phi i1 [ false, %for.cond.378 ], [ %cmp386, %land.rhs.385 ]
  br i1 %225, label %for.body.389, label %for.end.435

for.body.389:                                     ; preds = %land.end.388
  store i32 1, i32* %i, align 4
  br label %for.cond.390

for.cond.390:                                     ; preds = %for.inc.430, %for.body.389
  %226 = load i32, i32* %i, align 4
  %227 = load i32, i32* %bpp.addr, align 4
  %div391 = sdiv i32 8, %227
  %cmp392 = icmp sle i32 %226, %div391
  br i1 %cmp392, label %land.lhs.true.394, label %land.end.404

land.lhs.true.394:                                ; preds = %for.cond.390
  %228 = load i32, i32* %xpos, align 4
  %229 = load i32, i32* %width.addr, align 4
  %cmp395 = icmp slt i32 %228, %229
  br i1 %cmp395, label %land.rhs.397, label %land.end.404

land.rhs.397:                                     ; preds = %land.lhs.true.394
  %230 = load i32, i32* %j, align 4
  %conv398 = trunc i32 %230 to i8
  %conv399 = zext i8 %conv398 to i32
  %231 = load i8*, i8** %buffer, align 8
  %arrayidx400 = getelementptr inbounds i8, i8* %231, i64 0
  %232 = load i8, i8* %arrayidx400, align 1
  %conv401 = zext i8 %232 to i32
  %cmp402 = icmp slt i32 %conv399, %conv401
  br label %land.end.404

land.end.404:                                     ; preds = %land.rhs.397, %land.lhs.true.394, %for.cond.390
  %233 = phi i1 [ false, %land.lhs.true.394 ], [ false, %for.cond.390 ], [ %cmp402, %land.rhs.397 ]
  br i1 %233, label %for.body.405, label %for.end.434

for.body.405:                                     ; preds = %land.end.404
  %234 = load i8*, i8** %dest, align 8
  %235 = load i32, i32* %ypos, align 4
  %conv406 = sext i32 %235 to i64
  %236 = load i64, i64* %rowstride, align 8
  %mul407 = mul nsw i64 %conv406, %236
  %add.ptr408 = getelementptr inbounds i8, i8* %234, i64 %mul407
  %237 = load i32, i32* %xpos, align 4
  %conv409 = sext i32 %237 to i64
  %238 = load i64, i64* %channels, align 8
  %mul410 = mul nsw i64 %conv409, %238
  %add.ptr411 = getelementptr inbounds i8, i8* %add.ptr408, i64 %mul410
  store i8* %add.ptr411, i8** %temp, align 8
  %239 = load i8*, i8** %buffer, align 8
  %arrayidx412 = getelementptr inbounds i8, i8* %239, i64 1
  %240 = load i8, i8* %arrayidx412, align 1
  %conv413 = zext i8 %240 to i32
  %241 = load i32, i32* %bpp.addr, align 4
  %shl414 = shl i32 1, %241
  %sub415 = sub nsw i32 %shl414, 1
  %242 = load i32, i32* %i, align 4
  %243 = load i32, i32* %bpp.addr, align 4
  %mul416 = mul nsw i32 %242, %243
  %sub417 = sub nsw i32 8, %mul416
  %shl418 = shl i32 %sub415, %sub417
  %and419 = and i32 %conv413, %shl418
  %244 = load i32, i32* %i, align 4
  %245 = load i32, i32* %bpp.addr, align 4
  %mul420 = mul nsw i32 %244, %245
  %sub421 = sub nsw i32 8, %mul420
  %shr422 = ashr i32 %and419, %sub421
  %conv423 = trunc i32 %shr422 to i8
  %246 = load i8*, i8** %temp, align 8
  store i8 %conv423, i8* %246, align 1
  %247 = load i32, i32* %grey.addr, align 4
  %tobool424 = icmp ne i32 %247, 0
  br i1 %tobool424, label %if.then.425, label %if.end.429

if.then.425:                                      ; preds = %for.body.405
  %248 = load i8*, i8** %temp, align 8
  %249 = load i8, i8* %248, align 1
  %idxprom426 = zext i8 %249 to i64
  %250 = load [3 x i8]*, [3 x i8]** %cmap.addr, align 8
  %arrayidx427 = getelementptr inbounds [3 x i8], [3 x i8]* %250, i64 %idxprom426
  %arrayidx428 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx427, i32 0, i64 0
  %251 = load i8, i8* %arrayidx428, align 1
  %252 = load i8*, i8** %temp, align 8
  store i8 %251, i8* %252, align 1
  br label %if.end.429

if.end.429:                                       ; preds = %if.then.425, %for.body.405
  br label %for.inc.430

for.inc.430:                                      ; preds = %if.end.429
  %253 = load i32, i32* %i, align 4
  %inc431 = add nsw i32 %253, 1
  store i32 %inc431, i32* %i, align 4
  %254 = load i32, i32* %xpos, align 4
  %inc432 = add nsw i32 %254, 1
  store i32 %inc432, i32* %xpos, align 4
  %255 = load i32, i32* %j, align 4
  %inc433 = add nsw i32 %255, 1
  store i32 %inc433, i32* %j, align 4
  br label %for.cond.390

for.end.434:                                      ; preds = %land.end.404
  br label %for.cond.378

for.end.435:                                      ; preds = %land.end.388
  br label %if.end.436

if.end.436:                                       ; preds = %for.end.435, %if.end.372
  %256 = load i8*, i8** %buffer, align 8
  %arrayidx437 = getelementptr inbounds i8, i8* %256, i64 0
  %257 = load i8, i8* %arrayidx437, align 1
  %conv438 = zext i8 %257 to i32
  %cmp439 = icmp eq i32 %conv438, 0
  br i1 %cmp439, label %land.lhs.true.441, label %if.end.509

land.lhs.true.441:                                ; preds = %if.end.436
  %258 = load i8*, i8** %buffer, align 8
  %arrayidx442 = getelementptr inbounds i8, i8* %258, i64 1
  %259 = load i8, i8* %arrayidx442, align 1
  %conv443 = zext i8 %259 to i32
  %cmp444 = icmp sgt i32 %conv443, 2
  br i1 %cmp444, label %if.then.446, label %if.end.509

if.then.446:                                      ; preds = %land.lhs.true.441
  %260 = load i8*, i8** %buffer, align 8
  %arrayidx447 = getelementptr inbounds i8, i8* %260, i64 1
  %261 = load i8, i8* %arrayidx447, align 1
  store i8 %261, i8* %n, align 1
  store i32 0, i32* %total_bytes_read, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.448

for.cond.448:                                     ; preds = %for.inc.500, %if.then.446
  %262 = load i32, i32* %j, align 4
  %263 = load i8, i8* %n, align 1
  %conv449 = zext i8 %263 to i32
  %cmp450 = icmp slt i32 %262, %conv449
  br i1 %cmp450, label %for.body.452, label %for.end.503

for.body.452:                                     ; preds = %for.cond.448
  %264 = load %struct._IO_FILE*, %struct._IO_FILE** %fd.addr, align 8
  %call453 = call i64 @fread(i8* %v, i64 1, i64 1, %struct._IO_FILE* %264)
  %cmp454 = icmp ne i64 %call453, 0
  br i1 %cmp454, label %if.end.458, label %if.then.456

if.then.456:                                      ; preds = %for.body.452
  %call457 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i32 0, i32 0)) #5
  call void (i8*, ...) @g_message(i8* %call457)
  br label %for.end.503

if.end.458:                                       ; preds = %for.body.452
  %265 = load i32, i32* %total_bytes_read, align 4
  %inc459 = add nsw i32 %265, 1
  store i32 %inc459, i32* %total_bytes_read, align 4
  %266 = load i32, i32* %bpp.addr, align 4
  %div460 = sdiv i32 8, %266
  store i32 %div460, i32* %i_max, align 4
  %267 = load i8, i8* %n, align 1
  %conv461 = zext i8 %267 to i32
  %268 = load i32, i32* %j, align 4
  %sub462 = sub nsw i32 %conv461, %268
  %269 = load i32, i32* %i_max, align 4
  %cmp463 = icmp slt i32 %sub462, %269
  br i1 %cmp463, label %if.then.465, label %if.end.468

if.then.465:                                      ; preds = %if.end.458
  %270 = load i8, i8* %n, align 1
  %conv466 = zext i8 %270 to i32
  %271 = load i32, i32* %j, align 4
  %sub467 = sub nsw i32 %conv466, %271
  store i32 %sub467, i32* %i_max, align 4
  br label %if.end.468

if.end.468:                                       ; preds = %if.then.465, %if.end.458
  store i32 1, i32* %i, align 4
  br label %while.cond.469

while.cond.469:                                   ; preds = %if.end.496, %if.end.468
  %272 = load i32, i32* %i, align 4
  %273 = load i32, i32* %i_max, align 4
  %cmp470 = icmp sle i32 %272, %273
  br i1 %cmp470, label %land.rhs.472, label %land.end.475

land.rhs.472:                                     ; preds = %while.cond.469
  %274 = load i32, i32* %xpos, align 4
  %275 = load i32, i32* %width.addr, align 4
  %cmp473 = icmp slt i32 %274, %275
  br label %land.end.475

land.end.475:                                     ; preds = %land.rhs.472, %while.cond.469
  %276 = phi i1 [ false, %while.cond.469 ], [ %cmp473, %land.rhs.472 ]
  br i1 %276, label %while.body.476, label %while.end.499

while.body.476:                                   ; preds = %land.end.475
  %277 = load i8*, i8** %dest, align 8
  %278 = load i32, i32* %ypos, align 4
  %conv477 = sext i32 %278 to i64
  %279 = load i64, i64* %rowstride, align 8
  %mul478 = mul nsw i64 %conv477, %279
  %add.ptr479 = getelementptr inbounds i8, i8* %277, i64 %mul478
  %280 = load i32, i32* %xpos, align 4
  %conv480 = sext i32 %280 to i64
  %281 = load i64, i64* %channels, align 8
  %mul481 = mul nsw i64 %conv480, %281
  %add.ptr482 = getelementptr inbounds i8, i8* %add.ptr479, i64 %mul481
  store i8* %add.ptr482, i8** %temp, align 8
  %282 = load i8, i8* %v, align 1
  %conv483 = zext i8 %282 to i32
  %283 = load i32, i32* %i, align 4
  %284 = load i32, i32* %bpp.addr, align 4
  %mul484 = mul nsw i32 %283, %284
  %sub485 = sub nsw i32 8, %mul484
  %shr486 = ashr i32 %conv483, %sub485
  %285 = load i32, i32* %bpp.addr, align 4
  %shl487 = shl i32 1, %285
  %sub488 = sub nsw i32 %shl487, 1
  %and489 = and i32 %shr486, %sub488
  %conv490 = trunc i32 %and489 to i8
  %286 = load i8*, i8** %temp, align 8
  store i8 %conv490, i8* %286, align 1
  %287 = load i32, i32* %grey.addr, align 4
  %tobool491 = icmp ne i32 %287, 0
  br i1 %tobool491, label %if.then.492, label %if.end.496

if.then.492:                                      ; preds = %while.body.476
  %288 = load i8*, i8** %temp, align 8
  %289 = load i8, i8* %288, align 1
  %idxprom493 = zext i8 %289 to i64
  %290 = load [3 x i8]*, [3 x i8]** %cmap.addr, align 8
  %arrayidx494 = getelementptr inbounds [3 x i8], [3 x i8]* %290, i64 %idxprom493
  %arrayidx495 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx494, i32 0, i64 0
  %291 = load i8, i8* %arrayidx495, align 1
  %292 = load i8*, i8** %temp, align 8
  store i8 %291, i8* %292, align 1
  br label %if.end.496

if.end.496:                                       ; preds = %if.then.492, %while.body.476
  %293 = load i32, i32* %i, align 4
  %inc497 = add nsw i32 %293, 1
  store i32 %inc497, i32* %i, align 4
  %294 = load i32, i32* %xpos, align 4
  %inc498 = add nsw i32 %294, 1
  store i32 %inc498, i32* %xpos, align 4
  br label %while.cond.469

while.end.499:                                    ; preds = %land.end.475
  br label %for.inc.500

for.inc.500:                                      ; preds = %while.end.499
  %295 = load i32, i32* %bpp.addr, align 4
  %div501 = sdiv i32 8, %295
  %296 = load i32, i32* %j, align 4
  %add502 = add nsw i32 %296, %div501
  store i32 %add502, i32* %j, align 4
  br label %for.cond.448

for.end.503:                                      ; preds = %if.then.456, %for.cond.448
  %297 = load i32, i32* %total_bytes_read, align 4
  %rem504 = srem i32 %297, 2
  %tobool505 = icmp ne i32 %rem504, 0
  br i1 %tobool505, label %if.then.506, label %if.end.508

if.then.506:                                      ; preds = %for.end.503
  %298 = load %struct._IO_FILE*, %struct._IO_FILE** %fd.addr, align 8
  %call507 = call i64 @fread(i8* %v, i64 1, i64 1, %struct._IO_FILE* %298)
  br label %if.end.508

if.end.508:                                       ; preds = %if.then.506, %for.end.503
  br label %if.end.509

if.end.509:                                       ; preds = %if.end.508, %land.lhs.true.441, %if.end.436
  %299 = load i8*, i8** %buffer, align 8
  %arrayidx510 = getelementptr inbounds i8, i8* %299, i64 0
  %300 = load i8, i8* %arrayidx510, align 1
  %conv511 = zext i8 %300 to i32
  %cmp512 = icmp eq i32 %conv511, 0
  br i1 %cmp512, label %land.lhs.true.514, label %if.end.531

land.lhs.true.514:                                ; preds = %if.end.509
  %301 = load i8*, i8** %buffer, align 8
  %arrayidx515 = getelementptr inbounds i8, i8* %301, i64 1
  %302 = load i8, i8* %arrayidx515, align 1
  %conv516 = zext i8 %302 to i32
  %cmp517 = icmp eq i32 %conv516, 0
  br i1 %cmp517, label %if.then.519, label %if.end.531

if.then.519:                                      ; preds = %land.lhs.true.514
  %303 = load i32, i32* %ypos, align 4
  %dec520 = add nsw i32 %303, -1
  store i32 %dec520, i32* %ypos, align 4
  store i32 0, i32* %xpos, align 4
  %304 = load i32, i32* %cur_progress, align 4
  %inc521 = add nsw i32 %304, 1
  store i32 %inc521, i32* %cur_progress, align 4
  %305 = load i32, i32* %cur_progress, align 4
  %rem522 = srem i32 %305, 5
  %cmp523 = icmp eq i32 %rem522, 0
  br i1 %cmp523, label %if.then.525, label %if.end.530

if.then.525:                                      ; preds = %if.then.519
  %306 = load i32, i32* %cur_progress, align 4
  %conv526 = sitofp i32 %306 to double
  %307 = load i32, i32* %max_progress, align 4
  %conv527 = sitofp i32 %307 to double
  %div528 = fdiv double %conv526, %conv527
  %call529 = call i32 @gimp_progress_update(double %div528)
  br label %if.end.530

if.end.530:                                       ; preds = %if.then.525, %if.then.519
  br label %if.end.531

if.end.531:                                       ; preds = %if.end.530, %land.lhs.true.514, %if.end.509
  %308 = load i8*, i8** %buffer, align 8
  %arrayidx532 = getelementptr inbounds i8, i8* %308, i64 0
  %309 = load i8, i8* %arrayidx532, align 1
  %conv533 = zext i8 %309 to i32
  %cmp534 = icmp eq i32 %conv533, 0
  br i1 %cmp534, label %land.lhs.true.536, label %if.end.542

land.lhs.true.536:                                ; preds = %if.end.531
  %310 = load i8*, i8** %buffer, align 8
  %arrayidx537 = getelementptr inbounds i8, i8* %310, i64 1
  %311 = load i8, i8* %arrayidx537, align 1
  %conv538 = zext i8 %311 to i32
  %cmp539 = icmp eq i32 %conv538, 1
  br i1 %cmp539, label %if.then.541, label %if.end.542

if.then.541:                                      ; preds = %land.lhs.true.536
  br label %while.end.566

if.end.542:                                       ; preds = %land.lhs.true.536, %if.end.531
  %312 = load i8*, i8** %buffer, align 8
  %arrayidx543 = getelementptr inbounds i8, i8* %312, i64 0
  %313 = load i8, i8* %arrayidx543, align 1
  %conv544 = zext i8 %313 to i32
  %cmp545 = icmp eq i32 %conv544, 0
  br i1 %cmp545, label %land.lhs.true.547, label %if.end.565

land.lhs.true.547:                                ; preds = %if.end.542
  %314 = load i8*, i8** %buffer, align 8
  %arrayidx548 = getelementptr inbounds i8, i8* %314, i64 1
  %315 = load i8, i8* %arrayidx548, align 1
  %conv549 = zext i8 %315 to i32
  %cmp550 = icmp eq i32 %conv549, 2
  br i1 %cmp550, label %if.then.552, label %if.end.565

if.then.552:                                      ; preds = %land.lhs.true.547
  %316 = load i8*, i8** %buffer, align 8
  %317 = load %struct._IO_FILE*, %struct._IO_FILE** %fd.addr, align 8
  %call553 = call i64 @fread(i8* %316, i64 2, i64 1, %struct._IO_FILE* %317)
  %cmp554 = icmp ne i64 %call553, 0
  br i1 %cmp554, label %if.end.558, label %if.then.556

if.then.556:                                      ; preds = %if.then.552
  %call557 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i32 0, i32 0)) #5
  call void (i8*, ...) @g_message(i8* %call557)
  br label %while.end.566

if.end.558:                                       ; preds = %if.then.552
  %318 = load i8*, i8** %buffer, align 8
  %arrayidx559 = getelementptr inbounds i8, i8* %318, i64 0
  %319 = load i8, i8* %arrayidx559, align 1
  %conv560 = zext i8 %319 to i32
  %320 = load i32, i32* %xpos, align 4
  %add561 = add nsw i32 %320, %conv560
  store i32 %add561, i32* %xpos, align 4
  %321 = load i8*, i8** %buffer, align 8
  %arrayidx562 = getelementptr inbounds i8, i8* %321, i64 1
  %322 = load i8, i8* %arrayidx562, align 1
  %conv563 = zext i8 %322 to i32
  %323 = load i32, i32* %ypos, align 4
  %sub564 = sub nsw i32 %323, %conv563
  store i32 %sub564, i32* %ypos, align 4
  br label %if.end.565

if.end.565:                                       ; preds = %if.end.558, %land.lhs.true.547, %if.end.542
  br label %while.cond.359

while.end.566:                                    ; preds = %if.then.556, %if.then.541, %if.then.370, %land.end.365
  br label %sw.epilog.568

sw.default.567:                                   ; preds = %if.end.35
  br label %do.body

do.body:                                          ; preds = %sw.default.567
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), i32 939, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.ReadImage, i32 0, i32 0), i8* null) #9
  unreachable

do.end:                                           ; No predecessors!
  br label %sw.epilog.568

sw.epilog.568:                                    ; preds = %do.end, %while.end.566, %while.end.357, %while.end.284, %while.end.179, %while.end
  %324 = load i32, i32* %bpp.addr, align 4
  %cmp569 = icmp sle i32 %324, 8
  br i1 %cmp569, label %if.then.571, label %if.end.597

if.then.571:                                      ; preds = %sw.epilog.568
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.572

for.cond.572:                                     ; preds = %for.inc.594, %if.then.571
  %325 = load i32, i32* %i, align 4
  %326 = load i32, i32* %ncols.addr, align 4
  %cmp573 = icmp slt i32 %325, %326
  br i1 %cmp573, label %for.body.575, label %for.end.596

for.body.575:                                     ; preds = %for.cond.572
  %327 = load i32, i32* %i, align 4
  %idxprom576 = sext i32 %327 to i64
  %328 = load [3 x i8]*, [3 x i8]** %cmap.addr, align 8
  %arrayidx577 = getelementptr inbounds [3 x i8], [3 x i8]* %328, i64 %idxprom576
  %arrayidx578 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx577, i32 0, i64 0
  %329 = load i8, i8* %arrayidx578, align 1
  %330 = load i32, i32* %j, align 4
  %inc579 = add nsw i32 %330, 1
  store i32 %inc579, i32* %j, align 4
  %idxprom580 = sext i32 %330 to i64
  %arrayidx581 = getelementptr inbounds [768 x i8], [768 x i8]* %gimp_cmap, i32 0, i64 %idxprom580
  store i8 %329, i8* %arrayidx581, align 1
  %331 = load i32, i32* %i, align 4
  %idxprom582 = sext i32 %331 to i64
  %332 = load [3 x i8]*, [3 x i8]** %cmap.addr, align 8
  %arrayidx583 = getelementptr inbounds [3 x i8], [3 x i8]* %332, i64 %idxprom582
  %arrayidx584 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx583, i32 0, i64 1
  %333 = load i8, i8* %arrayidx584, align 1
  %334 = load i32, i32* %j, align 4
  %inc585 = add nsw i32 %334, 1
  store i32 %inc585, i32* %j, align 4
  %idxprom586 = sext i32 %334 to i64
  %arrayidx587 = getelementptr inbounds [768 x i8], [768 x i8]* %gimp_cmap, i32 0, i64 %idxprom586
  store i8 %333, i8* %arrayidx587, align 1
  %335 = load i32, i32* %i, align 4
  %idxprom588 = sext i32 %335 to i64
  %336 = load [3 x i8]*, [3 x i8]** %cmap.addr, align 8
  %arrayidx589 = getelementptr inbounds [3 x i8], [3 x i8]* %336, i64 %idxprom588
  %arrayidx590 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx589, i32 0, i64 2
  %337 = load i8, i8* %arrayidx590, align 1
  %338 = load i32, i32* %j, align 4
  %inc591 = add nsw i32 %338, 1
  store i32 %inc591, i32* %j, align 4
  %idxprom592 = sext i32 %338 to i64
  %arrayidx593 = getelementptr inbounds [768 x i8], [768 x i8]* %gimp_cmap, i32 0, i64 %idxprom592
  store i8 %337, i8* %arrayidx593, align 1
  br label %for.inc.594

for.inc.594:                                      ; preds = %for.body.575
  %339 = load i32, i32* %i, align 4
  %inc595 = add nsw i32 %339, 1
  store i32 %inc595, i32* %i, align 4
  br label %for.cond.572

for.end.596:                                      ; preds = %for.cond.572
  br label %if.end.597

if.end.597:                                       ; preds = %for.end.596, %sw.epilog.568
  %call598 = call i32 @gimp_progress_update(double 1.000000e+00)
  %340 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %341 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width599 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %341, i32 0, i32 1
  %342 = load i32, i32* %width599, align 4
  %343 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height600 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %343, i32 0, i32 2
  %344 = load i32, i32* %height600, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %340, i32 0, i32 0, i32 %342, i32 %344, i32 1, i32 0)
  %345 = load i8*, i8** %dest, align 8
  %346 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width601 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %346, i32 0, i32 1
  %347 = load i32, i32* %width601, align 4
  %348 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height602 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %348, i32 0, i32 2
  %349 = load i32, i32* %height602, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %345, i32 0, i32 0, i32 %347, i32 %349)
  %350 = load i32, i32* %grey.addr, align 4
  %tobool603 = icmp ne i32 %350, 0
  br i1 %tobool603, label %if.end.609, label %land.lhs.true.604

land.lhs.true.604:                                ; preds = %if.end.597
  %351 = load i32, i32* %bpp.addr, align 4
  %cmp605 = icmp sle i32 %351, 8
  br i1 %cmp605, label %if.then.607, label %if.end.609

if.then.607:                                      ; preds = %land.lhs.true.604
  %352 = load i32, i32* %image, align 4
  %arraydecay = getelementptr inbounds [768 x i8], [768 x i8]* %gimp_cmap, i32 0, i32 0
  %353 = load i32, i32* %ncols.addr, align 4
  %call608 = call i32 @gimp_image_set_colormap(i32 %352, i8* %arraydecay, i32 %353)
  br label %if.end.609

if.end.609:                                       ; preds = %if.then.607, %land.lhs.true.604, %if.end.597
  %354 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %354)
  %355 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %355)
  %356 = load i8*, i8** %dest, align 8
  call void @g_free(i8* %356)
  %357 = load i32, i32* %image, align 4
  store i32 %357, i32* %retval
  br label %return

return:                                           ; preds = %if.end.609, %if.then.33, %if.then.27, %sw.default, %if.then
  %358 = load i32, i32* %retval
  ret i32 %358
}

declare i32 @gimp_image_set_resolution(i32, double, double) #1

declare i32 @gimp_image_flip(i32, i32) #1

declare i32 @fclose(%struct._IO_FILE*) #1

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
  call void @g_logv(i8* null, i32 32, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare i32 @gimp_image_new(i32, i32, i32) #1

declare i32 @gimp_layer_new(i32, i8*, i32, i32, i32, double, i32) #1

declare i32 @gimp_image_set_filename(i32, i8*) #1

declare i32 @gimp_image_insert_layer(i32, i32, i32, i32) #1

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare noalias i8* @g_malloc0(i64) #1

declare noalias i8* @g_malloc(i64) #1

declare i32 @gimp_progress_update(double) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #6

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare i32 @gimp_image_set_colormap(i32, i8*, i32) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare void @g_free(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
