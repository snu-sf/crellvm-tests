; ModuleID = './plug-ins/common/file-png.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.PngSaveVals = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.PngGlobals = type { i32, i8*, i32, i32, %struct.png_color_struct*, i32 }
%struct.png_color_struct = type { i8, i8, i8 }
%struct._GError = type { i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct.png_struct_def = type opaque
%struct.png_info_def = type opaque
%struct.read_error_data = type { %struct._GimpPixelRgn*, i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i32 }
%struct.png_text_struct = type { i32, i8*, i8*, i64, i64, i8*, i8* }
%struct._GimpParasite = type { i8*, i32, i32, i8* }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.png_color_16_struct = type { i8, i16, i16, i16, i16 }
%struct.PngSaveGui = type { i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAdjustment* }
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
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkBuilder = type { %struct._GObject, %struct._GtkBuilderPrivate* }
%struct._GtkBuilderPrivate = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.png_time_struct = type { i16, i8, i8, i8, i8, i8 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GimpDialog = type { %struct._GtkDialog }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.load_args = internal constant [3 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"The name of the file to load\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"raw-filename\00", align 1
@query.load_return_vals = internal constant [1 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0) }], align 16
@.str.5 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Output image\00", align 1
@query.save_args = internal constant [12 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0) }], align 16
@.str.7 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"Drawable to save\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"The name of the file to save the image in\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"interlace\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Use Adam7 interlacing?\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"compression\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"Deflate Compression factor (0--9)\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"bkgd\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"Write bKGD chunk?\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"gama\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"Write gAMA chunk?\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"offs\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"Write oFFs chunk?\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"phys\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"Write pHYs chunk?\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"Write tIME chunk?\00", align 1
@query.save_args2 = internal constant [14 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.28, i32 0, i32 0) }], align 16
@.str.25 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"Write comment?\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"svtrans\00", align 1
@.str.28 = private unnamed_addr constant [38 x i8] c"Preserve color of transparent pixels?\00", align 1
@query.save_args_defaults = internal constant [5 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i32 0, i32 0) }], align 16
@query.save_get_defaults_return_vals = internal constant [9 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.28, i32 0, i32 0) }], align 16
@query.save_args_set_defaults = internal constant [9 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.28, i32 0, i32 0) }], align 16
@.str.29 = private unnamed_addr constant [14 x i8] c"file-png-load\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"Loads files in PNG file format\00", align 1
@.str.31 = private unnamed_addr constant [58 x i8] c"This plug-in loads Portable Network Graphics (PNG) files.\00", align 1
@.str.32 = private unnamed_addr constant [83 x i8] c"Michael Sweet <mike@easysw.com>, Daniel Skarda <0rfelyus@atrey.karlin.mff.cuni.cz>\00", align 1
@.str.33 = private unnamed_addr constant [117 x i8] c"Michael Sweet <mike@easysw.com>, Daniel Skarda <0rfelyus@atrey.karlin.mff.cuni.cz>, Nick Lamb <njl195@zepler.org.uk>\00", align 1
@.str.34 = private unnamed_addr constant [26 x i8] c"1.3.4 - 03 September 2002\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"PNG image\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"image/png\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"png\00", align 1
@.str.38 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"0,string,\89PNG\0D\0A\1A\0A\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"file-png-save\00", align 1
@.str.41 = private unnamed_addr constant [31 x i8] c"Saves files in PNG file format\00", align 1
@.str.42 = private unnamed_addr constant [58 x i8] c"This plug-in saves Portable Network Graphics (PNG) files.\00", align 1
@.str.43 = private unnamed_addr constant [20 x i8] c"RGB*,GRAY*,INDEXED*\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"file-png-save2\00", align 1
@.str.45 = private unnamed_addr constant [225 x i8] c"This plug-in saves Portable Network Graphics (PNG) files. This procedure adds 2 extra parameters to file-png-save that allows to control whether image comments are saved and whether transparent pixels are saved or nullified.\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"file-png-save-defaults\00", align 1
@.str.47 = private unnamed_addr constant [107 x i8] c"This plug-in saves Portable Network Graphics (PNG) files, using the default settings stored as a parasite.\00", align 1
@.str.48 = private unnamed_addr constant [22 x i8] c"file-png-get-defaults\00", align 1
@.str.49 = private unnamed_addr constant [66 x i8] c"Get the current set of defaults used by the PNG file save plug-in\00", align 1
@.str.50 = private unnamed_addr constant [229 x i8] c"This procedure returns the current set of defaults stored as a parasite for the PNG save plug-in. These defaults are used to seed the UI, by the file_png_save_defaults procedure, and by gimp_file_save when it detects to use PNG.\00", align 1
@.str.51 = private unnamed_addr constant [22 x i8] c"file-png-set-defaults\00", align 1
@.str.52 = private unnamed_addr constant [66 x i8] c"Set the current set of defaults used by the PNG file save plug-in\00", align 1
@.str.53 = private unnamed_addr constant [225 x i8] c"This procedure set the current set of defaults stored as a parasite for the PNG save plug-in. These defaults are used to seed the UI, by the file_png_save_defaults procedure, and by gimp_file_save when it detects to use PNG.\00", align 1
@run.values = internal global [10 x %struct._GimpParam] zeroinitializer, align 16
@.str.54 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"file-png\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"PNG\00", align 1
@pngvals = internal global %struct.PngSaveVals zeroinitializer, align 4
@.str.58 = private unnamed_addr constant [7 x i8] c"1.5.13\00", align 1
@.str.59 = private unnamed_addr constant [50 x i8] c"Error creating PNG read struct while saving '%s'.\00", align 1
@.str.60 = private unnamed_addr constant [42 x i8] c"Error while reading '%s'. File corrupted?\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.62 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for reading: %s\00", align 1
@.str.63 = private unnamed_addr constant [13 x i8] c"Opening '%s'\00", align 1
@.str.64 = private unnamed_addr constant [38 x i8] c"Unknown color model in PNG file '%s'.\00", align 1
@.str.65 = private unnamed_addr constant [40 x i8] c"Could not create new image for '%s': %s\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"Background\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"gamma\00", align 1
@.str.68 = private unnamed_addr constant [91 x i8] c"The PNG file specifies an offset that caused the layer to be positioned outside the image.\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"Comment\00", align 1
@.str.70 = private unnamed_addr constant [11 x i8] c"ISO-8859-1\00", align 1
@.str.71 = private unnamed_addr constant [13 x i8] c"gimp-comment\00", align 1
@.str.72 = private unnamed_addr constant [12 x i8] c"icc-profile\00", align 1
@.str.73 = private unnamed_addr constant [17 x i8] c"icc-profile-name\00", align 1
@.str.74 = private unnamed_addr constant [17 x i8] c"Apply PNG Offset\00", align 1
@.str.75 = private unnamed_addr constant [14 x i8] c"gimp-file-png\00", align 1
@.str.76 = private unnamed_addr constant [18 x i8] c"Ignore PNG offset\00", align 1
@.str.77 = private unnamed_addr constant [26 x i8] c"Apply PNG offset to layer\00", align 1
@.str.78 = private unnamed_addr constant [14 x i8] c"gimp-question\00", align 1
@.str.79 = private unnamed_addr constant [110 x i8] c"The PNG image you are importing specifies an offset of %d, %d. Do you want to apply this offset to the layer?\00", align 1
@.str.80 = private unnamed_addr constant [27 x i8] c"Error loading PNG file: %s\00", align 1
@.str.81 = private unnamed_addr constant [18 x i8] c"png-save-defaults\00", align 1
@.str.82 = private unnamed_addr constant [27 x i8] c"%d %d %d %d %d %d %d %d %d\00", align 1
@defaults = internal constant %struct.PngSaveVals { i32 0, i32 1, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 9 }, align 4
@.str.83 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@.str.85 = private unnamed_addr constant [32 x i8] c"ui/plug-ins/plug-in-file-png.ui\00", align 1
@.str.86 = private unnamed_addr constant [31 x i8] c"Error loading UI file '%s': %s\00", align 1
@.str.87 = private unnamed_addr constant [14 x i8] c"Unknown error\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.89 = private unnamed_addr constant [22 x i8] c"save-background-color\00", align 1
@.str.90 = private unnamed_addr constant [11 x i8] c"save-gamma\00", align 1
@.str.91 = private unnamed_addr constant [18 x i8] c"save-layer-offset\00", align 1
@.str.92 = private unnamed_addr constant [16 x i8] c"save-resolution\00", align 1
@.str.93 = private unnamed_addr constant [19 x i8] c"save-creation-time\00", align 1
@.str.94 = private unnamed_addr constant [13 x i8] c"save-comment\00", align 1
@.str.95 = private unnamed_addr constant [24 x i8] c"save-transparent-pixels\00", align 1
@.str.96 = private unnamed_addr constant [18 x i8] c"compression-level\00", align 1
@.str.97 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.98 = private unnamed_addr constant [14 x i8] c"load-defaults\00", align 1
@.str.99 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.100 = private unnamed_addr constant [14 x i8] c"save-defaults\00", align 1
@.str.101 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.102 = private unnamed_addr constant [51 x i8] c"Error creating PNG write struct while saving '%s'.\00", align 1
@.str.103 = private unnamed_addr constant [47 x i8] c"Error while saving '%s'. Could not save image.\00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.105 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for writing: %s\00", align 1
@.str.106 = private unnamed_addr constant [12 x i8] c"Saving '%s'\00", align 1
@pngg = internal global %struct.PngGlobals zeroinitializer, align 8
@.str.107 = private unnamed_addr constant [33 x i8] c"Image type can't be saved as PNG\00", align 1
@.str.108 = private unnamed_addr constant [12 x i8] c"ICC profile\00", align 1
@respin_cmap.trans = internal global [1 x i8] zeroinitializer, align 1
@respin_cmap.palette = internal global [256 x %struct.png_color_struct] zeroinitializer, align 16
@.str.109 = private unnamed_addr constant [63 x i8] c"Couldn't losslessly save transparency, saving opacity instead.\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i8* null, i32 1, i32 3, i32 1, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.load_args, i32 0, i32 0), %struct._GimpParamDef* getelementptr inbounds ([1 x %struct._GimpParamDef], [1 x %struct._GimpParamDef]* @query.load_return_vals, i32 0, i32 0))
  %call = call i32 @gimp_register_file_handler_mime(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0))
  %call1 = call i32 @gimp_register_magic_load_handler(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i32 0, i32 0))
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.43, i32 0, i32 0), i32 1, i32 12, i32 0, %struct._GimpParamDef* getelementptr inbounds ([12 x %struct._GimpParamDef], [12 x %struct._GimpParamDef]* @query.save_args, i32 0, i32 0), %struct._GimpParamDef* null)
  call void @gimp_install_procedure(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([225 x i8], [225 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.43, i32 0, i32 0), i32 1, i32 14, i32 0, %struct._GimpParamDef* getelementptr inbounds ([14 x %struct._GimpParamDef], [14 x %struct._GimpParamDef]* @query.save_args2, i32 0, i32 0), %struct._GimpParamDef* null)
  call void @gimp_install_procedure(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.43, i32 0, i32 0), i32 1, i32 5, i32 0, %struct._GimpParamDef* getelementptr inbounds ([5 x %struct._GimpParamDef], [5 x %struct._GimpParamDef]* @query.save_args_defaults, i32 0, i32 0), %struct._GimpParamDef* null)
  %call2 = call i32 @gimp_register_file_handler_mime(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0))
  %call3 = call i32 @gimp_register_save_handler(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.38, i32 0, i32 0))
  call void @gimp_install_procedure(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([229 x i8], [229 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.34, i32 0, i32 0), i8* null, i8* null, i32 1, i32 0, i32 9, %struct._GimpParamDef* null, %struct._GimpParamDef* getelementptr inbounds ([9 x %struct._GimpParamDef], [9 x %struct._GimpParamDef]* @query.save_get_defaults_return_vals, i32 0, i32 0))
  call void @gimp_install_procedure(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([225 x i8], [225 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.34, i32 0, i32 0), i8* null, i8* null, i32 1, i32 9, i32 0, %struct._GimpParamDef* getelementptr inbounds ([9 x %struct._GimpParamDef], [9 x %struct._GimpParamDef]* @query.save_args_set_defaults, i32 0, i32 0), %struct._GimpParamDef* null)
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
  %run_mode = alloca i32, align 4
  %status = alloca i32, align 4
  %image_ID = alloca i32, align 4
  %drawable_ID = alloca i32, align 4
  %orig_image_ID = alloca i32, align 4
  %export = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  %alpha = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
  store i32 0, i32* %export, align 4
  store %struct._GError* null, %struct._GError** %error, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #8
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i32 0, i32 0), i8* %call) #7
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0)) #7
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i32 0, i32 0)) #7
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %0, align 4
  %1 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([10 x %struct._GimpParam], [10 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %1, align 8
  store i32 21, i32* getelementptr inbounds ([10 x %struct._GimpParam], [10 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  store i32 0, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([10 x %struct._GimpParam], [10 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %2 = load i8*, i8** %name.addr, align 8
  %call4 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0)) #9
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then, label %if.else.12

if.then:                                          ; preds = %do.end
  %3 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %3, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %4 = load i32, i32* %d_int32, align 4
  store i32 %4, i32* %run_mode, align 4
  %5 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 1
  %data6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx5, i32 0, i32 1
  %d_string = bitcast %union._GimpParamData* %data6 to i8**
  %6 = load i8*, i8** %d_string, align 8
  %7 = load i32, i32* %run_mode, align 4
  %cmp7 = icmp eq i32 %7, 0
  %conv = zext i1 %cmp7 to i32
  %call8 = call i32 @load_image(i8* %6, i32 %conv, %struct._GError** %error)
  store i32 %call8, i32* %image_ID, align 4
  %8 = load i32, i32* %image_ID, align 4
  %cmp9 = icmp ne i32 %8, -1
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then
  %9 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %9, align 4
  store i32 13, i32* getelementptr inbounds ([10 x %struct._GimpParam], [10 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %10 = load i32, i32* %image_ID, align 4
  store i32 %10, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([10 x %struct._GimpParam], [10 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i32*), align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.11
  br label %if.end.184

if.else.12:                                       ; preds = %do.end
  %11 = load i8*, i8** %name.addr, align 8
  %call13 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0)) #9
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.12
  %12 = load i8*, i8** %name.addr, align 8
  %call16 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0)) #9
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then.23, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false
  %13 = load i8*, i8** %name.addr, align 8
  %call20 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.46, i32 0, i32 0)) #9
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then.23, label %if.else.120

if.then.23:                                       ; preds = %lor.lhs.false.19, %lor.lhs.false, %if.else.12
  %14 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx24 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %14, i64 0
  %data25 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx24, i32 0, i32 1
  %d_int3226 = bitcast %union._GimpParamData* %data25 to i32*
  %15 = load i32, i32* %d_int3226, align 4
  store i32 %15, i32* %run_mode, align 4
  %16 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx27 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %16, i64 1
  %data28 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx27, i32 0, i32 1
  %d_int3229 = bitcast %union._GimpParamData* %data28 to i32*
  %17 = load i32, i32* %d_int3229, align 4
  store i32 %17, i32* %orig_image_ID, align 4
  store i32 %17, i32* %image_ID, align 4
  %18 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx30 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %18, i64 2
  %data31 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx30, i32 0, i32 1
  %d_int3232 = bitcast %union._GimpParamData* %data31 to i32*
  %19 = load i32, i32* %d_int3232, align 4
  store i32 %19, i32* %drawable_ID, align 4
  call void @load_defaults()
  %20 = load i32, i32* %run_mode, align 4
  switch i32 %20, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then.23, %if.then.23
  call void @gimp_ui_init(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i32 0, i32 0), i32 0)
  %call33 = call i32 @gimp_export_image(i32* %image_ID, i32* %drawable_ID, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0), i32 23)
  store i32 %call33, i32* %export, align 4
  %21 = load i32, i32* %export, align 4
  %cmp34 = icmp eq i32 %21, 0
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %sw.bb
  %22 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %22, align 4
  store i32 4, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([10 x %struct._GimpParam], [10 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

if.end.37:                                        ; preds = %sw.bb
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.23
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.37
  %23 = load i32, i32* %run_mode, align 4
  switch i32 %23, label %sw.default.100 [
    i32 0, label %sw.bb.38
    i32 1, label %sw.bb.47
    i32 2, label %sw.bb.98
  ]

sw.bb.38:                                         ; preds = %sw.epilog
  %call39 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0), i8* bitcast (%struct.PngSaveVals* @pngvals to i8*))
  %24 = load i32, i32* %drawable_ID, align 4
  %call40 = call i32 @gimp_drawable_has_alpha(i32 %24)
  store i32 %call40, i32* %alpha, align 4
  %25 = load i32, i32* %alpha, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.end.42, label %if.then.41

if.then.41:                                       ; preds = %sw.bb.38
  store i32 0, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 1), align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %sw.bb.38
  %26 = load i32, i32* %orig_image_ID, align 4
  %27 = load i32, i32* %alpha, align 4
  %call43 = call i32 @save_dialog(i32 %26, i32 %27)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.end.46, label %if.then.45

if.then.45:                                       ; preds = %if.end.42
  store i32 4, i32* %status, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %if.end.42
  br label %sw.epilog.101

sw.bb.47:                                         ; preds = %sw.epilog
  %28 = load i32, i32* %nparams.addr, align 4
  %cmp48 = icmp ne i32 %28, 5
  br i1 %cmp48, label %if.then.50, label %if.end.97

if.then.50:                                       ; preds = %sw.bb.47
  %29 = load i32, i32* %nparams.addr, align 4
  %cmp51 = icmp ne i32 %29, 12
  br i1 %cmp51, label %land.lhs.true, label %if.else.56

land.lhs.true:                                    ; preds = %if.then.50
  %30 = load i32, i32* %nparams.addr, align 4
  %cmp53 = icmp ne i32 %30, 14
  br i1 %cmp53, label %if.then.55, label %if.else.56

if.then.55:                                       ; preds = %land.lhs.true
  store i32 1, i32* %status, align 4
  br label %if.end.96

if.else.56:                                       ; preds = %land.lhs.true, %if.then.50
  %31 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx57 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %31, i64 5
  %data58 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx57, i32 0, i32 1
  %d_int3259 = bitcast %union._GimpParamData* %data58 to i32*
  %32 = load i32, i32* %d_int3259, align 4
  store i32 %32, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 0), align 4
  %33 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx60 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %33, i64 6
  %data61 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx60, i32 0, i32 1
  %d_int3262 = bitcast %union._GimpParamData* %data61 to i32*
  %34 = load i32, i32* %d_int3262, align 4
  store i32 %34, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 8), align 4
  %35 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx63 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %35, i64 7
  %data64 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx63, i32 0, i32 1
  %d_int3265 = bitcast %union._GimpParamData* %data64 to i32*
  %36 = load i32, i32* %d_int3265, align 4
  store i32 %36, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 1), align 4
  %37 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx66 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %37, i64 8
  %data67 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx66, i32 0, i32 1
  %d_int3268 = bitcast %union._GimpParamData* %data67 to i32*
  %38 = load i32, i32* %d_int3268, align 4
  store i32 %38, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 2), align 4
  %39 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx69 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %39, i64 9
  %data70 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx69, i32 0, i32 1
  %d_int3271 = bitcast %union._GimpParamData* %data70 to i32*
  %40 = load i32, i32* %d_int3271, align 4
  store i32 %40, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 3), align 4
  %41 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx72 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %41, i64 10
  %data73 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx72, i32 0, i32 1
  %d_int3274 = bitcast %union._GimpParamData* %data73 to i32*
  %42 = load i32, i32* %d_int3274, align 4
  store i32 %42, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 4), align 4
  %43 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx75 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %43, i64 11
  %data76 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx75, i32 0, i32 1
  %d_int3277 = bitcast %union._GimpParamData* %data76 to i32*
  %44 = load i32, i32* %d_int3277, align 4
  store i32 %44, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 5), align 4
  %45 = load i32, i32* %nparams.addr, align 4
  %cmp78 = icmp eq i32 %45, 14
  br i1 %cmp78, label %if.then.80, label %if.else.87

if.then.80:                                       ; preds = %if.else.56
  %46 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx81 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %46, i64 12
  %data82 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx81, i32 0, i32 1
  %d_int3283 = bitcast %union._GimpParamData* %data82 to i32*
  %47 = load i32, i32* %d_int3283, align 4
  store i32 %47, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 6), align 4
  %48 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx84 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %48, i64 13
  %data85 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx84, i32 0, i32 1
  %d_int3286 = bitcast %union._GimpParamData* %data85 to i32*
  %49 = load i32, i32* %d_int3286, align 4
  store i32 %49, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 7), align 4
  br label %if.end.88

if.else.87:                                       ; preds = %if.else.56
  store i32 1, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 6), align 4
  store i32 1, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 7), align 4
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.87, %if.then.80
  %50 = load i32, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 8), align 4
  %cmp89 = icmp slt i32 %50, 0
  br i1 %cmp89, label %if.then.94, label %lor.lhs.false.91

lor.lhs.false.91:                                 ; preds = %if.end.88
  %51 = load i32, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 8), align 4
  %cmp92 = icmp sgt i32 %51, 9
  br i1 %cmp92, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %lor.lhs.false.91, %if.end.88
  store i32 1, i32* %status, align 4
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.94, %lor.lhs.false.91
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.then.55
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %sw.bb.47
  br label %sw.epilog.101

sw.bb.98:                                         ; preds = %sw.epilog
  %call99 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0), i8* bitcast (%struct.PngSaveVals* @pngvals to i8*))
  br label %sw.epilog.101

sw.default.100:                                   ; preds = %sw.epilog
  br label %sw.epilog.101

sw.epilog.101:                                    ; preds = %sw.default.100, %sw.bb.98, %if.end.97, %if.end.46
  %52 = load i32, i32* %status, align 4
  %cmp102 = icmp eq i32 %52, 3
  br i1 %cmp102, label %if.then.104, label %if.end.114

if.then.104:                                      ; preds = %sw.epilog.101
  %53 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx105 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %53, i64 3
  %data106 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx105, i32 0, i32 1
  %d_string107 = bitcast %union._GimpParamData* %data106 to i8**
  %54 = load i8*, i8** %d_string107, align 8
  %55 = load i32, i32* %image_ID, align 4
  %56 = load i32, i32* %drawable_ID, align 4
  %57 = load i32, i32* %orig_image_ID, align 4
  %call108 = call i32 @save_image(i8* %54, i32 %55, i32 %56, i32 %57, %struct._GError** %error)
  %tobool109 = icmp ne i32 %call108, 0
  br i1 %tobool109, label %if.then.110, label %if.else.112

if.then.110:                                      ; preds = %if.then.104
  %call111 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0), i8* bitcast (%struct.PngSaveVals* @pngvals to i8*), i32 36)
  br label %if.end.113

if.else.112:                                      ; preds = %if.then.104
  store i32 0, i32* %status, align 4
  br label %if.end.113

if.end.113:                                       ; preds = %if.else.112, %if.then.110
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %sw.epilog.101
  %58 = load i32, i32* %export, align 4
  %cmp115 = icmp eq i32 %58, 2
  br i1 %cmp115, label %if.then.117, label %if.end.119

if.then.117:                                      ; preds = %if.end.114
  %59 = load i32, i32* %image_ID, align 4
  %call118 = call i32 @gimp_image_delete(i32 %59)
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.117, %if.end.114
  br label %if.end.183

if.else.120:                                      ; preds = %lor.lhs.false.19
  %60 = load i8*, i8** %name.addr, align 8
  %call121 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.48, i32 0, i32 0)) #9
  %cmp122 = icmp eq i32 %call121, 0
  br i1 %cmp122, label %if.then.124, label %if.else.143

if.then.124:                                      ; preds = %if.else.120
  call void @load_defaults()
  %61 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 10, i32* %61, align 4
  br label %do.body.125

do.body.125:                                      ; preds = %if.then.124
  store i32 0, i32* getelementptr inbounds ([10 x %struct._GimpParam], [10 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %62 = load i32, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 0), align 4
  store i32 %62, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([10 x %struct._GimpParam], [10 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i32*), align 4
  br label %do.end.126

do.end.126:                                       ; preds = %do.body.125
  br label %do.body.127

do.body.127:                                      ; preds = %do.end.126
  store i32 0, i32* getelementptr inbounds ([10 x %struct._GimpParam], [10 x %struct._GimpParam]* @run.values, i32 0, i64 2, i32 0), align 4
  %63 = load i32, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 8), align 4
  store i32 %63, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([10 x %struct._GimpParam], [10 x %struct._GimpParam]* @run.values, i32 0, i64 2, i32 1) to i32*), align 4
  br label %do.end.128

do.end.128:                                       ; preds = %do.body.127
  br label %do.body.129

