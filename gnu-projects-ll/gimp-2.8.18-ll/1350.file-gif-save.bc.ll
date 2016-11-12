; ModuleID = './plug-ins/common/file-gif-save.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.GIFSaveVals = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpParasite = type { i8*, i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._GError = type { i32, i32, i8* }
%struct._GtkBuilder = type { %struct._GObject, %struct._GtkBuilderPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkBuilderPrivate = type opaque
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
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
%struct._GtkTextBuffer = type { %struct._GObject, %struct._GtkTextTagTable*, %struct._GtkTextBTree*, %struct._GSList*, %struct._GSList*, %struct._GtkTextLogAttrCache*, i32, i8 }
%struct._GtkTextTagTable = type { %struct._GObject, %struct._GHashTable*, %struct._GSList*, i32, %struct._GSList* }
%struct._GHashTable = type opaque
%struct._GtkTextBTree = type opaque
%struct._GtkTextLogAttrCache = type opaque
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkTextView = type { %struct._GtkContainer, %struct._GtkTextLayout*, %struct._GtkTextBuffer*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._PangoTabArray*, i8, %struct._GtkTextWindow*, %struct._GtkTextWindow*, %struct._GtkTextWindow*, %struct._GtkTextWindow*, %struct._GtkTextWindow*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, i32, i32, i32, i32, i32, i32, %struct._GtkTextMark*, i32, %struct._GtkTextMark*, i32, i32, i32, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._GSList*, %struct._GtkTextPendingScroll*, i32 }
%struct._GtkTextLayout = type opaque
%struct._PangoTabArray = type opaque
%struct._GtkTextWindow = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkTextMark = type { %struct._GObject, i8* }
%struct._GtkIMContext = type { %struct._GObject }
%struct._GtkTextPendingScroll = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GBinding = type opaque
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GtkMessageDialog = type { %struct._GtkDialog, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkTextIter = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i8* }
%struct._GtkSpinButton = type { %struct._GtkEntry, %struct._GtkAdjustment*, %struct._GdkDrawable*, i32, double, double, i32, i24 }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._PangoLayout = type opaque
%struct._GtkListStore = type { %struct._GObject, i32, i8*, i8*, %struct._GList*, i32, i32, i32, i64*, i32, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GtkTreeModel = type opaque
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.save_args = internal constant [9 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.15, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.17, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Image to save\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Drawable to save\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"The name of the file to save the image in\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"raw-filename\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"The name entered\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"interlace\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"Try to save as interlaced\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"loop\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"(animated gif) loop infinitely\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"default-delay\00", align 1
@.str.15 = private unnamed_addr constant [61 x i8] c"(animated gif) Default delay between framese in milliseconds\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"default-dispose\00", align 1
@.str.17 = private unnamed_addr constant [76 x i8] c"(animated gif) Default disposal type (0=`don't care`, 1=combine, 2=replace)\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"file-gif-save\00", align 1
@.str.19 = private unnamed_addr constant [42 x i8] c"saves files in Compuserve GIF file format\00", align 1
@.str.20 = private unnamed_addr constant [299 x i8] c"Save a file in Compuserve GIF format, with possible animation, transparency, and comment.  To save an animation, operate on a multi-layer file.  The plug-in will intrepret <50% alpha as transparent.  When run non-interactively, the value for the comment is taken from the 'gimp-comment' parasite.  \00", align 1
@.str.21 = private unnamed_addr constant [55 x i8] c"Spencer Kimball, Peter Mattis, Adam Moss, David Koblas\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"1995-1997\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"GIF image\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"INDEXED*, GRAY*\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"image/gif\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"gif\00", align 1
@.str.27 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@run.values = internal global [2 x %struct._GimpParam] zeroinitializer, align 16
@run_mode = internal global i32 0, align 4
@.str.28 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@gsvals = internal global %struct.GIFSaveVals { i32 0, i32 1, i32 1, i32 100, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.30 = private unnamed_addr constant [4 x i8] c"GIF\00", align 1
@.str.31 = private unnamed_addr constant [109 x i8] c"Unable to save '%s'.  The GIF file format does not support images that are more than %d pixels wide or tall.\00", align 1
@.str.32 = private unnamed_addr constant [111 x i8] c"The image you are trying to save as a GIF contains layers which extend beyond the actual borders of the image.\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"gimp-tool-crop\00", align 1
@.str.35 = private unnamed_addr constant [134 x i8] c"The GIF file format does not allow this.  You may choose whether to crop all of the layers to the image borders, or cancel this save.\00", align 1
@.str.36 = private unnamed_addr constant [32 x i8] c"ui/plug-ins/plug-in-file-gif.ui\00", align 1
@.str.37 = private unnamed_addr constant [31 x i8] c"Error loading UI file '%s':\0A%s\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"main-vbox\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"save-comment\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"as-animation\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@globalcomment = internal global i8* null, align 8
@.str.43 = private unnamed_addr constant [13 x i8] c"gimp-comment\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"loop-forever\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"delay-spin\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"dispose-combo\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"I don't care\00", align 1
@.str.49 = private unnamed_addr constant [28 x i8] c"Cumulative layers (combine)\00", align 1
@.str.50 = private unnamed_addr constant [30 x i8] c"One frame per layer (replace)\00", align 1
@.str.51 = private unnamed_addr constant [18 x i8] c"use-default-delay\00", align 1
@.str.52 = private unnamed_addr constant [20 x i8] c"use-default-dispose\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"animation-frame\00", align 1
@.str.54 = private unnamed_addr constant [128 x i8] c"You can only export as animation when the image has more than one layer. The image you are trying to export only has one layer.\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"sensitive\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.58 = private unnamed_addr constant [49 x i8] c"The default comment is limited to %d characters.\00", align 1
@comment_was_edited = internal global i32 0, align 4
@.str.59 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@comment_parasite = internal global %struct._GimpParasite* null, align 8
@.str.60 = private unnamed_addr constant [83 x i8] c"The GIF format only supports comments in 7bit ASCII encoding. No comment is saved.\00", align 1
@.str.61 = private unnamed_addr constant [75 x i8] c"Cannot save RGB color images. Convert to indexed color or grayscale first.\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.63 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for writing: %s\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"Saving '%s'\00", align 1
@.str.65 = private unnamed_addr constant [24 x i8] c"GIF: Too many colours?\0A\00", align 1
@Interlace = internal global i32 0, align 4
@cur_progress = internal global i32 0, align 4
@max_progress = internal global i32 0, align 4
@rowstride = internal global i32 0, align 4
@pixels = internal global i8* null, align 8
@save_image.onceonly = internal global i32 0, align 4
@.str.66 = private unnamed_addr constant [54 x i8] c"Delay inserted to prevent evil CPU-sucking animation.\00", align 1
@.str.67 = private unnamed_addr constant [48 x i8] c"GIF: colors_to_bpp - Eep! too many colours: %d\0A\00", align 1
@Width = internal global i32 0, align 4
@Height = internal global i32 0, align 4
@CountDown = internal global i64 0, align 8
@Pass = internal global i32 0, align 4
@cury = internal global i32 0, align 4
@curx = internal global i32 0, align 4
@.str.68 = private unnamed_addr constant [7 x i8] c"GIF89a\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"GIF87a\00", align 1
@.str.70 = private unnamed_addr constant [12 x i8] c"NETSCAPE2.0\00", align 1
@.str.71 = private unnamed_addr constant [61 x i8] c"GIF: warning:comment too large - comment block not written.\0A\00", align 1
@.str.72 = private unnamed_addr constant [62 x i8] c"GIF: 2nd pass - Increasing bounds and using colour index %d.\0A\00", align 1
@.str.73 = private unnamed_addr constant [57 x i8] c"Couldn't simply reduce colors further. Saving as opaque.\00", align 1
@.str.74 = private unnamed_addr constant [37 x i8] c"GIF: bpp_to_colors - Eep! bpp==%d !\0A\00", align 1
@.str.75 = private unnamed_addr constant [10 x i8] c"(combine)\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"(replace)\00", align 1
@g_ascii_table = external constant i16*, align 8
@g_init_bits = internal global i32 0, align 4
@g_outfile = internal global %struct._IO_FILE* null, align 8
@cur_bits = internal global i32 0, align 4
@cur_accum = internal global i64 0, align 8
@offset = internal global i32 0, align 4
@out_count = internal global i64 0, align 8
@clear_flg = internal global i32 0, align 4
@in_count = internal global i64 1, align 8
@ClearCode = internal global i32 0, align 4
@EOFCode = internal global i32 0, align 4
@free_ent = internal global i32 0, align 4
@n_bits = internal global i32 0, align 4
@maxcode = internal global i32 0, align 4
@maxbits = internal global i32 12, align 4
@htab = internal global [5003 x i64] zeroinitializer, align 16
@codetab = internal global [5003 x i16] zeroinitializer, align 16
@maxmaxcode = internal global i32 4096, align 4
@a_count = internal global i32 0, align 4
@masks = internal global [17 x i64] [i64 0, i64 1, i64 3, i64 7, i64 15, i64 31, i64 63, i64 127, i64 255, i64 511, i64 1023, i64 2047, i64 4095, i64 8191, i64 16383, i64 32767, i64 65535], align 16
@accum = internal global [256 x i8] zeroinitializer, align 16
@.str.77 = private unnamed_addr constant [27 x i8] c"Error writing output file.\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([299 x i8], [299 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i32 0, i32 0), i32 1, i32 9, i32 0, %struct._GimpParamDef* getelementptr inbounds ([9 x %struct._GimpParamDef], [9 x %struct._GimpParamDef]* @query.save_args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_register_file_handler_mime(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0))
  %call1 = call i32 @gimp_register_save_handler(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @run(i8* %name, i32 %nparams, %struct._GimpParam* %param, i32* %nreturn_vals, %struct._GimpParam** %return_vals) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %nparams.addr = alloca i32, align 4
  %param.addr = alloca %struct._GimpParam*, align 8
  %nreturn_vals.addr = alloca i32*, align 8
  %return_vals.addr = alloca %struct._GimpParam**, align 8
  %status = alloca i32, align 4
  %export = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  %filename = alloca i8*, align 8
  %image_ID = alloca i32, align 4
  %sanitized_image_ID = alloca i32, align 4
  %drawable_ID = alloca i32, align 4
  %orig_image_ID = alloca i32, align 4
  %capabilities = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
  store i32 0, i32* %export, align 4
  store %struct._GError* null, %struct._GError** %error, align 8
  %0 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_int32, align 4
  store i32 %1, i32* @run_mode, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #6
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i32 0, i32 0), i8* %call) #5
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0)) #5
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i32 0, i32 0)) #5
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %2, align 4
  %3 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %3, align 8
  store i32 21, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  store i32 0, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %4 = load i8*, i8** %name.addr, align 8
  %call4 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0)) #7
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then, label %if.end.76

if.then:                                          ; preds = %do.end
  store i32 0, i32* %sanitized_image_ID, align 4
  %5 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 1
  %data6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx5, i32 0, i32 1
  %d_int327 = bitcast %union._GimpParamData* %data6 to i32*
  %6 = load i32, i32* %d_int327, align 4
  store i32 %6, i32* %orig_image_ID, align 4
  store i32 %6, i32* %image_ID, align 4
  %7 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx8 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %7, i64 2
  %data9 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx8, i32 0, i32 1
  %d_int3210 = bitcast %union._GimpParamData* %data9 to i32*
  %8 = load i32, i32* %d_int3210, align 4
  store i32 %8, i32* %drawable_ID, align 4
  %9 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %9, i64 3
  %data12 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx11, i32 0, i32 1
  %d_string = bitcast %union._GimpParamData* %data12 to i8**
  %10 = load i8*, i8** %d_string, align 8
  store i8* %10, i8** %filename, align 8
  %11 = load i32, i32* @run_mode, align 4
  %cmp13 = icmp eq i32 %11, 0
  br i1 %cmp13, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %12 = load i32, i32* @run_mode, align 4
  %cmp14 = icmp eq i32 %12, 2
  br i1 %cmp14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %lor.lhs.false, %if.then
  call void @gimp_ui_init(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then.15, %lor.lhs.false
  %13 = load i8*, i8** %filename, align 8
  %call16 = call i32 @sanity_check(i8* %13, i32* %image_ID, %struct._GError** %error)
  store i32 %call16, i32* %status, align 4
  %14 = load i32, i32* %status, align 4
  %cmp17 = icmp eq i32 %14, 3
  br i1 %cmp17, label %if.then.18, label %if.end.44

if.then.18:                                       ; preds = %if.end
  %15 = load i32, i32* %image_ID, align 4
  store i32 %15, i32* %sanitized_image_ID, align 4
  %16 = load i32, i32* @run_mode, align 4
  switch i32 %16, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.23
    i32 2, label %sw.bb.42
  ]

sw.bb:                                            ; preds = %if.then.18
  %call19 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i8* bitcast (%struct.GIFSaveVals* @gsvals to i8*))
  %17 = load i32, i32* %image_ID, align 4
  %call20 = call i32 @save_dialog(i32 %17)
  %tobool = icmp ne i32 %call20, 0
  br i1 %tobool, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %sw.bb
  store i32 4, i32* %status, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %sw.bb
  br label %sw.epilog

sw.bb.23:                                         ; preds = %if.then.18
  %18 = load i32, i32* %nparams.addr, align 4
  %cmp24 = icmp ne i32 %18, 9
  br i1 %cmp24, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %sw.bb.23
  store i32 1, i32* %status, align 4
  br label %if.end.41

if.else:                                          ; preds = %sw.bb.23
  %19 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx26 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %19, i64 5
  %data27 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx26, i32 0, i32 1
  %d_int3228 = bitcast %union._GimpParamData* %data27 to i32*
  %20 = load i32, i32* %d_int3228, align 4
  %tobool29 = icmp ne i32 %20, 0
  %cond = select i1 %tobool29, i32 1, i32 0
  store i32 %cond, i32* getelementptr inbounds (%struct.GIFSaveVals, %struct.GIFSaveVals* @gsvals, i32 0, i32 0), align 4
  store i32 1, i32* getelementptr inbounds (%struct.GIFSaveVals, %struct.GIFSaveVals* @gsvals, i32 0, i32 1), align 4
  %21 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx30 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %21, i64 6
  %data31 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx30, i32 0, i32 1
  %d_int3232 = bitcast %union._GimpParamData* %data31 to i32*
  %22 = load i32, i32* %d_int3232, align 4
  %tobool33 = icmp ne i32 %22, 0
  %cond34 = select i1 %tobool33, i32 1, i32 0
  store i32 %cond34, i32* getelementptr inbounds (%struct.GIFSaveVals, %struct.GIFSaveVals* @gsvals, i32 0, i32 2), align 4
  %23 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx35 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %23, i64 7
  %data36 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx35, i32 0, i32 1
  %d_int3237 = bitcast %union._GimpParamData* %data36 to i32*
  %24 = load i32, i32* %d_int3237, align 4
  store i32 %24, i32* getelementptr inbounds (%struct.GIFSaveVals, %struct.GIFSaveVals* @gsvals, i32 0, i32 3), align 4
  %25 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx38 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %25, i64 8
  %data39 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx38, i32 0, i32 1
  %d_int3240 = bitcast %union._GimpParamData* %data39 to i32*
  %26 = load i32, i32* %d_int3240, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.GIFSaveVals, %struct.GIFSaveVals* @gsvals, i32 0, i32 4), align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.else, %if.then.25
  br label %sw.epilog

sw.bb.42:                                         ; preds = %if.then.18
  %call43 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i8* bitcast (%struct.GIFSaveVals* @gsvals to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.18
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.42, %if.end.41, %if.end.22
  br label %if.end.44

if.end.44:                                        ; preds = %sw.epilog, %if.end
  %27 = load i32, i32* @run_mode, align 4
  switch i32 %27, label %sw.default.57 [
    i32 0, label %sw.bb.45
    i32 2, label %sw.bb.45
  ]

sw.bb.45:                                         ; preds = %if.end.44, %if.end.44
  store i32 22, i32* %capabilities, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.GIFSaveVals, %struct.GIFSaveVals* @gsvals, i32 0, i32 7), align 4
  %tobool46 = icmp ne i32 %28, 0
  br i1 %tobool46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %sw.bb.45
  %29 = load i32, i32* %capabilities, align 4
  %or = or i32 %29, 32
  store i32 %or, i32* %capabilities, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %sw.bb.45
  %30 = load i32, i32* %capabilities, align 4
  %call49 = call i32 @gimp_export_image(i32* %image_ID, i32* %drawable_ID, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0), i32 %30)
  store i32 %call49, i32* %export, align 4
  %31 = load i32, i32* %export, align 4
  %cmp50 = icmp eq i32 %31, 0
  br i1 %cmp50, label %if.then.51, label %if.end.56

if.then.51:                                       ; preds = %if.end.48
  store i32 4, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %32 = load i32, i32* %sanitized_image_ID, align 4
  %tobool52 = icmp ne i32 %32, 0
  br i1 %tobool52, label %if.then.53, label %if.end.55

if.then.53:                                       ; preds = %if.then.51
  %33 = load i32, i32* %sanitized_image_ID, align 4
  %call54 = call i32 @gimp_image_delete(i32 %33)
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.53, %if.then.51
  br label %return

if.end.56:                                        ; preds = %if.end.48
  br label %sw.epilog.58

sw.default.57:                                    ; preds = %if.end.44
  br label %sw.epilog.58

sw.epilog.58:                                     ; preds = %sw.default.57, %if.end.56
  %34 = load i32, i32* %status, align 4
  %cmp59 = icmp eq i32 %34, 3
  br i1 %cmp59, label %if.then.60, label %if.end.71

if.then.60:                                       ; preds = %sw.epilog.58
  %35 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx61 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %35, i64 3
  %data62 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx61, i32 0, i32 1
  %d_string63 = bitcast %union._GimpParamData* %data62 to i8**
  %36 = load i8*, i8** %d_string63, align 8
  %37 = load i32, i32* %image_ID, align 4
  %38 = load i32, i32* %drawable_ID, align 4
  %39 = load i32, i32* %orig_image_ID, align 4
  %call64 = call i32 @save_image(i8* %36, i32 %37, i32 %38, i32 %39, %struct._GError** %error)
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.then.66, label %if.else.68

if.then.66:                                       ; preds = %if.then.60
  %call67 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i8* bitcast (%struct.GIFSaveVals* @gsvals to i8*), i32 32)
  br label %if.end.69

if.else.68:                                       ; preds = %if.then.60
  store i32 0, i32* %status, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.68, %if.then.66
  %40 = load i32, i32* %sanitized_image_ID, align 4
  %call70 = call i32 @gimp_image_delete(i32 %40)
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.69, %sw.epilog.58
  %41 = load i32, i32* %export, align 4
  %cmp72 = icmp eq i32 %41, 2
  br i1 %cmp72, label %if.then.73, label %if.end.75

if.then.73:                                       ; preds = %if.end.71
  %42 = load i32, i32* %image_ID, align 4
  %call74 = call i32 @gimp_image_delete(i32 %42)
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.73, %if.end.71
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %do.end
  %43 = load i32, i32* %status, align 4
  %cmp77 = icmp ne i32 %43, 3
  br i1 %cmp77, label %land.lhs.true, label %if.end.80

