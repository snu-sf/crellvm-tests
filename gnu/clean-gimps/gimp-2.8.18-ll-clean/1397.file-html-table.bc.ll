; ModuleID = './plug-ins/common/file-html-table.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.GTMValues = type { [256 x i8], [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GError = type { i32, i32, i8* }
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
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GBinding = type opaque
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.save_args = internal constant [5 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"The run mode { RUN-INTERACTIVE (0) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Drawable to save\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"The name of the file to save the image in\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"raw-filename\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"file-gtm-save\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"GIMP Table Magic\00", align 1
@.str.11 = private unnamed_addr constant [66 x i8] c"Allows you to draw an HTML table in GIMP. See help for more info.\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"Daniel Dunbar\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"1998\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"HTML table\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"text/html\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"html,htm\00", align 1
@.str.18 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@run.values = internal global [2 x %struct._GimpParam] zeroinitializer, align 16
@.str.19 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@gtmvals = internal global %struct.GTMValues { [256 x i8] c"Made with GIMP Table Magic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [256 x i8] c"&nbsp;\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [256 x i8] zeroinitializer, [256 x i8] zeroinitializer, i32 1, i32 0, i32 2, i32 0, i32 0, i32 4, i32 0 }, align 4
@.str.21 = private unnamed_addr constant [16 x i8] c"file-html-table\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"Warning\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"gimp-wilber-eek\00", align 1
@.str.24 = private unnamed_addr constant [84 x i8] c"You are about to create a huge\0AHTML file which will most likely\0Acrash your browser.\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"HTML Page Options\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"_Generate full HTML document\00", align 1
@.str.27 = private unnamed_addr constant [111 x i8] c"If checked GTM will output a full HTML document with <HTML>, <BODY>, etc. tags instead of just the table html.\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"Table Creation Options\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"_Use cellspan\00", align 1
@.str.31 = private unnamed_addr constant [136 x i8] c"If checked GTM will replace any rectangular sections of identically colored blocks with one large cell with ROWSPAN and COLSPAN values.\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"Co_mpress TD tags\00", align 1
@.str.33 = private unnamed_addr constant [158 x i8] c"Checking this tag will cause GTM to leave no whitespace between the TD tags and the cellcontent.  This is only necessary for pixel level positioning control.\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"C_aption\00", align 1
@.str.35 = private unnamed_addr constant [53 x i8] c"Check if you would like to have the table captioned.\00", align 1
@.str.36 = private unnamed_addr constant [32 x i8] c"The text for the table caption.\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"sensitive\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"C_ell content:\00", align 1
@.str.41 = private unnamed_addr constant [31 x i8] c"The text to go into each cell.\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"Table Options\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"_Border:\00", align 1
@.str.44 = private unnamed_addr constant [42 x i8] c"The number of pixels in the table border.\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"_Width:\00", align 1
@.str.47 = private unnamed_addr constant [62 x i8] c"The width for each table cell.  Can be a number or a percent.\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"_Height:\00", align 1
@.str.49 = private unnamed_addr constant [63 x i8] c"The height for each table cell.  Can be a number or a percent.\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"Cell-_padding:\00", align 1
@.str.51 = private unnamed_addr constant [28 x i8] c"The amount of cell padding.\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"Cell-_spacing:\00", align 1
@.str.53 = private unnamed_addr constant [28 x i8] c"The amount of cell spacing.\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.55 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for writing: %s\00", align 1
@.str.56 = private unnamed_addr constant [46 x i8] c"<HTML>\0A<HEAD><TITLE>%s</TITLE></HEAD>\0A<BODY>\0A\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"<H1>%s</H1>\0A\00", align 1
@.str.58 = private unnamed_addr constant [49 x i8] c"<TABLE BORDER=%d CELLPADDING=%d CELLSPACING=%d>\0A\00", align 1
@.str.59 = private unnamed_addr constant [23 x i8] c"<CAPTION>%s</CAPTION>\0A\00", align 1
@.str.60 = private unnamed_addr constant [12 x i8] c"Saving '%s'\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c" WIDTH=\22%s\22\00", align 1
@.str.62 = private unnamed_addr constant [14 x i8] c" HEIGHT=\22%s\22 \00", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"   <TR>\0A\00", align 1
@.str.65 = private unnamed_addr constant [36 x i8] c"      <TD%s%sBGCOLOR=#%02x%02x%02x>\00", align 1
@.str.66 = private unnamed_addr constant [62 x i8] c"      <TD ROWSPAN=\22%d\22 COLSPAN=\22%d\22%s%sBGCOLOR=#%02x%02x%02x>\00", align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"%s</TD>\0A\00", align 1
@.str.68 = private unnamed_addr constant [23 x i8] c"\0A      %s\0A      </TD>\0A\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"   </TR>\0A\00", align 1
@.str.70 = private unnamed_addr constant [24 x i8] c"</TABLE></BODY></HTML>\0A\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"</TABLE>\0A\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  %call = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0)) #5
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* %call, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i32 1, i32 5, i32 0, %struct._GimpParamDef* getelementptr inbounds ([5 x %struct._GimpParamDef], [5 x %struct._GimpParamDef]* @query.save_args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call1 = call i32 @gimp_register_file_handler_mime(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0))
  %call2 = call i32 @gimp_register_save_handler(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i32 0, i32 0))
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
  %drawable = alloca %struct._GimpDrawable*, align 8
  %error = alloca %struct._GError*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
  store %struct._GError* null, %struct._GError** %error, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #6
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0), i8* %call) #5
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0)) #5
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0)) #5
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 2
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_int32, align 4
  %call4 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %1)
  store %struct._GimpDrawable* %call4, %struct._GimpDrawable** %drawable, align 8
  %2 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %2, align 4
  %3 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %3, align 8
  store i32 21, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  store i32 0, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %call5 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds (%struct.GTMValues, %struct.GTMValues* @gtmvals, i32 0, i32 0, i32 0))
  %4 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %4, i64 1
  %data7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx6, i32 0, i32 1
  %d_int328 = bitcast %union._GimpParamData* %data7 to i32*
  %5 = load i32, i32* %d_int328, align 4
  %call9 = call i32 @save_dialog(i32 %5)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.then, label %if.else.16

if.then:                                          ; preds = %do.end
  %6 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %6, i64 3
  %data11 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx10, i32 0, i32 1
  %d_string = bitcast %union._GimpParamData* %data11 to i8**
  %7 = load i8*, i8** %d_string, align 8
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call12 = call i32 @save_image(i8* %7, %struct._GimpDrawable* %8, %struct._GError** %error)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.then
  %call15 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds (%struct.GTMValues, %struct.GTMValues* @gtmvals, i32 0, i32 0, i32 0), i32 1052)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.14
  br label %if.end.17