do.body.129:                                      ; preds = %do.end.128
  store i32 0, i32* getelementptr inbounds ([10 x %struct._GimpParam], [10 x %struct._GimpParam]* @run.values, i32 0, i64 3, i32 0), align 4
  %64 = load i32, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 1), align 4
  store i32 %64, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([10 x %struct._GimpParam], [10 x %struct._GimpParam]* @run.values, i32 0, i64 3, i32 1) to i32*), align 4
  br label %do.end.130

do.end.130:                                       ; preds = %do.body.129
  br label %do.body.131

do.body.131:                                      ; preds = %do.end.130
  store i32 0, i32* getelementptr inbounds ([10 x %struct._GimpParam], [10 x %struct._GimpParam]* @run.values, i32 0, i64 4, i32 0), align 4
  %65 = load i32, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 2), align 4
  store i32 %65, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([10 x %struct._GimpParam], [10 x %struct._GimpParam]* @run.values, i32 0, i64 4, i32 1) to i32*), align 4
  br label %do.end.132

do.end.132:                                       ; preds = %do.body.131
  br label %do.body.133

do.body.133:                                      ; preds = %do.end.132
  store i32 0, i32* getelementptr inbounds ([10 x %struct._GimpParam], [10 x %struct._GimpParam]* @run.values, i32 0, i64 5, i32 0), align 4
  %66 = load i32, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 3), align 4
  store i32 %66, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([10 x %struct._GimpParam], [10 x %struct._GimpParam]* @run.values, i32 0, i64 5, i32 1) to i32*), align 4
  br label %do.end.134

do.end.134:                                       ; preds = %do.body.133
  br label %do.body.135

do.body.135:                                      ; preds = %do.end.134
  store i32 0, i32* getelementptr inbounds ([10 x %struct._GimpParam], [10 x %struct._GimpParam]* @run.values, i32 0, i64 6, i32 0), align 4
  %67 = load i32, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 4), align 4
  store i32 %67, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([10 x %struct._GimpParam], [10 x %struct._GimpParam]* @run.values, i32 0, i64 6, i32 1) to i32*), align 4
  br label %do.end.136

do.end.136:                                       ; preds = %do.body.135
  br label %do.body.137

do.body.137:                                      ; preds = %do.end.136
  store i32 0, i32* getelementptr inbounds ([10 x %struct._GimpParam], [10 x %struct._GimpParam]* @run.values, i32 0, i64 7, i32 0), align 4
  %68 = load i32, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 5), align 4
  store i32 %68, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([10 x %struct._GimpParam], [10 x %struct._GimpParam]* @run.values, i32 0, i64 7, i32 1) to i32*), align 4
  br label %do.end.138

do.end.138:                                       ; preds = %do.body.137
  br label %do.body.139

do.body.139:                                      ; preds = %do.end.138
  store i32 0, i32* getelementptr inbounds ([10 x %struct._GimpParam], [10 x %struct._GimpParam]* @run.values, i32 0, i64 8, i32 0), align 4
  %69 = load i32, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 6), align 4
  store i32 %69, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([10 x %struct._GimpParam], [10 x %struct._GimpParam]* @run.values, i32 0, i64 8, i32 1) to i32*), align 4
  br label %do.end.140

do.end.140:                                       ; preds = %do.body.139
  br label %do.body.141

do.body.141:                                      ; preds = %do.end.140
  store i32 0, i32* getelementptr inbounds ([10 x %struct._GimpParam], [10 x %struct._GimpParam]* @run.values, i32 0, i64 9, i32 0), align 4
  %70 = load i32, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 7), align 4
  store i32 %70, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([10 x %struct._GimpParam], [10 x %struct._GimpParam]* @run.values, i32 0, i64 9, i32 1) to i32*), align 4
  br label %do.end.142

do.end.142:                                       ; preds = %do.body.141
  br label %if.end.182

if.else.143:                                      ; preds = %if.else.120
  %71 = load i8*, i8** %name.addr, align 8
  %call144 = call i32 @strcmp(i8* %71, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.51, i32 0, i32 0)) #9
  %cmp145 = icmp eq i32 %call144, 0
  br i1 %cmp145, label %if.then.147, label %if.else.180

if.then.147:                                      ; preds = %if.else.143
  %72 = load i32, i32* %nparams.addr, align 4
  %cmp148 = icmp eq i32 %72, 9
  br i1 %cmp148, label %if.then.150, label %if.else.178

if.then.150:                                      ; preds = %if.then.147
  %73 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx151 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %73, i64 0
  %data152 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx151, i32 0, i32 1
  %d_int32153 = bitcast %union._GimpParamData* %data152 to i32*
  %74 = load i32, i32* %d_int32153, align 4
  store i32 %74, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 0), align 4
  %75 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx154 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %75, i64 1
  %data155 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx154, i32 0, i32 1
  %d_int32156 = bitcast %union._GimpParamData* %data155 to i32*
  %76 = load i32, i32* %d_int32156, align 4
  store i32 %76, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 8), align 4
  %77 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx157 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %77, i64 2
  %data158 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx157, i32 0, i32 1
  %d_int32159 = bitcast %union._GimpParamData* %data158 to i32*
  %78 = load i32, i32* %d_int32159, align 4
  store i32 %78, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 1), align 4
  %79 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx160 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %79, i64 3
  %data161 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx160, i32 0, i32 1
  %d_int32162 = bitcast %union._GimpParamData* %data161 to i32*
  %80 = load i32, i32* %d_int32162, align 4
  store i32 %80, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 2), align 4
  %81 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx163 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %81, i64 4
  %data164 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx163, i32 0, i32 1
  %d_int32165 = bitcast %union._GimpParamData* %data164 to i32*
  %82 = load i32, i32* %d_int32165, align 4
  store i32 %82, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 3), align 4
  %83 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx166 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %83, i64 5
  %data167 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx166, i32 0, i32 1
  %d_int32168 = bitcast %union._GimpParamData* %data167 to i32*
  %84 = load i32, i32* %d_int32168, align 4
  store i32 %84, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 4), align 4
  %85 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx169 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %85, i64 6
  %data170 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx169, i32 0, i32 1
  %d_int32171 = bitcast %union._GimpParamData* %data170 to i32*
  %86 = load i32, i32* %d_int32171, align 4
  store i32 %86, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 5), align 4
  %87 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx172 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %87, i64 7
  %data173 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx172, i32 0, i32 1
  %d_int32174 = bitcast %union._GimpParamData* %data173 to i32*
  %88 = load i32, i32* %d_int32174, align 4
  store i32 %88, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 6), align 4
  %89 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx175 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %89, i64 8
  %data176 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx175, i32 0, i32 1
  %d_int32177 = bitcast %union._GimpParamData* %data176 to i32*
  %90 = load i32, i32* %d_int32177, align 4
  store i32 %90, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 7), align 4
  call void @save_defaults()
  br label %if.end.179

if.else.178:                                      ; preds = %if.then.147
  store i32 1, i32* %status, align 4
  br label %if.end.179

if.end.179:                                       ; preds = %if.else.178, %if.then.150
  br label %if.end.181

if.else.180:                                      ; preds = %if.else.143
  store i32 1, i32* %status, align 4
  br label %if.end.181

if.end.181:                                       ; preds = %if.else.180, %if.end.179
  br label %if.end.182

if.end.182:                                       ; preds = %if.end.181, %do.end.142
  br label %if.end.183

if.end.183:                                       ; preds = %if.end.182, %if.end.119
  br label %if.end.184

if.end.184:                                       ; preds = %if.end.183, %if.end
  %91 = load i32, i32* %status, align 4
  %cmp185 = icmp ne i32 %91, 3
  br i1 %cmp185, label %land.lhs.true.187, label %if.end.190

land.lhs.true.187:                                ; preds = %if.end.184
  %92 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool188 = icmp ne %struct._GError* %92, null
  br i1 %tobool188, label %if.then.189, label %if.end.190

if.then.189:                                      ; preds = %land.lhs.true.187
  %93 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %93, align 4
  store i32 4, i32* getelementptr inbounds ([10 x %struct._GimpParam], [10 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %94 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %94, i32 0, i32 2
  %95 = load i8*, i8** %message, align 8
  store i8* %95, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([10 x %struct._GimpParam], [10 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i8**), align 8
  br label %if.end.190

if.end.190:                                       ; preds = %if.then.189, %land.lhs.true.187, %if.end.184
  %96 = load i32, i32* %status, align 4
  store i32 %96, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([10 x %struct._GimpParam], [10 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

return:                                           ; preds = %if.end.190, %if.then.36
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

declare i32 @gimp_register_magic_load_handler(i8*, i8*, i8*, i8*) #1

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

; Function Attrs: nounwind uwtable
define internal i32 @load_image(i8* %filename, i32 %interactive, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %interactive.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %i = alloca i32, align 4
  %trns = alloca i32, align 4
  %bpp = alloca i32, align 4
  %image_type = alloca i32, align 4
  %layer_type = alloca i32, align 4
  %empty = alloca i32, align 4
  %num_passes = alloca i32, align 4
  %pass = alloca i32, align 4
  %tile_height = alloca i32, align 4
  %begin = alloca i32, align 4
  %end = alloca i32, align 4
  %num = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %image = alloca i32, align 4
  %layer = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %pp = alloca %struct.png_struct_def*, align 8
  %info = alloca %struct.png_info_def*, align 8
  %pixels = alloca i8**, align 8
  %pixel = alloca i8*, align 8
  %alpha = alloca [256 x i8], align 16
  %alpha_ptr = alloca i8*, align 8
  %error_data = alloca %struct.read_error_data, align 8
  %text = alloca %struct.png_text_struct*, align 8
  %num_texts = alloca i32, align 4
  %parasite = alloca %struct._GimpParasite*, align 8
  %buf = alloca [39 x i8], align 16
  %gamma = alloca double, align 8
  %offset_x = alloca i32, align 4
  %offset_y = alloca i32, align 4
  %xres = alloca i32, align 4
  %yres = alloca i32, align 4
  %unit_type = alloca i32, align 4
  %image_xres = alloca double, align 8
  %image_yres = alloca double, align 8
  %palette = alloca %struct.png_color_struct*, align 8
  %num_palette = alloca i32, align 4
  %comment = alloca i8*, align 8
  %parasite332 = alloca %struct._GimpParasite*, align 8
  %proflen = alloca i32, align 4
  %profname = alloca i8*, align 8
  %profile = alloca i8*, align 8
  %profcomp = alloca i32, align 4
  %parasite343 = alloca %struct._GimpParasite*, align 8
  %tmp = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %interactive, i32* %interactive.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store volatile i32 -1, i32* %image, align 4
  %call = call noalias %struct.png_struct_def* @png_create_read_struct(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i8* null, void (%struct.png_struct_def*, i8*)* null, void (%struct.png_struct_def*, i8*)* null)
  store %struct.png_struct_def* %call, %struct.png_struct_def** %pp, align 8
  %0 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %tobool = icmp ne %struct.png_struct_def* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.59, i32 0, i32 0)) #7
  %2 = load i8*, i8** %filename.addr, align 8
  %call2 = call i8* @gimp_filename_to_utf8(i8* %2)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %1, i32 0, i32 0, i8* %call1, i8* %call2)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %call3 = call noalias %struct.png_info_def* @png_create_info_struct(%struct.png_struct_def* %3)
  store %struct.png_info_def* %call3, %struct.png_info_def** %info, align 8
  %4 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %call4 = call [1 x %struct.__jmp_buf_tag]* @png_set_longjmp_fn(%struct.png_struct_def* %4, void (%struct.__jmp_buf_tag*, i32)* @longjmp, i64 200)
  %arraydecay = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %call4, i32 0, i32 0
  %call5 = call i32 @_setjmp(%struct.__jmp_buf_tag* %arraydecay) #10
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.11

if.then.7:                                        ; preds = %if.end
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call8 = call i32 @g_file_error_quark()
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.60, i32 0, i32 0)) #7
  %6 = load i8*, i8** %filename.addr, align 8
  %call10 = call i8* @gimp_filename_to_utf8(i8* %6)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %5, i32 %call8, i32 24, i8* %call9, i8* %call10)
  %7 = load volatile i32, i32* %image, align 4
  store i32 %7, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end
  %8 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  call void @png_set_benign_errors(%struct.png_struct_def* %8, i32 1)
  %9 = load i8*, i8** %filename.addr, align 8
  %call12 = call %struct._IO_FILE* @fopen(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0))
  store %struct._IO_FILE* %call12, %struct._IO_FILE** %fp, align 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp = icmp eq %struct._IO_FILE* %10, null
  br i1 %cmp, label %if.then.13, label %if.end.21

if.then.13:                                       ; preds = %if.end.11
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call14 = call i32 @g_file_error_quark()
  %call15 = call i32* @__errno_location() #8
  %12 = load i32, i32* %call15, align 4
  %call16 = call i32 @g_file_error_from_errno(i32 %12)
  %call17 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.62, i32 0, i32 0)) #7
  %13 = load i8*, i8** %filename.addr, align 8
  %call18 = call i8* @gimp_filename_to_utf8(i8* %13)
  %call19 = call i32* @__errno_location() #8
  %14 = load i32, i32* %call19, align 4
  %call20 = call i8* @g_strerror(i32 %14) #8
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %11, i32 %call14, i32 %call16, i8* %call17, i8* %call18, i8* %call20)
  store i32 -1, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.end.11
  %15 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  call void @png_init_io(%struct.png_struct_def* %15, %struct._IO_FILE* %16)
  %17 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  call void @png_set_compression_buffer_size(%struct.png_struct_def* %17, i64 512)
  %call22 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.63, i32 0, i32 0)) #7
  %18 = load i8*, i8** %filename.addr, align 8
  %call23 = call i8* @gimp_filename_to_utf8(i8* %18)
  %call24 = call i32 (i8*, ...) @gimp_progress_init_printf(i8* %call22, i8* %call23)
  %19 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %20 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  call void @png_read_info(%struct.png_struct_def* %19, %struct.png_info_def* %20)
  %21 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %22 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %call25 = call zeroext i8 @png_get_bit_depth(%struct.png_struct_def* %21, %struct.png_info_def* %22)
  %conv = zext i8 %call25 to i32
  %cmp26 = icmp eq i32 %conv, 16
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.21
  %23 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  call void @png_set_strip_16(%struct.png_struct_def* %23)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.end.21
  %24 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %25 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %call30 = call zeroext i8 @png_get_color_type(%struct.png_struct_def* %24, %struct.png_info_def* %25)
  %conv31 = zext i8 %call30 to i32
  %cmp32 = icmp eq i32 %conv31, 0
  br i1 %cmp32, label %land.lhs.true, label %if.end.39

land.lhs.true:                                    ; preds = %if.end.29
  %26 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %27 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %call34 = call zeroext i8 @png_get_bit_depth(%struct.png_struct_def* %26, %struct.png_info_def* %27)
  %conv35 = zext i8 %call34 to i32
  %cmp36 = icmp slt i32 %conv35, 8
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %land.lhs.true
  %28 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  call void @png_set_expand(%struct.png_struct_def* %28)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %land.lhs.true, %if.end.29
  %29 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %30 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %call40 = call zeroext i8 @png_get_color_type(%struct.png_struct_def* %29, %struct.png_info_def* %30)
  %conv41 = zext i8 %call40 to i32
  %cmp42 = icmp eq i32 %conv41, 3
  br i1 %cmp42, label %land.lhs.true.44, label %if.end.50

land.lhs.true.44:                                 ; preds = %if.end.39
  %31 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %32 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %call45 = call zeroext i8 @png_get_bit_depth(%struct.png_struct_def* %31, %struct.png_info_def* %32)
  %conv46 = zext i8 %call45 to i32
  %cmp47 = icmp slt i32 %conv46, 8
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %land.lhs.true.44
  %33 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  call void @png_set_packing(%struct.png_struct_def* %33)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %land.lhs.true.44, %if.end.39
  %34 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %35 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %call51 = call zeroext i8 @png_get_color_type(%struct.png_struct_def* %34, %struct.png_info_def* %35)
  %conv52 = zext i8 %call51 to i32
  %cmp53 = icmp ne i32 %conv52, 3
  br i1 %cmp53, label %land.lhs.true.55, label %if.end.59

land.lhs.true.55:                                 ; preds = %if.end.50
  %36 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %37 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %call56 = call i32 @png_get_valid(%struct.png_struct_def* %36, %struct.png_info_def* %37, i32 16)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %land.lhs.true.55
  %38 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  call void @png_set_expand(%struct.png_struct_def* %38)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %land.lhs.true.55, %if.end.50
  %39 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %call60 = call i32 @png_set_interlace_handling(%struct.png_struct_def* %39)
  store i32 %call60, i32* %num_passes, align 4
  %40 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %41 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %call61 = call i32 @png_get_valid(%struct.png_struct_def* %40, %struct.png_info_def* %41, i32 16)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %land.lhs.true.63, label %if.else

land.lhs.true.63:                                 ; preds = %if.end.59
  %42 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %43 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %call64 = call zeroext i8 @png_get_color_type(%struct.png_struct_def* %42, %struct.png_info_def* %43)
  %conv65 = zext i8 %call64 to i32
  %cmp66 = icmp eq i32 %conv65, 3
  br i1 %cmp66, label %if.then.68, label %if.else

if.then.68:                                       ; preds = %land.lhs.true.63
  %44 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %45 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %call69 = call i32 @png_get_tRNS(%struct.png_struct_def* %44, %struct.png_info_def* %45, i8** %alpha_ptr, i32* %num, %struct.png_color_16_struct** null)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.68
  %46 = load i32, i32* %i, align 4
  %47 = load i32, i32* %num, align 4
  %cmp70 = icmp slt i32 %46, %47
  br i1 %cmp70, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %48 = load i32, i32* %i, align 4
  %idxprom = sext i32 %48 to i64
  %49 = load i8*, i8** %alpha_ptr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %49, i64 %idxprom
  %50 = load i8, i8* %arrayidx, align 1
  %51 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %51 to i64
  %arrayidx73 = getelementptr inbounds [256 x i8], [256 x i8]* %alpha, i32 0, i64 %idxprom72
  store i8 %50, i8* %arrayidx73, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %52 = load i32, i32* %i, align 4
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %53 = load i32, i32* %num, align 4
  store i32 %53, i32* %i, align 4
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.80, %for.end
  %54 = load i32, i32* %i, align 4
  %cmp75 = icmp slt i32 %54, 256
  br i1 %cmp75, label %for.body.77, label %for.end.82

for.body.77:                                      ; preds = %for.cond.74
  %55 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %55 to i64
  %arrayidx79 = getelementptr inbounds [256 x i8], [256 x i8]* %alpha, i32 0, i64 %idxprom78
  store i8 -1, i8* %arrayidx79, align 1
  br label %for.inc.80

for.inc.80:                                       ; preds = %for.body.77
  %56 = load i32, i32* %i, align 4
  %inc81 = add nsw i32 %56, 1
  store i32 %inc81, i32* %i, align 4
  br label %for.cond.74

for.end.82:                                       ; preds = %for.cond.74
  store i32 1, i32* %trns, align 4
  br label %if.end.83

if.else:                                          ; preds = %land.lhs.true.63, %if.end.59
  store i32 0, i32* %trns, align 4
  br label %if.end.83

if.end.83:                                        ; preds = %if.else, %for.end.82
  %57 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %58 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  call void @png_read_update_info(%struct.png_struct_def* %57, %struct.png_info_def* %58)
  %59 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %60 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %call84 = call zeroext i8 @png_get_color_type(%struct.png_struct_def* %59, %struct.png_info_def* %60)
  %conv85 = zext i8 %call84 to i32
  switch i32 %conv85, label %sw.default [
    i32 2, label %sw.bb
    i32 6, label %sw.bb.86
    i32 0, label %sw.bb.87
    i32 4, label %sw.bb.88
    i32 3, label %sw.bb.89
  ]

sw.bb:                                            ; preds = %if.end.83
  store i32 3, i32* %bpp, align 4
  store i32 0, i32* %image_type, align 4
  store i32 0, i32* %layer_type, align 4
  br label %sw.epilog

sw.bb.86:                                         ; preds = %if.end.83
  store i32 4, i32* %bpp, align 4
  store i32 0, i32* %image_type, align 4
  store i32 1, i32* %layer_type, align 4
  br label %sw.epilog

sw.bb.87:                                         ; preds = %if.end.83
  store i32 1, i32* %bpp, align 4
  store i32 1, i32* %image_type, align 4
  store i32 2, i32* %layer_type, align 4
  br label %sw.epilog

sw.bb.88:                                         ; preds = %if.end.83
  store i32 2, i32* %bpp, align 4
  store i32 1, i32* %image_type, align 4
  store i32 3, i32* %layer_type, align 4
  br label %sw.epilog

sw.bb.89:                                         ; preds = %if.end.83
  store i32 1, i32* %bpp, align 4
  store i32 2, i32* %image_type, align 4
  store i32 4, i32* %layer_type, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.83
  %61 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call90 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.64, i32 0, i32 0)) #7
  %62 = load i8*, i8** %filename.addr, align 8
  %call91 = call i8* @gimp_filename_to_utf8(i8* %62)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %61, i32 0, i32 0, i8* %call90, i8* %call91)
  store i32 -1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.89, %sw.bb.88, %sw.bb.87, %sw.bb.86, %sw.bb
  %63 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %64 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %call92 = call i32 @png_get_image_width(%struct.png_struct_def* %63, %struct.png_info_def* %64)
  %65 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %66 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %call93 = call i32 @png_get_image_height(%struct.png_struct_def* %65, %struct.png_info_def* %66)
  %67 = load i32, i32* %image_type, align 4
  %call94 = call i32 @gimp_image_new(i32 %call92, i32 %call93, i32 %67)
  store volatile i32 %call94, i32* %image, align 4
  %68 = load volatile i32, i32* %image, align 4
  %cmp95 = icmp eq i32 %68, -1
  br i1 %cmp95, label %if.then.97, label %if.end.101

if.then.97:                                       ; preds = %sw.epilog
  %69 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call98 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.65, i32 0, i32 0)) #7
  %70 = load i8*, i8** %filename.addr, align 8
  %call99 = call i8* @gimp_filename_to_utf8(i8* %70)
  %call100 = call i8* @gimp_get_pdb_error()
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %69, i32 0, i32 0, i8* %call98, i8* %call99, i8* %call100)
  store i32 -1, i32* %retval
  br label %return

if.end.101:                                       ; preds = %sw.epilog
  %71 = load volatile i32, i32* %image, align 4
  %call102 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66, i32 0, i32 0)) #7
  %72 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %73 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %call103 = call i32 @png_get_image_width(%struct.png_struct_def* %72, %struct.png_info_def* %73)
  %74 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %75 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %call104 = call i32 @png_get_image_height(%struct.png_struct_def* %74, %struct.png_info_def* %75)
  %76 = load i32, i32* %layer_type, align 4
  %call105 = call i32 @gimp_layer_new(i32 %71, i8* %call102, i32 %call103, i32 %call104, i32 %76, double 1.000000e+02, i32 0)
  store i32 %call105, i32* %layer, align 4
  %77 = load volatile i32, i32* %image, align 4
  %78 = load i32, i32* %layer, align 4
  %call106 = call i32 @gimp_image_insert_layer(i32 %77, i32 %78, i32 -1, i32 0)
  %79 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %80 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %call107 = call i32 @png_get_valid(%struct.png_struct_def* %79, %struct.png_info_def* %80, i32 1)
  %tobool108 = icmp ne i32 %call107, 0
  br i1 %tobool108, label %if.then.109, label %if.end.119

if.then.109:                                      ; preds = %if.end.101
  %81 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %82 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %call110 = call i32 @png_get_gAMA(%struct.png_struct_def* %81, %struct.png_info_def* %82, double* %gamma)
  %arraydecay111 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %83 = load double, double* %gamma, align 8
  %call112 = call i8* @g_ascii_dtostr(i8* %arraydecay111, i32 39, double %83)
  %arraydecay113 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %call114 = call i64 @strlen(i8* %arraydecay113) #9
  %add = add i64 %call114, 1
  %conv115 = trunc i64 %add to i32
  %arraydecay116 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %call117 = call %struct._GimpParasite* @gimp_parasite_new(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0), i32 1, i32 %conv115, i8* %arraydecay116)
  store %struct._GimpParasite* %call117, %struct._GimpParasite** %parasite, align 8
  %84 = load volatile i32, i32* %image, align 4
  %85 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %call118 = call i32 @gimp_image_attach_parasite(i32 %84, %struct._GimpParasite* %85)
  %86 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %86)
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.109, %if.end.101
  %87 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %88 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %call120 = call i32 @png_get_valid(%struct.png_struct_def* %87, %struct.png_info_def* %88, i32 256)
  %tobool121 = icmp ne i32 %call120, 0
  br i1 %tobool121, label %if.then.122, label %if.end.146

