; ModuleID = './plug-ins/file-bmp/bmp-write.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32, i32 }
%struct.Bitmap_File_Head_Struct = type { [2 x i8], i64, i16, i16, i64, i64 }
%struct.Bitmap_Head_Struct = type { i64, i64, i16, i16, i64, i64, i64, i64, i64, i64, [4 x i32] }
%struct._GError = type { i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkStyle = type { %struct._GObject, [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], %struct._GdkColor, %struct._GdkColor, %struct._PangoFontDescription*, i32, i32, [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], %struct._GdkGC*, %struct._GdkGC*, [5 x %struct._GdkDrawable*], i32, i32, %struct._GdkColormap*, %struct._GdkFont*, %struct._PangoFontDescription*, %struct._GtkRcStyle*, %struct._GSList*, %struct._GArray*, %struct._GSList* }
%struct._GdkColor = type { i32, i16, i16, i16 }
%struct._GdkGC = type { %struct._GObject, i32, i32, i32, i32, %struct._GdkColormap* }
%struct._GdkColormap = type { %struct._GObject, i32, %struct._GdkColor*, %struct._GdkVisual*, i8* }
%struct._GdkVisual = type { %struct._GObject, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkFont = type opaque
%struct._PangoFontDescription = type opaque
%struct._GtkRcStyle = type { %struct._GObject, i8*, [5 x i8*], %struct._PangoFontDescription*, [5 x i32], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], i32, i32, %struct._GArray*, %struct._GSList*, %struct._GSList*, i8 }
%struct._GArray = type { i8*, i32 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkMessageDialog = type { %struct._GtkDialog, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkRadioButton = type { %struct._GtkCheckButton, %struct._GSList* }
%struct._GtkCheckButton = type { %struct._GtkToggleButton }
%struct._GimpDialog = type { %struct._GtkDialog }

@BMPSaveData = internal global %struct.anon zeroinitializer, align 4
@interactive = external global i32, align 4
@.str = private unnamed_addr constant [64 x i8] c"Cannot save indexed image with transparency in BMP file format.\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Alpha channel will be ignored.\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"bmp-write.c\00", align 1
@__func__.WriteBMP = private unnamed_addr constant [9 x i8] c"WriteBMP\00", align 1
@lastvals = external global i32, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"file-bmp-save\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"file %s: line %d (%s): should not be reached\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for writing: %s\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Saving '%s'\00", align 1
@cur_progress = internal global i32 0, align 4
@max_progress = internal global i32 0, align 4
@Bitmap_File_Head = external global %struct.Bitmap_File_Head_Struct, align 8
@Bitmap_Head = external global %struct.Bitmap_Head_Struct, align 8
@.str.8 = private unnamed_addr constant [3 x i8] c"BM\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@write_image.buf = private unnamed_addr constant [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00", align 16
@.str.10 = private unnamed_addr constant [4 x i8] c"BMP\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"file-bmp\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"_Run-Length Encoded\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"Co_mpatibility Options\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"_Do not write color space information\00", align 1
@.str.16 = private unnamed_addr constant [215 x i8] c"Some applications can not read BMP images that include color space information. GIMP writes color space information by default. Enabling this option will cause GIMP to not write color space information to the file.\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"_Advanced Options\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"16 bits\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"R5 G6 B5\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"A1 R5 G5 B5\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"X1 R5 G5 B5\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"24 bits\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"R8 G8 B8\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"32 bits\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"A8 R8 G8 B8\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"X8 R8 G8 B8\00", align 1

; Function Attrs: nounwind uwtable
define i32 @WriteBMP(i8* %filename, i32 %image, i32 %drawable_ID, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %image.addr = alloca i32, align 4
  %drawable_ID.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %outfile = alloca %struct._IO_FILE*, align 8
  %Red = alloca [256 x i32], align 16
  %Green = alloca [256 x i32], align 16
  %Blue = alloca [256 x i32], align 16
  %cmap = alloca i8*, align 8
  %rows = alloca i32, align 4
  %cols = alloca i32, align 4
  %Spcols = alloca i32, align 4
  %channels = alloca i32, align 4
  %MapSize = alloca i32, align 4
  %SpZeile = alloca i32, align 4
  %BitsPerPixel = alloca i64, align 8
  %colors = alloca i32, align 4
  %pixels = alloca i8*, align 8
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %drawable_type = alloca i32, align 4
  %puffer = alloca [128 x i8], align 16
  %i = alloca i32, align 4
  %mask_info_size = alloca i32, align 4
  %color_space_size = alloca i32, align 4
  %Mask = alloca [4 x i32], align 16
  %xresolution = alloca double, align 8
  %yresolution = alloca double, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %image, i32* %image.addr, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %call = call %struct._GimpDrawable* @gimp_drawable_get(i32 %0)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %1 = load i32, i32* %drawable_ID.addr, align 4
  %call1 = call i32 @gimp_drawable_type(i32 %1)
  store i32 %call1, i32* %drawable_type, align 4
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 1
  %4 = load i32, i32* %width, align 4
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %5, i32 0, i32 2
  %6 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %2, i32 0, i32 0, i32 %4, i32 %6, i32 0, i32 0)
  %7 = load i32, i32* %drawable_type, align 4
  switch i32 %7, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 2, label %sw.bb.8
    i32 5, label %sw.bb.16
    i32 4, label %sw.bb.25
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %colors, align 4
  store i64 32, i64* %BitsPerPixel, align 8
  store i32 0, i32* %MapSize, align 4
  store i32 4, i32* %channels, align 4
  store i32 4, i32* getelementptr inbounds (%struct.anon, %struct.anon* @BMPSaveData, i32 0, i32 0), align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  store i32 0, i32* %colors, align 4
  store i64 24, i64* %BitsPerPixel, align 8
  store i32 0, i32* %MapSize, align 4
  store i32 3, i32* %channels, align 4
  store i32 3, i32* getelementptr inbounds (%struct.anon, %struct.anon* @BMPSaveData, i32 0, i32 0), align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %8 = load i32, i32* @interactive, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb.3
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i32 0, i32 0)) #5
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0)) #5
  %call6 = call i32 @warning_dialog(i8* %call4, i8* %call5)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 4, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %sw.bb.3
  br label %sw.bb.8

sw.bb.8:                                          ; preds = %entry, %if.end
  store i32 256, i32* %colors, align 4
  store i64 8, i64* %BitsPerPixel, align 8
  store i32 1024, i32* %MapSize, align 4
  %9 = load i32, i32* %drawable_type, align 4
  %cmp = icmp eq i32 %9, 3
  br i1 %cmp, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %sw.bb.8
  store i32 2, i32* %channels, align 4
  br label %if.end.10

if.else:                                          ; preds = %sw.bb.8
  store i32 1, i32* %channels, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %colors, align 4
  %cmp11 = icmp slt i32 %10, %11
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* %Red, i32 0, i64 %idxprom
  store i32 %12, i32* %arrayidx, align 4
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %15 to i64
  %arrayidx13 = getelementptr inbounds [256 x i32], [256 x i32]* %Green, i32 0, i64 %idxprom12
  store i32 %14, i32* %arrayidx13, align 4
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %17 to i64
  %arrayidx15 = getelementptr inbounds [256 x i32], [256 x i32]* %Blue, i32 0, i64 %idxprom14
  store i32 %16, i32* %arrayidx15, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb.16:                                         ; preds = %entry
  %19 = load i32, i32* @interactive, align 4
  %tobool17 = icmp ne i32 %19, 0
  br i1 %tobool17, label %land.lhs.true.18, label %if.end.24

land.lhs.true.18:                                 ; preds = %sw.bb.16
  %call19 = call i8* @gettext(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i32 0, i32 0)) #5
  %call20 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0)) #5
  %call21 = call i32 @warning_dialog(i8* %call19, i8* %call20)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %land.lhs.true.18
  store i32 4, i32* %retval
  br label %return

if.end.24:                                        ; preds = %land.lhs.true.18, %sw.bb.16
  br label %sw.bb.25

sw.bb.25:                                         ; preds = %entry, %if.end.24
  %20 = load i32, i32* %image.addr, align 4
  %call26 = call i8* @gimp_image_get_colormap(i32 %20, i32* %colors)
  store i8* %call26, i8** %cmap, align 8
  %21 = load i32, i32* %colors, align 4
  %mul = mul nsw i32 4, %21
  store i32 %mul, i32* %MapSize, align 4
  %22 = load i32, i32* %drawable_type, align 4
  %cmp27 = icmp eq i32 %22, 5
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %sw.bb.25
  store i32 2, i32* %channels, align 4
  br label %if.end.30

if.else.29:                                       ; preds = %sw.bb.25
  store i32 1, i32* %channels, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.29, %if.then.28
  %23 = load i32, i32* %colors, align 4
  %cmp31 = icmp sgt i32 %23, 16
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %if.end.30
  store i64 8, i64* %BitsPerPixel, align 8
  br label %if.end.38

if.else.33:                                       ; preds = %if.end.30
  %24 = load i32, i32* %colors, align 4
  %cmp34 = icmp sgt i32 %24, 2
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.else.33
  store i64 4, i64* %BitsPerPixel, align 8
  br label %if.end.37

if.else.36:                                       ; preds = %if.else.33
  store i64 1, i64* %BitsPerPixel, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.36, %if.then.35
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.32
  store i32 0, i32* %i, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.52, %if.end.38
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %colors, align 4
  %cmp40 = icmp slt i32 %25, %26
  br i1 %cmp40, label %for.body.41, label %for.end.54

for.body.41:                                      ; preds = %for.cond.39
  %27 = load i8*, i8** %cmap, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr, i8** %cmap, align 8
  %28 = load i8, i8* %27, align 1
  %conv = zext i8 %28 to i32
  %29 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %29 to i64
  %arrayidx43 = getelementptr inbounds [256 x i32], [256 x i32]* %Red, i32 0, i64 %idxprom42
  store i32 %conv, i32* %arrayidx43, align 4
  %30 = load i8*, i8** %cmap, align 8
  %incdec.ptr44 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr44, i8** %cmap, align 8
  %31 = load i8, i8* %30, align 1
  %conv45 = zext i8 %31 to i32
  %32 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %32 to i64
  %arrayidx47 = getelementptr inbounds [256 x i32], [256 x i32]* %Green, i32 0, i64 %idxprom46
  store i32 %conv45, i32* %arrayidx47, align 4
  %33 = load i8*, i8** %cmap, align 8
  %incdec.ptr48 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr48, i8** %cmap, align 8
  %34 = load i8, i8* %33, align 1
  %conv49 = zext i8 %34 to i32
  %35 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %35 to i64
  %arrayidx51 = getelementptr inbounds [256 x i32], [256 x i32]* %Blue, i32 0, i64 %idxprom50
  store i32 %conv49, i32* %arrayidx51, align 4
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.body.41
  %36 = load i32, i32* %i, align 4
  %inc53 = add nsw i32 %36, 1
  store i32 %inc53, i32* %i, align 4
  br label %for.cond.39

for.end.54:                                       ; preds = %for.cond.39
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 251, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.WriteBMP, i32 0, i32 0), i8* null) #7
  unreachable

do.end:                                           ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %for.end.54, %for.end, %sw.bb.2, %sw.bb
  store i32 0, i32* getelementptr inbounds (%struct.anon, %struct.anon* @BMPSaveData, i32 0, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.anon, %struct.anon* @BMPSaveData, i32 0, i32 2), align 4
  store i32 0, i32* %mask_info_size, align 4
  %37 = load i32, i32* @interactive, align 4
  %tobool55 = icmp ne i32 %37, 0
  br i1 %tobool55, label %if.then.57, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog
  %38 = load i32, i32* @lastvals, align 4
  %tobool56 = icmp ne i32 %38, 0
  br i1 %tobool56, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %lor.lhs.false, %sw.epilog
  %call58 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* bitcast (%struct.anon* @BMPSaveData to i8*))
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %lor.lhs.false
  %39 = load i64, i64* %BitsPerPixel, align 8
  %cmp60 = icmp eq i64 %39, 8
  br i1 %cmp60, label %land.lhs.true.65, label %lor.lhs.false.62

lor.lhs.false.62:                                 ; preds = %if.end.59
  %40 = load i64, i64* %BitsPerPixel, align 8
  %cmp63 = icmp eq i64 %40, 4
  br i1 %cmp63, label %land.lhs.true.65, label %if.else.72

land.lhs.true.65:                                 ; preds = %lor.lhs.false.62, %if.end.59
  %41 = load i32, i32* @interactive, align 4
  %tobool66 = icmp ne i32 %41, 0
  br i1 %tobool66, label %if.then.67, label %if.else.72

if.then.67:                                       ; preds = %land.lhs.true.65
  %call68 = call i32 @save_dialog(i32 1)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.end.71, label %if.then.70

if.then.70:                                       ; preds = %if.then.67
  store i32 4, i32* %retval
  br label %return

if.end.71:                                        ; preds = %if.then.67
  br label %if.end.96

if.else.72:                                       ; preds = %land.lhs.true.65, %lor.lhs.false.62
  %42 = load i64, i64* %BitsPerPixel, align 8
  %cmp73 = icmp eq i64 %42, 24
  br i1 %cmp73, label %if.then.78, label %lor.lhs.false.75

lor.lhs.false.75:                                 ; preds = %if.else.72
  %43 = load i64, i64* %BitsPerPixel, align 8
  %cmp76 = icmp eq i64 %43, 32
  br i1 %cmp76, label %if.then.78, label %if.end.95

if.then.78:                                       ; preds = %lor.lhs.false.75, %if.else.72
  %44 = load i32, i32* @interactive, align 4
  %tobool79 = icmp ne i32 %44, 0
  br i1 %tobool79, label %land.lhs.true.80, label %if.end.84

land.lhs.true.80:                                 ; preds = %if.then.78
  %45 = load i32, i32* %channels, align 4
  %call81 = call i32 @save_dialog(i32 %45)
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.end.84, label %if.then.83

if.then.83:                                       ; preds = %land.lhs.true.80
  store i32 4, i32* %retval
  br label %return

if.end.84:                                        ; preds = %land.lhs.true.80, %if.then.78
  %46 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @BMPSaveData, i32 0, i32 0), align 4
  switch i32 %46, label %sw.default.91 [
    i32 3, label %sw.bb.85
    i32 4, label %sw.bb.86
    i32 5, label %sw.bb.87
    i32 0, label %sw.bb.88
    i32 1, label %sw.bb.89
    i32 2, label %sw.bb.90
  ]

sw.bb.85:                                         ; preds = %if.end.84
  store i64 24, i64* %BitsPerPixel, align 8
  br label %sw.epilog.94

sw.bb.86:                                         ; preds = %if.end.84
  store i64 32, i64* %BitsPerPixel, align 8
  store i32 16, i32* %mask_info_size, align 4
  br label %sw.epilog.94

sw.bb.87:                                         ; preds = %if.end.84
  store i64 32, i64* %BitsPerPixel, align 8
  store i32 16, i32* %mask_info_size, align 4
  br label %sw.epilog.94

sw.bb.88:                                         ; preds = %if.end.84
  store i64 16, i64* %BitsPerPixel, align 8
  store i32 16, i32* %mask_info_size, align 4
  br label %sw.epilog.94

sw.bb.89:                                         ; preds = %if.end.84
  store i64 16, i64* %BitsPerPixel, align 8
  store i32 16, i32* %mask_info_size, align 4
  br label %sw.epilog.94

sw.bb.90:                                         ; preds = %if.end.84
  store i64 16, i64* %BitsPerPixel, align 8
  store i32 16, i32* %mask_info_size, align 4
  br label %sw.epilog.94

sw.default.91:                                    ; preds = %if.end.84
  br label %do.body.92

do.body.92:                                       ; preds = %sw.default.91
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 300, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.WriteBMP, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

do.end.93:                                        ; No predecessors!
  br label %sw.epilog.94

sw.epilog.94:                                     ; preds = %do.end.93, %sw.bb.90, %sw.bb.89, %sw.bb.88, %sw.bb.87, %sw.bb.86, %sw.bb.85
  br label %if.end.95