if.else.16:                                       ; preds = %do.end
  store i32 4, i32* %status, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.16, %if.end
  %9 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %9, 3
  br i1 %cmp, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %if.end.17
  %10 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool18 = icmp ne %struct._GError* %10, null
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %land.lhs.true
  %11 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %11, align 4
  store i32 4, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %12 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %12, i32 0, i32 2
  %13 = load i8*, i8** %message, align 8
  store i8* %13, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i8**), align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %land.lhs.true, %if.end.17
  %14 = load i32, i32* %status, align 4
  store i32 %14, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
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

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

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

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @save_dialog(i32 %image_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %spinbutton = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %entry1 = alloca %struct._GtkWidget*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  %run = alloca i32, align 4
  %eek = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  call void @gimp_ui_init(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i32 0)
  %call = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0)) #5
  %call2 = call %struct._GtkWidget* @gimp_export_dialog_new(i8* %call, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0))
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %dialog, align 8
  %call3 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %main_vbox, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_container_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call4)
  %2 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %2, i32 12)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %call6 = call %struct._GtkWidget* @gimp_export_dialog_get_content_area(%struct._GtkWidget* %3)
  %4 = bitcast %struct._GtkWidget* %call6 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_box_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call7)
  %5 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkBox*
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %5, %struct._GtkWidget* %6, i32 1, i32 1, i32 0)
  %7 = load i32, i32* %image_ID.addr, align 4
  %call9 = call i32 @gimp_image_width(i32 %7)
  %8 = load i32, i32* %image_ID.addr, align 4
  %call10 = call i32 @gimp_image_height(i32 %8)
  %mul = mul nsw i32 %call9, %call10
  %cmp = icmp sgt i32 %mul, 4096
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0)) #5
  %call12 = call %struct._GtkWidget* @gimp_frame_new(i8* %call11)
  store %struct._GtkWidget* %call12, %struct._GtkWidget** %frame, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_frame_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call13)
  %11 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %11, i32 1)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_box_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call15)
  %14 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkBox*
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %14, %struct._GtkWidget* %15, i32 0, i32 0, i32 0)
  %call17 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %hbox, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_container_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call18)
  %18 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkContainer*
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %18, %struct._GtkWidget* %19)
  %call20 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0), i32 6)
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %eek, align 8
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_box_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call21)
  %22 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkBox*
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %eek, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %22, %struct._GtkWidget* %23, i32 0, i32 0, i32 0)
  %call23 = call i8* @gettext(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.24, i32 0, i32 0)) #5
  %call24 = call %struct._GtkWidget* @gtk_label_new(i8* %call23)
  store %struct._GtkWidget* %call24, %struct._GtkWidget** %label, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_box_get_type() #6
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call25)
  %26 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkBox*
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %26, %struct._GtkWidget* %27, i32 1, i32 1, i32 0)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show_all(%struct._GtkWidget* %28)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0)) #5
  %call28 = call %struct._GtkWidget* @gimp_frame_new(i8* %call27)
  store %struct._GtkWidget* %call28, %struct._GtkWidget** %frame, align 8
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_box_get_type() #6
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call29)
  %31 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkBox*
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %31, %struct._GtkWidget* %32, i32 0, i32 0, i32 0)
  %call31 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call31, %struct._GtkWidget** %vbox, align 8
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_container_get_type() #6
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call32)
  %35 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkContainer*
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %35, %struct._GtkWidget* %36)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %37)
  %call34 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i32 0, i32 0)) #5
  %call35 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call34)
  store %struct._GtkWidget* %call35, %struct._GtkWidget** %toggle, align 8
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_box_get_type() #6
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call36)
  %40 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkBox*
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %40, %struct._GtkWidget* %41, i32 0, i32 0, i32 0)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_toggle_button_get_type() #6
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call38)
  %44 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkToggleButton*
  %45 = load i32, i32* getelementptr inbounds (%struct.GTMValues, %struct.GTMValues* @gtmvals, i32 0, i32 4), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %44, i32 %45)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %46)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %call40 = call i8* @gettext(i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.27, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %47, i8* %call40, i8* null)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %49 = bitcast %struct._GtkWidget* %48 to i8*
  %call41 = call i64 @g_signal_connect_data(i8* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.GTMValues, %struct.GTMValues* @gtmvals, i32 0, i32 4) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %50)
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %51)
  %call42 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i32 0, i32 0)) #5
  %call43 = call %struct._GtkWidget* @gimp_frame_new(i8* %call42)
  store %struct._GtkWidget* %call43, %struct._GtkWidget** %frame, align 8
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_box_get_type() #6
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call44)
  %54 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkBox*
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %54, %struct._GtkWidget* %55, i32 0, i32 0, i32 0)
  %call46 = call %struct._GtkWidget* @gtk_table_new(i32 4, i32 2, i32 0)
  store %struct._GtkWidget* %call46, %struct._GtkWidget** %table, align 8
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %57 = bitcast %struct._GtkWidget* %56 to %struct._GTypeInstance*
  %call47 = call i64 @gtk_table_get_type() #6
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call47)
  %58 = bitcast %struct._GTypeInstance* %call48 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %58, i32 6)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %60 = bitcast %struct._GtkWidget* %59 to %struct._GTypeInstance*
  %call49 = call i64 @gtk_table_get_type() #6
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call49)
  %61 = bitcast %struct._GTypeInstance* %call50 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %61, i32 6)
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %63 = bitcast %struct._GtkWidget* %62 to %struct._GTypeInstance*
  %call51 = call i64 @gtk_container_get_type() #6
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call51)
  %64 = bitcast %struct._GTypeInstance* %call52 to %struct._GtkContainer*
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %64, %struct._GtkWidget* %65)
  %call53 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0)) #5
  %call54 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call53)
  store %struct._GtkWidget* %call54, %struct._GtkWidget** %toggle, align 8
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %67 = bitcast %struct._GtkWidget* %66 to %struct._GTypeInstance*
  %call55 = call i64 @gtk_table_get_type() #6
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call55)
  %68 = bitcast %struct._GTypeInstance* %call56 to %struct._GtkTable*
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_table_attach(%struct._GtkTable* %68, %struct._GtkWidget* %69, i32 0, i32 2, i32 0, i32 1, i32 4, i32 0, i32 0, i32 0)
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %71 = bitcast %struct._GtkWidget* %70 to %struct._GTypeInstance*
  %call57 = call i64 @gtk_toggle_button_get_type() #6
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call57)
  %72 = bitcast %struct._GTypeInstance* %call58 to %struct._GtkToggleButton*
  %73 = load i32, i32* getelementptr inbounds (%struct.GTMValues, %struct.GTMValues* @gtmvals, i32 0, i32 7), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %72, i32 %73)
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %74)
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %call59 = call i8* @gettext(i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.31, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %75, i8* %call59, i8* null)
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %77 = bitcast %struct._GtkWidget* %76 to i8*
  %call60 = call i64 @g_signal_connect_data(i8* %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.GTMValues, %struct.GTMValues* @gtmvals, i32 0, i32 7) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call61 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i32 0, i32 0)) #5
  %call62 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call61)
  store %struct._GtkWidget* %call62, %struct._GtkWidget** %toggle, align 8
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %79 = bitcast %struct._GtkWidget* %78 to %struct._GTypeInstance*
  %call63 = call i64 @gtk_table_get_type() #6
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call63)
  %80 = bitcast %struct._GTypeInstance* %call64 to %struct._GtkTable*
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_table_attach(%struct._GtkTable* %80, %struct._GtkWidget* %81, i32 0, i32 2, i32 1, i32 2, i32 4, i32 0, i32 0, i32 0)
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %83 = bitcast %struct._GtkWidget* %82 to %struct._GTypeInstance*
  %call65 = call i64 @gtk_toggle_button_get_type() #6
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %83, i64 %call65)
  %84 = bitcast %struct._GTypeInstance* %call66 to %struct._GtkToggleButton*
  %85 = load i32, i32* getelementptr inbounds (%struct.GTMValues, %struct.GTMValues* @gtmvals, i32 0, i32 8), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %84, i32 %85)
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %86)
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %call67 = call i8* @gettext(i8* getelementptr inbounds ([158 x i8], [158 x i8]* @.str.33, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %87, i8* %call67, i8* null)
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %89 = bitcast %struct._GtkWidget* %88 to i8*
  %call68 = call i64 @g_signal_connect_data(i8* %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.GTMValues, %struct.GTMValues* @gtmvals, i32 0, i32 8) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call69 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0)) #5
  %call70 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call69)
  store %struct._GtkWidget* %call70, %struct._GtkWidget** %toggle, align 8
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %91 = bitcast %struct._GtkWidget* %90 to %struct._GTypeInstance*
  %call71 = call i64 @gtk_table_get_type() #6
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %91, i64 %call71)
  %92 = bitcast %struct._GTypeInstance* %call72 to %struct._GtkTable*
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_table_attach(%struct._GtkTable* %92, %struct._GtkWidget* %93, i32 0, i32 1, i32 2, i32 3, i32 4, i32 0, i32 0, i32 0)
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %95 = bitcast %struct._GtkWidget* %94 to %struct._GTypeInstance*
  %call73 = call i64 @gtk_toggle_button_get_type() #6
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %95, i64 %call73)
  %96 = bitcast %struct._GTypeInstance* %call74 to %struct._GtkToggleButton*
  %97 = load i32, i32* getelementptr inbounds (%struct.GTMValues, %struct.GTMValues* @gtmvals, i32 0, i32 5), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %96, i32 %97)
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %98)
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %call75 = call i8* @gettext(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.35, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %99, i8* %call75, i8* null)
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %101 = bitcast %struct._GtkWidget* %100 to i8*
  %call76 = call i64 @g_signal_connect_data(i8* %101, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.GTMValues, %struct.GTMValues* @gtmvals, i32 0, i32 5) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call77 = call %struct._GtkWidget* @gtk_entry_new()
  store %struct._GtkWidget* %call77, %struct._GtkWidget** %entry1, align 8
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %102, i32 200, i32 -1)
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %104 = bitcast %struct._GtkWidget* %103 to %struct._GTypeInstance*
  %call78 = call i64 @gtk_entry_get_type() #6
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %104, i64 %call78)
  %105 = bitcast %struct._GTypeInstance* %call79 to %struct._GtkEntry*
  call void @gtk_entry_set_text(%struct._GtkEntry* %105, i8* getelementptr inbounds (%struct.GTMValues, %struct.GTMValues* @gtmvals, i32 0, i32 0, i32 0))
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %107 = bitcast %struct._GtkWidget* %106 to %struct._GTypeInstance*
  %call80 = call i64 @gtk_table_get_type() #6
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %107, i64 %call80)
  %108 = bitcast %struct._GTypeInstance* %call81 to %struct._GtkTable*
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_table_attach(%struct._GtkTable* %108, %struct._GtkWidget* %109, i32 1, i32 2, i32 2, i32 3, i32 5, i32 0, i32 0, i32 0)
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %110)
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %call82 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.36, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %111, i8* %call82, i8* null)
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %113 = bitcast %struct._GtkWidget* %112 to i8*
  %call83 = call i64 @g_signal_connect_data(i8* %113, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gtm_caption_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %115 = bitcast %struct._GtkWidget* %114 to i8*
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %117 = bitcast %struct._GtkWidget* %116 to i8*
  %call84 = call %struct._GBinding* @g_object_bind_property(i8* %115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i8* %117, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i32 2)
  %call85 = call %struct._GtkWidget* @gtk_entry_new()
  store %struct._GtkWidget* %call85, %struct._GtkWidget** %entry1, align 8
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %118, i32 200, i32 -1)
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %120 = bitcast %struct._GtkWidget* %119 to %struct._GTypeInstance*
  %call86 = call i64 @gtk_entry_get_type() #6
  %call87 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %120, i64 %call86)
  %121 = bitcast %struct._GTypeInstance* %call87 to %struct._GtkEntry*
  call void @gtk_entry_set_text(%struct._GtkEntry* %121, i8* getelementptr inbounds (%struct.GTMValues, %struct.GTMValues* @gtmvals, i32 0, i32 1, i32 0))
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %123 = bitcast %struct._GtkWidget* %122 to %struct._GTypeInstance*
  %call88 = call i64 @gtk_table_get_type() #6
  %call89 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %123, i64 %call88)
  %124 = bitcast %struct._GTypeInstance* %call89 to %struct._GtkTable*
  %call90 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i32 0, i32 0)) #5
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %call91 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %124, i32 0, i32 3, i8* %call90, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %125, i32 1, i32 0)
  %126 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %126)
  %127 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %call92 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.41, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %127, i8* %call92, i8* null)
  %128 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %129 = bitcast %struct._GtkWidget* %128 to i8*
  %call93 = call i64 @g_signal_connect_data(i8* %129, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gtm_cellcontent_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %130)
  %131 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %131)
  %call94 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0)) #5
  %call95 = call %struct._GtkWidget* @gimp_frame_new(i8* %call94)
  store %struct._GtkWidget* %call95, %struct._GtkWidget** %frame, align 8
  %132 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %133 = bitcast %struct._GtkWidget* %132 to %struct._GTypeInstance*
  %call96 = call i64 @gtk_box_get_type() #6
  %call97 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %133, i64 %call96)
  %134 = bitcast %struct._GTypeInstance* %call97 to %struct._GtkBox*
  %135 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %134, %struct._GtkWidget* %135, i32 0, i32 0, i32 0)
  %call98 = call %struct._GtkWidget* @gtk_table_new(i32 5, i32 2, i32 0)
  store %struct._GtkWidget* %call98, %struct._GtkWidget** %table, align 8
  %136 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %137 = bitcast %struct._GtkWidget* %136 to %struct._GTypeInstance*
  %call99 = call i64 @gtk_table_get_type() #6
  %call100 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %137, i64 %call99)
  %138 = bitcast %struct._GTypeInstance* %call100 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %138, i32 6)
  %139 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %140 = bitcast %struct._GtkWidget* %139 to %struct._GTypeInstance*
  %call101 = call i64 @gtk_table_get_type() #6
  %call102 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %140, i64 %call101)
  %141 = bitcast %struct._GTypeInstance* %call102 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %141, i32 6)
  %142 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %143 = bitcast %struct._GtkWidget* %142 to %struct._GTypeInstance*
  %call103 = call i64 @gtk_container_get_type() #6
  %call104 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %143, i64 %call103)
  %144 = bitcast %struct._GTypeInstance* %call104 to %struct._GtkContainer*
  %145 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %144, %struct._GtkWidget* %145)
  %146 = load i32, i32* getelementptr inbounds (%struct.GTMValues, %struct.GTMValues* @gtmvals, i32 0, i32 6), align 4
  %conv = sitofp i32 %146 to double
  %call105 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %conv, double 0.000000e+00, double 1.000000e+03, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 1.000000e+00, i32 0)
  store %struct._GtkWidget* %call105, %struct._GtkWidget** %spinbutton, align 8
  %147 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %148 = bitcast %struct._GtkWidget* %147 to %struct._GTypeInstance*
  %call106 = call i64 @gtk_table_get_type() #6
  %call107 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %148, i64 %call106)
  %149 = bitcast %struct._GTypeInstance* %call107 to %struct._GtkTable*
  %call108 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0)) #5
  %150 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call109 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %149, i32 0, i32 0, i8* %call108, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %150, i32 1, i32 1)
  %151 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call110 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.44, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %151, i8* %call110, i8* null)
  %152 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %153 = bitcast %struct._GtkObject* %152 to i8*
  %call111 = call i64 @g_signal_connect_data(i8* %153, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.45, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.GTMValues, %struct.GTMValues* @gtmvals, i32 0, i32 6) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call112 = call %struct._GtkWidget* @gtk_entry_new()
  store %struct._GtkWidget* %call112, %struct._GtkWidget** %entry1, align 8
  %154 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %154, i32 60, i32 -1)
  %155 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %156 = bitcast %struct._GtkWidget* %155 to %struct._GTypeInstance*
  %call113 = call i64 @gtk_entry_get_type() #6
  %call114 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %156, i64 %call113)
  %157 = bitcast %struct._GTypeInstance* %call114 to %struct._GtkEntry*
  call void @gtk_entry_set_text(%struct._GtkEntry* %157, i8* getelementptr inbounds (%struct.GTMValues, %struct.GTMValues* @gtmvals, i32 0, i32 2, i32 0))
  %158 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %159 = bitcast %struct._GtkWidget* %158 to %struct._GTypeInstance*
  %call115 = call i64 @gtk_table_get_type() #6
  %call116 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %159, i64 %call115)
  %160 = bitcast %struct._GTypeInstance* %call116 to %struct._GtkTable*
  %call117 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0)) #5
  %161 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %call118 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %160, i32 0, i32 1, i8* %call117, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %161, i32 1, i32 1)
  %162 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %call119 = call i8* @gettext(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.47, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %162, i8* %call119, i8* null)
  %163 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %164 = bitcast %struct._GtkWidget* %163 to i8*
  %call120 = call i64 @g_signal_connect_data(i8* %164, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gtm_clwidth_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call121 = call %struct._GtkWidget* @gtk_entry_new()
  store %struct._GtkWidget* %call121, %struct._GtkWidget** %entry1, align 8
  %165 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %165, i32 60, i32 -1)
  %166 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %167 = bitcast %struct._GtkWidget* %166 to %struct._GTypeInstance*
  %call122 = call i64 @gtk_entry_get_type() #6
  %call123 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %167, i64 %call122)
  %168 = bitcast %struct._GTypeInstance* %call123 to %struct._GtkEntry*
  call void @gtk_entry_set_text(%struct._GtkEntry* %168, i8* getelementptr inbounds (%struct.GTMValues, %struct.GTMValues* @gtmvals, i32 0, i32 3, i32 0))
  %169 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %170 = bitcast %struct._GtkWidget* %169 to %struct._GTypeInstance*
  %call124 = call i64 @gtk_table_get_type() #6
  %call125 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %170, i64 %call124)
  %171 = bitcast %struct._GTypeInstance* %call125 to %struct._GtkTable*
  %call126 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0)) #5
  %172 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %call127 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %171, i32 0, i32 2, i8* %call126, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %172, i32 1, i32 1)
  %173 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %call128 = call i8* @gettext(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.49, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %173, i8* %call128, i8* null)
  %174 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %175 = bitcast %struct._GtkWidget* %174 to i8*
  %call129 = call i64 @g_signal_connect_data(i8* %175, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gtm_clheight_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %176 = load i32, i32* getelementptr inbounds (%struct.GTMValues, %struct.GTMValues* @gtmvals, i32 0, i32 9), align 4
  %conv130 = sitofp i32 %176 to double
  %call131 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %conv130, double 0.000000e+00, double 1.000000e+03, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 1.000000e+00, i32 0)
  store %struct._GtkWidget* %call131, %struct._GtkWidget** %spinbutton, align 8
  %177 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %178 = bitcast %struct._GtkWidget* %177 to %struct._GTypeInstance*
  %call132 = call i64 @gtk_table_get_type() #6
  %call133 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %178, i64 %call132)
  %179 = bitcast %struct._GTypeInstance* %call133 to %struct._GtkTable*
  %call134 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.50, i32 0, i32 0)) #5
  %180 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call135 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %179, i32 0, i32 3, i8* %call134, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %180, i32 1, i32 1)
  %181 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call136 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.51, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %181, i8* %call136, i8* null)
  %182 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %183 = bitcast %struct._GtkObject* %182 to i8*
  %call137 = call i64 @g_signal_connect_data(i8* %183, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.45, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.GTMValues, %struct.GTMValues* @gtmvals, i32 0, i32 9) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %184 = load i32, i32* getelementptr inbounds (%struct.GTMValues, %struct.GTMValues* @gtmvals, i32 0, i32 10), align 4
  %conv138 = sitofp i32 %184 to double
  %call139 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %conv138, double 0.000000e+00, double 1.000000e+03, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 1.000000e+00, i32 0)
  store %struct._GtkWidget* %call139, %struct._GtkWidget** %spinbutton, align 8
  %185 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %186 = bitcast %struct._GtkWidget* %185 to %struct._GTypeInstance*
  %call140 = call i64 @gtk_table_get_type() #6
  %call141 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %186, i64 %call140)
  %187 = bitcast %struct._GTypeInstance* %call141 to %struct._GtkTable*
  %call142 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i32 0, i32 0)) #5
  %188 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call143 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %187, i32 0, i32 4, i8* %call142, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %188, i32 1, i32 1)
  %189 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call144 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.53, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %189, i8* %call144, i8* null)
  %190 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %191 = bitcast %struct._GtkObject* %190 to i8*
  %call145 = call i64 @g_signal_connect_data(i8* %191, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.45, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.GTMValues, %struct.GTMValues* @gtmvals, i32 0, i32 10) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %192 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %192)
  %193 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %193)
  %194 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %194)
  %195 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %196 = bitcast %struct._GtkWidget* %195 to %struct._GTypeInstance*
  %call146 = call i64 @gimp_dialog_get_type() #6
  %call147 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %196, i64 %call146)
  %197 = bitcast %struct._GTypeInstance* %call147 to %struct._GimpDialog*
  %call148 = call i32 @gimp_dialog_run(%struct._GimpDialog* %197)
  %cmp149 = icmp eq i32 %call148, -5
  %conv150 = zext i1 %cmp149 to i32
  store i32 %conv150, i32* %run, align 4
  %198 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %198)
  %199 = load i32, i32* %run, align 4
  ret i32 %199
}