if.then.122:                                      ; preds = %if.end.119
  %89 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %90 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %call123 = call i32 @png_get_x_offset_pixels(%struct.png_struct_def* %89, %struct.png_info_def* %90)
  store i32 %call123, i32* %offset_x, align 4
  %91 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %92 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %call124 = call i32 @png_get_y_offset_pixels(%struct.png_struct_def* %91, %struct.png_info_def* %92)
  store i32 %call124, i32* %offset_y, align 4
  %93 = load i32, i32* %interactive.addr, align 4
  %tobool125 = icmp ne i32 %93, 0
  br i1 %tobool125, label %if.else.128, label %if.then.126

if.then.126:                                      ; preds = %if.then.122
  %94 = load i32, i32* %layer, align 4
  %95 = load i32, i32* %offset_x, align 4
  %96 = load i32, i32* %offset_y, align 4
  %call127 = call i32 @gimp_layer_set_offsets(i32 %94, i32 %95, i32 %96)
  br label %if.end.145

if.else.128:                                      ; preds = %if.then.122
  %97 = load i32, i32* %offset_x, align 4
  %98 = load i32, i32* %offset_y, align 4
  %call129 = call i32 @offsets_dialog(i32 %97, i32 %98)
  %tobool130 = icmp ne i32 %call129, 0
  br i1 %tobool130, label %if.then.131, label %if.end.144

if.then.131:                                      ; preds = %if.else.128
  %99 = load i32, i32* %layer, align 4
  %100 = load i32, i32* %offset_x, align 4
  %101 = load i32, i32* %offset_y, align 4
  %call132 = call i32 @gimp_layer_set_offsets(i32 %99, i32 %100, i32 %101)
  %102 = load i32, i32* %offset_x, align 4
  %call133 = call i32 @abs(i32 %102) #8
  %103 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %104 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %call134 = call i32 @png_get_image_width(%struct.png_struct_def* %103, %struct.png_info_def* %104)
  %cmp135 = icmp ugt i32 %call133, %call134
  br i1 %cmp135, label %if.then.141, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.131
  %105 = load i32, i32* %offset_y, align 4
  %call137 = call i32 @abs(i32 %105) #8
  %106 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %107 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %call138 = call i32 @png_get_image_height(%struct.png_struct_def* %106, %struct.png_info_def* %107)
  %cmp139 = icmp ugt i32 %call137, %call138
  br i1 %cmp139, label %if.then.141, label %if.end.143

if.then.141:                                      ; preds = %lor.lhs.false, %if.then.131
  %call142 = call i8* @gettext(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.68, i32 0, i32 0)) #7
  call void (i8*, ...) @g_message(i8* %call142)
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.141, %lor.lhs.false
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.143, %if.else.128
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.144, %if.then.126
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.145, %if.end.119
  %108 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %109 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %call147 = call i32 @png_get_valid(%struct.png_struct_def* %108, %struct.png_info_def* %109, i32 128)
  %tobool148 = icmp ne i32 %call147, 0
  br i1 %tobool148, label %if.then.149, label %if.end.182

if.then.149:                                      ; preds = %if.end.146
  %110 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %111 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %call150 = call i32 @png_get_pHYs(%struct.png_struct_def* %110, %struct.png_info_def* %111, i32* %xres, i32* %yres, i32* %unit_type)
  %tobool151 = icmp ne i32 %call150, 0
  br i1 %tobool151, label %land.lhs.true.152, label %if.end.181

land.lhs.true.152:                                ; preds = %if.then.149
  %112 = load i32, i32* %xres, align 4
  %cmp153 = icmp ugt i32 %112, 0
  br i1 %cmp153, label %land.lhs.true.155, label %if.end.181

land.lhs.true.155:                                ; preds = %land.lhs.true.152
  %113 = load i32, i32* %yres, align 4
  %cmp156 = icmp ugt i32 %113, 0
  br i1 %cmp156, label %if.then.158, label %if.end.181

if.then.158:                                      ; preds = %land.lhs.true.155
  %114 = load i32, i32* %unit_type, align 4
  switch i32 %114, label %sw.default.179 [
    i32 0, label %sw.bb.159
    i32 1, label %sw.bb.173
  ]

sw.bb.159:                                        ; preds = %if.then.158
  %115 = load volatile i32, i32* %image, align 4
  %call160 = call i32 @gimp_image_get_resolution(i32 %115, double* %image_xres, double* %image_yres)
  %116 = load i32, i32* %xres, align 4
  %117 = load i32, i32* %yres, align 4
  %cmp161 = icmp ugt i32 %116, %117
  br i1 %cmp161, label %if.then.163, label %if.else.166

if.then.163:                                      ; preds = %sw.bb.159
  %118 = load double, double* %image_yres, align 8
  %119 = load i32, i32* %xres, align 4
  %conv164 = uitofp i32 %119 to double
  %mul = fmul double %118, %conv164
  %120 = load i32, i32* %yres, align 4
  %conv165 = uitofp i32 %120 to double
  %div = fdiv double %mul, %conv165
  store double %div, double* %image_xres, align 8
  br label %if.end.171

if.else.166:                                      ; preds = %sw.bb.159
  %121 = load double, double* %image_xres, align 8
  %122 = load i32, i32* %yres, align 4
  %conv167 = uitofp i32 %122 to double
  %mul168 = fmul double %121, %conv167
  %123 = load i32, i32* %xres, align 4
  %conv169 = uitofp i32 %123 to double
  %div170 = fdiv double %mul168, %conv169
  store double %div170, double* %image_yres, align 8
  br label %if.end.171

if.end.171:                                       ; preds = %if.else.166, %if.then.163
  %124 = load volatile i32, i32* %image, align 4
  %125 = load double, double* %image_xres, align 8
  %126 = load double, double* %image_yres, align 8
  %call172 = call i32 @gimp_image_set_resolution(i32 %124, double %125, double %126)
  br label %sw.epilog.180

sw.bb.173:                                        ; preds = %if.then.158
  %127 = load volatile i32, i32* %image, align 4
  %128 = load i32, i32* %xres, align 4
  %conv174 = uitofp i32 %128 to double
  %mul175 = fmul double %conv174, 2.540000e-02
  %129 = load i32, i32* %yres, align 4
  %conv176 = uitofp i32 %129 to double
  %mul177 = fmul double %conv176, 2.540000e-02
  %call178 = call i32 @gimp_image_set_resolution(i32 %127, double %mul175, double %mul177)
  br label %sw.epilog.180

sw.default.179:                                   ; preds = %if.then.158
  br label %sw.epilog.180

sw.epilog.180:                                    ; preds = %sw.default.179, %sw.bb.173, %if.end.171
  br label %if.end.181

if.end.181:                                       ; preds = %sw.epilog.180, %land.lhs.true.155, %land.lhs.true.152, %if.then.149
  br label %if.end.182

if.end.182:                                       ; preds = %if.end.181, %if.end.146
  %130 = load volatile i32, i32* %image, align 4
  %131 = load i8*, i8** %filename.addr, align 8
  %call183 = call i32 @gimp_image_set_filename(i32 %130, i8* %131)
  store i32 0, i32* %empty, align 4
  %132 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %133 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %call184 = call zeroext i8 @png_get_color_type(%struct.png_struct_def* %132, %struct.png_info_def* %133)
  %conv185 = zext i8 %call184 to i32
  %and = and i32 %conv185, 1
  %tobool186 = icmp ne i32 %and, 0
  br i1 %tobool186, label %if.then.187, label %if.end.212

if.then.187:                                      ; preds = %if.end.182
  %134 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %135 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %call188 = call i32 @png_get_PLTE(%struct.png_struct_def* %134, %struct.png_info_def* %135, %struct.png_color_struct** %palette, i32* %num_palette)
  %136 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %137 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %call189 = call i32 @png_get_valid(%struct.png_struct_def* %136, %struct.png_info_def* %137, i32 16)
  %tobool190 = icmp ne i32 %call189, 0
  br i1 %tobool190, label %if.then.191, label %if.else.209

if.then.191:                                      ; preds = %if.then.187
  store i32 0, i32* %empty, align 4
  br label %for.cond.192

for.cond.192:                                     ; preds = %for.inc.201, %if.then.191
  %138 = load i32, i32* %empty, align 4
  %cmp193 = icmp slt i32 %138, 256
  br i1 %cmp193, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.192
  %139 = load i32, i32* %empty, align 4
  %idxprom195 = sext i32 %139 to i64
  %arrayidx196 = getelementptr inbounds [256 x i8], [256 x i8]* %alpha, i32 0, i64 %idxprom195
  %140 = load i8, i8* %arrayidx196, align 1
  %conv197 = zext i8 %140 to i32
  %cmp198 = icmp eq i32 %conv197, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.192
  %141 = phi i1 [ false, %for.cond.192 ], [ %cmp198, %land.rhs ]
  br i1 %141, label %for.body.200, label %for.end.203

for.body.200:                                     ; preds = %land.end
  br label %for.inc.201

for.inc.201:                                      ; preds = %for.body.200
  %142 = load i32, i32* %empty, align 4
  %inc202 = add nsw i32 %142, 1
  store i32 %inc202, i32* %empty, align 4
  br label %for.cond.192

for.end.203:                                      ; preds = %land.end
  %143 = load i32, i32* %empty, align 4
  %144 = load i32, i32* %num_palette, align 4
  %sub = sub nsw i32 %144, 1
  %cmp204 = icmp slt i32 %143, %sub
  br i1 %cmp204, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end.203
  %145 = load i32, i32* %empty, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.end.203
  %146 = load i32, i32* %num_palette, align 4
  %sub206 = sub nsw i32 %146, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %145, %cond.true ], [ %sub206, %cond.false ]
  store i32 %cond, i32* %empty, align 4
  %147 = load volatile i32, i32* %image, align 4
  %148 = load %struct.png_color_struct*, %struct.png_color_struct** %palette, align 8
  %149 = load i32, i32* %empty, align 4
  %idx.ext = sext i32 %149 to i64
  %add.ptr = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %148, i64 %idx.ext
  %150 = bitcast %struct.png_color_struct* %add.ptr to i8*
  %151 = load i32, i32* %num_palette, align 4
  %152 = load i32, i32* %empty, align 4
  %sub207 = sub nsw i32 %151, %152
  %call208 = call i32 @gimp_image_set_colormap(i32 %147, i8* %150, i32 %sub207)
  br label %if.end.211

if.else.209:                                      ; preds = %if.then.187
  %153 = load volatile i32, i32* %image, align 4
  %154 = load %struct.png_color_struct*, %struct.png_color_struct** %palette, align 8
  %155 = bitcast %struct.png_color_struct* %154 to i8*
  %156 = load i32, i32* %num_palette, align 4
  %call210 = call i32 @gimp_image_set_colormap(i32 %153, i8* %155, i32 %156)
  br label %if.end.211

if.end.211:                                       ; preds = %if.else.209, %cond.end
  br label %if.end.212

if.end.212:                                       ; preds = %if.end.211, %if.end.182
  %157 = load i32, i32* %layer, align 4
  %call213 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %157)
  store %struct._GimpDrawable* %call213, %struct._GimpDrawable** %drawable, align 8
  %158 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %159 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %159, i32 0, i32 1
  %160 = load i32, i32* %width, align 4
  %161 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %161, i32 0, i32 2
  %162 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %158, i32 0, i32 0, i32 %160, i32 %162, i32 1, i32 0)
  %call214 = call i32 @gimp_tile_height() #8
  store i32 %call214, i32* %tile_height, align 4
  %163 = load i32, i32* %tile_height, align 4
  %164 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %165 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %call215 = call i32 @png_get_image_width(%struct.png_struct_def* %164, %struct.png_info_def* %165)
  %mul216 = mul i32 %163, %call215
  %166 = load i32, i32* %bpp, align 4
  %mul217 = mul i32 %mul216, %166
  %conv218 = zext i32 %mul217 to i64
  %call219 = call noalias i8* @g_malloc0_n(i64 %conv218, i64 1)
  store i8* %call219, i8** %pixel, align 8
  %167 = load i32, i32* %tile_height, align 4
  %conv220 = sext i32 %167 to i64
  %call221 = call noalias i8* @g_malloc_n(i64 %conv220, i64 8)
  %168 = bitcast i8* %call221 to i8**
  store i8** %168, i8*** %pixels, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.222

for.cond.222:                                     ; preds = %for.inc.235, %if.end.212
  %169 = load i32, i32* %i, align 4
  %170 = load i32, i32* %tile_height, align 4
  %cmp223 = icmp slt i32 %169, %170
  br i1 %cmp223, label %for.body.225, label %for.end.237

for.body.225:                                     ; preds = %for.cond.222
  %171 = load i8*, i8** %pixel, align 8
  %172 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %173 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %call226 = call i32 @png_get_image_width(%struct.png_struct_def* %172, %struct.png_info_def* %173)
  %174 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %175 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %call227 = call zeroext i8 @png_get_channels(%struct.png_struct_def* %174, %struct.png_info_def* %175)
  %conv228 = zext i8 %call227 to i32
  %mul229 = mul i32 %call226, %conv228
  %176 = load i32, i32* %i, align 4
  %mul230 = mul i32 %mul229, %176
  %idx.ext231 = zext i32 %mul230 to i64
  %add.ptr232 = getelementptr inbounds i8, i8* %171, i64 %idx.ext231
  %177 = load i32, i32* %i, align 4
  %idxprom233 = sext i32 %177 to i64
  %178 = load i8**, i8*** %pixels, align 8
  %arrayidx234 = getelementptr inbounds i8*, i8** %178, i64 %idxprom233
  store i8* %add.ptr232, i8** %arrayidx234, align 8
  br label %for.inc.235

for.inc.235:                                      ; preds = %for.body.225
  %179 = load i32, i32* %i, align 4
  %inc236 = add nsw i32 %179, 1
  store i32 %inc236, i32* %i, align 4
  br label %for.cond.222

for.end.237:                                      ; preds = %for.cond.222
  %180 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable238 = getelementptr inbounds %struct.read_error_data, %struct.read_error_data* %error_data, i32 0, i32 2
  store %struct._GimpDrawable* %180, %struct._GimpDrawable** %drawable238, align 8
  %181 = load i8*, i8** %pixel, align 8
  %pixel239 = getelementptr inbounds %struct.read_error_data, %struct.read_error_data* %error_data, i32 0, i32 1
  store i8* %181, i8** %pixel239, align 8
  %182 = load i32, i32* %tile_height, align 4
  %tile_height240 = getelementptr inbounds %struct.read_error_data, %struct.read_error_data* %error_data, i32 0, i32 6
  store i32 %182, i32* %tile_height240, align 4
  %183 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %184 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %call241 = call i32 @png_get_image_width(%struct.png_struct_def* %183, %struct.png_info_def* %184)
  %width242 = getelementptr inbounds %struct.read_error_data, %struct.read_error_data* %error_data, i32 0, i32 3
  store i32 %call241, i32* %width242, align 4
  %185 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %186 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %call243 = call i32 @png_get_image_height(%struct.png_struct_def* %185, %struct.png_info_def* %186)
  %height244 = getelementptr inbounds %struct.read_error_data, %struct.read_error_data* %error_data, i32 0, i32 4
  store i32 %call243, i32* %height244, align 4
  %187 = load i32, i32* %bpp, align 4
  %bpp245 = getelementptr inbounds %struct.read_error_data, %struct.read_error_data* %error_data, i32 0, i32 5
  store i32 %187, i32* %bpp245, align 4
  %pixel_rgn246 = getelementptr inbounds %struct.read_error_data, %struct.read_error_data* %error_data, i32 0, i32 0
  store %struct._GimpPixelRgn* %pixel_rgn, %struct._GimpPixelRgn** %pixel_rgn246, align 8
  %188 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %189 = bitcast %struct.read_error_data* %error_data to i8*
  call void @png_set_error_fn(%struct.png_struct_def* %188, i8* %189, void (%struct.png_struct_def*, i8*)* @on_read_error, void (%struct.png_struct_def*, i8*)* null)
  store i32 0, i32* %pass, align 4
  br label %for.cond.247

for.cond.247:                                     ; preds = %for.inc.289, %for.end.237
  %190 = load i32, i32* %pass, align 4
  %191 = load i32, i32* %num_passes, align 4
  %cmp248 = icmp slt i32 %190, %191
  br i1 %cmp248, label %for.body.250, label %for.end.291

for.body.250:                                     ; preds = %for.cond.247
  store i32 0, i32* %begin, align 4
  %192 = load i32, i32* %tile_height, align 4
  store i32 %192, i32* %end, align 4
  br label %for.cond.251

for.cond.251:                                     ; preds = %for.inc.285, %for.body.250
  %193 = load i32, i32* %begin, align 4
  %194 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %195 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %call252 = call i32 @png_get_image_height(%struct.png_struct_def* %194, %struct.png_info_def* %195)
  %cmp253 = icmp ult i32 %193, %call252
  br i1 %cmp253, label %for.body.255, label %for.end.288

for.body.255:                                     ; preds = %for.cond.251
  %196 = load i32, i32* %end, align 4
  %197 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %198 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %call256 = call i32 @png_get_image_height(%struct.png_struct_def* %197, %struct.png_info_def* %198)
  %cmp257 = icmp ugt i32 %196, %call256
  br i1 %cmp257, label %if.then.259, label %if.end.261

if.then.259:                                      ; preds = %for.body.255
  %199 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %200 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %call260 = call i32 @png_get_image_height(%struct.png_struct_def* %199, %struct.png_info_def* %200)
  store i32 %call260, i32* %end, align 4
  br label %if.end.261

if.end.261:                                       ; preds = %if.then.259, %for.body.255
  %201 = load i32, i32* %end, align 4
  %202 = load i32, i32* %begin, align 4
  %sub262 = sub nsw i32 %201, %202
  store i32 %sub262, i32* %num, align 4
  %203 = load i32, i32* %pass, align 4
  %cmp263 = icmp ne i32 %203, 0
  br i1 %cmp263, label %if.then.265, label %if.end.267

if.then.265:                                      ; preds = %if.end.261
  %204 = load i8*, i8** %pixel, align 8
  %205 = load i32, i32* %begin, align 4
  %206 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width266 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %206, i32 0, i32 1
  %207 = load i32, i32* %width266, align 4
  %208 = load i32, i32* %num, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %204, i32 0, i32 %205, i32 %207, i32 %208)
  br label %if.end.267

if.end.267:                                       ; preds = %if.then.265, %if.end.261
  %209 = load i32, i32* %begin, align 4
  %begin268 = getelementptr inbounds %struct.read_error_data, %struct.read_error_data* %error_data, i32 0, i32 7
  store i32 %209, i32* %begin268, align 4
  %210 = load i32, i32* %end, align 4
  %end269 = getelementptr inbounds %struct.read_error_data, %struct.read_error_data* %error_data, i32 0, i32 8
  store i32 %210, i32* %end269, align 4
  %211 = load i32, i32* %num, align 4
  %num270 = getelementptr inbounds %struct.read_error_data, %struct.read_error_data* %error_data, i32 0, i32 9
  store i32 %211, i32* %num270, align 4
  %212 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %213 = load i8**, i8*** %pixels, align 8
  %214 = load i32, i32* %num, align 4
  call void @png_read_rows(%struct.png_struct_def* %212, i8** %213, i8** null, i32 %214)
  %215 = load i8*, i8** %pixel, align 8
  %216 = load i32, i32* %begin, align 4
  %217 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width271 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %217, i32 0, i32 1
  %218 = load i32, i32* %width271, align 4
  %219 = load i32, i32* %num, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %215, i32 0, i32 %216, i32 %218, i32 %219)
  %220 = load i8*, i8** %pixel, align 8
  %221 = load i32, i32* %tile_height, align 4
  %222 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %223 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %call272 = call i32 @png_get_image_width(%struct.png_struct_def* %222, %struct.png_info_def* %223)
  %mul273 = mul i32 %221, %call272
  %224 = load i32, i32* %bpp, align 4
  %mul274 = mul i32 %mul273, %224
  %conv275 = zext i32 %mul274 to i64
  call void @llvm.memset.p0i8.i64(i8* %220, i8 0, i64 %conv275, i32 1, i1 false)
  %225 = load i32, i32* %pass, align 4
  %conv276 = sitofp i32 %225 to double
  %226 = load i32, i32* %end, align 4
  %conv277 = sitofp i32 %226 to double
  %227 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %228 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %call278 = call i32 @png_get_image_height(%struct.png_struct_def* %227, %struct.png_info_def* %228)
  %conv279 = uitofp i32 %call278 to double
  %div280 = fdiv double %conv277, %conv279
  %add281 = fadd double %conv276, %div280
  %229 = load i32, i32* %num_passes, align 4
  %conv282 = sitofp i32 %229 to double
  %div283 = fdiv double %add281, %conv282
  %call284 = call i32 @gimp_progress_update(double %div283)
  br label %for.inc.285

for.inc.285:                                      ; preds = %if.end.267
  %230 = load i32, i32* %tile_height, align 4
  %231 = load i32, i32* %begin, align 4
  %add286 = add nsw i32 %231, %230
  store i32 %add286, i32* %begin, align 4
  %232 = load i32, i32* %tile_height, align 4
  %233 = load i32, i32* %end, align 4
  %add287 = add nsw i32 %233, %232
  store i32 %add287, i32* %end, align 4
  br label %for.cond.251

for.end.288:                                      ; preds = %for.cond.251
  br label %for.inc.289

for.inc.289:                                      ; preds = %for.end.288
  %234 = load i32, i32* %pass, align 4
  %inc290 = add nsw i32 %234, 1
  store i32 %inc290, i32* %pass, align 4
  br label %for.cond.247

for.end.291:                                      ; preds = %for.cond.247
  %235 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  call void @png_set_error_fn(%struct.png_struct_def* %235, i8* null, void (%struct.png_struct_def*, i8*)* null, void (%struct.png_struct_def*, i8*)* null)
  %236 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %237 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  call void @png_read_end(%struct.png_struct_def* %236, %struct.png_info_def* %237)
  %238 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %239 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %call292 = call i32 @png_get_text(%struct.png_struct_def* %238, %struct.png_info_def* %239, %struct.png_text_struct** %text, i32* %num_texts)
  %tobool293 = icmp ne i32 %call292, 0
  br i1 %tobool293, label %if.then.294, label %if.end.339

if.then.294:                                      ; preds = %for.end.291
  store i8* null, i8** %comment, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.295

for.cond.295:                                     ; preds = %for.inc.324, %if.then.294
  %240 = load i32, i32* %i, align 4
  %241 = load i32, i32* %num_texts, align 4
  %cmp296 = icmp slt i32 %240, %241
  br i1 %cmp296, label %land.rhs.298, label %land.end.300

land.rhs.298:                                     ; preds = %for.cond.295
  %242 = load i8*, i8** %comment, align 8
  %tobool299 = icmp ne i8* %242, null
  %lnot = xor i1 %tobool299, true
  br label %land.end.300

land.end.300:                                     ; preds = %land.rhs.298, %for.cond.295
  %243 = phi i1 [ false, %for.cond.295 ], [ %lnot, %land.rhs.298 ]
  br i1 %243, label %for.body.301, label %for.end.326

for.body.301:                                     ; preds = %land.end.300
  %244 = load %struct.png_text_struct*, %struct.png_text_struct** %text, align 8
  %key = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %244, i32 0, i32 1
  %245 = load i8*, i8** %key, align 8
  %cmp302 = icmp eq i8* %245, null
  br i1 %cmp302, label %if.then.308, label %lor.lhs.false.304

lor.lhs.false.304:                                ; preds = %for.body.301
  %246 = load %struct.png_text_struct*, %struct.png_text_struct** %text, align 8
  %key305 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %246, i32 0, i32 1
  %247 = load i8*, i8** %key305, align 8
  %call306 = call i32 @strcmp(i8* %247, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0)) #9
  %tobool307 = icmp ne i32 %call306, 0
  br i1 %tobool307, label %if.then.308, label %if.end.309

if.then.308:                                      ; preds = %lor.lhs.false.304, %for.body.301
  br label %for.inc.324

if.end.309:                                       ; preds = %lor.lhs.false.304
  %248 = load %struct.png_text_struct*, %struct.png_text_struct** %text, align 8
  %text_length = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %248, i32 0, i32 3
  %249 = load i64, i64* %text_length, align 8
  %cmp310 = icmp ugt i64 %249, 0
  br i1 %cmp310, label %if.then.312, label %if.else.315

if.then.312:                                      ; preds = %if.end.309
  %250 = load %struct.png_text_struct*, %struct.png_text_struct** %text, align 8
  %text313 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %250, i32 0, i32 2
  %251 = load i8*, i8** %text313, align 8
  %call314 = call noalias i8* @g_convert(i8* %251, i64 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70, i32 0, i32 0), i64* null, i64* null, %struct._GError** null)
  store i8* %call314, i8** %comment, align 8
  br label %if.end.323