land.lhs.true:                                    ; preds = %if.end.76
  %44 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool78 = icmp ne %struct._GError* %44, null
  br i1 %tobool78, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %land.lhs.true
  %45 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %45, align 4
  store i32 4, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %46 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %46, i32 0, i32 2
  %47 = load i8*, i8** %message, align 8
  store i8* %47, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i8**), align 8
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.79, %land.lhs.true, %if.end.76
  %48 = load i32, i32* %status, align 4
  store i32 %48, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

return:                                           ; preds = %if.end.80, %if.end.55
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  %call = call i32 @gimp_main(%struct._GimpPlugInInfo* @PLUG_IN_INFO, i32 %0, i8** %1)
  ret i32 %call
}

declare i32 @gimp_main(%struct._GimpPlugInInfo*, i32, i8**) #1

declare void @gimp_install_procedure(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, %struct._GimpParamDef*, %struct._GimpParamDef*) #1

declare i32 @gimp_register_file_handler_mime(i8*, i8*) #1

declare i32 @gimp_register_save_handler(i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) #2

; Function Attrs: nounwind readnone
declare i8* @gimp_locale_directory() #3

; Function Attrs: nounwind
declare i8* @bind_textdomain_codeset(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare void @gimp_ui_init(i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @sanity_check(i8* %filename, i32* %image_ID, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %image_ID.addr = alloca i32*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %layers = alloca i32*, align 8
  %nlayers = alloca i32, align 4
  %image_width = alloca i32, align 4
  %image_height = alloca i32, align 4
  %i = alloca i32, align 4
  %offset_x = alloca i32, align 4
  %offset_y = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i32* %image_ID, i32** %image_ID.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i32*, i32** %image_ID.addr, align 8
  %1 = load i32, i32* %0, align 4
  %call = call i32 @gimp_image_width(i32 %1)
  store i32 %call, i32* %image_width, align 4
  %2 = load i32*, i32** %image_ID.addr, align 8
  %3 = load i32, i32* %2, align 4
  %call1 = call i32 @gimp_image_height(i32 %3)
  store i32 %call1, i32* %image_height, align 4
  %4 = load i32, i32* %image_width, align 4
  %cmp = icmp sgt i32 %4, 65535
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, i32* %image_height, align 4
  %cmp2 = icmp sgt i32 %5, 65535
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.31, i32 0, i32 0)) #5
  %7 = load i8*, i8** %filename.addr, align 8
  %call4 = call i8* @gimp_filename_to_utf8(i8* %7)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %6, i32 0, i32 0, i8* %call3, i8* %call4, i32 65535)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %8 = load i32*, i32** %image_ID.addr, align 8
  %9 = load i32, i32* %8, align 4
  %call5 = call i32 @gimp_image_duplicate(i32 %9)
  %10 = load i32*, i32** %image_ID.addr, align 8
  store i32 %call5, i32* %10, align 4
  %11 = load i32*, i32** %image_ID.addr, align 8
  %12 = load i32, i32* %11, align 4
  %call6 = call i32* @gimp_image_get_layers(i32 %12, i32* %nlayers)
  store i32* %call6, i32** %layers, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %nlayers, align 4
  %cmp7 = icmp slt i32 %13, %14
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load i32*, i32** %layers, align 8
  %arrayidx = getelementptr inbounds i32, i32* %16, i64 %idxprom
  %17 = load i32, i32* %arrayidx, align 4
  %call8 = call i32 @gimp_drawable_offsets(i32 %17, i32* %offset_x, i32* %offset_y)
  %18 = load i32, i32* %offset_x, align 4
  %cmp9 = icmp slt i32 %18, 0
  br i1 %cmp9, label %if.then.23, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %for.body
  %19 = load i32, i32* %offset_y, align 4
  %cmp11 = icmp slt i32 %19, 0
  br i1 %cmp11, label %if.then.23, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.10
  %20 = load i32, i32* %offset_x, align 4
  %21 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %21 to i64
  %22 = load i32*, i32** %layers, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %22, i64 %idxprom13
  %23 = load i32, i32* %arrayidx14, align 4
  %call15 = call i32 @gimp_drawable_width(i32 %23)
  %add = add nsw i32 %20, %call15
  %24 = load i32, i32* %image_width, align 4
  %cmp16 = icmp sgt i32 %add, %24
  br i1 %cmp16, label %if.then.23, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %lor.lhs.false.12
  %25 = load i32, i32* %offset_y, align 4
  %26 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %26 to i64
  %27 = load i32*, i32** %layers, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %27, i64 %idxprom18
  %28 = load i32, i32* %arrayidx19, align 4
  %call20 = call i32 @gimp_drawable_height(i32 %28)
  %add21 = add nsw i32 %25, %call20
  %29 = load i32, i32* %image_height, align 4
  %cmp22 = icmp sgt i32 %add21, %29
  br i1 %cmp22, label %if.then.23, label %if.end.30

if.then.23:                                       ; preds = %lor.lhs.false.17, %lor.lhs.false.12, %lor.lhs.false.10, %for.body
  %30 = load i32*, i32** %layers, align 8
  %31 = bitcast i32* %30 to i8*
  call void @g_free(i8* %31)
  %32 = load i32, i32* @run_mode, align 4
  %cmp24 = icmp eq i32 %32, 1
  br i1 %cmp24, label %if.then.27, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %if.then.23
  %call26 = call i32 @bad_bounds_dialog()
  %tobool = icmp ne i32 %call26, 0
  br i1 %tobool, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %lor.lhs.false.25, %if.then.23
  %33 = load i32*, i32** %image_ID.addr, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %image_width, align 4
  %36 = load i32, i32* %image_height, align 4
  %call28 = call i32 @gimp_image_crop(i32 %34, i32 %35, i32 %36, i32 0, i32 0)
  store i32 3, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false.25
  %37 = load i32*, i32** %image_ID.addr, align 8
  %38 = load i32, i32* %37, align 4
  %call29 = call i32 @gimp_image_delete(i32 %38)
  store i32 4, i32* %retval
  br label %return

if.end.30:                                        ; preds = %lor.lhs.false.17
  br label %for.inc

for.inc:                                          ; preds = %if.end.30
  %39 = load i32, i32* %i, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load i32*, i32** %layers, align 8
  %41 = bitcast i32* %40 to i8*
  call void @g_free(i8* %41)
  store i32 3, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.else, %if.then.27, %if.then
  %42 = load i32, i32* %retval
  ret i32 %42
}

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @save_dialog(i32 %image_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %builder = alloca %struct._GtkBuilder*, align 8
  %ui_file = alloca i8*, align 8
  %error = alloca %struct._GError*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %text_view = alloca %struct._GtkWidget*, align 8
  %text_buffer = alloca %struct._GtkTextBuffer*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %GIF2_CMNT = alloca %struct._GimpParasite*, align 8
  %nlayers = alloca i32, align 4
  %animation_supported = alloca i32, align 4
  %run = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store %struct._GtkBuilder* null, %struct._GtkBuilder** %builder, align 8
  store i8* null, i8** %ui_file, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  store i32 0, i32* %animation_supported, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call i32* @gimp_image_get_layers(i32 %0, i32* %nlayers)
  %1 = load i32, i32* %nlayers, align 4
  %cmp = icmp sgt i32 %1, 1
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %animation_supported, align 4
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0)) #5
  %call2 = call %struct._GtkWidget* @gimp_export_dialog_new(i8* %call1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0))
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %dialog, align 8
  %call3 = call %struct._GtkBuilder* @gtk_builder_new()
  store %struct._GtkBuilder* %call3, %struct._GtkBuilder** %builder, align 8
  %call4 = call i8* @gimp_data_directory() #6
  %call5 = call noalias i8* (i8*, ...) @g_build_filename(i8* %call4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.36, i32 0, i32 0), i8* null)
  store i8* %call5, i8** %ui_file, align 8
  %2 = load %struct._GtkBuilder*, %struct._GtkBuilder** %builder, align 8
  %3 = load i8*, i8** %ui_file, align 8
  %call6 = call i32 @gtk_builder_add_from_file(%struct._GtkBuilder* %2, i8* %3, %struct._GError** %error)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.37, i32 0, i32 0)) #5
  %4 = load i8*, i8** %ui_file, align 8
  %5 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool8 = icmp ne %struct._GError* %5, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %6 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %6, i32 0, i32 2
  %7 = load i8*, i8** %message, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %7, %cond.true ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), %cond.false ]
  call void (i8*, ...) @g_printerr(i8* %call7, i8* %4, i8* %cond)
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %8 = load i8*, i8** %ui_file, align 8
  call void @g_free(i8* %8)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %call9 = call %struct._GtkWidget* @gimp_export_dialog_get_content_area(%struct._GtkWidget* %9)
  %10 = bitcast %struct._GtkWidget* %call9 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_box_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call10)
  %11 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkBox*
  %12 = load %struct._GtkBuilder*, %struct._GtkBuilder** %builder, align 8
  %call12 = call %struct._GObject* @gtk_builder_get_object(%struct._GtkBuilder* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0))
  %13 = bitcast %struct._GObject* %call12 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_widget_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call13)
  %14 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkWidget*
  call void @gtk_box_pack_start(%struct._GtkBox* %11, %struct._GtkWidget* %14, i32 1, i32 1, i32 0)
  %15 = load %struct._GtkBuilder*, %struct._GtkBuilder** %builder, align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.GIFSaveVals, %struct.GIFSaveVals* @gsvals, i32 0, i32 0), align 4
  %call15 = call %struct._GtkWidget* @file_gif_toggle_button_init(%struct._GtkBuilder* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i32 %16, i32* getelementptr inbounds (%struct.GIFSaveVals, %struct.GIFSaveVals* @gsvals, i32 0, i32 0))
  %17 = load %struct._GtkBuilder*, %struct._GtkBuilder** %builder, align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.GIFSaveVals, %struct.GIFSaveVals* @gsvals, i32 0, i32 1), align 4
  %call16 = call %struct._GtkWidget* @file_gif_toggle_button_init(%struct._GtkBuilder* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i32 0, i32 0), i32 %18, i32* getelementptr inbounds (%struct.GIFSaveVals, %struct.GIFSaveVals* @gsvals, i32 0, i32 1))
  %19 = load %struct._GtkBuilder*, %struct._GtkBuilder** %builder, align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.GIFSaveVals, %struct.GIFSaveVals* @gsvals, i32 0, i32 7), align 4
  %call17 = call %struct._GtkWidget* @file_gif_toggle_button_init(%struct._GtkBuilder* %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i32 0, i32 0), i32 %20, i32* getelementptr inbounds (%struct.GIFSaveVals, %struct.GIFSaveVals* @gsvals, i32 0, i32 7))
  %21 = load %struct._GtkBuilder*, %struct._GtkBuilder** %builder, align 8
  %call18 = call %struct._GObject* @gtk_builder_get_object(%struct._GtkBuilder* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0))
  %22 = bitcast %struct._GObject* %call18 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_widget_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call19)
  %23 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkWidget*
  store %struct._GtkWidget* %23, %struct._GtkWidget** %text_view, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %text_view, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_text_view_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call21)
  %26 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkTextView*
  %call23 = call %struct._GtkTextBuffer* @gtk_text_view_get_buffer(%struct._GtkTextView* %26)
  store %struct._GtkTextBuffer* %call23, %struct._GtkTextBuffer** %text_buffer, align 8
  %27 = load i8*, i8** @globalcomment, align 8
  %tobool24 = icmp ne i8* %27, null
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end
  %28 = load i8*, i8** @globalcomment, align 8
  call void @g_free(i8* %28)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.end
  %29 = load i32, i32* %image_ID.addr, align 4
  %call27 = call %struct._GimpParasite* @gimp_image_get_parasite(i32 %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i32 0, i32 0))
  store %struct._GimpParasite* %call27, %struct._GimpParasite** %GIF2_CMNT, align 8
  %30 = load %struct._GimpParasite*, %struct._GimpParasite** %GIF2_CMNT, align 8
  %tobool28 = icmp ne %struct._GimpParasite* %30, null
  br i1 %tobool28, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %if.end.26
  %31 = load %struct._GimpParasite*, %struct._GimpParasite** %GIF2_CMNT, align 8
  %call30 = call i8* @gimp_parasite_data(%struct._GimpParasite* %31)
  %32 = load %struct._GimpParasite*, %struct._GimpParasite** %GIF2_CMNT, align 8
  %call31 = call i64 @gimp_parasite_data_size(%struct._GimpParasite* %32)
  %call32 = call noalias i8* @g_strndup(i8* %call30, i64 %call31)
  store i8* %call32, i8** @globalcomment, align 8
  br label %if.end.34

if.else:                                          ; preds = %if.end.26
  %call33 = call i8* @gimp_get_default_comment()
  store i8* %call33, i8** @globalcomment, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.else, %if.then.29
  %33 = load %struct._GimpParasite*, %struct._GimpParasite** %GIF2_CMNT, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %33)
  %34 = load i8*, i8** @globalcomment, align 8
  %tobool35 = icmp ne i8* %34, null
  br i1 %tobool35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.34
  %35 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %text_buffer, align 8
  %36 = load i8*, i8** @globalcomment, align 8
  call void @gtk_text_buffer_set_text(%struct._GtkTextBuffer* %35, i8* %36, i32 -1)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.end.34
  %37 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %text_buffer, align 8
  %38 = bitcast %struct._GtkTextBuffer* %37 to i8*
  %call38 = call i64 @g_signal_connect_data(i8* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), void ()* bitcast (void (%struct._GtkTextBuffer*)* @comment_entry_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %39 = load %struct._GtkBuilder*, %struct._GtkBuilder** %builder, align 8
  %40 = load i32, i32* getelementptr inbounds (%struct.GIFSaveVals, %struct.GIFSaveVals* @gsvals, i32 0, i32 2), align 4
  %call39 = call %struct._GtkWidget* @file_gif_toggle_button_init(%struct._GtkBuilder* %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i32 0, i32 0), i32 %40, i32* getelementptr inbounds (%struct.GIFSaveVals, %struct.GIFSaveVals* @gsvals, i32 0, i32 2))
  %41 = load %struct._GtkBuilder*, %struct._GtkBuilder** %builder, align 8
  %42 = load i32, i32* getelementptr inbounds (%struct.GIFSaveVals, %struct.GIFSaveVals* @gsvals, i32 0, i32 3), align 4
  %call40 = call %struct._GtkWidget* @file_gif_spin_button_int_init(%struct._GtkBuilder* %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i32 %42, i32* getelementptr inbounds (%struct.GIFSaveVals, %struct.GIFSaveVals* @gsvals, i32 0, i32 3))
  %43 = load %struct._GtkBuilder*, %struct._GtkBuilder** %builder, align 8
  %44 = load i32, i32* getelementptr inbounds (%struct.GIFSaveVals, %struct.GIFSaveVals* @gsvals, i32 0, i32 4), align 4
  %call41 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i32 0, i32 0)) #5
  %call42 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.49, i32 0, i32 0)) #5
  %call43 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.50, i32 0, i32 0)) #5
  %call44 = call %struct._GtkWidget* (%struct._GtkBuilder*, i8*, i32, i32*, i8*, i32, ...) @file_gif_combo_box_int_init(%struct._GtkBuilder* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i32 0, i32 0), i32 %44, i32* getelementptr inbounds (%struct.GIFSaveVals, %struct.GIFSaveVals* @gsvals, i32 0, i32 4), i8* %call41, i32 0, i8* %call42, i32 1, i8* %call43, i32 2, i8* null)
  %45 = load %struct._GtkBuilder*, %struct._GtkBuilder** %builder, align 8
  %46 = load i32, i32* getelementptr inbounds (%struct.GIFSaveVals, %struct.GIFSaveVals* @gsvals, i32 0, i32 5), align 4
  %call45 = call %struct._GtkWidget* @file_gif_toggle_button_init(%struct._GtkBuilder* %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.51, i32 0, i32 0), i32 %46, i32* getelementptr inbounds (%struct.GIFSaveVals, %struct.GIFSaveVals* @gsvals, i32 0, i32 5))
  %47 = load %struct._GtkBuilder*, %struct._GtkBuilder** %builder, align 8
  %48 = load i32, i32* getelementptr inbounds (%struct.GIFSaveVals, %struct.GIFSaveVals* @gsvals, i32 0, i32 6), align 4
  %call46 = call %struct._GtkWidget* @file_gif_toggle_button_init(%struct._GtkBuilder* %47, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.52, i32 0, i32 0), i32 %48, i32* getelementptr inbounds (%struct.GIFSaveVals, %struct.GIFSaveVals* @gsvals, i32 0, i32 6))
  %49 = load %struct._GtkBuilder*, %struct._GtkBuilder** %builder, align 8
  %call47 = call %struct._GObject* @gtk_builder_get_object(%struct._GtkBuilder* %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.53, i32 0, i32 0))
  %50 = bitcast %struct._GObject* %call47 to %struct._GTypeInstance*
  %call48 = call i64 @gtk_widget_get_type() #6
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call48)
  %51 = bitcast %struct._GTypeInstance* %call49 to %struct._GtkWidget*
  store %struct._GtkWidget* %51, %struct._GtkWidget** %frame, align 8
  %52 = load %struct._GtkBuilder*, %struct._GtkBuilder** %builder, align 8
  %call50 = call %struct._GObject* @gtk_builder_get_object(%struct._GtkBuilder* %52, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i32 0, i32 0))
  %53 = bitcast %struct._GObject* %call50 to %struct._GTypeInstance*
  %call51 = call i64 @gtk_widget_get_type() #6
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call51)
  %54 = bitcast %struct._GTypeInstance* %call52 to %struct._GtkWidget*
  store %struct._GtkWidget* %54, %struct._GtkWidget** %toggle, align 8
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %56 = load i32, i32* %animation_supported, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %55, i32 %56)
  %57 = load i32, i32* %animation_supported, align 4
  %tobool53 = icmp ne i32 %57, 0
  br i1 %tobool53, label %if.end.56, label %if.then.54

if.then.54:                                       ; preds = %if.end.37
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %call55 = call i8* @gettext(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.54, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %58, i8* %call55, i8* null)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.54, %if.end.37
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %60 = bitcast %struct._GtkWidget* %59 to i8*
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %62 = bitcast %struct._GtkWidget* %61 to i8*
  %call57 = call %struct._GBinding* @g_object_bind_property(i8* %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0), i8* %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i32 0, i32 0), i32 2)
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %63)
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %65 = bitcast %struct._GtkWidget* %64 to %struct._GTypeInstance*
  %call58 = call i64 @gimp_dialog_get_type() #6
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call58)
  %66 = bitcast %struct._GTypeInstance* %call59 to %struct._GimpDialog*
  %call60 = call i32 @gimp_dialog_run(%struct._GimpDialog* %66)
  %cmp61 = icmp eq i32 %call60, -5
  %conv62 = zext i1 %cmp61 to i32
  store i32 %conv62, i32* %run, align 4
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %67)
  %68 = load i32, i32* %run, align 4
  ret i32 %68
}

declare i32 @gimp_export_image(i32*, i32*, i8*, i32) #1

