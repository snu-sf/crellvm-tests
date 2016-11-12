; ModuleID = './plug-ins/common/channel-mixer.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.CmParamsType = type { %struct.CmChannelType, %struct.CmChannelType, %struct.CmChannelType, %struct.CmChannelType, i32, i32, i32, i32, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkWidget*, i32, %struct._GtkWidget*, %struct._GtkWidget* }
%struct.CmChannelType = type { double, double, double }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
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
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpPreview = type { %struct._GtkBox, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, %struct._GdkCursor*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkCursor = type { i32, i32 }
%struct._GimpZoomPreview = type { %struct._GimpScrolledPreview, i8* }
%struct._GimpScrolledPreview = type { %struct._GimpPreview, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, i8*, i8* }
%struct._GtkFileChooser = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [13 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.19, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.21, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"monochrome\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Monochrome { TRUE, FALSE }\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"rr-gain\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Set the red gain for the red channel\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"rg-gain\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"Set the green gain for the red channel\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"rb-gain\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"Set the blue gain for the red channel\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"gr-gain\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"Set the red gain for the green channel\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"gg-gain\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"Set the green gain for the green channel\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"gb-gain\00", align 1
@.str.19 = private unnamed_addr constant [40 x i8] c"Set the blue gain for the green channel\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"br-gain\00", align 1
@.str.21 = private unnamed_addr constant [38 x i8] c"Set the red gain for the blue channel\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"bg-gain\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"Set the green gain for the blue channel\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"bb-gain\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"Set the blue gain for the blue channel\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"plug-in-colors-channel-mixer\00", align 1
@.str.27 = private unnamed_addr constant [36 x i8] c"Alter colors by mixing RGB Channels\00", align 1
@.str.28 = private unnamed_addr constant [37 x i8] c"This plug-in mixes the RGB channels.\00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"Martin Guldahl <mguldahl@xmission.com>\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"2002\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"Channel Mi_xer...\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"RGB*\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"<Image>/Colors/Components\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.34 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"Channel Mixer\00", align 1
@cm_set_defaults.defaults = internal constant %struct.CmParamsType { %struct.CmChannelType { double 1.000000e+00, double 0.000000e+00, double 0.000000e+00 }, %struct.CmChannelType { double 0.000000e+00, double 1.000000e+00, double 0.000000e+00 }, %struct.CmChannelType { double 0.000000e+00, double 0.000000e+00, double 1.000000e+00 }, %struct.CmChannelType { double 1.000000e+00, double 0.000000e+00, double 0.000000e+00 }, i32 0, i32 0, i32 0, i32 0, %struct._GtkAdjustment* null, %struct._GtkAdjustment* null, %struct._GtkAdjustment* null, %struct._GtkWidget* null, i32 0, %struct._GtkWidget* null, %struct._GtkWidget* null }, align 8
@.str.37 = private unnamed_addr constant [14 x i8] c"channel-mixer\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"channel-mixer.c\00", align 1
@__func__.cm_dialog = private unnamed_addr constant [10 x i8] c"cm_dialog\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"gimp-channel-mixer\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@preview = internal global %struct._GtkWidget* null, align 8
@.str.42 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"O_utput channel:\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"Red\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"gimp-channel-red\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"Green\00", align 1
@.str.47 = private unnamed_addr constant [19 x i8] c"gimp-channel-green\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"Blue\00", align 1
@.str.49 = private unnamed_addr constant [18 x i8] c"gimp-channel-blue\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"_Red:\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"_Green:\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"_Blue:\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"_Monochrome\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c"Preserve _luminosity\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"gtk-open\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"gtk-save\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"gimp-reset\00", align 1
@cm_load_file_callback.dialog = internal global %struct._GtkWidget* null, align 8
@.str.62 = private unnamed_addr constant [28 x i8] c"Load Channel Mixer Settings\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.64 = private unnamed_addr constant [13 x i8] c"delete-event\00", align 1
@.str.65 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"%*s %1023s\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"RED\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"GREEN\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"BLUE\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.71 = private unnamed_addr constant [25 x i8] c"%*s %1023s %1023s %1023s\00", align 1
@.str.72 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for reading: %s\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"settings\00", align 1
@cm_save_file_callback.dialog = internal global %struct._GtkWidget* null, align 8
@.str.74 = private unnamed_addr constant [28 x i8] c"Save Channel Mixer Settings\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.76 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for writing: %s\00", align 1
@.str.77 = private unnamed_addr constant [30 x i8] c"Parameters were saved to '%s'\00", align 1
@__func__.cm_save_file = private unnamed_addr constant [13 x i8] c"cm_save_file\00", align 1
@.str.78 = private unnamed_addr constant [36 x i8] c"# Channel Mixer Configuration File\0A\00", align 1
@.str.79 = private unnamed_addr constant [13 x i8] c"CHANNEL: %s\0A\00", align 1
@.str.80 = private unnamed_addr constant [13 x i8] c"PREVIEW: %s\0A\00", align 1
@.str.81 = private unnamed_addr constant [16 x i8] c"MONOCHROME: %s\0A\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@.str.83 = private unnamed_addr constant [25 x i8] c"PRESERVE_LUMINOSITY: %s\0A\00", align 1
@.str.84 = private unnamed_addr constant [15 x i8] c"RED: %s %s %s\0A\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"%5.3f\00", align 1
@.str.86 = private unnamed_addr constant [17 x i8] c"GREEN: %s %s %s\0A\00", align 1
@.str.87 = private unnamed_addr constant [16 x i8] c"BLUE: %s %s %s\0A\00", align 1
@.str.88 = private unnamed_addr constant [17 x i8] c"BLACK: %s %s %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i32 1, i32 13, i32 0, %struct._GimpParamDef* getelementptr inbounds ([13 x %struct._GimpParamDef], [13 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i32 0, i32 0))
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
  %drawable = alloca %struct._GimpDrawable*, align 8
  %run_mode = alloca i32, align 4
  %mix = alloca %struct.CmParamsType, align 8
  %status = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
  %0 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_int32, align 4
  store i32 %1, i32* %run_mode, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #8
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i32 0, i32 0), i8* %call) #4
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0)) #4
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i32 0, i32 0)) #4
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %2, align 4
  %3 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %3, align 8
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %4 = load i32, i32* %status, align 4
  store i32 %4, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %5 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 2
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data5 to i32*
  %6 = load i32, i32* %d_drawable, align 4
  %call6 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %6)
  store %struct._GimpDrawable* %call6, %struct._GimpDrawable** %drawable, align 8
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %7, i32 0, i32 0
  %8 = load i32, i32* %drawable_id, align 4
  %call7 = call i32 @gimp_drawable_is_rgb(i32 %8)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then, label %if.else.86

if.then:                                          ; preds = %do.end
  call void @cm_set_defaults(%struct.CmParamsType* %mix)
  %preview = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %mix, i32 0, i32 7
  store i32 1, i32* %preview, align 4
  %9 = load i32, i32* %run_mode, align 4
  switch i32 %9, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.12
    i32 2, label %sw.bb.72
  ]

sw.bb:                                            ; preds = %if.then
  %10 = bitcast %struct.CmParamsType* %mix to i8*
  %call8 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i32 0, i32 0), i8* %10)
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call9 = call i32 @cm_dialog(%struct.CmParamsType* %mix, %struct._GimpDrawable* %11)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end, label %if.then.11

if.then.11:                                       ; preds = %sw.bb
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %12)
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.then
  %13 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx13 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %13, i64 3
  %data14 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx13, i32 0, i32 1
  %d_int3215 = bitcast %union._GimpParamData* %data14 to i32*
  %14 = load i32, i32* %d_int3215, align 4
  %monochrome = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %mix, i32 0, i32 4
  store i32 %14, i32* %monochrome, align 4
  %monochrome16 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %mix, i32 0, i32 4
  %15 = load i32, i32* %monochrome16, align 4
  %tobool17 = icmp ne i32 %15, 0
  br i1 %tobool17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %sw.bb.12
  %16 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx19 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %16, i64 4
  %data20 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx19, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data20 to double*
  %17 = load double, double* %d_float, align 8
  %black = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %mix, i32 0, i32 3
  %red_gain = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %black, i32 0, i32 0
  store double %17, double* %red_gain, align 8
  %18 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx21 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %18, i64 5
  %data22 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx21, i32 0, i32 1
  %d_float23 = bitcast %union._GimpParamData* %data22 to double*
  %19 = load double, double* %d_float23, align 8
  %black24 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %mix, i32 0, i32 3
  %green_gain = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %black24, i32 0, i32 1
  store double %19, double* %green_gain, align 8
  %20 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx25 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %20, i64 6
  %data26 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx25, i32 0, i32 1
  %d_float27 = bitcast %union._GimpParamData* %data26 to double*
  %21 = load double, double* %d_float27, align 8
  %black28 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %mix, i32 0, i32 3
  %blue_gain = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %black28, i32 0, i32 2
  store double %21, double* %blue_gain, align 8
  br label %if.end.71

if.else:                                          ; preds = %sw.bb.12
  %22 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx29 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %22, i64 4
  %data30 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx29, i32 0, i32 1
  %d_float31 = bitcast %union._GimpParamData* %data30 to double*
  %23 = load double, double* %d_float31, align 8
  %red = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %mix, i32 0, i32 0
  %red_gain32 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %red, i32 0, i32 0
  store double %23, double* %red_gain32, align 8
  %24 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx33 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %24, i64 5
  %data34 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx33, i32 0, i32 1
  %d_float35 = bitcast %union._GimpParamData* %data34 to double*
  %25 = load double, double* %d_float35, align 8
  %red36 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %mix, i32 0, i32 0
  %green_gain37 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %red36, i32 0, i32 1
  store double %25, double* %green_gain37, align 8
  %26 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx38 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %26, i64 6
  %data39 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx38, i32 0, i32 1
  %d_float40 = bitcast %union._GimpParamData* %data39 to double*
  %27 = load double, double* %d_float40, align 8
  %red41 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %mix, i32 0, i32 0
  %blue_gain42 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %red41, i32 0, i32 2
  store double %27, double* %blue_gain42, align 8
  %28 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx43 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %28, i64 7
  %data44 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx43, i32 0, i32 1
  %d_float45 = bitcast %union._GimpParamData* %data44 to double*
  %29 = load double, double* %d_float45, align 8
  %green = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %mix, i32 0, i32 1
  %red_gain46 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %green, i32 0, i32 0
  store double %29, double* %red_gain46, align 8
  %30 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx47 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %30, i64 8
  %data48 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx47, i32 0, i32 1
  %d_float49 = bitcast %union._GimpParamData* %data48 to double*
  %31 = load double, double* %d_float49, align 8
  %green50 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %mix, i32 0, i32 1
  %green_gain51 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %green50, i32 0, i32 1
  store double %31, double* %green_gain51, align 8
  %32 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx52 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %32, i64 9
  %data53 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx52, i32 0, i32 1
  %d_float54 = bitcast %union._GimpParamData* %data53 to double*
  %33 = load double, double* %d_float54, align 8
  %green55 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %mix, i32 0, i32 1
  %blue_gain56 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %green55, i32 0, i32 2
  store double %33, double* %blue_gain56, align 8
  %34 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx57 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %34, i64 10
  %data58 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx57, i32 0, i32 1
  %d_float59 = bitcast %union._GimpParamData* %data58 to double*
  %35 = load double, double* %d_float59, align 8
  %blue = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %mix, i32 0, i32 2
  %red_gain60 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %blue, i32 0, i32 0
  store double %35, double* %red_gain60, align 8
  %36 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx61 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %36, i64 11
  %data62 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx61, i32 0, i32 1
  %d_float63 = bitcast %union._GimpParamData* %data62 to double*
  %37 = load double, double* %d_float63, align 8
  %blue64 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %mix, i32 0, i32 2
  %green_gain65 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %blue64, i32 0, i32 1
  store double %37, double* %green_gain65, align 8
  %38 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx66 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %38, i64 12
  %data67 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx66, i32 0, i32 1
  %d_float68 = bitcast %union._GimpParamData* %data67 to double*
  %39 = load double, double* %d_float68, align 8
  %blue69 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %mix, i32 0, i32 2
  %blue_gain70 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %blue69, i32 0, i32 2
  store double %39, double* %blue_gain70, align 8
  br label %if.end.71

if.end.71:                                        ; preds = %if.else, %if.then.18
  br label %sw.epilog

sw.bb.72:                                         ; preds = %if.then
  %40 = bitcast %struct.CmParamsType* %mix to i8*
  %call73 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i32 0, i32 0), i8* %40)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.72, %if.end.71, %if.end
  %41 = load i32, i32* %status, align 4
  %cmp = icmp eq i32 %41, 3
  br i1 %cmp, label %if.then.74, label %if.end.85

if.then.74:                                       ; preds = %sw.epilog
  %call75 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0)) #4
  %call76 = call i32 @gimp_progress_init(i8* %call75)
  %42 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @channel_mixer(%struct.CmParamsType* %mix, %struct._GimpDrawable* %42)
  %43 = load i32, i32* %run_mode, align 4
  %cmp77 = icmp ne i32 %43, 1
  br i1 %cmp77, label %if.then.78, label %if.end.80

if.then.78:                                       ; preds = %if.then.74
  %call79 = call i32 @gimp_displays_flush()
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.78, %if.then.74
  %44 = load i32, i32* %run_mode, align 4
  %cmp81 = icmp eq i32 %44, 0
  br i1 %cmp81, label %if.then.82, label %if.end.84

if.then.82:                                       ; preds = %if.end.80
  %45 = bitcast %struct.CmParamsType* %mix to i8*
  %call83 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i32 0, i32 0), i8* %45, i32 168)
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.82, %if.end.80
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %sw.epilog
  br label %if.end.87

if.else.86:                                       ; preds = %do.end
  store i32 0, i32* %status, align 4
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.86, %if.end.85
  %46 = load i32, i32* %status, align 4
  store i32 %46, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %47 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %47)
  br label %return

return:                                           ; preds = %if.end.87, %if.then.11
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

declare i32 @gimp_plugin_menu_register(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) #2

; Function Attrs: nounwind readnone
declare i8* @gimp_locale_directory() #3

; Function Attrs: nounwind
declare i8* @bind_textdomain_codeset(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) #2

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare i32 @gimp_drawable_is_rgb(i32) #1