if.else.315:                                      ; preds = %if.end.309
  %252 = load %struct.png_text_struct*, %struct.png_text_struct** %text, align 8
  %text316 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %252, i32 0, i32 2
  %253 = load i8*, i8** %text316, align 8
  %call317 = call i32 @g_utf8_validate(i8* %253, i64 -1, i8** null)
  %tobool318 = icmp ne i32 %call317, 0
  br i1 %tobool318, label %if.then.319, label %if.end.322

if.then.319:                                      ; preds = %if.else.315
  %254 = load %struct.png_text_struct*, %struct.png_text_struct** %text, align 8
  %text320 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %254, i32 0, i32 2
  %255 = load i8*, i8** %text320, align 8
  %call321 = call noalias i8* @g_strdup(i8* %255)
  store i8* %call321, i8** %comment, align 8
  br label %if.end.322

if.end.322:                                       ; preds = %if.then.319, %if.else.315
  br label %if.end.323

if.end.323:                                       ; preds = %if.end.322, %if.then.312
  br label %for.inc.324

for.inc.324:                                      ; preds = %if.end.323, %if.then.308
  %256 = load i32, i32* %i, align 4
  %inc325 = add nsw i32 %256, 1
  store i32 %inc325, i32* %i, align 4
  %257 = load %struct.png_text_struct*, %struct.png_text_struct** %text, align 8
  %incdec.ptr = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %257, i32 1
  store %struct.png_text_struct* %incdec.ptr, %struct.png_text_struct** %text, align 8
  br label %for.cond.295

for.end.326:                                      ; preds = %land.end.300
  %258 = load i8*, i8** %comment, align 8
  %tobool327 = icmp ne i8* %258, null
  br i1 %tobool327, label %land.lhs.true.328, label %if.end.338

land.lhs.true.328:                                ; preds = %for.end.326
  %259 = load i8*, i8** %comment, align 8
  %260 = load i8, i8* %259, align 1
  %conv329 = sext i8 %260 to i32
  %tobool330 = icmp ne i32 %conv329, 0
  br i1 %tobool330, label %if.then.331, label %if.end.338

if.then.331:                                      ; preds = %land.lhs.true.328
  %261 = load i8*, i8** %comment, align 8
  %call333 = call i64 @strlen(i8* %261) #9
  %add334 = add i64 %call333, 1
  %conv335 = trunc i64 %add334 to i32
  %262 = load i8*, i8** %comment, align 8
  %call336 = call %struct._GimpParasite* @gimp_parasite_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.71, i32 0, i32 0), i32 1, i32 %conv335, i8* %262)
  store %struct._GimpParasite* %call336, %struct._GimpParasite** %parasite332, align 8
  %263 = load volatile i32, i32* %image, align 4
  %264 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite332, align 8
  %call337 = call i32 @gimp_image_attach_parasite(i32 %263, %struct._GimpParasite* %264)
  %265 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite332, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %265)
  br label %if.end.338

if.end.338:                                       ; preds = %if.then.331, %land.lhs.true.328, %for.end.326
  %266 = load i8*, i8** %comment, align 8
  call void @g_free(i8* %266)
  br label %if.end.339

if.end.339:                                       ; preds = %if.end.338, %for.end.291
  %267 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %268 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %call340 = call i32 @png_get_iCCP(%struct.png_struct_def* %267, %struct.png_info_def* %268, i8** %profname, i32* %profcomp, i8** %profile, i32* %proflen)
  %tobool341 = icmp ne i32 %call340, 0
  br i1 %tobool341, label %if.then.342, label %if.end.358

if.then.342:                                      ; preds = %if.end.339
  %269 = load i32, i32* %proflen, align 4
  %270 = load i8*, i8** %profile, align 8
  %call344 = call %struct._GimpParasite* @gimp_parasite_new(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.72, i32 0, i32 0), i32 3, i32 %269, i8* %270)
  store %struct._GimpParasite* %call344, %struct._GimpParasite** %parasite343, align 8
  %271 = load volatile i32, i32* %image, align 4
  %272 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite343, align 8
  %call345 = call i32 @gimp_image_attach_parasite(i32 %271, %struct._GimpParasite* %272)
  %273 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite343, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %273)
  %274 = load i8*, i8** %profname, align 8
  %tobool346 = icmp ne i8* %274, null
  br i1 %tobool346, label %if.then.347, label %if.end.357

if.then.347:                                      ; preds = %if.then.342
  %275 = load i8*, i8** %profname, align 8
  %276 = load i8*, i8** %profname, align 8
  %call348 = call i64 @strlen(i8* %276) #9
  %call349 = call noalias i8* @g_convert(i8* %275, i64 %call348, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), i64* null, i64* null, %struct._GError** null)
  store i8* %call349, i8** %tmp, align 8
  %277 = load i8*, i8** %tmp, align 8
  %tobool350 = icmp ne i8* %277, null
  br i1 %tobool350, label %if.then.351, label %if.end.356

if.then.351:                                      ; preds = %if.then.347
  %278 = load i8*, i8** %tmp, align 8
  %call352 = call i64 @strlen(i8* %278) #9
  %conv353 = trunc i64 %call352 to i32
  %279 = load i8*, i8** %tmp, align 8
  %call354 = call %struct._GimpParasite* @gimp_parasite_new(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.73, i32 0, i32 0), i32 3, i32 %conv353, i8* %279)
  store %struct._GimpParasite* %call354, %struct._GimpParasite** %parasite343, align 8
  %280 = load volatile i32, i32* %image, align 4
  %281 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite343, align 8
  %call355 = call i32 @gimp_image_attach_parasite(i32 %280, %struct._GimpParasite* %281)
  %282 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite343, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %282)
  %283 = load i8*, i8** %tmp, align 8
  call void @g_free(i8* %283)
  br label %if.end.356

if.end.356:                                       ; preds = %if.then.351, %if.then.347
  br label %if.end.357

if.end.357:                                       ; preds = %if.end.356, %if.then.342
  br label %if.end.358

if.end.358:                                       ; preds = %if.end.357, %if.end.339
  call void @png_destroy_read_struct(%struct.png_struct_def** %pp, %struct.png_info_def** %info, %struct.png_info_def** null)
  %284 = load i8*, i8** %pixel, align 8
  call void @g_free(i8* %284)
  %285 = load i8**, i8*** %pixels, align 8
  %286 = bitcast i8** %285 to i8*
  call void @g_free(i8* %286)
  %287 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %288 = bitcast %struct.png_struct_def* %287 to i8*
  call void @free(i8* %288) #7
  %289 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %290 = bitcast %struct.png_info_def* %289 to i8*
  call void @free(i8* %290) #7
  %291 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call359 = call i32 @fclose(%struct._IO_FILE* %291)
  %292 = load i32, i32* %trns, align 4
  %tobool360 = icmp ne i32 %292, 0
  br i1 %tobool360, label %if.then.361, label %if.end.413

if.then.361:                                      ; preds = %if.end.358
  %293 = load i32, i32* %layer, align 4
  %call362 = call i32 @gimp_layer_add_alpha(i32 %293)
  %294 = load i32, i32* %layer, align 4
  %call363 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %294)
  store %struct._GimpDrawable* %call363, %struct._GimpDrawable** %drawable, align 8
  %295 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %296 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width364 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %296, i32 0, i32 1
  %297 = load i32, i32* %width364, align 4
  %298 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height365 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %298, i32 0, i32 2
  %299 = load i32, i32* %height365, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %295, i32 0, i32 0, i32 %297, i32 %299, i32 1, i32 0)
  %300 = load i32, i32* %tile_height, align 4
  %301 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width366 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %301, i32 0, i32 1
  %302 = load i32, i32* %width366, align 4
  %mul367 = mul i32 %300, %302
  %mul368 = mul i32 %mul367, 2
  %conv369 = zext i32 %mul368 to i64
  %call370 = call noalias i8* @g_malloc_n(i64 %conv369, i64 1)
  store i8* %call370, i8** %pixel, align 8
  store i32 0, i32* %begin, align 4
  %303 = load i32, i32* %tile_height, align 4
  store i32 %303, i32* %end, align 4
  br label %for.cond.371

for.cond.371:                                     ; preds = %for.inc.409, %if.then.361
  %304 = load i32, i32* %begin, align 4
  %305 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height372 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %305, i32 0, i32 2
  %306 = load i32, i32* %height372, align 4
  %cmp373 = icmp ult i32 %304, %306
  br i1 %cmp373, label %for.body.375, label %for.end.412

for.body.375:                                     ; preds = %for.cond.371
  %307 = load i32, i32* %end, align 4
  %308 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height376 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %308, i32 0, i32 2
  %309 = load i32, i32* %height376, align 4
  %cmp377 = icmp ugt i32 %307, %309
  br i1 %cmp377, label %if.then.379, label %if.end.381

if.then.379:                                      ; preds = %for.body.375
  %310 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height380 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %310, i32 0, i32 2
  %311 = load i32, i32* %height380, align 4
  store i32 %311, i32* %end, align 4
  br label %if.end.381

if.end.381:                                       ; preds = %if.then.379, %for.body.375
  %312 = load i32, i32* %end, align 4
  %313 = load i32, i32* %begin, align 4
  %sub382 = sub nsw i32 %312, %313
  store i32 %sub382, i32* %num, align 4
  %314 = load i8*, i8** %pixel, align 8
  %315 = load i32, i32* %begin, align 4
  %316 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width383 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %316, i32 0, i32 1
  %317 = load i32, i32* %width383, align 4
  %318 = load i32, i32* %num, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %314, i32 0, i32 %315, i32 %317, i32 %318)
  store i32 0, i32* %i, align 4
  br label %for.cond.384

for.cond.384:                                     ; preds = %for.inc.405, %if.end.381
  %319 = load i32, i32* %i, align 4
  %320 = load i32, i32* %tile_height, align 4
  %321 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width385 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %321, i32 0, i32 1
  %322 = load i32, i32* %width385, align 4
  %mul386 = mul i32 %320, %322
  %cmp387 = icmp ult i32 %319, %mul386
  br i1 %cmp387, label %for.body.389, label %for.end.407

for.body.389:                                     ; preds = %for.cond.384
  %323 = load i32, i32* %i, align 4
  %mul390 = mul nsw i32 %323, 2
  %idxprom391 = sext i32 %mul390 to i64
  %324 = load i8*, i8** %pixel, align 8
  %arrayidx392 = getelementptr inbounds i8, i8* %324, i64 %idxprom391
  %325 = load i8, i8* %arrayidx392, align 1
  %idxprom393 = zext i8 %325 to i64
  %arrayidx394 = getelementptr inbounds [256 x i8], [256 x i8]* %alpha, i32 0, i64 %idxprom393
  %326 = load i8, i8* %arrayidx394, align 1
  %327 = load i32, i32* %i, align 4
  %mul395 = mul nsw i32 %327, 2
  %add396 = add nsw i32 %mul395, 1
  %idxprom397 = sext i32 %add396 to i64
  %328 = load i8*, i8** %pixel, align 8
  %arrayidx398 = getelementptr inbounds i8, i8* %328, i64 %idxprom397
  store i8 %326, i8* %arrayidx398, align 1
  %329 = load i32, i32* %empty, align 4
  %330 = load i32, i32* %i, align 4
  %mul399 = mul nsw i32 %330, 2
  %idxprom400 = sext i32 %mul399 to i64
  %331 = load i8*, i8** %pixel, align 8
  %arrayidx401 = getelementptr inbounds i8, i8* %331, i64 %idxprom400
  %332 = load i8, i8* %arrayidx401, align 1
  %conv402 = zext i8 %332 to i32
  %sub403 = sub nsw i32 %conv402, %329
  %conv404 = trunc i32 %sub403 to i8
  store i8 %conv404, i8* %arrayidx401, align 1
  br label %for.inc.405

for.inc.405:                                      ; preds = %for.body.389
  %333 = load i32, i32* %i, align 4
  %inc406 = add nsw i32 %333, 1
  store i32 %inc406, i32* %i, align 4
  br label %for.cond.384

for.end.407:                                      ; preds = %for.cond.384
  %334 = load i8*, i8** %pixel, align 8
  %335 = load i32, i32* %begin, align 4
  %336 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width408 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %336, i32 0, i32 1
  %337 = load i32, i32* %width408, align 4
  %338 = load i32, i32* %num, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %334, i32 0, i32 %335, i32 %337, i32 %338)
  br label %for.inc.409

for.inc.409:                                      ; preds = %for.end.407
  %339 = load i32, i32* %tile_height, align 4
  %340 = load i32, i32* %begin, align 4
  %add410 = add nsw i32 %340, %339
  store i32 %add410, i32* %begin, align 4
  %341 = load i32, i32* %tile_height, align 4
  %342 = load i32, i32* %end, align 4
  %add411 = add nsw i32 %342, %341
  store i32 %add411, i32* %end, align 4
  br label %for.cond.371

for.end.412:                                      ; preds = %for.cond.371
  %343 = load i8*, i8** %pixel, align 8
  call void @g_free(i8* %343)
  br label %if.end.413

if.end.413:                                       ; preds = %for.end.412, %if.end.358
  %344 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %344)
  %345 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %345)
  %346 = load volatile i32, i32* %image, align 4
  store i32 %346, i32* %retval
  br label %return

return:                                           ; preds = %if.end.413, %if.then.97, %sw.default, %if.then.13, %if.then.7, %if.then
  %347 = load i32, i32* %retval
  ret i32 %347
}

; Function Attrs: nounwind uwtable
define internal void @load_defaults() #0 {
entry:
  %parasite = alloca %struct._GimpParasite*, align 8
  %def_str = alloca i8*, align 8
  %tmpvals = alloca %struct.PngSaveVals, align 4
  %num_fields = alloca i32, align 4
  %call = call %struct._GimpParasite* @gimp_get_parasite(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.81, i32 0, i32 0))
  store %struct._GimpParasite* %call, %struct._GimpParasite** %parasite, align 8
  %0 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %tobool = icmp ne %struct._GimpParasite* %0, null
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %call1 = call i8* @gimp_parasite_data(%struct._GimpParasite* %1)
  %2 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %call2 = call i64 @gimp_parasite_data_size(%struct._GimpParasite* %2)
  %call3 = call noalias i8* @g_strndup(i8* %call1, i64 %call2)
  store i8* %call3, i8** %def_str, align 8
  %3 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %3)
  %4 = load i8*, i8** %def_str, align 8
  %interlaced = getelementptr inbounds %struct.PngSaveVals, %struct.PngSaveVals* %tmpvals, i32 0, i32 0
  %bkgd = getelementptr inbounds %struct.PngSaveVals, %struct.PngSaveVals* %tmpvals, i32 0, i32 1
  %gama = getelementptr inbounds %struct.PngSaveVals, %struct.PngSaveVals* %tmpvals, i32 0, i32 2
  %offs = getelementptr inbounds %struct.PngSaveVals, %struct.PngSaveVals* %tmpvals, i32 0, i32 3
  %phys = getelementptr inbounds %struct.PngSaveVals, %struct.PngSaveVals* %tmpvals, i32 0, i32 4
  %time = getelementptr inbounds %struct.PngSaveVals, %struct.PngSaveVals* %tmpvals, i32 0, i32 5
  %comment = getelementptr inbounds %struct.PngSaveVals, %struct.PngSaveVals* %tmpvals, i32 0, i32 6
  %save_transp_pixels = getelementptr inbounds %struct.PngSaveVals, %struct.PngSaveVals* %tmpvals, i32 0, i32 7
  %compression_level = getelementptr inbounds %struct.PngSaveVals, %struct.PngSaveVals* %tmpvals, i32 0, i32 8
  %call4 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.82, i32 0, i32 0), i32* %interlaced, i32* %bkgd, i32* %gama, i32* %offs, i32* %phys, i32* %time, i32* %comment, i32* %save_transp_pixels, i32* %compression_level) #7
  store i32 %call4, i32* %num_fields, align 4
  %5 = load i8*, i8** %def_str, align 8
  call void @g_free(i8* %5)
  %6 = load i32, i32* %num_fields, align 4
  %cmp = icmp eq i32 %6, 9
  br i1 %cmp, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %7 = bitcast %struct.PngSaveVals* %tmpvals to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.PngSaveVals* @pngvals to i8*), i8* %7, i64 36, i32 4, i1 false)
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.PngSaveVals* @pngvals to i8*), i8* bitcast (%struct.PngSaveVals* @defaults to i8*), i64 36, i32 4, i1 false)
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5
  ret void
}

declare void @gimp_ui_init(i8*, i32) #1

declare i32 @gimp_export_image(i32*, i32*, i8*, i32) #1

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @save_dialog(i32 %image_ID, i32 %alpha) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %alpha.addr = alloca i32, align 4
  %pg = alloca %struct.PngSaveGui, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %builder = alloca %struct._GtkBuilder*, align 8
  %ui_file = alloca i8*, align 8
  %parasite = alloca %struct._GimpParasite*, align 8
  %error = alloca %struct._GError*, align 8
  %display_name = alloca i8*, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %alpha, i32* %alpha.addr, align 4
  store %struct._GError* null, %struct._GError** %error, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0)) #7
  %call1 = call %struct._GtkWidget* @gimp_export_dialog_new(i8* %call, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0))
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %dialog, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %1 = bitcast %struct._GtkWidget* %0 to i8*
  %2 = bitcast %struct.PngSaveGui* %pg to i8*
  %call2 = call i64 @g_signal_connect_data(i8* %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.83, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, i8*)* @save_dialog_response to void ()*), i8* %2, void (i8*, %struct._GClosure*)* null, i32 0)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %4 = bitcast %struct._GtkWidget* %3 to i8*
  %call3 = call i64 @g_signal_connect_data(i8* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.84, i32 0, i32 0), void ()* @gtk_main_quit, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call4 = call %struct._GtkBuilder* @gtk_builder_new()
  store %struct._GtkBuilder* %call4, %struct._GtkBuilder** %builder, align 8
  %call5 = call i8* @gimp_data_directory() #8
  %call6 = call noalias i8* (i8*, ...) @g_build_filename(i8* %call5, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.85, i32 0, i32 0), i8* null)
  store i8* %call6, i8** %ui_file, align 8
  %5 = load %struct._GtkBuilder*, %struct._GtkBuilder** %builder, align 8
  %6 = load i8*, i8** %ui_file, align 8
  %call7 = call i32 @gtk_builder_add_from_file(%struct._GtkBuilder* %5, i8* %6, %struct._GError** %error)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** %ui_file, align 8
  %call8 = call noalias i8* @g_filename_display_name(i8* %7)
  store i8* %call8, i8** %display_name, align 8
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.86, i32 0, i32 0)) #7
  %8 = load i8*, i8** %display_name, align 8
  %9 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool10 = icmp ne %struct._GError* %9, null
  br i1 %tobool10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %10 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %10, i32 0, i32 2
  %11 = load i8*, i8** %message, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.87, i32 0, i32 0)) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %11, %cond.true ], [ %call11, %cond.false ]
  call void (i8*, ...) @g_printerr(i8* %call9, i8* %8, i8* %cond)
  %12 = load i8*, i8** %display_name, align 8
  call void @g_free(i8* %12)
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %13 = load i8*, i8** %ui_file, align 8
  call void @g_free(i8* %13)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %call12 = call %struct._GtkWidget* @gimp_export_dialog_get_content_area(%struct._GtkWidget* %14)
  %15 = bitcast %struct._GtkWidget* %call12 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_box_get_type() #8
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call13)
  %16 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkBox*
  %17 = load %struct._GtkBuilder*, %struct._GtkBuilder** %builder, align 8
  %call15 = call %struct._GObject* @gtk_builder_get_object(%struct._GtkBuilder* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i32 0, i32 0))
  %18 = bitcast %struct._GObject* %call15 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_widget_get_type() #8
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call16)
  %19 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkWidget*
  call void @gtk_box_pack_start(%struct._GtkBox* %16, %struct._GtkWidget* %19, i32 1, i32 1, i32 0)
  %20 = load %struct._GtkBuilder*, %struct._GtkBuilder** %builder, align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 0), align 4
  %call18 = call %struct._GtkWidget* @toggle_button_init(%struct._GtkBuilder* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i32 %21, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 0))
  %interlaced = getelementptr inbounds %struct.PngSaveGui, %struct.PngSaveGui* %pg, i32 0, i32 1
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %interlaced, align 8
  %22 = load %struct._GtkBuilder*, %struct._GtkBuilder** %builder, align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 1), align 4
  %call19 = call %struct._GtkWidget* @toggle_button_init(%struct._GtkBuilder* %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.89, i32 0, i32 0), i32 %23, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 1))
  %bkgd = getelementptr inbounds %struct.PngSaveGui, %struct.PngSaveGui* %pg, i32 0, i32 2
  store %struct._GtkWidget* %call19, %struct._GtkWidget** %bkgd, align 8
  %24 = load %struct._GtkBuilder*, %struct._GtkBuilder** %builder, align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 2), align 4
  %call20 = call %struct._GtkWidget* @toggle_button_init(%struct._GtkBuilder* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.90, i32 0, i32 0), i32 %25, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 2))
  %gama = getelementptr inbounds %struct.PngSaveGui, %struct.PngSaveGui* %pg, i32 0, i32 3
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %gama, align 8
  %26 = load %struct._GtkBuilder*, %struct._GtkBuilder** %builder, align 8
  %27 = load i32, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 3), align 4
  %call21 = call %struct._GtkWidget* @toggle_button_init(%struct._GtkBuilder* %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.91, i32 0, i32 0), i32 %27, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 3))
  %offs = getelementptr inbounds %struct.PngSaveGui, %struct.PngSaveGui* %pg, i32 0, i32 4
  store %struct._GtkWidget* %call21, %struct._GtkWidget** %offs, align 8
  %28 = load %struct._GtkBuilder*, %struct._GtkBuilder** %builder, align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 4), align 4
  %call22 = call %struct._GtkWidget* @toggle_button_init(%struct._GtkBuilder* %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.92, i32 0, i32 0), i32 %29, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 4))
  %phys = getelementptr inbounds %struct.PngSaveGui, %struct.PngSaveGui* %pg, i32 0, i32 5
  store %struct._GtkWidget* %call22, %struct._GtkWidget** %phys, align 8
  %30 = load %struct._GtkBuilder*, %struct._GtkBuilder** %builder, align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 5), align 4
  %call23 = call %struct._GtkWidget* @toggle_button_init(%struct._GtkBuilder* %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.93, i32 0, i32 0), i32 %31, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 5))
  %time = getelementptr inbounds %struct.PngSaveGui, %struct.PngSaveGui* %pg, i32 0, i32 6
  store %struct._GtkWidget* %call23, %struct._GtkWidget** %time, align 8
  %32 = load i32, i32* %image_ID.addr, align 4
  %call24 = call %struct._GimpParasite* @gimp_image_get_parasite(i32 %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.71, i32 0, i32 0))
  store %struct._GimpParasite* %call24, %struct._GimpParasite** %parasite, align 8
  %33 = load %struct._GtkBuilder*, %struct._GtkBuilder** %builder, align 8
  %34 = load i32, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 6), align 4
  %tobool25 = icmp ne i32 %34, 0
  br i1 %tobool25, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %35 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %cmp = icmp ne %struct._GimpParasite* %35, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %36 = phi i1 [ false, %if.end ], [ %cmp, %land.rhs ]
  %land.ext = zext i1 %36 to i32
  %call26 = call %struct._GtkWidget* @toggle_button_init(%struct._GtkBuilder* %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.94, i32 0, i32 0), i32 %land.ext, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 6))
  %comment = getelementptr inbounds %struct.PngSaveGui, %struct.PngSaveGui* %pg, i32 0, i32 7
  store %struct._GtkWidget* %call26, %struct._GtkWidget** %comment, align 8
  %comment27 = getelementptr inbounds %struct.PngSaveGui, %struct.PngSaveGui* %pg, i32 0, i32 7
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %comment27, align 8
  %38 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %cmp28 = icmp ne %struct._GimpParasite* %38, null
  %conv = zext i1 %cmp28 to i32
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %37, i32 %conv)
  %39 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %39)
  %40 = load %struct._GtkBuilder*, %struct._GtkBuilder** %builder, align 8
  %41 = load i32, i32* %alpha.addr, align 4
  %tobool29 = icmp ne i32 %41, 0
  br i1 %tobool29, label %land.rhs.30, label %land.end.32

land.rhs.30:                                      ; preds = %land.end
  %42 = load i32, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 7), align 4
  %tobool31 = icmp ne i32 %42, 0
  br label %land.end.32