if.end.95:                                        ; preds = %sw.epilog.94, %lor.lhs.false.75
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.end.71
  %call97 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* bitcast (%struct.anon* @BMPSaveData to i8*), i32 12)
  %47 = load i8*, i8** %filename.addr, align 8
  %call98 = call %struct._IO_FILE* @fopen(i8* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0))
  store %struct._IO_FILE* %call98, %struct._IO_FILE** %outfile, align 8
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %tobool99 = icmp ne %struct._IO_FILE* %48, null
  br i1 %tobool99, label %if.end.108, label %if.then.100

if.then.100:                                      ; preds = %if.end.96
  %49 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call101 = call i32 @g_file_error_quark()
  %call102 = call i32* @__errno_location() #8
  %50 = load i32, i32* %call102, align 4
  %call103 = call i32 @g_file_error_from_errno(i32 %50)
  %call104 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i32 0, i32 0)) #5
  %51 = load i8*, i8** %filename.addr, align 8
  %call105 = call i8* @gimp_filename_to_utf8(i8* %51)
  %call106 = call i32* @__errno_location() #8
  %52 = load i32, i32* %call106, align 4
  %call107 = call i8* @g_strerror(i32 %52) #8
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %49, i32 %call101, i32 %call103, i8* %call104, i8* %call105, i8* %call107)
  store i32 0, i32* %retval
  br label %return

if.end.108:                                       ; preds = %if.end.96
  %53 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width109 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %53, i32 0, i32 1
  %54 = load i32, i32* %width109, align 4
  %55 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height110 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %55, i32 0, i32 2
  %56 = load i32, i32* %height110, align 4
  %mul111 = mul i32 %54, %56
  %57 = load i32, i32* %channels, align 4
  %mul112 = mul i32 %mul111, %57
  %conv113 = zext i32 %mul112 to i64
  %call114 = call noalias i8* @g_malloc_n(i64 %conv113, i64 1)
  store i8* %call114, i8** %pixels, align 8
  %58 = load i8*, i8** %pixels, align 8
  %59 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width115 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %59, i32 0, i32 1
  %60 = load i32, i32* %width115, align 4
  %61 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height116 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %61, i32 0, i32 2
  %62 = load i32, i32* %height116, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %58, i32 0, i32 0, i32 %60, i32 %62)
  %call117 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0)) #5
  %63 = load i8*, i8** %filename.addr, align 8
  %call118 = call i8* @gimp_filename_to_utf8(i8* %63)
  %call119 = call i32 (i8*, ...) @gimp_progress_init_printf(i8* %call117, i8* %call118)
  store i32 0, i32* @cur_progress, align 4
  %64 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height120 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %64, i32 0, i32 2
  %65 = load i32, i32* %height120, align 4
  store i32 %65, i32* @max_progress, align 4
  %66 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width121 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %66, i32 0, i32 1
  %67 = load i32, i32* %width121, align 4
  store i32 %67, i32* %cols, align 4
  %68 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height122 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %68, i32 0, i32 2
  %69 = load i32, i32* %height122, align 4
  store i32 %69, i32* %rows, align 4
  %70 = load i64, i64* %BitsPerPixel, align 8
  %cmp123 = icmp sle i64 %70, 8
  br i1 %cmp123, label %land.lhs.true.125, label %if.else.135

land.lhs.true.125:                                ; preds = %if.end.108
  %71 = load i32, i32* %cols, align 4
  %conv126 = sext i32 %71 to i64
  %72 = load i64, i64* %BitsPerPixel, align 8
  %div = sdiv i64 8, %72
  %rem = srem i64 %conv126, %div
  %tobool127 = icmp ne i64 %rem, 0
  br i1 %tobool127, label %if.then.128, label %if.else.135

if.then.128:                                      ; preds = %land.lhs.true.125
  %73 = load i32, i32* %cols, align 4
  %conv129 = sext i32 %73 to i64
  %74 = load i64, i64* %BitsPerPixel, align 8
  %div130 = sdiv i64 8, %74
  %div131 = sdiv i64 %conv129, %div130
  %add = add nsw i64 %div131, 1
  %75 = load i64, i64* %BitsPerPixel, align 8
  %div132 = sdiv i64 8, %75
  %mul133 = mul nsw i64 %add, %div132
  %conv134 = trunc i64 %mul133 to i32
  store i32 %conv134, i32* %Spcols, align 4
  br label %if.end.136

if.else.135:                                      ; preds = %land.lhs.true.125, %if.end.108
  %76 = load i32, i32* %cols, align 4
  store i32 %76, i32* %Spcols, align 4
  br label %if.end.136

if.end.136:                                       ; preds = %if.else.135, %if.then.128
  %77 = load i32, i32* %Spcols, align 4
  %conv137 = sext i32 %77 to i64
  %78 = load i64, i64* %BitsPerPixel, align 8
  %mul138 = mul nsw i64 %conv137, %78
  %div139 = sdiv i64 %mul138, 8
  %rem140 = srem i64 %div139, 4
  %cmp141 = icmp eq i64 %rem140, 0
  br i1 %cmp141, label %if.then.143, label %if.else.148

if.then.143:                                      ; preds = %if.end.136
  %79 = load i32, i32* %Spcols, align 4
  %conv144 = sext i32 %79 to i64
  %80 = load i64, i64* %BitsPerPixel, align 8
  %mul145 = mul nsw i64 %conv144, %80
  %div146 = sdiv i64 %mul145, 8
  %conv147 = trunc i64 %div146 to i32
  store i32 %conv147, i32* %SpZeile, align 4
  br label %if.end.156

if.else.148:                                      ; preds = %if.end.136
  %81 = load i32, i32* %Spcols, align 4
  %conv149 = sext i32 %81 to i64
  %82 = load i64, i64* %BitsPerPixel, align 8
  %mul150 = mul nsw i64 %conv149, %82
  %div151 = sdiv i64 %mul150, 8
  %div152 = sdiv i64 %div151, 4
  %conv153 = trunc i64 %div152 to i32
  %add154 = add nsw i32 %conv153, 1
  %mul155 = mul nsw i32 %add154, 4
  store i32 %mul155, i32* %SpZeile, align 4
  br label %if.end.156

if.end.156:                                       ; preds = %if.else.148, %if.then.143
  %83 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @BMPSaveData, i32 0, i32 2), align 4
  %tobool157 = icmp ne i32 %83, 0
  br i1 %tobool157, label %if.else.159, label %if.then.158

if.then.158:                                      ; preds = %if.end.156
  store i32 68, i32* %color_space_size, align 4
  br label %if.end.160

if.else.159:                                      ; preds = %if.end.156
  store i32 0, i32* %color_space_size, align 4
  br label %if.end.160

if.end.160:                                       ; preds = %if.else.159, %if.then.158
  %84 = load i32, i32* %MapSize, align 4
  %add161 = add nsw i32 54, %84
  %85 = load i32, i32* %rows, align 4
  %86 = load i32, i32* %SpZeile, align 4
  %mul162 = mul nsw i32 %85, %86
  %add163 = add nsw i32 %add161, %mul162
  %87 = load i32, i32* %mask_info_size, align 4
  %add164 = add nsw i32 %add163, %87
  %88 = load i32, i32* %color_space_size, align 4
  %add165 = add nsw i32 %add164, %88
  %conv166 = sext i32 %add165 to i64
  store i64 %conv166, i64* getelementptr inbounds (%struct.Bitmap_File_Head_Struct, %struct.Bitmap_File_Head_Struct* @Bitmap_File_Head, i32 0, i32 1), align 8
  store i16 0, i16* getelementptr inbounds (%struct.Bitmap_File_Head_Struct, %struct.Bitmap_File_Head_Struct* @Bitmap_File_Head, i32 0, i32 2), align 2
  store i16 0, i16* getelementptr inbounds (%struct.Bitmap_File_Head_Struct, %struct.Bitmap_File_Head_Struct* @Bitmap_File_Head, i32 0, i32 3), align 2
  %89 = load i32, i32* %MapSize, align 4
  %add167 = add nsw i32 54, %89
  %90 = load i32, i32* %mask_info_size, align 4
  %add168 = add nsw i32 %add167, %90
  %91 = load i32, i32* %color_space_size, align 4
  %add169 = add nsw i32 %add168, %91
  %conv170 = sext i32 %add169 to i64
  store i64 %conv170, i64* getelementptr inbounds (%struct.Bitmap_File_Head_Struct, %struct.Bitmap_File_Head_Struct* @Bitmap_File_Head, i32 0, i32 4), align 8
  %92 = load i32, i32* %mask_info_size, align 4
  %add171 = add nsw i32 40, %92
  %93 = load i32, i32* %color_space_size, align 4
  %add172 = add nsw i32 %add171, %93
  %conv173 = sext i32 %add172 to i64
  store i64 %conv173, i64* getelementptr inbounds (%struct.Bitmap_File_Head_Struct, %struct.Bitmap_File_Head_Struct* @Bitmap_File_Head, i32 0, i32 5), align 8
  %94 = load i32, i32* %cols, align 4
  %conv174 = sext i32 %94 to i64
  store i64 %conv174, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 0), align 8
  %95 = load i32, i32* %rows, align 4
  %conv175 = sext i32 %95 to i64
  store i64 %conv175, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 1), align 8
  store i16 1, i16* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 2), align 2
  %96 = load i64, i64* %BitsPerPixel, align 8
  %conv176 = trunc i64 %96 to i16
  store i16 %conv176, i16* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 3), align 2
  %97 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @BMPSaveData, i32 0, i32 1), align 4
  %cmp177 = icmp eq i32 %97, 0
  br i1 %cmp177, label %if.then.179, label %if.else.185

if.then.179:                                      ; preds = %if.end.160
  %98 = load i32, i32* %mask_info_size, align 4
  %cmp180 = icmp sgt i32 %98, 0
  br i1 %cmp180, label %if.then.182, label %if.else.183

if.then.182:                                      ; preds = %if.then.179
  store i64 3, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 4), align 8
  br label %if.end.184

if.else.183:                                      ; preds = %if.then.179
  store i64 0, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 4), align 8
  br label %if.end.184

if.end.184:                                       ; preds = %if.else.183, %if.then.182
  br label %if.end.196

if.else.185:                                      ; preds = %if.end.160
  %99 = load i64, i64* %BitsPerPixel, align 8
  %cmp186 = icmp eq i64 %99, 8
  br i1 %cmp186, label %if.then.188, label %if.else.189

if.then.188:                                      ; preds = %if.else.185
  store i64 1, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 4), align 8
  br label %if.end.195

if.else.189:                                      ; preds = %if.else.185
  %100 = load i64, i64* %BitsPerPixel, align 8
  %cmp190 = icmp eq i64 %100, 4
  br i1 %cmp190, label %if.then.192, label %if.else.193

if.then.192:                                      ; preds = %if.else.189
  store i64 2, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 4), align 8
  br label %if.end.194

if.else.193:                                      ; preds = %if.else.189
  store i64 0, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 4), align 8
  br label %if.end.194

if.end.194:                                       ; preds = %if.else.193, %if.then.192
  br label %if.end.195

if.end.195:                                       ; preds = %if.end.194, %if.then.188
  br label %if.end.196

if.end.196:                                       ; preds = %if.end.195, %if.end.184
  %101 = load i32, i32* %SpZeile, align 4
  %102 = load i32, i32* %rows, align 4
  %mul197 = mul nsw i32 %101, %102
  %conv198 = sext i32 %mul197 to i64
  store i64 %conv198, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 5), align 8
  %103 = load i32, i32* %image.addr, align 4
  %call199 = call i32 @gimp_image_get_resolution(i32 %103, double* %xresolution, double* %yresolution)
  %104 = load double, double* %xresolution, align 8
  %cmp200 = fcmp ogt double %104, 5.000000e-03
  br i1 %cmp200, label %land.lhs.true.202, label %if.end.214

land.lhs.true.202:                                ; preds = %if.end.196
  %105 = load double, double* %yresolution, align 8
  %cmp203 = fcmp ogt double %105, 5.000000e-03
  br i1 %cmp203, label %if.then.205, label %if.end.214

if.then.205:                                      ; preds = %land.lhs.true.202
  %106 = load double, double* %xresolution, align 8
  %mul206 = fmul double %106, 1.000000e+02
  %div207 = fdiv double %mul206, 2.540000e+00
  %add208 = fadd double %div207, 5.000000e-01
  %conv209 = fptosi double %add208 to i64
  store i64 %conv209, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 6), align 8
  %107 = load double, double* %yresolution, align 8
  %mul210 = fmul double %107, 1.000000e+02
  %div211 = fdiv double %mul210, 2.540000e+00
  %add212 = fadd double %div211, 5.000000e-01
  %conv213 = fptosi double %add212 to i64
  store i64 %conv213, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 7), align 8
  br label %if.end.214

if.end.214:                                       ; preds = %if.then.205, %land.lhs.true.202, %if.end.196
  %108 = load i64, i64* %BitsPerPixel, align 8
  %cmp215 = icmp sle i64 %108, 8
  br i1 %cmp215, label %if.then.217, label %if.else.219

if.then.217:                                      ; preds = %if.end.214
  %109 = load i32, i32* %colors, align 4
  %conv218 = sext i32 %109 to i64
  store i64 %conv218, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 8), align 8
  br label %if.end.220

if.else.219:                                      ; preds = %if.end.214
  store i64 0, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 8), align 8
  br label %if.end.220