; Function Attrs: nounwind uwtable
define internal i32 @save_image(i8* %filename, %struct._GimpDrawable* %drawable, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %cols = alloca i32, align 4
  %rows = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %colcount = alloca i32, align 4
  %colspan = alloca i32, align 4
  %rowspan = alloca i32, align 4
  %palloc = alloca i32*, align 8
  %buffer = alloca i8*, align 8
  %buf2 = alloca i8*, align 8
  %width = alloca i8*, align 8
  %height = alloca i8*, align 8
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width1 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 1
  %1 = load i32, i32* %width1, align 4
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height2 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %2, i32 0, i32 2
  %3 = load i32, i32* %height2, align 4
  %mul = mul i32 %1, %3
  %conv = zext i32 %mul to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 4)
  %4 = bitcast i8* %call to i32*
  store i32* %4, i32** %palloc, align 8
  %5 = load i8*, i8** %filename.addr, align 8
  %call3 = call %struct._IO_FILE* @fopen(i8* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i32 0, i32 0))
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %fp, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool = icmp ne %struct._IO_FILE* %6, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call i32 @g_file_error_quark()
  %call5 = call i32* @__errno_location() #6
  %8 = load i32, i32* %call5, align 4
  %call6 = call i32 @g_file_error_from_errno(i32 %8)
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.55, i32 0, i32 0)) #5
  %9 = load i8*, i8** %filename.addr, align 8
  %call8 = call i8* @gimp_filename_to_utf8(i8* %9)
  %call9 = call i32* @__errno_location() #6
  %10 = load i32, i32* %call9, align 4
  %call10 = call i8* @g_strerror(i32 %10) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %7, i32 %call4, i32 %call6, i8* %call7, i8* %call8, i8* %call10)
  %11 = load i32*, i32** %palloc, align 8
  %12 = bitcast i32* %11 to i8*
  call void @g_free(i8* %12)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %13 = load i32, i32* getelementptr inbounds (%struct.GTMValues, %struct.GTMValues* @gtmvals, i32 0, i32 4), align 4
  %tobool11 = icmp ne i32 %13, 0
  br i1 %tobool11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %if.end
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %15 = load i8*, i8** %filename.addr, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.56, i32 0, i32 0), i8* %15)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %17 = load i8*, i8** %filename.addr, align 8
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i32 0, i32 0), i8* %17)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %if.end
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %19 = load i32, i32* getelementptr inbounds (%struct.GTMValues, %struct.GTMValues* @gtmvals, i32 0, i32 6), align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.GTMValues, %struct.GTMValues* @gtmvals, i32 0, i32 9), align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.GTMValues, %struct.GTMValues* @gtmvals, i32 0, i32 10), align 4
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.58, i32 0, i32 0), i32 %19, i32 %20, i32 %21)
  %22 = load i32, i32* getelementptr inbounds (%struct.GTMValues, %struct.GTMValues* @gtmvals, i32 0, i32 5), align 4
  %tobool17 = icmp ne i32 %22, 0
  br i1 %tobool17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.15
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds (%struct.GTMValues, %struct.GTMValues* @gtmvals, i32 0, i32 0, i32 0))
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.end.15
  %call21 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i32 0, i32 0)) #5
  %24 = load i8*, i8** %filename.addr, align 8
  %call22 = call i8* @gimp_filename_to_utf8(i8* %24)
  %call23 = call i32 (i8*, ...) @gimp_progress_init_printf(i8* %call21, i8* %call22)
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width24 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %26, i32 0, i32 1
  %27 = load i32, i32* %width24, align 4
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height25 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %28, i32 0, i32 2
  %29 = load i32, i32* %height25, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %25, i32 0, i32 0, i32 %27, i32 %29, i32 0, i32 0)
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width26 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %30, i32 0, i32 1
  %31 = load i32, i32* %width26, align 4
  store i32 %31, i32* %cols, align 4
  %32 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height27 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %32, i32 0, i32 2
  %33 = load i32, i32* %height27, align 4
  store i32 %33, i32* %rows, align 4
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %34, i32 0, i32 3
  %35 = load i32, i32* %bpp, align 4
  %conv28 = zext i32 %35 to i64
  %call29 = call noalias i8* @g_malloc_n(i64 %conv28, i64 1)
  store i8* %call29, i8** %buffer, align 8
  %36 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp30 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %36, i32 0, i32 3
  %37 = load i32, i32* %bpp30, align 4
  %conv31 = zext i32 %37 to i64
  %call32 = call noalias i8* @g_malloc_n(i64 %conv31, i64 1)
  store i8* %call32, i8** %buf2, align 8
  store i8* null, i8** %height, align 8
  store i8* null, i8** %width, align 8
  %call33 = call i32 @strcmp(i8* getelementptr inbounds (%struct.GTMValues, %struct.GTMValues* @gtmvals, i32 0, i32 2, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i32 0, i32 0)) #7
  %cmp = icmp ne i32 %call33, 0
  br i1 %cmp, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.end.20
  %call36 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds (%struct.GTMValues, %struct.GTMValues* @gtmvals, i32 0, i32 2, i32 0))
  store i8* %call36, i8** %width, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %if.end.20
  %call38 = call i32 @strcmp(i8* getelementptr inbounds (%struct.GTMValues, %struct.GTMValues* @gtmvals, i32 0, i32 3, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i32 0, i32 0)) #7
  %cmp39 = icmp ne i32 %call38, 0
  br i1 %cmp39, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %if.end.37
  %call42 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds (%struct.GTMValues, %struct.GTMValues* @gtmvals, i32 0, i32 3, i32 0))
  store i8* %call42, i8** %height, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %if.end.37
  %38 = load i8*, i8** %width, align 8
  %tobool44 = icmp ne i8* %38, null
  br i1 %tobool44, label %if.end.47, label %if.then.45