land.end.32:                                      ; preds = %land.rhs.30, %land.end
  %43 = phi i1 [ false, %land.end ], [ %tobool31, %land.rhs.30 ]
  %land.ext33 = zext i1 %43 to i32
  %call34 = call %struct._GtkWidget* @toggle_button_init(%struct._GtkBuilder* %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.95, i32 0, i32 0), i32 %land.ext33, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 7))
  %save_transp_pixels = getelementptr inbounds %struct.PngSaveGui, %struct.PngSaveGui* %pg, i32 0, i32 8
  store %struct._GtkWidget* %call34, %struct._GtkWidget** %save_transp_pixels, align 8
  %save_transp_pixels35 = getelementptr inbounds %struct.PngSaveGui, %struct.PngSaveGui* %pg, i32 0, i32 8
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %save_transp_pixels35, align 8
  %45 = load i32, i32* %alpha.addr, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %44, i32 %45)
  %46 = load %struct._GtkBuilder*, %struct._GtkBuilder** %builder, align 8
  %call36 = call %struct._GObject* @gtk_builder_get_object(%struct._GtkBuilder* %46, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.96, i32 0, i32 0))
  %47 = bitcast %struct._GObject* %call36 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_adjustment_get_type() #8
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call37)
  %48 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkAdjustment*
  %compression_level = getelementptr inbounds %struct.PngSaveGui, %struct.PngSaveGui* %pg, i32 0, i32 9
  store %struct._GtkAdjustment* %48, %struct._GtkAdjustment** %compression_level, align 8
  %compression_level39 = getelementptr inbounds %struct.PngSaveGui, %struct.PngSaveGui* %pg, i32 0, i32 9
  %49 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %compression_level39, align 8
  %50 = load i32, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 8), align 4
  %conv40 = sitofp i32 %50 to double
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %49, double %conv40)
  %compression_level41 = getelementptr inbounds %struct.PngSaveGui, %struct.PngSaveGui* %pg, i32 0, i32 9
  %51 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %compression_level41, align 8
  %52 = bitcast %struct._GtkAdjustment* %51 to i8*
  %call42 = call i64 @g_signal_connect_data(i8* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.97, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 8) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %53 = load %struct._GtkBuilder*, %struct._GtkBuilder** %builder, align 8
  %call43 = call %struct._GObject* @gtk_builder_get_object(%struct._GtkBuilder* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.98, i32 0, i32 0))
  %54 = bitcast %struct._GObject* %call43 to i8*
  %55 = bitcast %struct.PngSaveGui* %pg to i8*
  %call44 = call i64 @g_signal_connect_data(i8* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.99, i32 0, i32 0), void ()* bitcast (void (%struct.PngSaveGui*)* @load_gui_defaults to void ()*), i8* %55, void (i8*, %struct._GClosure*)* null, i32 2)
  %56 = load %struct._GtkBuilder*, %struct._GtkBuilder** %builder, align 8
  %call45 = call %struct._GObject* @gtk_builder_get_object(%struct._GtkBuilder* %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.100, i32 0, i32 0))
  %57 = bitcast %struct._GObject* %call45 to i8*
  %58 = bitcast %struct.PngSaveGui* %pg to i8*
  %call46 = call i64 @g_signal_connect_data(i8* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.99, i32 0, i32 0), void ()* @save_defaults, i8* %58, void (i8*, %struct._GClosure*)* null, i32 2)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %59)
  %run = getelementptr inbounds %struct.PngSaveGui, %struct.PngSaveGui* %pg, i32 0, i32 0
  store i32 0, i32* %run, align 4
  call void @gtk_main()
  %run47 = getelementptr inbounds %struct.PngSaveGui, %struct.PngSaveGui* %pg, i32 0, i32 0
  %60 = load i32, i32* %run47, align 4
  ret i32 %60
}

; Function Attrs: nounwind uwtable
define internal i32 @save_image(i8* %filename, i32 %image_ID, i32 %drawable_ID, i32 %orig_image_ID, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %image_ID.addr = alloca i32, align 4
  %drawable_ID.addr = alloca i32, align 4
  %orig_image_ID.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %bpp = alloca i32, align 4
  %type = alloca i32, align 4
  %num_passes = alloca i32, align 4
  %pass = alloca i32, align 4
  %tile_height = alloca i32, align 4
  %begin = alloca i32, align 4
  %end = alloca i32, align 4
  %num = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %pp = alloca %struct.png_struct_def*, align 8
  %info = alloca %struct.png_info_def*, align 8
  %offx = alloca i32, align 4
  %offy = alloca i32, align 4
  %pixels = alloca i8**, align 8
  %fixed = alloca i8*, align 8
  %pixel = alloca i8*, align 8
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %background = alloca %struct.png_color_16_struct, align 2
  %mod_time = alloca %struct.png_time_struct, align 2
  %red = alloca i8, align 1
  %green = alloca i8, align 1
  %blue = alloca i8, align 1
  %cutime = alloca i64, align 8
  %gmt = alloca %struct.tm*, align 8
  %color_type = alloca i32, align 4
  %bit_depth = alloca i32, align 4
  %remap = alloca [256 x i8], align 16
  %text = alloca %struct.png_text_struct*, align 8
  %color = alloca %struct._GimpRGB, align 8
  %parasite = alloca %struct._GimpParasite*, align 8
  %gamma = alloca double, align 8
  %profile_parasite = alloca %struct._GimpParasite*, align 8
  %profile_name = alloca i8*, align 8
  %parasite98 = alloca %struct._GimpParasite*, align 8
  %parasite114 = alloca %struct._GimpParasite*, align 8
  %comment = alloca i8*, align 8
  %aux = alloca i32, align 4
  %inverse_remap = alloca [256 x i8], align 16
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %orig_image_ID, i32* %orig_image_ID.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 0, i32* %bpp, align 4
  store %struct.png_text_struct* null, %struct.png_text_struct** %text, align 8
  %call = call noalias %struct.png_struct_def* @png_create_write_struct(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i8* null, void (%struct.png_struct_def*, i8*)* null, void (%struct.png_struct_def*, i8*)* null)
  store %struct.png_struct_def* %call, %struct.png_struct_def** %pp, align 8
  %0 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %tobool = icmp ne %struct.png_struct_def* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.102, i32 0, i32 0)) #7
  %2 = load i8*, i8** %filename.addr, align 8
  %call2 = call i8* @gimp_filename_to_utf8(i8* %2)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %1, i32 0, i32 0, i8* %call1, i8* %call2)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %call3 = call noalias %struct.png_info_def* @png_create_info_struct(%struct.png_struct_def* %3)
  store %struct.png_info_def* %call3, %struct.png_info_def** %info, align 8
  %4 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %call4 = call [1 x %struct.__jmp_buf_tag]* @png_set_longjmp_fn(%struct.png_struct_def* %4, void (%struct.__jmp_buf_tag*, i32)* @longjmp, i64 200)
  %arraydecay = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %call4, i32 0, i32 0
  %call5 = call i32 @_setjmp(%struct.__jmp_buf_tag* %arraydecay) #10
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.103, i32 0, i32 0)) #7
  %6 = load i8*, i8** %filename.addr, align 8
  %call9 = call i8* @gimp_filename_to_utf8(i8* %6)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %5, i32 0, i32 0, i8* %call8, i8* %call9)
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %7 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  call void @png_set_benign_errors(%struct.png_struct_def* %7, i32 1)
  %8 = load i8*, i8** %filename.addr, align 8
  %call11 = call %struct._IO_FILE* @fopen(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.104, i32 0, i32 0))
  store %struct._IO_FILE* %call11, %struct._IO_FILE** %fp, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp = icmp eq %struct._IO_FILE* %9, null
  br i1 %cmp, label %if.then.12, label %if.end.20

if.then.12:                                       ; preds = %if.end.10
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call13 = call i32 @g_file_error_quark()
  %call14 = call i32* @__errno_location() #8
  %11 = load i32, i32* %call14, align 4
  %call15 = call i32 @g_file_error_from_errno(i32 %11)
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.105, i32 0, i32 0)) #7
  %12 = load i8*, i8** %filename.addr, align 8
  %call17 = call i8* @gimp_filename_to_utf8(i8* %12)
  %call18 = call i32* @__errno_location() #8
  %13 = load i32, i32* %call18, align 4
  %call19 = call i8* @g_strerror(i32 %13) #8
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %10, i32 %call13, i32 %call15, i8* %call16, i8* %call17, i8* %call19)
  store i32 0, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.10
  %14 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  call void @png_init_io(%struct.png_struct_def* %14, %struct._IO_FILE* %15)
  %call21 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.106, i32 0, i32 0)) #7
  %16 = load i8*, i8** %filename.addr, align 8
  %call22 = call i8* @gimp_filename_to_utf8(i8* %16)
  %call23 = call i32 (i8*, ...) @gimp_progress_init_printf(i8* %call21, i8* %call22)
  %17 = load i32, i32* %drawable_ID.addr, align 4
  %call24 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %17)
  store %struct._GimpDrawable* %call24, %struct._GimpDrawable** %drawable, align 8
  %18 = load i32, i32* %drawable_ID.addr, align 4
  %call25 = call i32 @gimp_drawable_type(i32 %18)
  store i32 %call25, i32* %type, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.20
  %19 = load i32, i32* %i, align 4
  %cmp26 = icmp slt i32 %19, 256
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %i, align 4
  %conv = trunc i32 %20 to i8
  %21 = load i32, i32* %i, align 4
  %idxprom = sext i32 %21 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %remap, i32 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 8, i32* %bit_depth, align 4
  %23 = load i32, i32* %type, align 4
  switch i32 %23, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.27
    i32 2, label %sw.bb.28
    i32 3, label %sw.bb.29
    i32 4, label %sw.bb.30
    i32 5, label %sw.bb.33
  ]

sw.bb:                                            ; preds = %for.end
  store i32 2, i32* %color_type, align 4
  store i32 3, i32* %bpp, align 4
  br label %sw.epilog

sw.bb.27:                                         ; preds = %for.end
  store i32 6, i32* %color_type, align 4
  store i32 4, i32* %bpp, align 4
  br label %sw.epilog

sw.bb.28:                                         ; preds = %for.end
  store i32 0, i32* %color_type, align 4
  store i32 1, i32* %bpp, align 4
  br label %sw.epilog

sw.bb.29:                                         ; preds = %for.end
  store i32 4, i32* %color_type, align 4
  store i32 2, i32* %bpp, align 4
  br label %sw.epilog

sw.bb.30:                                         ; preds = %for.end
  store i32 1, i32* %bpp, align 4
  store i32 3, i32* %color_type, align 4
  store i32 1, i32* getelementptr inbounds (%struct.PngGlobals, %struct.PngGlobals* @pngg, i32 0, i32 3), align 4
  %24 = load i32, i32* %image_ID.addr, align 4
  %call31 = call i8* @gimp_image_get_colormap(i32 %24, i32* getelementptr inbounds (%struct.PngGlobals, %struct.PngGlobals* @pngg, i32 0, i32 5))
  %25 = bitcast i8* %call31 to %struct.png_color_struct*
  store %struct.png_color_struct* %25, %struct.png_color_struct** getelementptr inbounds (%struct.PngGlobals, %struct.PngGlobals* @pngg, i32 0, i32 4), align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.PngGlobals, %struct.PngGlobals* @pngg, i32 0, i32 5), align 4
  %call32 = call i32 @get_bit_depth_for_palette(i32 %26)
  store i32 %call32, i32* %bit_depth, align 4
  br label %sw.epilog

sw.bb.33:                                         ; preds = %for.end
  store i32 2, i32* %bpp, align 4
  store i32 3, i32* %color_type, align 4
  %27 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %28 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %arraydecay34 = getelementptr inbounds [256 x i8], [256 x i8]* %remap, i32 0, i32 0
  %29 = load i32, i32* %image_ID.addr, align 4
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call35 = call i32 @respin_cmap(%struct.png_struct_def* %27, %struct.png_info_def* %28, i8* %arraydecay34, i32 %29, %struct._GimpDrawable* %30)
  store i32 %call35, i32* %bit_depth, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %for.end
  %31 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %31, i32 0, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.107, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.33, %sw.bb.30, %sw.bb.29, %sw.bb.28, %sw.bb.27, %sw.bb
  %32 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %33 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %34, i32 0, i32 1
  %35 = load i32, i32* %width, align 4
  %36 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %36, i32 0, i32 2
  %37 = load i32, i32* %height, align 4
  %38 = load i32, i32* %bit_depth, align 4
  %39 = load i32, i32* %color_type, align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 0), align 4
  %tobool36 = icmp ne i32 %40, 0
  %cond = select i1 %tobool36, i32 1, i32 0
  call void @png_set_IHDR(%struct.png_struct_def* %32, %struct.png_info_def* %33, i32 %35, i32 %37, i32 %38, i32 %39, i32 %cond, i32 0, i32 0)
  %41 = load i32, i32* getelementptr inbounds (%struct.PngGlobals, %struct.PngGlobals* @pngg, i32 0, i32 0), align 4
  %tobool37 = icmp ne i32 %41, 0
  br i1 %tobool37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %sw.epilog
  %42 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %43 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %44 = load i8*, i8** getelementptr inbounds (%struct.PngGlobals, %struct.PngGlobals* @pngg, i32 0, i32 1), align 8
  %45 = load i32, i32* getelementptr inbounds (%struct.PngGlobals, %struct.PngGlobals* @pngg, i32 0, i32 2), align 4
  call void @png_set_tRNS(%struct.png_struct_def* %42, %struct.png_info_def* %43, i8* %44, i32 %45, %struct.png_color_16_struct* null)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %sw.epilog
  %46 = load i32, i32* getelementptr inbounds (%struct.PngGlobals, %struct.PngGlobals* @pngg, i32 0, i32 3), align 4
  %tobool40 = icmp ne i32 %46, 0
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.39
  %47 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %48 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %49 = load %struct.png_color_struct*, %struct.png_color_struct** getelementptr inbounds (%struct.PngGlobals, %struct.PngGlobals* @pngg, i32 0, i32 4), align 8
  %50 = load i32, i32* getelementptr inbounds (%struct.PngGlobals, %struct.PngGlobals* @pngg, i32 0, i32 5), align 4
  call void @png_set_PLTE(%struct.png_struct_def* %47, %struct.png_info_def* %48, %struct.png_color_struct* %49, i32 %50)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %if.end.39
  %51 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %52 = load i32, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 8), align 4
  call void @png_set_compression_level(%struct.png_struct_def* %51, i32 %52)
  %53 = load i32, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 1), align 4
  %tobool43 = icmp ne i32 %53, 0
  br i1 %tobool43, label %if.then.44, label %if.else

if.then.44:                                       ; preds = %if.end.42
  %call45 = call i32 @gimp_context_get_background(%struct._GimpRGB* %color)
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %color, i8* %red, i8* %green, i8* %blue)
  %index = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %background, i32 0, i32 0
  store i8 0, i8* %index, align 1
  %54 = load i8, i8* %red, align 1
  %conv46 = zext i8 %54 to i16
  %red47 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %background, i32 0, i32 1
  store i16 %conv46, i16* %red47, align 2
  %55 = load i8, i8* %green, align 1
  %conv48 = zext i8 %55 to i16
  %green49 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %background, i32 0, i32 2
  store i16 %conv48, i16* %green49, align 2
  %56 = load i8, i8* %blue, align 1
  %conv50 = zext i8 %56 to i16
  %blue51 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %background, i32 0, i32 3
  store i16 %conv50, i16* %blue51, align 2
  %call52 = call zeroext i8 @gimp_rgb_luminance_uchar(%struct._GimpRGB* %color)
  %conv53 = zext i8 %call52 to i16
  %gray = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %background, i32 0, i32 4
  store i16 %conv53, i16* %gray, align 2
  %57 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %58 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  call void @png_set_bKGD(%struct.png_struct_def* %57, %struct.png_info_def* %58, %struct.png_color_16_struct* %background)
  br label %if.end.54

if.else:                                          ; preds = %if.end.42
  store i8 0, i8* %blue, align 1
  store i8 0, i8* %green, align 1
  store i8 0, i8* %red, align 1
  br label %if.end.54

if.end.54:                                        ; preds = %if.else, %if.then.44
  %59 = load i32, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 2), align 4
  %tobool55 = icmp ne i32 %59, 0
  br i1 %tobool55, label %if.then.56, label %if.end.63

if.then.56:                                       ; preds = %if.end.54
  store double 0x3FDD1745D1745D17, double* %gamma, align 8
  %60 = load i32, i32* %orig_image_ID.addr, align 4
  %call57 = call %struct._GimpParasite* @gimp_image_get_parasite(i32 %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0))
  store %struct._GimpParasite* %call57, %struct._GimpParasite** %parasite, align 8
  %61 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %tobool58 = icmp ne %struct._GimpParasite* %61, null
  br i1 %tobool58, label %if.then.59, label %if.end.62

if.then.59:                                       ; preds = %if.then.56
  %62 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %call60 = call i8* @gimp_parasite_data(%struct._GimpParasite* %62)
  %call61 = call double @g_ascii_strtod(i8* %call60, i8** null)
  store double %call61, double* %gamma, align 8
  %63 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %63)
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.59, %if.then.56
  %64 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %65 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %66 = load double, double* %gamma, align 8
  call void @png_set_gAMA(%struct.png_struct_def* %64, %struct.png_info_def* %65, double %66)
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.end.54
  %67 = load i32, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 3), align 4
  %tobool64 = icmp ne i32 %67, 0
  br i1 %tobool64, label %if.then.65, label %if.end.73

if.then.65:                                       ; preds = %if.end.63
  %68 = load i32, i32* %drawable_ID.addr, align 4
  %call66 = call i32 @gimp_drawable_offsets(i32 %68, i32* %offx, i32* %offy)
  %69 = load i32, i32* %offx, align 4
  %cmp67 = icmp ne i32 %69, 0
  br i1 %cmp67, label %if.then.71, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.65
  %70 = load i32, i32* %offy, align 4
  %cmp69 = icmp ne i32 %70, 0
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %lor.lhs.false, %if.then.65
  %71 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %72 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %73 = load i32, i32* %offx, align 4
  %74 = load i32, i32* %offy, align 4
  call void @png_set_oFFs(%struct.png_struct_def* %71, %struct.png_info_def* %72, i32 %73, i32 %74, i32 0)
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.71, %lor.lhs.false
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.end.63
  %75 = load i32, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 4), align 4
  %tobool74 = icmp ne i32 %75, 0
  br i1 %tobool74, label %if.then.75, label %if.end.82

if.then.75:                                       ; preds = %if.end.73
  %76 = load i32, i32* %orig_image_ID.addr, align 4
  %call76 = call i32 @gimp_image_get_resolution(i32 %76, double* %xres, double* %yres)
  %77 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %78 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %79 = load double, double* %xres, align 8
  %div = fdiv double %79, 2.540000e-02
  %call77 = call double @rint(double %div) #8
  %conv78 = fptoui double %call77 to i32
  %80 = load double, double* %yres, align 8
  %div79 = fdiv double %80, 2.540000e-02
  %call80 = call double @rint(double %div79) #8
  %conv81 = fptoui double %call80 to i32
  call void @png_set_pHYs(%struct.png_struct_def* %77, %struct.png_info_def* %78, i32 %conv78, i32 %conv81, i32 1)
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.75, %if.end.73
  %81 = load i32, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 5), align 4
  %tobool83 = icmp ne i32 %81, 0
  br i1 %tobool83, label %if.then.84, label %if.end.94

if.then.84:                                       ; preds = %if.end.82
  %call85 = call i64 @time(i64* null) #7
  store i64 %call85, i64* %cutime, align 8
  %call86 = call %struct.tm* @gmtime(i64* %cutime) #7
  store %struct.tm* %call86, %struct.tm** %gmt, align 8
  %82 = load %struct.tm*, %struct.tm** %gmt, align 8
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %82, i32 0, i32 5
  %83 = load i32, i32* %tm_year, align 4
  %add = add nsw i32 %83, 1900
  %conv87 = trunc i32 %add to i16
  %year = getelementptr inbounds %struct.png_time_struct, %struct.png_time_struct* %mod_time, i32 0, i32 0
  store i16 %conv87, i16* %year, align 2
  %84 = load %struct.tm*, %struct.tm** %gmt, align 8
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %84, i32 0, i32 4
  %85 = load i32, i32* %tm_mon, align 4
  %add88 = add nsw i32 %85, 1
  %conv89 = trunc i32 %add88 to i8
  %month = getelementptr inbounds %struct.png_time_struct, %struct.png_time_struct* %mod_time, i32 0, i32 1
  store i8 %conv89, i8* %month, align 1
  %86 = load %struct.tm*, %struct.tm** %gmt, align 8
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %86, i32 0, i32 3
  %87 = load i32, i32* %tm_mday, align 4
  %conv90 = trunc i32 %87 to i8
  %day = getelementptr inbounds %struct.png_time_struct, %struct.png_time_struct* %mod_time, i32 0, i32 2
  store i8 %conv90, i8* %day, align 1
  %88 = load %struct.tm*, %struct.tm** %gmt, align 8
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %88, i32 0, i32 2
  %89 = load i32, i32* %tm_hour, align 4
  %conv91 = trunc i32 %89 to i8
  %hour = getelementptr inbounds %struct.png_time_struct, %struct.png_time_struct* %mod_time, i32 0, i32 3
  store i8 %conv91, i8* %hour, align 1
  %90 = load %struct.tm*, %struct.tm** %gmt, align 8
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %90, i32 0, i32 1
  %91 = load i32, i32* %tm_min, align 4
  %conv92 = trunc i32 %91 to i8
  %minute = getelementptr inbounds %struct.png_time_struct, %struct.png_time_struct* %mod_time, i32 0, i32 4
  store i8 %conv92, i8* %minute, align 1
  %92 = load %struct.tm*, %struct.tm** %gmt, align 8
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %92, i32 0, i32 0
  %93 = load i32, i32* %tm_sec, align 4
  %conv93 = trunc i32 %93 to i8
  %second = getelementptr inbounds %struct.png_time_struct, %struct.png_time_struct* %mod_time, i32 0, i32 5
  store i8 %conv93, i8* %second, align 1
  %94 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %95 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  call void @png_set_tIME(%struct.png_struct_def* %94, %struct.png_info_def* %95, %struct.png_time_struct* %mod_time)
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.84, %if.end.82
  store i8* null, i8** %profile_name, align 8
  %96 = load i32, i32* %orig_image_ID.addr, align 4
  %call95 = call %struct._GimpParasite* @gimp_image_get_parasite(i32 %96, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.72, i32 0, i32 0))
  store %struct._GimpParasite* %call95, %struct._GimpParasite** %profile_parasite, align 8
  %97 = load %struct._GimpParasite*, %struct._GimpParasite** %profile_parasite, align 8
  %tobool96 = icmp ne %struct._GimpParasite* %97, null
  br i1 %tobool96, label %if.then.97, label %if.end.111

if.then.97:                                       ; preds = %if.end.94
  %98 = load i32, i32* %orig_image_ID.addr, align 4
  %call99 = call %struct._GimpParasite* @gimp_image_get_parasite(i32 %98, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.73, i32 0, i32 0))
  store %struct._GimpParasite* %call99, %struct._GimpParasite** %parasite98, align 8
  %99 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite98, align 8
  %tobool100 = icmp ne %struct._GimpParasite* %99, null
  br i1 %tobool100, label %if.then.101, label %if.end.105

if.then.101:                                      ; preds = %if.then.97
  %100 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite98, align 8
  %call102 = call i8* @gimp_parasite_data(%struct._GimpParasite* %100)
  %101 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite98, align 8
  %call103 = call i64 @gimp_parasite_data_size(%struct._GimpParasite* %101)
  %call104 = call noalias i8* @g_convert(i8* %call102, i64 %call103, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70, i32 0, i32 0), i64* null, i64* null, %struct._GError** null)
  store i8* %call104, i8** %profile_name, align 8
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.101, %if.then.97
  %102 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %103 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %104 = load i8*, i8** %profile_name, align 8
  %tobool106 = icmp ne i8* %104, null
  br i1 %tobool106, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.105
  %105 = load i8*, i8** %profile_name, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.105
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond107 = phi i8* [ %105, %cond.true ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.108, i32 0, i32 0), %cond.false ]
  %106 = load %struct._GimpParasite*, %struct._GimpParasite** %profile_parasite, align 8
  %call108 = call i8* @gimp_parasite_data(%struct._GimpParasite* %106)
  %107 = load %struct._GimpParasite*, %struct._GimpParasite** %profile_parasite, align 8
  %call109 = call i64 @gimp_parasite_data_size(%struct._GimpParasite* %107)
  %conv110 = trunc i64 %call109 to i32
  call void @png_set_iCCP(%struct.png_struct_def* %102, %struct.png_info_def* %103, i8* %cond107, i32 0, i8* %call108, i32 %conv110)
  %108 = load i8*, i8** %profile_name, align 8
  call void @g_free(i8* %108)
  br label %if.end.111