declare i32 @gimp_image_delete(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @save_image(i8* %filename, i32 %image_ID, i32 %drawable_ID, i32 %orig_image_ID, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %image_ID.addr = alloca i32, align 4
  %drawable_ID.addr = alloca i32, align 4
  %orig_image_ID.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %drawable_type = alloca i32, align 4
  %outfile = alloca %struct._IO_FILE*, align 8
  %Red = alloca [256 x i32], align 16
  %Green = alloca [256 x i32], align 16
  %Blue = alloca [256 x i32], align 16
  %cmap = alloca i8*, align 8
  %rows = alloca i32, align 4
  %cols = alloca i32, align 4
  %BitsPerPixel = alloca i32, align 4
  %liberalBPP = alloca i32, align 4
  %useBPP = alloca i32, align 4
  %colors = alloca i32, align 4
  %i = alloca i32, align 4
  %transparent = alloca i32, align 4
  %offset_x = alloca i32, align 4
  %offset_y = alloca i32, align 4
  %layers = alloca i32*, align 8
  %nlayers = alloca i32, align 4
  %is_gif89 = alloca i32, align 4
  %Delay89 = alloca i32, align 4
  %Disposal = alloca i32, align 4
  %layer_name = alloca i8*, align 8
  %background = alloca %struct._GimpRGB, align 8
  %bgred = alloca i8, align 1
  %bggreen = alloca i8, align 1
  %bgblue = alloca i8, align 1
  %bgindex = alloca i8, align 1
  %best_error = alloca i32, align 4
  %c = alloca i8*, align 8
  %len = alloca i32, align 4
  %local_error = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %orig_image_ID, i32* %orig_image_ID.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 0, i32* %liberalBPP, align 4
  store i32 0, i32* %useBPP, align 4
  store i32 0, i32* %is_gif89, align 4
  store i8 0, i8* %bgindex, align 1
  store i32 -1, i32* %best_error, align 4
  %0 = load i8*, i8** @globalcomment, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @comment_was_edited, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load i8*, i8** @globalcomment, align 8
  %call = call i64 @strlen(i8* %2) #7
  %add = add i64 %call, 1
  %conv = trunc i64 %add to i32
  %3 = load i8*, i8** @globalcomment, align 8
  %call1 = call %struct._GimpParasite* @gimp_parasite_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i32 0, i32 0), i32 1, i32 %conv, i8* %3)
  store %struct._GimpParasite* %call1, %struct._GimpParasite** @comment_parasite, align 8
  %4 = load i32, i32* %orig_image_ID.addr, align 4
  %5 = load %struct._GimpParasite*, %struct._GimpParasite** @comment_parasite, align 8
  %call2 = call i32 @gimp_image_attach_parasite(i32 %4, %struct._GimpParasite* %5)
  %6 = load %struct._GimpParasite*, %struct._GimpParasite** @comment_parasite, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %6)
  store %struct._GimpParasite* null, %struct._GimpParasite** @comment_parasite, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load i32, i32* getelementptr inbounds (%struct.GIFSaveVals, %struct.GIFSaveVals* @gsvals, i32 0, i32 1), align 4
  %tobool3 = icmp ne i32 %7, 0
  br i1 %tobool3, label %land.lhs.true.4, label %if.end.16

land.lhs.true.4:                                  ; preds = %if.end
  %8 = load i8*, i8** @globalcomment, align 8
  %tobool5 = icmp ne i8* %8, null
  br i1 %tobool5, label %if.then.6, label %if.end.16

if.then.6:                                        ; preds = %land.lhs.true.4
  %9 = load i8*, i8** @globalcomment, align 8
  store i8* %9, i8** %c, align 8
  %10 = load i8*, i8** %c, align 8
  %call7 = call i64 @strlen(i8* %10) #7
  %conv8 = trunc i64 %call7 to i32
  store i32 %conv8, i32* %len, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.6
  %11 = load i32, i32* %len, align 4
  %tobool9 = icmp ne i32 %11, 0
  br i1 %tobool9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i8*, i8** %c, align 8
  %13 = load i8, i8* %12, align 1
  %conv10 = zext i8 %13 to i32
  %cmp11 = icmp sgt i32 %conv10, 127
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %for.body
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.60, i32 0, i32 0)) #5
  call void (i8*, ...) @g_message(i8* %call14)
  %14 = load i8*, i8** @globalcomment, align 8
  call void @g_free(i8* %14)
  store i8* null, i8** @globalcomment, align 8
  br label %for.end

if.end.15:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %15 = load i8*, i8** %c, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %c, align 8
  %16 = load i32, i32* %len, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* %len, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.13, %for.cond
  br label %if.end.16

if.end.16:                                        ; preds = %for.end, %land.lhs.true.4, %if.end
  %17 = load i32, i32* %image_ID.addr, align 4
  %call17 = call i32* @gimp_image_get_layers(i32 %17, i32* %nlayers)
  store i32* %call17, i32** %layers, align 8
  %18 = load i32*, i32** %layers, align 8
  %arrayidx = getelementptr inbounds i32, i32* %18, i64 0
  %19 = load i32, i32* %arrayidx, align 4
  %call18 = call i32 @gimp_drawable_type(i32 %19)
  store i32 %call18, i32* %drawable_type, align 4
  %20 = load i32, i32* %nlayers, align 4
  %cmp19 = icmp sgt i32 %20, 1
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.16
  store i32 1, i32* %is_gif89, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end.16
  %21 = load i32, i32* getelementptr inbounds (%struct.GIFSaveVals, %struct.GIFSaveVals* @gsvals, i32 0, i32 1), align 4
  %tobool23 = icmp ne i32 %21, 0
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.22
  store i32 1, i32* %is_gif89, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.end.22
  %22 = load i32, i32* %drawable_type, align 4
  switch i32 %22, label %sw.default [
    i32 5, label %sw.bb
    i32 4, label %sw.bb.26
    i32 3, label %sw.bb.62
    i32 2, label %sw.bb.63
  ]

sw.bb:                                            ; preds = %if.end.25
  store i32 1, i32* %is_gif89, align 4
  br label %sw.bb.26

sw.bb.26:                                         ; preds = %if.end.25, %sw.bb
  %23 = load i32, i32* %image_ID.addr, align 4
  %call27 = call i8* @gimp_image_get_colormap(i32 %23, i32* %colors)
  store i8* %call27, i8** %cmap, align 8
  %call28 = call i32 @gimp_context_get_background(%struct._GimpRGB* %background)
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %background, i8* %bgred, i8* %bggreen, i8* %bgblue)
  store i32 0, i32* %i, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.44, %sw.bb.26
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %colors, align 4
  %cmp30 = icmp slt i32 %24, %25
  br i1 %cmp30, label %for.body.32, label %for.end.45

for.body.32:                                      ; preds = %for.cond.29
  %26 = load i8*, i8** %cmap, align 8
  %incdec.ptr33 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr33, i8** %cmap, align 8
  %27 = load i8, i8* %26, align 1
  %conv34 = zext i8 %27 to i32
  %28 = load i32, i32* %i, align 4
  %idxprom = sext i32 %28 to i64
  %arrayidx35 = getelementptr inbounds [256 x i32], [256 x i32]* %Red, i32 0, i64 %idxprom
  store i32 %conv34, i32* %arrayidx35, align 4
  %29 = load i8*, i8** %cmap, align 8
  %incdec.ptr36 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr36, i8** %cmap, align 8
  %30 = load i8, i8* %29, align 1
  %conv37 = zext i8 %30 to i32
  %31 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %31 to i64
  %arrayidx39 = getelementptr inbounds [256 x i32], [256 x i32]* %Green, i32 0, i64 %idxprom38
  store i32 %conv37, i32* %arrayidx39, align 4
  %32 = load i8*, i8** %cmap, align 8
  %incdec.ptr40 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr40, i8** %cmap, align 8
  %33 = load i8, i8* %32, align 1
  %conv41 = zext i8 %33 to i32
  %34 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %34 to i64
  %arrayidx43 = getelementptr inbounds [256 x i32], [256 x i32]* %Blue, i32 0, i64 %idxprom42
  store i32 %conv41, i32* %arrayidx43, align 4
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.body.32
  %35 = load i32, i32* %i, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.29

for.end.45:                                       ; preds = %for.cond.29
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.59, %for.end.45
  %36 = load i32, i32* %i, align 4
  %cmp47 = icmp slt i32 %36, 256
  br i1 %cmp47, label %for.body.49, label %for.end.61

for.body.49:                                      ; preds = %for.cond.46
  %37 = load i8, i8* %bgred, align 1
  %conv50 = zext i8 %37 to i32
  %38 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %38 to i64
  %arrayidx52 = getelementptr inbounds [256 x i32], [256 x i32]* %Red, i32 0, i64 %idxprom51
  store i32 %conv50, i32* %arrayidx52, align 4
  %39 = load i8, i8* %bggreen, align 1
  %conv53 = zext i8 %39 to i32
  %40 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %40 to i64
  %arrayidx55 = getelementptr inbounds [256 x i32], [256 x i32]* %Green, i32 0, i64 %idxprom54
  store i32 %conv53, i32* %arrayidx55, align 4
  %41 = load i8, i8* %bgblue, align 1
  %conv56 = zext i8 %41 to i32
  %42 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %42 to i64
  %arrayidx58 = getelementptr inbounds [256 x i32], [256 x i32]* %Blue, i32 0, i64 %idxprom57
  store i32 %conv56, i32* %arrayidx58, align 4
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.body.49
  %43 = load i32, i32* %i, align 4
  %inc60 = add nsw i32 %43, 1
  store i32 %inc60, i32* %i, align 4
  br label %for.cond.46

for.end.61:                                       ; preds = %for.cond.46
  br label %sw.epilog

sw.bb.62:                                         ; preds = %if.end.25
  store i32 1, i32* %is_gif89, align 4
  br label %sw.bb.63

sw.bb.63:                                         ; preds = %if.end.25, %sw.bb.62
  store i32 256, i32* %colors, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc.74, %sw.bb.63
  %44 = load i32, i32* %i, align 4
  %cmp65 = icmp slt i32 %44, 256
  br i1 %cmp65, label %for.body.67, label %for.end.76

for.body.67:                                      ; preds = %for.cond.64
  %45 = load i32, i32* %i, align 4
  %46 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %46 to i64
  %arrayidx69 = getelementptr inbounds [256 x i32], [256 x i32]* %Blue, i32 0, i64 %idxprom68
  store i32 %45, i32* %arrayidx69, align 4
  %47 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %47 to i64
  %arrayidx71 = getelementptr inbounds [256 x i32], [256 x i32]* %Green, i32 0, i64 %idxprom70
  store i32 %45, i32* %arrayidx71, align 4
  %48 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %48 to i64
  %arrayidx73 = getelementptr inbounds [256 x i32], [256 x i32]* %Red, i32 0, i64 %idxprom72
  store i32 %45, i32* %arrayidx73, align 4
  br label %for.inc.74

for.inc.74:                                       ; preds = %for.body.67
  %49 = load i32, i32* %i, align 4
  %inc75 = add nsw i32 %49, 1
  store i32 %inc75, i32* %i, align 4
  br label %for.cond.64

for.end.76:                                       ; preds = %for.cond.64
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.25
  %call77 = call i8* @gettext(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.61, i32 0, i32 0)) #5
  call void (i8*, ...) @g_message(i8* %call77)
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %for.end.76, %for.end.61
  store i32 255, i32* %i, align 4
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.115, %sw.epilog
  %50 = load i32, i32* %i, align 4
  %cmp79 = icmp sge i32 %50, 0
  br i1 %cmp79, label %for.body.81, label %for.end.117

for.body.81:                                      ; preds = %for.cond.78
  store i32 0, i32* %local_error, align 4
  %51 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %51 to i64
  %arrayidx83 = getelementptr inbounds [256 x i32], [256 x i32]* %Red, i32 0, i64 %idxprom82
  %52 = load i32, i32* %arrayidx83, align 4
  %53 = load i8, i8* %bgred, align 1
  %conv84 = zext i8 %53 to i32
  %sub = sub nsw i32 %52, %conv84
  %54 = load i32, i32* %i, align 4
  %idxprom85 = sext i32 %54 to i64
  %arrayidx86 = getelementptr inbounds [256 x i32], [256 x i32]* %Red, i32 0, i64 %idxprom85
  %55 = load i32, i32* %arrayidx86, align 4
  %56 = load i8, i8* %bgred, align 1
  %conv87 = zext i8 %56 to i32
  %sub88 = sub nsw i32 %55, %conv87
  %mul = mul nsw i32 %sub, %sub88
  %57 = load i32, i32* %local_error, align 4
  %add89 = add i32 %57, %mul
  store i32 %add89, i32* %local_error, align 4
  %58 = load i32, i32* %i, align 4
  %idxprom90 = sext i32 %58 to i64
  %arrayidx91 = getelementptr inbounds [256 x i32], [256 x i32]* %Green, i32 0, i64 %idxprom90
  %59 = load i32, i32* %arrayidx91, align 4
  %60 = load i8, i8* %bggreen, align 1
  %conv92 = zext i8 %60 to i32
  %sub93 = sub nsw i32 %59, %conv92
  %61 = load i32, i32* %i, align 4
  %idxprom94 = sext i32 %61 to i64
  %arrayidx95 = getelementptr inbounds [256 x i32], [256 x i32]* %Green, i32 0, i64 %idxprom94
  %62 = load i32, i32* %arrayidx95, align 4
  %63 = load i8, i8* %bggreen, align 1
  %conv96 = zext i8 %63 to i32
  %sub97 = sub nsw i32 %62, %conv96
  %mul98 = mul nsw i32 %sub93, %sub97
  %64 = load i32, i32* %local_error, align 4
  %add99 = add i32 %64, %mul98
  store i32 %add99, i32* %local_error, align 4
  %65 = load i32, i32* %i, align 4
  %idxprom100 = sext i32 %65 to i64
  %arrayidx101 = getelementptr inbounds [256 x i32], [256 x i32]* %Blue, i32 0, i64 %idxprom100
  %66 = load i32, i32* %arrayidx101, align 4
  %67 = load i8, i8* %bgblue, align 1
  %conv102 = zext i8 %67 to i32
  %sub103 = sub nsw i32 %66, %conv102
  %68 = load i32, i32* %i, align 4
  %idxprom104 = sext i32 %68 to i64
  %arrayidx105 = getelementptr inbounds [256 x i32], [256 x i32]* %Blue, i32 0, i64 %idxprom104
  %69 = load i32, i32* %arrayidx105, align 4
  %70 = load i8, i8* %bgblue, align 1
  %conv106 = zext i8 %70 to i32
  %sub107 = sub nsw i32 %69, %conv106
  %mul108 = mul nsw i32 %sub103, %sub107
  %71 = load i32, i32* %local_error, align 4
  %add109 = add i32 %71, %mul108
  store i32 %add109, i32* %local_error, align 4
  %72 = load i32, i32* %local_error, align 4
  %73 = load i32, i32* %best_error, align 4
  %cmp110 = icmp ule i32 %72, %73
  br i1 %cmp110, label %if.then.112, label %if.end.114

if.then.112:                                      ; preds = %for.body.81
  %74 = load i32, i32* %i, align 4
  %conv113 = trunc i32 %74 to i8
  store i8 %conv113, i8* %bgindex, align 1
  %75 = load i32, i32* %local_error, align 4
  store i32 %75, i32* %best_error, align 4
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.112, %for.body.81
  br label %for.inc.115

for.inc.115:                                      ; preds = %if.end.114
  %76 = load i32, i32* %i, align 4
  %dec116 = add nsw i32 %76, -1
  store i32 %dec116, i32* %i, align 4
  br label %for.cond.78

for.end.117:                                      ; preds = %for.cond.78
  %77 = load i8*, i8** %filename.addr, align 8
  %call118 = call %struct._IO_FILE* @fopen(i8* %77, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i32 0, i32 0))
  store %struct._IO_FILE* %call118, %struct._IO_FILE** %outfile, align 8
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %tobool119 = icmp ne %struct._IO_FILE* %78, null
  br i1 %tobool119, label %if.end.128, label %if.then.120

if.then.120:                                      ; preds = %for.end.117
  %79 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call121 = call i32 @g_file_error_quark()
  %call122 = call i32* @__errno_location() #6
  %80 = load i32, i32* %call122, align 4
  %call123 = call i32 @g_file_error_from_errno(i32 %80)
  %call124 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.63, i32 0, i32 0)) #5
  %81 = load i8*, i8** %filename.addr, align 8
  %call125 = call i8* @gimp_filename_to_utf8(i8* %81)
  %call126 = call i32* @__errno_location() #6
  %82 = load i32, i32* %call126, align 4
  %call127 = call i8* @g_strerror(i32 %82) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %79, i32 %call121, i32 %call123, i8* %call124, i8* %call125, i8* %call127)
  store i32 0, i32* %retval
  br label %return

if.end.128:                                       ; preds = %for.end.117
  %call129 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i32 0, i32 0)) #5
  %83 = load i8*, i8** %filename.addr, align 8
  %call130 = call i8* @gimp_filename_to_utf8(i8* %83)
  %call131 = call i32 (i8*, ...) @gimp_progress_init_printf(i8* %call129, i8* %call130)
  %84 = load i32, i32* %colors, align 4
  %cmp132 = icmp slt i32 %84, 256
  br i1 %cmp132, label %if.then.134, label %if.else

if.then.134:                                      ; preds = %if.end.128
  %85 = load i32, i32* %colors, align 4
  %86 = load i32, i32* %drawable_type, align 4
  %cmp135 = icmp eq i32 %86, 5
  %cond = select i1 %cmp135, i32 1, i32 0
  %add137 = add nsw i32 %85, %cond
  %call138 = call i32 @colors_to_bpp(i32 %add137)
  store i32 %call138, i32* %BitsPerPixel, align 4
  store i32 %call138, i32* %liberalBPP, align 4
  br label %if.end.144

if.else:                                          ; preds = %if.end.128
  %call139 = call i32 @colors_to_bpp(i32 256)
  store i32 %call139, i32* %BitsPerPixel, align 4
  store i32 %call139, i32* %liberalBPP, align 4
  %87 = load i32, i32* %drawable_type, align 4
  %cmp140 = icmp eq i32 %87, 5
  br i1 %cmp140, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %if.else
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.65, i32 0, i32 0))
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.142, %if.else
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.143, %if.then.134
  %88 = load i32, i32* %image_ID.addr, align 4
  %call145 = call i32 @gimp_image_width(i32 %88)
  store i32 %call145, i32* %cols, align 4
  %89 = load i32, i32* %image_ID.addr, align 4
  %call146 = call i32 @gimp_image_height(i32 %89)
  store i32 %call146, i32* %rows, align 4
  %90 = load i32, i32* getelementptr inbounds (%struct.GIFSaveVals, %struct.GIFSaveVals* @gsvals, i32 0, i32 0), align 4
  store i32 %90, i32* @Interlace, align 4
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %92 = load i32, i32* %is_gif89, align 4
  %93 = load i32, i32* %cols, align 4
  %94 = load i32, i32* %rows, align 4
  %95 = load i8, i8* %bgindex, align 1
  %conv147 = zext i8 %95 to i32
  %96 = load i32, i32* %BitsPerPixel, align 4
  %arraydecay = getelementptr inbounds [256 x i32], [256 x i32]* %Red, i32 0, i32 0
  %arraydecay148 = getelementptr inbounds [256 x i32], [256 x i32]* %Green, i32 0, i32 0
  %arraydecay149 = getelementptr inbounds [256 x i32], [256 x i32]* %Blue, i32 0, i32 0
  call void @gif_encode_header(%struct._IO_FILE* %91, i32 %92, i32 %93, i32 %94, i32 %conv147, i32 %96, i32* %arraydecay, i32* %arraydecay148, i32* %arraydecay149, i32 (i32, i32)* @get_pixel)
  %97 = load i32, i32* %nlayers, align 4
  %cmp150 = icmp sgt i32 %97, 1
  br i1 %cmp150, label %land.lhs.true.152, label %if.end.155

