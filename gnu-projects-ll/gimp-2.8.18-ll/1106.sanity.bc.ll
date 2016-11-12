; ModuleID = './app/sanity.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FT_LibraryRec_ = type opaque
%struct._GError = type { i32, i32, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_major_version = external constant i32, align 4
@gimp_minor_version = external constant i32, align 4
@gimp_micro_version = external constant i32, align 4
@.str = private unnamed_addr constant [217 x i8] c"Libgimp version mismatch!\0A\0AThe GIMP binary cannot run with a libgimp version\0Aother than its own. This is GIMP %d.%d.%d, but the\0Alibgimp version is %d.%d.%d.\0A\0AMaybe you have GIMP versions in both /usr and /usr/local ?\00", align 1
@.str.1 = private unnamed_addr constant [228 x i8] c"%s\0A\0AGIMP requires GLib version %d.%d.%d or later.\0AInstalled GLib version is %d.%d.%d.\0A\0ASomehow you or your software packager managed\0Ato install GIMP with an older GLib version.\0A\0APlease upgrade to GLib version %d.%d.%d or later.\00", align 1
@glib_major_version = external constant i32, align 4
@glib_minor_version = external constant i32, align 4
@glib_micro_version = external constant i32, align 4
@.str.2 = private unnamed_addr constant [264 x i8] c"The Cairo version being used is too old!\0A\0AGIMP requires Cairo version %d.%d.%d or later.\0AInstalled Cairo version is %s.\0A\0ASomehow you or your software packager managed\0Ato install GIMP with an older Cairo version.\0A\0APlease upgrade to Cairo version %d.%d.%d or later.\00", align 1
@.str.3 = private unnamed_addr constant [232 x i8] c"%s\0A\0AGIMP requires Pango version %d.%d.%d or later.\0AInstalled Pango version is %d.%d.%d.\0A\0ASomehow you or your software packager managed\0Ato install GIMP with an older Pango version.\0A\0APlease upgrade to Pango version %d.%d.%d or later.\00", align 1
@.str.4 = private unnamed_addr constant [333 x i8] c"The Fontconfig version being used is too old!\0A\0AGIMP requires Fontconfig version %d.%d.%d or later.\0AThe Fontconfig version loaded by GIMP is %d.%d.%d.\0A\0AThis may be caused by another instance of libfontconfig.so.1\0Abeing installed in the system, probably in /usr/X11R6/lib.\0APlease correct the situation or report it to someone who can.\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"FT_Init_FreeType() failed\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"FT_Done_FreeType() failed\00", align 1
@.str.7 = private unnamed_addr constant [267 x i8] c"FreeType version too old!\0A\0AGIMP requires FreeType version %d.%d.%d or later.\0AInstalled FreeType version is %d.%d.%d.\0A\0ASomehow you or your software packager managed\0Ato install GIMP with an older FreeType version.\0A\0APlease upgrade to FreeType version %d.%d.%d or later.\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"Gimp\00", align 1
@gdk_pixbuf_major_version = external constant i32, align 4
@gdk_pixbuf_minor_version = external constant i32, align 4
@gdk_pixbuf_micro_version = external constant i32, align 4
@.str.9 = private unnamed_addr constant [272 x i8] c"GdkPixbuf version too old!\0A\0AGIMP requires GdkPixbuf version %d.%d.%d or later.\0AInstalled GdkPixbuf version is %d.%d.%d.\0A\0ASomehow you or your software packager managed\0Ato install GIMP with an older GdkPixbuf version.\0A\0APlease upgrade to GdkPixbuf version %d.%d.%d or later.\00", align 1
@.str.10 = private unnamed_addr constant [247 x i8] c"BABL version too old!\0A\0AGIMP requires BABL version %d.%d.%d or later.\0AInstalled BABL version is %d.%d.%d.\0A\0ASomehow you or your software packager managed\0Ato install GIMP with an older BABL version.\0A\0APlease upgrade to BABL version %d.%d.%d or later.\00", align 1
@.str.11 = private unnamed_addr constant [247 x i8] c"GEGL version too old!\0A\0AGIMP requires GEGL version %d.%d.%d or later.\0AInstalled GEGL version is %d.%d.%d.\0A\0ASomehow you or your software packager managed\0Ato install GIMP with an older GEGL version.\0A\0APlease upgrade to GEGL version %d.%d.%d or later.\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [139 x i8] c"The configured filename encoding cannot be converted to UTF-8: %s\0A\0APlease check the value of the environment variable G_FILENAME_ENCODING.\00", align 1
@.str.14 = private unnamed_addr constant [260 x i8] c"The name of the directory holding the GIMP user configuration cannot be converted to UTF-8: %s\0A\0AYour filesystem probably stores files in an encoding other than UTF-8 and you didn't tell GLib about this. Please set the environment variable G_FILENAME_ENCODING.\00", align 1

; Function Attrs: nounwind uwtable
define i8* @sanity_check() #0 {
entry:
  %abort_message = alloca i8*, align 8
  %call = call i8* @sanity_check_gimp()
  store i8* %call, i8** %abort_message, align 8
  %0 = load i8*, i8** %abort_message, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i8* @sanity_check_glib()
  store i8* %call1, i8** %abort_message, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** %abort_message, align 8
  %tobool2 = icmp ne i8* %1, null
  br i1 %tobool2, label %if.end.5, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %call4 = call i8* @sanity_check_cairo()
  store i8* %call4, i8** %abort_message, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %2 = load i8*, i8** %abort_message, align 8
  %tobool6 = icmp ne i8* %2, null
  br i1 %tobool6, label %if.end.9, label %if.then.7

if.then.7:                                        ; preds = %if.end.5
  %call8 = call i8* @sanity_check_pango()
  store i8* %call8, i8** %abort_message, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end.5
  %3 = load i8*, i8** %abort_message, align 8
  %tobool10 = icmp ne i8* %3, null
  br i1 %tobool10, label %if.end.13, label %if.then.11

if.then.11:                                       ; preds = %if.end.9
  %call12 = call i8* @sanity_check_fontconfig()
  store i8* %call12, i8** %abort_message, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end.9
  %4 = load i8*, i8** %abort_message, align 8
  %tobool14 = icmp ne i8* %4, null
  br i1 %tobool14, label %if.end.17, label %if.then.15

if.then.15:                                       ; preds = %if.end.13
  %call16 = call i8* @sanity_check_freetype()
  store i8* %call16, i8** %abort_message, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end.13
  %5 = load i8*, i8** %abort_message, align 8
  %tobool18 = icmp ne i8* %5, null
  br i1 %tobool18, label %if.end.21, label %if.then.19

if.then.19:                                       ; preds = %if.end.17
  %call20 = call i8* @sanity_check_gdk_pixbuf()
  store i8* %call20, i8** %abort_message, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.end.17
  %6 = load i8*, i8** %abort_message, align 8
  %tobool22 = icmp ne i8* %6, null
  br i1 %tobool22, label %if.end.25, label %if.then.23

if.then.23:                                       ; preds = %if.end.21
  %call24 = call i8* @sanity_check_babl()
  store i8* %call24, i8** %abort_message, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.end.21
  %7 = load i8*, i8** %abort_message, align 8
  %tobool26 = icmp ne i8* %7, null
  br i1 %tobool26, label %if.end.29, label %if.then.27

if.then.27:                                       ; preds = %if.end.25
  %call28 = call i8* @sanity_check_gegl()
  store i8* %call28, i8** %abort_message, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %if.end.25
  %8 = load i8*, i8** %abort_message, align 8
  %tobool30 = icmp ne i8* %8, null
  br i1 %tobool30, label %if.end.33, label %if.then.31

if.then.31:                                       ; preds = %if.end.29
  %call32 = call i8* @sanity_check_filename_encoding()
  store i8* %call32, i8** %abort_message, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %if.end.29
  %9 = load i8*, i8** %abort_message, align 8
  ret i8* %9
}

