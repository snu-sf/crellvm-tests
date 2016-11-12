; ModuleID = './plug-ins/file-ico/ico-save.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GError = type { i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._IcoSaveInfo = type { i32*, i32*, i32*, i32*, i32 }
%struct._IcoFileHeader = type { i16, i16, i16 }
%struct._IcoFileEntry = type { i8, i8, i8, i8, i16, i16, i32, i32 }
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
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct.png_struct_def = type opaque
%struct.png_info_def = type opaque
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct._IcoFileDataHeader = type { i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct._GHashTable = type opaque
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }

@.str = private unnamed_addr constant [12 x i8] c"Saving '%s'\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for writing: %s\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"file-ico\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"1.5.13\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"tmp\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"plug-in-threshold-alpha\00", align 1
@__func__.ico_create_palette = private unnamed_addr constant [19 x i8] c"ico_create_palette\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"cmap != NULL || num_colors_used == 0\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"num_colors_used <= num_colors\00", align 1

; Function Attrs: nounwind uwtable
define i32 @ico_cmap_contains_black(i8* %cmap, i32 %num_colors) #0 {
entry:
  %retval = alloca i32, align 4
  %cmap.addr = alloca i8*, align 8
  %num_colors.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %cmap, i8** %cmap.addr, align 8
  store i32 %num_colors, i32* %num_colors.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %num_colors.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %mul = mul nsw i32 3, %2
  %idxprom = sext i32 %mul to i64
  %3 = load i8*, i8** %cmap.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %mul3 = mul nsw i32 3, %5
  %add = add nsw i32 %mul3, 1
  %idxprom4 = sext i32 %add to i64
  %6 = load i8*, i8** %cmap.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %6, i64 %idxprom4
  %7 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %7 to i32
  %cmp7 = icmp eq i32 %conv6, 0
  br i1 %cmp7, label %land.lhs.true.9, label %if.end

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %8 = load i32, i32* %i, align 4
  %mul10 = mul nsw i32 3, %8
  %add11 = add nsw i32 %mul10, 2
  %idxprom12 = sext i32 %add11 to i64
  %9 = load i8*, i8** %cmap.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %9, i64 %idxprom12
  %10 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %10 to i32
  %cmp15 = icmp eq i32 %conv14, 0
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.9
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.9, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define i32 @ico_save_image(i8* %filename, i32 %image, i32 %run_mode, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %image.addr = alloca i32, align 4
  %run_mode.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %info = alloca %struct._IcoSaveInfo, align 8
  %header = alloca %struct._IcoFileHeader, align 2
  %entries = alloca %struct._IcoFileEntry*, align 8
  %saved = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %image, i32* %image.addr, align 4
  store i32 %run_mode, i32* %run_mode.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i32, i32* %image.addr, align 4
  call void @ico_save_init(i32 %0, %struct._IcoSaveInfo* %info)
  %1 = load i32, i32* %run_mode.addr, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %image.addr, align 4
  %call = call i32 @ico_save_dialog(i32 %2, %struct._IcoSaveInfo* %info)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.1

if.then.1:                                        ; preds = %if.then
  store i32 4, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.2

if.end.2:                                         ; preds = %if.end, %entry
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0)) #4
  %3 = load i8*, i8** %filename.addr, align 8
  %call4 = call i8* @gimp_filename_to_utf8(i8* %3)
  %call5 = call i32 (i8*, ...) @gimp_progress_init_printf(i8* %call3, i8* %call4)
  %4 = load i8*, i8** %filename.addr, align 8
  %call6 = call %struct._IO_FILE* @fopen(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  store %struct._IO_FILE* %call6, %struct._IO_FILE** %fp, align 8
  %tobool7 = icmp ne %struct._IO_FILE* %call6, null
  br i1 %tobool7, label %if.end.16, label %if.then.8

if.then.8:                                        ; preds = %if.end.2
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call9 = call i32 @g_file_error_quark()
  %call10 = call i32* @__errno_location() #7
  %6 = load i32, i32* %call10, align 4
  %call11 = call i32 @g_file_error_from_errno(i32 %6)
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0)) #4
  %7 = load i8*, i8** %filename.addr, align 8
  %call13 = call i8* @gimp_filename_to_utf8(i8* %7)
  %call14 = call i32* @__errno_location() #7
  %8 = load i32, i32* %call14, align 4
  %call15 = call i8* @g_strerror(i32 %8) #7
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %5, i32 %call9, i32 %call11, i8* %call12, i8* %call13, i8* %call15)
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.2
  %reserved = getelementptr inbounds %struct._IcoFileHeader, %struct._IcoFileHeader* %header, i32 0, i32 0
  store i16 0, i16* %reserved, align 2
  %resource_type = getelementptr inbounds %struct._IcoFileHeader, %struct._IcoFileHeader* %header, i32 0, i32 1
  store i16 1, i16* %resource_type, align 2
  %num_icons = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %info, i32 0, i32 4
  %9 = load i32, i32* %num_icons, align 4
  %conv = trunc i32 %9 to i16
  %icon_count = getelementptr inbounds %struct._IcoFileHeader, %struct._IcoFileHeader* %header, i32 0, i32 2
  store i16 %conv, i16* %icon_count, align 2
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %reserved17 = getelementptr inbounds %struct._IcoFileHeader, %struct._IcoFileHeader* %header, i32 0, i32 0
  %call18 = call i32 @ico_write_int16(%struct._IO_FILE* %10, i16* %reserved17, i32 1)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %lor.lhs.false, label %if.then.27

lor.lhs.false:                                    ; preds = %if.end.16
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %resource_type20 = getelementptr inbounds %struct._IcoFileHeader, %struct._IcoFileHeader* %header, i32 0, i32 1
  %call21 = call i32 @ico_write_int16(%struct._IO_FILE* %11, i16* %resource_type20, i32 1)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %lor.lhs.false.23, label %if.then.27

lor.lhs.false.23:                                 ; preds = %lor.lhs.false
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %icon_count24 = getelementptr inbounds %struct._IcoFileHeader, %struct._IcoFileHeader* %header, i32 0, i32 2
  %call25 = call i32 @ico_write_int16(%struct._IO_FILE* %12, i16* %icon_count24, i32 1)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end.29, label %if.then.27

if.then.27:                                       ; preds = %lor.lhs.false.23, %lor.lhs.false, %if.end.16
  call void @ico_save_info_free(%struct._IcoSaveInfo* %info)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call28 = call i32 @fclose(%struct._IO_FILE* %13)
  store i32 0, i32* %retval
  br label %return

if.end.29:                                        ; preds = %lor.lhs.false.23
  %num_icons30 = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %info, i32 0, i32 4
  %14 = load i32, i32* %num_icons30, align 4
  %conv31 = sext i32 %14 to i64
  %call32 = call noalias i8* @g_malloc0_n(i64 %conv31, i64 16)
  %15 = bitcast i8* %call32 to %struct._IcoFileEntry*
  store %struct._IcoFileEntry* %15, %struct._IcoFileEntry** %entries, align 8
  %16 = load %struct._IcoFileEntry*, %struct._IcoFileEntry** %entries, align 8
  %17 = bitcast %struct._IcoFileEntry* %16 to i8*
  %num_icons33 = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %info, i32 0, i32 4
  %18 = load i32, i32* %num_icons33, align 4
  %conv34 = sext i32 %18 to i64
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call35 = call i64 @fwrite(i8* %17, i64 16, i64 %conv34, %struct._IO_FILE* %19)
  %cmp36 = icmp ule i64 %call35, 0
  br i1 %cmp36, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %if.end.29
  call void @ico_save_info_free(%struct._IcoSaveInfo* %info)
  %20 = load %struct._IcoFileEntry*, %struct._IcoFileEntry** %entries, align 8
  %21 = bitcast %struct._IcoFileEntry* %20 to i8*
  call void @g_free(i8* %21)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call39 = call i32 @fclose(%struct._IO_FILE* %22)
  store i32 0, i32* %retval
  br label %return

if.end.40:                                        ; preds = %if.end.29
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.40
  %23 = load i32, i32* %i, align 4
  %num_icons41 = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %info, i32 0, i32 4
  %24 = load i32, i32* %num_icons41, align 4
  %cmp42 = icmp slt i32 %23, %24
  br i1 %cmp42, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i32, i32* %i, align 4
  %conv44 = sitofp i32 %25 to double
  %num_icons45 = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %info, i32 0, i32 4
  %26 = load i32, i32* %num_icons45, align 4
  %conv46 = sitofp i32 %26 to double
  %div = fdiv double %conv44, %conv46
  %call47 = call i32 @gimp_progress_update(double %div)
  %27 = load i32, i32* %i, align 4
  %idxprom = sext i32 %27 to i64
  %layers = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %info, i32 0, i32 3
  %28 = load i32*, i32** %layers, align 8
  %arrayidx = getelementptr inbounds i32, i32* %28, i64 %idxprom
  %29 = load i32, i32* %arrayidx, align 4
  %call48 = call i32 @gimp_drawable_width(i32 %29)
  store i32 %call48, i32* %width, align 4
  %30 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %30 to i64
  %layers50 = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %info, i32 0, i32 3
  %31 = load i32*, i32** %layers50, align 8
  %arrayidx51 = getelementptr inbounds i32, i32* %31, i64 %idxprom49
  %32 = load i32, i32* %arrayidx51, align 4
  %call52 = call i32 @gimp_drawable_height(i32 %32)
  store i32 %call52, i32* %height, align 4
  %33 = load i32, i32* %width, align 4
  %cmp53 = icmp sle i32 %33, 255
  br i1 %cmp53, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %34 = load i32, i32* %height, align 4
  %cmp55 = icmp sle i32 %34, 255
  br i1 %cmp55, label %if.then.57, label %if.else

if.then.57:                                       ; preds = %land.lhs.true
  %35 = load i32, i32* %width, align 4
  %conv58 = trunc i32 %35 to i8
  %36 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %36 to i64
  %37 = load %struct._IcoFileEntry*, %struct._IcoFileEntry** %entries, align 8
  %arrayidx60 = getelementptr inbounds %struct._IcoFileEntry, %struct._IcoFileEntry* %37, i64 %idxprom59
  %width61 = getelementptr inbounds %struct._IcoFileEntry, %struct._IcoFileEntry* %arrayidx60, i32 0, i32 0
  store i8 %conv58, i8* %width61, align 1
  %38 = load i32, i32* %height, align 4
  %conv62 = trunc i32 %38 to i8
  %39 = load i32, i32* %i, align 4
  %idxprom63 = sext i32 %39 to i64
  %40 = load %struct._IcoFileEntry*, %struct._IcoFileEntry** %entries, align 8
  %arrayidx64 = getelementptr inbounds %struct._IcoFileEntry, %struct._IcoFileEntry* %40, i64 %idxprom63
  %height65 = getelementptr inbounds %struct._IcoFileEntry, %struct._IcoFileEntry* %arrayidx64, i32 0, i32 1
  store i8 %conv62, i8* %height65, align 1
  br label %if.end.72

if.else:                                          ; preds = %land.lhs.true, %for.body
  %41 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %41 to i64
  %42 = load %struct._IcoFileEntry*, %struct._IcoFileEntry** %entries, align 8
  %arrayidx67 = getelementptr inbounds %struct._IcoFileEntry, %struct._IcoFileEntry* %42, i64 %idxprom66
  %width68 = getelementptr inbounds %struct._IcoFileEntry, %struct._IcoFileEntry* %arrayidx67, i32 0, i32 0
  store i8 0, i8* %width68, align 1
  %43 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %43 to i64
  %44 = load %struct._IcoFileEntry*, %struct._IcoFileEntry** %entries, align 8
  %arrayidx70 = getelementptr inbounds %struct._IcoFileEntry, %struct._IcoFileEntry* %44, i64 %idxprom69
  %height71 = getelementptr inbounds %struct._IcoFileEntry, %struct._IcoFileEntry* %arrayidx70, i32 0, i32 1
  store i8 0, i8* %height71, align 1
  br label %if.end.72

if.end.72:                                        ; preds = %if.else, %if.then.57
  %45 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %45 to i64
  %depths = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %info, i32 0, i32 0
  %46 = load i32*, i32** %depths, align 8
  %arrayidx74 = getelementptr inbounds i32, i32* %46, i64 %idxprom73
  %47 = load i32, i32* %arrayidx74, align 4
  %cmp75 = icmp sle i32 %47, 8
  br i1 %cmp75, label %if.then.77, label %if.else.84

if.then.77:                                       ; preds = %if.end.72
  %48 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %48 to i64
  %depths79 = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %info, i32 0, i32 0
  %49 = load i32*, i32** %depths79, align 8
  %arrayidx80 = getelementptr inbounds i32, i32* %49, i64 %idxprom78
  %50 = load i32, i32* %arrayidx80, align 4
  %shl = shl i32 1, %50
  %conv81 = trunc i32 %shl to i8
  %51 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %51 to i64
  %52 = load %struct._IcoFileEntry*, %struct._IcoFileEntry** %entries, align 8
  %arrayidx83 = getelementptr inbounds %struct._IcoFileEntry, %struct._IcoFileEntry* %52, i64 %idxprom82
  %num_colors = getelementptr inbounds %struct._IcoFileEntry, %struct._IcoFileEntry* %arrayidx83, i32 0, i32 2
  store i8 %conv81, i8* %num_colors, align 1
  br label %if.end.88

if.else.84:                                       ; preds = %if.end.72
  %53 = load i32, i32* %i, align 4
  %idxprom85 = sext i32 %53 to i64
  %54 = load %struct._IcoFileEntry*, %struct._IcoFileEntry** %entries, align 8
  %arrayidx86 = getelementptr inbounds %struct._IcoFileEntry, %struct._IcoFileEntry* %54, i64 %idxprom85
  %num_colors87 = getelementptr inbounds %struct._IcoFileEntry, %struct._IcoFileEntry* %arrayidx86, i32 0, i32 2
  store i8 0, i8* %num_colors87, align 1
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.84, %if.then.77
  %55 = load i32, i32* %i, align 4
  %idxprom89 = sext i32 %55 to i64
  %56 = load %struct._IcoFileEntry*, %struct._IcoFileEntry** %entries, align 8
  %arrayidx90 = getelementptr inbounds %struct._IcoFileEntry, %struct._IcoFileEntry* %56, i64 %idxprom89
  %reserved91 = getelementptr inbounds %struct._IcoFileEntry, %struct._IcoFileEntry* %arrayidx90, i32 0, i32 3
  store i8 0, i8* %reserved91, align 1
  %57 = load i32, i32* %i, align 4
  %idxprom92 = sext i32 %57 to i64
  %58 = load %struct._IcoFileEntry*, %struct._IcoFileEntry** %entries, align 8
  %arrayidx93 = getelementptr inbounds %struct._IcoFileEntry, %struct._IcoFileEntry* %58, i64 %idxprom92
  %planes = getelementptr inbounds %struct._IcoFileEntry, %struct._IcoFileEntry* %arrayidx93, i32 0, i32 4
  store i16 1, i16* %planes, align 2
  %59 = load i32, i32* %i, align 4
  %idxprom94 = sext i32 %59 to i64
  %depths95 = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %info, i32 0, i32 0
  %60 = load i32*, i32** %depths95, align 8
  %arrayidx96 = getelementptr inbounds i32, i32* %60, i64 %idxprom94
  %61 = load i32, i32* %arrayidx96, align 4
  %conv97 = trunc i32 %61 to i16
  %62 = load i32, i32* %i, align 4
  %idxprom98 = sext i32 %62 to i64
  %63 = load %struct._IcoFileEntry*, %struct._IcoFileEntry** %entries, align 8
  %arrayidx99 = getelementptr inbounds %struct._IcoFileEntry, %struct._IcoFileEntry* %63, i64 %idxprom98
  %bpp = getelementptr inbounds %struct._IcoFileEntry, %struct._IcoFileEntry* %arrayidx99, i32 0, i32 5
  store i16 %conv97, i16* %bpp, align 2
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call100 = call i64 @ftell(%struct._IO_FILE* %64)
  %conv101 = trunc i64 %call100 to i32
  %65 = load i32, i32* %i, align 4
  %idxprom102 = sext i32 %65 to i64
  %66 = load %struct._IcoFileEntry*, %struct._IcoFileEntry** %entries, align 8
  %arrayidx103 = getelementptr inbounds %struct._IcoFileEntry, %struct._IcoFileEntry* %66, i64 %idxprom102
  %offset = getelementptr inbounds %struct._IcoFileEntry, %struct._IcoFileEntry* %arrayidx103, i32 0, i32 7
  store i32 %conv101, i32* %offset, align 4
  %67 = load i32, i32* %i, align 4
  %idxprom104 = sext i32 %67 to i64
  %compress = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %info, i32 0, i32 2
  %68 = load i32*, i32** %compress, align 8
  %arrayidx105 = getelementptr inbounds i32, i32* %68, i64 %idxprom104
  %69 = load i32, i32* %arrayidx105, align 4
  %tobool106 = icmp ne i32 %69, 0
  br i1 %tobool106, label %if.then.107, label %if.else.115