if.then.45:                                       ; preds = %if.end.43
  %call46 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i32 0, i32 0))
  store i8* %call46, i8** %width, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %if.end.43
  %39 = load i8*, i8** %height, align 8
  %tobool48 = icmp ne i8* %39, null
  br i1 %tobool48, label %if.end.51, label %if.then.49

if.then.49:                                       ; preds = %if.end.47
  %call50 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i32 0, i32 0))
  store i8* %call50, i8** %height, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %if.end.47
  store i32 0, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.60, %if.end.51
  %40 = load i32, i32* %row, align 4
  %41 = load i32, i32* %rows, align 4
  %cmp52 = icmp slt i32 %40, %41
  br i1 %cmp52, label %for.body, label %for.end.62

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %col, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc, %for.body
  %42 = load i32, i32* %col, align 4
  %43 = load i32, i32* %cols, align 4
  %cmp55 = icmp slt i32 %42, %43
  br i1 %cmp55, label %for.body.57, label %for.end

for.body.57:                                      ; preds = %for.cond.54
  %44 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width58 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %44, i32 0, i32 1
  %45 = load i32, i32* %width58, align 4
  %46 = load i32, i32* %row, align 4
  %mul59 = mul i32 %45, %46
  %47 = load i32, i32* %col, align 4
  %add = add i32 %mul59, %47
  %idxprom = zext i32 %add to i64
  %48 = load i32*, i32** %palloc, align 8
  %arrayidx = getelementptr inbounds i32, i32* %48, i64 %idxprom
  store i32 1, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.57
  %49 = load i32, i32* %col, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %col, align 4
  br label %for.cond.54