; Function Attrs: nounwind uwtable
define internal i8* @sanity_check_gimp() #0 {
entry:
  %retval = alloca i8*, align 8
  %0 = load i32, i32* @gimp_major_version, align 4
  %cmp = icmp ne i32 2, %0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* @gimp_minor_version, align 4
  %cmp1 = icmp ne i32 8, %1
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %2 = load i32, i32* @gimp_micro_version, align 4
  %cmp3 = icmp ne i32 18, %2
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  %3 = load i32, i32* @gimp_major_version, align 4
  %4 = load i32, i32* @gimp_minor_version, align 4
  %5 = load i32, i32* @gimp_micro_version, align 4
  %call = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([217 x i8], [217 x i8]* @.str, i32 0, i32 0), i32 2, i32 8, i32 18, i32 %3, i32 %4, i32 %5)
  store i8* %call, i8** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.2
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i8*, i8** %retval
  ret i8* %6
}

; Function Attrs: nounwind uwtable
define internal i8* @sanity_check_glib() #0 {
entry:
  %retval = alloca i8*, align 8
  %mismatch = alloca i8*, align 8
  %call = call i8* @glib_check_version(i32 2, i32 30, i32 2)
  store i8* %call, i8** %mismatch, align 8
  %0 = load i8*, i8** %mismatch, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %mismatch, align 8
  %2 = load i32, i32* @glib_major_version, align 4
  %3 = load i32, i32* @glib_minor_version, align 4
  %4 = load i32, i32* @glib_micro_version, align 4
  %call1 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([228 x i8], [228 x i8]* @.str.1, i32 0, i32 0), i8* %1, i32 2, i32 30, i32 2, i32 %2, i32 %3, i32 %4, i32 2, i32 30, i32 2)
  store i8* %call1, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval
  ret i8* %5
}