if.then.107:                                      ; preds = %if.end.88
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %71 = load i32, i32* %i, align 4
  %idxprom108 = sext i32 %71 to i64
  %layers109 = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %info, i32 0, i32 3
  %72 = load i32*, i32** %layers109, align 8
  %arrayidx110 = getelementptr inbounds i32, i32* %72, i64 %idxprom108
  %73 = load i32, i32* %arrayidx110, align 4
  %74 = load i32, i32* %i, align 4
  %idxprom111 = sext i32 %74 to i64
  %depths112 = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %info, i32 0, i32 0
  %75 = load i32*, i32** %depths112, align 8
  %arrayidx113 = getelementptr inbounds i32, i32* %75, i64 %idxprom111
  %76 = load i32, i32* %arrayidx113, align 4
  %call114 = call i32 @ico_write_png(%struct._IO_FILE* %70, i32 %73, i32 %76)
  store i32 %call114, i32* %saved, align 4
  br label %if.end.123

if.else.115:                                      ; preds = %if.end.88
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %78 = load i32, i32* %i, align 4
  %idxprom116 = sext i32 %78 to i64
  %layers117 = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %info, i32 0, i32 3
  %79 = load i32*, i32** %layers117, align 8
  %arrayidx118 = getelementptr inbounds i32, i32* %79, i64 %idxprom116
  %80 = load i32, i32* %arrayidx118, align 4
  %81 = load i32, i32* %i, align 4
  %idxprom119 = sext i32 %81 to i64
  %depths120 = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %info, i32 0, i32 0
  %82 = load i32*, i32** %depths120, align 8
  %arrayidx121 = getelementptr inbounds i32, i32* %82, i64 %idxprom119
  %83 = load i32, i32* %arrayidx121, align 4
  %call122 = call i32 @ico_write_icon(%struct._IO_FILE* %77, i32 %80, i32 %83)
  store i32 %call122, i32* %saved, align 4
  br label %if.end.123

if.end.123:                                       ; preds = %if.else.115, %if.then.107
  %84 = load i32, i32* %saved, align 4
  %tobool124 = icmp ne i32 %84, 0
  br i1 %tobool124, label %if.end.127, label %if.then.125

if.then.125:                                      ; preds = %if.end.123
  call void @ico_save_info_free(%struct._IcoSaveInfo* %info)
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call126 = call i32 @fclose(%struct._IO_FILE* %85)
  store i32 0, i32* %retval
  br label %return

if.end.127:                                       ; preds = %if.end.123
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call128 = call i64 @ftell(%struct._IO_FILE* %86)
  %87 = load i32, i32* %i, align 4
  %idxprom129 = sext i32 %87 to i64
  %88 = load %struct._IcoFileEntry*, %struct._IcoFileEntry** %entries, align 8
  %arrayidx130 = getelementptr inbounds %struct._IcoFileEntry, %struct._IcoFileEntry* %88, i64 %idxprom129
  %offset131 = getelementptr inbounds %struct._IcoFileEntry, %struct._IcoFileEntry* %arrayidx130, i32 0, i32 7
  %89 = load i32, i32* %offset131, align 4
  %conv132 = zext i32 %89 to i64
  %sub = sub nsw i64 %call128, %conv132
  %conv133 = trunc i64 %sub to i32
  %90 = load i32, i32* %i, align 4
  %idxprom134 = sext i32 %90 to i64
  %91 = load %struct._IcoFileEntry*, %struct._IcoFileEntry** %entries, align 8
  %arrayidx135 = getelementptr inbounds %struct._IcoFileEntry, %struct._IcoFileEntry* %91, i64 %idxprom134
  %size = getelementptr inbounds %struct._IcoFileEntry, %struct._IcoFileEntry* %arrayidx135, i32 0, i32 6
  store i32 %conv133, i32* %size, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.127
  %92 = load i32, i32* %i, align 4
  %inc = add nsw i32 %92, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.136

for.cond.136:                                     ; preds = %for.inc.165, %for.end
  %93 = load i32, i32* %i, align 4
  %num_icons137 = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %info, i32 0, i32 4
  %94 = load i32, i32* %num_icons137, align 4
  %cmp138 = icmp slt i32 %93, %94
  br i1 %cmp138, label %for.body.140, label %for.end.167

for.body.140:                                     ; preds = %for.cond.136
  %95 = load i32, i32* %i, align 4
  %idxprom141 = sext i32 %95 to i64
  %96 = load %struct._IcoFileEntry*, %struct._IcoFileEntry** %entries, align 8
  %arrayidx142 = getelementptr inbounds %struct._IcoFileEntry, %struct._IcoFileEntry* %96, i64 %idxprom141
  %planes143 = getelementptr inbounds %struct._IcoFileEntry, %struct._IcoFileEntry* %arrayidx142, i32 0, i32 4
  %97 = load i16, i16* %planes143, align 2
  %98 = load i32, i32* %i, align 4
  %idxprom144 = sext i32 %98 to i64
  %99 = load %struct._IcoFileEntry*, %struct._IcoFileEntry** %entries, align 8
  %arrayidx145 = getelementptr inbounds %struct._IcoFileEntry, %struct._IcoFileEntry* %99, i64 %idxprom144
  %planes146 = getelementptr inbounds %struct._IcoFileEntry, %struct._IcoFileEntry* %arrayidx145, i32 0, i32 4
  store i16 %97, i16* %planes146, align 2
  %100 = load i32, i32* %i, align 4
  %idxprom147 = sext i32 %100 to i64
  %101 = load %struct._IcoFileEntry*, %struct._IcoFileEntry** %entries, align 8
  %arrayidx148 = getelementptr inbounds %struct._IcoFileEntry, %struct._IcoFileEntry* %101, i64 %idxprom147
  %bpp149 = getelementptr inbounds %struct._IcoFileEntry, %struct._IcoFileEntry* %arrayidx148, i32 0, i32 5
  %102 = load i16, i16* %bpp149, align 2
  %103 = load i32, i32* %i, align 4
  %idxprom150 = sext i32 %103 to i64
  %104 = load %struct._IcoFileEntry*, %struct._IcoFileEntry** %entries, align 8
  %arrayidx151 = getelementptr inbounds %struct._IcoFileEntry, %struct._IcoFileEntry* %104, i64 %idxprom150
  %bpp152 = getelementptr inbounds %struct._IcoFileEntry, %struct._IcoFileEntry* %arrayidx151, i32 0, i32 5
  store i16 %102, i16* %bpp152, align 2
  %105 = load i32, i32* %i, align 4
  %idxprom153 = sext i32 %105 to i64
  %106 = load %struct._IcoFileEntry*, %struct._IcoFileEntry** %entries, align 8
  %arrayidx154 = getelementptr inbounds %struct._IcoFileEntry, %struct._IcoFileEntry* %106, i64 %idxprom153
  %size155 = getelementptr inbounds %struct._IcoFileEntry, %struct._IcoFileEntry* %arrayidx154, i32 0, i32 6
  %107 = load i32, i32* %size155, align 4
  %108 = load i32, i32* %i, align 4
  %idxprom156 = sext i32 %108 to i64
  %109 = load %struct._IcoFileEntry*, %struct._IcoFileEntry** %entries, align 8
  %arrayidx157 = getelementptr inbounds %struct._IcoFileEntry, %struct._IcoFileEntry* %109, i64 %idxprom156
  %size158 = getelementptr inbounds %struct._IcoFileEntry, %struct._IcoFileEntry* %arrayidx157, i32 0, i32 6
  store i32 %107, i32* %size158, align 4
  %110 = load i32, i32* %i, align 4
  %idxprom159 = sext i32 %110 to i64
  %111 = load %struct._IcoFileEntry*, %struct._IcoFileEntry** %entries, align 8
  %arrayidx160 = getelementptr inbounds %struct._IcoFileEntry, %struct._IcoFileEntry* %111, i64 %idxprom159
  %offset161 = getelementptr inbounds %struct._IcoFileEntry, %struct._IcoFileEntry* %arrayidx160, i32 0, i32 7
  %112 = load i32, i32* %offset161, align 4
  %113 = load i32, i32* %i, align 4
  %idxprom162 = sext i32 %113 to i64
  %114 = load %struct._IcoFileEntry*, %struct._IcoFileEntry** %entries, align 8
  %arrayidx163 = getelementptr inbounds %struct._IcoFileEntry, %struct._IcoFileEntry* %114, i64 %idxprom162
  %offset164 = getelementptr inbounds %struct._IcoFileEntry, %struct._IcoFileEntry* %arrayidx163, i32 0, i32 7
  store i32 %112, i32* %offset164, align 4
  br label %for.inc.165

for.inc.165:                                      ; preds = %for.body.140
  %115 = load i32, i32* %i, align 4
  %inc166 = add nsw i32 %115, 1
  store i32 %inc166, i32* %i, align 4
  br label %for.cond.136

for.end.167:                                      ; preds = %for.cond.136
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call168 = call i32 @fseek(%struct._IO_FILE* %116, i64 6, i32 0)
  %cmp169 = icmp slt i32 %call168, 0
  br i1 %cmp169, label %if.then.177, label %lor.lhs.false.171

lor.lhs.false.171:                                ; preds = %for.end.167
  %117 = load %struct._IcoFileEntry*, %struct._IcoFileEntry** %entries, align 8
  %118 = bitcast %struct._IcoFileEntry* %117 to i8*
  %num_icons172 = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %info, i32 0, i32 4
  %119 = load i32, i32* %num_icons172, align 4
  %conv173 = sext i32 %119 to i64
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call174 = call i64 @fwrite(i8* %118, i64 16, i64 %conv173, %struct._IO_FILE* %120)
  %cmp175 = icmp ule i64 %call174, 0
  br i1 %cmp175, label %if.then.177, label %if.end.179

if.then.177:                                      ; preds = %lor.lhs.false.171, %for.end.167
  call void @ico_save_info_free(%struct._IcoSaveInfo* %info)
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call178 = call i32 @fclose(%struct._IO_FILE* %121)
  store i32 0, i32* %retval
  br label %return

if.end.179:                                       ; preds = %lor.lhs.false.171
  %call180 = call i32 @gimp_progress_update(double 1.000000e+00)
  call void @ico_save_info_free(%struct._IcoSaveInfo* %info)
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call181 = call i32 @fclose(%struct._IO_FILE* %122)
  %123 = load %struct._IcoFileEntry*, %struct._IcoFileEntry** %entries, align 8
  %124 = bitcast %struct._IcoFileEntry* %123 to i8*
  call void @g_free(i8* %124)
  store i32 3, i32* %retval
  br label %return

return:                                           ; preds = %if.end.179, %if.then.177, %if.then.125, %if.then.38, %if.then.27, %if.then.8, %if.then.1
  %125 = load i32, i32* %retval
  ret i32 %125
}

; Function Attrs: nounwind uwtable
define internal void @ico_save_init(i32 %image_ID, %struct._IcoSaveInfo* %info) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %info.addr = alloca %struct._IcoSaveInfo*, align 8
  %layers = alloca i32*, align 8
  %i = alloca i32, align 4
  %num_colors = alloca i32, align 4
  %uses_alpha_values = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store %struct._IcoSaveInfo* %info, %struct._IcoSaveInfo** %info.addr, align 8
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load %struct._IcoSaveInfo*, %struct._IcoSaveInfo** %info.addr, align 8
  %num_icons = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %1, i32 0, i32 4
  %call = call i32* @gimp_image_get_layers(i32 %0, i32* %num_icons)
  store i32* %call, i32** %layers, align 8
  %2 = load i32*, i32** %layers, align 8
  %3 = load %struct._IcoSaveInfo*, %struct._IcoSaveInfo** %info.addr, align 8
  %layers1 = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %3, i32 0, i32 3
  store i32* %2, i32** %layers1, align 8
  %4 = load %struct._IcoSaveInfo*, %struct._IcoSaveInfo** %info.addr, align 8
  %num_icons2 = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %4, i32 0, i32 4
  %5 = load i32, i32* %num_icons2, align 4
  %conv = sext i32 %5 to i64
  %call3 = call noalias i8* @g_malloc_n(i64 %conv, i64 4)
  %6 = bitcast i8* %call3 to i32*
  %7 = load %struct._IcoSaveInfo*, %struct._IcoSaveInfo** %info.addr, align 8
  %depths = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %7, i32 0, i32 0
  store i32* %6, i32** %depths, align 8
  %8 = load %struct._IcoSaveInfo*, %struct._IcoSaveInfo** %info.addr, align 8
  %num_icons4 = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %8, i32 0, i32 4
  %9 = load i32, i32* %num_icons4, align 4
  %conv5 = sext i32 %9 to i64
  %call6 = call noalias i8* @g_malloc_n(i64 %conv5, i64 4)
  %10 = bitcast i8* %call6 to i32*
  %11 = load %struct._IcoSaveInfo*, %struct._IcoSaveInfo** %info.addr, align 8
  %default_depths = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %11, i32 0, i32 1
  store i32* %10, i32** %default_depths, align 8
  %12 = load %struct._IcoSaveInfo*, %struct._IcoSaveInfo** %info.addr, align 8
  %num_icons7 = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %12, i32 0, i32 4
  %13 = load i32, i32* %num_icons7, align 4
  %conv8 = sext i32 %13 to i64
  %call9 = call noalias i8* @g_malloc_n(i64 %conv8, i64 4)
  %14 = bitcast i8* %call9 to i32*
  %15 = load %struct._IcoSaveInfo*, %struct._IcoSaveInfo** %info.addr, align 8
  %compress = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %15, i32 0, i32 2
  store i32* %14, i32** %compress, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %16 = load i32, i32* %i, align 4
  %17 = load %struct._IcoSaveInfo*, %struct._IcoSaveInfo** %info.addr, align 8
  %num_icons10 = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %17, i32 0, i32 4
  %18 = load i32, i32* %num_icons10, align 4
  %cmp = icmp slt i32 %16, %18
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %i, align 4
  %idxprom = sext i32 %19 to i64
  %20 = load i32*, i32** %layers, align 8
  %arrayidx = getelementptr inbounds i32, i32* %20, i64 %idxprom
  %21 = load i32, i32* %arrayidx, align 4
  %call12 = call i32 @ico_get_layer_num_colors(i32 %21, i32* %uses_alpha_values)
  store i32 %call12, i32* %num_colors, align 4
  %22 = load i32, i32* %uses_alpha_values, align 4
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.else.38, label %if.then

if.then:                                          ; preds = %for.body
  %23 = load i32, i32* %num_colors, align 4
  %cmp13 = icmp sle i32 %23, 2
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then
  %24 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %24 to i64
  %25 = load %struct._IcoSaveInfo*, %struct._IcoSaveInfo** %info.addr, align 8
  %default_depths17 = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %25, i32 0, i32 1
  %26 = load i32*, i32** %default_depths17, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %26, i64 %idxprom16
  store i32 1, i32* %arrayidx18, align 4
  br label %if.end.37

if.else:                                          ; preds = %if.then
  %27 = load i32, i32* %num_colors, align 4
  %cmp19 = icmp sle i32 %27, 16
  br i1 %cmp19, label %if.then.21, label %if.else.25

if.then.21:                                       ; preds = %if.else
  %28 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %28 to i64
  %29 = load %struct._IcoSaveInfo*, %struct._IcoSaveInfo** %info.addr, align 8
  %default_depths23 = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %29, i32 0, i32 1
  %30 = load i32*, i32** %default_depths23, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %30, i64 %idxprom22
  store i32 4, i32* %arrayidx24, align 4
  br label %if.end.36

if.else.25:                                       ; preds = %if.else
  %31 = load i32, i32* %num_colors, align 4
  %cmp26 = icmp sle i32 %31, 256
  br i1 %cmp26, label %if.then.28, label %if.else.32

if.then.28:                                       ; preds = %if.else.25
  %32 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %32 to i64
  %33 = load %struct._IcoSaveInfo*, %struct._IcoSaveInfo** %info.addr, align 8
  %default_depths30 = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %33, i32 0, i32 1
  %34 = load i32*, i32** %default_depths30, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %34, i64 %idxprom29
  store i32 8, i32* %arrayidx31, align 4
  br label %if.end

if.else.32:                                       ; preds = %if.else.25
  %35 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %35 to i64
  %36 = load %struct._IcoSaveInfo*, %struct._IcoSaveInfo** %info.addr, align 8
  %default_depths34 = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %36, i32 0, i32 1
  %37 = load i32*, i32** %default_depths34, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %37, i64 %idxprom33
  store i32 24, i32* %arrayidx35, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.32, %if.then.28
  br label %if.end.36

if.end.36:                                        ; preds = %if.end, %if.then.21
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.15
  br label %if.end.42