if.end.220:                                       ; preds = %if.else.219, %if.then.217
  %110 = load i64, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 8), align 8
  store i64 %110, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 9), align 8
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call221 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i64 2, i64 1, %struct._IO_FILE* %111)
  %112 = load i64, i64* getelementptr inbounds (%struct.Bitmap_File_Head_Struct, %struct.Bitmap_File_Head_Struct* @Bitmap_File_Head, i32 0, i32 1), align 8
  %conv222 = trunc i64 %112 to i32
  %arrayidx223 = getelementptr inbounds [128 x i8], [128 x i8]* %puffer, i32 0, i64 0
  call void @FromL(i32 %conv222, i8* %arrayidx223)
  %113 = load i16, i16* getelementptr inbounds (%struct.Bitmap_File_Head_Struct, %struct.Bitmap_File_Head_Struct* @Bitmap_File_Head, i32 0, i32 2), align 2
  %arrayidx224 = getelementptr inbounds [128 x i8], [128 x i8]* %puffer, i32 0, i64 4
  call void @FromS(i16 signext %113, i8* %arrayidx224)
  %114 = load i16, i16* getelementptr inbounds (%struct.Bitmap_File_Head_Struct, %struct.Bitmap_File_Head_Struct* @Bitmap_File_Head, i32 0, i32 3), align 2
  %arrayidx225 = getelementptr inbounds [128 x i8], [128 x i8]* %puffer, i32 0, i64 6
  call void @FromS(i16 signext %114, i8* %arrayidx225)
  %115 = load i64, i64* getelementptr inbounds (%struct.Bitmap_File_Head_Struct, %struct.Bitmap_File_Head_Struct* @Bitmap_File_Head, i32 0, i32 4), align 8
  %conv226 = trunc i64 %115 to i32
  %arrayidx227 = getelementptr inbounds [128 x i8], [128 x i8]* %puffer, i32 0, i64 8
  call void @FromL(i32 %conv226, i8* %arrayidx227)
  %116 = load i64, i64* getelementptr inbounds (%struct.Bitmap_File_Head_Struct, %struct.Bitmap_File_Head_Struct* @Bitmap_File_Head, i32 0, i32 5), align 8
  %conv228 = trunc i64 %116 to i32
  %arrayidx229 = getelementptr inbounds [128 x i8], [128 x i8]* %puffer, i32 0, i64 12
  call void @FromL(i32 %conv228, i8* %arrayidx229)
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %puffer, i32 0, i32 0
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call230 = call i64 @fwrite(i8* %arraydecay, i64 16, i64 1, %struct._IO_FILE* %117)
  %118 = load i64, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 0), align 8
  %conv231 = trunc i64 %118 to i32
  %arrayidx232 = getelementptr inbounds [128 x i8], [128 x i8]* %puffer, i32 0, i64 0
  call void @FromL(i32 %conv231, i8* %arrayidx232)
  %119 = load i64, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 1), align 8
  %conv233 = trunc i64 %119 to i32
  %arrayidx234 = getelementptr inbounds [128 x i8], [128 x i8]* %puffer, i32 0, i64 4
  call void @FromL(i32 %conv233, i8* %arrayidx234)
  %120 = load i16, i16* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 2), align 2
  %arrayidx235 = getelementptr inbounds [128 x i8], [128 x i8]* %puffer, i32 0, i64 8
  call void @FromS(i16 signext %120, i8* %arrayidx235)
  %121 = load i16, i16* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 3), align 2
  %arrayidx236 = getelementptr inbounds [128 x i8], [128 x i8]* %puffer, i32 0, i64 10
  call void @FromS(i16 signext %121, i8* %arrayidx236)
  %122 = load i64, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 4), align 8
  %conv237 = trunc i64 %122 to i32
  %arrayidx238 = getelementptr inbounds [128 x i8], [128 x i8]* %puffer, i32 0, i64 12
  call void @FromL(i32 %conv237, i8* %arrayidx238)
  %123 = load i64, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 5), align 8
  %conv239 = trunc i64 %123 to i32
  %arrayidx240 = getelementptr inbounds [128 x i8], [128 x i8]* %puffer, i32 0, i64 16
  call void @FromL(i32 %conv239, i8* %arrayidx240)
  %124 = load i64, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 6), align 8
  %conv241 = trunc i64 %124 to i32
  %arrayidx242 = getelementptr inbounds [128 x i8], [128 x i8]* %puffer, i32 0, i64 20
  call void @FromL(i32 %conv241, i8* %arrayidx242)
  %125 = load i64, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 7), align 8
  %conv243 = trunc i64 %125 to i32
  %arrayidx244 = getelementptr inbounds [128 x i8], [128 x i8]* %puffer, i32 0, i64 24
  call void @FromL(i32 %conv243, i8* %arrayidx244)
  %126 = load i64, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 8), align 8
  %conv245 = trunc i64 %126 to i32
  %arrayidx246 = getelementptr inbounds [128 x i8], [128 x i8]* %puffer, i32 0, i64 28
  call void @FromL(i32 %conv245, i8* %arrayidx246)
  %127 = load i64, i64* getelementptr inbounds (%struct.Bitmap_Head_Struct, %struct.Bitmap_Head_Struct* @Bitmap_Head, i32 0, i32 9), align 8
  %conv247 = trunc i64 %127 to i32
  %arrayidx248 = getelementptr inbounds [128 x i8], [128 x i8]* %puffer, i32 0, i64 32
  call void @FromL(i32 %conv247, i8* %arrayidx248)
  %arraydecay249 = getelementptr inbounds [128 x i8], [128 x i8]* %puffer, i32 0, i32 0
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call250 = call i64 @fwrite(i8* %arraydecay249, i64 36, i64 1, %struct._IO_FILE* %128)
  %129 = load i32, i32* %mask_info_size, align 4
  %cmp251 = icmp sgt i32 %129, 0
  br i1 %cmp251, label %if.then.253, label %if.end.292

if.then.253:                                      ; preds = %if.end.220
  %130 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @BMPSaveData, i32 0, i32 0), align 4
  switch i32 %130, label %sw.default.254 [
    i32 3, label %sw.bb.255
    i32 5, label %sw.bb.255
    i32 4, label %sw.bb.260
    i32 0, label %sw.bb.265
    i32 1, label %sw.bb.270
    i32 2, label %sw.bb.275
  ]

sw.default.254:                                   ; preds = %if.then.253
  br label %sw.bb.255

sw.bb.255:                                        ; preds = %if.then.253, %if.then.253, %sw.default.254
  %arrayidx256 = getelementptr inbounds [4 x i32], [4 x i32]* %Mask, i32 0, i64 0
  store i32 -16777216, i32* %arrayidx256, align 4
  %arrayidx257 = getelementptr inbounds [4 x i32], [4 x i32]* %Mask, i32 0, i64 1
  store i32 16711680, i32* %arrayidx257, align 4
  %arrayidx258 = getelementptr inbounds [4 x i32], [4 x i32]* %Mask, i32 0, i64 2
  store i32 65280, i32* %arrayidx258, align 4
  %arrayidx259 = getelementptr inbounds [4 x i32], [4 x i32]* %Mask, i32 0, i64 3
  store i32 0, i32* %arrayidx259, align 4
  br label %sw.epilog.280

sw.bb.260:                                        ; preds = %if.then.253
  %arrayidx261 = getelementptr inbounds [4 x i32], [4 x i32]* %Mask, i32 0, i64 0
  store i32 -16777216, i32* %arrayidx261, align 4
  %arrayidx262 = getelementptr inbounds [4 x i32], [4 x i32]* %Mask, i32 0, i64 1
  store i32 16711680, i32* %arrayidx262, align 4
  %arrayidx263 = getelementptr inbounds [4 x i32], [4 x i32]* %Mask, i32 0, i64 2
  store i32 65280, i32* %arrayidx263, align 4
  %arrayidx264 = getelementptr inbounds [4 x i32], [4 x i32]* %Mask, i32 0, i64 3
  store i32 255, i32* %arrayidx264, align 4
  br label %sw.epilog.280

sw.bb.265:                                        ; preds = %if.then.253
  %arrayidx266 = getelementptr inbounds [4 x i32], [4 x i32]* %Mask, i32 0, i64 0
  store i32 63488, i32* %arrayidx266, align 4
  %arrayidx267 = getelementptr inbounds [4 x i32], [4 x i32]* %Mask, i32 0, i64 1
  store i32 2016, i32* %arrayidx267, align 4
  %arrayidx268 = getelementptr inbounds [4 x i32], [4 x i32]* %Mask, i32 0, i64 2
  store i32 31, i32* %arrayidx268, align 4
  %arrayidx269 = getelementptr inbounds [4 x i32], [4 x i32]* %Mask, i32 0, i64 3
  store i32 0, i32* %arrayidx269, align 4
  br label %sw.epilog.280

sw.bb.270:                                        ; preds = %if.then.253
  %arrayidx271 = getelementptr inbounds [4 x i32], [4 x i32]* %Mask, i32 0, i64 0
  store i32 31744, i32* %arrayidx271, align 4
  %arrayidx272 = getelementptr inbounds [4 x i32], [4 x i32]* %Mask, i32 0, i64 1
  store i32 992, i32* %arrayidx272, align 4
  %arrayidx273 = getelementptr inbounds [4 x i32], [4 x i32]* %Mask, i32 0, i64 2
  store i32 31, i32* %arrayidx273, align 4
  %arrayidx274 = getelementptr inbounds [4 x i32], [4 x i32]* %Mask, i32 0, i64 3
  store i32 32768, i32* %arrayidx274, align 4
  br label %sw.epilog.280

sw.bb.275:                                        ; preds = %if.then.253
  %arrayidx276 = getelementptr inbounds [4 x i32], [4 x i32]* %Mask, i32 0, i64 0
  store i32 31744, i32* %arrayidx276, align 4
  %arrayidx277 = getelementptr inbounds [4 x i32], [4 x i32]* %Mask, i32 0, i64 1
  store i32 992, i32* %arrayidx277, align 4
  %arrayidx278 = getelementptr inbounds [4 x i32], [4 x i32]* %Mask, i32 0, i64 2
  store i32 31, i32* %arrayidx278, align 4
  %arrayidx279 = getelementptr inbounds [4 x i32], [4 x i32]* %Mask, i32 0, i64 3
  store i32 0, i32* %arrayidx279, align 4
  br label %sw.epilog.280

sw.epilog.280:                                    ; preds = %sw.bb.275, %sw.bb.270, %sw.bb.265, %sw.bb.260, %sw.bb.255
  %arrayidx281 = getelementptr inbounds [4 x i32], [4 x i32]* %Mask, i32 0, i64 0
  %131 = load i32, i32* %arrayidx281, align 4
  %arrayidx282 = getelementptr inbounds [128 x i8], [128 x i8]* %puffer, i32 0, i64 0
  call void @FromL(i32 %131, i8* %arrayidx282)
  %arrayidx283 = getelementptr inbounds [4 x i32], [4 x i32]* %Mask, i32 0, i64 1
  %132 = load i32, i32* %arrayidx283, align 4
  %arrayidx284 = getelementptr inbounds [128 x i8], [128 x i8]* %puffer, i32 0, i64 4
  call void @FromL(i32 %132, i8* %arrayidx284)
  %arrayidx285 = getelementptr inbounds [4 x i32], [4 x i32]* %Mask, i32 0, i64 2
  %133 = load i32, i32* %arrayidx285, align 4
  %arrayidx286 = getelementptr inbounds [128 x i8], [128 x i8]* %puffer, i32 0, i64 8
  call void @FromL(i32 %133, i8* %arrayidx286)
  %arrayidx287 = getelementptr inbounds [4 x i32], [4 x i32]* %Mask, i32 0, i64 3
  %134 = load i32, i32* %arrayidx287, align 4
  %arrayidx288 = getelementptr inbounds [128 x i8], [128 x i8]* %puffer, i32 0, i64 12
  call void @FromL(i32 %134, i8* %arrayidx288)
  %arraydecay289 = getelementptr inbounds [128 x i8], [128 x i8]* %puffer, i32 0, i32 0
  %135 = load i32, i32* %mask_info_size, align 4
  %conv290 = sext i32 %135 to i64
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call291 = call i64 @fwrite(i8* %arraydecay289, i64 %conv290, i64 1, %struct._IO_FILE* %136)
  br label %if.end.292

if.end.292:                                       ; preds = %sw.epilog.280, %if.end.220
  %137 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @BMPSaveData, i32 0, i32 2), align 4
  %tobool293 = icmp ne i32 %137, 0
  br i1 %tobool293, label %if.end.316, label %if.then.294

if.then.294:                                      ; preds = %if.end.292
  %arrayidx295 = getelementptr inbounds [128 x i8], [128 x i8]* %puffer, i32 0, i64 0
  call void @FromL(i32 1934772034, i8* %arrayidx295)
  store i32 0, i32* %i, align 4
  br label %for.cond.296

for.cond.296:                                     ; preds = %for.inc.303, %if.then.294
  %138 = load i32, i32* %i, align 4
  %cmp297 = icmp slt i32 %138, 36
  br i1 %cmp297, label %for.body.299, label %for.end.305

for.body.299:                                     ; preds = %for.cond.296
  %139 = load i32, i32* %i, align 4
  %add300 = add nsw i32 4, %139
  %idxprom301 = sext i32 %add300 to i64
  %arrayidx302 = getelementptr inbounds [128 x i8], [128 x i8]* %puffer, i32 0, i64 %idxprom301
  store i8 0, i8* %arrayidx302, align 1
  br label %for.inc.303

for.inc.303:                                      ; preds = %for.body.299
  %140 = load i32, i32* %i, align 4
  %inc304 = add nsw i32 %140, 1
  store i32 %inc304, i32* %i, align 4
  br label %for.cond.296

for.end.305:                                      ; preds = %for.cond.296
  %arrayidx306 = getelementptr inbounds [128 x i8], [128 x i8]* %puffer, i32 0, i64 40
  call void @FromL(i32 0, i8* %arrayidx306)
  %arrayidx307 = getelementptr inbounds [128 x i8], [128 x i8]* %puffer, i32 0, i64 44
  call void @FromL(i32 0, i8* %arrayidx307)
  %arrayidx308 = getelementptr inbounds [128 x i8], [128 x i8]* %puffer, i32 0, i64 48
  call void @FromL(i32 0, i8* %arrayidx308)
  %arrayidx309 = getelementptr inbounds [128 x i8], [128 x i8]* %puffer, i32 0, i64 52
  call void @FromL(i32 2, i8* %arrayidx309)
  %arrayidx310 = getelementptr inbounds [128 x i8], [128 x i8]* %puffer, i32 0, i64 56
  call void @FromL(i32 0, i8* %arrayidx310)
  %arrayidx311 = getelementptr inbounds [128 x i8], [128 x i8]* %puffer, i32 0, i64 60
  call void @FromL(i32 0, i8* %arrayidx311)
  %arrayidx312 = getelementptr inbounds [128 x i8], [128 x i8]* %puffer, i32 0, i64 64
  call void @FromL(i32 0, i8* %arrayidx312)
  %arraydecay313 = getelementptr inbounds [128 x i8], [128 x i8]* %puffer, i32 0, i32 0
  %141 = load i32, i32* %color_space_size, align 4
  %conv314 = sext i32 %141 to i64
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call315 = call i64 @fwrite(i8* %arraydecay313, i64 %conv314, i64 1, %struct._IO_FILE* %142)
  br label %if.end.316

if.end.316:                                       ; preds = %for.end.305, %if.end.292
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %arraydecay317 = getelementptr inbounds [256 x i32], [256 x i32]* %Red, i32 0, i32 0
  %arraydecay318 = getelementptr inbounds [256 x i32], [256 x i32]* %Green, i32 0, i32 0
  %arraydecay319 = getelementptr inbounds [256 x i32], [256 x i32]* %Blue, i32 0, i32 0
  %144 = load i32, i32* %MapSize, align 4
  call void @write_color_map(%struct._IO_FILE* %143, i32* %arraydecay317, i32* %arraydecay318, i32* %arraydecay319, i32 %144)
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %146 = load i8*, i8** %pixels, align 8
  %147 = load i32, i32* %cols, align 4
  %148 = load i32, i32* %rows, align 4
  %149 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @BMPSaveData, i32 0, i32 1), align 4
  %150 = load i32, i32* %channels, align 4
  %151 = load i64, i64* %BitsPerPixel, align 8
  %conv320 = trunc i64 %151 to i32
  %152 = load i32, i32* %SpZeile, align 4
  %153 = load i32, i32* %MapSize, align 4
  %154 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @BMPSaveData, i32 0, i32 0), align 4
  %155 = load i32, i32* %mask_info_size, align 4
  %156 = load i32, i32* %color_space_size, align 4
  call void @write_image(%struct._IO_FILE* %145, i8* %146, i32 %147, i32 %148, i32 %149, i32 %150, i32 %conv320, i32 %152, i32 %153, i32 %154, i32 %155, i32 %156)
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call321 = call i32 @fclose(%struct._IO_FILE* %157)
  %158 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %158)
  %159 = load i8*, i8** %pixels, align 8
  call void @g_free(i8* %159)
  store i32 3, i32* %retval
  br label %return