; Function Attrs: nounwind uwtable
define internal i8* @sanity_check_cairo() #0 {
entry:
  %retval = alloca i8*, align 8
  %call = call i32 @cairo_version()
  %cmp = icmp slt i32 %call, 11002
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i8* @cairo_version_string()
  %call2 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([264 x i8], [264 x i8]* @.str.2, i32 0, i32 0), i32 1, i32 10, i32 2, i8* %call1, i32 1, i32 10, i32 2)
  store i8* %call2, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %0 = load i8*, i8** %retval
  ret i8* %0
}

; Function Attrs: nounwind uwtable
define internal i8* @sanity_check_pango() #0 {
entry:
  %retval = alloca i8*, align 8
  %mismatch = alloca i8*, align 8
  %pango_major_version = alloca i32, align 4
  %pango_minor_version = alloca i32, align 4
  %pango_micro_version = alloca i32, align 4
  %call = call i8* @pango_version_check(i32 1, i32 29, i32 4) #5
  store i8* %call, i8** %mismatch, align 8
  %0 = load i8*, i8** %mismatch, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 @pango_version() #5
  %div = sdiv i32 %call1, 100
  %div2 = sdiv i32 %div, 100
  store i32 %div2, i32* %pango_major_version, align 4
  %call3 = call i32 @pango_version() #5
  %div4 = sdiv i32 %call3, 100
  %rem = srem i32 %div4, 100
  store i32 %rem, i32* %pango_minor_version, align 4
  %call5 = call i32 @pango_version() #5
  %rem6 = srem i32 %call5, 100
  store i32 %rem6, i32* %pango_micro_version, align 4
  %1 = load i8*, i8** %mismatch, align 8
  %2 = load i32, i32* %pango_major_version, align 4
  %3 = load i32, i32* %pango_minor_version, align 4
  %4 = load i32, i32* %pango_micro_version, align 4
  %call7 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([232 x i8], [232 x i8]* @.str.3, i32 0, i32 0), i8* %1, i32 1, i32 29, i32 4, i32 %2, i32 %3, i32 %4, i32 1, i32 29, i32 4)
  store i8* %call7, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval
  ret i8* %5
}