if.else.38:                                       ; preds = %for.body
  %38 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %38 to i64
  %39 = load %struct._IcoSaveInfo*, %struct._IcoSaveInfo** %info.addr, align 8
  %default_depths40 = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %39, i32 0, i32 1
  %40 = load i32*, i32** %default_depths40, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %40, i64 %idxprom39
  store i32 32, i32* %arrayidx41, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.38, %if.end.37
  %41 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %41 to i64
  %42 = load i32*, i32** %layers, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %42, i64 %idxprom43
  %43 = load i32, i32* %arrayidx44, align 4
  %call45 = call i32 @gimp_drawable_width(i32 %43)
  %cmp46 = icmp sgt i32 %call45, 255
  br i1 %cmp46, label %if.then.53, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.42
  %44 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %44 to i64
  %45 = load i32*, i32** %layers, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %45, i64 %idxprom48
  %46 = load i32, i32* %arrayidx49, align 4
  %call50 = call i32 @gimp_drawable_height(i32 %46)
  %cmp51 = icmp sgt i32 %call50, 255
  br i1 %cmp51, label %if.then.53, label %if.else.57

if.then.53:                                       ; preds = %lor.lhs.false, %if.end.42
  %47 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %47 to i64
  %48 = load %struct._IcoSaveInfo*, %struct._IcoSaveInfo** %info.addr, align 8
  %compress55 = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %48, i32 0, i32 2
  %49 = load i32*, i32** %compress55, align 8
  %arrayidx56 = getelementptr inbounds i32, i32* %49, i64 %idxprom54
  store i32 1, i32* %arrayidx56, align 4
  br label %if.end.61

if.else.57:                                       ; preds = %lor.lhs.false
  %50 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %50 to i64
  %51 = load %struct._IcoSaveInfo*, %struct._IcoSaveInfo** %info.addr, align 8
  %compress59 = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %51, i32 0, i32 2
  %52 = load i32*, i32** %compress59, align 8
  %arrayidx60 = getelementptr inbounds i32, i32* %52, i64 %idxprom58
  store i32 0, i32* %arrayidx60, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.57, %if.then.53
  br label %for.inc

for.inc:                                          ; preds = %if.end.61
  %53 = load i32, i32* %i, align 4
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %54 = load %struct._IcoSaveInfo*, %struct._IcoSaveInfo** %info.addr, align 8
  %depths62 = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %54, i32 0, i32 0
  %55 = load i32*, i32** %depths62, align 8
  %56 = bitcast i32* %55 to i8*
  %57 = load %struct._IcoSaveInfo*, %struct._IcoSaveInfo** %info.addr, align 8
  %default_depths63 = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %57, i32 0, i32 1
  %58 = load i32*, i32** %default_depths63, align 8
  %59 = bitcast i32* %58 to i8*
  %60 = load %struct._IcoSaveInfo*, %struct._IcoSaveInfo** %info.addr, align 8
  %num_icons64 = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %60, i32 0, i32 4
  %61 = load i32, i32* %num_icons64, align 4
  %conv65 = sext i32 %61 to i64
  %mul = mul i64 4, %conv65
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* %59, i64 %mul, i32 4, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @ico_save_dialog(i32 %image_ID, %struct._IcoSaveInfo* %info) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %info.addr = alloca %struct._IcoSaveInfo*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %i = alloca i32, align 4
  %response = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store %struct._IcoSaveInfo* %info, %struct._IcoSaveInfo** %info.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 1)
  %0 = load %struct._IcoSaveInfo*, %struct._IcoSaveInfo** %info.addr, align 8
  %call = call %struct._GtkWidget* @ico_dialog_new(%struct._IcoSaveInfo* %0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %dialog, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load %struct._IcoSaveInfo*, %struct._IcoSaveInfo** %info.addr, align 8
  %num_icons = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %2, i32 0, i32 4
  %3 = load i32, i32* %num_icons, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct._IcoSaveInfo*, %struct._IcoSaveInfo** %info.addr, align 8
  %layers = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %6, i32 0, i32 3
  %7 = load i32*, i32** %layers, align 8
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  %9 = load i32, i32* %i, align 4
  call void @ico_dialog_add_icon(%struct._GtkWidget* %4, i32 %8, i32 %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_window_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call1)
  %13 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWindow*
  %14 = load %struct._IcoSaveInfo*, %struct._IcoSaveInfo** %info.addr, align 8
  %num_icons3 = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %14, i32 0, i32 4
  %15 = load i32, i32* %num_icons3, align 4
  %cmp4 = icmp sgt i32 %15, 4
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %16 = load %struct._IcoSaveInfo*, %struct._IcoSaveInfo** %info.addr, align 8
  %num_icons5 = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %16, i32 0, i32 4
  %17 = load i32, i32* %num_icons5, align 4
  %mul = mul nsw i32 %17, 120
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 500, %cond.true ], [ %mul, %cond.false ]
  %add = add nsw i32 200, %cond
  call void @gtk_window_set_default_size(%struct._GtkWindow* %13, i32 -1, i32 %add)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %18)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_dialog_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call6)
  %21 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpDialog*
  %call8 = call i32 @gimp_dialog_run(%struct._GimpDialog* %21)
  store i32 %call8, i32* %response, align 4
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %22)
  %23 = load i32, i32* %response, align 4
  %cmp9 = icmp eq i32 %23, -5
  %conv = zext i1 %cmp9 to i32
  ret i32 %conv
}

declare i32 @gimp_progress_init_printf(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare i8* @gimp_filename_to_utf8(i8*) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #1

declare i32 @g_file_error_quark() #1

declare i32 @g_file_error_from_errno(i32) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @ico_write_int16(%struct._IO_FILE* %fp, i16* %data, i32 %count) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %data.addr = alloca i16*, align 8
  %count.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i16* %data, i16** %data.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  %0 = load i32, i32* %count.addr, align 4
  store i32 %0, i32* %total, align 4
  %1 = load i32, i32* %count.addr, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %3 = load i16*, i16** %data.addr, align 8
  %4 = bitcast i16* %3 to i8*
  %5 = load i32, i32* %count.addr, align 4
  %mul = mul nsw i32 %5, 2
  %call = call i32 @ico_write_int8(%struct._IO_FILE* %2, i8* %4, i32 %mul)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %total, align 4
  %mul1 = mul nsw i32 %6, 2
  ret i32 %mul1
}

; Function Attrs: nounwind uwtable
define internal void @ico_save_info_free(%struct._IcoSaveInfo* %info) #0 {
entry:
  %info.addr = alloca %struct._IcoSaveInfo*, align 8
  store %struct._IcoSaveInfo* %info, %struct._IcoSaveInfo** %info.addr, align 8
  %0 = load %struct._IcoSaveInfo*, %struct._IcoSaveInfo** %info.addr, align 8
  %depths = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %0, i32 0, i32 0
  %1 = load i32*, i32** %depths, align 8
  %2 = bitcast i32* %1 to i8*
  call void @g_free(i8* %2)
  %3 = load %struct._IcoSaveInfo*, %struct._IcoSaveInfo** %info.addr, align 8
  %default_depths = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %3, i32 0, i32 1
  %4 = load i32*, i32** %default_depths, align 8
  %5 = bitcast i32* %4 to i8*
  call void @g_free(i8* %5)
  %6 = load %struct._IcoSaveInfo*, %struct._IcoSaveInfo** %info.addr, align 8
  %compress = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %6, i32 0, i32 2
  %7 = load i32*, i32** %compress, align 8
  %8 = bitcast i32* %7 to i8*
  call void @g_free(i8* %8)
  %9 = load %struct._IcoSaveInfo*, %struct._IcoSaveInfo** %info.addr, align 8
  %layers = getelementptr inbounds %struct._IcoSaveInfo, %struct._IcoSaveInfo* %9, i32 0, i32 3
  %10 = load i32*, i32** %layers, align 8
  %11 = bitcast i32* %10 to i8*
  call void @g_free(i8* %11)
  %12 = load %struct._IcoSaveInfo*, %struct._IcoSaveInfo** %info.addr, align 8
  %13 = bitcast %struct._IcoSaveInfo* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 40, i32 8, i1 false)
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

declare void @g_free(i8*) #1

declare i32 @gimp_progress_update(double) #1

declare i32 @gimp_drawable_width(i32) #1

declare i32 @gimp_drawable_height(i32) #1

declare i64 @ftell(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal i32 @ico_write_png(%struct._IO_FILE* %fp, i32 %layer, i32 %depth) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %layer.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %png_ptr = alloca %struct.png_struct_def*, align 8
  %info_ptr = alloca %struct.png_info_def*, align 8
  %row_pointers = alloca i8**, align 8
  %i = alloca i32, align 4
  %rowstride = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %num_colors_used = alloca i32, align 4
  %palette = alloca i8*, align 8
  %buffer = alloca i8*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %layer, i32* %layer.addr, align 4
  store i32 %depth, i32* %depth.addr, align 4
  store i8** null, i8*** %row_pointers, align 8
  store i8* null, i8** %palette, align 8
  store i8* null, i8** %buffer, align 8
  %0 = load i32, i32* %layer.addr, align 4
  %call = call i32 @gimp_drawable_width(i32 %0)
  store i32 %call, i32* %width, align 4
  %1 = load i32, i32* %layer.addr, align 4
  %call1 = call i32 @gimp_drawable_height(i32 %1)
  store i32 %call1, i32* %height, align 4
  %call2 = call noalias %struct.png_struct_def* @png_create_write_struct(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* null, void (%struct.png_struct_def*, i8*)* null, void (%struct.png_struct_def*, i8*)* null)
  store %struct.png_struct_def* %call2, %struct.png_struct_def** %png_ptr, align 8
  %2 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %tobool = icmp ne %struct.png_struct_def* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %call3 = call noalias %struct.png_info_def* @png_create_info_struct(%struct.png_struct_def* %3)
  store %struct.png_info_def* %call3, %struct.png_info_def** %info_ptr, align 8
  %4 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr, align 8
  %tobool4 = icmp ne %struct.png_info_def* %4, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  call void @png_destroy_write_struct(%struct.png_struct_def** %png_ptr, %struct.png_info_def** null)
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %5 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %call7 = call [1 x %struct.__jmp_buf_tag]* @png_set_longjmp_fn(%struct.png_struct_def* %5, void (%struct.__jmp_buf_tag*, i32)* @longjmp, i64 200)
  %arraydecay = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %call7, i32 0, i32 0
  %call8 = call i32 @_setjmp(%struct.__jmp_buf_tag* %arraydecay) #8
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.20

if.then.10:                                       ; preds = %if.end.6
  call void @png_destroy_write_struct(%struct.png_struct_def** %png_ptr, %struct.png_info_def** %info_ptr)
  %6 = load i8**, i8*** %row_pointers, align 8
  %tobool11 = icmp ne i8** %6, null
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.10
  %7 = load i8**, i8*** %row_pointers, align 8
  %8 = bitcast i8** %7 to i8*
  call void @g_free(i8* %8)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.then.10
  %9 = load i8*, i8** %palette, align 8
  %tobool14 = icmp ne i8* %9, null
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.13
  %10 = load i8*, i8** %palette, align 8
  call void @g_free(i8* %10)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.13
  %11 = load i8*, i8** %buffer, align 8
  %tobool17 = icmp ne i8* %11, null
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.16
  %12 = load i8*, i8** %buffer, align 8
  call void @g_free(i8* %12)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.end.16
  store i32 0, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.6
  %13 = load i32, i32* %layer.addr, align 4
  %14 = load i32, i32* %depth.addr, align 4
  call void @ico_image_get_reduced_buf(i32 %13, i32 %14, i32* %num_colors_used, i8** %palette, i8** %buffer)
  %15 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @png_init_io(%struct.png_struct_def* %15, %struct._IO_FILE* %16)
  %17 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %18 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr, align 8
  %19 = load i32, i32* %width, align 4
  %20 = load i32, i32* %height, align 4
  call void @png_set_IHDR(%struct.png_struct_def* %17, %struct.png_info_def* %18, i32 %19, i32 %20, i32 8, i32 6, i32 0, i32 0, i32 0)
  %21 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %22 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr, align 8
  call void @png_write_info(%struct.png_struct_def* %21, %struct.png_info_def* %22)
  %23 = load i32, i32* %width, align 4
  %call21 = call i32 @ico_rowstride(i32 %23, i32 32)
  store i32 %call21, i32* %rowstride, align 4
  %24 = load i32, i32* %height, align 4
  %conv = sext i32 %24 to i64
  %call22 = call noalias i8* @g_malloc_n(i64 %conv, i64 8)
  %25 = bitcast i8* %call22 to i8**
  store i8** %25, i8*** %row_pointers, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.20
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %height, align 4
  %cmp = icmp slt i32 %26, %27
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i8*, i8** %buffer, align 8
  %29 = load i32, i32* %rowstride, align 4
  %30 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %29, %30
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %28, i64 %idx.ext
  %31 = load i32, i32* %i, align 4
  %idxprom = sext i32 %31 to i64
  %32 = load i8**, i8*** %row_pointers, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %32, i64 %idxprom
  store i8* %add.ptr, i8** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i32, i32* %i, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %35 = load i8**, i8*** %row_pointers, align 8
  call void @png_write_image(%struct.png_struct_def* %34, i8** %35)
  store i8** null, i8*** %row_pointers, align 8
  %36 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %37 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr, align 8
  call void @png_write_end(%struct.png_struct_def* %36, %struct.png_info_def* %37)
  call void @png_destroy_write_struct(%struct.png_struct_def** %png_ptr, %struct.png_info_def** %info_ptr)
  %38 = load i8**, i8*** %row_pointers, align 8
  %39 = bitcast i8** %38 to i8*
  call void @g_free(i8* %39)
  %40 = load i8*, i8** %palette, align 8
  call void @g_free(i8* %40)
  %41 = load i8*, i8** %buffer, align 8
  call void @g_free(i8* %41)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.end.19, %if.then.5, %if.then
  %42 = load i32, i32* %retval
  ret i32 %42
}