if.end.111:                                       ; preds = %cond.end, %if.end.94
  %109 = load i32, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 6), align 4
  %tobool112 = icmp ne i32 %109, 0
  br i1 %tobool112, label %if.then.113, label %if.end.129

if.then.113:                                      ; preds = %if.end.111
  %110 = load i32, i32* %orig_image_ID.addr, align 4
  %call115 = call %struct._GimpParasite* @gimp_image_get_parasite(i32 %110, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.71, i32 0, i32 0))
  store %struct._GimpParasite* %call115, %struct._GimpParasite** %parasite114, align 8
  %111 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite114, align 8
  %tobool116 = icmp ne %struct._GimpParasite* %111, null
  br i1 %tobool116, label %if.then.117, label %if.end.128

if.then.117:                                      ; preds = %if.then.113
  %112 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite114, align 8
  %call118 = call i8* @gimp_parasite_data(%struct._GimpParasite* %112)
  %113 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite114, align 8
  %call119 = call i64 @gimp_parasite_data_size(%struct._GimpParasite* %113)
  %call120 = call noalias i8* @g_strndup(i8* %call118, i64 %call119)
  store i8* %call120, i8** %comment, align 8
  %114 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite114, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %114)
  %call121 = call noalias i8* @g_malloc0_n(i64 1, i64 56)
  %115 = bitcast i8* %call121 to %struct.png_text_struct*
  store %struct.png_text_struct* %115, %struct.png_text_struct** %text, align 8
  %116 = load %struct.png_text_struct*, %struct.png_text_struct** %text, align 8
  %key = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %116, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i8** %key, align 8
  %117 = load %struct.png_text_struct*, %struct.png_text_struct** %text, align 8
  %compression = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %117, i32 0, i32 0
  store i32 1, i32* %compression, align 4
  %118 = load i8*, i8** %comment, align 8
  %119 = load %struct.png_text_struct*, %struct.png_text_struct** %text, align 8
  %text122 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %119, i32 0, i32 2
  store i8* %118, i8** %text122, align 8
  %120 = load i8*, i8** %comment, align 8
  %call123 = call i64 @strlen(i8* %120) #9
  %121 = load %struct.png_text_struct*, %struct.png_text_struct** %text, align 8
  %itxt_length = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %121, i32 0, i32 4
  store i64 %call123, i64* %itxt_length, align 8
  %122 = load %struct.png_text_struct*, %struct.png_text_struct** %text, align 8
  %text124 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %122, i32 0, i32 2
  %123 = load i8*, i8** %text124, align 8
  %tobool125 = icmp ne i8* %123, null
  br i1 %tobool125, label %if.end.127, label %if.then.126

if.then.126:                                      ; preds = %if.then.117
  %124 = load %struct.png_text_struct*, %struct.png_text_struct** %text, align 8
  %125 = bitcast %struct.png_text_struct* %124 to i8*
  call void @g_free(i8* %125)
  store %struct.png_text_struct* null, %struct.png_text_struct** %text, align 8
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.126, %if.then.117
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %if.then.113
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128, %if.end.111
  %126 = load %struct.png_text_struct*, %struct.png_text_struct** %text, align 8
  %tobool130 = icmp ne %struct.png_text_struct* %126, null
  br i1 %tobool130, label %if.then.131, label %if.end.132

if.then.131:                                      ; preds = %if.end.129
  %127 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %128 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %129 = load %struct.png_text_struct*, %struct.png_text_struct** %text, align 8
  call void @png_set_text(%struct.png_struct_def* %127, %struct.png_info_def* %128, %struct.png_text_struct* %129, i32 1)
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.131, %if.end.129
  %130 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %131 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  call void @png_write_info(%struct.png_struct_def* %130, %struct.png_info_def* %131)
  %132 = load i32, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 0), align 4
  %tobool133 = icmp ne i32 %132, 0
  br i1 %tobool133, label %if.then.134, label %if.else.136

if.then.134:                                      ; preds = %if.end.132
  %133 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %call135 = call i32 @png_set_interlace_handling(%struct.png_struct_def* %133)
  store i32 %call135, i32* %num_passes, align 4
  br label %if.end.137

if.else.136:                                      ; preds = %if.end.132
  store i32 1, i32* %num_passes, align 4
  br label %if.end.137

if.end.137:                                       ; preds = %if.else.136, %if.then.134
  %134 = load i32, i32* %color_type, align 4
  %cmp138 = icmp eq i32 %134, 3
  br i1 %cmp138, label %land.lhs.true, label %if.end.143

land.lhs.true:                                    ; preds = %if.end.137
  %135 = load i32, i32* %bit_depth, align 4
  %cmp140 = icmp slt i32 %135, 8
  br i1 %cmp140, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %land.lhs.true
  %136 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  call void @png_set_packing(%struct.png_struct_def* %136)
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.142, %land.lhs.true, %if.end.137
  %call144 = call i32 @gimp_tile_height() #8
  store i32 %call144, i32* %tile_height, align 4
  %137 = load i32, i32* %tile_height, align 4
  %138 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width145 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %138, i32 0, i32 1
  %139 = load i32, i32* %width145, align 4
  %mul = mul i32 %137, %139
  %140 = load i32, i32* %bpp, align 4
  %mul146 = mul i32 %mul, %140
  %conv147 = zext i32 %mul146 to i64
  %call148 = call noalias i8* @g_malloc_n(i64 %conv147, i64 1)
  store i8* %call148, i8** %pixel, align 8
  %141 = load i32, i32* %tile_height, align 4
  %conv149 = sext i32 %141 to i64
  %call150 = call noalias i8* @g_malloc_n(i64 %conv149, i64 8)
  %142 = bitcast i8* %call150 to i8**
  store i8** %142, i8*** %pixels, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.151

for.cond.151:                                     ; preds = %for.inc.160, %if.end.143
  %143 = load i32, i32* %i, align 4
  %144 = load i32, i32* %tile_height, align 4
  %cmp152 = icmp slt i32 %143, %144
  br i1 %cmp152, label %for.body.154, label %for.end.162

for.body.154:                                     ; preds = %for.cond.151
  %145 = load i8*, i8** %pixel, align 8
  %146 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width155 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %146, i32 0, i32 1
  %147 = load i32, i32* %width155, align 4
  %148 = load i32, i32* %bpp, align 4
  %mul156 = mul i32 %147, %148
  %149 = load i32, i32* %i, align 4
  %mul157 = mul i32 %mul156, %149
  %idx.ext = zext i32 %mul157 to i64
  %add.ptr = getelementptr inbounds i8, i8* %145, i64 %idx.ext
  %150 = load i32, i32* %i, align 4
  %idxprom158 = sext i32 %150 to i64
  %151 = load i8**, i8*** %pixels, align 8
  %arrayidx159 = getelementptr inbounds i8*, i8** %151, i64 %idxprom158
  store i8* %add.ptr, i8** %arrayidx159, align 8
  br label %for.inc.160

for.inc.160:                                      ; preds = %for.body.154
  %152 = load i32, i32* %i, align 4
  %inc161 = add nsw i32 %152, 1
  store i32 %inc161, i32* %i, align 4
  br label %for.cond.151

for.end.162:                                      ; preds = %for.cond.151
  %153 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %154 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width163 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %154, i32 0, i32 1
  %155 = load i32, i32* %width163, align 4
  %156 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height164 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %156, i32 0, i32 2
  %157 = load i32, i32* %height164, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %153, i32 0, i32 0, i32 %155, i32 %157, i32 0, i32 0)
  store i32 0, i32* %pass, align 4
  br label %for.cond.165

for.cond.165:                                     ; preds = %for.inc.315, %for.end.162
  %158 = load i32, i32* %pass, align 4
  %159 = load i32, i32* %num_passes, align 4
  %cmp166 = icmp slt i32 %158, %159
  br i1 %cmp166, label %for.body.168, label %for.end.317

for.body.168:                                     ; preds = %for.cond.165
  store i32 0, i32* %begin, align 4
  %160 = load i32, i32* %tile_height, align 4
  store i32 %160, i32* %end, align 4
  br label %for.cond.169

for.cond.169:                                     ; preds = %for.inc.311, %for.body.168
  %161 = load i32, i32* %begin, align 4
  %162 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height170 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %162, i32 0, i32 2
  %163 = load i32, i32* %height170, align 4
  %cmp171 = icmp ult i32 %161, %163
  br i1 %cmp171, label %for.body.173, label %for.end.314

for.body.173:                                     ; preds = %for.cond.169
  %164 = load i32, i32* %end, align 4
  %165 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height174 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %165, i32 0, i32 2
  %166 = load i32, i32* %height174, align 4
  %cmp175 = icmp ugt i32 %164, %166
  br i1 %cmp175, label %if.then.177, label %if.end.179

if.then.177:                                      ; preds = %for.body.173
  %167 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height178 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %167, i32 0, i32 2
  %168 = load i32, i32* %height178, align 4
  store i32 %168, i32* %end, align 4
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.177, %for.body.173
  %169 = load i32, i32* %end, align 4
  %170 = load i32, i32* %begin, align 4
  %sub = sub nsw i32 %169, %170
  store i32 %sub, i32* %num, align 4
  %171 = load i8*, i8** %pixel, align 8
  %172 = load i32, i32* %begin, align 4
  %173 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width180 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %173, i32 0, i32 1
  %174 = load i32, i32* %width180, align 4
  %175 = load i32, i32* %num, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %171, i32 0, i32 %172, i32 %174, i32 %175)
  %176 = load i32, i32* %bpp, align 4
  %cmp181 = icmp eq i32 %176, 4
  br i1 %cmp181, label %land.lhs.true.183, label %if.end.218

land.lhs.true.183:                                ; preds = %if.end.179
  %177 = load i32, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 7), align 4
  %tobool184 = icmp ne i32 %177, 0
  br i1 %tobool184, label %if.end.218, label %if.then.185

if.then.185:                                      ; preds = %land.lhs.true.183
  store i32 0, i32* %i, align 4
  br label %for.cond.186

for.cond.186:                                     ; preds = %for.inc.215, %if.then.185
  %178 = load i32, i32* %i, align 4
  %179 = load i32, i32* %num, align 4
  %cmp187 = icmp slt i32 %178, %179
  br i1 %cmp187, label %for.body.189, label %for.end.217

for.body.189:                                     ; preds = %for.cond.186
  %180 = load i32, i32* %i, align 4
  %idxprom190 = sext i32 %180 to i64
  %181 = load i8**, i8*** %pixels, align 8
  %arrayidx191 = getelementptr inbounds i8*, i8** %181, i64 %idxprom190
  %182 = load i8*, i8** %arrayidx191, align 8
  store i8* %182, i8** %fixed, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.192

for.cond.192:                                     ; preds = %for.inc.212, %for.body.189
  %183 = load i32, i32* %k, align 4
  %184 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width193 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %184, i32 0, i32 1
  %185 = load i32, i32* %width193, align 4
  %cmp194 = icmp ult i32 %183, %185
  br i1 %cmp194, label %for.body.196, label %for.end.214

for.body.196:                                     ; preds = %for.cond.192
  %186 = load i32, i32* %k, align 4
  %shl = shl i32 %186, 2
  store i32 %shl, i32* %aux, align 4
  %187 = load i32, i32* %aux, align 4
  %add197 = add nsw i32 %187, 3
  %idxprom198 = sext i32 %add197 to i64
  %188 = load i8*, i8** %fixed, align 8
  %arrayidx199 = getelementptr inbounds i8, i8* %188, i64 %idxprom198
  %189 = load i8, i8* %arrayidx199, align 1
  %tobool200 = icmp ne i8 %189, 0
  br i1 %tobool200, label %if.end.211, label %if.then.201

if.then.201:                                      ; preds = %for.body.196
  %190 = load i8, i8* %red, align 1
  %191 = load i32, i32* %aux, align 4
  %add202 = add nsw i32 %191, 0
  %idxprom203 = sext i32 %add202 to i64
  %192 = load i8*, i8** %fixed, align 8
  %arrayidx204 = getelementptr inbounds i8, i8* %192, i64 %idxprom203
  store i8 %190, i8* %arrayidx204, align 1
  %193 = load i8, i8* %green, align 1
  %194 = load i32, i32* %aux, align 4
  %add205 = add nsw i32 %194, 1
  %idxprom206 = sext i32 %add205 to i64
  %195 = load i8*, i8** %fixed, align 8
  %arrayidx207 = getelementptr inbounds i8, i8* %195, i64 %idxprom206
  store i8 %193, i8* %arrayidx207, align 1
  %196 = load i8, i8* %blue, align 1
  %197 = load i32, i32* %aux, align 4
  %add208 = add nsw i32 %197, 2
  %idxprom209 = sext i32 %add208 to i64
  %198 = load i8*, i8** %fixed, align 8
  %arrayidx210 = getelementptr inbounds i8, i8* %198, i64 %idxprom209
  store i8 %196, i8* %arrayidx210, align 1
  br label %if.end.211

if.end.211:                                       ; preds = %if.then.201, %for.body.196
  br label %for.inc.212

for.inc.212:                                      ; preds = %if.end.211
  %199 = load i32, i32* %k, align 4
  %inc213 = add nsw i32 %199, 1
  store i32 %inc213, i32* %k, align 4
  br label %for.cond.192

for.end.214:                                      ; preds = %for.cond.192
  br label %for.inc.215

for.inc.215:                                      ; preds = %for.end.214
  %200 = load i32, i32* %i, align 4
  %inc216 = add nsw i32 %200, 1
  store i32 %inc216, i32* %i, align 4
  br label %for.cond.186

for.end.217:                                      ; preds = %for.cond.186
  br label %if.end.218

if.end.218:                                       ; preds = %for.end.217, %land.lhs.true.183, %if.end.179
  %201 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %202 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %call219 = call i32 @png_get_valid(%struct.png_struct_def* %201, %struct.png_info_def* %202, i32 16)
  %tobool220 = icmp ne i32 %call219, 0
  br i1 %tobool220, label %if.then.221, label %if.else.271

if.then.221:                                      ; preds = %if.end.218
  store i32 0, i32* %i, align 4
  br label %for.cond.222

for.cond.222:                                     ; preds = %for.inc.231, %if.then.221
  %203 = load i32, i32* %i, align 4
  %cmp223 = icmp slt i32 %203, 256
  br i1 %cmp223, label %for.body.225, label %for.end.233

for.body.225:                                     ; preds = %for.cond.222
  %204 = load i32, i32* %i, align 4
  %conv226 = trunc i32 %204 to i8
  %205 = load i32, i32* %i, align 4
  %idxprom227 = sext i32 %205 to i64
  %arrayidx228 = getelementptr inbounds [256 x i8], [256 x i8]* %remap, i32 0, i64 %idxprom227
  %206 = load i8, i8* %arrayidx228, align 1
  %idxprom229 = zext i8 %206 to i64
  %arrayidx230 = getelementptr inbounds [256 x i8], [256 x i8]* %inverse_remap, i32 0, i64 %idxprom229
  store i8 %conv226, i8* %arrayidx230, align 1
  br label %for.inc.231

for.inc.231:                                      ; preds = %for.body.225
  %207 = load i32, i32* %i, align 4
  %inc232 = add nsw i32 %207, 1
  store i32 %inc232, i32* %i, align 4
  br label %for.cond.222

for.end.233:                                      ; preds = %for.cond.222
  store i32 0, i32* %i, align 4
  br label %for.cond.234

for.cond.234:                                     ; preds = %for.inc.268, %for.end.233
  %208 = load i32, i32* %i, align 4
  %209 = load i32, i32* %num, align 4
  %cmp235 = icmp slt i32 %208, %209
  br i1 %cmp235, label %for.body.237, label %for.end.270

for.body.237:                                     ; preds = %for.cond.234
  %210 = load i32, i32* %i, align 4
  %idxprom238 = sext i32 %210 to i64
  %211 = load i8**, i8*** %pixels, align 8
  %arrayidx239 = getelementptr inbounds i8*, i8** %211, i64 %idxprom238
  %212 = load i8*, i8** %arrayidx239, align 8
  store i8* %212, i8** %fixed, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.240

for.cond.240:                                     ; preds = %for.inc.265, %for.body.237
  %213 = load i32, i32* %k, align 4
  %214 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width241 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %214, i32 0, i32 1
  %215 = load i32, i32* %width241, align 4
  %cmp242 = icmp ult i32 %213, %215
  br i1 %cmp242, label %for.body.244, label %for.end.267

for.body.244:                                     ; preds = %for.cond.240
  %216 = load i32, i32* %k, align 4
  %mul245 = mul nsw i32 %216, 2
  %add246 = add nsw i32 %mul245, 1
  %idxprom247 = sext i32 %add246 to i64
  %217 = load i8*, i8** %fixed, align 8
  %arrayidx248 = getelementptr inbounds i8, i8* %217, i64 %idxprom247
  %218 = load i8, i8* %arrayidx248, align 1
  %conv249 = zext i8 %218 to i32
  %cmp250 = icmp sgt i32 %conv249, 127
  br i1 %cmp250, label %cond.true.252, label %cond.false.259

cond.true.252:                                    ; preds = %for.body.244
  %219 = load i32, i32* %k, align 4
  %mul253 = mul nsw i32 %219, 2
  %idxprom254 = sext i32 %mul253 to i64
  %220 = load i8*, i8** %fixed, align 8
  %arrayidx255 = getelementptr inbounds i8, i8* %220, i64 %idxprom254
  %221 = load i8, i8* %arrayidx255, align 1
  %idxprom256 = zext i8 %221 to i64
  %arrayidx257 = getelementptr inbounds [256 x i8], [256 x i8]* %inverse_remap, i32 0, i64 %idxprom256
  %222 = load i8, i8* %arrayidx257, align 1
  %conv258 = zext i8 %222 to i32
  br label %cond.end.260

cond.false.259:                                   ; preds = %for.body.244
  br label %cond.end.260

cond.end.260:                                     ; preds = %cond.false.259, %cond.true.252
  %cond261 = phi i32 [ %conv258, %cond.true.252 ], [ 0, %cond.false.259 ]
  %conv262 = trunc i32 %cond261 to i8
  %223 = load i32, i32* %k, align 4
  %idxprom263 = sext i32 %223 to i64
  %224 = load i8*, i8** %fixed, align 8
  %arrayidx264 = getelementptr inbounds i8, i8* %224, i64 %idxprom263
  store i8 %conv262, i8* %arrayidx264, align 1
  br label %for.inc.265

for.inc.265:                                      ; preds = %cond.end.260
  %225 = load i32, i32* %k, align 4
  %inc266 = add nsw i32 %225, 1
  store i32 %inc266, i32* %k, align 4
  br label %for.cond.240

for.end.267:                                      ; preds = %for.cond.240
  br label %for.inc.268

for.inc.268:                                      ; preds = %for.end.267
  %226 = load i32, i32* %i, align 4
  %inc269 = add nsw i32 %226, 1
  store i32 %inc269, i32* %i, align 4
  br label %for.cond.234

for.end.270:                                      ; preds = %for.cond.234
  br label %if.end.301

if.else.271:                                      ; preds = %if.end.218
  %227 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %228 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %call272 = call i32 @png_get_valid(%struct.png_struct_def* %227, %struct.png_info_def* %228, i32 8)
  %tobool273 = icmp ne i32 %call272, 0
  br i1 %tobool273, label %land.lhs.true.274, label %if.end.300

land.lhs.true.274:                                ; preds = %if.else.271
  %229 = load i32, i32* %bpp, align 4
  %cmp275 = icmp eq i32 %229, 2
  br i1 %cmp275, label %if.then.277, label %if.end.300

if.then.277:                                      ; preds = %land.lhs.true.274
  store i32 0, i32* %i, align 4
  br label %for.cond.278

for.cond.278:                                     ; preds = %for.inc.297, %if.then.277
  %230 = load i32, i32* %i, align 4
  %231 = load i32, i32* %num, align 4
  %cmp279 = icmp slt i32 %230, %231
  br i1 %cmp279, label %for.body.281, label %for.end.299

for.body.281:                                     ; preds = %for.cond.278
  %232 = load i32, i32* %i, align 4
  %idxprom282 = sext i32 %232 to i64
  %233 = load i8**, i8*** %pixels, align 8
  %arrayidx283 = getelementptr inbounds i8*, i8** %233, i64 %idxprom282
  %234 = load i8*, i8** %arrayidx283, align 8
  store i8* %234, i8** %fixed, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.284

for.cond.284:                                     ; preds = %for.inc.294, %for.body.281
  %235 = load i32, i32* %k, align 4
  %236 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width285 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %236, i32 0, i32 1
  %237 = load i32, i32* %width285, align 4
  %cmp286 = icmp ult i32 %235, %237
  br i1 %cmp286, label %for.body.288, label %for.end.296

for.body.288:                                     ; preds = %for.cond.284
  %238 = load i32, i32* %k, align 4
  %mul289 = mul nsw i32 %238, 2
  %idxprom290 = sext i32 %mul289 to i64
  %239 = load i8*, i8** %fixed, align 8
  %arrayidx291 = getelementptr inbounds i8, i8* %239, i64 %idxprom290
  %240 = load i8, i8* %arrayidx291, align 1
  %241 = load i32, i32* %k, align 4
  %idxprom292 = sext i32 %241 to i64
  %242 = load i8*, i8** %fixed, align 8
  %arrayidx293 = getelementptr inbounds i8, i8* %242, i64 %idxprom292
  store i8 %240, i8* %arrayidx293, align 1
  br label %for.inc.294

for.inc.294:                                      ; preds = %for.body.288
  %243 = load i32, i32* %k, align 4
  %inc295 = add nsw i32 %243, 1
  store i32 %inc295, i32* %k, align 4
  br label %for.cond.284

for.end.296:                                      ; preds = %for.cond.284
  br label %for.inc.297

for.inc.297:                                      ; preds = %for.end.296
  %244 = load i32, i32* %i, align 4
  %inc298 = add nsw i32 %244, 1
  store i32 %inc298, i32* %i, align 4
  br label %for.cond.278

for.end.299:                                      ; preds = %for.cond.278
  br label %if.end.300

if.end.300:                                       ; preds = %for.end.299, %land.lhs.true.274, %if.else.271
  br label %if.end.301

if.end.301:                                       ; preds = %if.end.300, %for.end.270
  %245 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %246 = load i8**, i8*** %pixels, align 8
  %247 = load i32, i32* %num, align 4
  call void @png_write_rows(%struct.png_struct_def* %245, i8** %246, i32 %247)
  %248 = load i32, i32* %pass, align 4
  %conv302 = sitofp i32 %248 to double
  %249 = load i32, i32* %end, align 4
  %conv303 = sitofp i32 %249 to double
  %250 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height304 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %250, i32 0, i32 2
  %251 = load i32, i32* %height304, align 4
  %conv305 = uitofp i32 %251 to double
  %div306 = fdiv double %conv303, %conv305
  %add307 = fadd double %conv302, %div306
  %252 = load i32, i32* %num_passes, align 4
  %conv308 = sitofp i32 %252 to double
  %div309 = fdiv double %add307, %conv308
  %call310 = call i32 @gimp_progress_update(double %div309)
  br label %for.inc.311

for.inc.311:                                      ; preds = %if.end.301
  %253 = load i32, i32* %tile_height, align 4
  %254 = load i32, i32* %begin, align 4
  %add312 = add nsw i32 %254, %253
  store i32 %add312, i32* %begin, align 4
  %255 = load i32, i32* %tile_height, align 4
  %256 = load i32, i32* %end, align 4
  %add313 = add nsw i32 %256, %255
  store i32 %add313, i32* %end, align 4
  br label %for.cond.169

for.end.314:                                      ; preds = %for.cond.169
  br label %for.inc.315

for.inc.315:                                      ; preds = %for.end.314
  %257 = load i32, i32* %pass, align 4
  %inc316 = add nsw i32 %257, 1
  store i32 %inc316, i32* %pass, align 4
  br label %for.cond.165

for.end.317:                                      ; preds = %for.cond.165
  %call318 = call i32 @gimp_progress_update(double 1.000000e+00)
  %258 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %259 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  call void @png_write_end(%struct.png_struct_def* %258, %struct.png_info_def* %259)
  call void @png_destroy_write_struct(%struct.png_struct_def** %pp, %struct.png_info_def** %info)
  %260 = load i8*, i8** %pixel, align 8
  call void @g_free(i8* %260)
  %261 = load i8**, i8*** %pixels, align 8
  %262 = bitcast i8** %261 to i8*
  call void @g_free(i8* %262)
  %263 = load %struct.png_text_struct*, %struct.png_text_struct** %text, align 8
  %tobool319 = icmp ne %struct.png_text_struct* %263, null
  br i1 %tobool319, label %if.then.320, label %if.end.322