land.lhs.true.152:                                ; preds = %if.end.144
  %98 = load i32, i32* getelementptr inbounds (%struct.GIFSaveVals, %struct.GIFSaveVals* @gsvals, i32 0, i32 2), align 4
  %tobool153 = icmp ne i32 %98, 0
  br i1 %tobool153, label %if.then.154, label %if.end.155

if.then.154:                                      ; preds = %land.lhs.true.152
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  call void @gif_encode_loop_ext(%struct._IO_FILE* %99, i32 0)
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.154, %land.lhs.true.152, %if.end.144
  %100 = load i32, i32* getelementptr inbounds (%struct.GIFSaveVals, %struct.GIFSaveVals* @gsvals, i32 0, i32 1), align 4
  %tobool156 = icmp ne i32 %100, 0
  br i1 %tobool156, label %land.lhs.true.157, label %if.end.160

land.lhs.true.157:                                ; preds = %if.end.155
  %101 = load i8*, i8** @globalcomment, align 8
  %tobool158 = icmp ne i8* %101, null
  br i1 %tobool158, label %if.then.159, label %if.end.160

if.then.159:                                      ; preds = %land.lhs.true.157
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %103 = load i8*, i8** @globalcomment, align 8
  call void @gif_encode_comment_ext(%struct._IO_FILE* %102, i8* %103)
  br label %if.end.160

if.end.160:                                       ; preds = %if.then.159, %land.lhs.true.157, %if.end.155
  store i32 0, i32* @cur_progress, align 4
  %104 = load i32, i32* %nlayers, align 4
  %105 = load i32, i32* %rows, align 4
  %mul161 = mul i32 %104, %105
  store i32 %mul161, i32* @max_progress, align 4
  %106 = load i32, i32* %nlayers, align 4
  %sub162 = sub nsw i32 %106, 1
  store i32 %sub162, i32* %i, align 4
  br label %for.cond.163

for.cond.163:                                     ; preds = %for.inc.265, %if.end.160
  %107 = load i32, i32* %i, align 4
  %cmp164 = icmp sge i32 %107, 0
  br i1 %cmp164, label %for.body.166, label %for.end.269

for.body.166:                                     ; preds = %for.cond.163
  %108 = load i32, i32* %i, align 4
  %idxprom167 = sext i32 %108 to i64
  %109 = load i32*, i32** %layers, align 8
  %arrayidx168 = getelementptr inbounds i32, i32* %109, i64 %idxprom167
  %110 = load i32, i32* %arrayidx168, align 4
  %call169 = call i32 @gimp_drawable_type(i32 %110)
  store i32 %call169, i32* %drawable_type, align 4
  %111 = load i32, i32* %i, align 4
  %idxprom170 = sext i32 %111 to i64
  %112 = load i32*, i32** %layers, align 8
  %arrayidx171 = getelementptr inbounds i32, i32* %112, i64 %idxprom170
  %113 = load i32, i32* %arrayidx171, align 4
  %call172 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %113)
  store %struct._GimpDrawable* %call172, %struct._GimpDrawable** %drawable, align 8
  %114 = load i32, i32* %i, align 4
  %idxprom173 = sext i32 %114 to i64
  %115 = load i32*, i32** %layers, align 8
  %arrayidx174 = getelementptr inbounds i32, i32* %115, i64 %idxprom173
  %116 = load i32, i32* %arrayidx174, align 4
  %call175 = call i32 @gimp_drawable_offsets(i32 %116, i32* %offset_x, i32* %offset_y)
  %117 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %117, i32 0, i32 1
  %118 = load i32, i32* %width, align 4
  store i32 %118, i32* %cols, align 4
  %119 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %119, i32 0, i32 2
  %120 = load i32, i32* %height, align 4
  store i32 %120, i32* %rows, align 4
  %121 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width176 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %121, i32 0, i32 1
  %122 = load i32, i32* %width176, align 4
  store i32 %122, i32* @rowstride, align 4
  %123 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %124 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width177 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %124, i32 0, i32 1
  %125 = load i32, i32* %width177, align 4
  %126 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height178 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %126, i32 0, i32 2
  %127 = load i32, i32* %height178, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %123, i32 0, i32 0, i32 %125, i32 %127, i32 0, i32 0)
  %128 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width179 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %128, i32 0, i32 1
  %129 = load i32, i32* %width179, align 4
  %130 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height180 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %130, i32 0, i32 2
  %131 = load i32, i32* %height180, align 4
  %mul181 = mul i32 %129, %131
  %132 = load i32, i32* %drawable_type, align 4
  %cmp182 = icmp eq i32 %132, 5
  br i1 %cmp182, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.body.166
  %133 = load i32, i32* %drawable_type, align 4
  %cmp184 = icmp eq i32 %133, 3
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.body.166
  %134 = phi i1 [ true, %for.body.166 ], [ %cmp184, %lor.rhs ]
  %cond186 = select i1 %134, i32 2, i32 1
  %mul187 = mul i32 %mul181, %cond186
  %conv188 = zext i32 %mul187 to i64
  %call189 = call noalias i8* @g_malloc_n(i64 %conv188, i64 1)
  store i8* %call189, i8** @pixels, align 8
  %135 = load i8*, i8** @pixels, align 8
  %136 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width190 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %136, i32 0, i32 1
  %137 = load i32, i32* %width190, align 4
  %138 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height191 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %138, i32 0, i32 2
  %139 = load i32, i32* %height191, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %135, i32 0, i32 0, i32 %137, i32 %139)
  %140 = load i32, i32* %drawable_type, align 4
  %cmp192 = icmp eq i32 %140, 5
  br i1 %cmp192, label %if.then.196, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %lor.end
  %141 = load i32, i32* %drawable_type, align 4
  %cmp194 = icmp eq i32 %141, 3
  br i1 %cmp194, label %if.then.196, label %if.else.206

if.then.196:                                      ; preds = %lor.lhs.false, %lor.end
  %142 = load i8*, i8** @pixels, align 8
  %143 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width197 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %143, i32 0, i32 1
  %144 = load i32, i32* %width197, align 4
  %145 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height198 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %145, i32 0, i32 2
  %146 = load i32, i32* %height198, align 4
  %mul199 = mul i32 %144, %146
  %147 = load i32, i32* %colors, align 4
  %call200 = call i32 @colors_to_bpp(i32 %147)
  %call201 = call i32 @bpp_to_colors(i32 %call200)
  %call202 = call i32 @find_unused_ia_colour(i8* %142, i32 %mul199, i32 %call201, i32* %colors)
  store i32 %call202, i32* %transparent, align 4
  %148 = load i8*, i8** @pixels, align 8
  %149 = load i32, i32* %transparent, align 4
  %150 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width203 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %150, i32 0, i32 1
  %151 = load i32, i32* %width203, align 4
  %152 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height204 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %152, i32 0, i32 2
  %153 = load i32, i32* %height204, align 4
  %mul205 = mul i32 %151, %153
  call void @special_flatten_indexed_alpha(i8* %148, i32 %149, i32 %mul205)
  br label %if.end.207

if.else.206:                                      ; preds = %lor.lhs.false
  store i32 -1, i32* %transparent, align 4
  br label %if.end.207

if.end.207:                                       ; preds = %if.else.206, %if.then.196
  %154 = load i32, i32* %colors, align 4
  %call208 = call i32 @colors_to_bpp(i32 %154)
  store i32 %call208, i32* %BitsPerPixel, align 4
  %155 = load i32, i32* %BitsPerPixel, align 4
  %156 = load i32, i32* %liberalBPP, align 4
  %cmp209 = icmp ne i32 %155, %156
  br i1 %cmp209, label %if.then.211, label %if.end.212

if.then.211:                                      ; preds = %if.end.207
  br label %if.end.212

if.end.212:                                       ; preds = %if.then.211, %if.end.207
  %157 = load i32, i32* %BitsPerPixel, align 4
  %158 = load i32, i32* %liberalBPP, align 4
  %cmp213 = icmp sgt i32 %157, %158
  br i1 %cmp213, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.212
  %159 = load i32, i32* %BitsPerPixel, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.212
  %160 = load i32, i32* %liberalBPP, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond215 = phi i32 [ %159, %cond.true ], [ %160, %cond.false ]
  store i32 %cond215, i32* %useBPP, align 4
  %161 = load i32, i32* %is_gif89, align 4
  %tobool216 = icmp ne i32 %161, 0
  br i1 %tobool216, label %if.then.217, label %if.end.257

if.then.217:                                      ; preds = %cond.end
  %162 = load i32, i32* %i, align 4
  %cmp218 = icmp sgt i32 %162, 0
  br i1 %cmp218, label %land.lhs.true.220, label %if.else.228

land.lhs.true.220:                                ; preds = %if.then.217
  %163 = load i32, i32* getelementptr inbounds (%struct.GIFSaveVals, %struct.GIFSaveVals* @gsvals, i32 0, i32 6), align 4
  %tobool221 = icmp ne i32 %163, 0
  br i1 %tobool221, label %if.else.228, label %if.then.222

if.then.222:                                      ; preds = %land.lhs.true.220
  %164 = load i32, i32* %i, align 4
  %sub223 = sub nsw i32 %164, 1
  %idxprom224 = sext i32 %sub223 to i64
  %165 = load i32*, i32** %layers, align 8
  %arrayidx225 = getelementptr inbounds i32, i32* %165, i64 %idxprom224
  %166 = load i32, i32* %arrayidx225, align 4
  %call226 = call i8* @gimp_item_get_name(i32 %166)
  store i8* %call226, i8** %layer_name, align 8
  %167 = load i8*, i8** %layer_name, align 8
  %call227 = call i32 @parse_disposal_tag(i8* %167)
  store i32 %call227, i32* %Disposal, align 4
  %168 = load i8*, i8** %layer_name, align 8
  call void @g_free(i8* %168)
  br label %if.end.229

if.else.228:                                      ; preds = %land.lhs.true.220, %if.then.217
  %169 = load i32, i32* getelementptr inbounds (%struct.GIFSaveVals, %struct.GIFSaveVals* @gsvals, i32 0, i32 4), align 4
  store i32 %169, i32* %Disposal, align 4
  br label %if.end.229

if.end.229:                                       ; preds = %if.else.228, %if.then.222
  %170 = load i32, i32* %i, align 4
  %idxprom230 = sext i32 %170 to i64
  %171 = load i32*, i32** %layers, align 8
  %arrayidx231 = getelementptr inbounds i32, i32* %171, i64 %idxprom230
  %172 = load i32, i32* %arrayidx231, align 4
  %call232 = call i8* @gimp_item_get_name(i32 %172)
  store i8* %call232, i8** %layer_name, align 8
  %173 = load i8*, i8** %layer_name, align 8
  %call233 = call i32 @parse_ms_tag(i8* %173)
  store i32 %call233, i32* %Delay89, align 4
  %174 = load i8*, i8** %layer_name, align 8
  call void @g_free(i8* %174)
  %175 = load i32, i32* %Delay89, align 4
  %cmp234 = icmp slt i32 %175, 0
  br i1 %cmp234, label %if.then.238, label %lor.lhs.false.236

lor.lhs.false.236:                                ; preds = %if.end.229
  %176 = load i32, i32* getelementptr inbounds (%struct.GIFSaveVals, %struct.GIFSaveVals* @gsvals, i32 0, i32 5), align 4
  %tobool237 = icmp ne i32 %176, 0
  br i1 %tobool237, label %if.then.238, label %if.else.240

if.then.238:                                      ; preds = %lor.lhs.false.236, %if.end.229
  %177 = load i32, i32* getelementptr inbounds (%struct.GIFSaveVals, %struct.GIFSaveVals* @gsvals, i32 0, i32 3), align 4
  %add239 = add nsw i32 %177, 5
  %div = sdiv i32 %add239, 10
  store i32 %div, i32* %Delay89, align 4
  br label %if.end.243

if.else.240:                                      ; preds = %lor.lhs.false.236
  %178 = load i32, i32* %Delay89, align 4
  %add241 = add nsw i32 %178, 5
  %div242 = sdiv i32 %add241, 10
  store i32 %div242, i32* %Delay89, align 4
  br label %if.end.243

if.end.243:                                       ; preds = %if.else.240, %if.then.238
  %179 = load i32, i32* %nlayers, align 4
  %cmp244 = icmp sgt i32 %179, 1
  br i1 %cmp244, label %land.lhs.true.246, label %if.end.256

land.lhs.true.246:                                ; preds = %if.end.243
  %180 = load i32, i32* getelementptr inbounds (%struct.GIFSaveVals, %struct.GIFSaveVals* @gsvals, i32 0, i32 2), align 4
  %tobool247 = icmp ne i32 %180, 0
  br i1 %tobool247, label %land.lhs.true.248, label %if.end.256

land.lhs.true.248:                                ; preds = %land.lhs.true.246
  %181 = load i32, i32* %Delay89, align 4
  %cmp249 = icmp eq i32 %181, 0
  br i1 %cmp249, label %if.then.251, label %if.end.256

if.then.251:                                      ; preds = %land.lhs.true.248
  %182 = load i32, i32* @save_image.onceonly, align 4
  %tobool252 = icmp ne i32 %182, 0
  br i1 %tobool252, label %if.end.255, label %if.then.253

if.then.253:                                      ; preds = %if.then.251
  %call254 = call i8* @gettext(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.66, i32 0, i32 0)) #5
  call void (i8*, ...) @g_message(i8* %call254)
  store i32 1, i32* @save_image.onceonly, align 4
  br label %if.end.255

if.end.255:                                       ; preds = %if.then.253, %if.then.251
  store i32 1, i32* %Delay89, align 4
  br label %if.end.256

if.end.256:                                       ; preds = %if.end.255, %land.lhs.true.248, %land.lhs.true.246, %if.end.243
  %183 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %184 = load i32, i32* %Disposal, align 4
  %185 = load i32, i32* %Delay89, align 4
  %186 = load i32, i32* %nlayers, align 4
  %187 = load i32, i32* %cols, align 4
  %188 = load i32, i32* %rows, align 4
  %189 = load i32, i32* %transparent, align 4
  %190 = load i32, i32* %useBPP, align 4
  call void @gif_encode_graphic_control_ext(%struct._IO_FILE* %183, i32 %184, i32 %185, i32 %186, i32 %187, i32 %188, i32 %189, i32 %190, i32 (i32, i32)* @get_pixel)
  br label %if.end.257

if.end.257:                                       ; preds = %if.end.256, %cond.end
  %191 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %192 = load i32, i32* %cols, align 4
  %193 = load i32, i32* %rows, align 4
  %194 = load i32, i32* %rows, align 4
  %cmp258 = icmp ugt i32 %194, 4
  br i1 %cmp258, label %cond.true.260, label %cond.false.261

cond.true.260:                                    ; preds = %if.end.257
  %195 = load i32, i32* getelementptr inbounds (%struct.GIFSaveVals, %struct.GIFSaveVals* @gsvals, i32 0, i32 0), align 4
  br label %cond.end.262

cond.false.261:                                   ; preds = %if.end.257
  br label %cond.end.262

cond.end.262:                                     ; preds = %cond.false.261, %cond.true.260
  %cond263 = phi i32 [ %195, %cond.true.260 ], [ 0, %cond.false.261 ]
  %196 = load i32, i32* %useBPP, align 4
  %197 = load i32, i32* %offset_x, align 4
  %198 = load i32, i32* %offset_y, align 4
  call void @gif_encode_image_data(%struct._IO_FILE* %191, i32 %192, i32 %193, i32 %cond263, i32 %196, i32 (i32, i32)* @get_pixel, i32 %197, i32 %198)
  %call264 = call i32 @gimp_progress_update(double 1.000000e+00)
  %199 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %199)
  %200 = load i8*, i8** @pixels, align 8
  call void @g_free(i8* %200)
  br label %for.inc.265

for.inc.265:                                      ; preds = %cond.end.262
  %201 = load i32, i32* %i, align 4
  %dec266 = add nsw i32 %201, -1
  store i32 %dec266, i32* %i, align 4
  %202 = load i32, i32* %nlayers, align 4
  %203 = load i32, i32* %i, align 4
  %sub267 = sub nsw i32 %202, %203
  %204 = load i32, i32* %rows, align 4
  %mul268 = mul i32 %sub267, %204
  store i32 %mul268, i32* @cur_progress, align 4
  br label %for.cond.163

for.end.269:                                      ; preds = %for.cond.163
  %205 = load i32*, i32** %layers, align 8
  %206 = bitcast i32* %205 to i8*
  call void @g_free(i8* %206)
  %207 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  call void @gif_encode_close(%struct._IO_FILE* %207)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.269, %if.then.120, %sw.default
  %208 = load i32, i32* %retval
  ret i32 %208
}

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare i32 @gimp_image_width(i32) #1

declare i32 @gimp_image_height(i32) #1

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare i8* @gimp_filename_to_utf8(i8*) #1

declare i32 @gimp_image_duplicate(i32) #1

declare i32* @gimp_image_get_layers(i32, i32*) #1

declare i32 @gimp_drawable_offsets(i32, i32*, i32*) #1

declare i32 @gimp_drawable_width(i32) #1

declare i32 @gimp_drawable_height(i32) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @bad_bounds_dialog() #0 {
entry:
  %dialog = alloca %struct._GtkWidget*, align 8
  %crop = alloca i32, align 4
  %call = call i8* @gettext(i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.32, i32 0, i32 0)) #5
  %call1 = call %struct._GtkWidget* (%struct._GtkWindow*, i32, i32, i32, i8*, ...) @gtk_message_dialog_new(%struct._GtkWindow* null, i32 0, i32 1, i32 0, i8* %call)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %dialog, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_dialog_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call2)
  %2 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i8*, ...) @gtk_dialog_add_buttons(%struct._GtkDialog* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0), i32 -5, i8* null)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_dialog_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call4)
  %5 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %5, i32 -5, i32 -6, i32 -1)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_window_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call6)
  %8 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %8)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_message_dialog_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call8)
  %11 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkMessageDialog*
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([134 x i8], [134 x i8]* @.str.35, i32 0, i32 0)) #5
  call void (%struct._GtkMessageDialog*, i8*, ...) @gtk_message_dialog_format_secondary_text(%struct._GtkMessageDialog* %11, i8* %call10)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %12)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_dialog_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkDialog*
  %call13 = call i32 @gtk_dialog_run(%struct._GtkDialog* %15)
  %cmp = icmp eq i32 %call13, -5
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %crop, align 4
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %16)
  %17 = load i32, i32* %crop, align 4
  ret i32 %17
}