; Function Attrs: nounwind uwtable
define internal i32 @ico_write_icon(%struct._IO_FILE* %fp, i32 %layer, i32 %depth) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %layer.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %header = alloca %struct._IcoFileDataHeader, align 4
  %and_len = alloca i32, align 4
  %xor_len = alloca i32, align 4
  %palette_index = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %num_colors = alloca i32, align 4
  %num_colors_used = alloca i32, align 4
  %black_index = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %buffer = alloca i8*, align 8
  %pixel = alloca i8*, align 8
  %buffer32 = alloca i32*, align 8
  %palette = alloca i8*, align 8
  %color_to_slot = alloca %struct._GHashTable*, align 8
  %xor_map = alloca i8*, align 8
  %and_map = alloca i8*, align 8
  %palette32 = alloca i32*, align 8
  %palette_len = alloca i32, align 4
  %alpha_threshold = alloca i8, align 1
  %row = alloca i8*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %layer, i32* %layer.addr, align 4
  store i32 %depth, i32* %depth.addr, align 4
  store i32 0, i32* %num_colors, align 4
  store i32 0, i32* %num_colors_used, align 4
  store i32 0, i32* %black_index, align 4
  store i8* null, i8** %buffer, align 8
  store %struct._GHashTable* null, %struct._GHashTable** %color_to_slot, align 8
  store i32* null, i32** %palette32, align 8
  store i32 0, i32* %palette_len, align 4
  %0 = load i32, i32* %layer.addr, align 4
  %call = call i32 @gimp_drawable_width(i32 %0)
  store i32 %call, i32* %width, align 4
  %1 = load i32, i32* %layer.addr, align 4
  %call1 = call i32 @gimp_drawable_height(i32 %1)
  store i32 %call1, i32* %height, align 4
  %header_size = getelementptr inbounds %struct._IcoFileDataHeader, %struct._IcoFileDataHeader* %header, i32 0, i32 0
  store i32 40, i32* %header_size, align 4
  %2 = load i32, i32* %width, align 4
  %width2 = getelementptr inbounds %struct._IcoFileDataHeader, %struct._IcoFileDataHeader* %header, i32 0, i32 1
  store i32 %2, i32* %width2, align 4
  %3 = load i32, i32* %height, align 4
  %mul = mul nsw i32 2, %3
  %height3 = getelementptr inbounds %struct._IcoFileDataHeader, %struct._IcoFileDataHeader* %header, i32 0, i32 2
  store i32 %mul, i32* %height3, align 4
  %planes = getelementptr inbounds %struct._IcoFileDataHeader, %struct._IcoFileDataHeader* %header, i32 0, i32 3
  store i16 1, i16* %planes, align 2
  %4 = load i32, i32* %depth.addr, align 4
  %conv = trunc i32 %4 to i16
  %bpp = getelementptr inbounds %struct._IcoFileDataHeader, %struct._IcoFileDataHeader* %header, i32 0, i32 4
  store i16 %conv, i16* %bpp, align 2
  %compression = getelementptr inbounds %struct._IcoFileDataHeader, %struct._IcoFileDataHeader* %header, i32 0, i32 5
  store i32 0, i32* %compression, align 4
  %image_size = getelementptr inbounds %struct._IcoFileDataHeader, %struct._IcoFileDataHeader* %header, i32 0, i32 6
  store i32 0, i32* %image_size, align 4
  %x_res = getelementptr inbounds %struct._IcoFileDataHeader, %struct._IcoFileDataHeader* %header, i32 0, i32 7
  store i32 0, i32* %x_res, align 4
  %y_res = getelementptr inbounds %struct._IcoFileDataHeader, %struct._IcoFileDataHeader* %header, i32 0, i32 8
  store i32 0, i32* %y_res, align 4
  %used_clrs = getelementptr inbounds %struct._IcoFileDataHeader, %struct._IcoFileDataHeader* %header, i32 0, i32 9
  store i32 0, i32* %used_clrs, align 4
  %important_clrs = getelementptr inbounds %struct._IcoFileDataHeader, %struct._IcoFileDataHeader* %header, i32 0, i32 10
  store i32 0, i32* %important_clrs, align 4
  %bpp4 = getelementptr inbounds %struct._IcoFileDataHeader, %struct._IcoFileDataHeader* %header, i32 0, i32 4
  %5 = load i16, i16* %bpp4, align 2
  %conv5 = zext i16 %5 to i32
  %sh_prom = zext i32 %conv5 to i64
  %shl = shl i64 1, %sh_prom
  %conv6 = trunc i64 %shl to i32
  store i32 %conv6, i32* %num_colors, align 4
  %6 = load i32, i32* %layer.addr, align 4
  %bpp7 = getelementptr inbounds %struct._IcoFileDataHeader, %struct._IcoFileDataHeader* %header, i32 0, i32 4
  %7 = load i16, i16* %bpp7, align 2
  %conv8 = zext i16 %7 to i32
  call void @ico_image_get_reduced_buf(i32 %6, i32 %conv8, i32* %num_colors_used, i8** %palette, i8** %buffer)
  %8 = load i8*, i8** %buffer, align 8
  %9 = bitcast i8* %8 to i32*
  store i32* %9, i32** %buffer32, align 8
  %bpp9 = getelementptr inbounds %struct._IcoFileDataHeader, %struct._IcoFileDataHeader* %header, i32 0, i32 4
  %10 = load i16, i16* %bpp9, align 2
  %conv10 = zext i16 %10 to i32
  %cmp = icmp sle i32 %conv10, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i8*, i8** %palette, align 8
  %12 = load i32, i32* %num_colors, align 4
  %13 = load i32, i32* %num_colors_used, align 4
  %call12 = call i32* @ico_create_palette(i8* %11, i32 %12, i32 %13, i32* %black_index)
  store i32* %call12, i32** %palette32, align 8
  %14 = load i32, i32* %num_colors, align 4
  %mul13 = mul nsw i32 %14, 4
  store i32 %mul13, i32* %palette_len, align 4
  %15 = load i32*, i32** %palette32, align 8
  %16 = load i32, i32* %num_colors_used, align 4
  %call14 = call %struct._GHashTable* @ico_create_color_to_palette_map(i32* %15, i32 %16)
  store %struct._GHashTable* %call14, %struct._GHashTable** %color_to_slot, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load i32, i32* %width, align 4
  %18 = load i32, i32* %height, align 4
  %call15 = call i8* @ico_alloc_map(i32 %17, i32 %18, i32 1, i32* %and_len)
  store i8* %call15, i8** %and_map, align 8
  %bpp16 = getelementptr inbounds %struct._IcoFileDataHeader, %struct._IcoFileDataHeader* %header, i32 0, i32 4
  %19 = load i16, i16* %bpp16, align 2
  %conv17 = zext i16 %19 to i32
  %cmp18 = icmp slt i32 %conv17, 32
  %cond = select i1 %cmp18, i32 127, i32 0
  %conv20 = trunc i32 %cond to i8
  store i8 %conv20, i8* %alpha_threshold, align 1
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.37, %if.end
  %20 = load i32, i32* %y, align 4
  %21 = load i32, i32* %height, align 4
  %cmp21 = icmp slt i32 %20, %21
  br i1 %cmp21, label %for.body, label %for.end.39

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc, %for.body
  %22 = load i32, i32* %x, align 4
  %23 = load i32, i32* %width, align 4
  %cmp24 = icmp slt i32 %22, %23
  br i1 %cmp24, label %for.body.26, label %for.end

for.body.26:                                      ; preds = %for.cond.23
  %24 = load i32, i32* %y, align 4
  %25 = load i32, i32* %width, align 4
  %mul27 = mul nsw i32 %24, %25
  %26 = load i32, i32* %x, align 4
  %add = add nsw i32 %mul27, %26
  %idxprom = sext i32 %add to i64
  %27 = load i32*, i32** %buffer32, align 8
  %arrayidx = getelementptr inbounds i32, i32* %27, i64 %idxprom
  %28 = bitcast i32* %arrayidx to i8*
  store i8* %28, i8** %pixel, align 8
  %29 = load i8*, i8** %and_map, align 8
  %30 = load i32, i32* %width, align 4
  %31 = load i32, i32* %height, align 4
  %32 = load i32, i32* %y, align 4
  %sub = sub nsw i32 %31, %32
  %sub28 = sub nsw i32 %sub, 1
  %33 = load i32, i32* %width, align 4
  %mul29 = mul nsw i32 %sub28, %33
  %34 = load i32, i32* %x, align 4
  %add30 = add nsw i32 %mul29, %34
  %35 = load i8*, i8** %pixel, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %35, i64 3
  %36 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %36 to i32
  %37 = load i8, i8* %alpha_threshold, align 1
  %conv33 = zext i8 %37 to i32
  %cmp34 = icmp sgt i32 %conv32, %conv33
  %cond36 = select i1 %cmp34, i32 0, i32 1
  call void @ico_set_bit_in_data(i8* %29, i32 %30, i32 %add30, i32 %cond36)
  br label %for.inc

for.inc:                                          ; preds = %for.body.26
  %38 = load i32, i32* %x, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.23

for.end:                                          ; preds = %for.cond.23
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.end
  %39 = load i32, i32* %y, align 4
  %inc38 = add nsw i32 %39, 1
  store i32 %inc38, i32* %y, align 4
  br label %for.cond

for.end.39:                                       ; preds = %for.cond
  %40 = load i32, i32* %width, align 4
  %41 = load i32, i32* %height, align 4
  %bpp40 = getelementptr inbounds %struct._IcoFileDataHeader, %struct._IcoFileDataHeader* %header, i32 0, i32 4
  %42 = load i16, i16* %bpp40, align 2
  %conv41 = zext i16 %42 to i32
  %call42 = call i8* @ico_alloc_map(i32 %40, i32 %41, i32 %conv41, i32* %xor_len)
  store i8* %call42, i8** %xor_map, align 8
  %bpp43 = getelementptr inbounds %struct._IcoFileDataHeader, %struct._IcoFileDataHeader* %header, i32 0, i32 4
  %43 = load i16, i16* %bpp43, align 2
  %conv44 = zext i16 %43 to i32
  switch i32 %conv44, label %sw.default [
    i32 1, label %sw.bb
    i32 4, label %sw.bb.85
    i32 8, label %sw.bb.128
    i32 24, label %sw.bb.171
  ]

sw.bb:                                            ; preds = %for.end.39
  store i32 0, i32* %y, align 4
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.82, %sw.bb
  %44 = load i32, i32* %y, align 4
  %45 = load i32, i32* %height, align 4
  %cmp46 = icmp slt i32 %44, %45
  br i1 %cmp46, label %for.body.48, label %for.end.84

for.body.48:                                      ; preds = %for.cond.45
  store i32 0, i32* %x, align 4
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.79, %for.body.48
  %46 = load i32, i32* %x, align 4
  %47 = load i32, i32* %width, align 4
  %cmp50 = icmp slt i32 %46, %47
  br i1 %cmp50, label %for.body.52, label %for.end.81

for.body.52:                                      ; preds = %for.cond.49
  %48 = load i32, i32* %y, align 4
  %49 = load i32, i32* %width, align 4
  %mul53 = mul nsw i32 %48, %49
  %50 = load i32, i32* %x, align 4
  %add54 = add nsw i32 %mul53, %50
  %idxprom55 = sext i32 %add54 to i64
  %51 = load i32*, i32** %buffer32, align 8
  %arrayidx56 = getelementptr inbounds i32, i32* %51, i64 %idxprom55
  %52 = bitcast i32* %arrayidx56 to i8*
  store i8* %52, i8** %pixel, align 8
  %53 = load %struct._GHashTable*, %struct._GHashTable** %color_to_slot, align 8
  %54 = load i8*, i8** %pixel, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %54, i64 0
  %55 = load i8, i8* %arrayidx57, align 1
  %conv58 = zext i8 %55 to i32
  %56 = load i8*, i8** %pixel, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %56, i64 1
  %57 = load i8, i8* %arrayidx59, align 1
  %conv60 = zext i8 %57 to i32
  %58 = load i8*, i8** %pixel, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %58, i64 2
  %59 = load i8, i8* %arrayidx61, align 1
  %conv62 = zext i8 %59 to i32
  %call63 = call i32 @ico_get_palette_index(%struct._GHashTable* %53, i32 %conv58, i32 %conv60, i32 %conv62)
  store i32 %call63, i32* %palette_index, align 4
  %60 = load i8*, i8** %and_map, align 8
  %61 = load i32, i32* %width, align 4
  %62 = load i32, i32* %height, align 4
  %63 = load i32, i32* %y, align 4
  %sub64 = sub nsw i32 %62, %63
  %sub65 = sub nsw i32 %sub64, 1
  %64 = load i32, i32* %width, align 4
  %mul66 = mul nsw i32 %sub65, %64
  %65 = load i32, i32* %x, align 4
  %add67 = add nsw i32 %mul66, %65
  %call68 = call i32 @ico_get_bit_from_data(i8* %60, i32 %61, i32 %add67)
  %tobool = icmp ne i32 %call68, 0
  br i1 %tobool, label %if.then.69, label %if.else

if.then.69:                                       ; preds = %for.body.52
  %66 = load i8*, i8** %xor_map, align 8
  %67 = load i32, i32* %width, align 4
  %68 = load i32, i32* %height, align 4
  %69 = load i32, i32* %y, align 4
  %sub70 = sub nsw i32 %68, %69
  %sub71 = sub nsw i32 %sub70, 1
  %70 = load i32, i32* %width, align 4
  %mul72 = mul nsw i32 %sub71, %70
  %71 = load i32, i32* %x, align 4
  %add73 = add nsw i32 %mul72, %71
  %72 = load i32, i32* %black_index, align 4
  call void @ico_set_bit_in_data(i8* %66, i32 %67, i32 %add73, i32 %72)
  br label %if.end.78

if.else:                                          ; preds = %for.body.52
  %73 = load i8*, i8** %xor_map, align 8
  %74 = load i32, i32* %width, align 4
  %75 = load i32, i32* %height, align 4
  %76 = load i32, i32* %y, align 4
  %sub74 = sub nsw i32 %75, %76
  %sub75 = sub nsw i32 %sub74, 1
  %77 = load i32, i32* %width, align 4
  %mul76 = mul nsw i32 %sub75, %77
  %78 = load i32, i32* %x, align 4
  %add77 = add nsw i32 %mul76, %78
  %79 = load i32, i32* %palette_index, align 4
  call void @ico_set_bit_in_data(i8* %73, i32 %74, i32 %add77, i32 %79)
  br label %if.end.78

if.end.78:                                        ; preds = %if.else, %if.then.69
  br label %for.inc.79

for.inc.79:                                       ; preds = %if.end.78
  %80 = load i32, i32* %x, align 4
  %inc80 = add nsw i32 %80, 1
  store i32 %inc80, i32* %x, align 4
  br label %for.cond.49

for.end.81:                                       ; preds = %for.cond.49
  br label %for.inc.82

for.inc.82:                                       ; preds = %for.end.81
  %81 = load i32, i32* %y, align 4
  %inc83 = add nsw i32 %81, 1
  store i32 %inc83, i32* %y, align 4
  br label %for.cond.45

for.end.84:                                       ; preds = %for.cond.45
  br label %sw.epilog

sw.bb.85:                                         ; preds = %for.end.39
  store i32 0, i32* %y, align 4
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.125, %sw.bb.85
  %82 = load i32, i32* %y, align 4
  %83 = load i32, i32* %height, align 4
  %cmp87 = icmp slt i32 %82, %83
  br i1 %cmp87, label %for.body.89, label %for.end.127

for.body.89:                                      ; preds = %for.cond.86
  store i32 0, i32* %x, align 4
  br label %for.cond.90

for.cond.90:                                      ; preds = %for.inc.122, %for.body.89
  %84 = load i32, i32* %x, align 4
  %85 = load i32, i32* %width, align 4
  %cmp91 = icmp slt i32 %84, %85
  br i1 %cmp91, label %for.body.93, label %for.end.124

for.body.93:                                      ; preds = %for.cond.90
  %86 = load i32, i32* %y, align 4
  %87 = load i32, i32* %width, align 4
  %mul94 = mul nsw i32 %86, %87
  %88 = load i32, i32* %x, align 4
  %add95 = add nsw i32 %mul94, %88
  %idxprom96 = sext i32 %add95 to i64
  %89 = load i32*, i32** %buffer32, align 8
  %arrayidx97 = getelementptr inbounds i32, i32* %89, i64 %idxprom96
  %90 = bitcast i32* %arrayidx97 to i8*
  store i8* %90, i8** %pixel, align 8
  %91 = load %struct._GHashTable*, %struct._GHashTable** %color_to_slot, align 8
  %92 = load i8*, i8** %pixel, align 8
  %arrayidx98 = getelementptr inbounds i8, i8* %92, i64 0
  %93 = load i8, i8* %arrayidx98, align 1
  %conv99 = zext i8 %93 to i32
  %94 = load i8*, i8** %pixel, align 8
  %arrayidx100 = getelementptr inbounds i8, i8* %94, i64 1
  %95 = load i8, i8* %arrayidx100, align 1
  %conv101 = zext i8 %95 to i32
  %96 = load i8*, i8** %pixel, align 8
  %arrayidx102 = getelementptr inbounds i8, i8* %96, i64 2
  %97 = load i8, i8* %arrayidx102, align 1
  %conv103 = zext i8 %97 to i32
  %call104 = call i32 @ico_get_palette_index(%struct._GHashTable* %91, i32 %conv99, i32 %conv101, i32 %conv103)
  store i32 %call104, i32* %palette_index, align 4
  %98 = load i8*, i8** %and_map, align 8
  %99 = load i32, i32* %width, align 4
  %100 = load i32, i32* %height, align 4
  %101 = load i32, i32* %y, align 4
  %sub105 = sub nsw i32 %100, %101
  %sub106 = sub nsw i32 %sub105, 1
  %102 = load i32, i32* %width, align 4
  %mul107 = mul nsw i32 %sub106, %102
  %103 = load i32, i32* %x, align 4
  %add108 = add nsw i32 %mul107, %103
  %call109 = call i32 @ico_get_bit_from_data(i8* %98, i32 %99, i32 %add108)
  %tobool110 = icmp ne i32 %call109, 0
  br i1 %tobool110, label %if.then.111, label %if.else.116

if.then.111:                                      ; preds = %for.body.93
  %104 = load i8*, i8** %xor_map, align 8
  %105 = load i32, i32* %width, align 4
  %106 = load i32, i32* %height, align 4
  %107 = load i32, i32* %y, align 4
  %sub112 = sub nsw i32 %106, %107
  %sub113 = sub nsw i32 %sub112, 1
  %108 = load i32, i32* %width, align 4
  %mul114 = mul nsw i32 %sub113, %108
  %109 = load i32, i32* %x, align 4
  %add115 = add nsw i32 %mul114, %109
  %110 = load i32, i32* %black_index, align 4
  call void @ico_set_nibble_in_data(i8* %104, i32 %105, i32 %add115, i32 %110)
  br label %if.end.121

if.else.116:                                      ; preds = %for.body.93
  %111 = load i8*, i8** %xor_map, align 8
  %112 = load i32, i32* %width, align 4
  %113 = load i32, i32* %height, align 4
  %114 = load i32, i32* %y, align 4
  %sub117 = sub nsw i32 %113, %114
  %sub118 = sub nsw i32 %sub117, 1
  %115 = load i32, i32* %width, align 4
  %mul119 = mul nsw i32 %sub118, %115
  %116 = load i32, i32* %x, align 4
  %add120 = add nsw i32 %mul119, %116
  %117 = load i32, i32* %palette_index, align 4
  call void @ico_set_nibble_in_data(i8* %111, i32 %112, i32 %add120, i32 %117)
  br label %if.end.121