; Function Attrs: nounwind uwtable
define internal void @cm_set_defaults(%struct.CmParamsType* %mix) #0 {
entry:
  %mix.addr = alloca %struct.CmParamsType*, align 8
  store %struct.CmParamsType* %mix, %struct.CmParamsType** %mix.addr, align 8
  %0 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %1 = bitcast %struct.CmParamsType* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast (%struct.CmParamsType* @cm_set_defaults.defaults to i8*), i64 108, i32 8, i1 false)
  ret void
}

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @cm_dialog(%struct.CmParamsType* %mix, %struct._GimpDrawable* %drawable) #0 {
entry:
  %mix.addr = alloca %struct.CmParamsType*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %image = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %red_value = alloca double, align 8
  %green_value = alloca double, align 8
  %blue_value = alloca double, align 8
  %run = alloca i32, align 4
  store %struct.CmParamsType* %mix, %struct.CmParamsType** %mix.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), i32 0)
  %0 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %monochrome = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %0, i32 0, i32 4
  %1 = load i32, i32* %monochrome, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %black = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %2, i32 0, i32 3
  %red_gain = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %black, i32 0, i32 0
  %3 = load double, double* %red_gain, align 8
  %mul = fmul double %3, 1.000000e+02
  store double %mul, double* %red_value, align 8
  %4 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %black1 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %4, i32 0, i32 3
  %green_gain = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %black1, i32 0, i32 1
  %5 = load double, double* %green_gain, align 8
  %mul2 = fmul double %5, 1.000000e+02
  store double %mul2, double* %green_value, align 8
  %6 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %black3 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %6, i32 0, i32 3
  %blue_gain = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %black3, i32 0, i32 2
  %7 = load double, double* %blue_gain, align 8
  %mul4 = fmul double %7, 1.000000e+02
  store double %mul4, double* %blue_value, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %output_channel = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %8, i32 0, i32 6
  %9 = load i32, i32* %output_channel, align 4
  switch i32 %9, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.13
    i32 2, label %sw.bb.22
  ]

sw.bb:                                            ; preds = %if.else
  %10 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %red = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %10, i32 0, i32 0
  %red_gain5 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %red, i32 0, i32 0
  %11 = load double, double* %red_gain5, align 8
  %mul6 = fmul double %11, 1.000000e+02
  store double %mul6, double* %red_value, align 8
  %12 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %red7 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %12, i32 0, i32 0
  %green_gain8 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %red7, i32 0, i32 1
  %13 = load double, double* %green_gain8, align 8
  %mul9 = fmul double %13, 1.000000e+02
  store double %mul9, double* %green_value, align 8
  %14 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %red10 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %14, i32 0, i32 0
  %blue_gain11 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %red10, i32 0, i32 2
  %15 = load double, double* %blue_gain11, align 8
  %mul12 = fmul double %15, 1.000000e+02
  store double %mul12, double* %blue_value, align 8
  br label %sw.epilog

sw.bb.13:                                         ; preds = %if.else
  %16 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %green = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %16, i32 0, i32 1
  %red_gain14 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %green, i32 0, i32 0
  %17 = load double, double* %red_gain14, align 8
  %mul15 = fmul double %17, 1.000000e+02
  store double %mul15, double* %red_value, align 8
  %18 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %green16 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %18, i32 0, i32 1
  %green_gain17 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %green16, i32 0, i32 1
  %19 = load double, double* %green_gain17, align 8
  %mul18 = fmul double %19, 1.000000e+02
  store double %mul18, double* %green_value, align 8
  %20 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %green19 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %20, i32 0, i32 1
  %blue_gain20 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %green19, i32 0, i32 2
  %21 = load double, double* %blue_gain20, align 8
  %mul21 = fmul double %21, 1.000000e+02
  store double %mul21, double* %blue_value, align 8
  br label %sw.epilog

sw.bb.22:                                         ; preds = %if.else
  %22 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %blue = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %22, i32 0, i32 2
  %red_gain23 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %blue, i32 0, i32 0
  %23 = load double, double* %red_gain23, align 8
  %mul24 = fmul double %23, 1.000000e+02
  store double %mul24, double* %red_value, align 8
  %24 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %blue25 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %24, i32 0, i32 2
  %green_gain26 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %blue25, i32 0, i32 1
  %25 = load double, double* %green_gain26, align 8
  %mul27 = fmul double %25, 1.000000e+02
  store double %mul27, double* %green_value, align 8
  %26 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %blue28 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %26, i32 0, i32 2
  %blue_gain29 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %blue28, i32 0, i32 2
  %27 = load double, double* %blue_gain29, align 8
  %mul30 = fmul double %27, 1.000000e+02
  store double %mul30, double* %blue_value, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %sw.default
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i32 0, i32 0), i32 485, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.cm_dialog, i32 0, i32 0), i8* null) #9
  unreachable

do.end:                                           ; No predecessors!
  store double 0.000000e+00, double* %blue_value, align 8
  store double 0.000000e+00, double* %green_value, align 8
  store double 0.000000e+00, double* %red_value, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.22, %sw.bb.13, %sw.bb
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %if.then
  %call = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0)) #4
  %call31 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.39, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call31, %struct._GtkWidget** %dialog, align 8
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_dialog_get_type() #8
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call32)
  %30 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %30, i32 -5, i32 -6, i32 -1)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_window_get_type() #8
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call34)
  %33 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %33)
  %call36 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call36, %struct._GtkWidget** %main_vbox, align 8
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_container_get_type() #8
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call37)
  %36 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %36, i32 12)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_dialog_get_type() #8
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call39)
  %39 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkDialog*
  %call41 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %39)
  %40 = bitcast %struct._GtkWidget* %call41 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_box_get_type() #8
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call42)
  %41 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkBox*
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %41, %struct._GtkWidget* %42, i32 1, i32 1, i32 0)
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %43)
  %44 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call44 = call %struct._GtkWidget* @gimp_zoom_preview_new(%struct._GimpDrawable* %44)
  store %struct._GtkWidget* %call44, %struct._GtkWidget** @preview, align 8
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call45 = call i64 @gtk_box_get_type() #8
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call45)
  %47 = bitcast %struct._GTypeInstance* %call46 to %struct._GtkBox*
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %47, %struct._GtkWidget* %48, i32 1, i32 1, i32 0)
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %49)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %51 = bitcast %struct._GtkWidget* %50 to i8*
  %52 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %53 = bitcast %struct.CmParamsType* %52 to i8*
  %call47 = call i64 @g_signal_connect_data(i8* %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0), void ()* bitcast (void (%struct.CmParamsType*, %struct._GimpPreview*)* @cm_preview to void ()*), i8* %53, void (i8*, %struct._GClosure*)* null, i32 2)
  %call48 = call %struct._GtkWidget* @gimp_frame_new(i8* null)
  store %struct._GtkWidget* %call48, %struct._GtkWidget** %frame, align 8
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %55 = bitcast %struct._GtkWidget* %54 to %struct._GTypeInstance*
  %call49 = call i64 @gtk_box_get_type() #8
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call49)
  %56 = bitcast %struct._GTypeInstance* %call50 to %struct._GtkBox*
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %56, %struct._GtkWidget* %57, i32 0, i32 0, i32 0)
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %58)
  %call51 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call51, %struct._GtkWidget** %hbox, align 8
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %60 = bitcast %struct._GtkWidget* %59 to %struct._GTypeInstance*
  %call52 = call i64 @gtk_frame_get_type() #8
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call52)
  %61 = bitcast %struct._GTypeInstance* %call53 to %struct._GtkFrame*
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_frame_set_label_widget(%struct._GtkFrame* %61, %struct._GtkWidget* %62)
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %63)
  %call54 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0)) #4
  %call55 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call54)
  store %struct._GtkWidget* %call55, %struct._GtkWidget** %label, align 8
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %65 = bitcast %struct._GtkWidget* %64 to %struct._GTypeInstance*
  %call56 = call i64 @gtk_box_get_type() #8
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call56)
  %66 = bitcast %struct._GTypeInstance* %call57 to %struct._GtkBox*
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %66, %struct._GtkWidget* %67, i32 0, i32 0, i32 0)
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %68)
  %call58 = call i64 @gimp_int_combo_box_get_type() #8
  %call59 = call i8* (i64, i8*, ...) @g_object_new(i64 %call58, i8* null)
  %69 = bitcast i8* %call59 to %struct._GtkWidget*
  %70 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %combo = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %70, i32 0, i32 11
  store %struct._GtkWidget* %69, %struct._GtkWidget** %combo, align 8
  %71 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %combo60 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %71, i32 0, i32 11
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %combo60, align 8
  %73 = bitcast %struct._GtkWidget* %72 to %struct._GTypeInstance*
  %call61 = call i64 @gimp_int_combo_box_get_type() #8
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call61)
  %74 = bitcast %struct._GTypeInstance* %call62 to %struct._GimpIntComboBox*
  %call63 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0)) #4
  call void (%struct._GimpIntComboBox*, ...) @gimp_int_combo_box_append(%struct._GimpIntComboBox* %74, i32 0, i32 0, i32 1, i8* %call63, i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.45, i32 0, i32 0), i32 -1)
  %75 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %combo64 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %75, i32 0, i32 11
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %combo64, align 8
  %77 = bitcast %struct._GtkWidget* %76 to %struct._GTypeInstance*
  %call65 = call i64 @gimp_int_combo_box_get_type() #8
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call65)
  %78 = bitcast %struct._GTypeInstance* %call66 to %struct._GimpIntComboBox*
  %call67 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0)) #4
  call void (%struct._GimpIntComboBox*, ...) @gimp_int_combo_box_append(%struct._GimpIntComboBox* %78, i32 0, i32 1, i32 1, i8* %call67, i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.47, i32 0, i32 0), i32 -1)
  %79 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %combo68 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %79, i32 0, i32 11
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %combo68, align 8
  %81 = bitcast %struct._GtkWidget* %80 to %struct._GTypeInstance*
  %call69 = call i64 @gimp_int_combo_box_get_type() #8
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call69)
  %82 = bitcast %struct._GTypeInstance* %call70 to %struct._GimpIntComboBox*
  %call71 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0)) #4
  call void (%struct._GimpIntComboBox*, ...) @gimp_int_combo_box_append(%struct._GimpIntComboBox* %82, i32 0, i32 2, i32 1, i8* %call71, i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.49, i32 0, i32 0), i32 -1)
  %83 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %combo72 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %83, i32 0, i32 11
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %combo72, align 8
  %85 = bitcast %struct._GtkWidget* %84 to %struct._GTypeInstance*
  %call73 = call i64 @gimp_int_combo_box_get_type() #8
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %85, i64 %call73)
  %86 = bitcast %struct._GTypeInstance* %call74 to %struct._GimpIntComboBox*
  %87 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %output_channel75 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %87, i32 0, i32 6
  %88 = load i32, i32* %output_channel75, align 4
  %call76 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %86, i32 %88)
  %89 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %combo77 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %89, i32 0, i32 11
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %combo77, align 8
  %91 = bitcast %struct._GtkWidget* %90 to i8*
  %92 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %93 = bitcast %struct.CmParamsType* %92 to i8*
  %call78 = call i64 @g_signal_connect_data(i8* %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct.CmParamsType*)* @cm_combo_callback to void ()*), i8* %93, void (i8*, %struct._GClosure*)* null, i32 0)
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %95 = bitcast %struct._GtkWidget* %94 to %struct._GTypeInstance*
  %call79 = call i64 @gtk_box_get_type() #8
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %95, i64 %call79)
  %96 = bitcast %struct._GTypeInstance* %call80 to %struct._GtkBox*
  %97 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %combo81 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %97, i32 0, i32 11
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %combo81, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %96, %struct._GtkWidget* %98, i32 1, i32 1, i32 0)
  %99 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %combo82 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %99, i32 0, i32 11
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %combo82, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %100)
  %101 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %monochrome83 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %101, i32 0, i32 4
  %102 = load i32, i32* %monochrome83, align 4
  %tobool84 = icmp ne i32 %102, 0
  br i1 %tobool84, label %if.then.85, label %if.end.87