declare i32 @gimp_image_crop(i32, i32, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_message_dialog_new(%struct._GtkWindow*, i32, i32, i32, i8*, ...) #1

declare void @gtk_dialog_add_buttons(%struct._GtkDialog*, i8*, ...) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #3

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

declare void @gimp_window_set_transient(%struct._GtkWindow*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #3

declare void @gtk_message_dialog_format_secondary_text(%struct._GtkMessageDialog*, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_message_dialog_get_type() #3

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare i32 @gtk_dialog_run(%struct._GtkDialog*) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_export_dialog_new(i8*, i8*, i8*) #1

declare %struct._GtkBuilder* @gtk_builder_new() #1

declare noalias i8* @g_build_filename(i8*, ...) #1

; Function Attrs: nounwind readnone
declare i8* @gimp_data_directory() #3

declare i32 @gtk_builder_add_from_file(%struct._GtkBuilder*, i8*, %struct._GError**) #1

declare void @g_printerr(i8*, ...) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gimp_export_dialog_get_content_area(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare %struct._GObject* @gtk_builder_get_object(%struct._GtkBuilder*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #3

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @file_gif_toggle_button_init(%struct._GtkBuilder* %builder, i8* %name, i32 %initial_value, i32* %value_pointer) #0 {
entry:
  %builder.addr = alloca %struct._GtkBuilder*, align 8
  %name.addr = alloca i8*, align 8
  %initial_value.addr = alloca i32, align 4
  %value_pointer.addr = alloca i32*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  store %struct._GtkBuilder* %builder, %struct._GtkBuilder** %builder.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %initial_value, i32* %initial_value.addr, align 4
  store i32* %value_pointer, i32** %value_pointer.addr, align 8
  store %struct._GtkWidget* null, %struct._GtkWidget** %toggle, align 8
  %0 = load %struct._GtkBuilder*, %struct._GtkBuilder** %builder.addr, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %call = call %struct._GObject* @gtk_builder_get_object(%struct._GtkBuilder* %0, i8* %1)
  %2 = bitcast %struct._GObject* %call to %struct._GTypeInstance*
  %call1 = call i64 @gtk_widget_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWidget*
  store %struct._GtkWidget* %3, %struct._GtkWidget** %toggle, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_toggle_button_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkToggleButton*
  %7 = load i32, i32* %initial_value.addr, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %6, i32 %7)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %9 = bitcast %struct._GtkWidget* %8 to i8*
  %10 = load i32*, i32** %value_pointer.addr, align 8
  %11 = bitcast i32* %10 to i8*
  %call5 = call i64 @g_signal_connect_data(i8* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* %11, void (i8*, %struct._GClosure*)* null, i32 0)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  ret %struct._GtkWidget* %12
}

declare %struct._GtkTextBuffer* @gtk_text_view_get_buffer(%struct._GtkTextView*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_text_view_get_type() #3

declare %struct._GimpParasite* @gimp_image_get_parasite(i32, i8*) #1

declare noalias i8* @g_strndup(i8*, i64) #1

declare i8* @gimp_parasite_data(%struct._GimpParasite*) #1

declare i64 @gimp_parasite_data_size(%struct._GimpParasite*) #1

declare i8* @gimp_get_default_comment() #1

declare void @gimp_parasite_free(%struct._GimpParasite*) #1

declare void @gtk_text_buffer_set_text(%struct._GtkTextBuffer*, i8*, i32) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @comment_entry_callback(%struct._GtkTextBuffer* %buffer) #0 {
entry:
  %buffer.addr = alloca %struct._GtkTextBuffer*, align 8
  %start_iter = alloca %struct._GtkTextIter, align 8
  %end_iter = alloca %struct._GtkTextIter, align 8
  %text = alloca i8*, align 8
  store %struct._GtkTextBuffer* %buffer, %struct._GtkTextBuffer** %buffer.addr, align 8
  %0 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer.addr, align 8
  call void @gtk_text_buffer_get_bounds(%struct._GtkTextBuffer* %0, %struct._GtkTextIter* %start_iter, %struct._GtkTextIter* %end_iter)
  %1 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer.addr, align 8
  %call = call i8* @gtk_text_buffer_get_text(%struct._GtkTextBuffer* %1, %struct._GtkTextIter* %start_iter, %struct._GtkTextIter* %end_iter, i32 0)
  store i8* %call, i8** %text, align 8
  %2 = load i8*, i8** %text, align 8
  %call1 = call i64 @strlen(i8* %2) #7
  %cmp = icmp ugt i64 %call1, 240
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.58, i32 0, i32 0)) #5
  call void (i8*, ...) @g_message(i8* %call2, i32 240)
  %3 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer.addr, align 8
  call void @gtk_text_buffer_get_iter_at_offset(%struct._GtkTextBuffer* %3, %struct._GtkTextIter* %start_iter, i32 239)
  %4 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer.addr, align 8
  call void @gtk_text_buffer_get_end_iter(%struct._GtkTextBuffer* %4, %struct._GtkTextIter* %end_iter)
  %5 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer.addr, align 8
  call void @gtk_text_buffer_delete(%struct._GtkTextBuffer* %5, %struct._GtkTextIter* %start_iter, %struct._GtkTextIter* %end_iter)
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i8*, i8** @globalcomment, align 8
  call void @g_free(i8* %6)
  %7 = load i8*, i8** %text, align 8
  %call3 = call noalias i8* @g_strdup(i8* %7)
  store i8* %call3, i8** @globalcomment, align 8
  store i32 1, i32* @comment_was_edited, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load i8*, i8** %text, align 8
  call void @g_free(i8* %8)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @file_gif_spin_button_int_init(%struct._GtkBuilder* %builder, i8* %name, i32 %initial_value, i32* %value_pointer) #0 {
entry:
  %builder.addr = alloca %struct._GtkBuilder*, align 8
  %name.addr = alloca i8*, align 8
  %initial_value.addr = alloca i32, align 4
  %value_pointer.addr = alloca i32*, align 8
  %spin_button = alloca %struct._GtkWidget*, align 8
  %adjustment = alloca %struct._GtkAdjustment*, align 8
  store %struct._GtkBuilder* %builder, %struct._GtkBuilder** %builder.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %initial_value, i32* %initial_value.addr, align 4
  store i32* %value_pointer, i32** %value_pointer.addr, align 8
  store %struct._GtkWidget* null, %struct._GtkWidget** %spin_button, align 8
  store %struct._GtkAdjustment* null, %struct._GtkAdjustment** %adjustment, align 8
  %0 = load %struct._GtkBuilder*, %struct._GtkBuilder** %builder.addr, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %call = call %struct._GObject* @gtk_builder_get_object(%struct._GtkBuilder* %0, i8* %1)
  %2 = bitcast %struct._GObject* %call to %struct._GTypeInstance*
  %call1 = call i64 @gtk_widget_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWidget*
  store %struct._GtkWidget* %3, %struct._GtkWidget** %spin_button, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %spin_button, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_spin_button_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkSpinButton*
  %call5 = call %struct._GtkAdjustment* @gtk_spin_button_get_adjustment(%struct._GtkSpinButton* %6)
  store %struct._GtkAdjustment* %call5, %struct._GtkAdjustment** %adjustment, align 8
  %7 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment, align 8
  %8 = load i32, i32* %initial_value.addr, align 4
  %conv = sitofp i32 %8 to double
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %7, double %conv)
  %9 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment, align 8
  %10 = bitcast %struct._GtkAdjustment* %9 to i8*
  %call6 = call i64 @g_signal_connect_data(i8* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.59, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.GIFSaveVals, %struct.GIFSaveVals* @gsvals, i32 0, i32 3) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %spin_button, align 8
  ret %struct._GtkWidget* %11
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @file_gif_combo_box_int_init(%struct._GtkBuilder* %builder, i8* %name, i32 %initial_value, i32* %value_pointer, i8* %first_label, i32 %first_value, ...) #0 {
entry:
  %builder.addr = alloca %struct._GtkBuilder*, align 8
  %name.addr = alloca i8*, align 8
  %initial_value.addr = alloca i32, align 4
  %value_pointer.addr = alloca i32*, align 8
  %first_label.addr = alloca i8*, align 8
  %first_value.addr = alloca i32, align 4
  %combo = alloca %struct._GtkWidget*, align 8
  %store = alloca %struct._GtkListStore*, align 8
  %label = alloca i8*, align 8
  %value = alloca i32, align 4
  %iter = alloca %struct._GtkTreeIter, align 8
  %values = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._GtkBuilder* %builder, %struct._GtkBuilder** %builder.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %initial_value, i32* %initial_value.addr, align 4
  store i32* %value_pointer, i32** %value_pointer.addr, align 8
  store i8* %first_label, i8** %first_label.addr, align 8
  store i32 %first_value, i32* %first_value.addr, align 4
  store %struct._GtkWidget* null, %struct._GtkWidget** %combo, align 8
  store %struct._GtkListStore* null, %struct._GtkListStore** %store, align 8
  store i8* null, i8** %label, align 8
  store i32 0, i32* %value, align 4
  %0 = bitcast %struct._GtkTreeIter* %iter to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 32, i32 8, i1 false)
  %1 = load %struct._GtkBuilder*, %struct._GtkBuilder** %builder.addr, align 8
  %2 = load i8*, i8** %name.addr, align 8
  %call = call %struct._GObject* @gtk_builder_get_object(%struct._GtkBuilder* %1, i8* %2)
  %3 = bitcast %struct._GObject* %call to %struct._GTypeInstance*
  %call1 = call i64 @gtk_widget_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWidget*
  store %struct._GtkWidget* %4, %struct._GtkWidget** %combo, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_combo_box_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkComboBox*
  %call5 = call %struct._GtkTreeModel* @gtk_combo_box_get_model(%struct._GtkComboBox* %7)
  %8 = bitcast %struct._GtkTreeModel* %call5 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_list_store_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call6)
  %9 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkListStore*
  store %struct._GtkListStore* %9, %struct._GtkListStore** %store, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %values, i32 0, i32 0
  %arraydecay8 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay8)
  %10 = load i8*, i8** %first_label.addr, align 8
  store i8* %10, i8** %label, align 8
  %11 = load i32, i32* %first_value.addr, align 4
  store i32 %11, i32* %value, align 4
  br label %for.cond

for.cond:                                         ; preds = %vaarg.end.20, %entry
  %12 = load i8*, i8** %label, align 8
  %tobool = icmp ne i8* %12, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  call void @gtk_list_store_append(%struct._GtkListStore* %13, %struct._GtkTreeIter* %iter)
  %14 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %15 = load i32, i32* %value, align 4
  %16 = load i8*, i8** %label, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %14, %struct._GtkTreeIter* %iter, i32 0, i32 %15, i32 1, i8* %16, i32 -1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %arraydecay9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %values, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay9, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %for.inc
  %17 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay9, i32 0, i32 3
  %reg_save_area = load i8*, i8** %17
  %18 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %19 = bitcast i8* %18 to i8**
  %20 = add i32 %gp_offset, 8
  store i32 %20, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %for.inc
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay9, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %21 = bitcast i8* %overflow_arg_area to i8**
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i8** [ %19, %vaarg.in_reg ], [ %21, %vaarg.in_mem ]
  %22 = load i8*, i8** %vaarg.addr
  store i8* %22, i8** %label, align 8
  %arraydecay10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %values, i32 0, i32 0
  %gp_offset_p11 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay10, i32 0, i32 0
  %gp_offset12 = load i32, i32* %gp_offset_p11
  %fits_in_gp13 = icmp ule i32 %gp_offset12, 40
  br i1 %fits_in_gp13, label %vaarg.in_reg.14, label %vaarg.in_mem.16

vaarg.in_reg.14:                                  ; preds = %vaarg.end
  %23 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay10, i32 0, i32 3
  %reg_save_area15 = load i8*, i8** %23
  %24 = getelementptr i8, i8* %reg_save_area15, i32 %gp_offset12
  %25 = bitcast i8* %24 to i32*
  %26 = add i32 %gp_offset12, 8
  store i32 %26, i32* %gp_offset_p11
  br label %vaarg.end.20

vaarg.in_mem.16:                                  ; preds = %vaarg.end
  %overflow_arg_area_p17 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay10, i32 0, i32 2
  %overflow_arg_area18 = load i8*, i8** %overflow_arg_area_p17
  %27 = bitcast i8* %overflow_arg_area18 to i32*
  %overflow_arg_area.next19 = getelementptr i8, i8* %overflow_arg_area18, i32 8
  store i8* %overflow_arg_area.next19, i8** %overflow_arg_area_p17
  br label %vaarg.end.20

vaarg.end.20:                                     ; preds = %vaarg.in_mem.16, %vaarg.in_reg.14
  %vaarg.addr21 = phi i32* [ %25, %vaarg.in_reg.14 ], [ %27, %vaarg.in_mem.16 ]
  %28 = load i32, i32* %vaarg.addr21
  store i32 %28, i32* %value, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay22 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %values, i32 0, i32 0
  %arraydecay2223 = bitcast %struct.__va_list_tag* %arraydecay22 to i8*
  call void @llvm.va_end(i8* %arraydecay2223)
  %29 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %30 = bitcast %struct._GtkListStore* %29 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_tree_model_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call24)
  %31 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkTreeModel*
  %32 = load i32, i32* %initial_value.addr, align 4
  %call26 = call i32 @gtk_tree_model_iter_nth_child(%struct._GtkTreeModel* %31, %struct._GtkTreeIter* %iter, %struct._GtkTreeIter* null, i32 %32)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_combo_box_get_type() #6
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call27)
  %35 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkComboBox*
  call void @gtk_combo_box_set_active_iter(%struct._GtkComboBox* %35, %struct._GtkTreeIter* %iter)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %37 = bitcast %struct._GtkWidget* %36 to i8*
  %38 = load i32*, i32** %value_pointer.addr, align 8
  %39 = bitcast i32* %38 to i8*
  %call29 = call i64 @g_signal_connect_data(i8* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), void ()* bitcast (void (%struct._GtkComboBox*, i32*)* @file_gif_combo_box_int_update_value to void ()*), i8* %39, void (i8*, %struct._GClosure*)* null, i32 0)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  ret %struct._GtkWidget* %40
}

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

declare %struct._GBinding* @g_object_bind_property(i8*, i8*, i8*, i8*, i32) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare void @gtk_text_buffer_get_bounds(%struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextIter*) #1

declare i8* @gtk_text_buffer_get_text(%struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextIter*, i32) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

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

declare void @gtk_text_buffer_get_iter_at_offset(%struct._GtkTextBuffer*, %struct._GtkTextIter*, i32) #1

declare void @gtk_text_buffer_get_end_iter(%struct._GtkTextBuffer*, %struct._GtkTextIter*) #1