for.end:                                          ; preds = %for.cond.54
  br label %for.inc.60

for.inc.60:                                       ; preds = %for.end
  %50 = load i32, i32* %row, align 4
  %inc61 = add nsw i32 %50, 1
  store i32 %inc61, i32* %row, align 4
  br label %for.cond

for.end.62:                                       ; preds = %for.cond
  store i32 0, i32* %colspan, align 4
  store i32 0, i32* %rowspan, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond.63

for.cond.63:                                      ; preds = %for.inc.205, %for.end.62
  %51 = load i32, i32* %y, align 4
  %52 = load i32, i32* %rows, align 4
  %cmp64 = icmp slt i32 %51, %52
  br i1 %cmp64, label %for.body.66, label %for.end.207

for.body.66:                                      ; preds = %for.cond.63
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64, i32 0, i32 0))
  store i32 0, i32* %x, align 4
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc.198, %for.body.66
  %54 = load i32, i32* %x, align 4
  %55 = load i32, i32* %cols, align 4
  %cmp69 = icmp slt i32 %54, %55
  br i1 %cmp69, label %for.body.71, label %for.end.200

for.body.71:                                      ; preds = %for.cond.68
  %56 = load i8*, i8** %buffer, align 8
  %57 = load i32, i32* %x, align 4
  %58 = load i32, i32* %y, align 4
  call void @gimp_pixel_rgn_get_pixel(%struct._GimpPixelRgn* %pixel_rgn, i8* %56, i32 %57, i32 %58)
  %59 = load i32, i32* getelementptr inbounds (%struct.GTMValues, %struct.GTMValues* @gtmvals, i32 0, i32 7), align 4
  %tobool72 = icmp ne i32 %59, 0
  br i1 %tobool72, label %if.then.73, label %if.end.151