if.then.85:                                       ; preds = %if.end
  %103 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %combo86 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %103, i32 0, i32 11
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %combo86, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %104, i32 0)
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.85, %if.end
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %106 = bitcast %struct._GtkWidget* %105 to %struct._GTypeInstance*
  %call88 = call i64 @gtk_label_get_type() #8
  %call89 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %106, i64 %call88)
  %107 = bitcast %struct._GTypeInstance* %call89 to %struct._GtkLabel*
  %108 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %combo90 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %108, i32 0, i32 11
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %combo90, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %107, %struct._GtkWidget* %109)
  %call91 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 4, i32 0)
  store %struct._GtkWidget* %call91, %struct._GtkWidget** %table, align 8
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %111 = bitcast %struct._GtkWidget* %110 to %struct._GTypeInstance*
  %call92 = call i64 @gtk_table_get_type() #8
  %call93 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %111, i64 %call92)
  %112 = bitcast %struct._GTypeInstance* %call93 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %112, i32 6)
  %113 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %114 = bitcast %struct._GtkWidget* %113 to %struct._GTypeInstance*
  %call94 = call i64 @gtk_table_get_type() #8
  %call95 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %114, i64 %call94)
  %115 = bitcast %struct._GTypeInstance* %call95 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %115, i32 6)
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %117 = bitcast %struct._GtkWidget* %116 to %struct._GTypeInstance*
  %call96 = call i64 @gtk_container_get_type() #8
  %call97 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %117, i64 %call96)
  %118 = bitcast %struct._GTypeInstance* %call97 to %struct._GtkContainer*
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %118, %struct._GtkWidget* %119)
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %120)
  %call98 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.45, i32 0, i32 0), i32 4)
  store %struct._GtkWidget* %call98, %struct._GtkWidget** %image, align 8
  %121 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %122 = bitcast %struct._GtkWidget* %121 to %struct._GTypeInstance*
  %call99 = call i64 @gtk_table_get_type() #8
  %call100 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %122, i64 %call99)
  %123 = bitcast %struct._GTypeInstance* %call100 to %struct._GtkTable*
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_table_attach(%struct._GtkTable* %123, %struct._GtkWidget* %124, i32 0, i32 1, i32 0, i32 1, i32 4, i32 4, i32 0, i32 0)
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %125)
  %126 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %127 = bitcast %struct._GtkWidget* %126 to %struct._GTypeInstance*
  %call101 = call i64 @gtk_table_get_type() #8
  %call102 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %127, i64 %call101)
  %128 = bitcast %struct._GTypeInstance* %call102 to %struct._GtkTable*
  %call103 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0)) #4
  %129 = load double, double* %red_value, align 8
  %call104 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %128, i32 1, i32 0, i8* %call103, i32 150, i32 -1, double %129, double -2.000000e+02, double 2.000000e+02, double 1.000000e+00, double 1.000000e+01, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  %130 = bitcast %struct._GtkObject* %call104 to %struct._GTypeInstance*
  %call105 = call i64 @gtk_adjustment_get_type() #8
  %call106 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %130, i64 %call105)
  %131 = bitcast %struct._GTypeInstance* %call106 to %struct._GtkAdjustment*
  %132 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %red_data = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %132, i32 0, i32 8
  store %struct._GtkAdjustment* %131, %struct._GtkAdjustment** %red_data, align 8
  %133 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %red_data107 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %133, i32 0, i32 8
  %134 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %red_data107, align 8
  %135 = bitcast %struct._GtkAdjustment* %134 to i8*
  %136 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %137 = bitcast %struct.CmParamsType* %136 to i8*
  %call108 = call i64 @g_signal_connect_data(i8* %135, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.52, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct.CmParamsType*)* @cm_red_scale_callback to void ()*), i8* %137, void (i8*, %struct._GClosure*)* null, i32 0)
  %call109 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.47, i32 0, i32 0), i32 4)
  store %struct._GtkWidget* %call109, %struct._GtkWidget** %image, align 8
  %138 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %139 = bitcast %struct._GtkWidget* %138 to %struct._GTypeInstance*
  %call110 = call i64 @gtk_table_get_type() #8
  %call111 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %139, i64 %call110)
  %140 = bitcast %struct._GTypeInstance* %call111 to %struct._GtkTable*
  %141 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_table_attach(%struct._GtkTable* %140, %struct._GtkWidget* %141, i32 0, i32 1, i32 1, i32 2, i32 4, i32 4, i32 0, i32 0)
  %142 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %142)
  %143 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %144 = bitcast %struct._GtkWidget* %143 to %struct._GTypeInstance*
  %call112 = call i64 @gtk_table_get_type() #8
  %call113 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %144, i64 %call112)
  %145 = bitcast %struct._GTypeInstance* %call113 to %struct._GtkTable*
  %call114 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0)) #4
  %146 = load double, double* %green_value, align 8
  %call115 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %145, i32 1, i32 1, i8* %call114, i32 150, i32 -1, double %146, double -2.000000e+02, double 2.000000e+02, double 1.000000e+00, double 1.000000e+01, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  %147 = bitcast %struct._GtkObject* %call115 to %struct._GTypeInstance*
  %call116 = call i64 @gtk_adjustment_get_type() #8
  %call117 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %147, i64 %call116)
  %148 = bitcast %struct._GTypeInstance* %call117 to %struct._GtkAdjustment*
  %149 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %green_data = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %149, i32 0, i32 9
  store %struct._GtkAdjustment* %148, %struct._GtkAdjustment** %green_data, align 8
  %150 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %green_data118 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %150, i32 0, i32 9
  %151 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %green_data118, align 8
  %152 = bitcast %struct._GtkAdjustment* %151 to i8*
  %153 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %154 = bitcast %struct.CmParamsType* %153 to i8*
  %call119 = call i64 @g_signal_connect_data(i8* %152, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.52, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct.CmParamsType*)* @cm_green_scale_callback to void ()*), i8* %154, void (i8*, %struct._GClosure*)* null, i32 0)
  %call120 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.49, i32 0, i32 0), i32 4)
  store %struct._GtkWidget* %call120, %struct._GtkWidget** %image, align 8
  %155 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %156 = bitcast %struct._GtkWidget* %155 to %struct._GTypeInstance*
  %call121 = call i64 @gtk_table_get_type() #8
  %call122 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %156, i64 %call121)
  %157 = bitcast %struct._GTypeInstance* %call122 to %struct._GtkTable*
  %158 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_table_attach(%struct._GtkTable* %157, %struct._GtkWidget* %158, i32 0, i32 1, i32 2, i32 3, i32 4, i32 4, i32 0, i32 0)
  %159 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %159)
  %160 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %161 = bitcast %struct._GtkWidget* %160 to %struct._GTypeInstance*
  %call123 = call i64 @gtk_table_get_type() #8
  %call124 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %161, i64 %call123)
  %162 = bitcast %struct._GTypeInstance* %call124 to %struct._GtkTable*
  %call125 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0)) #4
  %163 = load double, double* %blue_value, align 8
  %call126 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %162, i32 1, i32 2, i8* %call125, i32 150, i32 -1, double %163, double -2.000000e+02, double 2.000000e+02, double 1.000000e+00, double 1.000000e+01, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  %164 = bitcast %struct._GtkObject* %call126 to %struct._GTypeInstance*
  %call127 = call i64 @gtk_adjustment_get_type() #8
  %call128 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %164, i64 %call127)
  %165 = bitcast %struct._GTypeInstance* %call128 to %struct._GtkAdjustment*
  %166 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %blue_data = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %166, i32 0, i32 10
  store %struct._GtkAdjustment* %165, %struct._GtkAdjustment** %blue_data, align 8
  %167 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %blue_data129 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %167, i32 0, i32 10
  %168 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %blue_data129, align 8
  %169 = bitcast %struct._GtkAdjustment* %168 to i8*
  %170 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %171 = bitcast %struct.CmParamsType* %170 to i8*
  %call130 = call i64 @g_signal_connect_data(i8* %169, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.52, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct.CmParamsType*)* @cm_blue_scale_callback to void ()*), i8* %171, void (i8*, %struct._GClosure*)* null, i32 0)
  %call131 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call131, %struct._GtkWidget** %vbox, align 8
  %172 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %173 = bitcast %struct._GtkWidget* %172 to %struct._GTypeInstance*
  %call132 = call i64 @gtk_box_get_type() #8
  %call133 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %173, i64 %call132)
  %174 = bitcast %struct._GTypeInstance* %call133 to %struct._GtkBox*
  %175 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %174, %struct._GtkWidget* %175, i32 0, i32 0, i32 0)
  %176 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %176)
  %call134 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i32 0, i32 0)) #4
  %call135 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call134)
  %177 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %monochrome_toggle = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %177, i32 0, i32 13
  store %struct._GtkWidget* %call135, %struct._GtkWidget** %monochrome_toggle, align 8
  %178 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %monochrome_toggle136 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %178, i32 0, i32 13
  %179 = load %struct._GtkWidget*, %struct._GtkWidget** %monochrome_toggle136, align 8
  %180 = bitcast %struct._GtkWidget* %179 to %struct._GTypeInstance*
  %call137 = call i64 @gtk_toggle_button_get_type() #8
  %call138 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %180, i64 %call137)
  %181 = bitcast %struct._GTypeInstance* %call138 to %struct._GtkToggleButton*
  %182 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %monochrome139 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %182, i32 0, i32 4
  %183 = load i32, i32* %monochrome139, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %181, i32 %183)
  %184 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %185 = bitcast %struct._GtkWidget* %184 to %struct._GTypeInstance*
  %call140 = call i64 @gtk_box_get_type() #8
  %call141 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %185, i64 %call140)
  %186 = bitcast %struct._GTypeInstance* %call141 to %struct._GtkBox*
  %187 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %monochrome_toggle142 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %187, i32 0, i32 13
  %188 = load %struct._GtkWidget*, %struct._GtkWidget** %monochrome_toggle142, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %186, %struct._GtkWidget* %188, i32 0, i32 0, i32 0)
  %189 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %monochrome_toggle143 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %189, i32 0, i32 13
  %190 = load %struct._GtkWidget*, %struct._GtkWidget** %monochrome_toggle143, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %190)
  %191 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %monochrome_toggle144 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %191, i32 0, i32 13
  %192 = load %struct._GtkWidget*, %struct._GtkWidget** %monochrome_toggle144, align 8
  %193 = bitcast %struct._GtkWidget* %192 to i8*
  %194 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %195 = bitcast %struct.CmParamsType* %194 to i8*
  %call145 = call i64 @g_signal_connect_data(i8* %193, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct.CmParamsType*)* @cm_monochrome_callback to void ()*), i8* %195, void (i8*, %struct._GClosure*)* null, i32 0)
  %call146 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.57, i32 0, i32 0)) #4
  %call147 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call146)
  %196 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %preserve_luminosity_toggle = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %196, i32 0, i32 14
  store %struct._GtkWidget* %call147, %struct._GtkWidget** %preserve_luminosity_toggle, align 8
  %197 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %preserve_luminosity_toggle148 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %197, i32 0, i32 14
  %198 = load %struct._GtkWidget*, %struct._GtkWidget** %preserve_luminosity_toggle148, align 8
  %199 = bitcast %struct._GtkWidget* %198 to %struct._GTypeInstance*
  %call149 = call i64 @gtk_toggle_button_get_type() #8
  %call150 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %199, i64 %call149)
  %200 = bitcast %struct._GTypeInstance* %call150 to %struct._GtkToggleButton*
  %201 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %preserve_luminosity = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %201, i32 0, i32 5
  %202 = load i32, i32* %preserve_luminosity, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %200, i32 %202)
  %203 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %204 = bitcast %struct._GtkWidget* %203 to %struct._GTypeInstance*
  %call151 = call i64 @gtk_box_get_type() #8
  %call152 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %204, i64 %call151)
  %205 = bitcast %struct._GTypeInstance* %call152 to %struct._GtkBox*
  %206 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %preserve_luminosity_toggle153 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %206, i32 0, i32 14
  %207 = load %struct._GtkWidget*, %struct._GtkWidget** %preserve_luminosity_toggle153, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %205, %struct._GtkWidget* %207, i32 0, i32 0, i32 0)
  %208 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %preserve_luminosity_toggle154 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %208, i32 0, i32 14
  %209 = load %struct._GtkWidget*, %struct._GtkWidget** %preserve_luminosity_toggle154, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %209)
  %210 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %preserve_luminosity_toggle155 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %210, i32 0, i32 14
  %211 = load %struct._GtkWidget*, %struct._GtkWidget** %preserve_luminosity_toggle155, align 8
  %212 = bitcast %struct._GtkWidget* %211 to i8*
  %213 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %214 = bitcast %struct.CmParamsType* %213 to i8*
  %call156 = call i64 @g_signal_connect_data(i8* %212, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct.CmParamsType*)* @cm_preserve_luminosity_callback to void ()*), i8* %214, void (i8*, %struct._GClosure*)* null, i32 0)
  %call157 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call157, %struct._GtkWidget** %hbox, align 8
  %215 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %216 = bitcast %struct._GtkWidget* %215 to %struct._GTypeInstance*
  %call158 = call i64 @gtk_box_get_type() #8
  %call159 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %216, i64 %call158)
  %217 = bitcast %struct._GTypeInstance* %call159 to %struct._GtkBox*
  %218 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %217, %struct._GtkWidget* %218, i32 0, i32 0, i32 0)
  %219 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %219)
  %call160 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i32 0, i32 0))
  store %struct._GtkWidget* %call160, %struct._GtkWidget** %button, align 8
  %220 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %221 = bitcast %struct._GtkWidget* %220 to %struct._GTypeInstance*
  %call161 = call i64 @gtk_box_get_type() #8
  %call162 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %221, i64 %call161)
  %222 = bitcast %struct._GTypeInstance* %call162 to %struct._GtkBox*
  %223 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %222, %struct._GtkWidget* %223, i32 1, i32 1, i32 0)
  %224 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %224)
  %225 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %226 = bitcast %struct._GtkWidget* %225 to i8*
  %227 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %228 = bitcast %struct.CmParamsType* %227 to i8*
  %call163 = call i64 @g_signal_connect_data(i8* %226, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct.CmParamsType*)* @cm_load_file_callback to void ()*), i8* %228, void (i8*, %struct._GClosure*)* null, i32 0)
  %call164 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i32 0, i32 0))
  store %struct._GtkWidget* %call164, %struct._GtkWidget** %button, align 8
  %229 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %230 = bitcast %struct._GtkWidget* %229 to %struct._GTypeInstance*
  %call165 = call i64 @gtk_box_get_type() #8
  %call166 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %230, i64 %call165)
  %231 = bitcast %struct._GTypeInstance* %call166 to %struct._GtkBox*
  %232 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %231, %struct._GtkWidget* %232, i32 1, i32 1, i32 0)
  %233 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %233)
  %234 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %235 = bitcast %struct._GtkWidget* %234 to i8*
  %236 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %237 = bitcast %struct.CmParamsType* %236 to i8*
  %call167 = call i64 @g_signal_connect_data(i8* %235, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct.CmParamsType*)* @cm_save_file_callback to void ()*), i8* %237, void (i8*, %struct._GClosure*)* null, i32 0)
  %call168 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.61, i32 0, i32 0))
  store %struct._GtkWidget* %call168, %struct._GtkWidget** %button, align 8
  %238 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %239 = bitcast %struct._GtkWidget* %238 to %struct._GTypeInstance*
  %call169 = call i64 @gtk_box_get_type() #8
  %call170 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %239, i64 %call169)
  %240 = bitcast %struct._GTypeInstance* %call170 to %struct._GtkBox*
  %241 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %240, %struct._GtkWidget* %241, i32 1, i32 1, i32 0)
  %242 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %242)
  %243 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %244 = bitcast %struct._GtkWidget* %243 to i8*
  %245 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %246 = bitcast %struct.CmParamsType* %245 to i8*
  %call171 = call i64 @g_signal_connect_data(i8* %244, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct.CmParamsType*)* @cm_reset_callback to void ()*), i8* %246, void (i8*, %struct._GClosure*)* null, i32 0)
  %247 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %247)
  %248 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %249 = bitcast %struct._GtkWidget* %248 to %struct._GTypeInstance*
  %call172 = call i64 @gimp_dialog_get_type() #8
  %call173 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %249, i64 %call172)
  %250 = bitcast %struct._GTypeInstance* %call173 to %struct._GimpDialog*
  %call174 = call i32 @gimp_dialog_run(%struct._GimpDialog* %250)
  %cmp = icmp eq i32 %call174, -5
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %run, align 4
  %251 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %251)
  %252 = load i32, i32* %run, align 4
  ret i32 %252
}

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @channel_mixer(%struct.CmParamsType* %mix, %struct._GimpDrawable* %drawable) #0 {
entry:
  %mix.addr = alloca %struct.CmParamsType*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %src_rgn = alloca %struct._GimpPixelRgn, align 8
  %dest_rgn = alloca %struct._GimpPixelRgn, align 8
  %pr = alloca i8*, align 8
  %has_alpha = alloca i32, align 4
  %red_norm = alloca double, align 8
  %green_norm = alloca double, align 8
  %blue_norm = alloca double, align 8
  %black_norm = alloca double, align 8
  %i = alloca i32, align 4
  %total = alloca i32, align 4
  %processed = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %s = alloca i8*, align 8
  %d = alloca i8*, align 8
  store %struct.CmParamsType* %mix, %struct.CmParamsType** %mix.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 0, i32* %processed, align 4
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 0
  %1 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_mask_intersect(i32 %1, i32* %x1, i32* %y1, i32* %width, i32* %height)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %3 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %red = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %3, i32 0, i32 0
  %call1 = call double @cm_calculate_norm(%struct.CmParamsType* %2, %struct.CmChannelType* %red)
  store double %call1, double* %red_norm, align 8
  %4 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %5 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %green = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %5, i32 0, i32 1
  %call2 = call double @cm_calculate_norm(%struct.CmParamsType* %4, %struct.CmChannelType* %green)
  store double %call2, double* %green_norm, align 8
  %6 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %7 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %blue = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %7, i32 0, i32 2
  %call3 = call double @cm_calculate_norm(%struct.CmParamsType* %6, %struct.CmChannelType* %blue)
  store double %call3, double* %blue_norm, align 8
  %8 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %9 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %black = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %9, i32 0, i32 3
  %call4 = call double @cm_calculate_norm(%struct.CmParamsType* %8, %struct.CmChannelType* %black)
  store double %call4, double* %black_norm, align 8
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id5 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %10, i32 0, i32 0
  %11 = load i32, i32* %drawable_id5, align 4
  %call6 = call i32 @gimp_drawable_has_alpha(i32 %11)
  store i32 %call6, i32* %has_alpha, align 4
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %13 = load i32, i32* %x1, align 4
  %14 = load i32, i32* %y1, align 4
  %15 = load i32, i32* %width, align 4
  %16 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %12, i32 %13, i32 %14, i32 %15, i32 %16, i32 0, i32 0)
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %18 = load i32, i32* %x1, align 4
  %19 = load i32, i32* %y1, align 4
  %20 = load i32, i32* %width, align 4
  %21 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest_rgn, %struct._GimpDrawable* %17, i32 %18, i32 %19, i32 %20, i32 %21, i32 1, i32 1)
  %22 = load i32, i32* %width, align 4
  %23 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %22, %23
  store i32 %mul, i32* %total, align 4
  %call7 = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 2, %struct._GimpPixelRgn* %src_rgn, %struct._GimpPixelRgn* %dest_rgn)
  store i8* %call7, i8** %pr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.44, %if.end
  %24 = load i8*, i8** %pr, align 8
  %cmp = icmp ne i8* %24, null
  br i1 %cmp, label %for.body, label %for.end.47