if.end.121:                                       ; preds = %if.else.116, %if.then.111
  br label %for.inc.122

for.inc.122:                                      ; preds = %if.end.121
  %118 = load i32, i32* %x, align 4
  %inc123 = add nsw i32 %118, 1
  store i32 %inc123, i32* %x, align 4
  br label %for.cond.90

for.end.124:                                      ; preds = %for.cond.90
  br label %for.inc.125

for.inc.125:                                      ; preds = %for.end.124
  %119 = load i32, i32* %y, align 4
  %inc126 = add nsw i32 %119, 1
  store i32 %inc126, i32* %y, align 4
  br label %for.cond.86

for.end.127:                                      ; preds = %for.cond.86
  br label %sw.epilog

sw.bb.128:                                        ; preds = %for.end.39
  store i32 0, i32* %y, align 4
  br label %for.cond.129

for.cond.129:                                     ; preds = %for.inc.168, %sw.bb.128
  %120 = load i32, i32* %y, align 4
  %121 = load i32, i32* %height, align 4
  %cmp130 = icmp slt i32 %120, %121
  br i1 %cmp130, label %for.body.132, label %for.end.170

for.body.132:                                     ; preds = %for.cond.129
  store i32 0, i32* %x, align 4
  br label %for.cond.133

for.cond.133:                                     ; preds = %for.inc.165, %for.body.132
  %122 = load i32, i32* %x, align 4
  %123 = load i32, i32* %width, align 4
  %cmp134 = icmp slt i32 %122, %123
  br i1 %cmp134, label %for.body.136, label %for.end.167

for.body.136:                                     ; preds = %for.cond.133
  %124 = load i32, i32* %y, align 4
  %125 = load i32, i32* %width, align 4
  %mul137 = mul nsw i32 %124, %125
  %126 = load i32, i32* %x, align 4
  %add138 = add nsw i32 %mul137, %126
  %idxprom139 = sext i32 %add138 to i64
  %127 = load i32*, i32** %buffer32, align 8
  %arrayidx140 = getelementptr inbounds i32, i32* %127, i64 %idxprom139
  %128 = bitcast i32* %arrayidx140 to i8*
  store i8* %128, i8** %pixel, align 8
  %129 = load %struct._GHashTable*, %struct._GHashTable** %color_to_slot, align 8
  %130 = load i8*, i8** %pixel, align 8
  %arrayidx141 = getelementptr inbounds i8, i8* %130, i64 0
  %131 = load i8, i8* %arrayidx141, align 1
  %conv142 = zext i8 %131 to i32
  %132 = load i8*, i8** %pixel, align 8
  %arrayidx143 = getelementptr inbounds i8, i8* %132, i64 1
  %133 = load i8, i8* %arrayidx143, align 1
  %conv144 = zext i8 %133 to i32
  %134 = load i8*, i8** %pixel, align 8
  %arrayidx145 = getelementptr inbounds i8, i8* %134, i64 2
  %135 = load i8, i8* %arrayidx145, align 1
  %conv146 = zext i8 %135 to i32
  %call147 = call i32 @ico_get_palette_index(%struct._GHashTable* %129, i32 %conv142, i32 %conv144, i32 %conv146)
  store i32 %call147, i32* %palette_index, align 4
  %136 = load i8*, i8** %and_map, align 8
  %137 = load i32, i32* %width, align 4
  %138 = load i32, i32* %height, align 4
  %139 = load i32, i32* %y, align 4
  %sub148 = sub nsw i32 %138, %139
  %sub149 = sub nsw i32 %sub148, 1
  %140 = load i32, i32* %width, align 4
  %mul150 = mul nsw i32 %sub149, %140
  %141 = load i32, i32* %x, align 4
  %add151 = add nsw i32 %mul150, %141
  %call152 = call i32 @ico_get_bit_from_data(i8* %136, i32 %137, i32 %add151)
  %tobool153 = icmp ne i32 %call152, 0
  br i1 %tobool153, label %if.then.154, label %if.else.159

if.then.154:                                      ; preds = %for.body.136
  %142 = load i8*, i8** %xor_map, align 8
  %143 = load i32, i32* %width, align 4
  %144 = load i32, i32* %height, align 4
  %145 = load i32, i32* %y, align 4
  %sub155 = sub nsw i32 %144, %145
  %sub156 = sub nsw i32 %sub155, 1
  %146 = load i32, i32* %width, align 4
  %mul157 = mul nsw i32 %sub156, %146
  %147 = load i32, i32* %x, align 4
  %add158 = add nsw i32 %mul157, %147
  %148 = load i32, i32* %black_index, align 4
  call void @ico_set_byte_in_data(i8* %142, i32 %143, i32 %add158, i32 %148)
  br label %if.end.164

if.else.159:                                      ; preds = %for.body.136
  %149 = load i8*, i8** %xor_map, align 8
  %150 = load i32, i32* %width, align 4
  %151 = load i32, i32* %height, align 4
  %152 = load i32, i32* %y, align 4
  %sub160 = sub nsw i32 %151, %152
  %sub161 = sub nsw i32 %sub160, 1
  %153 = load i32, i32* %width, align 4
  %mul162 = mul nsw i32 %sub161, %153
  %154 = load i32, i32* %x, align 4
  %add163 = add nsw i32 %mul162, %154
  %155 = load i32, i32* %palette_index, align 4
  call void @ico_set_byte_in_data(i8* %149, i32 %150, i32 %add163, i32 %155)
  br label %if.end.164

if.end.164:                                       ; preds = %if.else.159, %if.then.154
  br label %for.inc.165

for.inc.165:                                      ; preds = %if.end.164
  %156 = load i32, i32* %x, align 4
  %inc166 = add nsw i32 %156, 1
  store i32 %inc166, i32* %x, align 4
  br label %for.cond.133

for.end.167:                                      ; preds = %for.cond.133
  br label %for.inc.168

for.inc.168:                                      ; preds = %for.end.167
  %157 = load i32, i32* %y, align 4
  %inc169 = add nsw i32 %157, 1
  store i32 %inc169, i32* %y, align 4
  br label %for.cond.129

for.end.170:                                      ; preds = %for.cond.129
  br label %sw.epilog

sw.bb.171:                                        ; preds = %for.end.39
  store i32 0, i32* %y, align 4
  br label %for.cond.172

for.cond.172:                                     ; preds = %for.inc.197, %sw.bb.171
  %158 = load i32, i32* %y, align 4
  %159 = load i32, i32* %height, align 4
  %cmp173 = icmp slt i32 %158, %159
  br i1 %cmp173, label %for.body.175, label %for.end.199

for.body.175:                                     ; preds = %for.cond.172
  %160 = load i8*, i8** %xor_map, align 8
  %161 = load i32, i32* %xor_len, align 4
  %162 = load i32, i32* %height, align 4
  %163 = load i32, i32* %y, align 4
  %sub176 = sub nsw i32 %162, %163
  %sub177 = sub nsw i32 %sub176, 1
  %mul178 = mul nsw i32 %161, %sub177
  %164 = load i32, i32* %height, align 4
  %div = sdiv i32 %mul178, %164
  %idx.ext = sext i32 %div to i64
  %add.ptr = getelementptr inbounds i8, i8* %160, i64 %idx.ext
  store i8* %add.ptr, i8** %row, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond.179

for.cond.179:                                     ; preds = %for.inc.194, %for.body.175
  %165 = load i32, i32* %x, align 4
  %166 = load i32, i32* %width, align 4
  %cmp180 = icmp slt i32 %165, %166
  br i1 %cmp180, label %for.body.182, label %for.end.196

for.body.182:                                     ; preds = %for.cond.179
  %167 = load i32, i32* %y, align 4
  %168 = load i32, i32* %width, align 4
  %mul183 = mul nsw i32 %167, %168
  %169 = load i32, i32* %x, align 4
  %add184 = add nsw i32 %mul183, %169
  %idxprom185 = sext i32 %add184 to i64
  %170 = load i32*, i32** %buffer32, align 8
  %arrayidx186 = getelementptr inbounds i32, i32* %170, i64 %idxprom185
  %171 = bitcast i32* %arrayidx186 to i8*
  store i8* %171, i8** %pixel, align 8
  %172 = load i8*, i8** %pixel, align 8
  %arrayidx187 = getelementptr inbounds i8, i8* %172, i64 2
  %173 = load i8, i8* %arrayidx187, align 1
  %174 = load i8*, i8** %row, align 8
  %arrayidx188 = getelementptr inbounds i8, i8* %174, i64 0
  store i8 %173, i8* %arrayidx188, align 1
  %175 = load i8*, i8** %pixel, align 8
  %arrayidx189 = getelementptr inbounds i8, i8* %175, i64 1
  %176 = load i8, i8* %arrayidx189, align 1
  %177 = load i8*, i8** %row, align 8
  %arrayidx190 = getelementptr inbounds i8, i8* %177, i64 1
  store i8 %176, i8* %arrayidx190, align 1
  %178 = load i8*, i8** %pixel, align 8
  %arrayidx191 = getelementptr inbounds i8, i8* %178, i64 0
  %179 = load i8, i8* %arrayidx191, align 1
  %180 = load i8*, i8** %row, align 8
  %arrayidx192 = getelementptr inbounds i8, i8* %180, i64 2
  store i8 %179, i8* %arrayidx192, align 1
  %181 = load i8*, i8** %row, align 8
  %add.ptr193 = getelementptr inbounds i8, i8* %181, i64 3
  store i8* %add.ptr193, i8** %row, align 8
  br label %for.inc.194

for.inc.194:                                      ; preds = %for.body.182
  %182 = load i32, i32* %x, align 4
  %inc195 = add nsw i32 %182, 1
  store i32 %inc195, i32* %x, align 4
  br label %for.cond.179

for.end.196:                                      ; preds = %for.cond.179
  br label %for.inc.197

for.inc.197:                                      ; preds = %for.end.196
  %183 = load i32, i32* %y, align 4
  %inc198 = add nsw i32 %183, 1
  store i32 %inc198, i32* %y, align 4
  br label %for.cond.172

for.end.199:                                      ; preds = %for.cond.172
  br label %sw.epilog

sw.default:                                       ; preds = %for.end.39
  store i32 0, i32* %y, align 4
  br label %for.cond.200

for.cond.200:                                     ; preds = %for.inc.234, %sw.default
  %184 = load i32, i32* %y, align 4
  %185 = load i32, i32* %height, align 4
  %cmp201 = icmp slt i32 %184, %185
  br i1 %cmp201, label %for.body.203, label %for.end.236

for.body.203:                                     ; preds = %for.cond.200
  store i32 0, i32* %x, align 4
  br label %for.cond.204

for.cond.204:                                     ; preds = %for.inc.231, %for.body.203
  %186 = load i32, i32* %x, align 4
  %187 = load i32, i32* %width, align 4
  %cmp205 = icmp slt i32 %186, %187
  br i1 %cmp205, label %for.body.207, label %for.end.233

for.body.207:                                     ; preds = %for.cond.204
  %188 = load i32, i32* %y, align 4
  %189 = load i32, i32* %width, align 4
  %mul208 = mul nsw i32 %188, %189
  %190 = load i32, i32* %x, align 4
  %add209 = add nsw i32 %mul208, %190
  %idxprom210 = sext i32 %add209 to i64
  %191 = load i32*, i32** %buffer32, align 8
  %arrayidx211 = getelementptr inbounds i32, i32* %191, i64 %idxprom210
  %192 = bitcast i32* %arrayidx211 to i8*
  store i8* %192, i8** %pixel, align 8
  %193 = load i8*, i8** %pixel, align 8
  %arrayidx212 = getelementptr inbounds i8, i8* %193, i64 0
  %194 = load i8, i8* %arrayidx212, align 1
  %conv213 = zext i8 %194 to i32
  %shl214 = shl i32 %conv213, 16
  %195 = load i8*, i8** %pixel, align 8
  %arrayidx215 = getelementptr inbounds i8, i8* %195, i64 1
  %196 = load i8, i8* %arrayidx215, align 1
  %conv216 = zext i8 %196 to i32
  %shl217 = shl i32 %conv216, 8
  %or = or i32 %shl214, %shl217
  %197 = load i8*, i8** %pixel, align 8
  %arrayidx218 = getelementptr inbounds i8, i8* %197, i64 2
  %198 = load i8, i8* %arrayidx218, align 1
  %conv219 = zext i8 %198 to i32
  %or220 = or i32 %or, %conv219
  %199 = load i8*, i8** %pixel, align 8
  %arrayidx221 = getelementptr inbounds i8, i8* %199, i64 3
  %200 = load i8, i8* %arrayidx221, align 1
  %conv222 = zext i8 %200 to i32
  %shl223 = shl i32 %conv222, 24
  %or224 = or i32 %or220, %shl223
  %201 = load i32, i32* %height, align 4
  %202 = load i32, i32* %y, align 4
  %sub225 = sub nsw i32 %201, %202
  %sub226 = sub nsw i32 %sub225, 1
  %203 = load i32, i32* %width, align 4
  %mul227 = mul nsw i32 %sub226, %203
  %204 = load i32, i32* %x, align 4
  %add228 = add nsw i32 %mul227, %204
  %idxprom229 = sext i32 %add228 to i64
  %205 = load i8*, i8** %xor_map, align 8
  %206 = bitcast i8* %205 to i32*
  %arrayidx230 = getelementptr inbounds i32, i32* %206, i64 %idxprom229
  store i32 %or224, i32* %arrayidx230, align 4
  br label %for.inc.231

for.inc.231:                                      ; preds = %for.body.207
  %207 = load i32, i32* %x, align 4
  %inc232 = add nsw i32 %207, 1
  store i32 %inc232, i32* %x, align 4
  br label %for.cond.204

for.end.233:                                      ; preds = %for.cond.204
  br label %for.inc.234

for.inc.234:                                      ; preds = %for.end.233
  %208 = load i32, i32* %y, align 4
  %inc235 = add nsw i32 %208, 1
  store i32 %inc235, i32* %y, align 4
  br label %for.cond.200

for.end.236:                                      ; preds = %for.cond.200
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end.236, %for.end.199, %for.end.170, %for.end.127, %for.end.84
  %209 = load %struct._GHashTable*, %struct._GHashTable** %color_to_slot, align 8
  %tobool237 = icmp ne %struct._GHashTable* %209, null
  br i1 %tobool237, label %if.then.238, label %if.end.239

if.then.238:                                      ; preds = %sw.epilog
  %210 = load %struct._GHashTable*, %struct._GHashTable** %color_to_slot, align 8
  call void @g_hash_table_destroy(%struct._GHashTable* %210)
  br label %if.end.239

if.end.239:                                       ; preds = %if.then.238, %sw.epilog
  %211 = load i8*, i8** %palette, align 8
  call void @g_free(i8* %211)
  %212 = load i8*, i8** %buffer, align 8
  call void @g_free(i8* %212)
  %213 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %214 = bitcast %struct._IcoFileDataHeader* %header to i32*
  %call240 = call i32 @ico_write_int32(%struct._IO_FILE* %213, i32* %214, i32 3)
  %215 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %planes241 = getelementptr inbounds %struct._IcoFileDataHeader, %struct._IcoFileDataHeader* %header, i32 0, i32 3
  %call242 = call i32 @ico_write_int16(%struct._IO_FILE* %215, i16* %planes241, i32 2)
  %216 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %compression243 = getelementptr inbounds %struct._IcoFileDataHeader, %struct._IcoFileDataHeader* %header, i32 0, i32 5
  %call244 = call i32 @ico_write_int32(%struct._IO_FILE* %216, i32* %compression243, i32 6)
  %217 = load i32, i32* %palette_len, align 4
  %tobool245 = icmp ne i32 %217, 0
  br i1 %tobool245, label %if.then.246, label %if.end.248

if.then.246:                                      ; preds = %if.end.239
  %218 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %219 = load i32*, i32** %palette32, align 8
  %220 = bitcast i32* %219 to i8*
  %221 = load i32, i32* %palette_len, align 4
  %call247 = call i32 @ico_write_int8(%struct._IO_FILE* %218, i8* %220, i32 %221)
  br label %if.end.248

if.end.248:                                       ; preds = %if.then.246, %if.end.239
  %222 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %223 = load i8*, i8** %xor_map, align 8
  %224 = load i32, i32* %xor_len, align 4
  %call249 = call i32 @ico_write_int8(%struct._IO_FILE* %222, i8* %223, i32 %224)
  %225 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %226 = load i8*, i8** %and_map, align 8
  %227 = load i32, i32* %and_len, align 4
  %call250 = call i32 @ico_write_int8(%struct._IO_FILE* %225, i8* %226, i32 %227)
  %228 = load i32*, i32** %palette32, align 8
  %229 = bitcast i32* %228 to i8*
  call void @g_free(i8* %229)
  %230 = load i8*, i8** %xor_map, align 8
  call void @g_free(i8* %230)
  %231 = load i8*, i8** %and_map, align 8
  call void @g_free(i8* %231)
  ret i32 1
}

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #1