if.then.73:                                       ; preds = %for.body.71
  %60 = load i32, i32* %x, align 4
  store i32 %60, i32* %col, align 4
  %61 = load i32, i32* %y, align 4
  store i32 %61, i32* %row, align 4
  store i32 0, i32* %colcount, align 4
  store i32 0, i32* %colspan, align 4
  store i32 0, i32* %rowspan, align 4
  %62 = load i8*, i8** %buf2, align 8
  %63 = load i32, i32* %col, align 4
  %64 = load i32, i32* %row, align 4
  call void @gimp_pixel_rgn_get_pixel(%struct._GimpPixelRgn* %pixel_rgn, i8* %62, i32 %63, i32 %64)
  br label %while.cond

while.cond:                                       ; preds = %if.end.116, %if.then.73
  %65 = load i8*, i8** %buffer, align 8
  %66 = load i8*, i8** %buf2, align 8
  %call74 = call i32 @color_comp(i8* %65, i8* %66)
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %67 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width76 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %67, i32 0, i32 1
  %68 = load i32, i32* %width76, align 4
  %69 = load i32, i32* %row, align 4
  %mul77 = mul i32 %68, %69
  %70 = load i32, i32* %col, align 4
  %add78 = add i32 %mul77, %70
  %idxprom79 = zext i32 %add78 to i64
  %71 = load i32*, i32** %palloc, align 8
  %arrayidx80 = getelementptr inbounds i32, i32* %71, i64 %idxprom79
  %72 = load i32, i32* %arrayidx80, align 4
  %cmp81 = icmp eq i32 %72, 1
  br i1 %cmp81, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %73 = load i32, i32* %row, align 4
  %74 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height83 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %74, i32 0, i32 2
  %75 = load i32, i32* %height83, align 4
  %cmp84 = icmp ult i32 %73, %75
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %76 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp84, %land.rhs ]
  br i1 %76, label %while.body, label %while.end.117

while.body:                                       ; preds = %land.end
  br label %while.cond.86

while.cond.86:                                    ; preds = %while.body.102, %while.body
  %77 = load i8*, i8** %buffer, align 8
  %78 = load i8*, i8** %buf2, align 8
  %call87 = call i32 @color_comp(i8* %77, i8* %78)
  %tobool88 = icmp ne i32 %call87, 0
  br i1 %tobool88, label %land.lhs.true.89, label %land.end.101

land.lhs.true.89:                                 ; preds = %while.cond.86
  %79 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width90 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %79, i32 0, i32 1
  %80 = load i32, i32* %width90, align 4
  %81 = load i32, i32* %row, align 4
  %mul91 = mul i32 %80, %81
  %82 = load i32, i32* %col, align 4
  %add92 = add i32 %mul91, %82
  %idxprom93 = zext i32 %add92 to i64
  %83 = load i32*, i32** %palloc, align 8
  %arrayidx94 = getelementptr inbounds i32, i32* %83, i64 %idxprom93
  %84 = load i32, i32* %arrayidx94, align 4
  %cmp95 = icmp eq i32 %84, 1
  br i1 %cmp95, label %land.rhs.97, label %land.end.101

land.rhs.97:                                      ; preds = %land.lhs.true.89
  %85 = load i32, i32* %col, align 4
  %86 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width98 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %86, i32 0, i32 1
  %87 = load i32, i32* %width98, align 4
  %cmp99 = icmp ult i32 %85, %87
  br label %land.end.101

land.end.101:                                     ; preds = %land.rhs.97, %land.lhs.true.89, %while.cond.86
  %88 = phi i1 [ false, %land.lhs.true.89 ], [ false, %while.cond.86 ], [ %cmp99, %land.rhs.97 ]
  br i1 %88, label %while.body.102, label %while.end

while.body.102:                                   ; preds = %land.end.101
  %89 = load i32, i32* %colcount, align 4
  %inc103 = add nsw i32 %89, 1
  store i32 %inc103, i32* %colcount, align 4
  %90 = load i32, i32* %col, align 4
  %inc104 = add nsw i32 %90, 1
  store i32 %inc104, i32* %col, align 4
  %91 = load i8*, i8** %buf2, align 8
  %92 = load i32, i32* %col, align 4
  %93 = load i32, i32* %row, align 4
  call void @gimp_pixel_rgn_get_pixel(%struct._GimpPixelRgn* %pixel_rgn, i8* %91, i32 %92, i32 %93)
  br label %while.cond.86

while.end:                                        ; preds = %land.end.101
  %94 = load i32, i32* %colcount, align 4
  %cmp105 = icmp ne i32 %94, 0
  br i1 %cmp105, label %if.then.107, label %if.end.110

if.then.107:                                      ; preds = %while.end
  %95 = load i32, i32* %row, align 4
  %inc108 = add nsw i32 %95, 1
  store i32 %inc108, i32* %row, align 4
  %96 = load i32, i32* %rowspan, align 4
  %inc109 = add nsw i32 %96, 1
  store i32 %inc109, i32* %rowspan, align 4
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.107, %while.end
  %97 = load i32, i32* %colcount, align 4
  %98 = load i32, i32* %colspan, align 4
  %cmp111 = icmp slt i32 %97, %98
  br i1 %cmp111, label %if.then.115, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.110
  %99 = load i32, i32* %colspan, align 4
  %cmp113 = icmp eq i32 %99, 0
  br i1 %cmp113, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %lor.lhs.false, %if.end.110
  %100 = load i32, i32* %colcount, align 4
  store i32 %100, i32* %colspan, align 4
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.115, %lor.lhs.false
  %101 = load i32, i32* %x, align 4
  store i32 %101, i32* %col, align 4
  store i32 0, i32* %colcount, align 4
  %102 = load i8*, i8** %buf2, align 8
  %103 = load i32, i32* %col, align 4
  %104 = load i32, i32* %row, align 4
  call void @gimp_pixel_rgn_get_pixel(%struct._GimpPixelRgn* %pixel_rgn, i8* %102, i32 %103, i32 %104)
  br label %while.cond