for.body:                                         ; preds = %for.cond
  %data = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 0
  %25 = load i8*, i8** %data, align 8
  store i8* %25, i8** %src, align 8
  %data8 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 0
  %26 = load i8*, i8** %data8, align 8
  store i8* %26, i8** %dest, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.33, %for.body
  %27 = load i32, i32* %y, align 4
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 7
  %28 = load i32, i32* %h, align 4
  %cmp10 = icmp slt i32 %27, %28
  br i1 %cmp10, label %for.body.11, label %for.end.35

for.body.11:                                      ; preds = %for.cond.9
  %29 = load i8*, i8** %src, align 8
  store i8* %29, i8** %s, align 8
  %30 = load i8*, i8** %dest, align 8
  store i8* %30, i8** %d, align 8
  %31 = load i32, i32* %has_alpha, align 4
  %tobool12 = icmp ne i32 %31, 0
  br i1 %tobool12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %for.body.11
  store i32 0, i32* %x, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc, %if.then.13
  %32 = load i32, i32* %x, align 4
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 6
  %33 = load i32, i32* %w, align 4
  %cmp15 = icmp slt i32 %32, %33
  br i1 %cmp15, label %for.body.16, label %for.end

for.body.16:                                      ; preds = %for.cond.14
  %34 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %35 = load i8*, i8** %s, align 8
  %36 = load i8*, i8** %d, align 8
  %37 = load double, double* %red_norm, align 8
  %38 = load double, double* %green_norm, align 8
  %39 = load double, double* %blue_norm, align 8
  %40 = load double, double* %black_norm, align 8
  call void @cm_process_pixel(%struct.CmParamsType* %34, i8* %35, i8* %36, double %37, double %38, double %39, double %40)
  %41 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr inbounds i8, i8* %41, i64 3
  %42 = load i8, i8* %arrayidx, align 1
  %43 = load i8*, i8** %d, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %43, i64 3
  store i8 %42, i8* %arrayidx17, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.16
  %44 = load i32, i32* %x, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %x, align 4
  %45 = load i8*, i8** %s, align 8
  %add.ptr = getelementptr inbounds i8, i8* %45, i64 4
  store i8* %add.ptr, i8** %s, align 8
  %46 = load i8*, i8** %d, align 8
  %add.ptr18 = getelementptr inbounds i8, i8* %46, i64 4
  store i8* %add.ptr18, i8** %d, align 8
  br label %for.cond.14

for.end:                                          ; preds = %for.cond.14
  br label %if.end.28

if.else:                                          ; preds = %for.body.11
  store i32 0, i32* %x, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.23, %if.else
  %47 = load i32, i32* %x, align 4
  %w20 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 6
  %48 = load i32, i32* %w20, align 4
  %cmp21 = icmp slt i32 %47, %48
  br i1 %cmp21, label %for.body.22, label %for.end.27

for.body.22:                                      ; preds = %for.cond.19
  %49 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %50 = load i8*, i8** %s, align 8
  %51 = load i8*, i8** %d, align 8
  %52 = load double, double* %red_norm, align 8
  %53 = load double, double* %green_norm, align 8
  %54 = load double, double* %blue_norm, align 8
  %55 = load double, double* %black_norm, align 8
  call void @cm_process_pixel(%struct.CmParamsType* %49, i8* %50, i8* %51, double %52, double %53, double %54, double %55)
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.body.22
  %56 = load i32, i32* %x, align 4
  %inc24 = add nsw i32 %56, 1
  store i32 %inc24, i32* %x, align 4
  %57 = load i8*, i8** %s, align 8
  %add.ptr25 = getelementptr inbounds i8, i8* %57, i64 3
  store i8* %add.ptr25, i8** %s, align 8
  %58 = load i8*, i8** %d, align 8
  %add.ptr26 = getelementptr inbounds i8, i8* %58, i64 3
  store i8* %add.ptr26, i8** %d, align 8
  br label %for.cond.19

for.end.27:                                       ; preds = %for.cond.19
  br label %if.end.28

if.end.28:                                        ; preds = %for.end.27, %for.end
  %rowstride = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 3
  %59 = load i32, i32* %rowstride, align 4
  %60 = load i8*, i8** %src, align 8
  %idx.ext = sext i32 %59 to i64
  %add.ptr29 = getelementptr inbounds i8, i8* %60, i64 %idx.ext
  store i8* %add.ptr29, i8** %src, align 8
  %rowstride30 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 3
  %61 = load i32, i32* %rowstride30, align 4
  %62 = load i8*, i8** %dest, align 8
  %idx.ext31 = sext i32 %61 to i64
  %add.ptr32 = getelementptr inbounds i8, i8* %62, i64 %idx.ext31
  store i8* %add.ptr32, i8** %dest, align 8
  br label %for.inc.33

for.inc.33:                                       ; preds = %if.end.28
  %63 = load i32, i32* %y, align 4
  %inc34 = add nsw i32 %63, 1
  store i32 %inc34, i32* %y, align 4
  br label %for.cond.9

for.end.35:                                       ; preds = %for.cond.9
  %w36 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 6
  %64 = load i32, i32* %w36, align 4
  %h37 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 7
  %65 = load i32, i32* %h37, align 4
  %mul38 = mul nsw i32 %64, %65
  %66 = load i32, i32* %processed, align 4
  %add = add nsw i32 %66, %mul38
  store i32 %add, i32* %processed, align 4
  %67 = load i32, i32* %i, align 4
  %rem = srem i32 %67, 16
  %cmp39 = icmp eq i32 %rem, 0
  br i1 %cmp39, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %for.end.35
  %68 = load i32, i32* %processed, align 4
  %conv = sitofp i32 %68 to double
  %69 = load i32, i32* %total, align 4
  %conv41 = sitofp i32 %69 to double
  %div = fdiv double %conv, %conv41
  %call42 = call i32 @gimp_progress_update(double %div)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.40, %for.end.35
  br label %for.inc.44

for.inc.44:                                       ; preds = %if.end.43
  %70 = load i8*, i8** %pr, align 8
  %call45 = call i8* @gimp_pixel_rgns_process(i8* %70)
  store i8* %call45, i8** %pr, align 8
  %71 = load i32, i32* %i, align 4
  %inc46 = add nsw i32 %71, 1
  store i32 %inc46, i32* %i, align 4
  br label %for.cond

for.end.47:                                       ; preds = %for.cond
  %call48 = call i32 @gimp_progress_update(double 1.000000e+00)
  %72 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %72)
  %73 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id49 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %73, i32 0, i32 0
  %74 = load i32, i32* %drawable_id49, align 4
  %call50 = call i32 @gimp_drawable_merge_shadow(i32 %74, i32 1)
  %75 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id51 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %75, i32 0, i32 0
  %76 = load i32, i32* %drawable_id51, align 4
  %77 = load i32, i32* %x1, align 4
  %78 = load i32, i32* %y1, align 4
  %79 = load i32, i32* %width, align 4
  %80 = load i32, i32* %height, align 4
  %call52 = call i32 @gimp_drawable_update(i32 %76, i32 %77, i32 %78, i32 %79, i32 %80)
  br label %return

return:                                           ; preds = %for.end.47, %if.then
  ret void
}

declare i32 @gimp_displays_flush() #1

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare void @gimp_ui_init(i8*, i32) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

declare %struct._GtkWidget* @gimp_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

declare void @gimp_standard_help_func(i8*, i8*) #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #3