declare i32* @gimp_image_get_layers(i32, i32*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @ico_get_layer_num_colors(i32 %layer, i32* %uses_alpha_levels) #0 {
entry:
  %layer.addr = alloca i32, align 4
  %uses_alpha_levels.addr = alloca i32*, align 8
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %bpp = alloca i32, align 4
  %num_colors = alloca i32, align 4
  %num_pixels = alloca i32, align 4
  %buffer = alloca i8*, align 8
  %src = alloca i8*, align 8
  %colors = alloca i32*, align 8
  %c = alloca i32*, align 8
  %hash = alloca %struct._GHashTable*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  store i32 %layer, i32* %layer.addr, align 4
  store i32* %uses_alpha_levels, i32** %uses_alpha_levels.addr, align 8
  store i32 0, i32* %num_colors, align 4
  %0 = load i32, i32* %layer.addr, align 4
  %call = call %struct._GimpDrawable* @gimp_drawable_get(i32 %0)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %1 = load i32, i32* %layer.addr, align 4
  %call1 = call i32 @gimp_drawable_width(i32 %1)
  store i32 %call1, i32* %w, align 4
  %2 = load i32, i32* %layer.addr, align 4
  %call2 = call i32 @gimp_drawable_height(i32 %2)
  store i32 %call2, i32* %h, align 4
  %3 = load i32, i32* %w, align 4
  %4 = load i32, i32* %h, align 4
  %mul = mul nsw i32 %3, %4
  store i32 %mul, i32* %num_pixels, align 4
  %5 = load i32, i32* %layer.addr, align 4
  %call3 = call i32 @gimp_drawable_bpp(i32 %5)
  store i32 %call3, i32* %bpp, align 4
  %6 = load i32, i32* %num_pixels, align 4
  %7 = load i32, i32* %bpp, align 4
  %mul4 = mul i32 %6, %7
  %conv = zext i32 %mul4 to i64
  %call5 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call5, i8** %src, align 8
  store i8* %call5, i8** %buffer, align 8
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %9 = load i32, i32* %w, align 4
  %10 = load i32, i32* %h, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %8, i32 0, i32 0, i32 %9, i32 %10, i32 0, i32 0)
  %11 = load i8*, i8** %buffer, align 8
  %12 = load i32, i32* %w, align 4
  %13 = load i32, i32* %h, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %11, i32 0, i32 0, i32 %12, i32 %13)
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %14)
  %call6 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_int_hash, i32 (i8*, i8*)* @g_int_equal)
  store %struct._GHashTable* %call6, %struct._GHashTable** %hash, align 8
  %15 = load i32*, i32** %uses_alpha_levels.addr, align 8
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* %num_pixels, align 4
  %conv7 = zext i32 %16 to i64
  %call8 = call noalias i8* @g_malloc_n(i64 %conv7, i64 4)
  %17 = bitcast i8* %call8 to i32*
  store i32* %17, i32** %c, align 8
  store i32* %17, i32** %colors, align 8
  %18 = load i32, i32* %bpp, align 4
  switch i32 %18, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.12
    i32 3, label %sw.bb.30
    i32 4, label %sw.bb.49
  ]

sw.bb:                                            ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.bb
  %19 = load i32, i32* %num_pixels, align 4
  %dec = add i32 %19, -1
  store i32 %dec, i32* %num_pixels, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load i8*, i8** %src, align 8
  %21 = load i8, i8* %20, align 1
  %conv9 = zext i8 %21 to i32
  %22 = load i32*, i32** %c, align 8
  store i32 %conv9, i32* %22, align 4
  %23 = load %struct._GHashTable*, %struct._GHashTable** %hash, align 8
  %24 = load i32*, i32** %c, align 8
  %25 = bitcast i32* %24 to i8*
  %26 = load i32*, i32** %c, align 8
  %27 = bitcast i32* %26 to i8*
  %call10 = call i32 @g_hash_table_insert(%struct._GHashTable* %23, i8* %25, i8* %27)
  %28 = load i8*, i8** %src, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr, i8** %src, align 8
  %29 = load i32*, i32** %c, align 8
  %incdec.ptr11 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %incdec.ptr11, i32** %c, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  br label %while.cond.13

while.cond.13:                                    ; preds = %if.end, %sw.bb.12
  %30 = load i32, i32* %num_pixels, align 4
  %dec14 = add i32 %30, -1
  store i32 %dec14, i32* %num_pixels, align 4
  %tobool15 = icmp ne i32 %30, 0
  br i1 %tobool15, label %while.body.16, label %while.end.29

while.body.16:                                    ; preds = %while.cond.13
  %31 = load i8*, i8** %src, align 8
  %arrayidx = getelementptr inbounds i8, i8* %31, i64 1
  %32 = load i8, i8* %arrayidx, align 1
  %conv17 = zext i8 %32 to i32
  %shl = shl i32 %conv17, 8
  %33 = load i8*, i8** %src, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %33, i64 0
  %34 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %34 to i32
  %or = or i32 %shl, %conv19
  %35 = load i32*, i32** %c, align 8
  store i32 %or, i32* %35, align 4
  %36 = load i8*, i8** %src, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %36, i64 1
  %37 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %37 to i32
  %cmp = icmp ne i32 %conv21, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body.16
  %38 = load i8*, i8** %src, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %38, i64 1
  %39 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %39 to i32
  %cmp25 = icmp ne i32 %conv24, 255
  br i1 %cmp25, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %40 = load i32*, i32** %uses_alpha_levels.addr, align 8
  store i32 1, i32* %40, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.body.16
  %41 = load %struct._GHashTable*, %struct._GHashTable** %hash, align 8
  %42 = load i32*, i32** %c, align 8
  %43 = bitcast i32* %42 to i8*
  %44 = load i32*, i32** %c, align 8
  %45 = bitcast i32* %44 to i8*
  %call27 = call i32 @g_hash_table_insert(%struct._GHashTable* %41, i8* %43, i8* %45)
  %46 = load i8*, i8** %src, align 8
  %add.ptr = getelementptr inbounds i8, i8* %46, i64 2
  store i8* %add.ptr, i8** %src, align 8
  %47 = load i32*, i32** %c, align 8
  %incdec.ptr28 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %incdec.ptr28, i32** %c, align 8
  br label %while.cond.13

while.end.29:                                     ; preds = %while.cond.13
  br label %sw.epilog

sw.bb.30:                                         ; preds = %entry
  br label %while.cond.31

while.cond.31:                                    ; preds = %while.body.34, %sw.bb.30
  %48 = load i32, i32* %num_pixels, align 4
  %dec32 = add i32 %48, -1
  store i32 %dec32, i32* %num_pixels, align 4
  %tobool33 = icmp ne i32 %48, 0
  br i1 %tobool33, label %while.body.34, label %while.end.48

while.body.34:                                    ; preds = %while.cond.31
  %49 = load i8*, i8** %src, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %49, i64 2
  %50 = load i8, i8* %arrayidx35, align 1
  %conv36 = zext i8 %50 to i32
  %shl37 = shl i32 %conv36, 16
  %51 = load i8*, i8** %src, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %51, i64 1
  %52 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %52 to i32
  %shl40 = shl i32 %conv39, 8
  %or41 = or i32 %shl37, %shl40
  %53 = load i8*, i8** %src, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %53, i64 0
  %54 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %54 to i32
  %or44 = or i32 %or41, %conv43
  %55 = load i32*, i32** %c, align 8
  store i32 %or44, i32* %55, align 4
  %56 = load %struct._GHashTable*, %struct._GHashTable** %hash, align 8
  %57 = load i32*, i32** %c, align 8
  %58 = bitcast i32* %57 to i8*
  %59 = load i32*, i32** %c, align 8
  %60 = bitcast i32* %59 to i8*
  %call45 = call i32 @g_hash_table_insert(%struct._GHashTable* %56, i8* %58, i8* %60)
  %61 = load i8*, i8** %src, align 8
  %add.ptr46 = getelementptr inbounds i8, i8* %61, i64 3
  store i8* %add.ptr46, i8** %src, align 8
  %62 = load i32*, i32** %c, align 8
  %incdec.ptr47 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %incdec.ptr47, i32** %c, align 8
  br label %while.cond.31

while.end.48:                                     ; preds = %while.cond.31
  br label %sw.epilog

sw.bb.49:                                         ; preds = %entry
  br label %while.cond.50

while.cond.50:                                    ; preds = %if.end.78, %sw.bb.49
  %63 = load i32, i32* %num_pixels, align 4
  %dec51 = add i32 %63, -1
  store i32 %dec51, i32* %num_pixels, align 4
  %tobool52 = icmp ne i32 %63, 0
  br i1 %tobool52, label %while.body.53, label %while.end.82

while.body.53:                                    ; preds = %while.cond.50
  %64 = load i8*, i8** %src, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %64, i64 3
  %65 = load i8, i8* %arrayidx54, align 1
  %conv55 = zext i8 %65 to i32
  %shl56 = shl i32 %conv55, 24
  %66 = load i8*, i8** %src, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %66, i64 2
  %67 = load i8, i8* %arrayidx57, align 1
  %conv58 = zext i8 %67 to i32
  %shl59 = shl i32 %conv58, 16
  %or60 = or i32 %shl56, %shl59
  %68 = load i8*, i8** %src, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %68, i64 1
  %69 = load i8, i8* %arrayidx61, align 1
  %conv62 = zext i8 %69 to i32
  %shl63 = shl i32 %conv62, 8
  %or64 = or i32 %or60, %shl63
  %70 = load i8*, i8** %src, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %70, i64 0
  %71 = load i8, i8* %arrayidx65, align 1
  %conv66 = zext i8 %71 to i32
  %or67 = or i32 %or64, %conv66
  %72 = load i32*, i32** %c, align 8
  store i32 %or67, i32* %72, align 4
  %73 = load i8*, i8** %src, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %73, i64 3
  %74 = load i8, i8* %arrayidx68, align 1
  %conv69 = zext i8 %74 to i32
  %cmp70 = icmp ne i32 %conv69, 0
  br i1 %cmp70, label %land.lhs.true.72, label %if.end.78

land.lhs.true.72:                                 ; preds = %while.body.53
  %75 = load i8*, i8** %src, align 8
  %arrayidx73 = getelementptr inbounds i8, i8* %75, i64 3
  %76 = load i8, i8* %arrayidx73, align 1
  %conv74 = zext i8 %76 to i32
  %cmp75 = icmp ne i32 %conv74, 255
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %land.lhs.true.72
  %77 = load i32*, i32** %uses_alpha_levels.addr, align 8
  store i32 1, i32* %77, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.77, %land.lhs.true.72, %while.body.53
  %78 = load %struct._GHashTable*, %struct._GHashTable** %hash, align 8
  %79 = load i32*, i32** %c, align 8
  %80 = bitcast i32* %79 to i8*
  %81 = load i32*, i32** %c, align 8
  %82 = bitcast i32* %81 to i8*
  %call79 = call i32 @g_hash_table_insert(%struct._GHashTable* %78, i8* %80, i8* %82)
  %83 = load i8*, i8** %src, align 8
  %add.ptr80 = getelementptr inbounds i8, i8* %83, i64 4
  store i8* %add.ptr80, i8** %src, align 8
  %84 = load i32*, i32** %c, align 8
  %incdec.ptr81 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %incdec.ptr81, i32** %c, align 8
  br label %while.cond.50

while.end.82:                                     ; preds = %while.cond.50
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %while.end.82, %while.end.48, %while.end.29, %while.end
  %85 = load %struct._GHashTable*, %struct._GHashTable** %hash, align 8
  %call83 = call i32 @g_hash_table_size(%struct._GHashTable* %85)
  store i32 %call83, i32* %num_colors, align 4
  %86 = load %struct._GHashTable*, %struct._GHashTable** %hash, align 8
  call void @g_hash_table_destroy(%struct._GHashTable* %86)
  %87 = load i32*, i32** %colors, align 8
  %88 = bitcast i32* %87 to i8*
  call void @g_free(i8* %88)
  %89 = load i8*, i8** %buffer, align 8
  call void @g_free(i8* %89)
  %90 = load i32, i32* %num_colors, align 4
  ret i32 %90
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare i32 @gimp_drawable_bpp(i32) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare %struct._GHashTable* @g_hash_table_new(i32 (i8*)*, i32 (i8*, i8*)*) #1

declare i32 @g_int_hash(i8*) #1

declare i32 @g_int_equal(i8*, i8*) #1

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #1

declare i32 @g_hash_table_size(%struct._GHashTable*) #1

declare void @g_hash_table_destroy(%struct._GHashTable*) #1

declare void @gimp_ui_init(i8*, i32) #1

declare %struct._GtkWidget* @ico_dialog_new(%struct._IcoSaveInfo*) #1