while.end.117:                                    ; preds = %land.end
  %105 = load i32, i32* %colspan, align 4
  %cmp118 = icmp sgt i32 %105, 1
  br i1 %cmp118, label %if.then.123, label %lor.lhs.false.120

lor.lhs.false.120:                                ; preds = %while.end.117
  %106 = load i32, i32* %rowspan, align 4
  %cmp121 = icmp sgt i32 %106, 1
  br i1 %cmp121, label %if.then.123, label %if.end.150

if.then.123:                                      ; preds = %lor.lhs.false.120, %while.end.117
  store i32 0, i32* %row, align 4
  br label %for.cond.124

for.cond.124:                                     ; preds = %for.inc.142, %if.then.123
  %107 = load i32, i32* %row, align 4
  %108 = load i32, i32* %rowspan, align 4
  %cmp125 = icmp slt i32 %107, %108
  br i1 %cmp125, label %for.body.127, label %for.end.144

for.body.127:                                     ; preds = %for.cond.124
  store i32 0, i32* %col, align 4
  br label %for.cond.128

for.cond.128:                                     ; preds = %for.inc.139, %for.body.127
  %109 = load i32, i32* %col, align 4
  %110 = load i32, i32* %colspan, align 4
  %cmp129 = icmp slt i32 %109, %110
  br i1 %cmp129, label %for.body.131, label %for.end.141

for.body.131:                                     ; preds = %for.cond.128
  %111 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width132 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %111, i32 0, i32 1
  %112 = load i32, i32* %width132, align 4
  %113 = load i32, i32* %row, align 4
  %114 = load i32, i32* %y, align 4
  %add133 = add nsw i32 %113, %114
  %mul134 = mul i32 %112, %add133
  %115 = load i32, i32* %col, align 4
  %116 = load i32, i32* %x, align 4
  %add135 = add nsw i32 %115, %116
  %add136 = add i32 %mul134, %add135
  %idxprom137 = zext i32 %add136 to i64
  %117 = load i32*, i32** %palloc, align 8
  %arrayidx138 = getelementptr inbounds i32, i32* %117, i64 %idxprom137
  store i32 0, i32* %arrayidx138, align 4
  br label %for.inc.139

for.inc.139:                                      ; preds = %for.body.131
  %118 = load i32, i32* %col, align 4
  %inc140 = add nsw i32 %118, 1
  store i32 %inc140, i32* %col, align 4
  br label %for.cond.128

for.end.141:                                      ; preds = %for.cond.128
  br label %for.inc.142

for.inc.142:                                      ; preds = %for.end.141
  %119 = load i32, i32* %row, align 4
  %inc143 = add nsw i32 %119, 1
  store i32 %inc143, i32* %row, align 4
  br label %for.cond.124

for.end.144:                                      ; preds = %for.cond.124
  %120 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width145 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %120, i32 0, i32 1
  %121 = load i32, i32* %width145, align 4
  %122 = load i32, i32* %y, align 4
  %mul146 = mul i32 %121, %122
  %123 = load i32, i32* %x, align 4
  %add147 = add i32 %mul146, %123
  %idxprom148 = zext i32 %add147 to i64
  %124 = load i32*, i32** %palloc, align 8
  %arrayidx149 = getelementptr inbounds i32, i32* %124, i64 %idxprom148
  store i32 2, i32* %arrayidx149, align 4
  br label %if.end.150

if.end.150:                                       ; preds = %for.end.144, %lor.lhs.false.120
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.150, %for.body.71
  %125 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width152 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %125, i32 0, i32 1
  %126 = load i32, i32* %width152, align 4
  %127 = load i32, i32* %y, align 4
  %mul153 = mul i32 %126, %127
  %128 = load i32, i32* %x, align 4
  %add154 = add i32 %mul153, %128
  %idxprom155 = zext i32 %add154 to i64
  %129 = load i32*, i32** %palloc, align 8
  %arrayidx156 = getelementptr inbounds i32, i32* %129, i64 %idxprom155
  %130 = load i32, i32* %arrayidx156, align 4
  %cmp157 = icmp eq i32 %130, 1
  br i1 %cmp157, label %if.then.159, label %if.end.167

if.then.159:                                      ; preds = %if.end.151
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %132 = load i8*, i8** %width, align 8
  %133 = load i8*, i8** %height, align 8
  %134 = load i8*, i8** %buffer, align 8
  %arrayidx160 = getelementptr inbounds i8, i8* %134, i64 0
  %135 = load i8, i8* %arrayidx160, align 1
  %conv161 = zext i8 %135 to i32
  %136 = load i8*, i8** %buffer, align 8
  %arrayidx162 = getelementptr inbounds i8, i8* %136, i64 1
  %137 = load i8, i8* %arrayidx162, align 1
  %conv163 = zext i8 %137 to i32
  %138 = load i8*, i8** %buffer, align 8
  %arrayidx164 = getelementptr inbounds i8, i8* %138, i64 2
  %139 = load i8, i8* %arrayidx164, align 1
  %conv165 = zext i8 %139 to i32
  %call166 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %131, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.65, i32 0, i32 0), i8* %132, i8* %133, i32 %conv161, i32 %conv163, i32 %conv165)
  br label %if.end.167

if.end.167:                                       ; preds = %if.then.159, %if.end.151
  %140 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width168 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %140, i32 0, i32 1
  %141 = load i32, i32* %width168, align 4
  %142 = load i32, i32* %y, align 4
  %mul169 = mul i32 %141, %142
  %143 = load i32, i32* %x, align 4
  %add170 = add i32 %mul169, %143
  %idxprom171 = zext i32 %add170 to i64
  %144 = load i32*, i32** %palloc, align 8
  %arrayidx172 = getelementptr inbounds i32, i32* %144, i64 %idxprom171
  %145 = load i32, i32* %arrayidx172, align 4
  %cmp173 = icmp eq i32 %145, 2
  br i1 %cmp173, label %if.then.175, label %if.end.183

if.then.175:                                      ; preds = %if.end.167
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %147 = load i32, i32* %rowspan, align 4
  %148 = load i32, i32* %colspan, align 4
  %149 = load i8*, i8** %width, align 8
  %150 = load i8*, i8** %height, align 8
  %151 = load i8*, i8** %buffer, align 8
  %arrayidx176 = getelementptr inbounds i8, i8* %151, i64 0
  %152 = load i8, i8* %arrayidx176, align 1
  %conv177 = zext i8 %152 to i32
  %153 = load i8*, i8** %buffer, align 8
  %arrayidx178 = getelementptr inbounds i8, i8* %153, i64 1
  %154 = load i8, i8* %arrayidx178, align 1
  %conv179 = zext i8 %154 to i32
  %155 = load i8*, i8** %buffer, align 8
  %arrayidx180 = getelementptr inbounds i8, i8* %155, i64 2
  %156 = load i8, i8* %arrayidx180, align 1
  %conv181 = zext i8 %156 to i32
  %call182 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %146, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.66, i32 0, i32 0), i32 %147, i32 %148, i8* %149, i8* %150, i32 %conv177, i32 %conv179, i32 %conv181)
  br label %if.end.183