return:                                           ; preds = %if.end.316, %if.then.100, %do.body.92, %if.then.83, %if.then.70, %if.then.23, %if.then
  %160 = load i32, i32* %retval
  ret i32 %160
}

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare i32 @gimp_drawable_type(i32) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @warning_dialog(i8* %primary, i8* %secondary) #0 {
entry:
  %primary.addr = alloca i8*, align 8
  %secondary.addr = alloca i8*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %ok = alloca i32, align 4
  store i8* %primary, i8** %primary.addr, align 8
  store i8* %secondary, i8** %secondary.addr, align 8
  %0 = load i8*, i8** %primary.addr, align 8
  %call = call %struct._GtkWidget* (%struct._GtkWindow*, i32, i32, i32, i8*, ...) @gtk_message_dialog_new(%struct._GtkWindow* null, i32 0, i32 1, i32 5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* %0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %dialog, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_message_dialog_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkMessageDialog*
  %4 = load i8*, i8** %secondary.addr, align 8
  call void (%struct._GtkMessageDialog*, i8*, ...) @gtk_message_dialog_format_secondary_text(%struct._GtkMessageDialog* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* %4)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_window_get_type() #8
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %7)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_dialog_get_type() #8
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkDialog*
  %call7 = call i32 @gtk_dialog_run(%struct._GtkDialog* %10)
  %cmp = icmp eq i32 %call7, -5
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %ok, align 4
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %11)
  %12 = load i32, i32* %ok, align 4
  ret i32 %12
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare i8* @gimp_image_get_colormap(i32, i32*) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #3

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @save_dialog(i32 %channels) #0 {
entry:
  %channels.addr = alloca i32, align 4
  %dialog = alloca %struct._GtkWidget*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  %vbox_main = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %vbox2 = alloca %struct._GtkWidget*, align 8
  %expander = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %group = alloca %struct._GSList*, align 8
  %run = alloca i32, align 4
  store i32 %channels, i32* %channels.addr, align 4
  %call = call %struct._GtkWidget* @gimp_export_dialog_new(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* %call, %struct._GtkWidget** %dialog, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_window_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWindow*
  call void @gtk_window_set_resizable(%struct._GtkWindow* %2, i32 0)
  %call3 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %vbox_main, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox_main, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_container_get_type() #8
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call4)
  %5 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %5, i32 12)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %call6 = call %struct._GtkWidget* @gimp_export_dialog_get_content_area(%struct._GtkWidget* %6)
  %7 = bitcast %struct._GtkWidget* %call6 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_box_get_type() #8
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call7)
  %8 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkBox*
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox_main, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %8, %struct._GtkWidget* %9, i32 1, i32 1, i32 0)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox_main, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %10)
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0)) #5
  %call10 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call9)
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %toggle, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox_main, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_box_get_type() #8
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call11)
  %13 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkBox*
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %13, %struct._GtkWidget* %14, i32 0, i32 0, i32 0)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_toggle_button_get_type() #8
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call13)
  %17 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkToggleButton*
  %18 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @BMPSaveData, i32 0, i32 1), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %17, i32 %18)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %19)
  %20 = load i32, i32* %channels.addr, align 4
  %cmp = icmp sgt i32 %20, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %21, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %23 = bitcast %struct._GtkWidget* %22 to i8*
  %call15 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.anon, %struct.anon* @BMPSaveData, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i32 0, i32 0)) #5
  %call17 = call %struct._GtkWidget* @gtk_expander_new_with_mnemonic(i8* %call16)
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %expander, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox_main, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_box_get_type() #8
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call18)
  %26 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkBox*
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %expander, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %26, %struct._GtkWidget* %27, i32 1, i32 1, i32 0)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %expander, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %28)
  %call20 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %vbox2, align 8
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_container_get_type() #8
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call21)
  %31 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %31, i32 12)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %expander, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_container_get_type() #8
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call23)
  %34 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkContainer*
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  call void @gtk_container_add(%struct._GtkContainer* %34, %struct._GtkWidget* %35)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %36)
  %call25 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i32 0, i32 0)) #5
  %call26 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call25)
  store %struct._GtkWidget* %call26, %struct._GtkWidget** %toggle, align 8
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([215 x i8], [215 x i8]* @.str.16, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %37, i8* %call27, i8* null)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_box_get_type() #8
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call28)
  %40 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkBox*
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %40, %struct._GtkWidget* %41, i32 0, i32 0, i32 0)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_toggle_button_get_type() #8
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call30)
  %44 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkToggleButton*
  %45 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @BMPSaveData, i32 0, i32 2), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %44, i32 %45)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %46)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %48 = bitcast %struct._GtkWidget* %47 to i8*
  %call32 = call i64 @g_signal_connect_data(i8* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.anon, %struct.anon* @BMPSaveData, i32 0, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0)) #5
  %call34 = call %struct._GtkWidget* @gtk_expander_new_with_mnemonic(i8* %call33)
  store %struct._GtkWidget* %call34, %struct._GtkWidget** %expander, align 8
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox_main, align 8
  %50 = bitcast %struct._GtkWidget* %49 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_box_get_type() #8
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call35)
  %51 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkBox*
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %expander, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %51, %struct._GtkWidget* %52, i32 1, i32 1, i32 0)
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %expander, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %53)
  %54 = load i32, i32* %channels.addr, align 4
  %cmp37 = icmp slt i32 %54, 3
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %expander, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %55, i32 0)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %if.end
  %call40 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call40, %struct._GtkWidget** %vbox2, align 8
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %57 = bitcast %struct._GtkWidget* %56 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_container_get_type() #8
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call41)
  %58 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %58, i32 12)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %expander, align 8
  %60 = bitcast %struct._GtkWidget* %59 to %struct._GTypeInstance*
  %call43 = call i64 @gtk_container_get_type() #8
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call43)
  %61 = bitcast %struct._GTypeInstance* %call44 to %struct._GtkContainer*
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  call void @gtk_container_add(%struct._GtkContainer* %61, %struct._GtkWidget* %62)
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %63)
  store %struct._GSList* null, %struct._GSList** %group, align 8
  %call45 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0)) #5
  %call46 = call %struct._GtkWidget* @gimp_frame_new(i8* %call45)
  store %struct._GtkWidget* %call46, %struct._GtkWidget** %frame, align 8
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %65 = bitcast %struct._GtkWidget* %64 to %struct._GTypeInstance*
  %call47 = call i64 @gtk_box_get_type() #8
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call47)
  %66 = bitcast %struct._GTypeInstance* %call48 to %struct._GtkBox*
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %66, %struct._GtkWidget* %67, i32 1, i32 1, i32 0)
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %68)
  %call49 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call49, %struct._GtkWidget** %vbox, align 8
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %70 = bitcast %struct._GtkWidget* %69 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_container_get_type() #8
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 %call50)
  %71 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkContainer*
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %71, %struct._GtkWidget* %72)
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %73)
  %74 = load %struct._GSList*, %struct._GSList** %group, align 8
  %call52 = call %struct._GtkWidget* @gtk_radio_button_new_with_label(%struct._GSList* %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0))
  store %struct._GtkWidget* %call52, %struct._GtkWidget** %toggle, align 8
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %76 = bitcast %struct._GtkWidget* %75 to %struct._GTypeInstance*
  %call53 = call i64 @gtk_radio_button_get_type() #8
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call53)
  %77 = bitcast %struct._GTypeInstance* %call54 to %struct._GtkRadioButton*
  %call55 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %77)
  store %struct._GSList* %call55, %struct._GSList** %group, align 8
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %79 = bitcast %struct._GtkWidget* %78 to %struct._GTypeInstance*
  %call56 = call i64 @gtk_box_get_type() #8
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call56)
  %80 = bitcast %struct._GTypeInstance* %call57 to %struct._GtkBox*
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %80, %struct._GtkWidget* %81, i32 0, i32 0, i32 0)
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %82)
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %84 = bitcast %struct._GtkWidget* %83 to i8*
  %call58 = call i64 @g_signal_connect_data(i8* %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkToggleButton*, i8*)* @format_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %85 = load %struct._GSList*, %struct._GSList** %group, align 8
  %call59 = call %struct._GtkWidget* @gtk_radio_button_new_with_label(%struct._GSList* %85, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0))
  store %struct._GtkWidget* %call59, %struct._GtkWidget** %toggle, align 8
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %87 = bitcast %struct._GtkWidget* %86 to %struct._GTypeInstance*
  %call60 = call i64 @gtk_radio_button_get_type() #8
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %87, i64 %call60)
  %88 = bitcast %struct._GTypeInstance* %call61 to %struct._GtkRadioButton*
  %call62 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %88)
  store %struct._GSList* %call62, %struct._GSList** %group, align 8
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %90 = bitcast %struct._GtkWidget* %89 to %struct._GTypeInstance*
  %call63 = call i64 @gtk_box_get_type() #8
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %90, i64 %call63)
  %91 = bitcast %struct._GTypeInstance* %call64 to %struct._GtkBox*
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %91, %struct._GtkWidget* %92, i32 0, i32 0, i32 0)
  %93 = load i32, i32* %channels.addr, align 4
  %cmp65 = icmp slt i32 %93, 4
  br i1 %cmp65, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.end.39
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %94, i32 0)
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.66, %if.end.39
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %95)
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %97 = bitcast %struct._GtkWidget* %96 to i8*
  %call68 = call i64 @g_signal_connect_data(i8* %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkToggleButton*, i8*)* @format_callback to void ()*), i8* inttoptr (i64 1 to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %98 = load %struct._GSList*, %struct._GSList** %group, align 8
  %call69 = call %struct._GtkWidget* @gtk_radio_button_new_with_label(%struct._GSList* %98, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0))
  store %struct._GtkWidget* %call69, %struct._GtkWidget** %toggle, align 8
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %100 = bitcast %struct._GtkWidget* %99 to %struct._GTypeInstance*
  %call70 = call i64 @gtk_radio_button_get_type() #8
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %100, i64 %call70)
  %101 = bitcast %struct._GTypeInstance* %call71 to %struct._GtkRadioButton*
  %call72 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %101)
  store %struct._GSList* %call72, %struct._GSList** %group, align 8
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %103 = bitcast %struct._GtkWidget* %102 to %struct._GTypeInstance*
  %call73 = call i64 @gtk_box_get_type() #8
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %103, i64 %call73)
  %104 = bitcast %struct._GTypeInstance* %call74 to %struct._GtkBox*
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %104, %struct._GtkWidget* %105, i32 0, i32 0, i32 0)
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %106)
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %108 = bitcast %struct._GtkWidget* %107 to i8*
  %call75 = call i64 @g_signal_connect_data(i8* %108, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkToggleButton*, i8*)* @format_callback to void ()*), i8* inttoptr (i64 2 to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call76 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0)) #5
  %call77 = call %struct._GtkWidget* @gimp_frame_new(i8* %call76)
  store %struct._GtkWidget* %call77, %struct._GtkWidget** %frame, align 8
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %110 = bitcast %struct._GtkWidget* %109 to %struct._GTypeInstance*
  %call78 = call i64 @gtk_box_get_type() #8
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %110, i64 %call78)
  %111 = bitcast %struct._GTypeInstance* %call79 to %struct._GtkBox*
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %111, %struct._GtkWidget* %112, i32 0, i32 0, i32 0)
  %113 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %113)
  %114 = load %struct._GSList*, %struct._GSList** %group, align 8
  %call80 = call %struct._GtkWidget* @gtk_radio_button_new_with_label(%struct._GSList* %114, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0))
  store %struct._GtkWidget* %call80, %struct._GtkWidget** %toggle, align 8
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %116 = bitcast %struct._GtkWidget* %115 to %struct._GTypeInstance*
  %call81 = call i64 @gtk_radio_button_get_type() #8
  %call82 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %116, i64 %call81)
  %117 = bitcast %struct._GTypeInstance* %call82 to %struct._GtkRadioButton*
  %call83 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %117)
  store %struct._GSList* %call83, %struct._GSList** %group, align 8
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %119 = bitcast %struct._GtkWidget* %118 to %struct._GTypeInstance*
  %call84 = call i64 @gtk_container_get_type() #8
  %call85 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %119, i64 %call84)
  %120 = bitcast %struct._GTypeInstance* %call85 to %struct._GtkContainer*
  %121 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_container_add(%struct._GtkContainer* %120, %struct._GtkWidget* %121)
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %122)
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %124 = bitcast %struct._GtkWidget* %123 to i8*
  %call86 = call i64 @g_signal_connect_data(i8* %124, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkToggleButton*, i8*)* @format_callback to void ()*), i8* inttoptr (i64 3 to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %125 = load i32, i32* %channels.addr, align 4
  %cmp87 = icmp slt i32 %125, 4
  br i1 %cmp87, label %if.then.88, label %if.end.91

if.then.88:                                       ; preds = %if.end.67
  store i32 3, i32* getelementptr inbounds (%struct.anon, %struct.anon* @BMPSaveData, i32 0, i32 0), align 4
  %126 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %127 = bitcast %struct._GtkWidget* %126 to %struct._GTypeInstance*
  %call89 = call i64 @gtk_toggle_button_get_type() #8
  %call90 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %127, i64 %call89)
  %128 = bitcast %struct._GTypeInstance* %call90 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %128, i32 1)
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.88, %if.end.67
  %call92 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0)) #5
  %call93 = call %struct._GtkWidget* @gimp_frame_new(i8* %call92)
  store %struct._GtkWidget* %call93, %struct._GtkWidget** %frame, align 8
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %130 = bitcast %struct._GtkWidget* %129 to %struct._GTypeInstance*
  %call94 = call i64 @gtk_box_get_type() #8
  %call95 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %130, i64 %call94)
  %131 = bitcast %struct._GTypeInstance* %call95 to %struct._GtkBox*
  %132 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %131, %struct._GtkWidget* %132, i32 0, i32 0, i32 0)
  %133 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %133)
  %call96 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call96, %struct._GtkWidget** %vbox, align 8
  %134 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %135 = bitcast %struct._GtkWidget* %134 to %struct._GTypeInstance*
  %call97 = call i64 @gtk_container_get_type() #8
  %call98 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %135, i64 %call97)
  %136 = bitcast %struct._GTypeInstance* %call98 to %struct._GtkContainer*
  %137 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %136, %struct._GtkWidget* %137)
  %138 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %138)
  %139 = load %struct._GSList*, %struct._GSList** %group, align 8
  %call99 = call %struct._GtkWidget* @gtk_radio_button_new_with_label(%struct._GSList* %139, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0))
  store %struct._GtkWidget* %call99, %struct._GtkWidget** %toggle, align 8
  %140 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %141 = bitcast %struct._GtkWidget* %140 to %struct._GTypeInstance*
  %call100 = call i64 @gtk_radio_button_get_type() #8
  %call101 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %141, i64 %call100)
  %142 = bitcast %struct._GTypeInstance* %call101 to %struct._GtkRadioButton*
  %call102 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %142)
  store %struct._GSList* %call102, %struct._GSList** %group, align 8
  %143 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %144 = bitcast %struct._GtkWidget* %143 to %struct._GTypeInstance*
  %call103 = call i64 @gtk_box_get_type() #8
  %call104 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %144, i64 %call103)
  %145 = bitcast %struct._GTypeInstance* %call104 to %struct._GtkBox*
  %146 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %145, %struct._GtkWidget* %146, i32 0, i32 0, i32 0)
  %147 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %147)
  %148 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %149 = bitcast %struct._GtkWidget* %148 to i8*
  %call105 = call i64 @g_signal_connect_data(i8* %149, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkToggleButton*, i8*)* @format_callback to void ()*), i8* inttoptr (i64 4 to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %150 = load i32, i32* %channels.addr, align 4
  %cmp106 = icmp slt i32 %150, 4
  br i1 %cmp106, label %if.then.107, label %if.else

if.then.107:                                      ; preds = %if.end.91
  %151 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %151, i32 0)
  br label %if.end.110

if.else:                                          ; preds = %if.end.91
  store i32 4, i32* getelementptr inbounds (%struct.anon, %struct.anon* @BMPSaveData, i32 0, i32 0), align 4
  %152 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %153 = bitcast %struct._GtkWidget* %152 to %struct._GTypeInstance*
  %call108 = call i64 @gtk_toggle_button_get_type() #8
  %call109 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %153, i64 %call108)
  %154 = bitcast %struct._GTypeInstance* %call109 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %154, i32 1)
  br label %if.end.110