declare void @ico_dialog_add_icon(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_window_set_default_size(%struct._GtkWindow*, i32, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #3

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal i32 @ico_write_int8(%struct._IO_FILE* %fp, i8* %data, i32 %count) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %data.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  %total = alloca i32, align 4
  %bytes = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  %0 = load i32, i32* %count.addr, align 4
  store i32 %0, i32* %total, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i32, i32* %count.addr, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %data.addr, align 8
  %3 = load i32, i32* %count.addr, align 4
  %conv = sext i32 %3 to i64
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i64 @fwrite(i8* %2, i64 1, i64 %conv, %struct._IO_FILE* %4)
  %conv1 = trunc i64 %call to i32
  store i32 %conv1, i32* %bytes, align 4
  %5 = load i32, i32* %bytes, align 4
  %cmp2 = icmp sle i32 %5, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %6 = load i32, i32* %bytes, align 4
  %7 = load i32, i32* %count.addr, align 4
  %sub = sub nsw i32 %7, %6
  store i32 %sub, i32* %count.addr, align 4
  %8 = load i32, i32* %bytes, align 4
  %9 = load i8*, i8** %data.addr, align 8
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %idx.ext
  store i8* %add.ptr, i8** %data.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %10 = load i32, i32* %total, align 4
  ret i32 %10
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare noalias %struct.png_struct_def* @png_create_write_struct(i8*, i8*, void (%struct.png_struct_def*, i8*)*, void (%struct.png_struct_def*, i8*)*) #1

declare noalias %struct.png_info_def* @png_create_info_struct(%struct.png_struct_def*) #1

declare void @png_destroy_write_struct(%struct.png_struct_def**, %struct.png_info_def**) #1

; Function Attrs: nounwind returns_twice
declare i32 @_setjmp(%struct.__jmp_buf_tag*) #5

declare [1 x %struct.__jmp_buf_tag]* @png_set_longjmp_fn(%struct.png_struct_def*, void (%struct.__jmp_buf_tag*, i32)*, i64) #1

; Function Attrs: noreturn nounwind
declare void @longjmp(%struct.__jmp_buf_tag*, i32) #6

; Function Attrs: nounwind uwtable
define internal void @ico_image_get_reduced_buf(i32 %layer, i32 %bpp, i32* %num_colors, i8** %cmap_out, i8** %buf_out) #0 {
entry:
  %layer.addr = alloca i32, align 4
  %bpp.addr = alloca i32, align 4
  %num_colors.addr = alloca i32*, align 8
  %cmap_out.addr = alloca i8**, align 8
  %buf_out.addr = alloca i8**, align 8
  %src_pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %dst_pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %tmp_image = alloca i32, align 4
  %tmp_layer = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %buffer = alloca i8*, align 8
  %cmap = alloca i8*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %image = alloca i32, align 4
  %tmp = alloca %struct._GimpDrawable*, align 8
  %cmap21 = alloca i8*, align 8
  %num_colors23 = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %n_return_vals = alloca i32, align 4
  store i32 %layer, i32* %layer.addr, align 4
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32* %num_colors, i32** %num_colors.addr, align 8
  store i8** %cmap_out, i8*** %cmap_out.addr, align 8
  store i8** %buf_out, i8*** %buf_out.addr, align 8
  store i8* null, i8** %cmap, align 8
  %0 = load i32, i32* %layer.addr, align 4
  %call = call %struct._GimpDrawable* @gimp_drawable_get(i32 %0)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %1 = load i32, i32* %layer.addr, align 4
  %call1 = call i32 @gimp_drawable_width(i32 %1)
  store i32 %call1, i32* %w, align 4
  %2 = load i32, i32* %layer.addr, align 4
  %call2 = call i32 @gimp_drawable_height(i32 %2)
  store i32 %call2, i32* %h, align 4
  %3 = load i32*, i32** %num_colors.addr, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %w, align 4
  %5 = load i32, i32* %h, align 4
  %mul = mul nsw i32 %4, %5
  %mul3 = mul nsw i32 %mul, 4
  %conv = sext i32 %mul3 to i64
  %call4 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call4, i8** %buffer, align 8
  %6 = load i32, i32* %bpp.addr, align 4
  %cmp = icmp sle i32 %6, 8
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32, i32* %bpp.addr, align 4
  %cmp6 = icmp eq i32 %7, 24
  br i1 %cmp6, label %if.then, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %bpp9 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 3
  %9 = load i32, i32* %bpp9, align 4
  %cmp10 = icmp ne i32 %9, 4
  br i1 %cmp10, label %if.then, label %if.else.82

if.then:                                          ; preds = %lor.lhs.false.8, %lor.lhs.false, %entry
  %10 = load i32, i32* %layer.addr, align 4
  %call12 = call i32 @gimp_item_get_image(i32 %10)
  store i32 %call12, i32* %image, align 4
  %11 = load i32, i32* %layer.addr, align 4
  %call13 = call i32 @gimp_drawable_width(i32 %11)
  %12 = load i32, i32* %layer.addr, align 4
  %call14 = call i32 @gimp_drawable_height(i32 %12)
  %13 = load i32, i32* %image, align 4
  %call15 = call i32 @gimp_image_base_type(i32 %13)
  %call16 = call i32 @gimp_image_new(i32 %call13, i32 %call14, i32 %call15)
  store i32 %call16, i32* %tmp_image, align 4
  %14 = load i32, i32* %tmp_image, align 4
  %call17 = call i32 @gimp_image_undo_disable(i32 %14)
  %15 = load i32, i32* %layer.addr, align 4
  %call18 = call i32 @gimp_drawable_is_indexed(i32 %15)
  %tobool = icmp ne i32 %call18, 0
  br i1 %tobool, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %if.then
  %16 = load i32, i32* %image, align 4
  %call24 = call i8* @gimp_image_get_colormap(i32 %16, i32* %num_colors23)
  store i8* %call24, i8** %cmap21, align 8
  %17 = load i32, i32* %tmp_image, align 4
  %18 = load i8*, i8** %cmap21, align 8
  %19 = load i32, i32* %num_colors23, align 4
  %call25 = call i32 @gimp_image_set_colormap(i32 %17, i8* %18, i32 %19)
  %20 = load i8*, i8** %cmap21, align 8
  call void @g_free(i8* %20)
  br label %if.end

if.end:                                           ; preds = %if.then.19, %if.then
  %21 = load i32, i32* %tmp_image, align 4
  %22 = load i32, i32* %w, align 4
  %23 = load i32, i32* %h, align 4
  %24 = load i32, i32* %layer.addr, align 4
  %call26 = call i32 @gimp_drawable_type(i32 %24)
  %call27 = call i32 @gimp_layer_new(i32 %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 %22, i32 %23, i32 %call26, double 1.000000e+02, i32 0)
  store i32 %call27, i32* %tmp_layer, align 4
  %25 = load i32, i32* %tmp_image, align 4
  %26 = load i32, i32* %tmp_layer, align 4
  %call28 = call i32 @gimp_image_insert_layer(i32 %25, i32 %26, i32 -1, i32 0)
  %27 = load i32, i32* %tmp_layer, align 4
  %call29 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %27)
  store %struct._GimpDrawable* %call29, %struct._GimpDrawable** %tmp, align 8
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %29 = load i32, i32* %w, align 4
  %30 = load i32, i32* %h, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_pixel_rgn, %struct._GimpDrawable* %28, i32 0, i32 0, i32 %29, i32 %30, i32 0, i32 0)
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** %tmp, align 8
  %32 = load i32, i32* %w, align 4
  %33 = load i32, i32* %h, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dst_pixel_rgn, %struct._GimpDrawable* %31, i32 0, i32 0, i32 %32, i32 %33, i32 1, i32 0)
  %34 = load i8*, i8** %buffer, align 8
  %35 = load i32, i32* %w, align 4
  %36 = load i32, i32* %h, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %src_pixel_rgn, i8* %34, i32 0, i32 0, i32 %35, i32 %36)
  %37 = load i8*, i8** %buffer, align 8
  %38 = load i32, i32* %w, align 4
  %39 = load i32, i32* %h, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %dst_pixel_rgn, i8* %37, i32 0, i32 0, i32 %38, i32 %39)
  %40 = load %struct._GimpDrawable*, %struct._GimpDrawable** %tmp, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %40)
  %41 = load i32, i32* %tmp_layer, align 4
  %call30 = call i32 @gimp_drawable_is_rgb(i32 %41)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.end.34, label %if.then.32

if.then.32:                                       ; preds = %if.end
  %42 = load i32, i32* %tmp_image, align 4
  %call33 = call i32 @gimp_image_convert_rgb(i32 %42)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %if.end
  %43 = load i32, i32* %bpp.addr, align 4
  %cmp35 = icmp sle i32 %43, 8
  br i1 %cmp35, label %if.then.37, label %if.else.70

if.then.37:                                       ; preds = %if.end.34
  %44 = load i32, i32* %tmp_image, align 4
  %45 = load i32, i32* %bpp.addr, align 4
  %shl = shl i32 1, %45
  %call38 = call i32 @gimp_image_convert_indexed(i32 %44, i32 1, i32 0, i32 %shl, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0))
  %46 = load i32, i32* %tmp_image, align 4
  %47 = load i32*, i32** %num_colors.addr, align 8
  %call39 = call i8* @gimp_image_get_colormap(i32 %46, i32* %47)
  store i8* %call39, i8** %cmap, align 8
  %48 = load i32*, i32** %num_colors.addr, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %bpp.addr, align 4
  %shl40 = shl i32 1, %50
  %cmp41 = icmp eq i32 %49, %shl40
  br i1 %cmp41, label %land.lhs.true, label %if.end.68

land.lhs.true:                                    ; preds = %if.then.37
  %51 = load i8*, i8** %cmap, align 8
  %52 = load i32*, i32** %num_colors.addr, align 8
  %53 = load i32, i32* %52, align 4
  %call43 = call i32 @ico_cmap_contains_black(i8* %51, i32 %53)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.end.68, label %if.then.45

if.then.45:                                       ; preds = %land.lhs.true
  %54 = load i32, i32* %layer.addr, align 4
  %call46 = call i32 @gimp_drawable_is_indexed(i32 %54)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.then.48, label %if.else

if.then.48:                                       ; preds = %if.then.45
  %55 = load i8*, i8** %cmap, align 8
  call void @g_free(i8* %55)
  %56 = load i32, i32* %image, align 4
  %57 = load i32*, i32** %num_colors.addr, align 8
  %call49 = call i8* @gimp_image_get_colormap(i32 %56, i32* %57)
  store i8* %call49, i8** %cmap, align 8
  %58 = load i32, i32* %tmp_image, align 4
  %59 = load i8*, i8** %cmap, align 8
  %60 = load i32*, i32** %num_colors.addr, align 8
  %61 = load i32, i32* %60, align 4
  %call50 = call i32 @gimp_image_set_colormap(i32 %58, i8* %59, i32 %61)
  br label %if.end.58

if.else:                                          ; preds = %if.then.45
  %62 = load i32, i32* %layer.addr, align 4
  %call51 = call i32 @gimp_drawable_is_gray(i32 %62)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then.53, label %if.else.55

if.then.53:                                       ; preds = %if.else
  %63 = load i32, i32* %tmp_image, align 4
  %call54 = call i32 @gimp_image_convert_grayscale(i32 %63)
  br label %if.end.57

if.else.55:                                       ; preds = %if.else
  %64 = load i32, i32* %tmp_image, align 4
  %call56 = call i32 @gimp_image_convert_rgb(i32 %64)
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.55, %if.then.53
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.then.48
  %65 = load i32, i32* %tmp_layer, align 4
  %call59 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %65)
  store %struct._GimpDrawable* %call59, %struct._GimpDrawable** %tmp, align 8
  %66 = load %struct._GimpDrawable*, %struct._GimpDrawable** %tmp, align 8
  %67 = load i32, i32* %w, align 4
  %68 = load i32, i32* %h, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dst_pixel_rgn, %struct._GimpDrawable* %66, i32 0, i32 0, i32 %67, i32 %68, i32 1, i32 0)
  %69 = load i8*, i8** %buffer, align 8
  %70 = load i32, i32* %w, align 4
  %71 = load i32, i32* %h, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %dst_pixel_rgn, i8* %69, i32 0, i32 0, i32 %70, i32 %71)
  %72 = load %struct._GimpDrawable*, %struct._GimpDrawable** %tmp, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %72)
  %73 = load i32, i32* %layer.addr, align 4
  %call60 = call i32 @gimp_drawable_is_rgb(i32 %73)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.end.64, label %if.then.62

if.then.62:                                       ; preds = %if.end.58
  %74 = load i32, i32* %tmp_image, align 4
  %call63 = call i32 @gimp_image_convert_rgb(i32 %74)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %if.end.58
  %75 = load i32, i32* %tmp_image, align 4
  %76 = load i32, i32* %bpp.addr, align 4
  %shl65 = shl i32 1, %76
  %sub = sub nsw i32 %shl65, 1
  %call66 = call i32 @gimp_image_convert_indexed(i32 %75, i32 1, i32 0, i32 %sub, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0))
  %77 = load i8*, i8** %cmap, align 8
  call void @g_free(i8* %77)
  %78 = load i32, i32* %tmp_image, align 4
  %79 = load i32*, i32** %num_colors.addr, align 8
  %call67 = call i8* @gimp_image_get_colormap(i32 %78, i32* %79)
  store i8* %call67, i8** %cmap, align 8
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.64, %land.lhs.true, %if.then.37
  %80 = load i32, i32* %tmp_image, align 4
  %call69 = call i32 @gimp_image_convert_rgb(i32 %80)
  br label %if.end.78

if.else.70:                                       ; preds = %if.end.34
  %81 = load i32, i32* %bpp.addr, align 4
  %cmp71 = icmp eq i32 %81, 24
  br i1 %cmp71, label %if.then.73, label %if.end.77

if.then.73:                                       ; preds = %if.else.70
  %82 = load i32, i32* %tmp_image, align 4
  %83 = load i32, i32* %tmp_layer, align 4
  %call76 = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0), i32* %n_return_vals, i32 0, i32 1, i32 13, i32 %82, i32 16, i32 %83, i32 0, i32 127, i32 22)
  store %struct._GimpParam* %call76, %struct._GimpParam** %return_vals, align 8
  %84 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %85 = load i32, i32* %n_return_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %84, i32 %85)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.73, %if.else.70
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.end.68
  %86 = load i32, i32* %tmp_layer, align 4
  %call79 = call i32 @gimp_layer_add_alpha(i32 %86)
  %87 = load i32, i32* %tmp_layer, align 4
  %call80 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %87)
  store %struct._GimpDrawable* %call80, %struct._GimpDrawable** %tmp, align 8
  %88 = load %struct._GimpDrawable*, %struct._GimpDrawable** %tmp, align 8
  %89 = load i32, i32* %w, align 4
  %90 = load i32, i32* %h, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_pixel_rgn, %struct._GimpDrawable* %88, i32 0, i32 0, i32 %89, i32 %90, i32 0, i32 0)
  %91 = load i8*, i8** %buffer, align 8
  %92 = load i32, i32* %w, align 4
  %93 = load i32, i32* %h, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %src_pixel_rgn, i8* %91, i32 0, i32 0, i32 %92, i32 %93)
  %94 = load %struct._GimpDrawable*, %struct._GimpDrawable** %tmp, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %94)
  %95 = load i32, i32* %tmp_image, align 4
  %call81 = call i32 @gimp_image_delete(i32 %95)
  br label %if.end.83

if.else.82:                                       ; preds = %lor.lhs.false.8
  %96 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %97 = load i32, i32* %w, align 4
  %98 = load i32, i32* %h, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_pixel_rgn, %struct._GimpDrawable* %96, i32 0, i32 0, i32 %97, i32 %98, i32 0, i32 0)
  %99 = load i8*, i8** %buffer, align 8
  %100 = load i32, i32* %w, align 4
  %101 = load i32, i32* %h, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %src_pixel_rgn, i8* %99, i32 0, i32 0, i32 %100, i32 %101)
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.82, %if.end.78
  %102 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %102)
  %103 = load i8*, i8** %cmap, align 8
  %104 = load i8**, i8*** %cmap_out.addr, align 8
  store i8* %103, i8** %104, align 8
  %105 = load i8*, i8** %buffer, align 8
  %106 = load i8**, i8*** %buf_out.addr, align 8
  store i8* %105, i8** %106, align 8
  ret void
}

declare void @png_init_io(%struct.png_struct_def*, %struct._IO_FILE*) #1

declare void @png_set_IHDR(%struct.png_struct_def*, %struct.png_info_def*, i32, i32, i32, i32, i32, i32, i32) #1

declare void @png_write_info(%struct.png_struct_def*, %struct.png_info_def*) #1

declare i32 @ico_rowstride(i32, i32) #1

declare void @png_write_image(%struct.png_struct_def*, i8**) #1

declare void @png_write_end(%struct.png_struct_def*, %struct.png_info_def*) #1

declare i32 @gimp_item_get_image(i32) #1

declare i32 @gimp_image_new(i32, i32, i32) #1

declare i32 @gimp_image_base_type(i32) #1

declare i32 @gimp_image_undo_disable(i32) #1

declare i32 @gimp_drawable_is_indexed(i32) #1

declare i8* @gimp_image_get_colormap(i32, i32*) #1

declare i32 @gimp_image_set_colormap(i32, i8*, i32) #1

declare i32 @gimp_layer_new(i32, i8*, i32, i32, i32, double, i32) #1

declare i32 @gimp_drawable_type(i32) #1

declare i32 @gimp_image_insert_layer(i32, i32, i32, i32) #1

declare void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_image_convert_rgb(i32) #1

declare i32 @gimp_image_convert_indexed(i32, i32, i32, i32, i32, i32, i8*) #1

declare i32 @gimp_drawable_is_gray(i32) #1

declare i32 @gimp_image_convert_grayscale(i32) #1

declare %struct._GimpParam* @gimp_run_procedure(i8*, i32*, ...) #1

declare void @gimp_destroy_params(%struct._GimpParam*, i32) #1

declare i32 @gimp_layer_add_alpha(i32) #1

declare i32 @gimp_image_delete(i32) #1

; Function Attrs: nounwind uwtable
define internal i32* @ico_create_palette(i8* %cmap, i32 %num_colors, i32 %num_colors_used, i32* %black_slot) #0 {
entry:
  %retval = alloca i32*, align 8
  %cmap.addr = alloca i8*, align 8
  %num_colors.addr = alloca i32, align 4
  %num_colors_used.addr = alloca i32, align 4
  %black_slot.addr = alloca i32*, align 8
  %palette = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %cmap, i8** %cmap.addr, align 8
  store i32 %num_colors, i32* %num_colors.addr, align 4
  store i32 %num_colors_used, i32* %num_colors_used.addr, align 4
  store i32* %black_slot, i32** %black_slot.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %cmap.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %1 = load i32, i32* %num_colors_used.addr, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %do.body
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.ico_create_palette, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i32 0, i32 0))
  store i32* null, i32** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %2 = load i32, i32* %num_colors_used.addr, align 4
  %3 = load i32, i32* %num_colors.addr, align 4
  %cmp3 = icmp sle i32 %2, %3
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %do.body.2
  br label %if.end.6

if.else.5:                                        ; preds = %do.body.2
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.ico_create_palette, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0))
  store i32* null, i32** %retval
  br label %return

if.end.6:                                         ; preds = %if.then.4
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  %4 = load i32, i32* %num_colors.addr, align 4
  %mul = mul nsw i32 %4, 4
  %conv = sext i32 %mul to i64
  %call = call noalias i8* @g_malloc0_n(i64 %conv, i64 1)
  store i8* %call, i8** %palette, align 8
  %5 = load i32*, i32** %black_slot.addr, align 8
  store i32 -1, i32* %5, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.7
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %num_colors_used.addr, align 4
  %cmp8 = icmp slt i32 %6, %7
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %mul10 = mul nsw i32 %8, 3
  %idxprom = sext i32 %mul10 to i64
  %9 = load i8*, i8** %cmap.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %11 = load i32, i32* %i, align 4
  %mul11 = mul nsw i32 %11, 4
  %add = add nsw i32 %mul11, 2
  %idxprom12 = sext i32 %add to i64
  %12 = load i8*, i8** %palette, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %12, i64 %idxprom12
  store i8 %10, i8* %arrayidx13, align 1
  %13 = load i32, i32* %i, align 4
  %mul14 = mul nsw i32 %13, 3
  %add15 = add nsw i32 %mul14, 1
  %idxprom16 = sext i32 %add15 to i64
  %14 = load i8*, i8** %cmap.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %14, i64 %idxprom16
  %15 = load i8, i8* %arrayidx17, align 1
  %16 = load i32, i32* %i, align 4
  %mul18 = mul nsw i32 %16, 4
  %add19 = add nsw i32 %mul18, 1
  %idxprom20 = sext i32 %add19 to i64
  %17 = load i8*, i8** %palette, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %17, i64 %idxprom20
  store i8 %15, i8* %arrayidx21, align 1
  %18 = load i32, i32* %i, align 4
  %mul22 = mul nsw i32 %18, 3
  %add23 = add nsw i32 %mul22, 2
  %idxprom24 = sext i32 %add23 to i64
  %19 = load i8*, i8** %cmap.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %19, i64 %idxprom24
  %20 = load i8, i8* %arrayidx25, align 1
  %21 = load i32, i32* %i, align 4
  %mul26 = mul nsw i32 %21, 4
  %idxprom27 = sext i32 %mul26 to i64
  %22 = load i8*, i8** %palette, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %22, i64 %idxprom27
  store i8 %20, i8* %arrayidx28, align 1
  %23 = load i32, i32* %i, align 4
  %mul29 = mul nsw i32 %23, 3
  %idxprom30 = sext i32 %mul29 to i64
  %24 = load i8*, i8** %cmap.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %24, i64 %idxprom30
  %25 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %25 to i32
  %cmp33 = icmp eq i32 %conv32, 0
  br i1 %cmp33, label %land.lhs.true, label %if.end.51