if.then.320:                                      ; preds = %for.end.317
  %264 = load %struct.png_text_struct*, %struct.png_text_struct** %text, align 8
  %text321 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %264, i32 0, i32 2
  %265 = load i8*, i8** %text321, align 8
  call void @g_free(i8* %265)
  %266 = load %struct.png_text_struct*, %struct.png_text_struct** %text, align 8
  %267 = bitcast %struct.png_text_struct* %266 to i8*
  call void @g_free(i8* %267)
  br label %if.end.322

if.end.322:                                       ; preds = %if.then.320, %for.end.317
  %268 = load %struct.png_struct_def*, %struct.png_struct_def** %pp, align 8
  %269 = bitcast %struct.png_struct_def* %268 to i8*
  call void @free(i8* %269) #7
  %270 = load %struct.png_info_def*, %struct.png_info_def** %info, align 8
  %271 = bitcast %struct.png_info_def* %270 to i8*
  call void @free(i8* %271) #7
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call323 = call i32 @fclose(%struct._IO_FILE* %272)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.322, %sw.default, %if.then.12, %if.then.7, %if.then
  %273 = load i32, i32* %retval
  ret i32 %273
}

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare i32 @gimp_image_delete(i32) #1

; Function Attrs: nounwind uwtable
define internal void @save_defaults() #0 {
entry:
  %parasite = alloca %struct._GimpParasite*, align 8
  %def_str = alloca i8*, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 0), align 4
  %1 = load i32, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 1), align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 2), align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 3), align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 4), align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 5), align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 6), align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 7), align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 8), align 4
  %call = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.82, i32 0, i32 0), i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8)
  store i8* %call, i8** %def_str, align 8
  %9 = load i8*, i8** %def_str, align 8
  %call1 = call i64 @strlen(i8* %9) #9
  %conv = trunc i64 %call1 to i32
  %10 = load i8*, i8** %def_str, align 8
  %call2 = call %struct._GimpParasite* @gimp_parasite_new(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.81, i32 0, i32 0), i32 1, i32 %conv, i8* %10)
  store %struct._GimpParasite* %call2, %struct._GimpParasite** %parasite, align 8
  %11 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %call3 = call i32 @gimp_attach_parasite(%struct._GimpParasite* %11)
  %12 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %12)
  %13 = load i8*, i8** %def_str, align 8
  call void @g_free(i8* %13)
  ret void
}

declare noalias %struct.png_struct_def* @png_create_read_struct(i8*, i8*, void (%struct.png_struct_def*, i8*)*, void (%struct.png_struct_def*, i8*)*) #1

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare i8* @gimp_filename_to_utf8(i8*) #1

declare noalias %struct.png_info_def* @png_create_info_struct(%struct.png_struct_def*) #1

; Function Attrs: nounwind returns_twice
declare i32 @_setjmp(%struct.__jmp_buf_tag*) #5

declare [1 x %struct.__jmp_buf_tag]* @png_set_longjmp_fn(%struct.png_struct_def*, void (%struct.__jmp_buf_tag*, i32)*, i64) #1

; Function Attrs: noreturn nounwind
declare void @longjmp(%struct.__jmp_buf_tag*, i32) #6

declare i32 @g_file_error_quark() #1

declare void @png_set_benign_errors(%struct.png_struct_def*, i32) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @g_file_error_from_errno(i32) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #3

declare void @png_init_io(%struct.png_struct_def*, %struct._IO_FILE*) #1

declare void @png_set_compression_buffer_size(%struct.png_struct_def*, i64) #1

declare i32 @gimp_progress_init_printf(i8*, ...) #1

declare void @png_read_info(%struct.png_struct_def*, %struct.png_info_def*) #1

declare zeroext i8 @png_get_bit_depth(%struct.png_struct_def*, %struct.png_info_def*) #1

declare void @png_set_strip_16(%struct.png_struct_def*) #1

declare zeroext i8 @png_get_color_type(%struct.png_struct_def*, %struct.png_info_def*) #1

declare void @png_set_expand(%struct.png_struct_def*) #1

declare void @png_set_packing(%struct.png_struct_def*) #1

declare i32 @png_get_valid(%struct.png_struct_def*, %struct.png_info_def*, i32) #1

declare i32 @png_set_interlace_handling(%struct.png_struct_def*) #1

declare i32 @png_get_tRNS(%struct.png_struct_def*, %struct.png_info_def*, i8**, i32*, %struct.png_color_16_struct**) #1

declare void @png_read_update_info(%struct.png_struct_def*, %struct.png_info_def*) #1

declare i32 @gimp_image_new(i32, i32, i32) #1

declare i32 @png_get_image_width(%struct.png_struct_def*, %struct.png_info_def*) #1

declare i32 @png_get_image_height(%struct.png_struct_def*, %struct.png_info_def*) #1

declare i8* @gimp_get_pdb_error() #1

declare i32 @gimp_layer_new(i32, i8*, i32, i32, i32, double, i32) #1

declare i32 @gimp_image_insert_layer(i32, i32, i32, i32) #1

declare i32 @png_get_gAMA(%struct.png_struct_def*, %struct.png_info_def*, double*) #1

declare i8* @g_ascii_dtostr(i8*, i32, double) #1

declare %struct._GimpParasite* @gimp_parasite_new(i8*, i32, i32, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i32 @gimp_image_attach_parasite(i32, %struct._GimpParasite*) #1

declare void @gimp_parasite_free(%struct._GimpParasite*) #1

declare i32 @png_get_x_offset_pixels(%struct.png_struct_def*, %struct.png_info_def*) #1

declare i32 @png_get_y_offset_pixels(%struct.png_struct_def*, %struct.png_info_def*) #1

declare i32 @gimp_layer_set_offsets(i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @offsets_dialog(i32 %offset_x, i32 %offset_y) #0 {
entry:
  %offset_x.addr = alloca i32, align 4
  %offset_y.addr = alloca i32, align 4
  %dialog = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %image = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %message = alloca i8*, align 8
  %run = alloca i32, align 4
  store i32 %offset_x, i32* %offset_x.addr, align 4
  store i32 %offset_y, i32* %offset_y.addr, align 4
  call void @gimp_ui_init(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i32 0, i32 0), i32 0)
  %call = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.74, i32 0, i32 0)) #7
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.76, i32 0, i32 0)) #7
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.77, i32 0, i32 0)) #7
  %call3 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.75, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), i8* %call1, i32 -9, i8* %call2, i32 -8, i8* null)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %dialog, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_dialog_get_type() #8
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call4)
  %2 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkDialog*
  call void @gtk_dialog_set_default_response(%struct._GtkDialog* %2, i32 -8)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_dialog_get_type() #8
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call6)
  %5 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %5, i32 -8, i32 -9, i32 -1)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_window_get_type() #8
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call8)
  %8 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %8)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_window_get_type() #8
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call10)
  %11 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkWindow*
  call void @gtk_window_set_resizable(%struct._GtkWindow* %11, i32 0)
  %call12 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call12, %struct._GtkWidget** %hbox, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_container_get_type() #8
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call13)
  %14 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %14, i32 12)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_dialog_get_type() #8
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call15)
  %17 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkDialog*
  %call17 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %17)
  %18 = bitcast %struct._GtkWidget* %call17 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_box_get_type() #8
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call18)
  %19 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkBox*
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %19, %struct._GtkWidget* %20, i32 0, i32 0, i32 0)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %21)
  %call20 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.78, i32 0, i32 0), i32 6)
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %image, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_misc_get_type() #8
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call21)
  %24 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %24, float 5.000000e-01, float 0.000000e+00)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_box_get_type() #8
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call23)
  %27 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkBox*
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %27, %struct._GtkWidget* %28, i32 0, i32 0, i32 0)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %29)
  %call25 = call i8* @gettext(i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.79, i32 0, i32 0)) #7
  %30 = load i32, i32* %offset_x.addr, align 4
  %31 = load i32, i32* %offset_y.addr, align 4
  %call26 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call25, i32 %30, i32 %31)
  store i8* %call26, i8** %message, align 8
  %32 = load i8*, i8** %message, align 8
  %call27 = call %struct._GtkWidget* @gtk_label_new(i8* %32)
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %label, align 8
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_misc_get_type() #8
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call28)
  %35 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %35, float 5.000000e-01, float 0.000000e+00)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_label_get_type() #8
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call30)
  %38 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkLabel*
  call void @gtk_label_set_line_wrap(%struct._GtkLabel* %38, i32 1)
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_box_get_type() #8
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call32)
  %41 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkBox*
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %41, %struct._GtkWidget* %42, i32 1, i32 1, i32 0)
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %43)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %44)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call34 = call i64 @gimp_dialog_get_type() #8
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call34)
  %47 = bitcast %struct._GTypeInstance* %call35 to %struct._GimpDialog*
  %call36 = call i32 @gimp_dialog_run(%struct._GimpDialog* %47)
  %cmp = icmp eq i32 %call36, -8
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %run, align 4
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %48)
  %49 = load i32, i32* %run, align 4
  ret i32 %49
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #3

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

declare i32 @png_get_pHYs(%struct.png_struct_def*, %struct.png_info_def*, i32*, i32*, i32*) #1

declare i32 @gimp_image_get_resolution(i32, double*, double*) #1

declare i32 @gimp_image_set_resolution(i32, double, double) #1

declare i32 @gimp_image_set_filename(i32, i8*) #1

declare i32 @png_get_PLTE(%struct.png_struct_def*, %struct.png_info_def*, %struct.png_color_struct**, i32*) #1

declare i32 @gimp_image_set_colormap(i32, i8*, i32) #1

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_height() #3

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare zeroext i8 @png_get_channels(%struct.png_struct_def*, %struct.png_info_def*) #1

declare void @png_set_error_fn(%struct.png_struct_def*, i8*, void (%struct.png_struct_def*, i8*)*, void (%struct.png_struct_def*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal void @on_read_error(%struct.png_struct_def* %png_ptr, i8* %error_msg) #0 {
entry:
  %png_ptr.addr = alloca %struct.png_struct_def*, align 8
  %error_msg.addr = alloca i8*, align 8
  %error_data = alloca %struct.read_error_data*, align 8
  %begin = alloca i32, align 4
  %end = alloca i32, align 4
  %num = alloca i32, align 4
  store %struct.png_struct_def* %png_ptr, %struct.png_struct_def** %png_ptr.addr, align 8
  store i8* %error_msg, i8** %error_msg.addr, align 8
  %0 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %call = call i8* @png_get_error_ptr(%struct.png_struct_def* %0)
  %1 = bitcast i8* %call to %struct.read_error_data*
  store %struct.read_error_data* %1, %struct.read_error_data** %error_data, align 8
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.80, i32 0, i32 0)) #7
  %2 = load i8*, i8** %error_msg.addr, align 8
  call void (i8*, ...) @g_warning(i8* %call1, i8* %2)
  %3 = load %struct.read_error_data*, %struct.read_error_data** %error_data, align 8
  %pixel_rgn = getelementptr inbounds %struct.read_error_data, %struct.read_error_data* %3, i32 0, i32 0
  %4 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn, align 8
  %5 = load %struct.read_error_data*, %struct.read_error_data** %error_data, align 8
  %pixel = getelementptr inbounds %struct.read_error_data, %struct.read_error_data* %5, i32 0, i32 1
  %6 = load i8*, i8** %pixel, align 8
  %7 = load %struct.read_error_data*, %struct.read_error_data** %error_data, align 8
  %begin2 = getelementptr inbounds %struct.read_error_data, %struct.read_error_data* %7, i32 0, i32 7
  %8 = load i32, i32* %begin2, align 4
  %9 = load %struct.read_error_data*, %struct.read_error_data** %error_data, align 8
  %drawable = getelementptr inbounds %struct.read_error_data, %struct.read_error_data* %9, i32 0, i32 2
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %10, i32 0, i32 1
  %11 = load i32, i32* %width, align 4
  %12 = load %struct.read_error_data*, %struct.read_error_data** %error_data, align 8
  %num3 = getelementptr inbounds %struct.read_error_data, %struct.read_error_data* %12, i32 0, i32 9
  %13 = load i32, i32* %num3, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %4, i8* %6, i32 0, i32 %8, i32 %11, i32 %13)
  %14 = load %struct.read_error_data*, %struct.read_error_data** %error_data, align 8
  %pixel4 = getelementptr inbounds %struct.read_error_data, %struct.read_error_data* %14, i32 0, i32 1
  %15 = load i8*, i8** %pixel4, align 8
  %16 = load %struct.read_error_data*, %struct.read_error_data** %error_data, align 8
  %tile_height = getelementptr inbounds %struct.read_error_data, %struct.read_error_data* %16, i32 0, i32 6
  %17 = load i32, i32* %tile_height, align 4
  %18 = load %struct.read_error_data*, %struct.read_error_data** %error_data, align 8
  %width5 = getelementptr inbounds %struct.read_error_data, %struct.read_error_data* %18, i32 0, i32 3
  %19 = load i32, i32* %width5, align 4
  %mul = mul i32 %17, %19
  %20 = load %struct.read_error_data*, %struct.read_error_data** %error_data, align 8
  %bpp = getelementptr inbounds %struct.read_error_data, %struct.read_error_data* %20, i32 0, i32 5
  %21 = load i32, i32* %bpp, align 4
  %mul6 = mul i32 %mul, %21
  %conv = zext i32 %mul6 to i64
  call void @llvm.memset.p0i8.i64(i8* %15, i8 0, i64 %conv, i32 1, i1 false)
  %22 = load %struct.read_error_data*, %struct.read_error_data** %error_data, align 8
  %begin7 = getelementptr inbounds %struct.read_error_data, %struct.read_error_data* %22, i32 0, i32 7
  %23 = load i32, i32* %begin7, align 4
  %24 = load %struct.read_error_data*, %struct.read_error_data** %error_data, align 8
  %tile_height8 = getelementptr inbounds %struct.read_error_data, %struct.read_error_data* %24, i32 0, i32 6
  %25 = load i32, i32* %tile_height8, align 4
  %add = add nsw i32 %23, %25
  store i32 %add, i32* %begin, align 4
  %26 = load %struct.read_error_data*, %struct.read_error_data** %error_data, align 8
  %end9 = getelementptr inbounds %struct.read_error_data, %struct.read_error_data* %26, i32 0, i32 8
  %27 = load i32, i32* %end9, align 4
  %28 = load %struct.read_error_data*, %struct.read_error_data** %error_data, align 8
  %tile_height10 = getelementptr inbounds %struct.read_error_data, %struct.read_error_data* %28, i32 0, i32 6
  %29 = load i32, i32* %tile_height10, align 4
  %add11 = add nsw i32 %27, %29
  store i32 %add11, i32* %end, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %30 = load i32, i32* %begin, align 4
  %31 = load %struct.read_error_data*, %struct.read_error_data** %error_data, align 8
  %height = getelementptr inbounds %struct.read_error_data, %struct.read_error_data* %31, i32 0, i32 4
  %32 = load i32, i32* %height, align 4
  %cmp = icmp ult i32 %30, %32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load i32, i32* %end, align 4
  %34 = load %struct.read_error_data*, %struct.read_error_data** %error_data, align 8
  %height13 = getelementptr inbounds %struct.read_error_data, %struct.read_error_data* %34, i32 0, i32 4
  %35 = load i32, i32* %height13, align 4
  %cmp14 = icmp ugt i32 %33, %35
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %36 = load %struct.read_error_data*, %struct.read_error_data** %error_data, align 8
  %height16 = getelementptr inbounds %struct.read_error_data, %struct.read_error_data* %36, i32 0, i32 4
  %37 = load i32, i32* %height16, align 4
  store i32 %37, i32* %end, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %38 = load i32, i32* %end, align 4
  %39 = load i32, i32* %begin, align 4
  %sub = sub nsw i32 %38, %39
  store i32 %sub, i32* %num, align 4
  %40 = load %struct.read_error_data*, %struct.read_error_data** %error_data, align 8
  %pixel_rgn17 = getelementptr inbounds %struct.read_error_data, %struct.read_error_data* %40, i32 0, i32 0
  %41 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn17, align 8
  %42 = load %struct.read_error_data*, %struct.read_error_data** %error_data, align 8
  %pixel18 = getelementptr inbounds %struct.read_error_data, %struct.read_error_data* %42, i32 0, i32 1
  %43 = load i8*, i8** %pixel18, align 8
  %44 = load i32, i32* %begin, align 4
  %45 = load %struct.read_error_data*, %struct.read_error_data** %error_data, align 8
  %drawable19 = getelementptr inbounds %struct.read_error_data, %struct.read_error_data* %45, i32 0, i32 2
  %46 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable19, align 8
  %width20 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %46, i32 0, i32 1
  %47 = load i32, i32* %width20, align 4
  %48 = load i32, i32* %num, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %41, i8* %43, i32 0, i32 %44, i32 %47, i32 %48)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %49 = load %struct.read_error_data*, %struct.read_error_data** %error_data, align 8
  %tile_height21 = getelementptr inbounds %struct.read_error_data, %struct.read_error_data* %49, i32 0, i32 6
  %50 = load i32, i32* %tile_height21, align 4
  %51 = load i32, i32* %begin, align 4
  %add22 = add nsw i32 %51, %50
  store i32 %add22, i32* %begin, align 4
  %52 = load %struct.read_error_data*, %struct.read_error_data** %error_data, align 8
  %tile_height23 = getelementptr inbounds %struct.read_error_data, %struct.read_error_data* %52, i32 0, i32 6
  %53 = load i32, i32* %tile_height23, align 4
  %54 = load i32, i32* %end, align 4
  %add24 = add nsw i32 %54, %53
  store i32 %add24, i32* %end, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %55 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %call25 = call [1 x %struct.__jmp_buf_tag]* @png_set_longjmp_fn(%struct.png_struct_def* %55, void (%struct.__jmp_buf_tag*, i32)* @longjmp, i64 200)
  %arraydecay = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %call25, i32 0, i32 0
  call void @longjmp(%struct.__jmp_buf_tag* %arraydecay, i32 1) #11
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare void @png_read_rows(%struct.png_struct_def*, i8**, i8**, i32) #1

declare void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #7

declare i32 @gimp_progress_update(double) #1

declare void @png_read_end(%struct.png_struct_def*, %struct.png_info_def*) #1

declare i32 @png_get_text(%struct.png_struct_def*, %struct.png_info_def*, %struct.png_text_struct**, i32*) #1

declare noalias i8* @g_convert(i8*, i64, i8*, i8*, i64*, i64*, %struct._GError**) #1

declare i32 @g_utf8_validate(i8*, i64, i8**) #1

declare noalias i8* @g_strdup(i8*) #1

declare void @g_free(i8*) #1

declare i32 @png_get_iCCP(%struct.png_struct_def*, %struct.png_info_def*, i8**, i32*, i8**, i32*) #1

declare void @png_destroy_read_struct(%struct.png_struct_def**, %struct.png_info_def**, %struct.png_info_def**) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

declare i32 @fclose(%struct._IO_FILE*) #1

declare i32 @gimp_layer_add_alpha(i32) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare %struct._GtkWidget* @gimp_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

declare void @gimp_standard_help_func(i8*, i8*) #1

declare void @gtk_dialog_set_default_response(%struct._GtkDialog*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #3

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

declare void @gimp_window_set_transient(%struct._GtkWindow*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #3

declare void @gtk_window_set_resizable(%struct._GtkWindow*, i32) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_image_new_from_stock(i8*, i32) #1

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #3

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare void @gtk_label_set_line_wrap(%struct._GtkLabel*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #3

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #7

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #7

declare i8* @png_get_error_ptr(%struct.png_struct_def*) #1

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

declare %struct._GimpParasite* @gimp_get_parasite(i8*) #1

declare noalias i8* @g_strndup(i8*, i64) #1

declare i8* @gimp_parasite_data(%struct._GimpParasite*) #1

declare i64 @gimp_parasite_data_size(%struct._GimpParasite*) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #7

declare %struct._GtkWidget* @gimp_export_dialog_new(i8*, i8*, i8*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @save_dialog_response(%struct._GtkWidget* %widget, i32 %response_id, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %pg = alloca %struct.PngSaveGui*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.PngSaveGui*
  store %struct.PngSaveGui* %1, %struct.PngSaveGui** %pg, align 8
  %2 = load i32, i32* %response_id.addr, align 4
  switch i32 %2, label %sw.default [
    i32 -5, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %3 = load %struct.PngSaveGui*, %struct.PngSaveGui** %pg, align 8
  %run = getelementptr inbounds %struct.PngSaveGui, %struct.PngSaveGui* %3, i32 0, i32 0
  store i32 1, i32* %run, align 4
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %4)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  ret void
}

declare void @gtk_main_quit() #1

declare %struct._GtkBuilder* @gtk_builder_new() #1

declare noalias i8* @g_build_filename(i8*, ...) #1

; Function Attrs: nounwind readnone
declare i8* @gimp_data_directory() #3

declare i32 @gtk_builder_add_from_file(%struct._GtkBuilder*, i8*, %struct._GError**) #1

declare noalias i8* @g_filename_display_name(i8*) #1

declare void @g_printerr(i8*, ...) #1

declare %struct._GtkWidget* @gimp_export_dialog_get_content_area(%struct._GtkWidget*) #1

declare %struct._GObject* @gtk_builder_get_object(%struct._GtkBuilder*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #3

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @toggle_button_init(%struct._GtkBuilder* %builder, i8* %name, i32 %initial_value, i32* %value_pointer) #0 {
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
  %call1 = call i64 @gtk_widget_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWidget*
  store %struct._GtkWidget* %3, %struct._GtkWidget** %toggle, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_toggle_button_get_type() #8
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkToggleButton*
  %7 = load i32, i32* %initial_value.addr, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %6, i32 %7)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %9 = bitcast %struct._GtkWidget* %8 to i8*
  %10 = load i32*, i32** %value_pointer.addr, align 8
  %11 = bitcast i32* %10 to i8*
  %call5 = call i64 @g_signal_connect_data(i8* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.101, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* %11, void (i8*, %struct._GClosure*)* null, i32 0)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  ret %struct._GtkWidget* %12
}

declare %struct._GimpParasite* @gimp_image_get_parasite(i32, i8*) #1

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #3

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

declare void @gimp_int_adjustment_update(%struct._GtkAdjustment*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @load_gui_defaults(%struct.PngSaveGui* %pg) #0 {
entry:
  %pg.addr = alloca %struct.PngSaveGui*, align 8
  store %struct.PngSaveGui* %pg, %struct.PngSaveGui** %pg.addr, align 8
  call void @load_defaults()
  %0 = load %struct.PngSaveGui*, %struct.PngSaveGui** %pg.addr, align 8
  %interlaced = getelementptr inbounds %struct.PngSaveGui, %struct.PngSaveGui* %0, i32 0, i32 1
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %interlaced, align 8
  %call = call i32 @gtk_widget_is_sensitive(%struct._GtkWidget* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.PngSaveGui*, %struct.PngSaveGui** %pg.addr, align 8
  %interlaced1 = getelementptr inbounds %struct.PngSaveGui, %struct.PngSaveGui* %2, i32 0, i32 1
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %interlaced1, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_toggle_button_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkToggleButton*
  %6 = load i32, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 0), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %5, i32 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.PngSaveGui*, %struct.PngSaveGui** %pg.addr, align 8
  %bkgd = getelementptr inbounds %struct.PngSaveGui, %struct.PngSaveGui* %7, i32 0, i32 2
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %bkgd, align 8
  %call4 = call i32 @gtk_widget_is_sensitive(%struct._GtkWidget* %8)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.end
  %9 = load %struct.PngSaveGui*, %struct.PngSaveGui** %pg.addr, align 8
  %bkgd7 = getelementptr inbounds %struct.PngSaveGui, %struct.PngSaveGui* %9, i32 0, i32 2
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %bkgd7, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_toggle_button_get_type() #8
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call8)
  %12 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkToggleButton*
  %13 = load i32, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 1), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %12, i32 %13)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.6, %if.end
  %14 = load %struct.PngSaveGui*, %struct.PngSaveGui** %pg.addr, align 8
  %gama = getelementptr inbounds %struct.PngSaveGui, %struct.PngSaveGui* %14, i32 0, i32 3
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %gama, align 8
  %call11 = call i32 @gtk_widget_is_sensitive(%struct._GtkWidget* %15)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %if.end.10
  %16 = load %struct.PngSaveGui*, %struct.PngSaveGui** %pg.addr, align 8
  %gama14 = getelementptr inbounds %struct.PngSaveGui, %struct.PngSaveGui* %16, i32 0, i32 3
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %gama14, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_toggle_button_get_type() #8
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call15)
  %19 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkToggleButton*
  %20 = load i32, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 2), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %19, i32 %20)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.13, %if.end.10
  %21 = load %struct.PngSaveGui*, %struct.PngSaveGui** %pg.addr, align 8
  %offs = getelementptr inbounds %struct.PngSaveGui, %struct.PngSaveGui* %21, i32 0, i32 4
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %offs, align 8
  %call18 = call i32 @gtk_widget_is_sensitive(%struct._GtkWidget* %22)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.24