declare void @gimp_window_set_transient(%struct._GtkWindow*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #3

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_zoom_preview_new(%struct._GimpDrawable*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @cm_preview(%struct.CmParamsType* %mix, %struct._GimpPreview* %preview) #0 {
entry:
  %mix.addr = alloca %struct.CmParamsType*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %src = alloca i8*, align 8
  %s = alloca i8*, align 8
  %dst = alloca i8*, align 8
  %d = alloca i8*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %red_norm = alloca double, align 8
  %green_norm = alloca double, align 8
  %blue_norm = alloca double, align 8
  %black_norm = alloca double, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bpp = alloca i32, align 4
  store %struct.CmParamsType* %mix, %struct.CmParamsType** %mix.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %0 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %1 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %red = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %1, i32 0, i32 0
  %call = call double @cm_calculate_norm(%struct.CmParamsType* %0, %struct.CmChannelType* %red)
  store double %call, double* %red_norm, align 8
  %2 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %3 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %green = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %3, i32 0, i32 1
  %call1 = call double @cm_calculate_norm(%struct.CmParamsType* %2, %struct.CmChannelType* %green)
  store double %call1, double* %green_norm, align 8
  %4 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %5 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %blue = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %5, i32 0, i32 2
  %call2 = call double @cm_calculate_norm(%struct.CmParamsType* %4, %struct.CmChannelType* %blue)
  store double %call2, double* %blue_norm, align 8
  %6 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %7 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %black = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %7, i32 0, i32 3
  %call3 = call double @cm_calculate_norm(%struct.CmParamsType* %6, %struct.CmChannelType* %black)
  store double %call3, double* %black_norm, align 8
  %8 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %9 = bitcast %struct._GimpPreview* %8 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_zoom_preview_get_type() #8
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call4)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpZoomPreview*
  %call6 = call i8* @gimp_zoom_preview_get_source(%struct._GimpZoomPreview* %10, i32* %width, i32* %height, i32* %bpp)
  store i8* %call6, i8** %s, align 8
  store i8* %call6, i8** %src, align 8
  %11 = load i32, i32* %width, align 4
  %12 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %11, %12
  %13 = load i32, i32* %bpp, align 4
  %mul7 = mul nsw i32 %mul, %13
  %conv = sext i32 %mul7 to i64
  %call8 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call8, i8** %d, align 8
  store i8* %call8, i8** %dst, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.19, %entry
  %14 = load i32, i32* %y, align 4
  %15 = load i32, i32* %height, align 4
  %cmp = icmp slt i32 %14, %15
  br i1 %cmp, label %for.body, label %for.end.21

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %for.body
  %16 = load i32, i32* %x, align 4
  %17 = load i32, i32* %width, align 4
  %cmp11 = icmp slt i32 %16, %17
  br i1 %cmp11, label %for.body.13, label %for.end

for.body.13:                                      ; preds = %for.cond.10
  %18 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %19 = load i8*, i8** %s, align 8
  %20 = load i8*, i8** %d, align 8
  %21 = load double, double* %red_norm, align 8
  %22 = load double, double* %green_norm, align 8
  %23 = load double, double* %blue_norm, align 8
  %24 = load double, double* %black_norm, align 8
  call void @cm_process_pixel(%struct.CmParamsType* %18, i8* %19, i8* %20, double %21, double %22, double %23, double %24)
  %25 = load i32, i32* %bpp, align 4
  %cmp14 = icmp eq i32 %25, 4
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.13
  %26 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr inbounds i8, i8* %26, i64 3
  %27 = load i8, i8* %arrayidx, align 1
  %28 = load i8*, i8** %d, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %28, i64 3
  store i8 %27, i8* %arrayidx16, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.13
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %29 = load i32, i32* %x, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %x, align 4
  %30 = load i32, i32* %bpp, align 4
  %31 = load i8*, i8** %s, align 8
  %idx.ext = sext i32 %30 to i64
  %add.ptr = getelementptr inbounds i8, i8* %31, i64 %idx.ext
  store i8* %add.ptr, i8** %s, align 8
  %32 = load i32, i32* %bpp, align 4
  %33 = load i8*, i8** %d, align 8
  %idx.ext17 = sext i32 %32 to i64
  %add.ptr18 = getelementptr inbounds i8, i8* %33, i64 %idx.ext17
  store i8* %add.ptr18, i8** %d, align 8
  br label %for.cond.10

for.end:                                          ; preds = %for.cond.10
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.end
  %34 = load i32, i32* %y, align 4
  %inc20 = add nsw i32 %34, 1
  store i32 %inc20, i32* %y, align 4
  br label %for.cond

for.end.21:                                       ; preds = %for.cond
  %35 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %36 = bitcast %struct._GimpPreview* %35 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_preview_get_type() #8
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call22)
  %37 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpPreview*
  %38 = load i8*, i8** %dst, align 8
  %39 = load i32, i32* %bpp, align 4
  %40 = load i32, i32* %width, align 4
  %mul24 = mul nsw i32 %39, %40
  call void @gimp_preview_draw_buffer(%struct._GimpPreview* %37, i8* %38, i32 %mul24)
  %41 = load i8*, i8** %src, align 8
  call void @g_free(i8* %41)
  %42 = load i8*, i8** %dst, align 8
  call void @g_free(i8* %42)
  ret void
}

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare void @gtk_frame_set_label_widget(%struct._GtkFrame*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #3

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int_combo_box_get_type() #3

declare void @gimp_int_combo_box_append(%struct._GimpIntComboBox*, ...) #1

declare i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @cm_combo_callback(%struct._GtkWidget* %widget, %struct.CmParamsType* %mix) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %mix.addr = alloca %struct.CmParamsType*, align 8
  %value = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct.CmParamsType* %mix, %struct.CmParamsType** %mix.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_int_combo_box_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpIntComboBox*
  %call2 = call i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox* %2, i32* %value)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %value, align 4
  %4 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %output_channel = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %4, i32 0, i32 6
  store i32 %3, i32* %output_channel, align 4
  %5 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  call void @cm_set_adjusters(%struct.CmParamsType* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

declare void @gtk_label_set_mnemonic_widget(%struct._GtkLabel*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #3

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_image_new_from_stock(i8*, i32) #1

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @cm_red_scale_callback(%struct._GtkAdjustment* %adjustment, %struct.CmParamsType* %mix) #0 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %mix.addr = alloca %struct.CmParamsType*, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store %struct.CmParamsType* %mix, %struct.CmParamsType** %mix.addr, align 8
  %0 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %monochrome = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %0, i32 0, i32 4
  %1 = load i32, i32* %monochrome, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %2)
  %div = fdiv double %call, 1.000000e+02
  %3 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %black = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %3, i32 0, i32 3
  %red_gain = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %black, i32 0, i32 0
  store double %div, double* %red_gain, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %output_channel = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %4, i32 0, i32 6
  %5 = load i32, i32* %output_channel, align 4
  switch i32 %5, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.4
    i32 2, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %if.else
  %6 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call1 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %6)
  %div2 = fdiv double %call1, 1.000000e+02
  %7 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %red = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %7, i32 0, i32 0
  %red_gain3 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %red, i32 0, i32 0
  store double %div2, double* %red_gain3, align 8
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.else
  %8 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call5 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %8)
  %div6 = fdiv double %call5, 1.000000e+02
  %9 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %green = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %9, i32 0, i32 1
  %red_gain7 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %green, i32 0, i32 0
  store double %div6, double* %red_gain7, align 8
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.else
  %10 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call9 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %10)
  %div10 = fdiv double %call9, 1.000000e+02
  %11 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %blue = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %11, i32 0, i32 2
  %red_gain11 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %blue, i32 0, i32 0
  store double %div10, double* %red_gain11, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %sw.bb.8, %sw.bb.4, %sw.bb
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %if.then
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_preview_get_type() #8
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call12)
  %14 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpPreview*
  call void @gimp_preview_invalidate(%struct._GimpPreview* %14)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cm_green_scale_callback(%struct._GtkAdjustment* %adjustment, %struct.CmParamsType* %mix) #0 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %mix.addr = alloca %struct.CmParamsType*, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store %struct.CmParamsType* %mix, %struct.CmParamsType** %mix.addr, align 8
  %0 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %monochrome = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %0, i32 0, i32 4
  %1 = load i32, i32* %monochrome, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %2)
  %div = fdiv double %call, 1.000000e+02
  %3 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %black = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %3, i32 0, i32 3
  %green_gain = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %black, i32 0, i32 1
  store double %div, double* %green_gain, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %output_channel = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %4, i32 0, i32 6
  %5 = load i32, i32* %output_channel, align 4
  switch i32 %5, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.4
    i32 2, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %if.else
  %6 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call1 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %6)
  %div2 = fdiv double %call1, 1.000000e+02
  %7 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %red = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %7, i32 0, i32 0
  %green_gain3 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %red, i32 0, i32 1
  store double %div2, double* %green_gain3, align 8
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.else
  %8 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call5 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %8)
  %div6 = fdiv double %call5, 1.000000e+02
  %9 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %green = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %9, i32 0, i32 1
  %green_gain7 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %green, i32 0, i32 1
  store double %div6, double* %green_gain7, align 8
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.else
  %10 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call9 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %10)
  %div10 = fdiv double %call9, 1.000000e+02
  %11 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %blue = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %11, i32 0, i32 2
  %green_gain11 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %blue, i32 0, i32 1
  store double %div10, double* %green_gain11, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %sw.bb.8, %sw.bb.4, %sw.bb
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %if.then
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_preview_get_type() #8
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call12)
  %14 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpPreview*
  call void @gimp_preview_invalidate(%struct._GimpPreview* %14)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cm_blue_scale_callback(%struct._GtkAdjustment* %adjustment, %struct.CmParamsType* %mix) #0 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %mix.addr = alloca %struct.CmParamsType*, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store %struct.CmParamsType* %mix, %struct.CmParamsType** %mix.addr, align 8
  %0 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %monochrome = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %0, i32 0, i32 4
  %1 = load i32, i32* %monochrome, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %2)
  %div = fdiv double %call, 1.000000e+02
  %3 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %black = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %3, i32 0, i32 3
  %blue_gain = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %black, i32 0, i32 2
  store double %div, double* %blue_gain, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %output_channel = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %4, i32 0, i32 6
  %5 = load i32, i32* %output_channel, align 4
  switch i32 %5, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.4
    i32 2, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %if.else
  %6 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call1 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %6)
  %div2 = fdiv double %call1, 1.000000e+02
  %7 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %red = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %7, i32 0, i32 0
  %blue_gain3 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %red, i32 0, i32 2
  store double %div2, double* %blue_gain3, align 8
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.else
  %8 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call5 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %8)
  %div6 = fdiv double %call5, 1.000000e+02
  %9 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %green = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %9, i32 0, i32 1
  %blue_gain7 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %green, i32 0, i32 2
  store double %div6, double* %blue_gain7, align 8
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.else
  %10 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call9 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %10)
  %div10 = fdiv double %call9, 1.000000e+02
  %11 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %blue = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %11, i32 0, i32 2
  %blue_gain11 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %blue, i32 0, i32 2
  store double %div10, double* %blue_gain11, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %sw.bb.8, %sw.bb.4, %sw.bb
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %if.then
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_preview_get_type() #8
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call12)
  %14 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpPreview*
  call void @gimp_preview_invalidate(%struct._GimpPreview* %14)
  ret void
}

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @cm_monochrome_callback(%struct._GtkWidget* %widget, %struct.CmParamsType* %mix) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %mix.addr = alloca %struct.CmParamsType*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct.CmParamsType* %mix, %struct.CmParamsType** %mix.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %output_channel = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %3, i32 0, i32 6
  %4 = load i32, i32* %output_channel, align 4
  %5 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %old_output_channel = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %5, i32 0, i32 12
  store i32 %4, i32* %old_output_channel, align 4
  %6 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %monochrome = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %6, i32 0, i32 4
  store i32 1, i32* %monochrome, align 4
  %7 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %combo = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %7, i32 0, i32 11
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %8, i32 0)
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %old_output_channel3 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %9, i32 0, i32 12
  %10 = load i32, i32* %old_output_channel3, align 4
  %11 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %output_channel4 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %11, i32 0, i32 6
  store i32 %10, i32* %output_channel4, align 4
  %12 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %monochrome5 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %12, i32 0, i32 4
  store i32 0, i32* %monochrome5, align 4
  %13 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %combo6 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %13, i32 0, i32 11
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %combo6, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %14, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  call void @cm_set_adjusters(%struct.CmParamsType* %15)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_preview_get_type() #8
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call7)
  %18 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpPreview*
  call void @gimp_preview_invalidate(%struct._GimpPreview* %18)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cm_preserve_luminosity_callback(%struct._GtkWidget* %widget, %struct.CmParamsType* %mix) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %mix.addr = alloca %struct.CmParamsType*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct.CmParamsType* %mix, %struct.CmParamsType** %mix.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %preserve_luminosity = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %3, i32 0, i32 5
  store i32 1, i32* %preserve_luminosity, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %preserve_luminosity3 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %4, i32 0, i32 5
  store i32 0, i32* %preserve_luminosity3, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_preview_get_type() #8
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call4)
  %7 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpPreview*
  call void @gimp_preview_invalidate(%struct._GimpPreview* %7)
  ret void
}

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_button_new_from_stock(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @cm_load_file_callback(%struct._GtkWidget* %widget, %struct.CmParamsType* %mix) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %mix.addr = alloca %struct.CmParamsType*, align 8
  %parent = alloca %struct._GtkWidget*, align 8
  %name = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct.CmParamsType* %mix, %struct.CmParamsType** %mix.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @cm_load_file_callback.dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %1)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %parent, align 8
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.62, i32 0, i32 0)) #4
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %parent, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_window_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call2)
  %4 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWindow*
  %call4 = call %struct._GtkWidget* (i8*, %struct._GtkWindow*, i32, i8*, ...) @gtk_file_chooser_dialog_new(i8* %call1, %struct._GtkWindow* %4, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** @cm_load_file_callback.dialog, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** @cm_load_file_callback.dialog, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_dialog_get_type() #8
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %7, i32 -5, i32 -6, i32 -1)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** @cm_load_file_callback.dialog, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_dialog_get_type() #8
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkDialog*
  call void @gtk_dialog_set_default_response(%struct._GtkDialog* %10, i32 -5)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** @cm_load_file_callback.dialog, align 8
  %12 = bitcast %struct._GtkWidget* %11 to i8*
  %13 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %14 = bitcast %struct.CmParamsType* %13 to i8*
  %call9 = call i64 @g_signal_connect_data(i8* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct.CmParamsType*)* @cm_load_file_response_callback to void ()*), i8* %14, void (i8*, %struct._GClosure*)* null, i32 0)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** @cm_load_file_callback.dialog, align 8
  %16 = bitcast %struct._GtkWidget* %15 to i8*
  %call10 = call i64 @g_signal_connect_data(i8* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.64, i32 0, i32 0), void ()* bitcast (i32 ()* @gtk_true to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call11 = call i8* @cm_settings_filename()
  store i8* %call11, i8** %name, align 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** @cm_load_file_callback.dialog, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_file_chooser_get_type() #8
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call12)
  %19 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkFileChooser*
  %20 = load i8*, i8** %name, align 8
  %call14 = call i32 @gtk_file_chooser_set_filename(%struct._GtkFileChooser* %19, i8* %20)
  %21 = load i8*, i8** %name, align 8
  call void @g_free(i8* %21)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** @cm_load_file_callback.dialog, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_window_get_type() #8
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call15)
  %24 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %24)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cm_save_file_callback(%struct._GtkWidget* %widget, %struct.CmParamsType* %mix) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %mix.addr = alloca %struct.CmParamsType*, align 8
  %parent = alloca %struct._GtkWidget*, align 8
  %name = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct.CmParamsType* %mix, %struct.CmParamsType** %mix.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @cm_save_file_callback.dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %1)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %parent, align 8
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.74, i32 0, i32 0)) #4
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %parent, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_window_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call2)
  %4 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWindow*
  %call4 = call %struct._GtkWidget* (i8*, %struct._GtkWindow*, i32, i8*, ...) @gtk_file_chooser_dialog_new(i8* %call1, %struct._GtkWindow* %4, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** @cm_save_file_callback.dialog, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** @cm_save_file_callback.dialog, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_dialog_get_type() #8
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %7, i32 -5, i32 -6, i32 -1)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** @cm_save_file_callback.dialog, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_dialog_get_type() #8
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkDialog*
  call void @gtk_dialog_set_default_response(%struct._GtkDialog* %10, i32 -5)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** @cm_save_file_callback.dialog, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_file_chooser_get_type() #8
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call9)
  %13 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkFileChooser*
  call void @gtk_file_chooser_set_do_overwrite_confirmation(%struct._GtkFileChooser* %13, i32 1)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** @cm_save_file_callback.dialog, align 8
  %15 = bitcast %struct._GtkWidget* %14 to i8*
  %16 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %17 = bitcast %struct.CmParamsType* %16 to i8*
  %call11 = call i64 @g_signal_connect_data(i8* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct.CmParamsType*)* @cm_save_file_response_callback to void ()*), i8* %17, void (i8*, %struct._GClosure*)* null, i32 0)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** @cm_save_file_callback.dialog, align 8
  %19 = bitcast %struct._GtkWidget* %18 to i8*
  %call12 = call i64 @g_signal_connect_data(i8* %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.64, i32 0, i32 0), void ()* bitcast (i32 ()* @gtk_true to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call13 = call i8* @cm_settings_filename()
  store i8* %call13, i8** %name, align 8
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** @cm_save_file_callback.dialog, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_file_chooser_get_type() #8
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call14)
  %22 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkFileChooser*
  %23 = load i8*, i8** %name, align 8
  %call16 = call i32 @gtk_file_chooser_set_filename(%struct._GtkFileChooser* %22, i8* %23)
  %24 = load i8*, i8** %name, align 8
  call void @g_free(i8* %24)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** @cm_save_file_callback.dialog, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_window_get_type() #8
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call17)
  %27 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %27)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cm_reset_callback(%struct._GtkWidget* %widget, %struct.CmParamsType* %mix) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %mix.addr = alloca %struct.CmParamsType*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct.CmParamsType* %mix, %struct.CmParamsType** %mix.addr, align 8
  %0 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  call void @cm_set_defaults(%struct.CmParamsType* %0)
  %1 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  call void @cm_update_ui(%struct.CmParamsType* %1)
  ret void
}

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal double @cm_calculate_norm(%struct.CmParamsType* %mix, %struct.CmChannelType* %ch) #0 {
entry:
  %retval = alloca double, align 8
  %mix.addr = alloca %struct.CmParamsType*, align 8
  %ch.addr = alloca %struct.CmChannelType*, align 8
  %sum = alloca double, align 8
  store %struct.CmParamsType* %mix, %struct.CmParamsType** %mix.addr, align 8
  store %struct.CmChannelType* %ch, %struct.CmChannelType** %ch.addr, align 8
  %0 = load %struct.CmChannelType*, %struct.CmChannelType** %ch.addr, align 8
  %red_gain = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %0, i32 0, i32 0
  %1 = load double, double* %red_gain, align 8
  %2 = load %struct.CmChannelType*, %struct.CmChannelType** %ch.addr, align 8
  %green_gain = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %2, i32 0, i32 1
  %3 = load double, double* %green_gain, align 8
  %add = fadd double %1, %3
  %4 = load %struct.CmChannelType*, %struct.CmChannelType** %ch.addr, align 8
  %blue_gain = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %4, i32 0, i32 2
  %5 = load double, double* %blue_gain, align 8
  %add1 = fadd double %add, %5
  store double %add1, double* %sum, align 8
  %6 = load double, double* %sum, align 8
  %cmp = fcmp oeq double %6, 0.000000e+00
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %preserve_luminosity = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %7, i32 0, i32 5
  %8 = load i32, i32* %preserve_luminosity, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store double 1.000000e+00, double* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %9 = load double, double* %sum, align 8
  %div = fdiv double 1.000000e+00, %9
  %call = call double @fabs(double %div) #8
  store double %call, double* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load double, double* %retval
  ret double %10
}