if.end.110:                                       ; preds = %if.else, %if.then.107
  %155 = load %struct._GSList*, %struct._GSList** %group, align 8
  %call111 = call %struct._GtkWidget* @gtk_radio_button_new_with_label(%struct._GSList* %155, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0))
  store %struct._GtkWidget* %call111, %struct._GtkWidget** %toggle, align 8
  %156 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %157 = bitcast %struct._GtkWidget* %156 to %struct._GTypeInstance*
  %call112 = call i64 @gtk_radio_button_get_type() #8
  %call113 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %157, i64 %call112)
  %158 = bitcast %struct._GTypeInstance* %call113 to %struct._GtkRadioButton*
  %call114 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %158)
  store %struct._GSList* %call114, %struct._GSList** %group, align 8
  %159 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %160 = bitcast %struct._GtkWidget* %159 to %struct._GTypeInstance*
  %call115 = call i64 @gtk_box_get_type() #8
  %call116 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %160, i64 %call115)
  %161 = bitcast %struct._GTypeInstance* %call116 to %struct._GtkBox*
  %162 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %161, %struct._GtkWidget* %162, i32 0, i32 0, i32 0)
  %163 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %163)
  %164 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %165 = bitcast %struct._GtkWidget* %164 to i8*
  %call117 = call i64 @g_signal_connect_data(i8* %165, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkToggleButton*, i8*)* @format_callback to void ()*), i8* inttoptr (i64 5 to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %166 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %166)
  %167 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %168 = bitcast %struct._GtkWidget* %167 to %struct._GTypeInstance*
  %call118 = call i64 @gimp_dialog_get_type() #8
  %call119 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %168, i64 %call118)
  %169 = bitcast %struct._GTypeInstance* %call119 to %struct._GimpDialog*
  %call120 = call i32 @gimp_dialog_run(%struct._GimpDialog* %169)
  %cmp121 = icmp eq i32 %call120, -5
  %conv = zext i1 %cmp121 to i32
  store i32 %conv, i32* %run, align 4
  %170 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %170)
  %171 = load i32, i32* %run, align 4
  ret i32 %171
}

declare void @g_log(i8*, i32, i8*, ...) #1

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #1

declare i32 @g_file_error_quark() #1

declare i32 @g_file_error_from_errno(i32) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

declare i8* @gimp_filename_to_utf8(i8*) #1

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #4

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare i32 @gimp_progress_init_printf(i8*, ...) #1

declare i32 @gimp_image_get_resolution(i32, double*, double*) #1

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @FromL(i32 %wert, i8* %bopuffer) #0 {
entry:
  %wert.addr = alloca i32, align 4
  %bopuffer.addr = alloca i8*, align 8
  store i32 %wert, i32* %wert.addr, align 4
  store i8* %bopuffer, i8** %bopuffer.addr, align 8
  %0 = load i32, i32* %wert.addr, align 4
  %and = and i32 %0, 255
  %conv = trunc i32 %and to i8
  %1 = load i8*, i8** %bopuffer.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  store i8 %conv, i8* %arrayidx, align 1
  %2 = load i32, i32* %wert.addr, align 4
  %shr = ashr i32 %2, 8
  %and1 = and i32 %shr, 255
  %conv2 = trunc i32 %and1 to i8
  %3 = load i8*, i8** %bopuffer.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %3, i64 1
  store i8 %conv2, i8* %arrayidx3, align 1
  %4 = load i32, i32* %wert.addr, align 4
  %shr4 = ashr i32 %4, 16
  %and5 = and i32 %shr4, 255
  %conv6 = trunc i32 %and5 to i8
  %5 = load i8*, i8** %bopuffer.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %5, i64 2
  store i8 %conv6, i8* %arrayidx7, align 1
  %6 = load i32, i32* %wert.addr, align 4
  %shr8 = ashr i32 %6, 24
  %and9 = and i32 %shr8, 255
  %conv10 = trunc i32 %and9 to i8
  %7 = load i8*, i8** %bopuffer.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %7, i64 3
  store i8 %conv10, i8* %arrayidx11, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @FromS(i16 signext %wert, i8* %bopuffer) #0 {
entry:
  %wert.addr = alloca i16, align 2
  %bopuffer.addr = alloca i8*, align 8
  store i16 %wert, i16* %wert.addr, align 2
  store i8* %bopuffer, i8** %bopuffer.addr, align 8
  %0 = load i16, i16* %wert.addr, align 2
  %conv = sext i16 %0 to i32
  %and = and i32 %conv, 255
  %conv1 = trunc i32 %and to i8
  %1 = load i8*, i8** %bopuffer.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  store i8 %conv1, i8* %arrayidx, align 1
  %2 = load i16, i16* %wert.addr, align 2
  %conv2 = sext i16 %2 to i32
  %shr = ashr i32 %conv2, 8
  %and3 = and i32 %shr, 255
  %conv4 = trunc i32 %and3 to i8
  %3 = load i8*, i8** %bopuffer.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %3, i64 1
  store i8 %conv4, i8* %arrayidx5, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_color_map(%struct._IO_FILE* %f, i32* %red, i32* %green, i32* %blue, i32 %size) #0 {
entry:
  %f.addr = alloca %struct._IO_FILE*, align 8
  %red.addr = alloca i32*, align 8
  %green.addr = alloca i32*, align 8
  %blue.addr = alloca i32*, align 8
  %size.addr = alloca i32, align 4
  %trgb = alloca [4 x i8], align 1
  %i = alloca i32, align 4
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store i32* %red, i32** %red.addr, align 8
  store i32* %green, i32** %green.addr, align 8
  store i32* %blue, i32** %blue.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %div = sdiv i32 %0, 4
  store i32 %div, i32* %size.addr, align 4
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %trgb, i32 0, i64 3
  store i8 0, i8* %arrayidx, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %size.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** %blue.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx1, align 4
  %conv = trunc i32 %5 to i8
  %arrayidx2 = getelementptr inbounds [4 x i8], [4 x i8]* %trgb, i32 0, i64 0
  store i8 %conv, i8* %arrayidx2, align 1
  %6 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load i32*, i32** %green.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %7, i64 %idxprom3
  %8 = load i32, i32* %arrayidx4, align 4
  %conv5 = trunc i32 %8 to i8
  %arrayidx6 = getelementptr inbounds [4 x i8], [4 x i8]* %trgb, i32 0, i64 1
  store i8 %conv5, i8* %arrayidx6, align 1
  %9 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %9 to i64
  %10 = load i32*, i32** %red.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %10, i64 %idxprom7
  %11 = load i32, i32* %arrayidx8, align 4
  %conv9 = trunc i32 %11 to i8
  %arrayidx10 = getelementptr inbounds [4 x i8], [4 x i8]* %trgb, i32 0, i64 2
  store i8 %conv9, i8* %arrayidx10, align 1
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %trgb, i32 0, i32 0
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call = call i64 @fwrite(i8* %arraydecay, i64 4, i64 1, %struct._IO_FILE* %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_image(%struct._IO_FILE* %f, i8* %src, i32 %width, i32 %height, i32 %use_run_length_encoding, i32 %channels, i32 %bpp, i32 %spzeile, i32 %MapSize, i32 %rgb_format, i32 %mask_info_size, i32 %color_space_size) #0 {
entry:
  %f.addr = alloca %struct._IO_FILE*, align 8
  %src.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %use_run_length_encoding.addr = alloca i32, align 4
  %channels.addr = alloca i32, align 4
  %bpp.addr = alloca i32, align 4
  %spzeile.addr = alloca i32, align 4
  %MapSize.addr = alloca i32, align 4
  %rgb_format.addr = alloca i32, align 4
  %mask_info_size.addr = alloca i32, align 4
  %color_space_size.addr = alloca i32, align 4
  %buf = alloca [16 x i8], align 16
  %puffer = alloca [8 x i8], align 1
  %temp = alloca i8*, align 8
  %v = alloca i8, align 1
  %row = alloca i8*, align 8
  %ketten = alloca i8*, align 8
  %xpos = alloca i32, align 4
  %ypos = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %rowstride = alloca i32, align 4
  %length = alloca i32, align 4
  %thiswidth = alloca i32, align 4
  %breite = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i8, align 1
  %r = alloca i8, align 1
  %g = alloca i8, align 1
  %b = alloca i8, align 1
  %a = alloca i8, align 1
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %use_run_length_encoding, i32* %use_run_length_encoding.addr, align 4
  store i32 %channels, i32* %channels.addr, align 4
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %spzeile, i32* %spzeile.addr, align 4
  store i32 %MapSize, i32* %MapSize.addr, align 4
  store i32 %rgb_format, i32* %rgb_format.addr, align 4
  store i32 %mask_info_size, i32* %mask_info_size.addr, align 4
  store i32 %color_space_size, i32* %color_space_size.addr, align 4
  %0 = bitcast [16 x i8]* %buf to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @write_image.buf, i32 0, i32 0), i64 16, i32 16, i1 false)
  store i32 0, i32* %xpos, align 4
  %1 = load i32, i32* %width.addr, align 4
  %2 = load i32, i32* %channels.addr, align 4
  %mul = mul nsw i32 %1, %2
  store i32 %mul, i32* %rowstride, align 4
  %3 = load i32, i32* %bpp.addr, align 4
  %cmp = icmp sgt i32 %3, 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %height.addr, align 4
  %sub = sub nsw i32 %4, 1
  store i32 %sub, i32* %ypos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.108, %if.then
  %5 = load i32, i32* %ypos, align 4
  %cmp1 = icmp sge i32 %5, 0
  br i1 %cmp1, label %for.body, label %for.end.109

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %width.addr, align 4
  %cmp3 = icmp slt i32 %6, %7
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %8 = load i8*, i8** %src.addr, align 8
  %9 = load i32, i32* %ypos, align 4
  %10 = load i32, i32* %rowstride, align 4
  %mul5 = mul nsw i32 %9, %10
  %idx.ext = sext i32 %mul5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %idx.ext
  %11 = load i32, i32* %xpos, align 4
  %12 = load i32, i32* %channels.addr, align 4
  %mul6 = mul nsw i32 %11, %12
  %idx.ext7 = sext i32 %mul6 to i64
  %add.ptr8 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext7
  store i8* %add.ptr8, i8** %temp, align 8
  %13 = load i32, i32* %rgb_format.addr, align 4
  switch i32 %13, label %sw.default [
    i32 3, label %sw.bb
    i32 5, label %sw.bb.20
    i32 4, label %sw.bb.42
    i32 0, label %sw.bb.53
    i32 2, label %sw.bb.69
    i32 1, label %sw.bb.85
  ]

sw.default:                                       ; preds = %for.body.4
  br label %sw.bb

sw.bb:                                            ; preds = %for.body.4, %sw.default
  %14 = load i8*, i8** %temp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %temp, align 8
  %15 = load i8, i8* %14, align 1
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 2
  store i8 %15, i8* %arrayidx, align 1
  %16 = load i8*, i8** %temp, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr9, i8** %temp, align 8
  %17 = load i8, i8* %16, align 1
  %arrayidx10 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 1
  store i8 %17, i8* %arrayidx10, align 1
  %18 = load i8*, i8** %temp, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr11, i8** %temp, align 8
  %19 = load i8, i8* %18, align 1
  %arrayidx12 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 0
  store i8 %19, i8* %arrayidx12, align 1
  %20 = load i32, i32* %xpos, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %xpos, align 4
  %21 = load i32, i32* %channels.addr, align 4
  %cmp13 = icmp sgt i32 %21, 3
  br i1 %cmp13, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %22 = load i8*, i8** %temp, align 8
  %23 = load i8, i8* %22, align 1
  %conv = zext i8 %23 to i32
  %cmp14 = icmp eq i32 %conv, 0
  br i1 %cmp14, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %land.lhs.true
  %arrayidx17 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 2
  store i8 -1, i8* %arrayidx17, align 1
  %arrayidx18 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 1
  store i8 -1, i8* %arrayidx18, align 1
  %arrayidx19 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 0
  store i8 -1, i8* %arrayidx19, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.16, %land.lhs.true, %sw.bb
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i32 0
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call = call i64 @fwrite(i8* %arraydecay, i64 3, i64 1, %struct._IO_FILE* %24)
  br label %sw.epilog

sw.bb.20:                                         ; preds = %for.body.4
  %25 = load i8*, i8** %temp, align 8
  %incdec.ptr21 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr21, i8** %temp, align 8
  %26 = load i8, i8* %25, align 1
  %arrayidx22 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 3
  store i8 %26, i8* %arrayidx22, align 1
  %27 = load i8*, i8** %temp, align 8
  %incdec.ptr23 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr23, i8** %temp, align 8
  %28 = load i8, i8* %27, align 1
  %arrayidx24 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 2
  store i8 %28, i8* %arrayidx24, align 1
  %29 = load i8*, i8** %temp, align 8
  %incdec.ptr25 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr25, i8** %temp, align 8
  %30 = load i8, i8* %29, align 1
  %arrayidx26 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 1
  store i8 %30, i8* %arrayidx26, align 1
  %arrayidx27 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 0
  store i8 0, i8* %arrayidx27, align 1
  %31 = load i32, i32* %xpos, align 4
  %inc28 = add nsw i32 %31, 1
  store i32 %inc28, i32* %xpos, align 4
  %32 = load i32, i32* %channels.addr, align 4
  %cmp29 = icmp sgt i32 %32, 3
  br i1 %cmp29, label %land.lhs.true.31, label %if.end.39

land.lhs.true.31:                                 ; preds = %sw.bb.20
  %33 = load i8*, i8** %temp, align 8
  %34 = load i8, i8* %33, align 1
  %conv32 = zext i8 %34 to i32
  %cmp33 = icmp eq i32 %conv32, 0
  br i1 %cmp33, label %if.then.35, label %if.end.39

if.then.35:                                       ; preds = %land.lhs.true.31
  %arrayidx36 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 2
  store i8 -1, i8* %arrayidx36, align 1
  %arrayidx37 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 1
  store i8 -1, i8* %arrayidx37, align 1
  %arrayidx38 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 0
  store i8 -1, i8* %arrayidx38, align 1
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.35, %land.lhs.true.31, %sw.bb.20
  %arraydecay40 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i32 0
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call41 = call i64 @fwrite(i8* %arraydecay40, i64 4, i64 1, %struct._IO_FILE* %35)
  br label %sw.epilog

sw.bb.42:                                         ; preds = %for.body.4
  %36 = load i8*, i8** %temp, align 8
  %incdec.ptr43 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr43, i8** %temp, align 8
  %37 = load i8, i8* %36, align 1
  %arrayidx44 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 3
  store i8 %37, i8* %arrayidx44, align 1
  %38 = load i8*, i8** %temp, align 8
  %incdec.ptr45 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr45, i8** %temp, align 8
  %39 = load i8, i8* %38, align 1
  %arrayidx46 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 2
  store i8 %39, i8* %arrayidx46, align 1
  %40 = load i8*, i8** %temp, align 8
  %incdec.ptr47 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr47, i8** %temp, align 8
  %41 = load i8, i8* %40, align 1
  %arrayidx48 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 1
  store i8 %41, i8* %arrayidx48, align 1
  %42 = load i8*, i8** %temp, align 8
  %43 = load i8, i8* %42, align 1
  %arrayidx49 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 0
  store i8 %43, i8* %arrayidx49, align 1
  %44 = load i32, i32* %xpos, align 4
  %inc50 = add nsw i32 %44, 1
  store i32 %inc50, i32* %xpos, align 4
  %arraydecay51 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i32 0
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call52 = call i64 @fwrite(i8* %arraydecay51, i64 4, i64 1, %struct._IO_FILE* %45)
  br label %sw.epilog

sw.bb.53:                                         ; preds = %for.body.4
  %46 = load i8*, i8** %temp, align 8
  %incdec.ptr54 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr54, i8** %temp, align 8
  %47 = load i8, i8* %46, align 1
  store i8 %47, i8* %r, align 1
  %48 = load i8*, i8** %temp, align 8
  %incdec.ptr55 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr55, i8** %temp, align 8
  %49 = load i8, i8* %48, align 1
  store i8 %49, i8* %g, align 1
  %50 = load i8*, i8** %temp, align 8
  %incdec.ptr56 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr56, i8** %temp, align 8
  %51 = load i8, i8* %50, align 1
  store i8 %51, i8* %b, align 1
  %52 = load i32, i32* %channels.addr, align 4
  %cmp57 = icmp sgt i32 %52, 3
  br i1 %cmp57, label %land.lhs.true.59, label %if.end.64