; Function Attrs: nounwind uwtable
define internal i8* @sanity_check_fontconfig() #0 {
entry:
  %retval = alloca i8*, align 8
  %fc_version = alloca i32, align 4
  %fc_major_version = alloca i32, align 4
  %fc_minor_version = alloca i32, align 4
  %fc_micro_version = alloca i32, align 4
  %call = call i32 @FcGetVersion()
  store i32 %call, i32* %fc_version, align 4
  %0 = load i32, i32* %fc_version, align 4
  %cmp = icmp slt i32 %0, 20200
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %fc_version, align 4
  %div = sdiv i32 %1, 100
  %div1 = sdiv i32 %div, 100
  store i32 %div1, i32* %fc_major_version, align 4
  %2 = load i32, i32* %fc_version, align 4
  %div2 = sdiv i32 %2, 100
  %rem = srem i32 %div2, 100
  store i32 %rem, i32* %fc_minor_version, align 4
  %3 = load i32, i32* %fc_version, align 4
  %rem3 = srem i32 %3, 100
  store i32 %rem3, i32* %fc_micro_version, align 4
  %4 = load i32, i32* %fc_major_version, align 4
  %5 = load i32, i32* %fc_minor_version, align 4
  %6 = load i32, i32* %fc_micro_version, align 4
  %call4 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([333 x i8], [333 x i8]* @.str.4, i32 0, i32 0), i32 2, i32 2, i32 0, i32 %4, i32 %5, i32 %6)
  store i8* %call4, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i8*, i8** %retval
  ret i8* %7
}

; Function Attrs: nounwind uwtable
define internal i8* @sanity_check_freetype() #0 {
entry:
  %retval = alloca i8*, align 8
  %ft_library = alloca %struct.FT_LibraryRec_*, align 8
  %ft_major_version = alloca i32, align 4
  %ft_minor_version = alloca i32, align 4
  %ft_micro_version = alloca i32, align 4
  %ft_version = alloca i32, align 4
  %call = call i32 @FT_Init_FreeType(%struct.FT_LibraryRec_** %ft_library)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = load %struct.FT_LibraryRec_*, %struct.FT_LibraryRec_** %ft_library, align 8
  call void @FT_Library_Version(%struct.FT_LibraryRec_* %0, i32* %ft_major_version, i32* %ft_minor_version, i32* %ft_micro_version)
  %1 = load %struct.FT_LibraryRec_*, %struct.FT_LibraryRec_** %ft_library, align 8
  %call1 = call i32 @FT_Done_FreeType(%struct.FT_LibraryRec_* %1)
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  call void (i8*, ...) @g_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %2 = load i32, i32* %ft_major_version, align 4
  %mul = mul nsw i32 %2, 10000
  %3 = load i32, i32* %ft_minor_version, align 4
  %mul5 = mul nsw i32 %3, 100
  %add = add nsw i32 %mul, %mul5
  %4 = load i32, i32* %ft_micro_version, align 4
  %mul6 = mul nsw i32 %4, 1
  %add7 = add nsw i32 %add, %mul6
  store i32 %add7, i32* %ft_version, align 4
  %5 = load i32, i32* %ft_version, align 4
  %cmp8 = icmp slt i32 %5, 20107
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.4
  %6 = load i32, i32* %ft_major_version, align 4
  %7 = load i32, i32* %ft_minor_version, align 4
  %8 = load i32, i32* %ft_micro_version, align 4
  %call10 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([267 x i8], [267 x i8]* @.str.7, i32 0, i32 0), i32 2, i32 1, i32 7, i32 %6, i32 %7, i32 %8, i32 2, i32 1, i32 7)
  store i8* %call10, i8** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.4
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.9
  %9 = load i8*, i8** %retval
  ret i8* %9
}