declare i8* @gimp_zoom_preview_get_source(%struct._GimpZoomPreview*, i32*, i32*, i32*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_zoom_preview_get_type() #3

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @cm_process_pixel(%struct.CmParamsType* %mix, i8* %s, i8* %d, double %red_norm, double %green_norm, double %blue_norm, double %black_norm) #6 {
entry:
  %mix.addr = alloca %struct.CmParamsType*, align 8
  %s.addr = alloca i8*, align 8
  %d.addr = alloca i8*, align 8
  %red_norm.addr = alloca double, align 8
  %green_norm.addr = alloca double, align 8
  %blue_norm.addr = alloca double, align 8
  %black_norm.addr = alloca double, align 8
  store %struct.CmParamsType* %mix, %struct.CmParamsType** %mix.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8* %d, i8** %d.addr, align 8
  store double %red_norm, double* %red_norm.addr, align 8
  store double %green_norm, double* %green_norm.addr, align 8
  store double %blue_norm, double* %blue_norm.addr, align 8
  store double %black_norm, double* %black_norm.addr, align 8
  %0 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %monochrome = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %0, i32 0, i32 4
  %1 = load i32, i32* %monochrome, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %black = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %2, i32 0, i32 3
  %3 = load i8*, i8** %s.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx, align 1
  %5 = load i8*, i8** %s.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx1, align 1
  %7 = load i8*, i8** %s.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %7, i64 2
  %8 = load i8, i8* %arrayidx2, align 1
  %9 = load double, double* %black_norm.addr, align 8
  %call = call zeroext i8 @cm_mix_pixel(%struct.CmChannelType* %black, i8 zeroext %4, i8 zeroext %6, i8 zeroext %8, double %9)
  %10 = load i8*, i8** %d.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %10, i64 2
  store i8 %call, i8* %arrayidx3, align 1
  %11 = load i8*, i8** %d.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %11, i64 1
  store i8 %call, i8* %arrayidx4, align 1
  %12 = load i8*, i8** %d.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %12, i64 0
  store i8 %call, i8* %arrayidx5, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %red = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %13, i32 0, i32 0
  %14 = load i8*, i8** %s.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %14, i64 0
  %15 = load i8, i8* %arrayidx6, align 1
  %16 = load i8*, i8** %s.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %16, i64 1
  %17 = load i8, i8* %arrayidx7, align 1
  %18 = load i8*, i8** %s.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %18, i64 2
  %19 = load i8, i8* %arrayidx8, align 1
  %20 = load double, double* %red_norm.addr, align 8
  %call9 = call zeroext i8 @cm_mix_pixel(%struct.CmChannelType* %red, i8 zeroext %15, i8 zeroext %17, i8 zeroext %19, double %20)
  %21 = load i8*, i8** %d.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %21, i64 0
  store i8 %call9, i8* %arrayidx10, align 1
  %22 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %green = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %22, i32 0, i32 1
  %23 = load i8*, i8** %s.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %23, i64 0
  %24 = load i8, i8* %arrayidx11, align 1
  %25 = load i8*, i8** %s.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %25, i64 1
  %26 = load i8, i8* %arrayidx12, align 1
  %27 = load i8*, i8** %s.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %27, i64 2
  %28 = load i8, i8* %arrayidx13, align 1
  %29 = load double, double* %green_norm.addr, align 8
  %call14 = call zeroext i8 @cm_mix_pixel(%struct.CmChannelType* %green, i8 zeroext %24, i8 zeroext %26, i8 zeroext %28, double %29)
  %30 = load i8*, i8** %d.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %30, i64 1
  store i8 %call14, i8* %arrayidx15, align 1
  %31 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %blue = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %31, i32 0, i32 2
  %32 = load i8*, i8** %s.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %32, i64 0
  %33 = load i8, i8* %arrayidx16, align 1
  %34 = load i8*, i8** %s.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %34, i64 1
  %35 = load i8, i8* %arrayidx17, align 1
  %36 = load i8*, i8** %s.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %36, i64 2
  %37 = load i8, i8* %arrayidx18, align 1
  %38 = load double, double* %blue_norm.addr, align 8
  %call19 = call zeroext i8 @cm_mix_pixel(%struct.CmChannelType* %blue, i8 zeroext %33, i8 zeroext %35, i8 zeroext %37, double %38)
  %39 = load i8*, i8** %d.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %39, i64 2
  store i8 %call19, i8* %arrayidx20, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @gimp_preview_draw_buffer(%struct._GimpPreview*, i8*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_get_type() #3

declare void @g_free(i8*) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i8 @cm_mix_pixel(%struct.CmChannelType* %ch, i8 zeroext %r, i8 zeroext %g, i8 zeroext %b, double %norm) #6 {
entry:
  %ch.addr = alloca %struct.CmChannelType*, align 8
  %r.addr = alloca i8, align 1
  %g.addr = alloca i8, align 1
  %b.addr = alloca i8, align 1
  %norm.addr = alloca double, align 8
  %c = alloca double, align 8
  store %struct.CmChannelType* %ch, %struct.CmChannelType** %ch.addr, align 8
  store i8 %r, i8* %r.addr, align 1
  store i8 %g, i8* %g.addr, align 1
  store i8 %b, i8* %b.addr, align 1
  store double %norm, double* %norm.addr, align 8
  %0 = load %struct.CmChannelType*, %struct.CmChannelType** %ch.addr, align 8
  %red_gain = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %0, i32 0, i32 0
  %1 = load double, double* %red_gain, align 8
  %2 = load i8, i8* %r.addr, align 1
  %conv = zext i8 %2 to i32
  %conv1 = sitofp i32 %conv to double
  %mul = fmul double %1, %conv1
  %3 = load %struct.CmChannelType*, %struct.CmChannelType** %ch.addr, align 8
  %green_gain = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %3, i32 0, i32 1
  %4 = load double, double* %green_gain, align 8
  %5 = load i8, i8* %g.addr, align 1
  %conv2 = zext i8 %5 to i32
  %conv3 = sitofp i32 %conv2 to double
  %mul4 = fmul double %4, %conv3
  %add = fadd double %mul, %mul4
  %6 = load %struct.CmChannelType*, %struct.CmChannelType** %ch.addr, align 8
  %blue_gain = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %6, i32 0, i32 2
  %7 = load double, double* %blue_gain, align 8
  %8 = load i8, i8* %b.addr, align 1
  %conv5 = zext i8 %8 to i32
  %conv6 = sitofp i32 %conv5 to double
  %mul7 = fmul double %7, %conv6
  %add8 = fadd double %add, %mul7
  store double %add8, double* %c, align 8
  %9 = load double, double* %norm.addr, align 8
  %10 = load double, double* %c, align 8
  %mul9 = fmul double %10, %9
  store double %mul9, double* %c, align 8
  %11 = load double, double* %c, align 8
  %cmp = fcmp ogt double %11, 2.550000e+02
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.15

cond.false:                                       ; preds = %entry
  %12 = load double, double* %c, align 8
  %cmp11 = fcmp olt double %12, 0.000000e+00
  br i1 %cmp11, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %cond.false
  br label %cond.end

cond.false.14:                                    ; preds = %cond.false
  %13 = load double, double* %c, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.14, %cond.true.13
  %cond = phi double [ 0.000000e+00, %cond.true.13 ], [ %13, %cond.false.14 ]
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.end, %cond.true
  %cond16 = phi double [ 2.550000e+02, %cond.true ], [ %cond, %cond.end ]
  %conv17 = fptoui double %cond16 to i8
  ret i8 %conv17
}

declare i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @cm_set_adjusters(%struct.CmParamsType* %mix) #0 {
entry:
  %mix.addr = alloca %struct.CmParamsType*, align 8
  store %struct.CmParamsType* %mix, %struct.CmParamsType** %mix.addr, align 8
  %0 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %monochrome = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %0, i32 0, i32 4
  %1 = load i32, i32* %monochrome, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %red_data = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %2, i32 0, i32 8
  %3 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %red_data, align 8
  %4 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %black = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %4, i32 0, i32 3
  %red_gain = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %black, i32 0, i32 0
  %5 = load double, double* %red_gain, align 8
  %mul = fmul double %5, 1.000000e+02
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %3, double %mul)
  %6 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %green_data = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %6, i32 0, i32 9
  %7 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %green_data, align 8
  %8 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %black1 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %8, i32 0, i32 3
  %green_gain = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %black1, i32 0, i32 1
  %9 = load double, double* %green_gain, align 8
  %mul2 = fmul double %9, 1.000000e+02
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %7, double %mul2)
  %10 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %blue_data = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %10, i32 0, i32 10
  %11 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %blue_data, align 8
  %12 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %black3 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %12, i32 0, i32 3
  %blue_gain = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %black3, i32 0, i32 2
  %13 = load double, double* %blue_gain, align 8
  %mul4 = fmul double %13, 1.000000e+02
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %11, double %mul4)
  br label %sw.epilog

if.end:                                           ; preds = %entry
  %14 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %output_channel = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %14, i32 0, i32 6
  %15 = load i32, i32* %output_channel, align 4
  switch i32 %15, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.16
    i32 2, label %sw.bb.28
  ]

sw.bb:                                            ; preds = %if.end
  %16 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %red_data5 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %16, i32 0, i32 8
  %17 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %red_data5, align 8
  %18 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %red = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %18, i32 0, i32 0
  %red_gain6 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %red, i32 0, i32 0
  %19 = load double, double* %red_gain6, align 8
  %mul7 = fmul double %19, 1.000000e+02
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %17, double %mul7)
  %20 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %green_data8 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %20, i32 0, i32 9
  %21 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %green_data8, align 8
  %22 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %red9 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %22, i32 0, i32 0
  %green_gain10 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %red9, i32 0, i32 1
  %23 = load double, double* %green_gain10, align 8
  %mul11 = fmul double %23, 1.000000e+02
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %21, double %mul11)
  %24 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %blue_data12 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %24, i32 0, i32 10
  %25 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %blue_data12, align 8
  %26 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %red13 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %26, i32 0, i32 0
  %blue_gain14 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %red13, i32 0, i32 2
  %27 = load double, double* %blue_gain14, align 8
  %mul15 = fmul double %27, 1.000000e+02
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %25, double %mul15)
  br label %sw.epilog

sw.bb.16:                                         ; preds = %if.end
  %28 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %red_data17 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %28, i32 0, i32 8
  %29 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %red_data17, align 8
  %30 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %green = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %30, i32 0, i32 1
  %red_gain18 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %green, i32 0, i32 0
  %31 = load double, double* %red_gain18, align 8
  %mul19 = fmul double %31, 1.000000e+02
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %29, double %mul19)
  %32 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %green_data20 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %32, i32 0, i32 9
  %33 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %green_data20, align 8
  %34 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %green21 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %34, i32 0, i32 1
  %green_gain22 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %green21, i32 0, i32 1
  %35 = load double, double* %green_gain22, align 8
  %mul23 = fmul double %35, 1.000000e+02
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %33, double %mul23)
  %36 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %blue_data24 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %36, i32 0, i32 10
  %37 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %blue_data24, align 8
  %38 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %green25 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %38, i32 0, i32 1
  %blue_gain26 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %green25, i32 0, i32 2
  %39 = load double, double* %blue_gain26, align 8
  %mul27 = fmul double %39, 1.000000e+02
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %37, double %mul27)
  br label %sw.epilog

sw.bb.28:                                         ; preds = %if.end
  %40 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %red_data29 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %40, i32 0, i32 8
  %41 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %red_data29, align 8
  %42 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %blue = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %42, i32 0, i32 2
  %red_gain30 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %blue, i32 0, i32 0
  %43 = load double, double* %red_gain30, align 8
  %mul31 = fmul double %43, 1.000000e+02
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %41, double %mul31)
  %44 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %green_data32 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %44, i32 0, i32 9
  %45 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %green_data32, align 8
  %46 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %blue33 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %46, i32 0, i32 2
  %green_gain34 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %blue33, i32 0, i32 1
  %47 = load double, double* %green_gain34, align 8
  %mul35 = fmul double %47, 1.000000e+02
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %45, double %mul35)
  %48 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %blue_data36 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %48, i32 0, i32 10
  %49 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %blue_data36, align 8
  %50 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %blue37 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %50, i32 0, i32 2
  %blue_gain38 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %blue37, i32 0, i32 2
  %51 = load double, double* %blue_gain38, align 8
  %mul39 = fmul double %51, 1.000000e+02
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %49, double %mul39)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %if.end, %sw.bb.28, %sw.bb.16, %sw.bb
  ret void
}

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

declare void @gimp_preview_invalidate(%struct._GimpPreview*) #1

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #1

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_file_chooser_dialog_new(i8*, %struct._GtkWindow*, i32, i8*, ...) #1

declare void @gtk_dialog_set_default_response(%struct._GtkDialog*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @cm_load_file_response_callback(%struct._GtkWidget* %dialog, i32 %response_id, %struct.CmParamsType* %mix) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %mix.addr = alloca %struct.CmParamsType*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %filename = alloca i8*, align 8
  %buf = alloca [3 x [1024 x i8]], align 16
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct.CmParamsType* %mix, %struct.CmParamsType** %mix.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %0, -5
  br i1 %cmp, label %if.then, label %if.end.148

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_file_chooser_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkFileChooser*
  %call2 = call i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser* %3)
  store i8* %call2, i8** %filename, align 8
  %4 = load i8*, i8** %filename, align 8
  %call3 = call %struct._IO_FILE* @fopen(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i32 0, i32 0))
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %fp, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool = icmp ne %struct._IO_FILE* %5, null
  br i1 %tobool, label %if.then.4, label %if.else.142