land.lhs.true:                                    ; preds = %for.body
  %26 = load i32, i32* %i, align 4
  %mul35 = mul nsw i32 %26, 3
  %add36 = add nsw i32 %mul35, 1
  %idxprom37 = sext i32 %add36 to i64
  %27 = load i8*, i8** %cmap.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %27, i64 %idxprom37
  %28 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %28 to i32
  %cmp40 = icmp eq i32 %conv39, 0
  br i1 %cmp40, label %land.lhs.true.42, label %if.end.51

land.lhs.true.42:                                 ; preds = %land.lhs.true
  %29 = load i32, i32* %i, align 4
  %mul43 = mul nsw i32 %29, 3
  %add44 = add nsw i32 %mul43, 2
  %idxprom45 = sext i32 %add44 to i64
  %30 = load i8*, i8** %cmap.addr, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %30, i64 %idxprom45
  %31 = load i8, i8* %arrayidx46, align 1
  %conv47 = zext i8 %31 to i32
  %cmp48 = icmp eq i32 %conv47, 0
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %land.lhs.true.42
  %32 = load i32, i32* %i, align 4
  %33 = load i32*, i32** %black_slot.addr, align 8
  store i32 %32, i32* %33, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %land.lhs.true.42, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.51
  %34 = load i32, i32* %i, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load i32*, i32** %black_slot.addr, align 8
  %36 = load i32, i32* %35, align 4
  %cmp52 = icmp eq i32 %36, -1
  br i1 %cmp52, label %if.then.54, label %if.end.74

if.then.54:                                       ; preds = %for.end
  %37 = load i32, i32* %num_colors_used.addr, align 4
  %38 = load i32, i32* %num_colors.addr, align 4
  %cmp55 = icmp eq i32 %37, %38
  br i1 %cmp55, label %if.then.57, label %if.else.72

if.then.57:                                       ; preds = %if.then.54
  %39 = load i32, i32* %num_colors.addr, align 4
  %sub = sub nsw i32 %39, 1
  %40 = load i32*, i32** %black_slot.addr, align 8
  store i32 %sub, i32* %40, align 4
  %41 = load i32, i32* %num_colors.addr, align 4
  %sub58 = sub nsw i32 %41, 1
  %mul59 = mul nsw i32 %sub58, 4
  %idxprom60 = sext i32 %mul59 to i64
  %42 = load i8*, i8** %palette, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %42, i64 %idxprom60
  store i8 0, i8* %arrayidx61, align 1
  %43 = load i32, i32* %num_colors.addr, align 4
  %sub62 = sub nsw i32 %43, 1
  %mul63 = mul nsw i32 %sub62, 4
  %add64 = add nsw i32 %mul63, 1
  %idxprom65 = sext i32 %add64 to i64
  %44 = load i8*, i8** %palette, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %44, i64 %idxprom65
  store i8 0, i8* %arrayidx66, align 1
  %45 = load i32, i32* %num_colors.addr, align 4
  %sub67 = sub nsw i32 %45, 1
  %mul68 = mul nsw i32 %sub67, 4
  %add69 = add nsw i32 %mul68, 2
  %idxprom70 = sext i32 %add69 to i64
  %46 = load i8*, i8** %palette, align 8
  %arrayidx71 = getelementptr inbounds i8, i8* %46, i64 %idxprom70
  store i8 0, i8* %arrayidx71, align 1
  br label %if.end.73

if.else.72:                                       ; preds = %if.then.54
  %47 = load i32, i32* %num_colors_used.addr, align 4
  %48 = load i32*, i32** %black_slot.addr, align 8
  store i32 %47, i32* %48, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.72, %if.then.57
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %for.end
  %49 = load i8*, i8** %palette, align 8
  %50 = bitcast i8* %49 to i32*
  store i32* %50, i32** %retval
  br label %return

return:                                           ; preds = %if.end.74, %if.else.5, %if.else
  %51 = load i32*, i32** %retval
  ret i32* %51
}

; Function Attrs: nounwind uwtable
define internal %struct._GHashTable* @ico_create_color_to_palette_map(i32* %palette, i32 %num_colors) #0 {
entry:
  %palette.addr = alloca i32*, align 8
  %num_colors.addr = alloca i32, align 4
  %hash = alloca %struct._GHashTable*, align 8
  %i = alloca i32, align 4
  %pixel = alloca i8*, align 8
  %color = alloca i32*, align 8
  %slot = alloca i32*, align 8
  store i32* %palette, i32** %palette.addr, align 8
  store i32 %num_colors, i32* %num_colors.addr, align 4
  %call = call %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)* @g_int_hash, i32 (i8*, i8*)* @g_int_equal, void (i8*)* @g_free, void (i8*)* @g_free)
  store %struct._GHashTable* %call, %struct._GHashTable** %hash, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %num_colors.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** %palette.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = bitcast i32* %arrayidx to i8*
  store i8* %4, i8** %pixel, align 8
  %call1 = call noalias i8* @g_malloc_n(i64 1, i64 4)
  %5 = bitcast i8* %call1 to i32*
  store i32* %5, i32** %color, align 8
  %call2 = call noalias i8* @g_malloc_n(i64 1, i64 4)
  %6 = bitcast i8* %call2 to i32*
  store i32* %6, i32** %slot, align 8
  %7 = load i8*, i8** %pixel, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %7, i64 2
  %8 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %8 to i32
  %shl = shl i32 %conv, 16
  %9 = load i8*, i8** %pixel, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %10 to i32
  %shl6 = shl i32 %conv5, 8
  %or = or i32 %shl, %shl6
  %11 = load i8*, i8** %pixel, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %11, i64 0
  %12 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %12 to i32
  %or9 = or i32 %or, %conv8
  %13 = load i32*, i32** %color, align 8
  store i32 %or9, i32* %13, align 4
  %14 = load i32, i32* %i, align 4
  %15 = load i32*, i32** %slot, align 8
  store i32 %14, i32* %15, align 4
  %16 = load %struct._GHashTable*, %struct._GHashTable** %hash, align 8
  %17 = load i32*, i32** %color, align 8
  %18 = bitcast i32* %17 to i8*
  %19 = load i32*, i32** %slot, align 8
  %20 = bitcast i32* %19 to i8*
  %call10 = call i32 @g_hash_table_insert(%struct._GHashTable* %16, i8* %18, i8* %20)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct._GHashTable*, %struct._GHashTable** %hash, align 8
  ret %struct._GHashTable* %22
}

declare i8* @ico_alloc_map(i32, i32, i32, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @ico_set_bit_in_data(i8* %data, i32 %line_width, i32 %bit_num, i32 %bit_val) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %line_width.addr = alloca i32, align 4
  %bit_num.addr = alloca i32, align 4
  %bit_val.addr = alloca i32, align 4
  %line = alloca i32, align 4
  %width32 = alloca i32, align 4
  %offset = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  store i32 %line_width, i32* %line_width.addr, align 4
  store i32 %bit_num, i32* %bit_num.addr, align 4
  store i32 %bit_val, i32* %bit_val.addr, align 4
  %0 = load i32, i32* %line_width.addr, align 4
  %rem = srem i32 %0, 32
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* %line_width.addr, align 4
  %div = sdiv i32 %1, 32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* %line_width.addr, align 4
  %div1 = sdiv i32 %2, 32
  %add = add nsw i32 %div1, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div, %cond.true ], [ %add, %cond.false ]
  store i32 %cond, i32* %width32, align 4
  %3 = load i32, i32* %bit_num.addr, align 4
  %4 = load i32, i32* %line_width.addr, align 4
  %div2 = sdiv i32 %3, %4
  store i32 %div2, i32* %line, align 4
  %5 = load i32, i32* %bit_num.addr, align 4
  %6 = load i32, i32* %line_width.addr, align 4
  %rem3 = srem i32 %5, %6
  store i32 %rem3, i32* %offset, align 4
  %7 = load i32, i32* %bit_val.addr, align 4
  %and = and i32 %7, 1
  store i32 %and, i32* %bit_val.addr, align 4
  %8 = load i32, i32* %bit_val.addr, align 4
  %9 = load i32, i32* %offset, align 4
  %rem4 = srem i32 %9, 8
  %sub = sub nsw i32 7, %rem4
  %shl = shl i32 %8, %sub
  %10 = load i32, i32* %line, align 4
  %11 = load i32, i32* %width32, align 4
  %mul = mul nsw i32 %10, %11
  %mul5 = mul nsw i32 %mul, 4
  %12 = load i32, i32* %offset, align 4
  %div6 = sdiv i32 %12, 8
  %add7 = add nsw i32 %mul5, %div6
  %idxprom = sext i32 %add7 to i64
  %13 = load i8*, i8** %data.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %idxprom
  %14 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %14 to i32
  %or = or i32 %conv, %shl
  %conv8 = trunc i32 %or to i8
  store i8 %conv8, i8* %arrayidx, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @ico_get_palette_index(%struct._GHashTable* %hash, i32 %red, i32 %green, i32 %blue) #0 {
entry:
  %retval = alloca i32, align 4
  %hash.addr = alloca %struct._GHashTable*, align 8
  %red.addr = alloca i32, align 4
  %green.addr = alloca i32, align 4
  %blue.addr = alloca i32, align 4
  %color = alloca i32, align 4
  %slot = alloca i32*, align 8
  store %struct._GHashTable* %hash, %struct._GHashTable** %hash.addr, align 8
  store i32 %red, i32* %red.addr, align 4
  store i32 %green, i32* %green.addr, align 4
  store i32 %blue, i32* %blue.addr, align 4
  store i32 0, i32* %color, align 4
  %0 = load i32, i32* %red.addr, align 4
  %shl = shl i32 %0, 16
  %1 = load i32, i32* %green.addr, align 4
  %shl1 = shl i32 %1, 8
  %or = or i32 %shl, %shl1
  %2 = load i32, i32* %blue.addr, align 4
  %or2 = or i32 %or, %2
  store i32 %or2, i32* %color, align 4
  %3 = load %struct._GHashTable*, %struct._GHashTable** %hash.addr, align 8
  %4 = bitcast i32* %color to i8*
  %call = call i8* @g_hash_table_lookup(%struct._GHashTable* %3, i8* %4)
  %5 = bitcast i8* %call to i32*
  store i32* %5, i32** %slot, align 8
  %6 = load i32*, i32** %slot, align 8
  %tobool = icmp ne i32* %6, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i32*, i32** %slot, align 8
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare i32 @ico_get_bit_from_data(i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @ico_set_nibble_in_data(i8* %data, i32 %line_width, i32 %nibble_num, i32 %nibble_val) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %line_width.addr = alloca i32, align 4
  %nibble_num.addr = alloca i32, align 4
  %nibble_val.addr = alloca i32, align 4
  %line = alloca i32, align 4
  %width8 = alloca i32, align 4
  %offset = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  store i32 %line_width, i32* %line_width.addr, align 4
  store i32 %nibble_num, i32* %nibble_num.addr, align 4
  store i32 %nibble_val, i32* %nibble_val.addr, align 4
  %0 = load i32, i32* %line_width.addr, align 4
  %rem = srem i32 %0, 8
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* %line_width.addr, align 4
  %div = sdiv i32 %1, 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* %line_width.addr, align 4
  %div1 = sdiv i32 %2, 8
  %add = add nsw i32 %div1, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div, %cond.true ], [ %add, %cond.false ]
  store i32 %cond, i32* %width8, align 4
  %3 = load i32, i32* %nibble_num.addr, align 4
  %4 = load i32, i32* %line_width.addr, align 4
  %div2 = sdiv i32 %3, %4
  store i32 %div2, i32* %line, align 4
  %5 = load i32, i32* %nibble_num.addr, align 4
  %6 = load i32, i32* %line_width.addr, align 4
  %rem3 = srem i32 %5, %6
  store i32 %rem3, i32* %offset, align 4
  %7 = load i32, i32* %nibble_val.addr, align 4
  %and = and i32 %7, 15
  store i32 %and, i32* %nibble_val.addr, align 4
  %8 = load i32, i32* %nibble_val.addr, align 4
  %9 = load i32, i32* %offset, align 4
  %rem4 = srem i32 %9, 2
  %sub = sub nsw i32 1, %rem4
  %mul = mul nsw i32 4, %sub
  %shl = shl i32 %8, %mul
  %10 = load i32, i32* %line, align 4
  %11 = load i32, i32* %width8, align 4
  %mul5 = mul nsw i32 %10, %11
  %mul6 = mul nsw i32 %mul5, 4
  %12 = load i32, i32* %offset, align 4
  %div7 = sdiv i32 %12, 2
  %add8 = add nsw i32 %mul6, %div7
  %idxprom = sext i32 %add8 to i64
  %13 = load i8*, i8** %data.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %idxprom
  %14 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %14 to i32
  %or = or i32 %conv, %shl
  %conv9 = trunc i32 %or to i8
  store i8 %conv9, i8* %arrayidx, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ico_set_byte_in_data(i8* %data, i32 %line_width, i32 %byte_num, i32 %byte_val) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %line_width.addr = alloca i32, align 4
  %byte_num.addr = alloca i32, align 4
  %byte_val.addr = alloca i32, align 4
  %line = alloca i32, align 4
  %width4 = alloca i32, align 4
  %offset = alloca i32, align 4
  %byte = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  store i32 %line_width, i32* %line_width.addr, align 4
  store i32 %byte_num, i32* %byte_num.addr, align 4
  store i32 %byte_val, i32* %byte_val.addr, align 4
  %0 = load i32, i32* %line_width.addr, align 4
  %rem = srem i32 %0, 4
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* %line_width.addr, align 4
  %div = sdiv i32 %1, 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* %line_width.addr, align 4
  %div1 = sdiv i32 %2, 4
  %add = add nsw i32 %div1, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div, %cond.true ], [ %add, %cond.false ]
  store i32 %cond, i32* %width4, align 4
  %3 = load i32, i32* %byte_num.addr, align 4
  %4 = load i32, i32* %line_width.addr, align 4
  %div2 = sdiv i32 %3, %4
  store i32 %div2, i32* %line, align 4
  %5 = load i32, i32* %byte_num.addr, align 4
  %6 = load i32, i32* %line_width.addr, align 4
  %rem3 = srem i32 %5, %6
  store i32 %rem3, i32* %offset, align 4
  %7 = load i32, i32* %byte_val.addr, align 4
  %and = and i32 %7, 255
  store i32 %and, i32* %byte, align 4
  %8 = load i32, i32* %byte, align 4
  %conv = trunc i32 %8 to i8
  %9 = load i32, i32* %line, align 4
  %10 = load i32, i32* %width4, align 4
  %mul = mul nsw i32 %9, %10
  %mul4 = mul nsw i32 %mul, 4
  %11 = load i32, i32* %offset, align 4
  %add5 = add nsw i32 %mul4, %11
  %idxprom = sext i32 %add5 to i64
  %12 = load i8*, i8** %data.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @ico_write_int32(%struct._IO_FILE* %fp, i32* %data, i32 %count) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %data.addr = alloca i32*, align 8
  %count.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32* %data, i32** %data.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  %0 = load i32, i32* %count.addr, align 4
  store i32 %0, i32* %total, align 4
  %1 = load i32, i32* %count.addr, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %3 = load i32*, i32** %data.addr, align 8
  %4 = bitcast i32* %3 to i8*
  %5 = load i32, i32* %count.addr, align 4
  %mul = mul nsw i32 %5, 4
  %call = call i32 @ico_write_int8(%struct._IO_FILE* %2, i8* %4, i32 %mul)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %total, align 4
  %mul1 = mul nsw i32 %6, 4
  ret i32 %mul1
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, void (i8*)*) #1

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind returns_twice "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind returns_twice }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