; Function Attrs: nounwind uwtable
define internal i8* @sanity_check_gdk_pixbuf() #0 {
entry:
  %retval = alloca i8*, align 8
  %0 = load i32, i32* @gdk_pixbuf_major_version, align 4
  %1 = load i32, i32* @gdk_pixbuf_minor_version, align 4
  %2 = load i32, i32* @gdk_pixbuf_micro_version, align 4
  %call = call i32 @sanity_check_version(i32 %0, i32 2, i32 %1, i32 24, i32 %2, i32 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i32, i32* @gdk_pixbuf_major_version, align 4
  %4 = load i32, i32* @gdk_pixbuf_minor_version, align 4
  %5 = load i32, i32* @gdk_pixbuf_micro_version, align 4
  %call1 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([272 x i8], [272 x i8]* @.str.9, i32 0, i32 0), i32 2, i32 24, i32 1, i32 %3, i32 %4, i32 %5, i32 2, i32 24, i32 1)
  store i8* %call1, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i8*, i8** %retval
  ret i8* %6
}

; Function Attrs: nounwind uwtable
define internal i8* @sanity_check_babl() #0 {
entry:
  %retval = alloca i8*, align 8
  %babl_major_version = alloca i32, align 4
  %babl_minor_version = alloca i32, align 4
  %babl_micro_version = alloca i32, align 4
  call void @babl_get_version(i32* %babl_major_version, i32* %babl_minor_version, i32* %babl_micro_version)
  %0 = load i32, i32* %babl_major_version, align 4
  %1 = load i32, i32* %babl_minor_version, align 4
  %2 = load i32, i32* %babl_micro_version, align 4
  %call = call i32 @sanity_check_version(i32 %0, i32 0, i32 %1, i32 1, i32 %2, i32 10)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %babl_major_version, align 4
  %4 = load i32, i32* %babl_minor_version, align 4
  %5 = load i32, i32* %babl_micro_version, align 4
  %call1 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([247 x i8], [247 x i8]* @.str.10, i32 0, i32 0), i32 0, i32 1, i32 10, i32 %3, i32 %4, i32 %5, i32 0, i32 1, i32 10)
  store i8* %call1, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i8*, i8** %retval
  ret i8* %6
}

; Function Attrs: nounwind uwtable
define internal i8* @sanity_check_gegl() #0 {
entry:
  %retval = alloca i8*, align 8
  %gegl_major_version = alloca i32, align 4
  %gegl_minor_version = alloca i32, align 4
  %gegl_micro_version = alloca i32, align 4
  call void @gegl_get_version(i32* %gegl_major_version, i32* %gegl_minor_version, i32* %gegl_micro_version)
  %0 = load i32, i32* %gegl_major_version, align 4
  %1 = load i32, i32* %gegl_minor_version, align 4
  %2 = load i32, i32* %gegl_micro_version, align 4
  %call = call i32 @sanity_check_version(i32 %0, i32 0, i32 %1, i32 2, i32 %2, i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %gegl_major_version, align 4
  %4 = load i32, i32* %gegl_minor_version, align 4
  %5 = load i32, i32* %gegl_micro_version, align 4
  %call1 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([247 x i8], [247 x i8]* @.str.11, i32 0, i32 0), i32 0, i32 2, i32 0, i32 %3, i32 %4, i32 %5, i32 0, i32 2, i32 0)
  store i8* %call1, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i8*, i8** %retval
  ret i8* %6
}

; Function Attrs: nounwind uwtable
define internal i8* @sanity_check_filename_encoding() #0 {
entry:
  %retval = alloca i8*, align 8
  %result = alloca i8*, align 8
  %error = alloca %struct._GError*, align 8
  %msg = alloca i8*, align 8
  %msg7 = alloca i8*, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %call = call noalias i8* @g_filename_to_utf8(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0), i64 -1, i64* null, i64* null, %struct._GError** %error)
  store i8* %call, i8** %result, align 8
  %0 = load i8*, i8** %result, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([139 x i8], [139 x i8]* @.str.13, i32 0, i32 0)) #3
  %1 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %1, i32 0, i32 2
  %2 = load i8*, i8** %message, align 8
  %call2 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call1, i8* %2)
  store i8* %call2, i8** %msg, align 8
  %3 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %3)
  %4 = load i8*, i8** %msg, align 8
  store i8* %4, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %result, align 8
  call void @g_free(i8* %5)
  %call3 = call i8* @gimp_directory() #5
  %call4 = call noalias i8* @g_filename_to_utf8(i8* %call3, i64 -1, i64* null, i64* null, %struct._GError** %error)
  store i8* %call4, i8** %result, align 8
  %6 = load i8*, i8** %result, align 8
  %tobool5 = icmp ne i8* %6, null
  br i1 %tobool5, label %if.end.11, label %if.then.6