if.then.4:                                        ; preds = %if.then
  %arrayidx = getelementptr inbounds [3 x [1024 x i8]], [3 x [1024 x i8]]* %buf, i32 0, i64 0
  %arrayidx5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %arrayidx, i32 0, i64 0
  store i8 0, i8* %arrayidx5, align 1
  %arrayidx6 = getelementptr inbounds [3 x [1024 x i8]], [3 x [1024 x i8]]* %buf, i32 0, i64 1
  %arrayidx7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %arrayidx6, i32 0, i64 0
  store i8 0, i8* %arrayidx7, align 1
  %arrayidx8 = getelementptr inbounds [3 x [1024 x i8]], [3 x [1024 x i8]]* %buf, i32 0, i64 2
  %arrayidx9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %arrayidx8, i32 0, i64 0
  store i8 0, i8* %arrayidx9, align 1
  %arrayidx10 = getelementptr inbounds [3 x [1024 x i8]], [3 x [1024 x i8]]* %buf, i32 0, i64 0
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %arrayidx10, i32 0, i32 0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call11 = call i8* @fgets(i8* %arraydecay, i32 1023, %struct._IO_FILE* %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %arrayidx12 = getelementptr inbounds [3 x [1024 x i8]], [3 x [1024 x i8]]* %buf, i32 0, i64 0
  %arraydecay13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %arrayidx12, i32 0, i32 0
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66, i32 0, i32 0), i8* %arraydecay13)
  %arrayidx15 = getelementptr inbounds [3 x [1024 x i8]], [3 x [1024 x i8]]* %buf, i32 0, i64 0
  %arraydecay16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %arrayidx15, i32 0, i32 0
  %call17 = call i32 @strcmp(i8* %arraydecay16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i32 0, i32 0)) #10
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.then.4
  %8 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %output_channel = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %8, i32 0, i32 6
  store i32 0, i32* %output_channel, align 4
  br label %if.end.34

if.else:                                          ; preds = %if.then.4
  %arrayidx20 = getelementptr inbounds [3 x [1024 x i8]], [3 x [1024 x i8]]* %buf, i32 0, i64 0
  %arraydecay21 = getelementptr inbounds [1024 x i8], [1024 x i8]* %arrayidx20, i32 0, i32 0
  %call22 = call i32 @strcmp(i8* %arraydecay21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0)) #10
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then.24, label %if.else.26

if.then.24:                                       ; preds = %if.else
  %9 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %output_channel25 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %9, i32 0, i32 6
  store i32 1, i32* %output_channel25, align 4
  br label %if.end.33

if.else.26:                                       ; preds = %if.else
  %arrayidx27 = getelementptr inbounds [3 x [1024 x i8]], [3 x [1024 x i8]]* %buf, i32 0, i64 0
  %arraydecay28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %arrayidx27, i32 0, i32 0
  %call29 = call i32 @strcmp(i8* %arraydecay28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0)) #10
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %if.then.31, label %if.end

if.then.31:                                       ; preds = %if.else.26
  %10 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %output_channel32 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %10, i32 0, i32 6
  store i32 2, i32* %output_channel32, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.31, %if.else.26
  br label %if.end.33

if.end.33:                                        ; preds = %if.end, %if.then.24
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.19
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %arrayidx35 = getelementptr inbounds [3 x [1024 x i8]], [3 x [1024 x i8]]* %buf, i32 0, i64 0
  %arraydecay36 = getelementptr inbounds [1024 x i8], [1024 x i8]* %arrayidx35, i32 0, i32 0
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66, i32 0, i32 0), i8* %arraydecay36)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %arrayidx38 = getelementptr inbounds [3 x [1024 x i8]], [3 x [1024 x i8]]* %buf, i32 0, i64 0
  %arraydecay39 = getelementptr inbounds [1024 x i8], [1024 x i8]* %arrayidx38, i32 0, i32 0
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66, i32 0, i32 0), i8* %arraydecay39)
  %arrayidx41 = getelementptr inbounds [3 x [1024 x i8]], [3 x [1024 x i8]]* %buf, i32 0, i64 0
  %arraydecay42 = getelementptr inbounds [1024 x i8], [1024 x i8]* %arrayidx41, i32 0, i32 0
  %call43 = call i32 @strcmp(i8* %arraydecay42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i32 0, i32 0)) #10
  %cmp44 = icmp eq i32 %call43, 0
  br i1 %cmp44, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %if.end.34
  %13 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %monochrome = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %13, i32 0, i32 4
  store i32 1, i32* %monochrome, align 4
  br label %if.end.48

if.else.46:                                       ; preds = %if.end.34
  %14 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %monochrome47 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %14, i32 0, i32 4
  store i32 0, i32* %monochrome47, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.46, %if.then.45
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %arrayidx49 = getelementptr inbounds [3 x [1024 x i8]], [3 x [1024 x i8]]* %buf, i32 0, i64 0
  %arraydecay50 = getelementptr inbounds [1024 x i8], [1024 x i8]* %arrayidx49, i32 0, i32 0
  %call51 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66, i32 0, i32 0), i8* %arraydecay50)
  %arrayidx52 = getelementptr inbounds [3 x [1024 x i8]], [3 x [1024 x i8]]* %buf, i32 0, i64 0
  %arraydecay53 = getelementptr inbounds [1024 x i8], [1024 x i8]* %arrayidx52, i32 0, i32 0
  %call54 = call i32 @strcmp(i8* %arraydecay53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i32 0, i32 0)) #10
  %cmp55 = icmp eq i32 %call54, 0
  br i1 %cmp55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %if.end.48
  %16 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %preserve_luminosity = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %16, i32 0, i32 5
  store i32 1, i32* %preserve_luminosity, align 4
  br label %if.end.59

if.else.57:                                       ; preds = %if.end.48
  %17 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %preserve_luminosity58 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %17, i32 0, i32 5
  store i32 0, i32* %preserve_luminosity58, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.57, %if.then.56
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %arrayidx60 = getelementptr inbounds [3 x [1024 x i8]], [3 x [1024 x i8]]* %buf, i32 0, i64 0
  %arraydecay61 = getelementptr inbounds [1024 x i8], [1024 x i8]* %arrayidx60, i32 0, i32 0
  %arrayidx62 = getelementptr inbounds [3 x [1024 x i8]], [3 x [1024 x i8]]* %buf, i32 0, i64 1
  %arraydecay63 = getelementptr inbounds [1024 x i8], [1024 x i8]* %arrayidx62, i32 0, i32 0
  %arrayidx64 = getelementptr inbounds [3 x [1024 x i8]], [3 x [1024 x i8]]* %buf, i32 0, i64 2
  %arraydecay65 = getelementptr inbounds [1024 x i8], [1024 x i8]* %arrayidx64, i32 0, i32 0
  %call66 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.71, i32 0, i32 0), i8* %arraydecay61, i8* %arraydecay63, i8* %arraydecay65)
  %arrayidx67 = getelementptr inbounds [3 x [1024 x i8]], [3 x [1024 x i8]]* %buf, i32 0, i64 0
  %arraydecay68 = getelementptr inbounds [1024 x i8], [1024 x i8]* %arrayidx67, i32 0, i32 0
  %call69 = call double @g_ascii_strtod(i8* %arraydecay68, i8** null)
  %19 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %red = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %19, i32 0, i32 0
  %red_gain = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %red, i32 0, i32 0
  store double %call69, double* %red_gain, align 8
  %arrayidx70 = getelementptr inbounds [3 x [1024 x i8]], [3 x [1024 x i8]]* %buf, i32 0, i64 1
  %arraydecay71 = getelementptr inbounds [1024 x i8], [1024 x i8]* %arrayidx70, i32 0, i32 0
  %call72 = call double @g_ascii_strtod(i8* %arraydecay71, i8** null)
  %20 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %red73 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %20, i32 0, i32 0
  %green_gain = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %red73, i32 0, i32 1
  store double %call72, double* %green_gain, align 8
  %arrayidx74 = getelementptr inbounds [3 x [1024 x i8]], [3 x [1024 x i8]]* %buf, i32 0, i64 2
  %arraydecay75 = getelementptr inbounds [1024 x i8], [1024 x i8]* %arrayidx74, i32 0, i32 0
  %call76 = call double @g_ascii_strtod(i8* %arraydecay75, i8** null)
  %21 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %red77 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %21, i32 0, i32 0
  %blue_gain = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %red77, i32 0, i32 2
  store double %call76, double* %blue_gain, align 8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %arrayidx78 = getelementptr inbounds [3 x [1024 x i8]], [3 x [1024 x i8]]* %buf, i32 0, i64 0
  %arraydecay79 = getelementptr inbounds [1024 x i8], [1024 x i8]* %arrayidx78, i32 0, i32 0
  %arrayidx80 = getelementptr inbounds [3 x [1024 x i8]], [3 x [1024 x i8]]* %buf, i32 0, i64 1
  %arraydecay81 = getelementptr inbounds [1024 x i8], [1024 x i8]* %arrayidx80, i32 0, i32 0
  %arrayidx82 = getelementptr inbounds [3 x [1024 x i8]], [3 x [1024 x i8]]* %buf, i32 0, i64 2
  %arraydecay83 = getelementptr inbounds [1024 x i8], [1024 x i8]* %arrayidx82, i32 0, i32 0
  %call84 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.71, i32 0, i32 0), i8* %arraydecay79, i8* %arraydecay81, i8* %arraydecay83)
  %arrayidx85 = getelementptr inbounds [3 x [1024 x i8]], [3 x [1024 x i8]]* %buf, i32 0, i64 0
  %arraydecay86 = getelementptr inbounds [1024 x i8], [1024 x i8]* %arrayidx85, i32 0, i32 0
  %call87 = call double @g_ascii_strtod(i8* %arraydecay86, i8** null)
  %23 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %green = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %23, i32 0, i32 1
  %red_gain88 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %green, i32 0, i32 0
  store double %call87, double* %red_gain88, align 8
  %arrayidx89 = getelementptr inbounds [3 x [1024 x i8]], [3 x [1024 x i8]]* %buf, i32 0, i64 1
  %arraydecay90 = getelementptr inbounds [1024 x i8], [1024 x i8]* %arrayidx89, i32 0, i32 0
  %call91 = call double @g_ascii_strtod(i8* %arraydecay90, i8** null)
  %24 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %green92 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %24, i32 0, i32 1
  %green_gain93 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %green92, i32 0, i32 1
  store double %call91, double* %green_gain93, align 8
  %arrayidx94 = getelementptr inbounds [3 x [1024 x i8]], [3 x [1024 x i8]]* %buf, i32 0, i64 2
  %arraydecay95 = getelementptr inbounds [1024 x i8], [1024 x i8]* %arrayidx94, i32 0, i32 0
  %call96 = call double @g_ascii_strtod(i8* %arraydecay95, i8** null)
  %25 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %green97 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %25, i32 0, i32 1
  %blue_gain98 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %green97, i32 0, i32 2
  store double %call96, double* %blue_gain98, align 8
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %arrayidx99 = getelementptr inbounds [3 x [1024 x i8]], [3 x [1024 x i8]]* %buf, i32 0, i64 0
  %arraydecay100 = getelementptr inbounds [1024 x i8], [1024 x i8]* %arrayidx99, i32 0, i32 0
  %arrayidx101 = getelementptr inbounds [3 x [1024 x i8]], [3 x [1024 x i8]]* %buf, i32 0, i64 1
  %arraydecay102 = getelementptr inbounds [1024 x i8], [1024 x i8]* %arrayidx101, i32 0, i32 0
  %arrayidx103 = getelementptr inbounds [3 x [1024 x i8]], [3 x [1024 x i8]]* %buf, i32 0, i64 2
  %arraydecay104 = getelementptr inbounds [1024 x i8], [1024 x i8]* %arrayidx103, i32 0, i32 0
  %call105 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.71, i32 0, i32 0), i8* %arraydecay100, i8* %arraydecay102, i8* %arraydecay104)
  %arrayidx106 = getelementptr inbounds [3 x [1024 x i8]], [3 x [1024 x i8]]* %buf, i32 0, i64 0
  %arraydecay107 = getelementptr inbounds [1024 x i8], [1024 x i8]* %arrayidx106, i32 0, i32 0
  %call108 = call double @g_ascii_strtod(i8* %arraydecay107, i8** null)
  %27 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %blue = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %27, i32 0, i32 2
  %red_gain109 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %blue, i32 0, i32 0
  store double %call108, double* %red_gain109, align 8
  %arrayidx110 = getelementptr inbounds [3 x [1024 x i8]], [3 x [1024 x i8]]* %buf, i32 0, i64 1
  %arraydecay111 = getelementptr inbounds [1024 x i8], [1024 x i8]* %arrayidx110, i32 0, i32 0
  %call112 = call double @g_ascii_strtod(i8* %arraydecay111, i8** null)
  %28 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %blue113 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %28, i32 0, i32 2
  %green_gain114 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %blue113, i32 0, i32 1
  store double %call112, double* %green_gain114, align 8
  %arrayidx115 = getelementptr inbounds [3 x [1024 x i8]], [3 x [1024 x i8]]* %buf, i32 0, i64 2
  %arraydecay116 = getelementptr inbounds [1024 x i8], [1024 x i8]* %arrayidx115, i32 0, i32 0
  %call117 = call double @g_ascii_strtod(i8* %arraydecay116, i8** null)
  %29 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %blue118 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %29, i32 0, i32 2
  %blue_gain119 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %blue118, i32 0, i32 2
  store double %call117, double* %blue_gain119, align 8
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %arrayidx120 = getelementptr inbounds [3 x [1024 x i8]], [3 x [1024 x i8]]* %buf, i32 0, i64 0
  %arraydecay121 = getelementptr inbounds [1024 x i8], [1024 x i8]* %arrayidx120, i32 0, i32 0
  %arrayidx122 = getelementptr inbounds [3 x [1024 x i8]], [3 x [1024 x i8]]* %buf, i32 0, i64 1
  %arraydecay123 = getelementptr inbounds [1024 x i8], [1024 x i8]* %arrayidx122, i32 0, i32 0
  %arrayidx124 = getelementptr inbounds [3 x [1024 x i8]], [3 x [1024 x i8]]* %buf, i32 0, i64 2
  %arraydecay125 = getelementptr inbounds [1024 x i8], [1024 x i8]* %arrayidx124, i32 0, i32 0
  %call126 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.71, i32 0, i32 0), i8* %arraydecay121, i8* %arraydecay123, i8* %arraydecay125)
  %arrayidx127 = getelementptr inbounds [3 x [1024 x i8]], [3 x [1024 x i8]]* %buf, i32 0, i64 0
  %arraydecay128 = getelementptr inbounds [1024 x i8], [1024 x i8]* %arrayidx127, i32 0, i32 0
  %call129 = call double @g_ascii_strtod(i8* %arraydecay128, i8** null)
  %31 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %black = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %31, i32 0, i32 3
  %red_gain130 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %black, i32 0, i32 0
  store double %call129, double* %red_gain130, align 8
  %arrayidx131 = getelementptr inbounds [3 x [1024 x i8]], [3 x [1024 x i8]]* %buf, i32 0, i64 1
  %arraydecay132 = getelementptr inbounds [1024 x i8], [1024 x i8]* %arrayidx131, i32 0, i32 0
  %call133 = call double @g_ascii_strtod(i8* %arraydecay132, i8** null)
  %32 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %black134 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %32, i32 0, i32 3
  %green_gain135 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %black134, i32 0, i32 1
  store double %call133, double* %green_gain135, align 8
  %arrayidx136 = getelementptr inbounds [3 x [1024 x i8]], [3 x [1024 x i8]]* %buf, i32 0, i64 2
  %arraydecay137 = getelementptr inbounds [1024 x i8], [1024 x i8]* %arrayidx136, i32 0, i32 0
  %call138 = call double @g_ascii_strtod(i8* %arraydecay137, i8** null)
  %33 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %black139 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %33, i32 0, i32 3
  %blue_gain140 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %black139, i32 0, i32 2
  store double %call138, double* %blue_gain140, align 8
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call141 = call i32 @fclose(%struct._IO_FILE* %34)
  %35 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  call void @cm_update_ui(%struct.CmParamsType* %35)
  br label %if.end.147