land.lhs.true.59:                                 ; preds = %sw.bb.53
  %53 = load i8*, i8** %temp, align 8
  %54 = load i8, i8* %53, align 1
  %conv60 = zext i8 %54 to i32
  %cmp61 = icmp eq i32 %conv60, 0
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %land.lhs.true.59
  store i8 -1, i8* %b, align 1
  store i8 -1, i8* %g, align 1
  store i8 -1, i8* %r, align 1
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %land.lhs.true.59, %sw.bb.53
  %55 = load i8, i8* %r, align 1
  %56 = load i8, i8* %g, align 1
  %57 = load i8, i8* %b, align 1
  %arraydecay65 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i32 0
  call void @Make565(i8 zeroext %55, i8 zeroext %56, i8 zeroext %57, i8* %arraydecay65)
  %58 = load i32, i32* %xpos, align 4
  %inc66 = add nsw i32 %58, 1
  store i32 %inc66, i32* %xpos, align 4
  %arraydecay67 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i32 0
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call68 = call i64 @fwrite(i8* %arraydecay67, i64 2, i64 1, %struct._IO_FILE* %59)
  br label %sw.epilog

sw.bb.69:                                         ; preds = %for.body.4
  %60 = load i8*, i8** %temp, align 8
  %incdec.ptr70 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %incdec.ptr70, i8** %temp, align 8
  %61 = load i8, i8* %60, align 1
  store i8 %61, i8* %r, align 1
  %62 = load i8*, i8** %temp, align 8
  %incdec.ptr71 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr71, i8** %temp, align 8
  %63 = load i8, i8* %62, align 1
  store i8 %63, i8* %g, align 1
  %64 = load i8*, i8** %temp, align 8
  %incdec.ptr72 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %incdec.ptr72, i8** %temp, align 8
  %65 = load i8, i8* %64, align 1
  store i8 %65, i8* %b, align 1
  %66 = load i32, i32* %channels.addr, align 4
  %cmp73 = icmp sgt i32 %66, 3
  br i1 %cmp73, label %land.lhs.true.75, label %if.end.80

land.lhs.true.75:                                 ; preds = %sw.bb.69
  %67 = load i8*, i8** %temp, align 8
  %68 = load i8, i8* %67, align 1
  %conv76 = zext i8 %68 to i32
  %cmp77 = icmp eq i32 %conv76, 0
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %land.lhs.true.75
  store i8 -1, i8* %b, align 1
  store i8 -1, i8* %g, align 1
  store i8 -1, i8* %r, align 1
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.79, %land.lhs.true.75, %sw.bb.69
  %69 = load i8, i8* %r, align 1
  %70 = load i8, i8* %g, align 1
  %71 = load i8, i8* %b, align 1
  %arraydecay81 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i32 0
  call void @Make5551(i8 zeroext %69, i8 zeroext %70, i8 zeroext %71, i8 zeroext 0, i8* %arraydecay81)
  %72 = load i32, i32* %xpos, align 4
  %inc82 = add nsw i32 %72, 1
  store i32 %inc82, i32* %xpos, align 4
  %arraydecay83 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i32 0
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call84 = call i64 @fwrite(i8* %arraydecay83, i64 2, i64 1, %struct._IO_FILE* %73)
  br label %sw.epilog

sw.bb.85:                                         ; preds = %for.body.4
  %74 = load i8*, i8** %temp, align 8
  %incdec.ptr86 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %incdec.ptr86, i8** %temp, align 8
  %75 = load i8, i8* %74, align 1
  store i8 %75, i8* %r, align 1
  %76 = load i8*, i8** %temp, align 8
  %incdec.ptr87 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %incdec.ptr87, i8** %temp, align 8
  %77 = load i8, i8* %76, align 1
  store i8 %77, i8* %g, align 1
  %78 = load i8*, i8** %temp, align 8
  %incdec.ptr88 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %incdec.ptr88, i8** %temp, align 8
  %79 = load i8, i8* %78, align 1
  store i8 %79, i8* %b, align 1
  %80 = load i8*, i8** %temp, align 8
  %81 = load i8, i8* %80, align 1
  store i8 %81, i8* %a, align 1
  %82 = load i8, i8* %r, align 1
  %83 = load i8, i8* %g, align 1
  %84 = load i8, i8* %b, align 1
  %85 = load i8, i8* %a, align 1
  %arraydecay89 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i32 0
  call void @Make5551(i8 zeroext %82, i8 zeroext %83, i8 zeroext %84, i8 zeroext %85, i8* %arraydecay89)
  %86 = load i32, i32* %xpos, align 4
  %inc90 = add nsw i32 %86, 1
  store i32 %inc90, i32* %xpos, align 4
  %arraydecay91 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i32 0
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call92 = call i64 @fwrite(i8* %arraydecay91, i64 2, i64 1, %struct._IO_FILE* %87)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.85, %if.end.80, %if.end.64, %sw.bb.42, %if.end.39, %if.end
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %88 = load i32, i32* %i, align 4
  %inc93 = add nsw i32 %88, 1
  store i32 %inc93, i32* %i, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %arrayidx94 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 4
  %89 = load i32, i32* %spzeile.addr, align 4
  %90 = load i32, i32* %width.addr, align 4
  %91 = load i32, i32* %bpp.addr, align 4
  %div = sdiv i32 %91, 8
  %mul95 = mul nsw i32 %90, %div
  %sub96 = sub nsw i32 %89, %mul95
  %conv97 = sext i32 %sub96 to i64
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call98 = call i64 @fwrite(i8* %arrayidx94, i64 %conv97, i64 1, %struct._IO_FILE* %92)
  %93 = load i32, i32* @cur_progress, align 4
  %inc99 = add nsw i32 %93, 1
  store i32 %inc99, i32* @cur_progress, align 4
  %94 = load i32, i32* @cur_progress, align 4
  %rem = srem i32 %94, 5
  %cmp100 = icmp eq i32 %rem, 0
  br i1 %cmp100, label %if.then.102, label %if.end.107

if.then.102:                                      ; preds = %for.end
  %95 = load i32, i32* @cur_progress, align 4
  %conv103 = sitofp i32 %95 to double
  %96 = load i32, i32* @max_progress, align 4
  %conv104 = sitofp i32 %96 to double
  %div105 = fdiv double %conv103, %conv104
  %call106 = call i32 @gimp_progress_update(double %div105)
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.102, %for.end
  store i32 0, i32* %xpos, align 4
  br label %for.inc.108

for.inc.108:                                      ; preds = %if.end.107
  %97 = load i32, i32* %ypos, align 4
  %dec = add nsw i32 %97, -1
  store i32 %dec, i32* %ypos, align 4
  br label %for.cond

for.end.109:                                      ; preds = %for.cond
  br label %if.end.434

if.else:                                          ; preds = %entry
  %98 = load i32, i32* %use_run_length_encoding.addr, align 4
  switch i32 %98, label %sw.default.177 [
    i32 0, label %sw.bb.110
  ]

sw.bb.110:                                        ; preds = %if.else
  %99 = load i32, i32* %width.addr, align 4
  %100 = load i32, i32* %bpp.addr, align 4
  %div111 = sdiv i32 8, %100
  %div112 = sdiv i32 %99, %div111
  store i32 %div112, i32* %thiswidth, align 4
  %101 = load i32, i32* %width.addr, align 4
  %102 = load i32, i32* %bpp.addr, align 4
  %div113 = sdiv i32 8, %102
  %rem114 = srem i32 %101, %div113
  %tobool = icmp ne i32 %rem114, 0
  br i1 %tobool, label %if.then.115, label %if.end.117

if.then.115:                                      ; preds = %sw.bb.110
  %103 = load i32, i32* %thiswidth, align 4
  %inc116 = add nsw i32 %103, 1
  store i32 %inc116, i32* %thiswidth, align 4
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.115, %sw.bb.110
  %104 = load i32, i32* %height.addr, align 4
  %sub118 = sub nsw i32 %104, 1
  store i32 %sub118, i32* %ypos, align 4
  br label %for.cond.119

for.cond.119:                                     ; preds = %for.inc.174, %if.end.117
  %105 = load i32, i32* %ypos, align 4
  %cmp120 = icmp sge i32 %105, 0
  br i1 %cmp120, label %for.body.122, label %for.end.176

for.body.122:                                     ; preds = %for.cond.119
  store i32 0, i32* %xpos, align 4
  br label %for.cond.123

for.cond.123:                                     ; preds = %for.end.157, %for.body.122
  %106 = load i32, i32* %xpos, align 4
  %107 = load i32, i32* %width.addr, align 4
  %cmp124 = icmp slt i32 %106, %107
  br i1 %cmp124, label %for.body.126, label %for.end.159

for.body.126:                                     ; preds = %for.cond.123
  store i8 0, i8* %v, align 1
  store i32 1, i32* %i, align 4
  br label %for.cond.127

for.cond.127:                                     ; preds = %for.inc.154, %for.body.126
  %108 = load i32, i32* %i, align 4
  %109 = load i32, i32* %bpp.addr, align 4
  %div128 = sdiv i32 8, %109
  %cmp129 = icmp sle i32 %108, %div128
  br i1 %cmp129, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.127
  %110 = load i32, i32* %xpos, align 4
  %111 = load i32, i32* %width.addr, align 4
  %cmp131 = icmp slt i32 %110, %111
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.127
  %112 = phi i1 [ false, %for.cond.127 ], [ %cmp131, %land.rhs ]
  br i1 %112, label %for.body.133, label %for.end.157

for.body.133:                                     ; preds = %land.end
  %113 = load i8*, i8** %src.addr, align 8
  %114 = load i32, i32* %ypos, align 4
  %115 = load i32, i32* %rowstride, align 4
  %mul134 = mul nsw i32 %114, %115
  %idx.ext135 = sext i32 %mul134 to i64
  %add.ptr136 = getelementptr inbounds i8, i8* %113, i64 %idx.ext135
  %116 = load i32, i32* %xpos, align 4
  %117 = load i32, i32* %channels.addr, align 4
  %mul137 = mul nsw i32 %116, %117
  %idx.ext138 = sext i32 %mul137 to i64
  %add.ptr139 = getelementptr inbounds i8, i8* %add.ptr136, i64 %idx.ext138
  store i8* %add.ptr139, i8** %temp, align 8
  %118 = load i32, i32* %channels.addr, align 4
  %cmp140 = icmp sgt i32 %118, 1
  br i1 %cmp140, label %land.lhs.true.142, label %if.end.148

land.lhs.true.142:                                ; preds = %for.body.133
  %119 = load i8*, i8** %temp, align 8
  %add.ptr143 = getelementptr inbounds i8, i8* %119, i64 1
  %120 = load i8, i8* %add.ptr143, align 1
  %conv144 = zext i8 %120 to i32
  %cmp145 = icmp eq i32 %conv144, 0
  br i1 %cmp145, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %land.lhs.true.142
  %121 = load i8*, i8** %temp, align 8
  store i8 0, i8* %121, align 1
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.147, %land.lhs.true.142, %for.body.133
  %122 = load i8, i8* %v, align 1
  %conv149 = zext i8 %122 to i32
  %123 = load i8*, i8** %temp, align 8
  %124 = load i8, i8* %123, align 1
  %conv150 = zext i8 %124 to i32
  %125 = load i32, i32* %i, align 4
  %126 = load i32, i32* %bpp.addr, align 4
  %mul151 = mul nsw i32 %125, %126
  %sub152 = sub nsw i32 8, %mul151
  %shl = shl i32 %conv150, %sub152
  %or = or i32 %conv149, %shl
  %conv153 = trunc i32 %or to i8
  store i8 %conv153, i8* %v, align 1
  br label %for.inc.154

for.inc.154:                                      ; preds = %if.end.148
  %127 = load i32, i32* %i, align 4
  %inc155 = add nsw i32 %127, 1
  store i32 %inc155, i32* %i, align 4
  %128 = load i32, i32* %xpos, align 4
  %inc156 = add nsw i32 %128, 1
  store i32 %inc156, i32* %xpos, align 4
  br label %for.cond.127

for.end.157:                                      ; preds = %land.end
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call158 = call i64 @fwrite(i8* %v, i64 1, i64 1, %struct._IO_FILE* %129)
  br label %for.cond.123

for.end.159:                                      ; preds = %for.cond.123
  %arrayidx160 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 3
  %130 = load i32, i32* %spzeile.addr, align 4
  %131 = load i32, i32* %thiswidth, align 4
  %sub161 = sub nsw i32 %130, %131
  %conv162 = sext i32 %sub161 to i64
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call163 = call i64 @fwrite(i8* %arrayidx160, i64 %conv162, i64 1, %struct._IO_FILE* %132)
  store i32 0, i32* %xpos, align 4
  %133 = load i32, i32* @cur_progress, align 4
  %inc164 = add nsw i32 %133, 1
  store i32 %inc164, i32* @cur_progress, align 4
  %134 = load i32, i32* @cur_progress, align 4
  %rem165 = srem i32 %134, 5
  %cmp166 = icmp eq i32 %rem165, 0
  br i1 %cmp166, label %if.then.168, label %if.end.173

if.then.168:                                      ; preds = %for.end.159
  %135 = load i32, i32* @cur_progress, align 4
  %conv169 = sitofp i32 %135 to double
  %136 = load i32, i32* @max_progress, align 4
  %conv170 = sitofp i32 %136 to double
  %div171 = fdiv double %conv169, %conv170
  %call172 = call i32 @gimp_progress_update(double %div171)
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.168, %for.end.159
  br label %for.inc.174

for.inc.174:                                      ; preds = %if.end.173
  %137 = load i32, i32* %ypos, align 4
  %dec175 = add nsw i32 %137, -1
  store i32 %dec175, i32* %ypos, align 4
  br label %for.cond.119

for.end.176:                                      ; preds = %for.cond.119
  br label %sw.epilog.433

sw.default.177:                                   ; preds = %if.else
  store i32 0, i32* %length, align 4
  %arrayidx178 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 12
  store i8 0, i8* %arrayidx178, align 1
  %arrayidx179 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 13
  store i8 1, i8* %arrayidx179, align 1
  %arrayidx180 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 14
  store i8 0, i8* %arrayidx180, align 1
  %arrayidx181 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 15
  store i8 0, i8* %arrayidx181, align 1
  %138 = load i32, i32* %width.addr, align 4
  %139 = load i32, i32* %bpp.addr, align 4
  %div182 = sdiv i32 8, %139
  %div183 = sdiv i32 %138, %div182
  %add = add nsw i32 %div183, 10
  %conv184 = sext i32 %add to i64
  %call185 = call noalias i8* @g_malloc_n(i64 %conv184, i64 1)
  store i8* %call185, i8** %row, align 8
  %140 = load i32, i32* %width.addr, align 4
  %141 = load i32, i32* %bpp.addr, align 4
  %div186 = sdiv i32 8, %141
  %div187 = sdiv i32 %140, %div186
  %add188 = add nsw i32 %div187, 10
  %conv189 = sext i32 %add188 to i64
  %call190 = call noalias i8* @g_malloc_n(i64 %conv189, i64 1)
  store i8* %call190, i8** %ketten, align 8
  %142 = load i32, i32* %height.addr, align 4
  %sub191 = sub nsw i32 %142, 1
  store i32 %sub191, i32* %ypos, align 4
  br label %for.cond.192

for.cond.192:                                     ; preds = %for.inc.415, %sw.default.177
  %143 = load i32, i32* %ypos, align 4
  %cmp193 = icmp sge i32 %143, 0
  br i1 %cmp193, label %for.body.195, label %for.end.417

for.body.195:                                     ; preds = %for.cond.192
  store i32 0, i32* %j, align 4
  store i32 0, i32* %xpos, align 4
  br label %for.cond.196

for.cond.196:                                     ; preds = %for.end.234, %for.body.195
  %144 = load i32, i32* %xpos, align 4
  %145 = load i32, i32* %width.addr, align 4
  %cmp197 = icmp slt i32 %144, %145
  br i1 %cmp197, label %for.body.199, label %for.end.237

for.body.199:                                     ; preds = %for.cond.196
  store i8 0, i8* %v, align 1
  store i32 1, i32* %i, align 4
  br label %for.cond.200