if.then.20:                                       ; preds = %if.end.17
  %23 = load %struct.PngSaveGui*, %struct.PngSaveGui** %pg.addr, align 8
  %offs21 = getelementptr inbounds %struct.PngSaveGui, %struct.PngSaveGui* %23, i32 0, i32 4
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %offs21, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_toggle_button_get_type() #8
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call22)
  %26 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkToggleButton*
  %27 = load i32, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 3), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %26, i32 %27)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.20, %if.end.17
  %28 = load %struct.PngSaveGui*, %struct.PngSaveGui** %pg.addr, align 8
  %phys = getelementptr inbounds %struct.PngSaveGui, %struct.PngSaveGui* %28, i32 0, i32 5
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %phys, align 8
  %call25 = call i32 @gtk_widget_is_sensitive(%struct._GtkWidget* %29)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.31

if.then.27:                                       ; preds = %if.end.24
  %30 = load %struct.PngSaveGui*, %struct.PngSaveGui** %pg.addr, align 8
  %phys28 = getelementptr inbounds %struct.PngSaveGui, %struct.PngSaveGui* %30, i32 0, i32 5
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %phys28, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_toggle_button_get_type() #8
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call29)
  %33 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkToggleButton*
  %34 = load i32, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 4), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %33, i32 %34)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.27, %if.end.24
  %35 = load %struct.PngSaveGui*, %struct.PngSaveGui** %pg.addr, align 8
  %time = getelementptr inbounds %struct.PngSaveGui, %struct.PngSaveGui* %35, i32 0, i32 6
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %time, align 8
  %call32 = call i32 @gtk_widget_is_sensitive(%struct._GtkWidget* %36)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.38

if.then.34:                                       ; preds = %if.end.31
  %37 = load %struct.PngSaveGui*, %struct.PngSaveGui** %pg.addr, align 8
  %time35 = getelementptr inbounds %struct.PngSaveGui, %struct.PngSaveGui* %37, i32 0, i32 6
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %time35, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_toggle_button_get_type() #8
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call36)
  %40 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkToggleButton*
  %41 = load i32, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 5), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %40, i32 %41)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.34, %if.end.31
  %42 = load %struct.PngSaveGui*, %struct.PngSaveGui** %pg.addr, align 8
  %comment = getelementptr inbounds %struct.PngSaveGui, %struct.PngSaveGui* %42, i32 0, i32 7
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %comment, align 8
  %call39 = call i32 @gtk_widget_is_sensitive(%struct._GtkWidget* %43)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.then.41, label %if.end.45

if.then.41:                                       ; preds = %if.end.38
  %44 = load %struct.PngSaveGui*, %struct.PngSaveGui** %pg.addr, align 8
  %comment42 = getelementptr inbounds %struct.PngSaveGui, %struct.PngSaveGui* %44, i32 0, i32 7
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %comment42, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call43 = call i64 @gtk_toggle_button_get_type() #8
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call43)
  %47 = bitcast %struct._GTypeInstance* %call44 to %struct._GtkToggleButton*
  %48 = load i32, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 6), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %47, i32 %48)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.41, %if.end.38
  %49 = load %struct.PngSaveGui*, %struct.PngSaveGui** %pg.addr, align 8
  %save_transp_pixels = getelementptr inbounds %struct.PngSaveGui, %struct.PngSaveGui* %49, i32 0, i32 8
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %save_transp_pixels, align 8
  %call46 = call i32 @gtk_widget_is_sensitive(%struct._GtkWidget* %50)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.then.48, label %if.end.52

if.then.48:                                       ; preds = %if.end.45
  %51 = load %struct.PngSaveGui*, %struct.PngSaveGui** %pg.addr, align 8
  %save_transp_pixels49 = getelementptr inbounds %struct.PngSaveGui, %struct.PngSaveGui* %51, i32 0, i32 8
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %save_transp_pixels49, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_toggle_button_get_type() #8
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call50)
  %54 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkToggleButton*
  %55 = load i32, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 7), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %54, i32 %55)
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.48, %if.end.45
  %56 = load %struct.PngSaveGui*, %struct.PngSaveGui** %pg.addr, align 8
  %compression_level = getelementptr inbounds %struct.PngSaveGui, %struct.PngSaveGui* %56, i32 0, i32 9
  %57 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %compression_level, align 8
  %58 = load i32, i32* getelementptr inbounds (%struct.PngSaveVals, %struct.PngSaveVals* @pngvals, i32 0, i32 8), align 4
  %conv = sitofp i32 %58 to double
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %57, double %conv)
  ret void
}

declare void @gtk_main() #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare i32 @gtk_widget_is_sensitive(%struct._GtkWidget*) #1

declare noalias %struct.png_struct_def* @png_create_write_struct(i8*, i8*, void (%struct.png_struct_def*, i8*)*, void (%struct.png_struct_def*, i8*)*) #1

declare i32 @gimp_drawable_type(i32) #1

declare i8* @gimp_image_get_colormap(i32, i32*) #1

; Function Attrs: nounwind uwtable
define internal i32 @get_bit_depth_for_palette(i32 %num_palette) #0 {
entry:
  %retval = alloca i32, align 4
  %num_palette.addr = alloca i32, align 4
  store i32 %num_palette, i32* %num_palette.addr, align 4
  %0 = load i32, i32* %num_palette.addr, align 4
  %cmp = icmp sle i32 %0, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %num_palette.addr, align 4
  %cmp1 = icmp sle i32 %1, 4
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  store i32 2, i32* %retval
  br label %return

if.else.3:                                        ; preds = %if.else
  %2 = load i32, i32* %num_palette.addr, align 4
  %cmp4 = icmp sle i32 %2, 16
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else.3
  store i32 4, i32* %retval
  br label %return

if.else.6:                                        ; preds = %if.else.3
  store i32 8, i32* %retval
  br label %return

return:                                           ; preds = %if.else.6, %if.then.5, %if.then.2, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @respin_cmap(%struct.png_struct_def* %pp, %struct.png_info_def* %info, i8* %remap, i32 %image_ID, %struct._GimpDrawable* %drawable) #0 {
entry:
  %pp.addr = alloca %struct.png_struct_def*, align 8
  %info.addr = alloca %struct.png_info_def*, align 8
  %remap.addr = alloca i8*, align 8
  %image_ID.addr = alloca i32, align 4
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %colors = alloca i32, align 4
  %before = alloca i8*, align 8
  %transparent = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.png_struct_def* %pp, %struct.png_struct_def** %pp.addr, align 8
  store %struct.png_info_def* %info, %struct.png_info_def** %info.addr, align 8
  store i8* %remap, i8** %remap.addr, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call i8* @gimp_image_get_colormap(i32 %0, i32* %colors)
  store i8* %call, i8** %before, align 8
  %1 = load i32, i32* %colors, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call noalias i8* @g_malloc0_n(i64 3, i64 1)
  store i8* %call1, i8** %before, align 8
  store i32 1, i32* %colors, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call2 = call i32 @ia_has_transparent_pixels(%struct._GimpDrawable* %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then.3, label %if.else.44

if.then.3:                                        ; preds = %if.end
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call4 = call i32 @find_unused_ia_color(%struct._GimpDrawable* %3, i32* %colors)
  store i32 %call4, i32* %transparent, align 4
  %4 = load i32, i32* %transparent, align 4
  %cmp5 = icmp ne i32 %4, -1
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then.3
  store i32 1, i32* getelementptr inbounds (%struct.PngGlobals, %struct.PngGlobals* @pngg, i32 0, i32 0), align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @respin_cmap.trans, i32 0, i32 0), i8** getelementptr inbounds (%struct.PngGlobals, %struct.PngGlobals* @pngg, i32 0, i32 1), align 8
  store i32 1, i32* getelementptr inbounds (%struct.PngGlobals, %struct.PngGlobals* @pngg, i32 0, i32 2), align 4
  %5 = load i32, i32* %transparent, align 4
  %conv = trunc i32 %5 to i8
  %6 = load i8*, i8** %remap.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 0
  store i8 %conv, i8* %arrayidx, align 1
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.6
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %transparent, align 4
  %cmp7 = icmp sle i32 %7, %8
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %9, 1
  %conv9 = trunc i32 %sub to i8
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load i8*, i8** %remap.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %11, i64 %idxprom
  store i8 %conv9, i8* %arrayidx10, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.39, %for.end
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %colors, align 4
  %cmp12 = icmp slt i32 %13, %14
  br i1 %cmp12, label %for.body.14, label %for.end.41

for.body.14:                                      ; preds = %for.cond.11
  %15 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %15 to i64
  %16 = load i8*, i8** %remap.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %idxprom15
  %17 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %17 to i32
  %mul = mul nsw i32 3, %conv17
  %idxprom18 = sext i32 %mul to i64
  %18 = load i8*, i8** %before, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %18, i64 %idxprom18
  %19 = load i8, i8* %arrayidx19, align 1
  %20 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %20 to i64
  %arrayidx21 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* @respin_cmap.palette, i32 0, i64 %idxprom20
  %red = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %arrayidx21, i32 0, i32 0
  store i8 %19, i8* %red, align 1
  %21 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %21 to i64
  %22 = load i8*, i8** %remap.addr, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %22, i64 %idxprom22
  %23 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %23 to i32
  %mul25 = mul nsw i32 3, %conv24
  %add = add nsw i32 %mul25, 1
  %idxprom26 = sext i32 %add to i64
  %24 = load i8*, i8** %before, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %24, i64 %idxprom26
  %25 = load i8, i8* %arrayidx27, align 1
  %26 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %26 to i64
  %arrayidx29 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* @respin_cmap.palette, i32 0, i64 %idxprom28
  %green = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %arrayidx29, i32 0, i32 1
  store i8 %25, i8* %green, align 1
  %27 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %27 to i64
  %28 = load i8*, i8** %remap.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %28, i64 %idxprom30
  %29 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %29 to i32
  %mul33 = mul nsw i32 3, %conv32
  %add34 = add nsw i32 %mul33, 2
  %idxprom35 = sext i32 %add34 to i64
  %30 = load i8*, i8** %before, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %30, i64 %idxprom35
  %31 = load i8, i8* %arrayidx36, align 1
  %32 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %32 to i64
  %arrayidx38 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* @respin_cmap.palette, i32 0, i64 %idxprom37
  %blue = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %arrayidx38, i32 0, i32 2
  store i8 %31, i8* %blue, align 1
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.body.14
  %33 = load i32, i32* %i, align 4
  %inc40 = add nsw i32 %33, 1
  store i32 %inc40, i32* %i, align 4
  br label %for.cond.11

for.end.41:                                       ; preds = %for.cond.11
  store i32 1, i32* getelementptr inbounds (%struct.PngGlobals, %struct.PngGlobals* @pngg, i32 0, i32 3), align 4
  store %struct.png_color_struct* getelementptr inbounds ([256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* @respin_cmap.palette, i32 0, i32 0), %struct.png_color_struct** getelementptr inbounds (%struct.PngGlobals, %struct.PngGlobals* @pngg, i32 0, i32 4), align 8
  %34 = load i32, i32* %colors, align 4
  store i32 %34, i32* getelementptr inbounds (%struct.PngGlobals, %struct.PngGlobals* @pngg, i32 0, i32 5), align 4
  br label %if.end.43

if.else:                                          ; preds = %if.then.3
  %call42 = call i8* @gettext(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.109, i32 0, i32 0)) #7
  call void (i8*, ...) @g_message(i8* %call42)
  store i32 1, i32* getelementptr inbounds (%struct.PngGlobals, %struct.PngGlobals* @pngg, i32 0, i32 3), align 4
  %35 = load i8*, i8** %before, align 8
  %36 = bitcast i8* %35 to %struct.png_color_struct*
  store %struct.png_color_struct* %36, %struct.png_color_struct** getelementptr inbounds (%struct.PngGlobals, %struct.PngGlobals* @pngg, i32 0, i32 4), align 8
  %37 = load i32, i32* %colors, align 4
  store i32 %37, i32* getelementptr inbounds (%struct.PngGlobals, %struct.PngGlobals* @pngg, i32 0, i32 5), align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.else, %for.end.41
  br label %if.end.45

if.else.44:                                       ; preds = %if.end
  store i32 1, i32* getelementptr inbounds (%struct.PngGlobals, %struct.PngGlobals* @pngg, i32 0, i32 3), align 4
  %38 = load i8*, i8** %before, align 8
  %39 = bitcast i8* %38 to %struct.png_color_struct*
  store %struct.png_color_struct* %39, %struct.png_color_struct** getelementptr inbounds (%struct.PngGlobals, %struct.PngGlobals* @pngg, i32 0, i32 4), align 8
  %40 = load i32, i32* %colors, align 4
  store i32 %40, i32* getelementptr inbounds (%struct.PngGlobals, %struct.PngGlobals* @pngg, i32 0, i32 5), align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.44, %if.end.43
  %41 = load i32, i32* %colors, align 4
  %call46 = call i32 @get_bit_depth_for_palette(i32 %41)
  ret i32 %call46
}

declare void @png_set_IHDR(%struct.png_struct_def*, %struct.png_info_def*, i32, i32, i32, i32, i32, i32, i32) #1

declare void @png_set_tRNS(%struct.png_struct_def*, %struct.png_info_def*, i8*, i32, %struct.png_color_16_struct*) #1

declare void @png_set_PLTE(%struct.png_struct_def*, %struct.png_info_def*, %struct.png_color_struct*, i32) #1

declare void @png_set_compression_level(%struct.png_struct_def*, i32) #1

declare i32 @gimp_context_get_background(%struct._GimpRGB*) #1

declare void @gimp_rgb_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*) #1

declare zeroext i8 @gimp_rgb_luminance_uchar(%struct._GimpRGB*) #1

declare void @png_set_bKGD(%struct.png_struct_def*, %struct.png_info_def*, %struct.png_color_16_struct*) #1

declare double @g_ascii_strtod(i8*, i8**) #1

declare void @png_set_gAMA(%struct.png_struct_def*, %struct.png_info_def*, double) #1

declare i32 @gimp_drawable_offsets(i32, i32*, i32*) #1

declare void @png_set_oFFs(%struct.png_struct_def*, %struct.png_info_def*, i32, i32, i32) #1

declare void @png_set_pHYs(%struct.png_struct_def*, %struct.png_info_def*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare double @rint(double) #3

; Function Attrs: nounwind
declare i64 @time(i64*) #2

; Function Attrs: nounwind
declare %struct.tm* @gmtime(i64*) #2

declare void @png_set_tIME(%struct.png_struct_def*, %struct.png_info_def*, %struct.png_time_struct*) #1

declare void @png_set_iCCP(%struct.png_struct_def*, %struct.png_info_def*, i8*, i32, i8*, i32) #1

declare void @png_set_text(%struct.png_struct_def*, %struct.png_info_def*, %struct.png_text_struct*, i32) #1

declare void @png_write_info(%struct.png_struct_def*, %struct.png_info_def*) #1

declare void @png_write_rows(%struct.png_struct_def*, i8**, i32) #1

declare void @png_write_end(%struct.png_struct_def*, %struct.png_info_def*) #1

declare void @png_destroy_write_struct(%struct.png_struct_def**, %struct.png_info_def**) #1

; Function Attrs: nounwind uwtable
define internal i32 @ia_has_transparent_pixels(%struct._GimpDrawable* %drawable) #0 {
entry:
  %retval = alloca i32, align 4
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %pr = alloca i8*, align 8
  %pixel_row = alloca i8*, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %pixel = alloca i8*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %1, i32 0, i32 1
  %2 = load i32, i32* %width, align 4
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 2
  %4 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %0, i32 0, i32 0, i32 %2, i32 %4, i32 0, i32 0)
  %call = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 1, %struct._GimpPixelRgn* %pixel_rgn)
  store i8* %call, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.13, %entry
  %5 = load i8*, i8** %pr, align 8
  %cmp = icmp ne i8* %5, null
  br i1 %cmp, label %for.body, label %for.end.15

for.body:                                         ; preds = %for.cond
  %data = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %pixel_rgn, i32 0, i32 0
  %6 = load i8*, i8** %data, align 8
  store i8* %6, i8** %pixel_row, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.10, %for.body
  %7 = load i32, i32* %row, align 4
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %pixel_rgn, i32 0, i32 7
  %8 = load i32, i32* %h, align 4
  %cmp2 = icmp slt i32 %7, %8
  br i1 %cmp2, label %for.body.3, label %for.end.12

for.body.3:                                       ; preds = %for.cond.1
  %9 = load i8*, i8** %pixel_row, align 8
  store i8* %9, i8** %pixel, align 8
  store i32 0, i32* %col, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body.3
  %10 = load i32, i32* %col, align 4
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %pixel_rgn, i32 0, i32 6
  %11 = load i32, i32* %w, align 4
  %cmp5 = icmp slt i32 %10, %11
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %12 = load i8*, i8** %pixel, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %13 to i32
  %cmp7 = icmp sle i32 %conv, 127
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.6
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body.6
  %14 = load i8*, i8** %pixel, align 8
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 2
  store i8* %add.ptr, i8** %pixel, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %col, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %col, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  %rowstride = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %pixel_rgn, i32 0, i32 3
  %16 = load i32, i32* %rowstride, align 4
  %17 = load i8*, i8** %pixel_row, align 8
  %idx.ext = sext i32 %16 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %17, i64 %idx.ext
  store i8* %add.ptr9, i8** %pixel_row, align 8
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.end
  %18 = load i32, i32* %row, align 4
  %inc11 = add nsw i32 %18, 1
  store i32 %inc11, i32* %row, align 4
  br label %for.cond.1

for.end.12:                                       ; preds = %for.cond.1
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.end.12
  %19 = load i8*, i8** %pr, align 8
  %call14 = call i8* @gimp_pixel_rgns_process(i8* %19)
  store i8* %call14, i8** %pr, align 8
  br label %for.cond

for.end.15:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.15, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @find_unused_ia_color(%struct._GimpDrawable* %drawable, i32* %colors) #0 {
entry:
  %retval = alloca i32, align 4
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %colors.addr = alloca i32*, align 8
  %ix_used = alloca [256 x i32], align 16
  %trans_used = alloca i32, align 4
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %pr = alloca i8*, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %i = alloca i32, align 4
  %pixel_row = alloca i8*, align 8
  %pixel = alloca i8*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32* %colors, i32** %colors.addr, align 8
  store i32 0, i32* %trans_used, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32*, i32** %colors.addr, align 8
  %2 = load i32, i32* %1, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* %ix_used, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %6, i32 0, i32 1
  %7 = load i32, i32* %width, align 4
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 2
  %9 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %5, i32 0, i32 0, i32 %7, i32 %9, i32 0, i32 0)
  %call = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 1, %struct._GimpPixelRgn* %pixel_rgn)
  store i8* %call, i8** %pr, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.23, %for.end
  %10 = load i8*, i8** %pr, align 8
  %cmp2 = icmp ne i8* %10, null
  br i1 %cmp2, label %for.body.3, label %for.end.25

for.body.3:                                       ; preds = %for.cond.1
  %data = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %pixel_rgn, i32 0, i32 0
  %11 = load i8*, i8** %data, align 8
  store i8* %11, i8** %pixel_row, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.20, %for.body.3
  %12 = load i32, i32* %row, align 4
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %pixel_rgn, i32 0, i32 7
  %13 = load i32, i32* %h, align 4
  %cmp5 = icmp slt i32 %12, %13
  br i1 %cmp5, label %for.body.6, label %for.end.22

for.body.6:                                       ; preds = %for.cond.4
  %14 = load i8*, i8** %pixel_row, align 8
  store i8* %14, i8** %pixel, align 8
  store i32 0, i32* %col, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.16, %for.body.6
  %15 = load i32, i32* %col, align 4
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %pixel_rgn, i32 0, i32 6
  %16 = load i32, i32* %w, align 4
  %cmp8 = icmp slt i32 %15, %16
  br i1 %cmp8, label %for.body.9, label %for.end.18

for.body.9:                                       ; preds = %for.cond.7
  %17 = load i8*, i8** %pixel, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %17, i64 1
  %18 = load i8, i8* %arrayidx10, align 1
  %conv = zext i8 %18 to i32
  %cmp11 = icmp sgt i32 %conv, 127
  br i1 %cmp11, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.9
  %19 = load i8*, i8** %pixel, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %19, i64 0
  %20 = load i8, i8* %arrayidx13, align 1
  %idxprom14 = zext i8 %20 to i64
  %arrayidx15 = getelementptr inbounds [256 x i32], [256 x i32]* %ix_used, i32 0, i64 %idxprom14
  store i32 1, i32* %arrayidx15, align 4
  br label %if.end

if.else:                                          ; preds = %for.body.9
  store i32 1, i32* %trans_used, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %21 = load i8*, i8** %pixel, align 8
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 2
  store i8* %add.ptr, i8** %pixel, align 8
  br label %for.inc.16

for.inc.16:                                       ; preds = %if.end
  %22 = load i32, i32* %col, align 4
  %inc17 = add nsw i32 %22, 1
  store i32 %inc17, i32* %col, align 4
  br label %for.cond.7

for.end.18:                                       ; preds = %for.cond.7
  %rowstride = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %pixel_rgn, i32 0, i32 3
  %23 = load i32, i32* %rowstride, align 4
  %24 = load i8*, i8** %pixel_row, align 8
  %idx.ext = sext i32 %23 to i64
  %add.ptr19 = getelementptr inbounds i8, i8* %24, i64 %idx.ext
  store i8* %add.ptr19, i8** %pixel_row, align 8
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.end.18
  %25 = load i32, i32* %row, align 4
  %inc21 = add nsw i32 %25, 1
  store i32 %inc21, i32* %row, align 4
  br label %for.cond.4

for.end.22:                                       ; preds = %for.cond.4
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.end.22
  %26 = load i8*, i8** %pr, align 8
  %call24 = call i8* @gimp_pixel_rgns_process(i8* %26)
  store i8* %call24, i8** %pr, align 8
  br label %for.cond.1

for.end.25:                                       ; preds = %for.cond.1
  %27 = load i32, i32* %trans_used, align 4
  %cmp26 = icmp eq i32 %27, 0
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %for.end.25
  store i32 -1, i32* %retval
  br label %return

if.end.29:                                        ; preds = %for.end.25
  store i32 0, i32* %i, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.40, %if.end.29
  %28 = load i32, i32* %i, align 4
  %29 = load i32*, i32** %colors.addr, align 8
  %30 = load i32, i32* %29, align 4
  %cmp31 = icmp slt i32 %28, %30
  br i1 %cmp31, label %for.body.33, label %for.end.42

for.body.33:                                      ; preds = %for.cond.30
  %31 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %31 to i64
  %arrayidx35 = getelementptr inbounds [256 x i32], [256 x i32]* %ix_used, i32 0, i64 %idxprom34
  %32 = load i32, i32* %arrayidx35, align 4
  %cmp36 = icmp eq i32 %32, 0
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %for.body.33
  %33 = load i32, i32* %i, align 4
  store i32 %33, i32* %retval
  br label %return

if.end.39:                                        ; preds = %for.body.33
  br label %for.inc.40

for.inc.40:                                       ; preds = %if.end.39
  %34 = load i32, i32* %i, align 4
  %inc41 = add nsw i32 %34, 1
  store i32 %inc41, i32* %i, align 4
  br label %for.cond.30

for.end.42:                                       ; preds = %for.cond.30
  %35 = load i32*, i32** %colors.addr, align 8
  %36 = load i32, i32* %35, align 4
  %cmp43 = icmp slt i32 %36, 256
  br i1 %cmp43, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %for.end.42
  %37 = load i32*, i32** %colors.addr, align 8
  %38 = load i32, i32* %37, align 4
  %inc46 = add nsw i32 %38, 1
  store i32 %inc46, i32* %37, align 4
  %39 = load i32*, i32** %colors.addr, align 8
  %40 = load i32, i32* %39, align 4
  %sub = sub nsw i32 %40, 1
  store i32 %sub, i32* %retval
  br label %return

if.end.47:                                        ; preds = %for.end.42
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.47, %if.then.45, %if.then.38, %if.then.28
  %41 = load i32, i32* %retval
  ret i32 %41
}

declare i8* @gimp_pixel_rgns_register(i32, ...) #1

declare i8* @gimp_pixel_rgns_process(i8*) #1

declare i32 @gimp_attach_parasite(%struct._GimpParasite*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind returns_twice "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind returns_twice }
attributes #11 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