declare void @gtk_text_buffer_delete(%struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextIter*) #1

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare %struct._GtkAdjustment* @gtk_spin_button_get_adjustment(%struct._GtkSpinButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_spin_button_get_type() #3

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

declare void @gimp_int_adjustment_update(%struct._GtkAdjustment*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare %struct._GtkTreeModel* @gtk_combo_box_get_model(%struct._GtkComboBox*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_combo_box_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gtk_list_store_get_type() #3

declare void @gtk_list_store_append(%struct._GtkListStore*, %struct._GtkTreeIter*) #1

declare void @gtk_list_store_set(%struct._GtkListStore*, %struct._GtkTreeIter*, ...) #1

declare i32 @gtk_tree_model_iter_nth_child(%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_model_get_type() #3

declare void @gtk_combo_box_set_active_iter(%struct._GtkComboBox*, %struct._GtkTreeIter*) #1

; Function Attrs: nounwind uwtable
define internal void @file_gif_combo_box_int_update_value(%struct._GtkComboBox* %combo, i32* %value) #0 {
entry:
  %combo.addr = alloca %struct._GtkComboBox*, align 8
  %value.addr = alloca i32*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  store %struct._GtkComboBox* %combo, %struct._GtkComboBox** %combo.addr, align 8
  store i32* %value, i32** %value.addr, align 8
  %0 = load %struct._GtkComboBox*, %struct._GtkComboBox** %combo.addr, align 8
  %1 = bitcast %struct._GtkComboBox* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_combo_box_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkComboBox*
  %call2 = call i32 @gtk_combo_box_get_active_iter(%struct._GtkComboBox* %2, %struct._GtkTreeIter* %iter)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GtkComboBox*, %struct._GtkComboBox** %combo.addr, align 8
  %4 = bitcast %struct._GtkComboBox* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_combo_box_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkComboBox*
  %call5 = call %struct._GtkTreeModel* @gtk_combo_box_get_model(%struct._GtkComboBox* %5)
  %6 = load i32*, i32** %value.addr, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %call5, %struct._GtkTreeIter* %iter, i32 0, i32* %6, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @gtk_combo_box_get_active_iter(%struct._GtkComboBox*, %struct._GtkTreeIter*) #1

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #1

declare %struct._GimpParasite* @gimp_parasite_new(i8*, i32, i32, i8*) #1

declare i32 @gimp_image_attach_parasite(i32, %struct._GimpParasite*) #1

declare i32 @gimp_drawable_type(i32) #1

declare i8* @gimp_image_get_colormap(i32, i32*) #1

declare i32 @gimp_context_get_background(%struct._GimpRGB*) #1

declare void @gimp_rgb_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @g_file_error_quark() #1

declare i32 @g_file_error_from_errno(i32) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #3

declare i32 @gimp_progress_init_printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @colors_to_bpp(i32 %colors) #0 {
entry:
  %retval = alloca i32, align 4
  %colors.addr = alloca i32, align 4
  %bpp = alloca i32, align 4
  store i32 %colors, i32* %colors.addr, align 4
  %0 = load i32, i32* %colors.addr, align 4
  %cmp = icmp sle i32 %0, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %bpp, align 4
  br label %if.end.28

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %colors.addr, align 4
  %cmp1 = icmp sle i32 %1, 4
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  store i32 2, i32* %bpp, align 4
  br label %if.end.27

if.else.3:                                        ; preds = %if.else
  %2 = load i32, i32* %colors.addr, align 4
  %cmp4 = icmp sle i32 %2, 8
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else.3
  store i32 3, i32* %bpp, align 4
  br label %if.end.26

if.else.6:                                        ; preds = %if.else.3
  %3 = load i32, i32* %colors.addr, align 4
  %cmp7 = icmp sle i32 %3, 16
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.else.6
  store i32 4, i32* %bpp, align 4
  br label %if.end.25

if.else.9:                                        ; preds = %if.else.6
  %4 = load i32, i32* %colors.addr, align 4
  %cmp10 = icmp sle i32 %4, 32
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.else.9
  store i32 5, i32* %bpp, align 4
  br label %if.end.24

if.else.12:                                       ; preds = %if.else.9
  %5 = load i32, i32* %colors.addr, align 4
  %cmp13 = icmp sle i32 %5, 64
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.else.12
  store i32 6, i32* %bpp, align 4
  br label %if.end.23

if.else.15:                                       ; preds = %if.else.12
  %6 = load i32, i32* %colors.addr, align 4
  %cmp16 = icmp sle i32 %6, 128
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %if.else.15
  store i32 7, i32* %bpp, align 4
  br label %if.end.22

if.else.18:                                       ; preds = %if.else.15
  %7 = load i32, i32* %colors.addr, align 4
  %cmp19 = icmp sle i32 %7, 256
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %if.else.18
  store i32 8, i32* %bpp, align 4
  br label %if.end

if.else.21:                                       ; preds = %if.else.18
  %8 = load i32, i32* %colors.addr, align 4
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.67, i32 0, i32 0), i32 %8)
  store i32 8, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.20
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %if.then.17
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.14
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.11
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then.8
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.5
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.2
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then
  %9 = load i32, i32* %bpp, align 4
  store i32 %9, i32* %retval
  br label %return

return:                                           ; preds = %if.end.28, %if.else.21
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal void @gif_encode_header(%struct._IO_FILE* %fp, i32 %gif89, i32 %GWidth, i32 %GHeight, i32 %Background, i32 %BitsPerPixel, i32* %Red, i32* %Green, i32* %Blue, i32 (i32, i32)* %get_pixel) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %gif89.addr = alloca i32, align 4
  %GWidth.addr = alloca i32, align 4
  %GHeight.addr = alloca i32, align 4
  %Background.addr = alloca i32, align 4
  %BitsPerPixel.addr = alloca i32, align 4
  %Red.addr = alloca i32*, align 8
  %Green.addr = alloca i32*, align 8
  %Blue.addr = alloca i32*, align 8
  %get_pixel.addr = alloca i32 (i32, i32)*, align 8
  %B = alloca i32, align 4
  %RWidth = alloca i32, align 4
  %RHeight = alloca i32, align 4
  %Resolution = alloca i32, align 4
  %ColorMapSize = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %gif89, i32* %gif89.addr, align 4
  store i32 %GWidth, i32* %GWidth.addr, align 4
  store i32 %GHeight, i32* %GHeight.addr, align 4
  store i32 %Background, i32* %Background.addr, align 4
  store i32 %BitsPerPixel, i32* %BitsPerPixel.addr, align 4
  store i32* %Red, i32** %Red.addr, align 8
  store i32* %Green, i32** %Green.addr, align 8
  store i32* %Blue, i32** %Blue.addr, align 8
  store i32 (i32, i32)* %get_pixel, i32 (i32, i32)** %get_pixel.addr, align 8
  %0 = load i32, i32* %BitsPerPixel.addr, align 4
  %shl = shl i32 1, %0
  store i32 %shl, i32* %ColorMapSize, align 4
  %1 = load i32, i32* %GWidth.addr, align 4
  store i32 %1, i32* @Width, align 4
  store i32 %1, i32* %RWidth, align 4
  %2 = load i32, i32* %GHeight.addr, align 4
  store i32 %2, i32* @Height, align 4
  store i32 %2, i32* %RHeight, align 4
  %3 = load i32, i32* %BitsPerPixel.addr, align 4
  store i32 %3, i32* %Resolution, align 4
  %4 = load i32, i32* @Width, align 4
  %conv = sext i32 %4 to i64
  %5 = load i32, i32* @Height, align 4
  %conv1 = sext i32 %5 to i64
  %mul = mul nsw i64 %conv, %conv1
  store i64 %mul, i64* @CountDown, align 8
  store i32 0, i32* @Pass, align 4
  store i32 0, i32* @cury, align 4
  store i32 0, i32* @curx, align 4
  %6 = load i32, i32* %gif89.addr, align 4
  %tobool = icmp ne i32 %6, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i64 @fwrite(i8* %cond, i64 1, i64 6, %struct._IO_FILE* %7)
  %8 = load i32, i32* %RWidth, align 4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @put_word(i32 %8, %struct._IO_FILE* %9)
  %10 = load i32, i32* %RHeight, align 4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @put_word(i32 %10, %struct._IO_FILE* %11)
  store i32 128, i32* %B, align 4
  %12 = load i32, i32* %Resolution, align 4
  %sub = sub nsw i32 %12, 1
  %shl2 = shl i32 %sub, 5
  %13 = load i32, i32* %B, align 4
  %or = or i32 %13, %shl2
  store i32 %or, i32* %B, align 4
  %14 = load i32, i32* %BitsPerPixel.addr, align 4
  %sub3 = sub nsw i32 %14, 1
  %15 = load i32, i32* %B, align 4
  %or4 = or i32 %15, %sub3
  store i32 %or4, i32* %B, align 4
  %16 = load i32, i32* %B, align 4
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call5 = call i32 @fputc(i32 %16, %struct._IO_FILE* %17)
  %18 = load i32, i32* %Background.addr, align 4
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call6 = call i32 @fputc(i32 %18, %struct._IO_FILE* %19)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call7 = call i32 @fputc(i32 0, %struct._IO_FILE* %20)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %ColorMapSize, align 4
  %cmp = icmp slt i32 %21, %22
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %i, align 4
  %idxprom = sext i32 %23 to i64
  %24 = load i32*, i32** %Red.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %24, i64 %idxprom
  %25 = load i32, i32* %arrayidx, align 4
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call9 = call i32 @fputc(i32 %25, %struct._IO_FILE* %26)
  %27 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %27 to i64
  %28 = load i32*, i32** %Green.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %28, i64 %idxprom10
  %29 = load i32, i32* %arrayidx11, align 4
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call12 = call i32 @fputc(i32 %29, %struct._IO_FILE* %30)
  %31 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %31 to i64
  %32 = load i32*, i32** %Blue.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %32, i64 %idxprom13
  %33 = load i32, i32* %arrayidx14, align 4
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call15 = call i32 @fputc(i32 %33, %struct._IO_FILE* %34)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %35 = load i32, i32* %i, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @get_pixel(i32 %x, i32 %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i8*, i8** @pixels, align 8
  %1 = load i32, i32* @rowstride, align 4
  %conv = sext i32 %1 to i64
  %2 = load i32, i32* %y.addr, align 4
  %conv1 = sext i32 %2 to i64
  %mul = mul nsw i64 %conv, %conv1
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %mul
  %3 = load i32, i32* %x.addr, align 4
  %conv2 = sext i32 %3 to i64
  %add.ptr3 = getelementptr inbounds i8, i8* %add.ptr, i64 %conv2
  %4 = load i8, i8* %add.ptr3, align 1
  %conv4 = zext i8 %4 to i32
  ret i32 %conv4
}

; Function Attrs: nounwind uwtable
define internal void @gif_encode_loop_ext(%struct._IO_FILE* %fp, i32 %num_loops) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %num_loops.addr = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %num_loops, i32* %num_loops.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @fputc(i32 33, %struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1 = call i32 @fputc(i32 255, %struct._IO_FILE* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call2 = call i32 @fputc(i32 11, %struct._IO_FILE* %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call3 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.70, i32 0, i32 0), %struct._IO_FILE* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call4 = call i32 @fputc(i32 3, %struct._IO_FILE* %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call5 = call i32 @fputc(i32 1, %struct._IO_FILE* %5)
  %6 = load i32, i32* %num_loops.addr, align 4
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @put_word(i32 %6, %struct._IO_FILE* %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call6 = call i32 @fputc(i32 0, %struct._IO_FILE* %8)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gif_encode_comment_ext(%struct._IO_FILE* %fp, i8* %comment) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %comment.addr = alloca i8*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %comment, i8** %comment.addr, align 8
  %0 = load i8*, i8** %comment.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %comment.addr, align 8
  %2 = load i8, i8* %1, align 1
  %tobool1 = icmp ne i8 %2, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i8*, i8** %comment.addr, align 8
  %call = call i64 @strlen(i8* %3) #7
  %cmp = icmp ugt i64 %call, 240
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.71, i32 0, i32 0))
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call4 = call i32 @fputc(i32 33, %struct._IO_FILE* %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call5 = call i32 @fputc(i32 254, %struct._IO_FILE* %5)
  %6 = load i8*, i8** %comment.addr, align 8
  %call6 = call i64 @strlen(i8* %6) #7
  %conv = trunc i64 %call6 to i32
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call7 = call i32 @fputc(i32 %conv, %struct._IO_FILE* %7)
  %8 = load i8*, i8** %comment.addr, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call8 = call i32 @fputs(i8* %8, %struct._IO_FILE* %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call9 = call i32 @fputc(i32 0, %struct._IO_FILE* %10)
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  ret void
}

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @find_unused_ia_colour(i8* %pixels, i32 %numpixels, i32 %num_indices, i32* %colors) #0 {
entry:
  %retval = alloca i32, align 4
  %pixels.addr = alloca i8*, align 8
  %numpixels.addr = alloca i32, align 4
  %num_indices.addr = alloca i32, align 4
  %colors.addr = alloca i32*, align 8
  %ix_used = alloca [256 x i32], align 16
  %i = alloca i32, align 4
  store i8* %pixels, i8** %pixels.addr, align 8
  store i32 %numpixels, i32* %numpixels.addr, align 4
  store i32 %num_indices, i32* %num_indices.addr, align 4
  store i32* %colors, i32** %colors.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* %ix_used, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.11, %for.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %numpixels.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body.3, label %for.end.13

for.body.3:                                       ; preds = %for.cond.1
  %5 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %5, 2
  %add = add nsw i32 %mul, 1
  %idxprom4 = sext i32 %add to i64
  %6 = load i8*, i8** %pixels.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %6, i64 %idxprom4
  %7 = load i8, i8* %arrayidx5, align 1
  %tobool = icmp ne i8 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  %8 = load i32, i32* %i, align 4
  %mul6 = mul nsw i32 %8, 2
  %idxprom7 = sext i32 %mul6 to i64
  %9 = load i8*, i8** %pixels.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %9, i64 %idxprom7
  %10 = load i8, i8* %arrayidx8, align 1
  %idxprom9 = zext i8 %10 to i64
  %arrayidx10 = getelementptr inbounds [256 x i32], [256 x i32]* %ix_used, i32 0, i64 %idxprom9
  store i32 1, i32* %arrayidx10, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.3
  br label %for.inc.11

for.inc.11:                                       ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %11, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond.1

for.end.13:                                       ; preds = %for.cond.1
  %12 = load i32, i32* %num_indices.addr, align 4
  %sub = sub nsw i32 %12, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.22, %for.end.13
  %13 = load i32, i32* %i, align 4
  %cmp15 = icmp sge i32 %13, 0
  br i1 %cmp15, label %for.body.16, label %for.end.23

for.body.16:                                      ; preds = %for.cond.14
  %14 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %14 to i64
  %arrayidx18 = getelementptr inbounds [256 x i32], [256 x i32]* %ix_used, i32 0, i64 %idxprom17
  %15 = load i32, i32* %arrayidx18, align 4
  %tobool19 = icmp ne i32 %15, 0
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %for.body.16
  %16 = load i32, i32* %i, align 4
  store i32 %16, i32* %retval
  br label %return

if.end.21:                                        ; preds = %for.body.16
  br label %for.inc.22

for.inc.22:                                       ; preds = %if.end.21
  %17 = load i32, i32* %i, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.14

for.end.23:                                       ; preds = %for.cond.14
  %18 = load i32*, i32** %colors.addr, align 8
  %19 = load i32, i32* %18, align 4
  %cmp24 = icmp slt i32 %19, 256
  br i1 %cmp24, label %if.then.25, label %if.end.29

if.then.25:                                       ; preds = %for.end.23
  %20 = load i32*, i32** %colors.addr, align 8
  %21 = load i32, i32* %20, align 4
  %inc26 = add nsw i32 %21, 1
  store i32 %inc26, i32* %20, align 4
  %22 = load i32*, i32** %colors.addr, align 8
  %23 = load i32, i32* %22, align 4
  %sub27 = sub nsw i32 %23, 1
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.72, i32 0, i32 0), i32 %sub27)
  %24 = load i32*, i32** %colors.addr, align 8
  %25 = load i32, i32* %24, align 4
  %sub28 = sub nsw i32 %25, 1
  store i32 %sub28, i32* %retval
  br label %return

if.end.29:                                        ; preds = %for.end.23
  %call = call i8* @gettext(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.73, i32 0, i32 0)) #5
  call void (i8*, ...) @g_message(i8* %call)
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.29, %if.then.25, %if.then.20
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal i32 @bpp_to_colors(i32 %bpp) #0 {
entry:
  %retval = alloca i32, align 4
  %bpp.addr = alloca i32, align 4
  %colors = alloca i32, align 4
  store i32 %bpp, i32* %bpp.addr, align 4
  %0 = load i32, i32* %bpp.addr, align 4
  %cmp = icmp sgt i32 %0, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %bpp.addr, align 4
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.74, i32 0, i32 0), i32 %1)
  store i32 256, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %bpp.addr, align 4
  %shl = shl i32 1, %2
  store i32 %shl, i32* %colors, align 4
  %3 = load i32, i32* %colors, align 4
  store i32 %3, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal void @special_flatten_indexed_alpha(i8* %pixels, i32 %transparent, i32 %numpixels) #0 {
entry:
  %pixels.addr = alloca i8*, align 8
  %transparent.addr = alloca i32, align 4
  %numpixels.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %pixels, i8** %pixels.addr, align 8
  store i32 %transparent, i32* %transparent.addr, align 4
  store i32 %numpixels, i32* %numpixels.addr, align 4
  %0 = load i32, i32* %transparent.addr, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %numpixels.addr, align 4
  %cmp1 = icmp ult i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %mul = mul i32 %3, 2
  %idxprom = zext i32 %mul to i64
  %4 = load i8*, i8** %pixels.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %6 = load i32, i32* %i, align 4
  %idxprom2 = zext i32 %6 to i64
  %7 = load i8*, i8** %pixels.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %7, i64 %idxprom2
  store i8 %5, i8* %arrayidx3, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.23

if.else:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.20, %if.else
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %numpixels.addr, align 4
  %cmp5 = icmp ult i32 %9, %10
  br i1 %cmp5, label %for.body.6, label %for.end.22

for.body.6:                                       ; preds = %for.cond.4
  %11 = load i32, i32* %i, align 4
  %mul7 = mul i32 %11, 2
  %add = add i32 %mul7, 1
  %idxprom8 = zext i32 %add to i64
  %12 = load i8*, i8** %pixels.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %12, i64 %idxprom8
  %13 = load i8, i8* %arrayidx9, align 1
  %conv = zext i8 %13 to i32
  %and = and i32 %conv, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.else.14, label %if.then.10

if.then.10:                                       ; preds = %for.body.6
  %14 = load i32, i32* %transparent.addr, align 4
  %conv11 = trunc i32 %14 to i8
  %15 = load i32, i32* %i, align 4
  %idxprom12 = zext i32 %15 to i64
  %16 = load i8*, i8** %pixels.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %16, i64 %idxprom12
  store i8 %conv11, i8* %arrayidx13, align 1
  br label %if.end

if.else.14:                                       ; preds = %for.body.6
  %17 = load i32, i32* %i, align 4
  %mul15 = mul i32 %17, 2
  %idxprom16 = zext i32 %mul15 to i64
  %18 = load i8*, i8** %pixels.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %18, i64 %idxprom16
  %19 = load i8, i8* %arrayidx17, align 1
  %20 = load i32, i32* %i, align 4
  %idxprom18 = zext i32 %20 to i64
  %21 = load i8*, i8** %pixels.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %21, i64 %idxprom18
  store i8 %19, i8* %arrayidx19, align 1
  br label %if.end

if.end:                                           ; preds = %if.else.14, %if.then.10
  br label %for.inc.20

for.inc.20:                                       ; preds = %if.end
  %22 = load i32, i32* %i, align 4
  %inc21 = add i32 %22, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond.4

for.end.22:                                       ; preds = %for.cond.4
  br label %if.end.23

if.end.23:                                        ; preds = %for.end.22, %for.end
  ret void
}

declare i8* @gimp_item_get_name(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @parse_disposal_tag(i8* %str) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %offset = alloca i32, align 4
  %length = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 0, i32* %offset, align 4
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %0) #7
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %length, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.11, %entry
  %1 = load i32, i32* %offset, align 4
  %add = add nsw i32 %1, 9
  %2 = load i32, i32* %length, align 4
  %cmp = icmp sle i32 %add, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %offset, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8*, i8** %str.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %call2 = call i32 @strncmp(i8* %arrayidx, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.75, i32 0, i32 0), i64 9) #7
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %5 = load i32, i32* %offset, align 4
  %idxprom5 = sext i32 %5 to i64
  %6 = load i8*, i8** %str.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %6, i64 %idxprom5
  %call7 = call i32 @strncmp(i8* %arrayidx6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0), i64 9) #7
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  store i32 2, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end
  %7 = load i32, i32* %offset, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %offset, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load i32, i32* getelementptr inbounds (%struct.GIFSaveVals, %struct.GIFSaveVals* @gsvals, i32 0, i32 4), align 4
  store i32 %8, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.10, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @parse_ms_tag(i8* %str) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %sum = alloca i32, align 4
  %offset = alloca i32, align 4
  %length = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 0, i32* %sum, align 4
  store i32 0, i32* %offset, align 4
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %0) #7
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %length, align 4
  br label %find_another_bra

find_another_bra:                                 ; preds = %if.then.15, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %find_another_bra
  %1 = load i32, i32* %offset, align 4
  %2 = load i32, i32* %length, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load i32, i32* %offset, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8*, i8** %str.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv2 = sext i8 %5 to i32
  %cmp3 = icmp ne i32 %conv2, 40
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load i32, i32* %offset, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %offset, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %8 = load i32, i32* %offset, align 4
  %9 = load i32, i32* %length, align 4
  %cmp5 = icmp sge i32 %8, %9
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %while.end
  %10 = load i32, i32* %offset, align 4
  %inc7 = add nsw i32 %10, 1
  store i32 %inc7, i32* %offset, align 4
  %idxprom8 = sext i32 %inc7 to i64
  %11 = load i8*, i8** %str.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %11, i64 %idxprom8
  %12 = load i8, i8* %arrayidx9, align 1
  %idxprom10 = zext i8 %12 to i64
  %13 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx11 = getelementptr inbounds i16, i16* %13, i64 %idxprom10
  %14 = load i16, i16* %arrayidx11, align 2
  %conv12 = zext i16 %14 to i32
  %and = and i32 %conv12, 8
  %cmp13 = icmp ne i32 %and, 0
  br i1 %cmp13, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.end
  br label %find_another_bra

if.end.16:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %land.end.32, %if.end.16
  %15 = load i32, i32* %sum, align 4
  %mul = mul nsw i32 %15, 10
  store i32 %mul, i32* %sum, align 4
  %16 = load i32, i32* %offset, align 4
  %idxprom17 = sext i32 %16 to i64
  %17 = load i8*, i8** %str.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %17, i64 %idxprom17
  %18 = load i8, i8* %arrayidx18, align 1
  %conv19 = sext i8 %18 to i32
  %sub = sub nsw i32 %conv19, 48
  %19 = load i32, i32* %sum, align 4
  %add = add nsw i32 %19, %sub
  store i32 %add, i32* %sum, align 4
  %20 = load i32, i32* %offset, align 4
  %inc20 = add nsw i32 %20, 1
  store i32 %inc20, i32* %offset, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %21 = load i32, i32* %offset, align 4
  %22 = load i32, i32* %length, align 4
  %cmp21 = icmp slt i32 %21, %22
  br i1 %cmp21, label %land.rhs.23, label %land.end.32