if.else.142:                                      ; preds = %if.then
  %call143 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.72, i32 0, i32 0)) #4
  %36 = load i8*, i8** %filename, align 8
  %call144 = call i8* @gimp_filename_to_utf8(i8* %36)
  %call145 = call i32* @__errno_location() #8
  %37 = load i32, i32* %call145, align 4
  %call146 = call i8* @g_strerror(i32 %37) #8
  call void (i8*, ...) @g_message(i8* %call143, i8* %call144, i8* %call146)
  br label %if.end.147

if.end.147:                                       ; preds = %if.else.142, %if.end.59
  %38 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %38)
  br label %if.end.148

if.end.148:                                       ; preds = %if.end.147, %entry
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %39)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @gtk_true() #3

; Function Attrs: nounwind uwtable
define internal i8* @cm_settings_filename() #0 {
entry:
  %call = call i8* @gimp_directory() #8
  %call1 = call noalias i8* (i8*, ...) @g_build_filename(i8* %call, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.73, i32 0, i32 0), i8* null)
  ret i8* %call1
}

declare i32 @gtk_file_chooser_set_filename(%struct._GtkFileChooser*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_file_chooser_get_type() #3

declare void @gtk_window_present(%struct._GtkWindow*) #1

declare i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser*) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #7

declare double @g_ascii_strtod(i8*, i8**) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @cm_update_ui(%struct.CmParamsType* %mix) #0 {
entry:
  %mix.addr = alloca %struct.CmParamsType*, align 8
  store %struct.CmParamsType* %mix, %struct.CmParamsType** %mix.addr, align 8
  %0 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %monochrome_toggle = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %0, i32 0, i32 13
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %monochrome_toggle, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %4 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %monochrome = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %4, i32 0, i32 4
  %5 = load i32, i32* %monochrome, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %3, i32 %5)
  %6 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %preserve_luminosity_toggle = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %6, i32 0, i32 14
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %preserve_luminosity_toggle, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_toggle_button_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call2)
  %9 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkToggleButton*
  %10 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %preserve_luminosity = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %10, i32 0, i32 5
  %11 = load i32, i32* %preserve_luminosity, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %9, i32 %11)
  %12 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %combo = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %12, i32 0, i32 11
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_int_combo_box_get_type() #8
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call4)
  %15 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpIntComboBox*
  %16 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %output_channel = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %16, i32 0, i32 6
  %17 = load i32, i32* %output_channel, align 4
  %call6 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %15, i32 %17)
  %18 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  call void @cm_set_adjusters(%struct.CmParamsType* %18)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_preview_get_type() #8
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call7)
  %21 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpPreview*
  call void @gimp_preview_invalidate(%struct._GimpPreview* %21)
  ret void
}

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

declare i8* @gimp_filename_to_utf8(i8*) #1

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

declare void @gtk_widget_hide(%struct._GtkWidget*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

declare noalias i8* @g_build_filename(i8*, ...) #1

; Function Attrs: nounwind readnone
declare i8* @gimp_directory() #3

declare void @gtk_file_chooser_set_do_overwrite_confirmation(%struct._GtkFileChooser*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @cm_save_file_response_callback(%struct._GtkWidget* %dialog, i32 %response_id, %struct.CmParamsType* %mix) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %mix.addr = alloca %struct.CmParamsType*, align 8
  %filename = alloca i8*, align 8
  %file = alloca %struct._IO_FILE*, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct.CmParamsType* %mix, %struct.CmParamsType** %mix.addr, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %file, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp ne i32 %0, -5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %1)
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call i64 @gtk_file_chooser_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkFileChooser*
  %call2 = call i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser* %4)
  store i8* %call2, i8** %filename, align 8
  %5 = load i8*, i8** %filename, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %6 = load i8*, i8** %filename, align 8
  %call5 = call %struct._IO_FILE* @fopen(i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.75, i32 0, i32 0))
  store %struct._IO_FILE* %call5, %struct._IO_FILE** %file, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %tobool6 = icmp ne %struct._IO_FILE* %7, null
  br i1 %tobool6, label %if.end.12, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.76, i32 0, i32 0)) #4
  %8 = load i8*, i8** %filename, align 8
  %call9 = call i8* @gimp_filename_to_utf8(i8* %8)
  %call10 = call i32* @__errno_location() #8
  %9 = load i32, i32* %call10, align 4
  %call11 = call i8* @g_strerror(i32 %9) #8
  call void (i8*, ...) @g_message(i8* %call8, i8* %call9, i8* %call11)
  %10 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %10)
  br label %return

if.end.12:                                        ; preds = %if.end.4
  %11 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  call void @cm_save_file(%struct.CmParamsType* %11, %struct._IO_FILE* %12)
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.77, i32 0, i32 0)) #4
  %13 = load i8*, i8** %filename, align 8
  %call14 = call i8* @gimp_filename_to_utf8(i8* %13)
  call void (i8*, ...) @g_message(i8* %call13, i8* %call14)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %14)
  br label %return

return:                                           ; preds = %if.end.12, %if.then.7, %if.then.3, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cm_save_file(%struct.CmParamsType* %mix, %struct._IO_FILE* %fp) #0 {
entry:
  %mix.addr = alloca %struct.CmParamsType*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %str = alloca i8*, align 8
  %buf = alloca [3 x [39 x i8]], align 16
  store %struct.CmParamsType* %mix, %struct.CmParamsType** %mix.addr, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* null, i8** %str, align 8
  %0 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %output_channel = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %0, i32 0, i32 6
  %1 = load i32, i32* %output_channel, align 4
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i32 0, i32 0), i8** %str, align 8
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), i8** %str, align 8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0), i8** %str, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i32 0, i32 0), i32 1091, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.cm_save_file, i32 0, i32 0), i8* null) #9
  unreachable

do.end:                                           ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.2, %sw.bb.1, %sw.bb
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.78, i32 0, i32 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %4 = load i8*, i8** %str, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.79, i32 0, i32 0), i8* %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i32 0, i32 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %7 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %monochrome = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %7, i32 0, i32 4
  %8 = load i32, i32* %monochrome, align 4
  %tobool = icmp ne i32 %8, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.82, i32 0, i32 0)
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.81, i32 0, i32 0), i8* %cond)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %10 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %preserve_luminosity = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %10, i32 0, i32 5
  %11 = load i32, i32* %preserve_luminosity, align 4
  %tobool6 = icmp ne i32 %11, 0
  %cond7 = select i1 %tobool6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.82, i32 0, i32 0)
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.83, i32 0, i32 0), i8* %cond7)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arrayidx = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %buf, i32 0, i64 0
  %arraydecay = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx, i32 0, i32 0
  %13 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %red = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %13, i32 0, i32 0
  %red_gain = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %red, i32 0, i32 0
  %14 = load double, double* %red_gain, align 8
  %call9 = call i8* @g_ascii_formatd(i8* %arraydecay, i32 39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i32 0, i32 0), double %14)
  %arrayidx10 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %buf, i32 0, i64 1
  %arraydecay11 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx10, i32 0, i32 0
  %15 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %red12 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %15, i32 0, i32 0
  %green_gain = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %red12, i32 0, i32 1
  %16 = load double, double* %green_gain, align 8
  %call13 = call i8* @g_ascii_formatd(i8* %arraydecay11, i32 39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i32 0, i32 0), double %16)
  %arrayidx14 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %buf, i32 0, i64 2
  %arraydecay15 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx14, i32 0, i32 0
  %17 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %red16 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %17, i32 0, i32 0
  %blue_gain = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %red16, i32 0, i32 2
  %18 = load double, double* %blue_gain, align 8
  %call17 = call i8* @g_ascii_formatd(i8* %arraydecay15, i32 39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i32 0, i32 0), double %18)
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.84, i32 0, i32 0), i8* %call9, i8* %call13, i8* %call17)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arrayidx19 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %buf, i32 0, i64 0
  %arraydecay20 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx19, i32 0, i32 0
  %20 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %green = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %20, i32 0, i32 1
  %red_gain21 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %green, i32 0, i32 0
  %21 = load double, double* %red_gain21, align 8
  %call22 = call i8* @g_ascii_formatd(i8* %arraydecay20, i32 39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i32 0, i32 0), double %21)
  %arrayidx23 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %buf, i32 0, i64 1
  %arraydecay24 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx23, i32 0, i32 0
  %22 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %green25 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %22, i32 0, i32 1
  %green_gain26 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %green25, i32 0, i32 1
  %23 = load double, double* %green_gain26, align 8
  %call27 = call i8* @g_ascii_formatd(i8* %arraydecay24, i32 39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i32 0, i32 0), double %23)
  %arrayidx28 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %buf, i32 0, i64 2
  %arraydecay29 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx28, i32 0, i32 0
  %24 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %green30 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %24, i32 0, i32 1
  %blue_gain31 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %green30, i32 0, i32 2
  %25 = load double, double* %blue_gain31, align 8
  %call32 = call i8* @g_ascii_formatd(i8* %arraydecay29, i32 39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i32 0, i32 0), double %25)
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.86, i32 0, i32 0), i8* %call22, i8* %call27, i8* %call32)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arrayidx34 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %buf, i32 0, i64 0
  %arraydecay35 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx34, i32 0, i32 0
  %27 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %blue = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %27, i32 0, i32 2
  %red_gain36 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %blue, i32 0, i32 0
  %28 = load double, double* %red_gain36, align 8
  %call37 = call i8* @g_ascii_formatd(i8* %arraydecay35, i32 39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i32 0, i32 0), double %28)
  %arrayidx38 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %buf, i32 0, i64 1
  %arraydecay39 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx38, i32 0, i32 0
  %29 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %blue40 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %29, i32 0, i32 2
  %green_gain41 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %blue40, i32 0, i32 1
  %30 = load double, double* %green_gain41, align 8
  %call42 = call i8* @g_ascii_formatd(i8* %arraydecay39, i32 39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i32 0, i32 0), double %30)
  %arrayidx43 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %buf, i32 0, i64 2
  %arraydecay44 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx43, i32 0, i32 0
  %31 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %blue45 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %31, i32 0, i32 2
  %blue_gain46 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %blue45, i32 0, i32 2
  %32 = load double, double* %blue_gain46, align 8
  %call47 = call i8* @g_ascii_formatd(i8* %arraydecay44, i32 39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i32 0, i32 0), double %32)
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.87, i32 0, i32 0), i8* %call37, i8* %call42, i8* %call47)
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arrayidx49 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %buf, i32 0, i64 0
  %arraydecay50 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx49, i32 0, i32 0
  %34 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %black = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %34, i32 0, i32 3
  %red_gain51 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %black, i32 0, i32 0
  %35 = load double, double* %red_gain51, align 8
  %call52 = call i8* @g_ascii_formatd(i8* %arraydecay50, i32 39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i32 0, i32 0), double %35)
  %arrayidx53 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %buf, i32 0, i64 1
  %arraydecay54 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx53, i32 0, i32 0
  %36 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %black55 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %36, i32 0, i32 3
  %green_gain56 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %black55, i32 0, i32 1
  %37 = load double, double* %green_gain56, align 8
  %call57 = call i8* @g_ascii_formatd(i8* %arraydecay54, i32 39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i32 0, i32 0), double %37)
  %arrayidx58 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %buf, i32 0, i64 2
  %arraydecay59 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx58, i32 0, i32 0
  %38 = load %struct.CmParamsType*, %struct.CmParamsType** %mix.addr, align 8
  %black60 = getelementptr inbounds %struct.CmParamsType, %struct.CmParamsType* %38, i32 0, i32 3
  %blue_gain61 = getelementptr inbounds %struct.CmChannelType, %struct.CmChannelType* %black60, i32 0, i32 2
  %39 = load double, double* %blue_gain61, align 8
  %call62 = call i8* @g_ascii_formatd(i8* %arraydecay59, i32 39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i32 0, i32 0), double %39)
  %call63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.88, i32 0, i32 0), i8* %call52, i8* %call57, i8* %call62)
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call64 = call i32 @fclose(%struct._IO_FILE* %40)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i8* @g_ascii_formatd(i8*, i32, i8*, double) #1

declare i32 @gimp_drawable_mask_intersect(i32, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare i8* @gimp_pixel_rgns_register(i32, ...) #1

declare i32 @gimp_progress_update(double) #1

declare i8* @gimp_pixel_rgns_process(i8*) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone }
attributes #9 = { noreturn }
attributes #10 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