for.cond.200:                                     ; preds = %for.inc.231, %for.body.199
  %146 = load i32, i32* %i, align 4
  %147 = load i32, i32* %bpp.addr, align 4
  %div201 = sdiv i32 8, %147
  %cmp202 = icmp sle i32 %146, %div201
  br i1 %cmp202, label %land.rhs.204, label %land.end.207

land.rhs.204:                                     ; preds = %for.cond.200
  %148 = load i32, i32* %xpos, align 4
  %149 = load i32, i32* %width.addr, align 4
  %cmp205 = icmp slt i32 %148, %149
  br label %land.end.207

land.end.207:                                     ; preds = %land.rhs.204, %for.cond.200
  %150 = phi i1 [ false, %for.cond.200 ], [ %cmp205, %land.rhs.204 ]
  br i1 %150, label %for.body.208, label %for.end.234

for.body.208:                                     ; preds = %land.end.207
  %151 = load i8*, i8** %src.addr, align 8
  %152 = load i32, i32* %ypos, align 4
  %153 = load i32, i32* %rowstride, align 4
  %mul209 = mul nsw i32 %152, %153
  %idx.ext210 = sext i32 %mul209 to i64
  %add.ptr211 = getelementptr inbounds i8, i8* %151, i64 %idx.ext210
  %154 = load i32, i32* %xpos, align 4
  %155 = load i32, i32* %channels.addr, align 4
  %mul212 = mul nsw i32 %154, %155
  %idx.ext213 = sext i32 %mul212 to i64
  %add.ptr214 = getelementptr inbounds i8, i8* %add.ptr211, i64 %idx.ext213
  store i8* %add.ptr214, i8** %temp, align 8
  %156 = load i32, i32* %channels.addr, align 4
  %cmp215 = icmp sgt i32 %156, 1
  br i1 %cmp215, label %land.lhs.true.217, label %if.end.223

land.lhs.true.217:                                ; preds = %for.body.208
  %157 = load i8*, i8** %temp, align 8
  %add.ptr218 = getelementptr inbounds i8, i8* %157, i64 1
  %158 = load i8, i8* %add.ptr218, align 1
  %conv219 = zext i8 %158 to i32
  %cmp220 = icmp eq i32 %conv219, 0
  br i1 %cmp220, label %if.then.222, label %if.end.223

if.then.222:                                      ; preds = %land.lhs.true.217
  %159 = load i8*, i8** %temp, align 8
  store i8 0, i8* %159, align 1
  br label %if.end.223

if.end.223:                                       ; preds = %if.then.222, %land.lhs.true.217, %for.body.208
  %160 = load i8, i8* %v, align 1
  %conv224 = zext i8 %160 to i32
  %161 = load i8*, i8** %temp, align 8
  %162 = load i8, i8* %161, align 1
  %conv225 = zext i8 %162 to i32
  %163 = load i32, i32* %i, align 4
  %164 = load i32, i32* %bpp.addr, align 4
  %mul226 = mul nsw i32 %163, %164
  %sub227 = sub nsw i32 8, %mul226
  %shl228 = shl i32 %conv225, %sub227
  %or229 = or i32 %conv224, %shl228
  %conv230 = trunc i32 %or229 to i8
  store i8 %conv230, i8* %v, align 1
  br label %for.inc.231

for.inc.231:                                      ; preds = %if.end.223
  %165 = load i32, i32* %i, align 4
  %inc232 = add nsw i32 %165, 1
  store i32 %inc232, i32* %i, align 4
  %166 = load i32, i32* %xpos, align 4
  %inc233 = add nsw i32 %166, 1
  store i32 %inc233, i32* %xpos, align 4
  br label %for.cond.200

for.end.234:                                      ; preds = %land.end.207
  %167 = load i8, i8* %v, align 1
  %168 = load i32, i32* %j, align 4
  %inc235 = add nsw i32 %168, 1
  store i32 %inc235, i32* %j, align 4
  %idxprom = sext i32 %168 to i64
  %169 = load i8*, i8** %row, align 8
  %arrayidx236 = getelementptr inbounds i8, i8* %169, i64 %idxprom
  store i8 %167, i8* %arrayidx236, align 1
  br label %for.cond.196

for.end.237:                                      ; preds = %for.cond.196
  %170 = load i32, i32* %width.addr, align 4
  %171 = load i32, i32* %bpp.addr, align 4
  %div238 = sdiv i32 8, %171
  %div239 = sdiv i32 %170, %div238
  store i32 %div239, i32* %breite, align 4
  %172 = load i32, i32* %width.addr, align 4
  %173 = load i32, i32* %bpp.addr, align 4
  %div240 = sdiv i32 8, %173
  %rem241 = srem i32 %172, %div240
  %tobool242 = icmp ne i32 %rem241, 0
  br i1 %tobool242, label %if.then.243, label %if.end.245

if.then.243:                                      ; preds = %for.end.237
  %174 = load i32, i32* %breite, align 4
  %inc244 = add nsw i32 %174, 1
  store i32 %inc244, i32* %breite, align 4
  br label %if.end.245

if.end.245:                                       ; preds = %if.then.243, %for.end.237
  store i32 0, i32* %i, align 4
  br label %for.cond.246

for.cond.246:                                     ; preds = %for.inc.273, %if.end.245
  %175 = load i32, i32* %i, align 4
  %176 = load i32, i32* %breite, align 4
  %cmp247 = icmp slt i32 %175, %176
  br i1 %cmp247, label %for.body.249, label %for.end.275

for.body.249:                                     ; preds = %for.cond.246
  store i32 0, i32* %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body.249
  %177 = load i32, i32* %i, align 4
  %178 = load i32, i32* %j, align 4
  %add250 = add nsw i32 %177, %178
  %179 = load i32, i32* %breite, align 4
  %cmp251 = icmp slt i32 %add250, %179
  br i1 %cmp251, label %land.lhs.true.253, label %land.end.268

land.lhs.true.253:                                ; preds = %while.cond
  %180 = load i32, i32* %j, align 4
  %181 = load i32, i32* %bpp.addr, align 4
  %div254 = sdiv i32 8, %181
  %div255 = sdiv i32 255, %div254
  %cmp256 = icmp slt i32 %180, %div255
  br i1 %cmp256, label %land.rhs.258, label %land.end.268

land.rhs.258:                                     ; preds = %land.lhs.true.253
  %182 = load i32, i32* %i, align 4
  %183 = load i32, i32* %j, align 4
  %add259 = add nsw i32 %182, %183
  %idxprom260 = sext i32 %add259 to i64
  %184 = load i8*, i8** %row, align 8
  %arrayidx261 = getelementptr inbounds i8, i8* %184, i64 %idxprom260
  %185 = load i8, i8* %arrayidx261, align 1
  %conv262 = zext i8 %185 to i32
  %186 = load i32, i32* %i, align 4
  %idxprom263 = sext i32 %186 to i64
  %187 = load i8*, i8** %row, align 8
  %arrayidx264 = getelementptr inbounds i8, i8* %187, i64 %idxprom263
  %188 = load i8, i8* %arrayidx264, align 1
  %conv265 = zext i8 %188 to i32
  %cmp266 = icmp eq i32 %conv262, %conv265
  br label %land.end.268

land.end.268:                                     ; preds = %land.rhs.258, %land.lhs.true.253, %while.cond
  %189 = phi i1 [ false, %land.lhs.true.253 ], [ false, %while.cond ], [ %cmp266, %land.rhs.258 ]
  br i1 %189, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.268
  %190 = load i32, i32* %j, align 4
  %inc269 = add nsw i32 %190, 1
  store i32 %inc269, i32* %j, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end.268
  %191 = load i32, i32* %j, align 4
  %conv270 = trunc i32 %191 to i8
  %192 = load i32, i32* %i, align 4
  %idxprom271 = sext i32 %192 to i64
  %193 = load i8*, i8** %ketten, align 8
  %arrayidx272 = getelementptr inbounds i8, i8* %193, i64 %idxprom271
  store i8 %conv270, i8* %arrayidx272, align 1
  br label %for.inc.273

for.inc.273:                                      ; preds = %while.end
  %194 = load i32, i32* %j, align 4
  %195 = load i32, i32* %i, align 4
  %add274 = add nsw i32 %195, %194
  store i32 %add274, i32* %i, align 4
  br label %for.cond.246

for.end.275:                                      ; preds = %for.cond.246
  store i32 0, i32* %i, align 4
  br label %for.cond.276

for.cond.276:                                     ; preds = %if.end.400, %for.end.275
  %196 = load i32, i32* %i, align 4
  %197 = load i32, i32* %breite, align 4
  %cmp277 = icmp slt i32 %196, %197
  br i1 %cmp277, label %for.body.279, label %for.end.401

for.body.279:                                     ; preds = %for.cond.276
  %198 = load i32, i32* %i, align 4
  %idxprom280 = sext i32 %198 to i64
  %199 = load i8*, i8** %ketten, align 8
  %arrayidx281 = getelementptr inbounds i8, i8* %199, i64 %idxprom280
  %200 = load i8, i8* %arrayidx281, align 1
  %conv282 = zext i8 %200 to i32
  %cmp283 = icmp slt i32 %conv282, 3
  br i1 %cmp283, label %if.then.285, label %if.else.375

if.then.285:                                      ; preds = %for.body.279
  store i32 0, i32* %j, align 4
  br label %while.cond.286

while.cond.286:                                   ; preds = %while.body.303, %if.then.285
  %201 = load i32, i32* %i, align 4
  %202 = load i32, i32* %j, align 4
  %add287 = add nsw i32 %201, %202
  %203 = load i32, i32* %breite, align 4
  %cmp288 = icmp slt i32 %add287, %203
  br i1 %cmp288, label %land.lhs.true.290, label %land.end.302

land.lhs.true.290:                                ; preds = %while.cond.286
  %204 = load i32, i32* %j, align 4
  %205 = load i32, i32* %bpp.addr, align 4
  %div291 = sdiv i32 8, %205
  %div292 = sdiv i32 255, %div291
  %cmp293 = icmp slt i32 %204, %div292
  br i1 %cmp293, label %land.rhs.295, label %land.end.302

land.rhs.295:                                     ; preds = %land.lhs.true.290
  %206 = load i32, i32* %i, align 4
  %207 = load i32, i32* %j, align 4
  %add296 = add nsw i32 %206, %207
  %idxprom297 = sext i32 %add296 to i64
  %208 = load i8*, i8** %ketten, align 8
  %arrayidx298 = getelementptr inbounds i8, i8* %208, i64 %idxprom297
  %209 = load i8, i8* %arrayidx298, align 1
  %conv299 = zext i8 %209 to i32
  %cmp300 = icmp slt i32 %conv299, 3
  br label %land.end.302

land.end.302:                                     ; preds = %land.rhs.295, %land.lhs.true.290, %while.cond.286
  %210 = phi i1 [ false, %land.lhs.true.290 ], [ false, %while.cond.286 ], [ %cmp300, %land.rhs.295 ]
  br i1 %210, label %while.body.303, label %while.end.309

while.body.303:                                   ; preds = %land.end.302
  %211 = load i32, i32* %i, align 4
  %212 = load i32, i32* %j, align 4
  %add304 = add nsw i32 %211, %212
  %idxprom305 = sext i32 %add304 to i64
  %213 = load i8*, i8** %ketten, align 8
  %arrayidx306 = getelementptr inbounds i8, i8* %213, i64 %idxprom305
  %214 = load i8, i8* %arrayidx306, align 1
  %conv307 = zext i8 %214 to i32
  %215 = load i32, i32* %j, align 4
  %add308 = add nsw i32 %215, %conv307
  store i32 %add308, i32* %j, align 4
  br label %while.cond.286

while.end.309:                                    ; preds = %land.end.302
  %216 = load i32, i32* %j, align 4
  %217 = load i32, i32* %bpp.addr, align 4
  %div310 = sdiv i32 8, %217
  %div311 = sdiv i32 255, %div310
  %cmp312 = icmp sgt i32 %216, %div311
  br i1 %cmp312, label %if.then.314, label %if.end.316

if.then.314:                                      ; preds = %while.end.309
  %218 = load i32, i32* %j, align 4
  %sub315 = sub nsw i32 %218, 2
  store i32 %sub315, i32* %j, align 4
  br label %if.end.316

if.end.316:                                       ; preds = %if.then.314, %while.end.309
  %219 = load i32, i32* %j, align 4
  %cmp317 = icmp sgt i32 %219, 2
  br i1 %cmp317, label %if.then.319, label %if.else.348

if.then.319:                                      ; preds = %if.end.316
  %arrayidx320 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 12
  %220 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call321 = call i64 @fwrite(i8* %arrayidx320, i64 1, i64 1, %struct._IO_FILE* %220)
  %221 = load i32, i32* %j, align 4
  %222 = load i32, i32* %bpp.addr, align 4
  %div322 = sdiv i32 8, %222
  %mul323 = mul nsw i32 %221, %div322
  %conv324 = trunc i32 %mul323 to i8
  store i8 %conv324, i8* %n, align 1
  %223 = load i8, i8* %n, align 1
  %conv325 = zext i8 %223 to i32
  %224 = load i32, i32* %i, align 4
  %225 = load i32, i32* %bpp.addr, align 4
  %div326 = sdiv i32 8, %225
  %mul327 = mul nsw i32 %224, %div326
  %add328 = add nsw i32 %conv325, %mul327
  %226 = load i32, i32* %width.addr, align 4
  %cmp329 = icmp sgt i32 %add328, %226
  br i1 %cmp329, label %if.then.331, label %if.end.333

if.then.331:                                      ; preds = %if.then.319
  %227 = load i8, i8* %n, align 1
  %dec332 = add i8 %227, -1
  store i8 %dec332, i8* %n, align 1
  br label %if.end.333

if.end.333:                                       ; preds = %if.then.331, %if.then.319
  %228 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call334 = call i64 @fwrite(i8* %n, i64 1, i64 1, %struct._IO_FILE* %228)
  %229 = load i32, i32* %length, align 4
  %add335 = add nsw i32 %229, 2
  store i32 %add335, i32* %length, align 4
  %230 = load i32, i32* %i, align 4
  %idxprom336 = sext i32 %230 to i64
  %231 = load i8*, i8** %row, align 8
  %arrayidx337 = getelementptr inbounds i8, i8* %231, i64 %idxprom336
  %232 = load i32, i32* %j, align 4
  %conv338 = sext i32 %232 to i64
  %233 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call339 = call i64 @fwrite(i8* %arrayidx337, i64 %conv338, i64 1, %struct._IO_FILE* %233)
  %234 = load i32, i32* %j, align 4
  %235 = load i32, i32* %length, align 4
  %add340 = add nsw i32 %235, %234
  store i32 %add340, i32* %length, align 4
  %236 = load i32, i32* %j, align 4
  %rem341 = srem i32 %236, 2
  %tobool342 = icmp ne i32 %rem341, 0
  br i1 %tobool342, label %if.then.343, label %if.end.347

if.then.343:                                      ; preds = %if.end.333
  %arrayidx344 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 12
  %237 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call345 = call i64 @fwrite(i8* %arrayidx344, i64 1, i64 1, %struct._IO_FILE* %237)
  %238 = load i32, i32* %length, align 4
  %inc346 = add nsw i32 %238, 1
  store i32 %inc346, i32* %length, align 4
  br label %if.end.347

if.end.347:                                       ; preds = %if.then.343, %if.end.333
  br label %if.end.373

if.else.348:                                      ; preds = %if.end.316
  %239 = load i32, i32* %i, align 4
  store i32 %239, i32* %k, align 4
  br label %for.cond.349

for.cond.349:                                     ; preds = %for.inc.370, %if.else.348
  %240 = load i32, i32* %k, align 4
  %241 = load i32, i32* %i, align 4
  %242 = load i32, i32* %j, align 4
  %add350 = add nsw i32 %241, %242
  %cmp351 = icmp slt i32 %240, %add350
  br i1 %cmp351, label %for.body.353, label %for.end.372