land.rhs.23:                                      ; preds = %do.cond
  %23 = load i32, i32* %offset, align 4
  %idxprom24 = sext i32 %23 to i64
  %24 = load i8*, i8** %str.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %24, i64 %idxprom24
  %25 = load i8, i8* %arrayidx25, align 1
  %idxprom26 = zext i8 %25 to i64
  %26 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx27 = getelementptr inbounds i16, i16* %26, i64 %idxprom26
  %27 = load i16, i16* %arrayidx27, align 2
  %conv28 = zext i16 %27 to i32
  %and29 = and i32 %conv28, 8
  %cmp30 = icmp ne i32 %and29, 0
  br label %land.end.32

land.end.32:                                      ; preds = %land.rhs.23, %do.cond
  %28 = phi i1 [ false, %do.cond ], [ %cmp30, %land.rhs.23 ]
  br i1 %28, label %do.body, label %do.end

do.end:                                           ; preds = %land.end.32
  %29 = load i32, i32* %length, align 4
  %30 = load i32, i32* %offset, align 4
  %sub33 = sub nsw i32 %29, %30
  %cmp34 = icmp sle i32 %sub33, 2
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %do.end
  store i32 -3, i32* %retval
  br label %return

if.end.37:                                        ; preds = %do.end
  %31 = load i32, i32* %offset, align 4
  %idxprom38 = sext i32 %31 to i64
  %32 = load i8*, i8** %str.addr, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %32, i64 %idxprom38
  %33 = load i8, i8* %arrayidx39, align 1
  %call40 = call signext i8 @g_ascii_toupper(i8 signext %33) #6
  %conv41 = sext i8 %call40 to i32
  %cmp42 = icmp ne i32 %conv41, 77
  br i1 %cmp42, label %if.then.51, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.37
  %34 = load i32, i32* %offset, align 4
  %add44 = add nsw i32 %34, 1
  %idxprom45 = sext i32 %add44 to i64
  %35 = load i8*, i8** %str.addr, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %35, i64 %idxprom45
  %36 = load i8, i8* %arrayidx46, align 1
  %call47 = call signext i8 @g_ascii_toupper(i8 signext %36) #6
  %conv48 = sext i8 %call47 to i32
  %cmp49 = icmp ne i32 %conv48, 83
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %lor.lhs.false, %if.end.37
  store i32 -4, i32* %retval
  br label %return

if.end.52:                                        ; preds = %lor.lhs.false
  %37 = load i32, i32* %sum, align 4
  store i32 %37, i32* %retval
  br label %return