if.then.6:                                        ; preds = %if.end
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([260 x i8], [260 x i8]* @.str.14, i32 0, i32 0)) #3
  %7 = load %struct._GError*, %struct._GError** %error, align 8
  %message9 = getelementptr inbounds %struct._GError, %struct._GError* %7, i32 0, i32 2
  %8 = load i8*, i8** %message9, align 8
  %call10 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call8, i8* %8)
  store i8* %call10, i8** %msg7, align 8
  %9 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %9)
  %10 = load i8*, i8** %msg7, align 8
  store i8* %10, i8** %retval
  br label %return

if.end.11:                                        ; preds = %if.end
  %11 = load i8*, i8** %result, align 8
  call void @g_free(i8* %11)
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.6, %if.then
  %12 = load i8*, i8** %retval
  ret i8* %12
}

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare i8* @glib_check_version(i32, i32, i32) #1

declare i32 @cairo_version() #1

declare i8* @cairo_version_string() #1

; Function Attrs: nounwind readnone
declare i8* @pango_version_check(i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare i32 @pango_version() #2

declare i32 @FcGetVersion() #1

declare i32 @FT_Init_FreeType(%struct.FT_LibraryRec_**) #1

; Function Attrs: nounwind uwtable
define internal void @g_error(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 4, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  br label %for.cond

return:                                           ; No predecessors!
  ret void
}

declare void @FT_Library_Version(%struct.FT_LibraryRec_*, i32*, i32*, i32*) #1

declare i32 @FT_Done_FreeType(%struct.FT_LibraryRec_*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @sanity_check_version(i32 %major_version, i32 %required_major, i32 %minor_version, i32 %required_minor, i32 %micro_version, i32 %required_micro) #0 {
entry:
  %retval = alloca i32, align 4
  %major_version.addr = alloca i32, align 4
  %required_major.addr = alloca i32, align 4
  %minor_version.addr = alloca i32, align 4
  %required_minor.addr = alloca i32, align 4
  %micro_version.addr = alloca i32, align 4
  %required_micro.addr = alloca i32, align 4
  store i32 %major_version, i32* %major_version.addr, align 4
  store i32 %required_major, i32* %required_major.addr, align 4
  store i32 %minor_version, i32* %minor_version.addr, align 4
  store i32 %required_minor, i32* %required_minor.addr, align 4
  store i32 %micro_version, i32* %micro_version.addr, align 4
  store i32 %required_micro, i32* %required_micro.addr, align 4
  %0 = load i32, i32* %major_version.addr, align 4
  %1 = load i32, i32* %required_major.addr, align 4
  %cmp = icmp ugt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %major_version.addr, align 4
  %3 = load i32, i32* %required_major.addr, align 4
  %cmp1 = icmp ult i32 %2, %3
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load i32, i32* %minor_version.addr, align 4
  %5 = load i32, i32* %required_minor.addr, align 4
  %cmp4 = icmp ugt i32 %4, %5
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  store i32 1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end.3
  %6 = load i32, i32* %minor_version.addr, align 4
  %7 = load i32, i32* %required_minor.addr, align 4
  %cmp7 = icmp ult i32 %6, %7
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end.6
  %8 = load i32, i32* %micro_version.addr, align 4
  %9 = load i32, i32* %required_micro.addr, align 4
  %cmp10 = icmp uge i32 %8, %9
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.9
  store i32 1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.9
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.11, %if.then.8, %if.then.5, %if.then.2, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

declare void @babl_get_version(i32*, i32*, i32*) #1

declare void @gegl_get_version(i32*, i32*, i32*) #1

declare noalias i8* @g_filename_to_utf8(i8*, i64, i64*, i64*, %struct._GError**) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare void @g_error_free(%struct._GError*) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind readnone
declare i8* @gimp_directory() #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