if.end.183:                                       ; preds = %if.then.175, %if.end.167
  %157 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width184 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %157, i32 0, i32 1
  %158 = load i32, i32* %width184, align 4
  %159 = load i32, i32* %y, align 4
  %mul185 = mul i32 %158, %159
  %160 = load i32, i32* %x, align 4
  %add186 = add i32 %mul185, %160
  %idxprom187 = zext i32 %add186 to i64
  %161 = load i32*, i32** %palloc, align 8
  %arrayidx188 = getelementptr inbounds i32, i32* %161, i64 %idxprom187
  %162 = load i32, i32* %arrayidx188, align 4
  %cmp189 = icmp ne i32 %162, 0
  br i1 %cmp189, label %if.then.191, label %if.end.197

if.then.191:                                      ; preds = %if.end.183
  %163 = load i32, i32* getelementptr inbounds (%struct.GTMValues, %struct.GTMValues* @gtmvals, i32 0, i32 8), align 4
  %tobool192 = icmp ne i32 %163, 0
  br i1 %tobool192, label %if.then.193, label %if.else

if.then.193:                                      ; preds = %if.then.191
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call194 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %164, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds (%struct.GTMValues, %struct.GTMValues* @gtmvals, i32 0, i32 1, i32 0))
  br label %if.end.196

if.else:                                          ; preds = %if.then.191
  %165 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call195 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %165, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds (%struct.GTMValues, %struct.GTMValues* @gtmvals, i32 0, i32 1, i32 0))
  br label %if.end.196

if.end.196:                                       ; preds = %if.else, %if.then.193
  br label %if.end.197

if.end.197:                                       ; preds = %if.end.196, %if.end.183
  br label %for.inc.198

for.inc.198:                                      ; preds = %if.end.197
  %166 = load i32, i32* %x, align 4
  %inc199 = add nsw i32 %166, 1
  store i32 %inc199, i32* %x, align 4
  br label %for.cond.68

for.end.200:                                      ; preds = %for.cond.68
  %167 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call201 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %167, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.69, i32 0, i32 0))
  %168 = load i32, i32* %y, align 4
  %conv202 = sitofp i32 %168 to double
  %169 = load i32, i32* %rows, align 4
  %conv203 = sitofp i32 %169 to double
  %div = fdiv double %conv202, %conv203
  %call204 = call i32 @gimp_progress_update(double %div)
  br label %for.inc.205

for.inc.205:                                      ; preds = %for.end.200
  %170 = load i32, i32* %y, align 4
  %inc206 = add nsw i32 %170, 1
  store i32 %inc206, i32* %y, align 4
  br label %for.cond.63

for.end.207:                                      ; preds = %for.cond.63
  %call208 = call i32 @gimp_progress_update(double 1.000000e+00)
  %171 = load i32, i32* getelementptr inbounds (%struct.GTMValues, %struct.GTMValues* @gtmvals, i32 0, i32 4), align 4
  %tobool209 = icmp ne i32 %171, 0
  br i1 %tobool209, label %if.then.210, label %if.else.212

if.then.210:                                      ; preds = %for.end.207
  %172 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call211 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %172, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.70, i32 0, i32 0))
  br label %if.end.214

if.else.212:                                      ; preds = %for.end.207
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call213 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %173, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i32 0, i32 0))
  br label %if.end.214

if.end.214:                                       ; preds = %if.else.212, %if.then.210
  %174 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call215 = call i32 @fclose(%struct._IO_FILE* %174)
  %175 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %175)
  %176 = load i8*, i8** %width, align 8
  call void @g_free(i8* %176)
  %177 = load i8*, i8** %height, align 8
  call void @g_free(i8* %177)
  %178 = load i32*, i32** %palloc, align 8
  %179 = bitcast i32* %178 to i8*
  call void @g_free(i8* %179)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.214, %if.then
  %180 = load i32, i32* %retval
  ret i32 %180
}

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare void @gimp_ui_init(i8*, i32) #1

declare %struct._GtkWidget* @gimp_export_dialog_new(i8*, i8*, i8*) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gimp_export_dialog_get_content_area(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare i32 @gimp_image_width(i32) #1

declare i32 @gimp_image_height(i32) #1

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #3

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_image_new_from_stock(i8*, i32) #1

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare void @gtk_widget_show_all(%struct._GtkWidget*) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_entry_new() #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_entry_set_text(%struct._GtkEntry*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @gtm_caption_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_entry_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkEntry*
  %call2 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %2)
  %call3 = call i8* @strncpy(i8* getelementptr inbounds (%struct.GTMValues, %struct.GTMValues* @gtmvals, i32 0, i32 0, i32 0), i8* %call2, i64 255) #5
  ret void
}

declare %struct._GBinding* @g_object_bind_property(i8*, i8*, i8*, i8*, i32) #1

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gtm_cellcontent_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_entry_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkEntry*
  %call2 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %2)
  %call3 = call i8* @strncpy(i8* getelementptr inbounds (%struct.GTMValues, %struct.GTMValues* @gtmvals, i32 0, i32 1, i32 0), i8* %call2, i64 255) #5
  ret void
}

declare %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject**, double, double, double, double, double, double, double, i32) #1

declare void @gimp_int_adjustment_update(%struct._GtkAdjustment*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gtm_clwidth_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_entry_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkEntry*
  %call2 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %2)
  %call3 = call i8* @strncpy(i8* getelementptr inbounds (%struct.GTMValues, %struct.GTMValues* @gtmvals, i32 0, i32 2, i32 0), i8* %call2, i64 255) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gtm_clheight_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_entry_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkEntry*
  %call2 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %2)
  %call3 = call i8* @strncpy(i8* getelementptr inbounds (%struct.GTMValues, %struct.GTMValues* @gtmvals, i32 0, i32 3, i32 0), i8* %call2, i64 255) #5
  ret void
}

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

declare i8* @gtk_entry_get_text(%struct._GtkEntry*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #1

declare i32 @g_file_error_quark() #1

declare i32 @g_file_error_from_errno(i32) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

declare i8* @gimp_filename_to_utf8(i8*) #1

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #3

declare void @g_free(i8*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @gimp_progress_init_printf(i8*, ...) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare noalias i8* @g_strdup(i8*) #1

declare void @gimp_pixel_rgn_get_pixel(%struct._GimpPixelRgn*, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @color_comp(i8* %buffer, i8* %buf2) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %buf2.addr = alloca i8*, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i8* %buf2, i8** %buf2.addr, align 8
  %0 = load i8*, i8** %buffer.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %2 = load i8*, i8** %buf2.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv, %conv2
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %4 = load i8*, i8** %buffer.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %5 to i32
  %6 = load i8*, i8** %buf2.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %7 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %8 = load i8*, i8** %buffer.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %8, i64 2
  %9 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %9 to i32
  %10 = load i8*, i8** %buf2.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %10, i64 2
  %11 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %11 to i32
  %cmp14 = icmp eq i32 %conv11, %conv13
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp14, %land.rhs ]
  %land.ext = zext i1 %12 to i32
  ret i32 %land.ext
}

declare i32 @gimp_progress_update(double) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

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