return:                                           ; preds = %if.end.52, %if.then.51, %if.then.36, %if.then
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define internal void @gif_encode_graphic_control_ext(%struct._IO_FILE* %fp, i32 %Disposal, i32 %Delay89, i32 %NumFramesInImage, i32 %GWidth, i32 %GHeight, i32 %Transparent, i32 %BitsPerPixel, i32 (i32, i32)* %get_pixel) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %Disposal.addr = alloca i32, align 4
  %Delay89.addr = alloca i32, align 4
  %NumFramesInImage.addr = alloca i32, align 4
  %GWidth.addr = alloca i32, align 4
  %GHeight.addr = alloca i32, align 4
  %Transparent.addr = alloca i32, align 4
  %BitsPerPixel.addr = alloca i32, align 4
  %get_pixel.addr = alloca i32 (i32, i32)*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %Disposal, i32* %Disposal.addr, align 4
  store i32 %Delay89, i32* %Delay89.addr, align 4
  store i32 %NumFramesInImage, i32* %NumFramesInImage.addr, align 4
  store i32 %GWidth, i32* %GWidth.addr, align 4
  store i32 %GHeight, i32* %GHeight.addr, align 4
  store i32 %Transparent, i32* %Transparent.addr, align 4
  store i32 %BitsPerPixel, i32* %BitsPerPixel.addr, align 4
  store i32 (i32, i32)* %get_pixel, i32 (i32, i32)** %get_pixel.addr, align 8
  %0 = load i32, i32* %GWidth.addr, align 4
  store i32 %0, i32* @Width, align 4
  %1 = load i32, i32* %GHeight.addr, align 4
  store i32 %1, i32* @Height, align 4
  %2 = load i32, i32* @Width, align 4
  %conv = sext i32 %2 to i64
  %3 = load i32, i32* @Height, align 4
  %conv1 = sext i32 %3 to i64
  %mul = mul nsw i64 %conv, %conv1
  store i64 %mul, i64* @CountDown, align 8
  store i32 0, i32* @Pass, align 4
  store i32 0, i32* @cury, align 4
  store i32 0, i32* @curx, align 4
  %4 = load i32, i32* %Transparent.addr, align 4
  %cmp = icmp sge i32 %4, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, i32* %NumFramesInImage.addr, align 4
  %cmp3 = icmp sgt i32 %5, 1
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @fputc(i32 33, %struct._IO_FILE* %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call5 = call i32 @fputc(i32 249, %struct._IO_FILE* %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call6 = call i32 @fputc(i32 4, %struct._IO_FILE* %8)
  %9 = load i32, i32* %Transparent.addr, align 4
  %cmp7 = icmp sge i32 %9, 0
  %cond = select i1 %cmp7, i32 1, i32 0
  %10 = load i32, i32* %NumFramesInImage.addr, align 4
  %cmp9 = icmp sgt i32 %10, 1
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %11 = load i32, i32* %Disposal.addr, align 4
  %shl = shl i32 %11, 2
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond11 = phi i32 [ %shl, %cond.true ], [ 0, %cond.false ]
  %or = or i32 %cond, %cond11
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call12 = call i32 @fputc(i32 %or, %struct._IO_FILE* %12)
  %13 = load i32, i32* %Delay89.addr, align 4
  %and = and i32 %13, 255
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call13 = call i32 @fputc(i32 %and, %struct._IO_FILE* %14)
  %15 = load i32, i32* %Delay89.addr, align 4
  %shr = ashr i32 %15, 8
  %and14 = and i32 %shr, 255
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call15 = call i32 @fputc(i32 %and14, %struct._IO_FILE* %16)
  %17 = load i32, i32* %Transparent.addr, align 4
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call16 = call i32 @fputc(i32 %17, %struct._IO_FILE* %18)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call17 = call i32 @fputc(i32 0, %struct._IO_FILE* %19)
  br label %if.end

if.end:                                           ; preds = %cond.end, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gif_encode_image_data(%struct._IO_FILE* %fp, i32 %GWidth, i32 %GHeight, i32 %GInterlace, i32 %BitsPerPixel, i32 (i32, i32)* %get_pixel, i32 %offset_x, i32 %offset_y) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %GWidth.addr = alloca i32, align 4
  %GHeight.addr = alloca i32, align 4
  %GInterlace.addr = alloca i32, align 4
  %BitsPerPixel.addr = alloca i32, align 4
  %get_pixel.addr = alloca i32 (i32, i32)*, align 8
  %offset_x.addr = alloca i32, align 4
  %offset_y.addr = alloca i32, align 4
  %LeftOfs = alloca i32, align 4
  %TopOfs = alloca i32, align 4
  %InitCodeSize = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %GWidth, i32* %GWidth.addr, align 4
  store i32 %GHeight, i32* %GHeight.addr, align 4
  store i32 %GInterlace, i32* %GInterlace.addr, align 4
  store i32 %BitsPerPixel, i32* %BitsPerPixel.addr, align 4
  store i32 (i32, i32)* %get_pixel, i32 (i32, i32)** %get_pixel.addr, align 8
  store i32 %offset_x, i32* %offset_x.addr, align 4
  store i32 %offset_y, i32* %offset_y.addr, align 4
  %0 = load i32, i32* %GInterlace.addr, align 4
  store i32 %0, i32* @Interlace, align 4
  %1 = load i32, i32* %GWidth.addr, align 4
  store i32 %1, i32* @Width, align 4
  %2 = load i32, i32* %GHeight.addr, align 4
  store i32 %2, i32* @Height, align 4
  %3 = load i32, i32* %offset_x.addr, align 4
  store i32 %3, i32* %LeftOfs, align 4
  %4 = load i32, i32* %offset_y.addr, align 4
  store i32 %4, i32* %TopOfs, align 4
  %5 = load i32, i32* @Width, align 4
  %conv = sext i32 %5 to i64
  %6 = load i32, i32* @Height, align 4
  %conv1 = sext i32 %6 to i64
  %mul = mul nsw i64 %conv, %conv1
  store i64 %mul, i64* @CountDown, align 8
  store i32 0, i32* @Pass, align 4
  %7 = load i32, i32* %BitsPerPixel.addr, align 4
  %cmp = icmp sle i32 %7, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 2, i32* %InitCodeSize, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load i32, i32* %BitsPerPixel.addr, align 4
  store i32 %8, i32* %InitCodeSize, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* @cury, align 4
  store i32 0, i32* @curx, align 4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @fputc(i32 44, %struct._IO_FILE* %9)
  %10 = load i32, i32* %LeftOfs, align 4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @put_word(i32 %10, %struct._IO_FILE* %11)
  %12 = load i32, i32* %TopOfs, align 4
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @put_word(i32 %12, %struct._IO_FILE* %13)
  %14 = load i32, i32* @Width, align 4
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @put_word(i32 %14, %struct._IO_FILE* %15)
  %16 = load i32, i32* @Height, align 4
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @put_word(i32 %16, %struct._IO_FILE* %17)
  %18 = load i32, i32* @Interlace, align 4
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.then.3, label %if.else.5

if.then.3:                                        ; preds = %if.end
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call4 = call i32 @fputc(i32 64, %struct._IO_FILE* %19)
  br label %if.end.7

if.else.5:                                        ; preds = %if.end
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call6 = call i32 @fputc(i32 0, %struct._IO_FILE* %20)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else.5, %if.then.3
  %21 = load i32, i32* %InitCodeSize, align 4
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call8 = call i32 @fputc(i32 %21, %struct._IO_FILE* %22)
  %23 = load i32, i32* %InitCodeSize, align 4
  %add = add nsw i32 %23, 1
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %25 = load i32 (i32, i32)*, i32 (i32, i32)** %get_pixel.addr, align 8
  call void @compress(i32 %add, %struct._IO_FILE* %24, i32 (i32, i32)* %25)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call9 = call i32 @fputc(i32 0, %struct._IO_FILE* %26)
  ret void
}

declare i32 @gimp_progress_update(double) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

; Function Attrs: nounwind uwtable
define internal void @gif_encode_close(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @fputc(i32 59, %struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1 = call i32 @fclose(%struct._IO_FILE* %1)
  ret void
}

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
  call void @g_logv(i8* null, i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @put_word(i32 %w, %struct._IO_FILE* %fp) #0 {
entry:
  %w.addr = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  store i32 %w, i32* %w.addr, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load i32, i32* %w.addr, align 4
  %and = and i32 %0, 255
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @fputc(i32 %and, %struct._IO_FILE* %1)
  %2 = load i32, i32* %w.addr, align 4
  %div = sdiv i32 %2, 256
  %and1 = and i32 %div, 255
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call2 = call i32 @fputc(i32 %and1, %struct._IO_FILE* %3)
  ret void
}

declare i32 @fputc(i32, %struct._IO_FILE*) #1

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

; Function Attrs: nounwind readnone
declare signext i8 @g_ascii_toupper(i8 signext) #3

; Function Attrs: nounwind uwtable
define internal void @compress(i32 %init_bits, %struct._IO_FILE* %outfile, i32 (i32, i32)* %ReadValue) #0 {
entry:
  %init_bits.addr = alloca i32, align 4
  %outfile.addr = alloca %struct._IO_FILE*, align 8
  %ReadValue.addr = alloca i32 (i32, i32)*, align 8
  store i32 %init_bits, i32* %init_bits.addr, align 4
  store %struct._IO_FILE* %outfile, %struct._IO_FILE** %outfile.addr, align 8
  store i32 (i32, i32)* %ReadValue, i32 (i32, i32)** %ReadValue.addr, align 8
  %0 = load i32, i32* %init_bits.addr, align 4
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %2 = load i32 (i32, i32)*, i32 (i32, i32)** %ReadValue.addr, align 8
  call void @normal_compress(i32 %0, %struct._IO_FILE* %1, i32 (i32, i32)* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @normal_compress(i32 %init_bits, %struct._IO_FILE* %outfile, i32 (i32, i32)* %ReadValue) #0 {
entry:
  %init_bits.addr = alloca i32, align 4
  %outfile.addr = alloca %struct._IO_FILE*, align 8
  %ReadValue.addr = alloca i32 (i32, i32)*, align 8
  %fcode = alloca i64, align 8
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %ent = alloca i32, align 4
  %disp = alloca i32, align 4
  %hsize_reg = alloca i32, align 4
  %hshift = alloca i32, align 4
  store i32 %init_bits, i32* %init_bits.addr, align 4
  store %struct._IO_FILE* %outfile, %struct._IO_FILE** %outfile.addr, align 8
  store i32 (i32, i32)* %ReadValue, i32 (i32, i32)** %ReadValue.addr, align 8
  %0 = load i32, i32* %init_bits.addr, align 4
  store i32 %0, i32* @g_init_bits, align 4
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** @g_outfile, align 8
  store i32 0, i32* @cur_bits, align 4
  store i64 0, i64* @cur_accum, align 8
  store i32 0, i32* @offset, align 4
  store i64 0, i64* @out_count, align 8
  store i32 0, i32* @clear_flg, align 4
  store i64 1, i64* @in_count, align 8
  %2 = load i32, i32* %init_bits.addr, align 4
  %sub = sub nsw i32 %2, 1
  %shl = shl i32 1, %sub
  store i32 %shl, i32* @ClearCode, align 4
  %3 = load i32, i32* @ClearCode, align 4
  %add = add nsw i32 %3, 1
  store i32 %add, i32* @EOFCode, align 4
  %4 = load i32, i32* @ClearCode, align 4
  %add1 = add nsw i32 %4, 2
  store i32 %add1, i32* @free_ent, align 4
  %5 = load i32, i32* @g_init_bits, align 4
  store i32 %5, i32* @n_bits, align 4
  %6 = load i32, i32* @n_bits, align 4
  %shl2 = shl i32 1, %6
  %sub3 = sub nsw i32 %shl2, 1
  store i32 %sub3, i32* @maxcode, align 4
  call void @char_init()
  %7 = load i32 (i32, i32)*, i32 (i32, i32)** %ReadValue.addr, align 8
  %call = call i32 @gif_next_pixel(i32 (i32, i32)* %7)
  store i32 %call, i32* %ent, align 4
  store i32 0, i32* %hshift, align 4
  store i64 5003, i64* %fcode, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i64, i64* %fcode, align 8
  %cmp = icmp slt i64 %8, 65536
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %hshift, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %hshift, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i64, i64* %fcode, align 8
  %mul = mul nsw i64 %10, 2
  store i64 %mul, i64* %fcode, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %hshift, align 4
  %sub4 = sub nsw i32 8, %11
  store i32 %sub4, i32* %hshift, align 4
  store i32 5003, i32* %hsize_reg, align 4
  %12 = load i32, i32* %hsize_reg, align 4
  %conv = sext i32 %12 to i64
  call void @cl_hash(i64 %conv)
  %13 = load i32, i32* @ClearCode, align 4
  call void @output(i32 %13)
  br label %while.cond

while.cond:                                       ; preds = %if.end.62, %if.then.40, %if.then, %for.end
  %14 = load i32 (i32, i32)*, i32 (i32, i32)** %ReadValue.addr, align 8
  %call5 = call i32 @gif_next_pixel(i32 (i32, i32)* %14)
  store i32 %call5, i32* %c, align 4
  %cmp6 = icmp ne i32 %call5, -1
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load i64, i64* @in_count, align 8
  %inc8 = add nsw i64 %15, 1
  store i64 %inc8, i64* @in_count, align 8
  %16 = load i32, i32* %c, align 4
  %conv9 = sext i32 %16 to i64
  %17 = load i32, i32* @maxbits, align 4
  %sh_prom = zext i32 %17 to i64
  %shl10 = shl i64 %conv9, %sh_prom
  %18 = load i32, i32* %ent, align 4
  %conv11 = sext i32 %18 to i64
  %add12 = add nsw i64 %shl10, %conv11
  store i64 %add12, i64* %fcode, align 8
  %19 = load i32, i32* %c, align 4
  %20 = load i32, i32* %hshift, align 4
  %shl13 = shl i32 %19, %20
  %21 = load i32, i32* %ent, align 4
  %xor = xor i32 %shl13, %21
  store i32 %xor, i32* %i, align 4
  %22 = load i32, i32* %i, align 4
  %idxprom = sext i32 %22 to i64
  %arrayidx = getelementptr inbounds [5003 x i64], [5003 x i64]* @htab, i32 0, i64 %idxprom
  %23 = load i64, i64* %arrayidx, align 8
  %24 = load i64, i64* %fcode, align 8
  %cmp14 = icmp eq i64 %23, %24
  br i1 %cmp14, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %25 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %25 to i64
  %arrayidx17 = getelementptr inbounds [5003 x i16], [5003 x i16]* @codetab, i32 0, i64 %idxprom16
  %26 = load i16, i16* %arrayidx17, align 2
  %conv18 = zext i16 %26 to i32
  store i32 %conv18, i32* %ent, align 4
  br label %while.cond

if.else:                                          ; preds = %while.body
  %27 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %27 to i64
  %arrayidx20 = getelementptr inbounds [5003 x i64], [5003 x i64]* @htab, i32 0, i64 %idxprom19
  %28 = load i64, i64* %arrayidx20, align 8
  %cmp21 = icmp slt i64 %28, 0
  br i1 %cmp21, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %if.else
  br label %nomatch

if.end:                                           ; preds = %if.else
  br label %if.end.24

if.end.24:                                        ; preds = %if.end
  %29 = load i32, i32* %hsize_reg, align 4
  %30 = load i32, i32* %i, align 4
  %sub25 = sub nsw i32 %29, %30
  store i32 %sub25, i32* %disp, align 4
  %31 = load i32, i32* %i, align 4
  %cmp26 = icmp eq i32 %31, 0
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.24
  store i32 1, i32* %disp, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.end.24
  br label %probe

probe:                                            ; preds = %if.then.49, %if.end.29
  %32 = load i32, i32* %disp, align 4
  %33 = load i32, i32* %i, align 4
  %sub30 = sub nsw i32 %33, %32
  store i32 %sub30, i32* %i, align 4
  %cmp31 = icmp slt i32 %sub30, 0
  br i1 %cmp31, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %probe
  %34 = load i32, i32* %hsize_reg, align 4
  %35 = load i32, i32* %i, align 4
  %add34 = add nsw i32 %35, %34
  store i32 %add34, i32* %i, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %probe
  %36 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %36 to i64
  %arrayidx37 = getelementptr inbounds [5003 x i64], [5003 x i64]* @htab, i32 0, i64 %idxprom36
  %37 = load i64, i64* %arrayidx37, align 8
  %38 = load i64, i64* %fcode, align 8
  %cmp38 = icmp eq i64 %37, %38
  br i1 %cmp38, label %if.then.40, label %if.end.44

if.then.40:                                       ; preds = %if.end.35
  %39 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %39 to i64
  %arrayidx42 = getelementptr inbounds [5003 x i16], [5003 x i16]* @codetab, i32 0, i64 %idxprom41
  %40 = load i16, i16* %arrayidx42, align 2
  %conv43 = zext i16 %40 to i32
  store i32 %conv43, i32* %ent, align 4
  br label %while.cond

if.end.44:                                        ; preds = %if.end.35
  %41 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %41 to i64
  %arrayidx46 = getelementptr inbounds [5003 x i64], [5003 x i64]* @htab, i32 0, i64 %idxprom45
  %42 = load i64, i64* %arrayidx46, align 8
  %cmp47 = icmp sgt i64 %42, 0
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.44
  br label %probe

if.end.50:                                        ; preds = %if.end.44
  br label %nomatch

nomatch:                                          ; preds = %if.end.50, %if.then.23
  %43 = load i32, i32* %ent, align 4
  call void @output(i32 %43)
  %44 = load i64, i64* @out_count, align 8
  %inc51 = add nsw i64 %44, 1
  store i64 %inc51, i64* @out_count, align 8
  %45 = load i32, i32* %c, align 4
  store i32 %45, i32* %ent, align 4
  %46 = load i32, i32* @free_ent, align 4
  %47 = load i32, i32* @maxmaxcode, align 4
  %cmp52 = icmp slt i32 %46, %47
  br i1 %cmp52, label %if.then.54, label %if.else.61

if.then.54:                                       ; preds = %nomatch
  %48 = load i32, i32* @free_ent, align 4
  %inc55 = add nsw i32 %48, 1
  store i32 %inc55, i32* @free_ent, align 4
  %conv56 = trunc i32 %48 to i16
  %49 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %49 to i64
  %arrayidx58 = getelementptr inbounds [5003 x i16], [5003 x i16]* @codetab, i32 0, i64 %idxprom57
  store i16 %conv56, i16* %arrayidx58, align 2
  %50 = load i64, i64* %fcode, align 8
  %51 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %51 to i64
  %arrayidx60 = getelementptr inbounds [5003 x i64], [5003 x i64]* @htab, i32 0, i64 %idxprom59
  store i64 %50, i64* %arrayidx60, align 8
  br label %if.end.62

if.else.61:                                       ; preds = %nomatch
  call void @cl_block()
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.61, %if.then.54
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %52 = load i32, i32* %ent, align 4
  call void @output(i32 %52)
  %53 = load i64, i64* @out_count, align 8
  %inc63 = add nsw i64 %53, 1
  store i64 %inc63, i64* @out_count, align 8
  %54 = load i32, i32* @EOFCode, align 4
  call void @output(i32 %54)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @char_init() #0 {
entry:
  store i32 0, i32* @a_count, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gif_next_pixel(i32 (i32, i32)* %getpixel) #0 {
entry:
  %retval = alloca i32, align 4
  %getpixel.addr = alloca i32 (i32, i32)*, align 8
  %r = alloca i32, align 4
  store i32 (i32, i32)* %getpixel, i32 (i32, i32)** %getpixel.addr, align 8
  %0 = load i64, i64* @CountDown, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* @CountDown, align 8
  %dec = add nsw i64 %1, -1
  store i64 %dec, i64* @CountDown, align 8
  %2 = load i32 (i32, i32)*, i32 (i32, i32)** %getpixel.addr, align 8
  %3 = load i32, i32* @curx, align 4
  %4 = load i32, i32* @cury, align 4
  %call = call i32 %2(i32 %3, i32 %4)
  store i32 %call, i32* %r, align 4
  call void @bump_pixel()
  %5 = load i32, i32* %r, align 4
  store i32 %5, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal void @cl_hash(i64 %hsize) #0 {
entry:
  %hsize.addr = alloca i64, align 8
  %htab_p = alloca i64*, align 8
  %i = alloca i64, align 8
  %m1 = alloca i64, align 8
  store i64 %hsize, i64* %hsize.addr, align 8
  %0 = load i64, i64* %hsize.addr, align 8
  %add.ptr = getelementptr inbounds i64, i64* getelementptr inbounds ([5003 x i64], [5003 x i64]* @htab, i32 0, i32 0), i64 %0
  store i64* %add.ptr, i64** %htab_p, align 8
  store i64 -1, i64* %m1, align 8
  %1 = load i64, i64* %hsize.addr, align 8
  %sub = sub nsw i64 %1, 16
  store i64 %sub, i64* %i, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %2 = load i64, i64* %m1, align 8
  %3 = load i64*, i64** %htab_p, align 8
  %add.ptr1 = getelementptr inbounds i64, i64* %3, i64 -16
  store i64 %2, i64* %add.ptr1, align 8
  %4 = load i64, i64* %m1, align 8
  %5 = load i64*, i64** %htab_p, align 8
  %add.ptr2 = getelementptr inbounds i64, i64* %5, i64 -15
  store i64 %4, i64* %add.ptr2, align 8
  %6 = load i64, i64* %m1, align 8
  %7 = load i64*, i64** %htab_p, align 8
  %add.ptr3 = getelementptr inbounds i64, i64* %7, i64 -14
  store i64 %6, i64* %add.ptr3, align 8
  %8 = load i64, i64* %m1, align 8
  %9 = load i64*, i64** %htab_p, align 8
  %add.ptr4 = getelementptr inbounds i64, i64* %9, i64 -13
  store i64 %8, i64* %add.ptr4, align 8
  %10 = load i64, i64* %m1, align 8
  %11 = load i64*, i64** %htab_p, align 8
  %add.ptr5 = getelementptr inbounds i64, i64* %11, i64 -12
  store i64 %10, i64* %add.ptr5, align 8
  %12 = load i64, i64* %m1, align 8
  %13 = load i64*, i64** %htab_p, align 8
  %add.ptr6 = getelementptr inbounds i64, i64* %13, i64 -11
  store i64 %12, i64* %add.ptr6, align 8
  %14 = load i64, i64* %m1, align 8
  %15 = load i64*, i64** %htab_p, align 8
  %add.ptr7 = getelementptr inbounds i64, i64* %15, i64 -10
  store i64 %14, i64* %add.ptr7, align 8
  %16 = load i64, i64* %m1, align 8
  %17 = load i64*, i64** %htab_p, align 8
  %add.ptr8 = getelementptr inbounds i64, i64* %17, i64 -9
  store i64 %16, i64* %add.ptr8, align 8
  %18 = load i64, i64* %m1, align 8
  %19 = load i64*, i64** %htab_p, align 8
  %add.ptr9 = getelementptr inbounds i64, i64* %19, i64 -8
  store i64 %18, i64* %add.ptr9, align 8
  %20 = load i64, i64* %m1, align 8
  %21 = load i64*, i64** %htab_p, align 8
  %add.ptr10 = getelementptr inbounds i64, i64* %21, i64 -7
  store i64 %20, i64* %add.ptr10, align 8
  %22 = load i64, i64* %m1, align 8
  %23 = load i64*, i64** %htab_p, align 8
  %add.ptr11 = getelementptr inbounds i64, i64* %23, i64 -6
  store i64 %22, i64* %add.ptr11, align 8
  %24 = load i64, i64* %m1, align 8
  %25 = load i64*, i64** %htab_p, align 8
  %add.ptr12 = getelementptr inbounds i64, i64* %25, i64 -5
  store i64 %24, i64* %add.ptr12, align 8
  %26 = load i64, i64* %m1, align 8
  %27 = load i64*, i64** %htab_p, align 8
  %add.ptr13 = getelementptr inbounds i64, i64* %27, i64 -4
  store i64 %26, i64* %add.ptr13, align 8
  %28 = load i64, i64* %m1, align 8
  %29 = load i64*, i64** %htab_p, align 8
  %add.ptr14 = getelementptr inbounds i64, i64* %29, i64 -3
  store i64 %28, i64* %add.ptr14, align 8
  %30 = load i64, i64* %m1, align 8
  %31 = load i64*, i64** %htab_p, align 8
  %add.ptr15 = getelementptr inbounds i64, i64* %31, i64 -2
  store i64 %30, i64* %add.ptr15, align 8
  %32 = load i64, i64* %m1, align 8
  %33 = load i64*, i64** %htab_p, align 8
  %add.ptr16 = getelementptr inbounds i64, i64* %33, i64 -1
  store i64 %32, i64* %add.ptr16, align 8
  %34 = load i64*, i64** %htab_p, align 8
  %add.ptr17 = getelementptr inbounds i64, i64* %34, i64 -16
  store i64* %add.ptr17, i64** %htab_p, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %35 = load i64, i64* %i, align 8
  %sub18 = sub nsw i64 %35, 16
  store i64 %sub18, i64* %i, align 8
  %cmp = icmp sge i64 %sub18, 0
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %36 = load i64, i64* %i, align 8
  %add = add nsw i64 %36, 16
  store i64 %add, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %37 = load i64, i64* %i, align 8
  %cmp19 = icmp sgt i64 %37, 0
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load i64, i64* %m1, align 8
  %39 = load i64*, i64** %htab_p, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %39, i32 -1
  store i64* %incdec.ptr, i64** %htab_p, align 8
  store i64 %38, i64* %incdec.ptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load i64, i64* %i, align 8
  %dec = add nsw i64 %40, -1
  store i64 %dec, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @output(i32 %code) #0 {
entry:
  %code.addr = alloca i32, align 4
  store i32 %code, i32* %code.addr, align 4
  %0 = load i32, i32* @cur_bits, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [17 x i64], [17 x i64]* @masks, i32 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %2 = load i64, i64* @cur_accum, align 8
  %and = and i64 %2, %1
  store i64 %and, i64* @cur_accum, align 8
  %3 = load i32, i32* @cur_bits, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %code.addr, align 4
  %conv = sext i32 %4 to i64
  %5 = load i32, i32* @cur_bits, align 4
  %sh_prom = zext i32 %5 to i64
  %shl = shl i64 %conv, %sh_prom
  %6 = load i64, i64* @cur_accum, align 8
  %or = or i64 %6, %shl
  store i64 %or, i64* @cur_accum, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load i32, i32* %code.addr, align 4
  %conv1 = sext i32 %7 to i64
  store i64 %conv1, i64* @cur_accum, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load i32, i32* @n_bits, align 4
  %9 = load i32, i32* @cur_bits, align 4
  %add = add nsw i32 %9, %8
  store i32 %add, i32* @cur_bits, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %10 = load i32, i32* @cur_bits, align 4
  %cmp2 = icmp sge i32 %10, 8
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i64, i64* @cur_accum, align 8
  %and4 = and i64 %11, 255
  %conv5 = trunc i64 %and4 to i32
  call void @char_out(i32 %conv5)
  %12 = load i64, i64* @cur_accum, align 8
  %shr = lshr i64 %12, 8
  store i64 %shr, i64* @cur_accum, align 8
  %13 = load i32, i32* @cur_bits, align 4
  %sub = sub nsw i32 %13, 8
  store i32 %sub, i32* @cur_bits, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %14 = load i32, i32* @free_ent, align 4
  %15 = load i32, i32* @maxcode, align 4
  %cmp6 = icmp sgt i32 %14, %15
  br i1 %cmp6, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %16 = load i32, i32* @clear_flg, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then.8, label %if.end.22

if.then.8:                                        ; preds = %lor.lhs.false, %while.end
  %17 = load i32, i32* @clear_flg, align 4
  %tobool9 = icmp ne i32 %17, 0
  br i1 %tobool9, label %if.then.10, label %if.else.13

if.then.10:                                       ; preds = %if.then.8
  %18 = load i32, i32* @g_init_bits, align 4
  store i32 %18, i32* @n_bits, align 4
  %shl11 = shl i32 1, %18
  %sub12 = sub nsw i32 %shl11, 1
  store i32 %sub12, i32* @maxcode, align 4
  store i32 0, i32* @clear_flg, align 4
  br label %if.end.21

if.else.13:                                       ; preds = %if.then.8
  %19 = load i32, i32* @n_bits, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* @n_bits, align 4
  %20 = load i32, i32* @n_bits, align 4
  %21 = load i32, i32* @maxbits, align 4
  %cmp14 = icmp eq i32 %20, %21
  br i1 %cmp14, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.else.13
  %22 = load i32, i32* @maxmaxcode, align 4
  store i32 %22, i32* @maxcode, align 4
  br label %if.end.20

if.else.17:                                       ; preds = %if.else.13
  %23 = load i32, i32* @n_bits, align 4
  %shl18 = shl i32 1, %23
  %sub19 = sub nsw i32 %shl18, 1
  store i32 %sub19, i32* @maxcode, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.17, %if.then.16
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.10
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %lor.lhs.false
  %24 = load i32, i32* %code.addr, align 4
  %25 = load i32, i32* @EOFCode, align 4
  %cmp23 = icmp eq i32 %24, %25
  br i1 %cmp23, label %if.then.25, label %if.end.39

if.then.25:                                       ; preds = %if.end.22
  br label %while.cond.26

while.cond.26:                                    ; preds = %while.body.29, %if.then.25
  %26 = load i32, i32* @cur_bits, align 4
  %cmp27 = icmp sgt i32 %26, 0
  br i1 %cmp27, label %while.body.29, label %while.end.34

while.body.29:                                    ; preds = %while.cond.26
  %27 = load i64, i64* @cur_accum, align 8
  %and30 = and i64 %27, 255
  %conv31 = trunc i64 %and30 to i32
  call void @char_out(i32 %conv31)
  %28 = load i64, i64* @cur_accum, align 8
  %shr32 = lshr i64 %28, 8
  store i64 %shr32, i64* @cur_accum, align 8
  %29 = load i32, i32* @cur_bits, align 4
  %sub33 = sub nsw i32 %29, 8
  store i32 %sub33, i32* @cur_bits, align 4
  br label %while.cond.26

while.end.34:                                     ; preds = %while.cond.26
  call void @flush_char()
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @g_outfile, align 8
  %call = call i32 @fflush(%struct._IO_FILE* %30)
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @g_outfile, align 8
  %call35 = call i32 @ferror(%struct._IO_FILE* %31) #5
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %while.end.34
  call void @write_err()
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %while.end.34
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.end.22
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cl_block() #0 {
entry:
  call void @cl_hash(i64 5003)
  %0 = load i32, i32* @ClearCode, align 4
  %add = add nsw i32 %0, 2
  store i32 %add, i32* @free_ent, align 4
  store i32 1, i32* @clear_flg, align 4
  %1 = load i32, i32* @ClearCode, align 4
  call void @output(i32 %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bump_pixel() #0 {
entry:
  %0 = load i32, i32* @curx, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @curx, align 4
  %1 = load i32, i32* @curx, align 4
  %2 = load i32, i32* @Width, align 4
  %cmp = icmp eq i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end.29

if.then:                                          ; preds = %entry
  %3 = load i32, i32* @cur_progress, align 4
  %inc1 = add nsw i32 %3, 1
  store i32 %inc1, i32* @cur_progress, align 4
  %4 = load i32, i32* @cur_progress, align 4
  %rem = srem i32 %4, 20
  %cmp2 = icmp eq i32 %rem, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %5 = load i32, i32* @cur_progress, align 4
  %conv = sitofp i32 %5 to double
  %6 = load i32, i32* @max_progress, align 4
  %conv4 = sitofp i32 %6 to double
  %div = fdiv double %conv, %conv4
  %call = call i32 @gimp_progress_update(double %div)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  store i32 0, i32* @curx, align 4
  %7 = load i32, i32* @Interlace, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.else, label %if.then.5

if.then.5:                                        ; preds = %if.end
  %8 = load i32, i32* @cury, align 4
  %inc6 = add nsw i32 %8, 1
  store i32 %inc6, i32* @cury, align 4
  br label %if.end.28

if.else:                                          ; preds = %if.end
  %9 = load i32, i32* @Pass, align 4
  switch i32 %9, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.12
    i32 2, label %sw.bb.19
    i32 3, label %sw.bb.26
  ]

sw.bb:                                            ; preds = %if.else
  %10 = load i32, i32* @cury, align 4
  %add = add nsw i32 %10, 8
  store i32 %add, i32* @cury, align 4
  %11 = load i32, i32* @cury, align 4
  %12 = load i32, i32* @Height, align 4
  %cmp7 = icmp sge i32 %11, %12
  br i1 %cmp7, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %sw.bb
  %13 = load i32, i32* @Pass, align 4
  %inc10 = add nsw i32 %13, 1
  store i32 %inc10, i32* @Pass, align 4
  store i32 4, i32* @cury, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %sw.bb
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.else
  %14 = load i32, i32* @cury, align 4
  %add13 = add nsw i32 %14, 8
  store i32 %add13, i32* @cury, align 4
  %15 = load i32, i32* @cury, align 4
  %16 = load i32, i32* @Height, align 4
  %cmp14 = icmp sge i32 %15, %16
  br i1 %cmp14, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %sw.bb.12
  %17 = load i32, i32* @Pass, align 4
  %inc17 = add nsw i32 %17, 1
  store i32 %inc17, i32* @Pass, align 4
  store i32 2, i32* @cury, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %sw.bb.12
  br label %sw.epilog

sw.bb.19:                                         ; preds = %if.else
  %18 = load i32, i32* @cury, align 4
  %add20 = add nsw i32 %18, 4
  store i32 %add20, i32* @cury, align 4
  %19 = load i32, i32* @cury, align 4
  %20 = load i32, i32* @Height, align 4
  %cmp21 = icmp sge i32 %19, %20
  br i1 %cmp21, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %sw.bb.19
  %21 = load i32, i32* @Pass, align 4
  %inc24 = add nsw i32 %21, 1
  store i32 %inc24, i32* @Pass, align 4
  store i32 1, i32* @cury, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %sw.bb.19
  br label %sw.epilog

sw.bb.26:                                         ; preds = %if.else
  %22 = load i32, i32* @cury, align 4
  %add27 = add nsw i32 %22, 2
  store i32 %add27, i32* @cury, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %sw.bb.26, %if.end.25, %if.end.18, %if.end.11
  br label %if.end.28

if.end.28:                                        ; preds = %sw.epilog, %if.then.5
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @char_out(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %conv = trunc i32 %0 to i8
  %1 = load i32, i32* @a_count, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @a_count, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @accum, i32 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  %2 = load i32, i32* @a_count, align 4
  %cmp = icmp sge i32 %2, 254
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @flush_char()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @flush_char() #0 {
entry:
  %0 = load i32, i32* @a_count, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @a_count, align 4
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @g_outfile, align 8
  %call = call i32 @fputc(i32 %1, %struct._IO_FILE* %2)
  %3 = load i32, i32* @a_count, align 4
  %conv = sext i32 %3 to i64
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @g_outfile, align 8
  %call1 = call i64 @fwrite(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @accum, i32 0, i32 0), i64 1, i64 %conv, %struct._IO_FILE* %4)
  store i32 0, i32* @a_count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define internal void @write_err() #0 {
entry:
  %call = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.77, i32 0, i32 0)) #5
  call void (i8*, ...) @g_message(i8* %call)
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