for.body.353:                                     ; preds = %for.cond.349
  %243 = load i32, i32* %bpp.addr, align 4
  %div354 = sdiv i32 8, %243
  %conv355 = trunc i32 %div354 to i8
  store i8 %conv355, i8* %n, align 1
  %244 = load i8, i8* %n, align 1
  %conv356 = zext i8 %244 to i32
  %245 = load i32, i32* %i, align 4
  %246 = load i32, i32* %bpp.addr, align 4
  %div357 = sdiv i32 8, %246
  %mul358 = mul nsw i32 %245, %div357
  %add359 = add nsw i32 %conv356, %mul358
  %247 = load i32, i32* %width.addr, align 4
  %cmp360 = icmp sgt i32 %add359, %247
  br i1 %cmp360, label %if.then.362, label %if.end.364

if.then.362:                                      ; preds = %for.body.353
  %248 = load i8, i8* %n, align 1
  %dec363 = add i8 %248, -1
  store i8 %dec363, i8* %n, align 1
  br label %if.end.364

if.end.364:                                       ; preds = %if.then.362, %for.body.353
  %249 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call365 = call i64 @fwrite(i8* %n, i64 1, i64 1, %struct._IO_FILE* %249)
  %250 = load i32, i32* %k, align 4
  %idxprom366 = sext i32 %250 to i64
  %251 = load i8*, i8** %row, align 8
  %arrayidx367 = getelementptr inbounds i8, i8* %251, i64 %idxprom366
  %252 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call368 = call i64 @fwrite(i8* %arrayidx367, i64 1, i64 1, %struct._IO_FILE* %252)
  %253 = load i32, i32* %length, align 4
  %add369 = add nsw i32 %253, 2
  store i32 %add369, i32* %length, align 4
  br label %for.inc.370

for.inc.370:                                      ; preds = %if.end.364
  %254 = load i32, i32* %k, align 4
  %inc371 = add nsw i32 %254, 1
  store i32 %inc371, i32* %k, align 4
  br label %for.cond.349

for.end.372:                                      ; preds = %for.cond.349
  br label %if.end.373

if.end.373:                                       ; preds = %for.end.372, %if.end.347
  %255 = load i32, i32* %j, align 4
  %256 = load i32, i32* %i, align 4
  %add374 = add nsw i32 %256, %255
  store i32 %add374, i32* %i, align 4
  br label %if.end.400

if.else.375:                                      ; preds = %for.body.279
  %257 = load i32, i32* %i, align 4
  %idxprom376 = sext i32 %257 to i64
  %258 = load i8*, i8** %ketten, align 8
  %arrayidx377 = getelementptr inbounds i8, i8* %258, i64 %idxprom376
  %259 = load i8, i8* %arrayidx377, align 1
  %conv378 = zext i8 %259 to i32
  %260 = load i32, i32* %bpp.addr, align 4
  %div379 = sdiv i32 8, %260
  %mul380 = mul nsw i32 %conv378, %div379
  %conv381 = trunc i32 %mul380 to i8
  store i8 %conv381, i8* %n, align 1
  %261 = load i8, i8* %n, align 1
  %conv382 = zext i8 %261 to i32
  %262 = load i32, i32* %i, align 4
  %263 = load i32, i32* %bpp.addr, align 4
  %div383 = sdiv i32 8, %263
  %mul384 = mul nsw i32 %262, %div383
  %add385 = add nsw i32 %conv382, %mul384
  %264 = load i32, i32* %width.addr, align 4
  %cmp386 = icmp sgt i32 %add385, %264
  br i1 %cmp386, label %if.then.388, label %if.end.390

if.then.388:                                      ; preds = %if.else.375
  %265 = load i8, i8* %n, align 1
  %dec389 = add i8 %265, -1
  store i8 %dec389, i8* %n, align 1
  br label %if.end.390

if.end.390:                                       ; preds = %if.then.388, %if.else.375
  %266 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call391 = call i64 @fwrite(i8* %n, i64 1, i64 1, %struct._IO_FILE* %266)
  %267 = load i32, i32* %i, align 4
  %idxprom392 = sext i32 %267 to i64
  %268 = load i8*, i8** %row, align 8
  %arrayidx393 = getelementptr inbounds i8, i8* %268, i64 %idxprom392
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call394 = call i64 @fwrite(i8* %arrayidx393, i64 1, i64 1, %struct._IO_FILE* %269)
  %270 = load i32, i32* %i, align 4
  %idxprom395 = sext i32 %270 to i64
  %271 = load i8*, i8** %ketten, align 8
  %arrayidx396 = getelementptr inbounds i8, i8* %271, i64 %idxprom395
  %272 = load i8, i8* %arrayidx396, align 1
  %conv397 = zext i8 %272 to i32
  %273 = load i32, i32* %i, align 4
  %add398 = add nsw i32 %273, %conv397
  store i32 %add398, i32* %i, align 4
  %274 = load i32, i32* %length, align 4
  %add399 = add nsw i32 %274, 2
  store i32 %add399, i32* %length, align 4
  br label %if.end.400

if.end.400:                                       ; preds = %if.end.390, %if.end.373
  br label %for.cond.276

for.end.401:                                      ; preds = %for.cond.276
  %arrayidx402 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 14
  %275 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call403 = call i64 @fwrite(i8* %arrayidx402, i64 2, i64 1, %struct._IO_FILE* %275)
  %276 = load i32, i32* %length, align 4
  %add404 = add nsw i32 %276, 2
  store i32 %add404, i32* %length, align 4
  %277 = load i32, i32* @cur_progress, align 4
  %inc405 = add nsw i32 %277, 1
  store i32 %inc405, i32* @cur_progress, align 4
  %278 = load i32, i32* @cur_progress, align 4
  %rem406 = srem i32 %278, 5
  %cmp407 = icmp eq i32 %rem406, 0
  br i1 %cmp407, label %if.then.409, label %if.end.414

if.then.409:                                      ; preds = %for.end.401
  %279 = load i32, i32* @cur_progress, align 4
  %conv410 = sitofp i32 %279 to double
  %280 = load i32, i32* @max_progress, align 4
  %conv411 = sitofp i32 %280 to double
  %div412 = fdiv double %conv410, %conv411
  %call413 = call i32 @gimp_progress_update(double %div412)
  br label %if.end.414

if.end.414:                                       ; preds = %if.then.409, %for.end.401
  br label %for.inc.415

for.inc.415:                                      ; preds = %if.end.414
  %281 = load i32, i32* %ypos, align 4
  %dec416 = add nsw i32 %281, -1
  store i32 %dec416, i32* %ypos, align 4
  br label %for.cond.192

for.end.417:                                      ; preds = %for.cond.192
  %282 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call418 = call i32 @fseek(%struct._IO_FILE* %282, i64 -2, i32 1)
  %arrayidx419 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 12
  %283 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call420 = call i64 @fwrite(i8* %arrayidx419, i64 2, i64 1, %struct._IO_FILE* %283)
  %284 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call421 = call i32 @fseek(%struct._IO_FILE* %284, i64 34, i32 0)
  %285 = load i32, i32* %length, align 4
  %arraydecay422 = getelementptr inbounds [8 x i8], [8 x i8]* %puffer, i32 0, i32 0
  call void @FromL(i32 %285, i8* %arraydecay422)
  %arraydecay423 = getelementptr inbounds [8 x i8], [8 x i8]* %puffer, i32 0, i32 0
  %286 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call424 = call i64 @fwrite(i8* %arraydecay423, i64 4, i64 1, %struct._IO_FILE* %286)
  %287 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call425 = call i32 @fseek(%struct._IO_FILE* %287, i64 2, i32 0)
  %288 = load i32, i32* %MapSize.addr, align 4
  %add426 = add nsw i32 54, %288
  %289 = load i32, i32* %mask_info_size.addr, align 4
  %add427 = add nsw i32 %add426, %289
  %290 = load i32, i32* %color_space_size.addr, align 4
  %add428 = add nsw i32 %add427, %290
  %291 = load i32, i32* %length, align 4
  %add429 = add nsw i32 %291, %add428
  store i32 %add429, i32* %length, align 4
  %292 = load i32, i32* %length, align 4
  %arraydecay430 = getelementptr inbounds [8 x i8], [8 x i8]* %puffer, i32 0, i32 0
  call void @FromL(i32 %292, i8* %arraydecay430)
  %arraydecay431 = getelementptr inbounds [8 x i8], [8 x i8]* %puffer, i32 0, i32 0
  %293 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call432 = call i64 @fwrite(i8* %arraydecay431, i64 4, i64 1, %struct._IO_FILE* %293)
  %294 = load i8*, i8** %ketten, align 8
  call void @g_free(i8* %294)
  %295 = load i8*, i8** %row, align 8
  call void @g_free(i8* %295)
  br label %sw.epilog.433

sw.epilog.433:                                    ; preds = %for.end.417, %for.end.176
  br label %if.end.434

if.end.434:                                       ; preds = %sw.epilog.433, %for.end.109
  %call435 = call i32 @gimp_progress_update(double 1.000000e+00)
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare void @g_free(i8*) #1

declare %struct._GtkWidget* @gtk_message_dialog_new(%struct._GtkWindow*, i32, i32, i32, i8*, ...) #1

declare void @gtk_message_dialog_format_secondary_text(%struct._GtkMessageDialog*, i8*, ...) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_message_dialog_get_type() #4

declare void @gimp_window_set_transient(%struct._GtkWindow*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #4

declare i32 @gtk_dialog_run(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #4

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: inlinehint nounwind uwtable
define internal void @Make565(i8 zeroext %r, i8 zeroext %g, i8 zeroext %b, i8* %buf) #6 {
entry:
  %r.addr = alloca i8, align 1
  %g.addr = alloca i8, align 1
  %b.addr = alloca i8, align 1
  %buf.addr = alloca i8*, align 8
  %p = alloca i32, align 4
  store i8 %r, i8* %r.addr, align 1
  store i8 %g, i8* %g.addr, align 1
  store i8 %b, i8* %b.addr, align 1
  store i8* %buf, i8** %buf.addr, align 8
  %0 = load i8, i8* %r.addr, align 1
  %conv = zext i8 %0 to i32
  %conv1 = sitofp i32 %conv to double
  %div = fdiv double %conv1, 2.550000e+02
  %mul = fmul double %div, 3.100000e+01
  %add = fadd double %mul, 5.000000e-01
  %conv2 = fptosi double %add to i32
  %shl = shl i32 %conv2, 11
  %1 = load i8, i8* %g.addr, align 1
  %conv3 = zext i8 %1 to i32
  %conv4 = sitofp i32 %conv3 to double
  %div5 = fdiv double %conv4, 2.550000e+02
  %mul6 = fmul double %div5, 6.300000e+01
  %add7 = fadd double %mul6, 5.000000e-01
  %conv8 = fptosi double %add7 to i32
  %shl9 = shl i32 %conv8, 5
  %or = or i32 %shl, %shl9
  %2 = load i8, i8* %b.addr, align 1
  %conv10 = zext i8 %2 to i32
  %conv11 = sitofp i32 %conv10 to double
  %div12 = fdiv double %conv11, 2.550000e+02
  %mul13 = fmul double %div12, 3.100000e+01
  %add14 = fadd double %mul13, 5.000000e-01
  %conv15 = fptosi double %add14 to i32
  %or16 = or i32 %or, %conv15
  store i32 %or16, i32* %p, align 4
  %3 = load i32, i32* %p, align 4
  %and = and i32 %3, 255
  %conv17 = trunc i32 %and to i8
  %4 = load i8*, i8** %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  store i8 %conv17, i8* %arrayidx, align 1
  %5 = load i32, i32* %p, align 4
  %shr = ashr i32 %5, 8
  %conv18 = trunc i32 %shr to i8
  %6 = load i8*, i8** %buf.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %6, i64 1
  store i8 %conv18, i8* %arrayidx19, align 1
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @Make5551(i8 zeroext %r, i8 zeroext %g, i8 zeroext %b, i8 zeroext %a, i8* %buf) #6 {
entry:
  %r.addr = alloca i8, align 1
  %g.addr = alloca i8, align 1
  %b.addr = alloca i8, align 1
  %a.addr = alloca i8, align 1
  %buf.addr = alloca i8*, align 8
  %p = alloca i32, align 4
  store i8 %r, i8* %r.addr, align 1
  store i8 %g, i8* %g.addr, align 1
  store i8 %b, i8* %b.addr, align 1
  store i8 %a, i8* %a.addr, align 1
  store i8* %buf, i8** %buf.addr, align 8
  %0 = load i8, i8* %r.addr, align 1
  %conv = zext i8 %0 to i32
  %conv1 = sitofp i32 %conv to double
  %div = fdiv double %conv1, 2.550000e+02
  %mul = fmul double %div, 3.100000e+01
  %add = fadd double %mul, 5.000000e-01
  %conv2 = fptosi double %add to i32
  %shl = shl i32 %conv2, 10
  %1 = load i8, i8* %g.addr, align 1
  %conv3 = zext i8 %1 to i32
  %conv4 = sitofp i32 %conv3 to double
  %div5 = fdiv double %conv4, 2.550000e+02
  %mul6 = fmul double %div5, 3.100000e+01
  %add7 = fadd double %mul6, 5.000000e-01
  %conv8 = fptosi double %add7 to i32
  %shl9 = shl i32 %conv8, 5
  %or = or i32 %shl, %shl9
  %2 = load i8, i8* %b.addr, align 1
  %conv10 = zext i8 %2 to i32
  %conv11 = sitofp i32 %conv10 to double
  %div12 = fdiv double %conv11, 2.550000e+02
  %mul13 = fmul double %div12, 3.100000e+01
  %add14 = fadd double %mul13, 5.000000e-01
  %conv15 = fptosi double %add14 to i32
  %or16 = or i32 %or, %conv15
  %3 = load i8, i8* %a.addr, align 1
  %conv17 = zext i8 %3 to i32
  %conv18 = sitofp i32 %conv17 to double
  %div19 = fdiv double %conv18, 2.550000e+02
  %add20 = fadd double %div19, 5.000000e-01
  %conv21 = fptosi double %add20 to i32
  %shl22 = shl i32 %conv21, 15
  %or23 = or i32 %or16, %shl22
  store i32 %or23, i32* %p, align 4
  %4 = load i32, i32* %p, align 4
  %and = and i32 %4, 255
  %conv24 = trunc i32 %and to i8
  %5 = load i8*, i8** %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 0
  store i8 %conv24, i8* %arrayidx, align 1
  %6 = load i32, i32* %p, align 4
  %shr = ashr i32 %6, 8
  %conv25 = trunc i32 %shr to i8
  %7 = load i8*, i8** %buf.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %7, i64 1
  store i8 %conv25, i8* %arrayidx26, align 1
  ret void
}

declare i32 @gimp_progress_update(double) #1

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #1

declare %struct._GtkWidget* @gimp_export_dialog_new(i8*, i8*, i8*) #1

declare void @gtk_window_set_resizable(%struct._GtkWindow*, i32) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #4

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gimp_export_dialog_get_content_area(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #4

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #4

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare %struct._GtkWidget* @gtk_expander_new_with_mnemonic(i8*) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare %struct._GtkWidget* @gtk_radio_button_new_with_label(%struct._GSList*, i8*) #1

declare %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_radio_button_get_type() #4

; Function Attrs: nounwind uwtable
define internal void @format_callback(%struct._GtkToggleButton* %toggle, i8* %data) #0 {
entry:
  %toggle.addr = alloca %struct._GtkToggleButton*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkToggleButton* %toggle, %struct._GtkToggleButton** %toggle.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkToggleButton*, %struct._GtkToggleButton** %toggle.addr, align 8
  %call = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %data.addr, align 8
  %2 = ptrtoint i8* %1 to i64
  %conv = trunc i64 %2 to i32
  store i32 %conv, i32* getelementptr inbounds (%struct.anon, %struct.anon* @BMPSaveData, i32 0, i32 0), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #4

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn }
attributes #8 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
