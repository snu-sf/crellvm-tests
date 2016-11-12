; ModuleID = './plug-ins/common/screenshot.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.ScreenshotValues = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GdkGC = type { %struct._GObject, i32, i32, i32, i32, %struct._GdkColormap* }
%struct._GdkColormap = type { %struct._GObject, i32, %struct._GdkColor*, %struct._GdkVisual*, i8* }
%struct._GdkColor = type { i32, i16, i16, i16 }
%struct._GdkVisual = type { %struct._GObject, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._cairo_font_options = type opaque
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GtkStyle = type { %struct._GObject, [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], %struct._GdkColor, %struct._GdkColor, %struct._PangoFontDescription*, i32, i32, [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], %struct._GdkGC*, %struct._GdkGC*, [5 x %struct._GdkDrawable*], i32, i32, %struct._GdkColormap*, %struct._GdkFont*, %struct._PangoFontDescription*, %struct._GtkRcStyle*, %struct._GSList*, %struct._GArray*, %struct._GSList* }
%struct._GdkFont = type opaque
%struct._PangoFontDescription = type opaque
%struct._GtkRcStyle = type { %struct._GObject, i8*, [5 x i8*], %struct._PangoFontDescription*, [5 x i32], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], i32, i32, %struct._GArray*, %struct._GSList*, %struct._GSList*, i8 }
%struct._GArray = type { i8*, i32 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GdkPixbuf = type opaque
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GError = type { i32, i32, i8* }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkNotebook = type { %struct._GtkContainer, i8*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GtkWidget*, %struct._GdkDrawable*, i32, i16, i16, i24 }
%struct._GtkRadioButton = type { %struct._GtkCheckButton, %struct._GSList* }
%struct._GtkCheckButton = type { %struct._GtkToggleButton }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GBinding = type opaque
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._XDisplay = type opaque
%struct._XGC = type opaque
%struct._GdkKeymap = type { %struct._GObject, %struct._GdkDisplay* }
%struct._GdkDisplay = type { %struct._GObject, %struct._GList*, %struct._GList*, [2 x i32], [2 x %struct._GdkDrawable*], [2 x i32], i32, %struct._GdkDevice*, %struct._GdkDisplayPointerHooks*, i8, i32, [2 x i32], [2 x i32], %struct._GList*, %struct.GdkKeyboardGrabInfo, %struct.GdkPointerWindowInfo, i32 }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GdkDisplayPointerHooks = type { void (%struct._GdkDisplay*, %struct._GdkScreen**, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, %struct._GdkDrawable*, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, i32*, i32*)* }
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }
%struct._GdkKeymapKey = type { i32, i32, i32 }
%struct.XGCValues = type { i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i64, i32, i32, i32, i32, i64, i32, i8 }
%union._XEvent = type { [24 x i64] }
%struct.anon = type { %struct._XExtData*, %struct._XPrivate*, i32, i32, i32, i32, i8*, i64, i64, i64, i32, i64 (%struct._XDisplay*)*, i32, i32, i32, i32, i32, %struct.ScreenFormat*, i32, i32, %struct._XPrivate*, %struct._XPrivate*, i32, i64, i64, i8*, i8*, i8*, i8*, i32, %struct._XrmHashBucketRec*, i32 (%struct._XDisplay*)*, i8*, i32, i32, %struct.Screen*, i64, i64, i32, i32, i8*, i8*, i32, i8* }
%struct._XExtData = type { i32, %struct._XExtData*, i32 (%struct._XExtData*)*, i8* }
%struct.ScreenFormat = type { %struct._XExtData*, i32, i32, i32 }
%struct._XPrivate = type opaque
%struct._XrmHashBucketRec = type opaque
%struct.Screen = type { %struct._XExtData*, %struct._XDisplay*, i64, i32, i32, i32, i32, i32, %struct.Depth*, i32, %struct.Visual*, %struct._XGC*, i64, i64, i64, i32, i32, i32, i32, i64 }
%struct.Depth = type { i32, i32, %struct.Visual* }
%struct.Visual = type { %struct._XExtData*, i64, i32, i64, i64, i64, i32, i32 }
%struct.XButtonEvent = type { i32, i64, i32, %struct._XDisplay*, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.XMotionEvent = type { i32, i64, i32, %struct._XDisplay*, i64, i64, i64, i64, i32, i32, i32, i32, i32, i8, i32 }
%struct.XKeyEvent = type { i32, i64, i32, %struct._XDisplay*, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._cairo_surface = type opaque
%struct._cairo_region = type opaque
%struct._cairo = type opaque
%struct.XRectangle = type { i16, i16, i16, i16 }
%struct._cairo_rectangle_int = type { i32, i32, i32, i32 }
%struct._GimpParasite = type { i8*, i32, i32, i8* }
%struct.XFixesCursorImage = type { i16, i16, i16, i16, i16, i16, i64, i64*, i64, i8* }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [7 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Root window { TRUE, FALSE }\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"window-id\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Window id\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"x1\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"(optional) Region left x coord\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"y1\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"(optional) Region top y coord\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"x2\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"(optional) Region right x coord\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"y2\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"(optional) Region bottom y coord\00", align 1
@query.return_vals = internal constant [1 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0) }], align 16
@.str.14 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"Output image\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"plug-in-screenshot\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"Create an image from an area of the screen\00", align 1
@.str.18 = private unnamed_addr constant [366 x i8] c"The plug-in allows to take screenshots of an interactively selected window or of the desktop, either the whole desktop or an interactively selected region. When called non-interactively, it may grab the root window or use the window-id passed as a parameter.  The last four parameters are optional and can be used to specify the corners of the region to be grabbed.\00", align 1
@.str.19 = private unnamed_addr constant [88 x i8] c"Sven Neumann <sven@gimp.org>, Henrik Brix Andersen <brix@gimp.org>,Simone Karin Lehmann\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"1998 - 2008\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"v1.1 (2008/04)\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"_Screenshot...\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"<Image>/File/Create/Acquire\00", align 1
@screenshot_icon = internal constant [1607 x i8] c"GdkP\00\00\06F\02\01\00\02\00\00\00X\00\00\00\16\00\00\00\16\8B\00\00\00\00\01\A2\A2\A2\05\83\A2\A2\A2\19\91\00\00\00\00\02\17\17\16D   \FA\83)))\FD\02\1A\1A\1A\F2\16\16\150\8F\00\00\00\00\02\02\02\02\D2\C7\C8\C7\FF\83\FF\FF\FF\FF\02\B3\B3\B2\F3\00\00\00\CC\8F\00\00\00\00\02\06\06\06\DC\86\87\85\FF\82\AA\AB\A9\FF\03\AA\AA\A9\FFghe\FE\01\01\01\D0\8F\00\00\00\00\02\09\09\09\E6./-\E5\82GHE\15\03JKH\1A01/\F4\05\05\05\DB\8A\00\00\00\00\0F\16\16\15\19\16\16\150\16\16\15g\00\00\00\CC+,+\D9LMK\FDEFD\F2ffe\E7iig\E6lmk\E6RSQ\F2\0B\0B\0B\F0\00\00\00\CC\02\02\02\D1\16\16\15V\83\00\00\00\00#\16\16\15\19\16\16\150\16\16\15n\03\03\03\D9\02\02\02\DAJJI\ED\8D\8D\8D\FA\A6\A6\A6\E7\B7\B8\B6\F2\7F\82~\FFBC?\FFTUR\FF\5C]Y\FFgid\FF[]X\FF\84\86\84\FCwxw\BE\94\95\94\CCLLK\E3\16\16\15D\00\00\00\00\16\16\15D\03\03\03\E1\0F\0F\0F\FBghg\FF\9F\A0\9E\FF\BB\BC\BA\FF\C2\C3\C0\FF\BA\BB\B8\FF\80\81\7F\FFzzz\FFtws\FF\90\93\8F\FF\91\95\91\FF\94\97\93\FF\82\96\9A\96\FFK\7F\82}\FFxyu\FF\8F\91\8D\FF\96\97\96\F5\00\00\00\F9\00\00\00\00\02\02\02\D8\AF\B1\AF\FF\BD\BE\BB\FF\B2\B3\B0\FFUWT\FFQSP\FFsuq\FF]^[\FF\C4\C4\C4\FF\C3\C3\C3\FFkmi\FFMNJ\FFWZX\FF[`_\FFaeb\FFgid\FF}\80{\FFSUQ\FFFGE\FF\80\81\80\FF\0A\0A\0A\EF\00\00\00\00\04\04\04\E5xyv\FF\A1\A2\9E\FF\88\8A\85\FFvxt\FF\90\92\8F\FFGIF\FF+,)\FF```\FFjji\FFUXV\FFy\84\88\FF\83\8D\90\FF~\84\87\FFflo\FFPW\5C\FFSWU\FFJLI\FF452\FFtut\FF\0A\0A\0A\EF\00\00\00\00\04\04\04\E4opm\FF\91\93\8F\FF}\7F{\FF\8D\8F\8B\FF`b_\FF()'\FF*+)\FF785\FFVXV\FFu~\82\FFnsu\FFVYZ\FFOST\FFOQS\FFJOP\FF^cd\FF698\FF!\22!\FFllk\FF\0A\0A\0A\EF\00\00\00\00\03\03\03\E5npl\FF\90\91\8E\FF\82UWS\FF\14GIF\FF !\1F\FF*+)\FF9:7\FF^ce\FFNRT\FFUXY\FF(,.\FF\12\14\15\FF!$&\FFILM\FF8=?\FFRVX\FF''&\FFklk\FF\0A\0A\0A\EF\00\00\00\01\03\03\03\E5nol\FF\90\91\8E\FF\82UWS\FF\14GIF\FF !\1F\FF*+)\FF8:8\FFTXY\FF289\FF\13\15\16\FF\0E\0E\0E\FF\01\01\01\FF\02\02\02\FF\14\15\15\FF.34\FF289\FF011\FFaa`\FF\09\09\09\F0\00\00\00\03\03\03\03\E5nol\FF\84\85\82\FF\82UWS\FF\14GIF\FF !\1F\FF*+)\FF?BA\FF28:\FF\1C !\FF\19\1A\1A\FF\FF\FF\FF\FFhhh\FF   \FF\12\12\12\FF.00\FF.46\FF:>?\FF`a`\FF\09\09\08\F1\00\00\00\07\03\03\03\E5mok\FFz{x\FF\82UWS\FF\14GIF\FF !\1F\FF*+)\FFHJI\FF.46\FF\15\17\18\FF   \FFhhh\FF\9A\9A\9A\FF}}}\FF'''\FF9;;\FF/57\FF599\FF``_\FF\09\09\08\F2\00\00\00\0D\03\03\03\E5lnk\FFrsp\FF\82UWS\FF\14GIF\FF !\1F\FF,-*\FF>@>\FF.46\FF\1D\1F \FF\01\01\01\FF888\FF\8C\8C\8C\FF\8B\8B\8B\FFAAA\FFJKK\FF/57\FF6:;\FFWXV\FF\06\06\06\F4\00\00\00\11\00\00\00\F9\81\82\7F\FFmok\FF\82UWS\FFiGIF\FFMNM\FFRRR\FAghg\F4[`b\FF+/0\FF\0F\0F\0F\FF\22\22\22\FF'''\FFHHH\FF\B3\B3\B3\FFSUU\FFW\5C^\FFCFF\FC<<<\FE\10\10\0F\CF\00\00\00\10\14\14\13]\04\04\04\EB\7F\7F~\FD|}z\FB}~|\FChih\FE9:9\F9\00\00\00\E7\00\00\00\E9\07\07\07\F7.46\FF256\FF   \FF(((\FF:::\FF`ab\FF9>?\FF\09\0B\0B\FE\00\00\00\EB\00\00\00\C0\0C\0C\0BH\00\00\00\0D\00\00\00\04\13\13\12L\00\00\00\DA\00\00\00\E1\00\00\00\E6\00\00\00\E1\0C\0C\0B{\00\00\00V\00\00\00a\00\00\00l\08\09\09\F9\5C^_\FFLOP\FFILL\FFLOQ\FFQUV\FF\0E\0F\0F\FF\1C\1F \A4\00\00\00`\00\00\004\00\00\00\17\00\00\00\07\00\00\00\01\00\00\00\03\00\00\00\08\00\00\00\11\00\00\00\1C\00\00\00'\00\00\000\00\00\006\00\00\00=\00\00\00A\00\00\00F\04\05\05\ED\0A\0B\0B\F9\0F\10\10\FE\0D\0E\0E\FD\08\08\09\F5\07\08\09j\00\00\00G\00\00\00-\00\00\00\18\00\00\00\0B\00\00\00\04\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\04\00\00\00\09\00\00\00\0E\00\00\00\13\00\00\00\19\00\00\00\1D\00\00\00!\00\00\00#\00\00\00$\00\00\00%\00\00\00$\00\00\00&\00\00\00%\00\00\00\1E\00\00\00\17\00\00\00\10\00\00\00\08\00\00\00\03\00\00\00\01\84\00\00\00\00\05\00\00\00\01\00\00\00\02\00\00\00\04\00\00\00\05\00\00\00\06\82\00\00\00\08\09\00\00\00\09\00\00\00\07\00\00\00\08\00\00\00\05\00\00\00\07\00\00\00\06\00\00\00\05\00\00\00\03\00\00\00\01\82\00\00\00\00\00", align 4
@run.values = internal global [2 x %struct._GimpParam] zeroinitializer, align 16
@.str.24 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@shootvals = internal global %struct.ScreenshotValues { i32 2, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.26 = private unnamed_addr constant [11 x i8] c"screenshot\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"Screenshot\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"gimp-screenshot\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"S_nap\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"show-border\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"show-tabs\00", align 1
@.str.33 = private unnamed_addr constant [42 x i8] c"After the delay, the screenshot is taken.\00", align 1
@.str.34 = private unnamed_addr constant [74 x i8] c"After the delay, drag your mouse to select the region for the screenshot.\00", align 1
@.str.35 = private unnamed_addr constant [55 x i8] c"At the end of the delay, click in a window to snap it.\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"Area\00", align 1
@.str.37 = private unnamed_addr constant [38 x i8] c"Take a screenshot of a single _window\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"gimp-item-data\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.40 = private unnamed_addr constant [40 x i8] c"Take a screenshot of the entire _screen\00", align 1
@.str.41 = private unnamed_addr constant [23 x i8] c"Include _mouse pointer\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"sensitive\00", align 1
@.str.44 = private unnamed_addr constant [25 x i8] c"Select a _region to grab\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"Delay\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"seconds\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"wrap\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"justify\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"xalign\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"yalign\00", align 1
@.str.53 = private unnamed_addr constant [27 x i8] c"Error selecting the window\00", align 1
@.str.54 = private unnamed_addr constant [27 x i8] c"Specified window not found\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"_NET_WM_NAME\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"UTF8_STRING\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c"Importing screenshot\00", align 1
@.str.58 = private unnamed_addr constant [13 x i8] c"gimp-comment\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"Mouse Pointer\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([366 x i8], [366 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), i8* null, i32 1, i32 7, i32 1, %struct._GimpParamDef* getelementptr inbounds ([7 x %struct._GimpParamDef], [7 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* getelementptr inbounds ([1 x %struct._GimpParamDef], [1 x %struct._GimpParamDef]* @query.return_vals, i32 0, i32 0))
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i32 0, i32 0))
  %call1 = call i32 @gimp_plugin_icon_register(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([1607 x i8], [1607 x i8]* @screenshot_icon, i32 0, i32 0))
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
  %screen = alloca %struct._GdkScreen*, align 8
  %image_ID = alloca i32, align 4
  %do_root = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  %0 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_int32, align 4
  store i32 %1, i32* %run_mode, align 4
  store i32 3, i32* %status, align 4
  store %struct._GdkScreen* null, %struct._GdkScreen** %screen, align 8
  store i32 21, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %2 = load i32, i32* %status, align 4
  store i32 %2, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %3 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %3, align 4
  %4 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %4, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #6
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0), i8* %call) #4
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0)) #4
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0)) #4
  br label %do.end

do.end:                                           ; preds = %do.body
  %5 = load i32, i32* %run_mode, align 4
  switch i32 %5, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.6
    i32 2, label %sw.bb.39
  ]

sw.bb:                                            ; preds = %do.end
  %call4 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0), i8* bitcast (%struct.ScreenshotValues* @shootvals to i8*))
  store i32 0, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 2), align 4
  %call5 = call i32 @shoot_dialog(%struct._GdkScreen** %screen)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  store i32 4, i32* %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog

sw.bb.6:                                          ; preds = %do.end
  %6 = load i32, i32* %nparams.addr, align 4
  %cmp = icmp eq i32 %6, 3
  br i1 %cmp, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %sw.bb.6
  %7 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx8 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %7, i64 1
  %data9 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx8, i32 0, i32 1
  %d_int3210 = bitcast %union._GimpParamData* %data9 to i32*
  %8 = load i32, i32* %d_int3210, align 4
  store i32 %8, i32* %do_root, align 4
  %9 = load i32, i32* %do_root, align 4
  %tobool11 = icmp ne i32 %9, 0
  %cond = select i1 %tobool11, i32 0, i32 2
  store i32 %cond, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 0), align 4
  %10 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx12 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %10, i64 2
  %data13 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx12, i32 0, i32 1
  %d_int3214 = bitcast %union._GimpParamData* %data13 to i32*
  %11 = load i32, i32* %d_int3214, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 2), align 4
  store i32 0, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 3), align 4
  br label %if.end.34

if.else:                                          ; preds = %sw.bb.6
  %12 = load i32, i32* %nparams.addr, align 4
  %cmp15 = icmp eq i32 %12, 7
  br i1 %cmp15, label %if.then.16, label %if.else.32

if.then.16:                                       ; preds = %if.else
  store i32 1, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 0), align 4
  %13 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %13, i64 2
  %data18 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx17, i32 0, i32 1
  %d_int3219 = bitcast %union._GimpParamData* %data18 to i32*
  %14 = load i32, i32* %d_int3219, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 2), align 4
  store i32 0, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 3), align 4
  %15 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx20 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %15, i64 3
  %data21 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx20, i32 0, i32 1
  %d_int3222 = bitcast %union._GimpParamData* %data21 to i32*
  %16 = load i32, i32* %d_int3222, align 4
  store i32 %16, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 4), align 4
  %17 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx23 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %17, i64 4
  %data24 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx23, i32 0, i32 1
  %d_int3225 = bitcast %union._GimpParamData* %data24 to i32*
  %18 = load i32, i32* %d_int3225, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 5), align 4
  %19 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx26 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %19, i64 5
  %data27 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx26, i32 0, i32 1
  %d_int3228 = bitcast %union._GimpParamData* %data27 to i32*
  %20 = load i32, i32* %d_int3228, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 6), align 4
  %21 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx29 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %21, i64 6
  %data30 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx29, i32 0, i32 1
  %d_int3231 = bitcast %union._GimpParamData* %data30 to i32*
  %22 = load i32, i32* %d_int3231, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 7), align 4
  br label %if.end.33

if.else.32:                                       ; preds = %if.else
  store i32 1, i32* %status, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.32, %if.then.16
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.7
  %call35 = call i32 @gdk_init_check(i32* null, i8*** null)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.end.38, label %if.then.37

if.then.37:                                       ; preds = %if.end.34
  store i32 1, i32* %status, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.end.34
  br label %sw.epilog

sw.bb.39:                                         ; preds = %do.end
  %call40 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0), i8* bitcast (%struct.ScreenshotValues* @shootvals to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.39, %if.end.38, %if.end
  %23 = load i32, i32* %status, align 4
  %cmp41 = icmp eq i32 %23, 3
  br i1 %cmp41, label %if.then.42, label %if.end.54

if.then.42:                                       ; preds = %sw.epilog
  %24 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 3), align 4
  %cmp43 = icmp ugt i32 %24, 0
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.then.42
  %25 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 3), align 4
  call void @shoot_delay(i32 %25)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %if.then.42
  %26 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 0), align 4
  %cmp46 = icmp ne i32 %26, 0
  br i1 %cmp46, label %land.lhs.true, label %if.end.53

land.lhs.true:                                    ; preds = %if.end.45
  %27 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 2), align 4
  %tobool47 = icmp ne i32 %27, 0
  br i1 %tobool47, label %if.end.53, label %if.then.48

if.then.48:                                       ; preds = %land.lhs.true
  %28 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %call49 = call i32 @select_window(%struct._GdkScreen* %28)
  store i32 %call49, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 2), align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 2), align 4
  %tobool50 = icmp ne i32 %29, 0
  br i1 %tobool50, label %if.end.52, label %if.then.51

if.then.51:                                       ; preds = %if.then.48
  store i32 4, i32* %status, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %if.then.48
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %land.lhs.true, %if.end.45
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %sw.epilog
  %30 = load i32, i32* %status, align 4
  %cmp55 = icmp eq i32 %30, 3
  br i1 %cmp55, label %if.then.56, label %if.end.61

if.then.56:                                       ; preds = %if.end.54
  %31 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %call57 = call i32 @shoot(%struct._GdkScreen* %31)
  store i32 %call57, i32* %image_ID, align 4
  %32 = load i32, i32* %image_ID, align 4
  %cmp58 = icmp eq i32 %32, -1
  br i1 %cmp58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.then.56
  store i32 0, i32* %status, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.59, %if.then.56
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.end.54
  %33 = load i32, i32* %status, align 4
  %cmp62 = icmp eq i32 %33, 3
  br i1 %cmp62, label %if.then.63, label %if.end.69

if.then.63:                                       ; preds = %if.end.61
  %34 = load i32, i32* %run_mode, align 4
  %cmp64 = icmp eq i32 %34, 0
  br i1 %cmp64, label %if.then.65, label %if.end.68

if.then.65:                                       ; preds = %if.then.63
  %call66 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0), i8* bitcast (%struct.ScreenshotValues* @shootvals to i8*), i32 36)
  %35 = load i32, i32* %image_ID, align 4
  %call67 = call i32 @gimp_display_new(i32 %35)
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.65, %if.then.63
  %36 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %36, align 4
  store i32 13, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %37 = load i32, i32* %image_ID, align 4
  store i32 %37, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i32*), align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.end.61
  %38 = load i32, i32* %status, align 4
  store i32 %38, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
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

declare i32 @gimp_plugin_icon_register(i8*, i32, i8*) #1

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) #2

; Function Attrs: nounwind readnone
declare i8* @gimp_locale_directory() #3

; Function Attrs: nounwind
declare i8* @bind_textdomain_codeset(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) #2

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @shoot_dialog(%struct._GdkScreen** %screen) #0 {
entry:
  %screen.addr = alloca %struct._GdkScreen**, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %notebook = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  %spinner = alloca %struct._GtkWidget*, align 8
  %pixbuf = alloca %struct._GdkPixbuf*, align 8
  %radio_group = alloca %struct._GSList*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %run = alloca i32, align 4
  store %struct._GdkScreen** %screen, %struct._GdkScreen*** %screen.addr, align 8
  store %struct._GSList* null, %struct._GSList** %radio_group, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i32 0)
  %call = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), i32 -6, i8* null)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %dialog, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_dialog_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call2)
  %2 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkDialog*
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0)) #4
  %call5 = call %struct._GtkWidget* @gtk_dialog_add_button(%struct._GtkDialog* %2, i8* %call4, i32 -5)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %button, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_dialog_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call6)
  %5 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %5, i32 -5, i32 -6, i32 -1)
  %call8 = call %struct._GdkPixbuf* @gdk_pixbuf_new_from_inline(i32 -1, i8* getelementptr inbounds ([1607 x i8], [1607 x i8]* @screenshot_icon, i32 0, i32 0), i32 0, %struct._GError** null)
  store %struct._GdkPixbuf* %call8, %struct._GdkPixbuf** %pixbuf, align 8
  %6 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %tobool = icmp ne %struct._GdkPixbuf* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_button_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call9)
  %9 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkButton*
  %10 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %call11 = call %struct._GtkWidget* @gtk_image_new_from_pixbuf(%struct._GdkPixbuf* %10)
  call void @gtk_button_set_image(%struct._GtkButton* %9, %struct._GtkWidget* %call11)
  %11 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %12 = bitcast %struct._GdkPixbuf* %11 to i8*
  call void @g_object_unref(i8* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call12 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call12, %struct._GtkWidget** %main_vbox, align 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_container_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call13)
  %15 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %15, i32 12)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_dialog_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call15)
  %18 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkDialog*
  %call17 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %18)
  %19 = bitcast %struct._GtkWidget* %call17 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_box_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call18)
  %20 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkBox*
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %20, %struct._GtkWidget* %21, i32 0, i32 0, i32 0)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %22)
  %call20 = call i64 @gtk_notebook_get_type() #6
  %call21 = call i8* (i64, i8*, ...) @g_object_new(i64 %call20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i32 0, i8* null)
  %23 = bitcast i8* %call21 to %struct._GtkWidget*
  store %struct._GtkWidget* %23, %struct._GtkWidget** %notebook, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_box_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call22)
  %26 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkBox*
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %26, %struct._GtkWidget* %27, i32 0, i32 0, i32 0)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %28)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_notebook_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call24)
  %31 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkNotebook*
  %call26 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.33, i32 0, i32 0)) #4
  call void @shoot_dialog_add_hint(%struct._GtkNotebook* %31, i32 0, i8* %call26)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_notebook_get_type() #6
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call27)
  %34 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkNotebook*
  %call29 = call i8* @gettext(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.34, i32 0, i32 0)) #4
  call void @shoot_dialog_add_hint(%struct._GtkNotebook* %34, i32 1, i8* %call29)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_notebook_get_type() #6
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call30)
  %37 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkNotebook*
  %call32 = call i8* @gettext(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.35, i32 0, i32 0)) #4
  call void @shoot_dialog_add_hint(%struct._GtkNotebook* %37, i32 2, i8* %call32)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_notebook_get_type() #6
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call33)
  %40 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkNotebook*
  %41 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 0), align 4
  call void @gtk_notebook_set_current_page(%struct._GtkNotebook* %40, i32 %41)
  %call35 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0)) #4
  %call36 = call %struct._GtkWidget* @gimp_frame_new(i8* %call35)
  store %struct._GtkWidget* %call36, %struct._GtkWidget** %frame, align 8
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_box_get_type() #6
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call37)
  %44 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkBox*
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %44, %struct._GtkWidget* %45, i32 0, i32 0, i32 0)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %46)
  %call39 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call39, %struct._GtkWidget** %vbox, align 8
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %48 = bitcast %struct._GtkWidget* %47 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_container_get_type() #6
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call40)
  %49 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkContainer*
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %49, %struct._GtkWidget* %50)
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %51)
  %52 = load %struct._GSList*, %struct._GSList** %radio_group, align 8
  %call42 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.37, i32 0, i32 0)) #4
  %call43 = call %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic(%struct._GSList* %52, i8* %call42)
  store %struct._GtkWidget* %call43, %struct._GtkWidget** %button, align 8
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %54 = bitcast %struct._GtkWidget* %53 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_radio_button_get_type() #6
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call44)
  %55 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkRadioButton*
  %call46 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %55)
  store %struct._GSList* %call46, %struct._GSList** %radio_group, align 8
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %57 = bitcast %struct._GtkWidget* %56 to %struct._GTypeInstance*
  %call47 = call i64 @gtk_box_get_type() #6
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call47)
  %58 = bitcast %struct._GTypeInstance* %call48 to %struct._GtkBox*
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %58, %struct._GtkWidget* %59, i32 0, i32 0, i32 0)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %60)
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %62 = bitcast %struct._GtkWidget* %61 to %struct._GTypeInstance*
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 80)
  %63 = bitcast %struct._GTypeInstance* %call49 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %63, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0), i8* inttoptr (i64 2 to i8*))
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %65 = bitcast %struct._GtkWidget* %64 to i8*
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %67 = bitcast %struct._GtkWidget* %66 to i8*
  %call50 = call i64 @g_signal_connect_data(i8* %65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget*)* @shoot_radio_button_toggled to void ()*), i8* %67, void (i8*, %struct._GClosure*)* null, i32 0)
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %69 = bitcast %struct._GtkWidget* %68 to %struct._GTypeInstance*
  %call51 = call i64 @gtk_toggle_button_get_type() #6
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call51)
  %70 = bitcast %struct._GTypeInstance* %call52 to %struct._GtkToggleButton*
  %71 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 0), align 4
  %cmp = icmp eq i32 %71, 2
  %conv = zext i1 %cmp to i32
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %70, i32 %conv)
  %72 = load %struct._GSList*, %struct._GSList** %radio_group, align 8
  %call53 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.40, i32 0, i32 0)) #4
  %call54 = call %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic(%struct._GSList* %72, i8* %call53)
  store %struct._GtkWidget* %call54, %struct._GtkWidget** %button, align 8
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %74 = bitcast %struct._GtkWidget* %73 to %struct._GTypeInstance*
  %call55 = call i64 @gtk_radio_button_get_type() #6
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call55)
  %75 = bitcast %struct._GTypeInstance* %call56 to %struct._GtkRadioButton*
  %call57 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %75)
  store %struct._GSList* %call57, %struct._GSList** %radio_group, align 8
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %77 = bitcast %struct._GtkWidget* %76 to %struct._GTypeInstance*
  %call58 = call i64 @gtk_box_get_type() #6
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call58)
  %78 = bitcast %struct._GTypeInstance* %call59 to %struct._GtkBox*
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %78, %struct._GtkWidget* %79, i32 0, i32 0, i32 0)
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %80)
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %82 = bitcast %struct._GtkWidget* %81 to %struct._GTypeInstance*
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %82, i64 80)
  %83 = bitcast %struct._GTypeInstance* %call60 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %83, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0), i8* null)
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %85 = bitcast %struct._GtkWidget* %84 to i8*
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %87 = bitcast %struct._GtkWidget* %86 to i8*
  %call61 = call i64 @g_signal_connect_data(i8* %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget*)* @shoot_radio_button_toggled to void ()*), i8* %87, void (i8*, %struct._GClosure*)* null, i32 0)
  %call62 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call62, %struct._GtkWidget** %hbox, align 8
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %89 = bitcast %struct._GtkWidget* %88 to %struct._GTypeInstance*
  %call63 = call i64 @gtk_box_get_type() #6
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %89, i64 %call63)
  %90 = bitcast %struct._GTypeInstance* %call64 to %struct._GtkBox*
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %90, %struct._GtkWidget* %91, i32 0, i32 0, i32 0)
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %92)
  %call65 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.41, i32 0, i32 0)) #4
  %call66 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call65)
  store %struct._GtkWidget* %call66, %struct._GtkWidget** %toggle, align 8
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %94 = bitcast %struct._GtkWidget* %93 to %struct._GTypeInstance*
  %call67 = call i64 @gtk_toggle_button_get_type() #6
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %94, i64 %call67)
  %95 = bitcast %struct._GTypeInstance* %call68 to %struct._GtkToggleButton*
  %96 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 8), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %95, i32 %96)
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %98 = bitcast %struct._GtkWidget* %97 to %struct._GTypeInstance*
  %call69 = call i64 @gtk_box_get_type() #6
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %98, i64 %call69)
  %99 = bitcast %struct._GTypeInstance* %call70 to %struct._GtkBox*
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %99, %struct._GtkWidget* %100, i32 1, i32 1, i32 24)
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %101)
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %103 = bitcast %struct._GtkWidget* %102 to i8*
  %call71 = call i64 @g_signal_connect_data(i8* %103, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 8) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %105 = bitcast %struct._GtkWidget* %104 to i8*
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %107 = bitcast %struct._GtkWidget* %106 to i8*
  %call72 = call %struct._GBinding* @g_object_bind_property(i8* %105, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i8* %107, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i32 2)
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %109 = bitcast %struct._GtkWidget* %108 to %struct._GTypeInstance*
  %call73 = call i64 @gtk_toggle_button_get_type() #6
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %109, i64 %call73)
  %110 = bitcast %struct._GTypeInstance* %call74 to %struct._GtkToggleButton*
  %111 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 0), align 4
  %cmp75 = icmp eq i32 %111, 0
  %conv76 = zext i1 %cmp75 to i32
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %110, i32 %conv76)
  %112 = load %struct._GSList*, %struct._GSList** %radio_group, align 8
  %call77 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.44, i32 0, i32 0)) #4
  %call78 = call %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic(%struct._GSList* %112, i8* %call77)
  store %struct._GtkWidget* %call78, %struct._GtkWidget** %button, align 8
  %113 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %114 = bitcast %struct._GtkWidget* %113 to %struct._GTypeInstance*
  %call79 = call i64 @gtk_radio_button_get_type() #6
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %114, i64 %call79)
  %115 = bitcast %struct._GTypeInstance* %call80 to %struct._GtkRadioButton*
  %call81 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %115)
  store %struct._GSList* %call81, %struct._GSList** %radio_group, align 8
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %117 = bitcast %struct._GtkWidget* %116 to %struct._GTypeInstance*
  %call82 = call i64 @gtk_toggle_button_get_type() #6
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %117, i64 %call82)
  %118 = bitcast %struct._GTypeInstance* %call83 to %struct._GtkToggleButton*
  %119 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 0), align 4
  %cmp84 = icmp eq i32 %119, 1
  %conv85 = zext i1 %cmp84 to i32
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %118, i32 %conv85)
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %121 = bitcast %struct._GtkWidget* %120 to %struct._GTypeInstance*
  %call86 = call i64 @gtk_box_get_type() #6
  %call87 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %121, i64 %call86)
  %122 = bitcast %struct._GTypeInstance* %call87 to %struct._GtkBox*
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %122, %struct._GtkWidget* %123, i32 0, i32 0, i32 0)
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %124)
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %126 = bitcast %struct._GtkWidget* %125 to %struct._GTypeInstance*
  %call88 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %126, i64 80)
  %127 = bitcast %struct._GTypeInstance* %call88 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %127, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0), i8* inttoptr (i64 1 to i8*))
  %128 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %129 = bitcast %struct._GtkWidget* %128 to i8*
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %131 = bitcast %struct._GtkWidget* %130 to i8*
  %call89 = call i64 @g_signal_connect_data(i8* %129, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget*)* @shoot_radio_button_toggled to void ()*), i8* %131, void (i8*, %struct._GClosure*)* null, i32 0)
  %call90 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0)) #4
  %call91 = call %struct._GtkWidget* @gimp_frame_new(i8* %call90)
  store %struct._GtkWidget* %call91, %struct._GtkWidget** %frame, align 8
  %132 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %133 = bitcast %struct._GtkWidget* %132 to %struct._GTypeInstance*
  %call92 = call i64 @gtk_box_get_type() #6
  %call93 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %133, i64 %call92)
  %134 = bitcast %struct._GTypeInstance* %call93 to %struct._GtkBox*
  %135 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %134, %struct._GtkWidget* %135, i32 0, i32 0, i32 0)
  %136 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %136)
  %call94 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call94, %struct._GtkWidget** %vbox, align 8
  %137 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %138 = bitcast %struct._GtkWidget* %137 to %struct._GTypeInstance*
  %call95 = call i64 @gtk_container_get_type() #6
  %call96 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %138, i64 %call95)
  %139 = bitcast %struct._GTypeInstance* %call96 to %struct._GtkContainer*
  %140 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %139, %struct._GtkWidget* %140)
  %141 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %141)
  %call97 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call97, %struct._GtkWidget** %hbox, align 8
  %142 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %143 = bitcast %struct._GtkWidget* %142 to %struct._GTypeInstance*
  %call98 = call i64 @gtk_box_get_type() #6
  %call99 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %143, i64 %call98)
  %144 = bitcast %struct._GTypeInstance* %call99 to %struct._GtkBox*
  %145 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %144, %struct._GtkWidget* %145, i32 0, i32 0, i32 0)
  %146 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %146)
  %147 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 3), align 4
  %conv100 = uitofp i32 %147 to double
  %call101 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %conv100, double 0.000000e+00, double 1.000000e+02, double 1.000000e+00, double 5.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 0)
  store %struct._GtkWidget* %call101, %struct._GtkWidget** %spinner, align 8
  %148 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %149 = bitcast %struct._GtkWidget* %148 to %struct._GTypeInstance*
  %call102 = call i64 @gtk_box_get_type() #6
  %call103 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %149, i64 %call102)
  %150 = bitcast %struct._GTypeInstance* %call103 to %struct._GtkBox*
  %151 = load %struct._GtkWidget*, %struct._GtkWidget** %spinner, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %150, %struct._GtkWidget* %151, i32 0, i32 0, i32 0)
  %152 = load %struct._GtkWidget*, %struct._GtkWidget** %spinner, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %152)
  %153 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %154 = bitcast %struct._GtkObject* %153 to i8*
  %call104 = call i64 @g_signal_connect_data(i8* %154, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 3) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call105 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0)) #4
  %call106 = call %struct._GtkWidget* @gtk_label_new(i8* %call105)
  store %struct._GtkWidget* %call106, %struct._GtkWidget** %label, align 8
  %155 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %156 = bitcast %struct._GtkWidget* %155 to %struct._GTypeInstance*
  %call107 = call i64 @gtk_box_get_type() #6
  %call108 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %156, i64 %call107)
  %157 = bitcast %struct._GTypeInstance* %call108 to %struct._GtkBox*
  %158 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %157, %struct._GtkWidget* %158, i32 0, i32 0, i32 0)
  %159 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %159)
  %160 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %160)
  %161 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %162 = bitcast %struct._GtkWidget* %161 to %struct._GTypeInstance*
  %call109 = call i64 @gimp_dialog_get_type() #6
  %call110 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %162, i64 %call109)
  %163 = bitcast %struct._GTypeInstance* %call110 to %struct._GimpDialog*
  %call111 = call i32 @gimp_dialog_run(%struct._GimpDialog* %163)
  %cmp112 = icmp eq i32 %call111, -5
  %conv113 = zext i1 %cmp112 to i32
  store i32 %conv113, i32* %run, align 4
  %164 = load i32, i32* %run, align 4
  %tobool114 = icmp ne i32 %164, 0
  br i1 %tobool114, label %if.then.115, label %if.end.117

if.then.115:                                      ; preds = %if.end
  %165 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %call116 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %165)
  %166 = load %struct._GdkScreen**, %struct._GdkScreen*** %screen.addr, align 8
  store %struct._GdkScreen* %call116, %struct._GdkScreen** %166, align 8
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.115, %if.end
  %167 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %167)
  %168 = load i32, i32* %run, align 4
  %tobool118 = icmp ne i32 %168, 0
  br i1 %tobool118, label %if.then.119, label %if.end.121

if.then.119:                                      ; preds = %if.end.117
  %call120 = call i32 @g_timeout_add(i32 100, i32 (i8*)* @shoot_quit_timeout, i8* null)
  call void @gtk_main()
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.119, %if.end.117
  %169 = load i32, i32* %run, align 4
  ret i32 %169
}

declare i32 @gdk_init_check(i32*, i8***) #1

; Function Attrs: nounwind uwtable
define internal void @shoot_delay(i32 %delay) #0 {
entry:
  %delay.addr = alloca i32, align 4
  store i32 %delay, i32* %delay.addr, align 4
  %0 = bitcast i32* %delay.addr to i8*
  %call = call i32 @g_timeout_add(i32 1000, i32 (i8*)* @shoot_delay_callback, i8* %0)
  call void @gtk_main()
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @select_window(%struct._GdkScreen* %screen) #0 {
entry:
  %screen.addr = alloca %struct._GdkScreen*, align 8
  store %struct._GdkScreen* %screen, %struct._GdkScreen** %screen.addr, align 8
  %0 = load %struct._GdkScreen*, %struct._GdkScreen** %screen.addr, align 8
  %call = call i32 @select_window_x11(%struct._GdkScreen* %0)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @shoot(%struct._GdkScreen* %screen) #0 {
entry:
  %screen.addr = alloca %struct._GdkScreen*, align 8
  store %struct._GdkScreen* %screen, %struct._GdkScreen** %screen.addr, align 8
  %0 = load %struct._GdkScreen*, %struct._GdkScreen** %screen.addr, align 8
  %call = call i32 @shoot_main(%struct._GdkScreen* %0)
  ret i32 %call
}

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare i32 @gimp_display_new(i32) #1

declare void @gimp_ui_init(i8*, i32) #1

declare %struct._GtkWidget* @gimp_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare void @gimp_standard_help_func(i8*, i8*) #1

declare %struct._GtkWidget* @gtk_dialog_add_button(%struct._GtkDialog*, i8*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #3

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

declare %struct._GdkPixbuf* @gdk_pixbuf_new_from_inline(i32, i8*, i32, %struct._GError**) #1

declare void @gtk_button_set_image(%struct._GtkButton*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_button_get_type() #3

declare %struct._GtkWidget* @gtk_image_new_from_pixbuf(%struct._GdkPixbuf*) #1

declare void @g_object_unref(i8*) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_notebook_get_type() #3

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @shoot_dialog_add_hint(%struct._GtkNotebook* %notebook, i32 %type, i8* %hint) #0 {
entry:
  %notebook.addr = alloca %struct._GtkNotebook*, align 8
  %type.addr = alloca i32, align 4
  %hint.addr = alloca i8*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  store %struct._GtkNotebook* %notebook, %struct._GtkNotebook** %notebook.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i8* %hint, i8** %hint.addr, align 8
  %call = call i64 @gtk_label_get_type() #6
  %0 = load i8*, i8** %hint.addr, align 8
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), double 0.000000e+00, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), double 0.000000e+00, i8* null)
  %1 = bitcast i8* %call1 to %struct._GtkWidget*
  store %struct._GtkWidget* %1, %struct._GtkWidget** %label, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_label_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call2)
  %4 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkLabel*
  call void (%struct._GtkLabel*, ...) @gimp_label_set_attributes(%struct._GtkLabel* %4, i32 3, i32 2, i32 -1)
  %5 = load %struct._GtkNotebook*, %struct._GtkNotebook** %notebook.addr, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %7 = load i32, i32* %type.addr, align 4
  %call4 = call i32 @gtk_notebook_insert_page(%struct._GtkNotebook* %5, %struct._GtkWidget* %6, %struct._GtkWidget* null, i32 %7)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %8)
  ret void
}

declare void @gtk_notebook_set_current_page(%struct._GtkNotebook*, i32) #1

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic(%struct._GSList*, i8*) #1

declare %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_radio_button_get_type() #3

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @shoot_radio_button_toggled(%struct._GtkWidget* %widget, %struct._GtkWidget* %notebook) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %notebook.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GtkWidget* %notebook, %struct._GtkWidget** %notebook.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gimp_radio_button_update(%struct._GtkWidget* %0, i8* bitcast (%struct.ScreenshotValues* @shootvals to i8*))
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_notebook_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkNotebook*
  %4 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 0), align 4
  call void @gtk_notebook_set_current_page(%struct._GtkNotebook* %3, i32 %4)
  ret void
}

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare %struct._GBinding* @g_object_bind_property(i8*, i8*, i8*, i8*, i32) #1

declare %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject**, double, double, double, double, double, double, double, i32) #1

declare void @gimp_int_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare i32 @g_timeout_add(i32, i32 (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @shoot_quit_timeout(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @gtk_main_quit()
  ret i32 0
}

declare void @gtk_main() #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #3

declare void @gimp_label_set_attributes(%struct._GtkLabel*, ...) #1

declare i32 @gtk_notebook_insert_page(%struct._GtkNotebook*, %struct._GtkWidget*, %struct._GtkWidget*, i32) #1

declare void @gimp_radio_button_update(%struct._GtkWidget*, i8*) #1

declare void @gtk_main_quit() #1

; Function Attrs: nounwind uwtable
define internal i32 @shoot_delay_callback(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %seconds_left = alloca i32*, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to i32*
  store i32* %1, i32** %seconds_left, align 8
  %2 = load i32*, i32** %seconds_left, align 8
  %3 = load i32, i32* %2, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %2, align 4
  %4 = load i32*, i32** %seconds_left, align 8
  %5 = load i32, i32* %4, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @gtk_main_quit()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32*, i32** %seconds_left, align 8
  %7 = load i32, i32* %6, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @select_window_x11(%struct._GdkScreen* %screen) #0 {
entry:
  %screen.addr = alloca %struct._GdkScreen*, align 8
  %x_dpy = alloca %struct._XDisplay*, align 8
  %x_scr = alloca i32, align 4
  %x_root = alloca i64, align 8
  %x_win = alloca i64, align 8
  %x_gc = alloca %struct._XGC*, align 8
  %x_cursor = alloca i64, align 8
  %keymap = alloca %struct._GdkKeymap*, align 8
  %keys = alloca %struct._GdkKeymapKey*, align 8
  %status = alloca i32, align 4
  %i = alloca i32, align 4
  %num_keys = alloca i32, align 4
  %buttons = alloca i32, align 4
  %mask = alloca i32, align 4
  %cancel = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %xmask = alloca i32, align 4
  %gc_values = alloca %struct.XGCValues, align 8
  %x_event = alloca %union._XEvent, align 8
  %x76 = alloca i32, align 4
  %y77 = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %keyvals = alloca i32*, align 8
  %n = alloca i32, align 4
  %i236 = alloca i32, align 4
  store %struct._GdkScreen* %screen, %struct._GdkScreen** %screen.addr, align 8
  %0 = load %struct._GdkScreen*, %struct._GdkScreen** %screen.addr, align 8
  %call = call %struct._GdkDisplay* @gdk_screen_get_display(%struct._GdkScreen* %0)
  %call1 = call %struct._XDisplay* @gdk_x11_display_get_xdisplay(%struct._GdkDisplay* %call)
  store %struct._XDisplay* %call1, %struct._XDisplay** %x_dpy, align 8
  %1 = load %struct._GdkScreen*, %struct._GdkScreen** %screen.addr, align 8
  %call2 = call i32 @gdk_x11_screen_get_screen_number(%struct._GdkScreen* %1)
  store i32 %call2, i32* %x_scr, align 4
  %2 = load i32, i32* %x_scr, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct._XDisplay*, %struct._XDisplay** %x_dpy, align 8
  %4 = bitcast %struct._XDisplay* %3 to %struct.anon*
  %screens = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 0, i32 35
  %5 = load %struct.Screen*, %struct.Screen** %screens, align 8
  %arrayidx = getelementptr inbounds %struct.Screen, %struct.Screen* %5, i64 %idxprom
  %root = getelementptr inbounds %struct.Screen, %struct.Screen* %arrayidx, i32 0, i32 2
  %6 = load i64, i64* %root, align 8
  store i64 %6, i64* %x_root, align 8
  store i64 0, i64* %x_win, align 8
  store %struct._XGC* null, %struct._XGC** %x_gc, align 8
  %7 = load %struct._XDisplay*, %struct._XDisplay** %x_dpy, align 8
  %call3 = call i64 @XCreateFontCursor(%struct._XDisplay* %7, i32 34)
  store i64 %call3, i64* %x_cursor, align 8
  store %struct._GdkKeymapKey* null, %struct._GdkKeymapKey** %keys, align 8
  store i32 0, i32* %buttons, align 4
  store i32 12, i32* %mask, align 4
  store i32 0, i32* %cancel, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 0), align 4
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %mask, align 4
  %conv = sext i32 %9 to i64
  %or = or i64 %conv, 64
  %conv4 = trunc i64 %or to i32
  store i32 %conv4, i32* %mask, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._XDisplay*, %struct._XDisplay** %x_dpy, align 8
  %11 = load i64, i64* %x_root, align 8
  %12 = load i32, i32* %mask, align 4
  %13 = load i64, i64* %x_root, align 8
  %14 = load i64, i64* %x_cursor, align 8
  %call5 = call i32 @XGrabPointer(%struct._XDisplay* %10, i64 %11, i32 0, i32 %12, i32 0, i32 1, i64 %13, i64 %14, i64 0)
  store i32 %call5, i32* %status, align 4
  %15 = load i32, i32* %status, align 4
  %cmp6 = icmp ne i32 %15, 0
  br i1 %cmp6, label %if.then.8, label %if.end.17

if.then.8:                                        ; preds = %if.end
  %16 = load %struct._XDisplay*, %struct._XDisplay** %x_dpy, align 8
  %17 = load i64, i64* %x_root, align 8
  %call9 = call i32 @XQueryPointer(%struct._XDisplay* %16, i64 %17, i64* %x_root, i64* %x_win, i32* %x, i32* %y, i32* %x, i32* %y, i32* %xmask)
  %18 = load i64, i64* %x_win, align 8
  %cmp10 = icmp eq i64 %18, 0
  br i1 %cmp10, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.8
  %19 = load i64, i64* %x_win, align 8
  %20 = load i64, i64* %x_root, align 8
  %cmp12 = icmp eq i64 %19, %20
  br i1 %cmp12, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %lor.lhs.false, %if.then.8
  %call15 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.53, i32 0, i32 0)) #4
  call void (i8*, ...) @g_message(i8* %call15)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %lor.lhs.false
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end
  %21 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 0), align 4
  %cmp18 = icmp eq i32 %21, 1
  br i1 %cmp18, label %if.then.20, label %if.end.28

if.then.20:                                       ; preds = %if.end.17
  %function = getelementptr inbounds %struct.XGCValues, %struct.XGCValues* %gc_values, i32 0, i32 0
  store i32 6, i32* %function, align 4
  %plane_mask = getelementptr inbounds %struct.XGCValues, %struct.XGCValues* %gc_values, i32 0, i32 1
  store i64 -1, i64* %plane_mask, align 8
  %22 = load i32, i32* %x_scr, align 4
  %idxprom21 = sext i32 %22 to i64
  %23 = load %struct._XDisplay*, %struct._XDisplay** %x_dpy, align 8
  %24 = bitcast %struct._XDisplay* %23 to %struct.anon*
  %screens22 = getelementptr inbounds %struct.anon, %struct.anon* %24, i32 0, i32 35
  %25 = load %struct.Screen*, %struct.Screen** %screens22, align 8
  %arrayidx23 = getelementptr inbounds %struct.Screen, %struct.Screen* %25, i64 %idxprom21
  %white_pixel = getelementptr inbounds %struct.Screen, %struct.Screen* %arrayidx23, i32 0, i32 13
  %26 = load i64, i64* %white_pixel, align 8
  %foreground = getelementptr inbounds %struct.XGCValues, %struct.XGCValues* %gc_values, i32 0, i32 2
  store i64 %26, i64* %foreground, align 8
  %27 = load i32, i32* %x_scr, align 4
  %idxprom24 = sext i32 %27 to i64
  %28 = load %struct._XDisplay*, %struct._XDisplay** %x_dpy, align 8
  %29 = bitcast %struct._XDisplay* %28 to %struct.anon*
  %screens25 = getelementptr inbounds %struct.anon, %struct.anon* %29, i32 0, i32 35
  %30 = load %struct.Screen*, %struct.Screen** %screens25, align 8
  %arrayidx26 = getelementptr inbounds %struct.Screen, %struct.Screen* %30, i64 %idxprom24
  %black_pixel = getelementptr inbounds %struct.Screen, %struct.Screen* %arrayidx26, i32 0, i32 14
  %31 = load i64, i64* %black_pixel, align 8
  %background = getelementptr inbounds %struct.XGCValues, %struct.XGCValues* %gc_values, i32 0, i32 3
  store i64 %31, i64* %background, align 8
  %line_width = getelementptr inbounds %struct.XGCValues, %struct.XGCValues* %gc_values, i32 0, i32 4
  store i32 0, i32* %line_width, align 4
  %line_style = getelementptr inbounds %struct.XGCValues, %struct.XGCValues* %gc_values, i32 0, i32 5
  store i32 0, i32* %line_style, align 4
  %fill_style = getelementptr inbounds %struct.XGCValues, %struct.XGCValues* %gc_values, i32 0, i32 8
  store i32 0, i32* %fill_style, align 4
  %cap_style = getelementptr inbounds %struct.XGCValues, %struct.XGCValues* %gc_values, i32 0, i32 6
  store i32 1, i32* %cap_style, align 4
  %join_style = getelementptr inbounds %struct.XGCValues, %struct.XGCValues* %gc_values, i32 0, i32 7
  store i32 0, i32* %join_style, align 4
  %graphics_exposures = getelementptr inbounds %struct.XGCValues, %struct.XGCValues* %gc_values, i32 0, i32 17
  store i32 0, i32* %graphics_exposures, align 4
  %clip_x_origin = getelementptr inbounds %struct.XGCValues, %struct.XGCValues* %gc_values, i32 0, i32 18
  store i32 0, i32* %clip_x_origin, align 4
  %clip_y_origin = getelementptr inbounds %struct.XGCValues, %struct.XGCValues* %gc_values, i32 0, i32 19
  store i32 0, i32* %clip_y_origin, align 4
  %clip_mask = getelementptr inbounds %struct.XGCValues, %struct.XGCValues* %gc_values, i32 0, i32 20
  store i64 0, i64* %clip_mask, align 8
  %subwindow_mode = getelementptr inbounds %struct.XGCValues, %struct.XGCValues* %gc_values, i32 0, i32 16
  store i32 1, i32* %subwindow_mode, align 4
  %32 = load %struct._XDisplay*, %struct._XDisplay** %x_dpy, align 8
  %33 = load i64, i64* %x_root, align 8
  %call27 = call %struct._XGC* @XCreateGC(%struct._XDisplay* %32, i64 %33, i64 1016319, %struct.XGCValues* %gc_values)
  store %struct._XGC* %call27, %struct._XGC** %x_gc, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.20, %if.end.17
  %34 = load %struct._GdkScreen*, %struct._GdkScreen** %screen.addr, align 8
  %call29 = call %struct._GdkDisplay* @gdk_screen_get_display(%struct._GdkScreen* %34)
  %call30 = call %struct._GdkKeymap* @gdk_keymap_get_for_display(%struct._GdkDisplay* %call29)
  store %struct._GdkKeymap* %call30, %struct._GdkKeymap** %keymap, align 8
  %35 = load %struct._GdkKeymap*, %struct._GdkKeymap** %keymap, align 8
  %call31 = call i32 @gdk_keymap_get_entries_for_keyval(%struct._GdkKeymap* %35, i32 65307, %struct._GdkKeymapKey** %keys, i32* %num_keys)
  %tobool = icmp ne i32 %call31, 0
  br i1 %tobool, label %if.then.32, label %if.end.70

if.then.32:                                       ; preds = %if.end.28
  call void @gdk_error_trap_push()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.32
  %36 = load i32, i32* %i, align 4
  %37 = load i32, i32* %num_keys, align 4
  %cmp33 = icmp slt i32 %36, %37
  br i1 %cmp33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load %struct._XDisplay*, %struct._XDisplay** %x_dpy, align 8
  %39 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %39 to i64
  %40 = load %struct._GdkKeymapKey*, %struct._GdkKeymapKey** %keys, align 8
  %arrayidx36 = getelementptr inbounds %struct._GdkKeymapKey, %struct._GdkKeymapKey* %40, i64 %idxprom35
  %keycode = getelementptr inbounds %struct._GdkKeymapKey, %struct._GdkKeymapKey* %arrayidx36, i32 0, i32 0
  %41 = load i32, i32* %keycode, align 4
  %42 = load i64, i64* %x_root, align 8
  %call37 = call i32 @XGrabKey(%struct._XDisplay* %38, i32 %41, i32 0, i64 %42, i32 0, i32 1, i32 1)
  %43 = load %struct._XDisplay*, %struct._XDisplay** %x_dpy, align 8
  %44 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %44 to i64
  %45 = load %struct._GdkKeymapKey*, %struct._GdkKeymapKey** %keys, align 8
  %arrayidx39 = getelementptr inbounds %struct._GdkKeymapKey, %struct._GdkKeymapKey* %45, i64 %idxprom38
  %keycode40 = getelementptr inbounds %struct._GdkKeymapKey, %struct._GdkKeymapKey* %arrayidx39, i32 0, i32 0
  %46 = load i32, i32* %keycode40, align 4
  %47 = load i64, i64* %x_root, align 8
  %call41 = call i32 @XGrabKey(%struct._XDisplay* %43, i32 %46, i32 2, i64 %47, i32 0, i32 1, i32 1)
  %48 = load %struct._XDisplay*, %struct._XDisplay** %x_dpy, align 8
  %49 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %49 to i64
  %50 = load %struct._GdkKeymapKey*, %struct._GdkKeymapKey** %keys, align 8
  %arrayidx43 = getelementptr inbounds %struct._GdkKeymapKey, %struct._GdkKeymapKey* %50, i64 %idxprom42
  %keycode44 = getelementptr inbounds %struct._GdkKeymapKey, %struct._GdkKeymapKey* %arrayidx43, i32 0, i32 0
  %51 = load i32, i32* %keycode44, align 4
  %52 = load i64, i64* %x_root, align 8
  %call45 = call i32 @XGrabKey(%struct._XDisplay* %48, i32 %51, i32 16, i64 %52, i32 0, i32 1, i32 1)
  %53 = load %struct._XDisplay*, %struct._XDisplay** %x_dpy, align 8
  %54 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %54 to i64
  %55 = load %struct._GdkKeymapKey*, %struct._GdkKeymapKey** %keys, align 8
  %arrayidx47 = getelementptr inbounds %struct._GdkKeymapKey, %struct._GdkKeymapKey* %55, i64 %idxprom46
  %keycode48 = getelementptr inbounds %struct._GdkKeymapKey, %struct._GdkKeymapKey* %arrayidx47, i32 0, i32 0
  %56 = load i32, i32* %keycode48, align 4
  %57 = load i64, i64* %x_root, align 8
  %call49 = call i32 @XGrabKey(%struct._XDisplay* %53, i32 %56, i32 128, i64 %57, i32 0, i32 1, i32 1)
  %58 = load %struct._XDisplay*, %struct._XDisplay** %x_dpy, align 8
  %59 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %59 to i64
  %60 = load %struct._GdkKeymapKey*, %struct._GdkKeymapKey** %keys, align 8
  %arrayidx51 = getelementptr inbounds %struct._GdkKeymapKey, %struct._GdkKeymapKey* %60, i64 %idxprom50
  %keycode52 = getelementptr inbounds %struct._GdkKeymapKey, %struct._GdkKeymapKey* %arrayidx51, i32 0, i32 0
  %61 = load i32, i32* %keycode52, align 4
  %62 = load i64, i64* %x_root, align 8
  %call53 = call i32 @XGrabKey(%struct._XDisplay* %58, i32 %61, i32 18, i64 %62, i32 0, i32 1, i32 1)
  %63 = load %struct._XDisplay*, %struct._XDisplay** %x_dpy, align 8
  %64 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %64 to i64
  %65 = load %struct._GdkKeymapKey*, %struct._GdkKeymapKey** %keys, align 8
  %arrayidx55 = getelementptr inbounds %struct._GdkKeymapKey, %struct._GdkKeymapKey* %65, i64 %idxprom54
  %keycode56 = getelementptr inbounds %struct._GdkKeymapKey, %struct._GdkKeymapKey* %arrayidx55, i32 0, i32 0
  %66 = load i32, i32* %keycode56, align 4
  %67 = load i64, i64* %x_root, align 8
  %call57 = call i32 @XGrabKey(%struct._XDisplay* %63, i32 %66, i32 130, i64 %67, i32 0, i32 1, i32 1)
  %68 = load %struct._XDisplay*, %struct._XDisplay** %x_dpy, align 8
  %69 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %69 to i64
  %70 = load %struct._GdkKeymapKey*, %struct._GdkKeymapKey** %keys, align 8
  %arrayidx59 = getelementptr inbounds %struct._GdkKeymapKey, %struct._GdkKeymapKey* %70, i64 %idxprom58
  %keycode60 = getelementptr inbounds %struct._GdkKeymapKey, %struct._GdkKeymapKey* %arrayidx59, i32 0, i32 0
  %71 = load i32, i32* %keycode60, align 4
  %72 = load i64, i64* %x_root, align 8
  %call61 = call i32 @XGrabKey(%struct._XDisplay* %68, i32 %71, i32 144, i64 %72, i32 0, i32 1, i32 1)
  %73 = load %struct._XDisplay*, %struct._XDisplay** %x_dpy, align 8
  %74 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %74 to i64
  %75 = load %struct._GdkKeymapKey*, %struct._GdkKeymapKey** %keys, align 8
  %arrayidx63 = getelementptr inbounds %struct._GdkKeymapKey, %struct._GdkKeymapKey* %75, i64 %idxprom62
  %keycode64 = getelementptr inbounds %struct._GdkKeymapKey, %struct._GdkKeymapKey* %arrayidx63, i32 0, i32 0
  %76 = load i32, i32* %keycode64, align 4
  %77 = load i64, i64* %x_root, align 8
  %call65 = call i32 @XGrabKey(%struct._XDisplay* %73, i32 %76, i32 146, i64 %77, i32 0, i32 1, i32 1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %78 = load i32, i32* %i, align 4
  %inc = add nsw i32 %78, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @gdk_flush()
  %call66 = call i32 @gdk_error_trap_pop()
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %for.end
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.68, %for.end
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.end.28
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end.70
  %79 = load i32, i32* %cancel, align 4
  %tobool71 = icmp ne i32 %79, 0
  br i1 %tobool71, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %80 = load i64, i64* %x_win, align 8
  %cmp72 = icmp eq i64 %80, 0
  br i1 %cmp72, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %81 = load i32, i32* %buttons, align 4
  %cmp74 = icmp ne i32 %81, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %82 = phi i1 [ true, %land.rhs ], [ %cmp74, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %83 = phi i1 [ false, %while.cond ], [ %82, %lor.end ]
  br i1 %83, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %84 = load %struct._XDisplay*, %struct._XDisplay** %x_dpy, align 8
  %call78 = call i32 @XAllowEvents(%struct._XDisplay* %84, i32 1, i64 0)
  %85 = load %struct._XDisplay*, %struct._XDisplay** %x_dpy, align 8
  %86 = load i64, i64* %x_root, align 8
  %87 = load i32, i32* %mask, align 4
  %conv79 = sext i32 %87 to i64
  %or80 = or i64 %conv79, 1
  %call81 = call i32 @XWindowEvent(%struct._XDisplay* %85, i64 %86, i64 %or80, %union._XEvent* %x_event)
  %type = bitcast %union._XEvent* %x_event to i32*
  %88 = load i32, i32* %type, align 4
  switch i32 %88, label %sw.default [
    i32 4, label %sw.bb
    i32 5, label %sw.bb.94
    i32 6, label %sw.bb.143
    i32 2, label %sw.bb.231
  ]

sw.bb:                                            ; preds = %while.body
  %89 = load i64, i64* %x_win, align 8
  %cmp82 = icmp eq i64 %89, 0
  br i1 %cmp82, label %if.then.84, label %if.end.92

if.then.84:                                       ; preds = %sw.bb
  %xbutton = bitcast %union._XEvent* %x_event to %struct.XButtonEvent*
  %subwindow = getelementptr inbounds %struct.XButtonEvent, %struct.XButtonEvent* %xbutton, i32 0, i32 6
  %90 = load i64, i64* %subwindow, align 8
  store i64 %90, i64* %x_win, align 8
  %91 = load i64, i64* %x_win, align 8
  %cmp85 = icmp eq i64 %91, 0
  br i1 %cmp85, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %if.then.84
  %92 = load i64, i64* %x_root, align 8
  store i64 %92, i64* %x_win, align 8
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.87, %if.then.84
  %xbutton89 = bitcast %union._XEvent* %x_event to %struct.XButtonEvent*
  %x_root90 = getelementptr inbounds %struct.XButtonEvent, %struct.XButtonEvent* %xbutton89, i32 0, i32 10
  %93 = load i32, i32* %x_root90, align 4
  store i32 %93, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 4), align 4
  store i32 %93, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 6), align 4
  %xbutton91 = bitcast %union._XEvent* %x_event to %struct.XButtonEvent*
  %y_root = getelementptr inbounds %struct.XButtonEvent, %struct.XButtonEvent* %xbutton91, i32 0, i32 11
  %94 = load i32, i32* %y_root, align 4
  store i32 %94, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 5), align 4
  store i32 %94, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 7), align 4
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.88, %sw.bb
  %95 = load i32, i32* %buttons, align 4
  %inc93 = add nsw i32 %95, 1
  store i32 %inc93, i32* %buttons, align 4
  br label %sw.epilog

sw.bb.94:                                         ; preds = %while.body
  %96 = load i32, i32* %buttons, align 4
  %cmp95 = icmp sgt i32 %96, 0
  br i1 %cmp95, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %sw.bb.94
  %97 = load i32, i32* %buttons, align 4
  %dec = add nsw i32 %97, -1
  store i32 %dec, i32* %buttons, align 4
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.97, %sw.bb.94
  %98 = load i32, i32* %buttons, align 4
  %tobool99 = icmp ne i32 %98, 0
  br i1 %tobool99, label %if.end.142, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.98
  %99 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 0), align 4
  %cmp100 = icmp eq i32 %99, 1
  br i1 %cmp100, label %if.then.102, label %if.end.142

if.then.102:                                      ; preds = %land.lhs.true
  %100 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 4), align 4
  %101 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 6), align 4
  %cmp103 = icmp slt i32 %100, %101
  br i1 %cmp103, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.102
  %102 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 4), align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.102
  %103 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 6), align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %102, %cond.true ], [ %103, %cond.false ]
  store i32 %cond, i32* %x76, align 4
  %104 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 5), align 4
  %105 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 7), align 4
  %cmp105 = icmp slt i32 %104, %105
  br i1 %cmp105, label %cond.true.107, label %cond.false.108

cond.true.107:                                    ; preds = %cond.end
  %106 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 5), align 4
  br label %cond.end.109

cond.false.108:                                   ; preds = %cond.end
  %107 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 7), align 4
  br label %cond.end.109

cond.end.109:                                     ; preds = %cond.false.108, %cond.true.107
  %cond110 = phi i32 [ %106, %cond.true.107 ], [ %107, %cond.false.108 ]
  store i32 %cond110, i32* %y77, align 4
  %108 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 6), align 4
  %109 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 4), align 4
  %sub = sub nsw i32 %108, %109
  %cmp111 = icmp slt i32 %sub, 0
  br i1 %cmp111, label %cond.true.113, label %cond.false.116

cond.true.113:                                    ; preds = %cond.end.109
  %110 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 6), align 4
  %111 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 4), align 4
  %sub114 = sub nsw i32 %110, %111
  %sub115 = sub nsw i32 0, %sub114
  br label %cond.end.118

cond.false.116:                                   ; preds = %cond.end.109
  %112 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 6), align 4
  %113 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 4), align 4
  %sub117 = sub nsw i32 %112, %113
  br label %cond.end.118

cond.end.118:                                     ; preds = %cond.false.116, %cond.true.113
  %cond119 = phi i32 [ %sub115, %cond.true.113 ], [ %sub117, %cond.false.116 ]
  store i32 %cond119, i32* %w, align 4
  %114 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 7), align 4
  %115 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 5), align 4
  %sub120 = sub nsw i32 %114, %115
  %cmp121 = icmp slt i32 %sub120, 0
  br i1 %cmp121, label %cond.true.123, label %cond.false.126

cond.true.123:                                    ; preds = %cond.end.118
  %116 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 7), align 4
  %117 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 5), align 4
  %sub124 = sub nsw i32 %116, %117
  %sub125 = sub nsw i32 0, %sub124
  br label %cond.end.128

cond.false.126:                                   ; preds = %cond.end.118
  %118 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 7), align 4
  %119 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 5), align 4
  %sub127 = sub nsw i32 %118, %119
  br label %cond.end.128

cond.end.128:                                     ; preds = %cond.false.126, %cond.true.123
  %cond129 = phi i32 [ %sub125, %cond.true.123 ], [ %sub127, %cond.false.126 ]
  store i32 %cond129, i32* %h, align 4
  %120 = load i32, i32* %w, align 4
  %cmp130 = icmp sgt i32 %120, 0
  br i1 %cmp130, label %land.lhs.true.132, label %if.end.137

land.lhs.true.132:                                ; preds = %cond.end.128
  %121 = load i32, i32* %h, align 4
  %cmp133 = icmp sgt i32 %121, 0
  br i1 %cmp133, label %if.then.135, label %if.end.137

if.then.135:                                      ; preds = %land.lhs.true.132
  %122 = load %struct._XDisplay*, %struct._XDisplay** %x_dpy, align 8
  %123 = load i64, i64* %x_root, align 8
  %124 = load %struct._XGC*, %struct._XGC** %x_gc, align 8
  %125 = load i32, i32* %x76, align 4
  %126 = load i32, i32* %y77, align 4
  %127 = load i32, i32* %w, align 4
  %128 = load i32, i32* %h, align 4
  %call136 = call i32 @XDrawRectangle(%struct._XDisplay* %122, i64 %123, %struct._XGC* %124, i32 %125, i32 %126, i32 %127, i32 %128)
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.135, %land.lhs.true.132, %cond.end.128
  %xbutton138 = bitcast %union._XEvent* %x_event to %struct.XButtonEvent*
  %x_root139 = getelementptr inbounds %struct.XButtonEvent, %struct.XButtonEvent* %xbutton138, i32 0, i32 10
  %129 = load i32, i32* %x_root139, align 4
  store i32 %129, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 6), align 4
  %xbutton140 = bitcast %union._XEvent* %x_event to %struct.XButtonEvent*
  %y_root141 = getelementptr inbounds %struct.XButtonEvent, %struct.XButtonEvent* %xbutton140, i32 0, i32 11
  %130 = load i32, i32* %y_root141, align 4
  store i32 %130, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 7), align 4
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.137, %land.lhs.true, %if.end.98
  br label %sw.epilog

sw.bb.143:                                        ; preds = %while.body
  %131 = load i32, i32* %buttons, align 4
  %cmp144 = icmp sgt i32 %131, 0
  br i1 %cmp144, label %if.then.146, label %if.end.230

if.then.146:                                      ; preds = %sw.bb.143
  %132 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 4), align 4
  %133 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 6), align 4
  %cmp147 = icmp slt i32 %132, %133
  br i1 %cmp147, label %cond.true.149, label %cond.false.150

cond.true.149:                                    ; preds = %if.then.146
  %134 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 4), align 4
  br label %cond.end.151

cond.false.150:                                   ; preds = %if.then.146
  %135 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 6), align 4
  br label %cond.end.151

cond.end.151:                                     ; preds = %cond.false.150, %cond.true.149
  %cond152 = phi i32 [ %134, %cond.true.149 ], [ %135, %cond.false.150 ]
  store i32 %cond152, i32* %x76, align 4
  %136 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 5), align 4
  %137 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 7), align 4
  %cmp153 = icmp slt i32 %136, %137
  br i1 %cmp153, label %cond.true.155, label %cond.false.156

cond.true.155:                                    ; preds = %cond.end.151
  %138 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 5), align 4
  br label %cond.end.157

cond.false.156:                                   ; preds = %cond.end.151
  %139 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 7), align 4
  br label %cond.end.157

cond.end.157:                                     ; preds = %cond.false.156, %cond.true.155
  %cond158 = phi i32 [ %138, %cond.true.155 ], [ %139, %cond.false.156 ]
  store i32 %cond158, i32* %y77, align 4
  %140 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 6), align 4
  %141 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 4), align 4
  %sub159 = sub nsw i32 %140, %141
  %cmp160 = icmp slt i32 %sub159, 0
  br i1 %cmp160, label %cond.true.162, label %cond.false.165

cond.true.162:                                    ; preds = %cond.end.157
  %142 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 6), align 4
  %143 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 4), align 4
  %sub163 = sub nsw i32 %142, %143
  %sub164 = sub nsw i32 0, %sub163
  br label %cond.end.167

cond.false.165:                                   ; preds = %cond.end.157
  %144 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 6), align 4
  %145 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 4), align 4
  %sub166 = sub nsw i32 %144, %145
  br label %cond.end.167

cond.end.167:                                     ; preds = %cond.false.165, %cond.true.162
  %cond168 = phi i32 [ %sub164, %cond.true.162 ], [ %sub166, %cond.false.165 ]
  store i32 %cond168, i32* %w, align 4
  %146 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 7), align 4
  %147 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 5), align 4
  %sub169 = sub nsw i32 %146, %147
  %cmp170 = icmp slt i32 %sub169, 0
  br i1 %cmp170, label %cond.true.172, label %cond.false.175

cond.true.172:                                    ; preds = %cond.end.167
  %148 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 7), align 4
  %149 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 5), align 4
  %sub173 = sub nsw i32 %148, %149
  %sub174 = sub nsw i32 0, %sub173
  br label %cond.end.177

cond.false.175:                                   ; preds = %cond.end.167
  %150 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 7), align 4
  %151 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 5), align 4
  %sub176 = sub nsw i32 %150, %151
  br label %cond.end.177

cond.end.177:                                     ; preds = %cond.false.175, %cond.true.172
  %cond178 = phi i32 [ %sub174, %cond.true.172 ], [ %sub176, %cond.false.175 ]
  store i32 %cond178, i32* %h, align 4
  %152 = load i32, i32* %w, align 4
  %cmp179 = icmp sgt i32 %152, 0
  br i1 %cmp179, label %land.lhs.true.181, label %if.end.186

land.lhs.true.181:                                ; preds = %cond.end.177
  %153 = load i32, i32* %h, align 4
  %cmp182 = icmp sgt i32 %153, 0
  br i1 %cmp182, label %if.then.184, label %if.end.186

if.then.184:                                      ; preds = %land.lhs.true.181
  %154 = load %struct._XDisplay*, %struct._XDisplay** %x_dpy, align 8
  %155 = load i64, i64* %x_root, align 8
  %156 = load %struct._XGC*, %struct._XGC** %x_gc, align 8
  %157 = load i32, i32* %x76, align 4
  %158 = load i32, i32* %y77, align 4
  %159 = load i32, i32* %w, align 4
  %160 = load i32, i32* %h, align 4
  %call185 = call i32 @XDrawRectangle(%struct._XDisplay* %154, i64 %155, %struct._XGC* %156, i32 %157, i32 %158, i32 %159, i32 %160)
  br label %if.end.186

if.end.186:                                       ; preds = %if.then.184, %land.lhs.true.181, %cond.end.177
  %xmotion = bitcast %union._XEvent* %x_event to %struct.XMotionEvent*
  %x_root187 = getelementptr inbounds %struct.XMotionEvent, %struct.XMotionEvent* %xmotion, i32 0, i32 10
  %161 = load i32, i32* %x_root187, align 4
  store i32 %161, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 6), align 4
  %xmotion188 = bitcast %union._XEvent* %x_event to %struct.XMotionEvent*
  %y_root189 = getelementptr inbounds %struct.XMotionEvent, %struct.XMotionEvent* %xmotion188, i32 0, i32 11
  %162 = load i32, i32* %y_root189, align 4
  store i32 %162, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 7), align 4
  %163 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 4), align 4
  %164 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 6), align 4
  %cmp190 = icmp slt i32 %163, %164
  br i1 %cmp190, label %cond.true.192, label %cond.false.193

cond.true.192:                                    ; preds = %if.end.186
  %165 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 4), align 4
  br label %cond.end.194

cond.false.193:                                   ; preds = %if.end.186
  %166 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 6), align 4
  br label %cond.end.194

cond.end.194:                                     ; preds = %cond.false.193, %cond.true.192
  %cond195 = phi i32 [ %165, %cond.true.192 ], [ %166, %cond.false.193 ]
  store i32 %cond195, i32* %x76, align 4
  %167 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 5), align 4
  %168 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 7), align 4
  %cmp196 = icmp slt i32 %167, %168
  br i1 %cmp196, label %cond.true.198, label %cond.false.199

cond.true.198:                                    ; preds = %cond.end.194
  %169 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 5), align 4
  br label %cond.end.200

cond.false.199:                                   ; preds = %cond.end.194
  %170 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 7), align 4
  br label %cond.end.200

cond.end.200:                                     ; preds = %cond.false.199, %cond.true.198
  %cond201 = phi i32 [ %169, %cond.true.198 ], [ %170, %cond.false.199 ]
  store i32 %cond201, i32* %y77, align 4
  %171 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 6), align 4
  %172 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 4), align 4
  %sub202 = sub nsw i32 %171, %172
  %cmp203 = icmp slt i32 %sub202, 0
  br i1 %cmp203, label %cond.true.205, label %cond.false.208

cond.true.205:                                    ; preds = %cond.end.200
  %173 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 6), align 4
  %174 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 4), align 4
  %sub206 = sub nsw i32 %173, %174
  %sub207 = sub nsw i32 0, %sub206
  br label %cond.end.210

cond.false.208:                                   ; preds = %cond.end.200
  %175 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 6), align 4
  %176 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 4), align 4
  %sub209 = sub nsw i32 %175, %176
  br label %cond.end.210

cond.end.210:                                     ; preds = %cond.false.208, %cond.true.205
  %cond211 = phi i32 [ %sub207, %cond.true.205 ], [ %sub209, %cond.false.208 ]
  store i32 %cond211, i32* %w, align 4
  %177 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 7), align 4
  %178 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 5), align 4
  %sub212 = sub nsw i32 %177, %178
  %cmp213 = icmp slt i32 %sub212, 0
  br i1 %cmp213, label %cond.true.215, label %cond.false.218

cond.true.215:                                    ; preds = %cond.end.210
  %179 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 7), align 4
  %180 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 5), align 4
  %sub216 = sub nsw i32 %179, %180
  %sub217 = sub nsw i32 0, %sub216
  br label %cond.end.220

cond.false.218:                                   ; preds = %cond.end.210
  %181 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 7), align 4
  %182 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 5), align 4
  %sub219 = sub nsw i32 %181, %182
  br label %cond.end.220

cond.end.220:                                     ; preds = %cond.false.218, %cond.true.215
  %cond221 = phi i32 [ %sub217, %cond.true.215 ], [ %sub219, %cond.false.218 ]
  store i32 %cond221, i32* %h, align 4
  %183 = load i32, i32* %w, align 4
  %cmp222 = icmp sgt i32 %183, 0
  br i1 %cmp222, label %land.lhs.true.224, label %if.end.229

land.lhs.true.224:                                ; preds = %cond.end.220
  %184 = load i32, i32* %h, align 4
  %cmp225 = icmp sgt i32 %184, 0
  br i1 %cmp225, label %if.then.227, label %if.end.229

if.then.227:                                      ; preds = %land.lhs.true.224
  %185 = load %struct._XDisplay*, %struct._XDisplay** %x_dpy, align 8
  %186 = load i64, i64* %x_root, align 8
  %187 = load %struct._XGC*, %struct._XGC** %x_gc, align 8
  %188 = load i32, i32* %x76, align 4
  %189 = load i32, i32* %y77, align 4
  %190 = load i32, i32* %w, align 4
  %191 = load i32, i32* %h, align 4
  %call228 = call i32 @XDrawRectangle(%struct._XDisplay* %185, i64 %186, %struct._XGC* %187, i32 %188, i32 %189, i32 %190, i32 %191)
  br label %if.end.229

if.end.229:                                       ; preds = %if.then.227, %land.lhs.true.224, %cond.end.220
  br label %if.end.230

if.end.230:                                       ; preds = %if.end.229, %sw.bb.143
  br label %sw.epilog

sw.bb.231:                                        ; preds = %while.body
  %xkey = bitcast %union._XEvent* %x_event to %struct.XKeyEvent*
  %keycode232 = getelementptr inbounds %struct.XKeyEvent, %struct.XKeyEvent* %xkey, i32 0, i32 13
  %192 = load i32, i32* %keycode232, align 4
  %call233 = call i32 @gdk_keymap_get_entries_for_keycode(%struct._GdkKeymap* null, i32 %192, %struct._GdkKeymapKey** null, i32** %keyvals, i32* %n)
  %tobool234 = icmp ne i32 %call233, 0
  br i1 %tobool234, label %if.then.235, label %if.end.253

if.then.235:                                      ; preds = %sw.bb.231
  store i32 0, i32* %i236, align 4
  br label %for.cond.237

for.cond.237:                                     ; preds = %for.inc.250, %if.then.235
  %193 = load i32, i32* %i236, align 4
  %194 = load i32, i32* %n, align 4
  %cmp238 = icmp slt i32 %193, %194
  br i1 %cmp238, label %land.rhs.240, label %land.end.242

land.rhs.240:                                     ; preds = %for.cond.237
  %195 = load i32, i32* %cancel, align 4
  %tobool241 = icmp ne i32 %195, 0
  %lnot = xor i1 %tobool241, true
  br label %land.end.242

land.end.242:                                     ; preds = %land.rhs.240, %for.cond.237
  %196 = phi i1 [ false, %for.cond.237 ], [ %lnot, %land.rhs.240 ]
  br i1 %196, label %for.body.243, label %for.end.252

for.body.243:                                     ; preds = %land.end.242
  %197 = load i32, i32* %i236, align 4
  %idxprom244 = sext i32 %197 to i64
  %198 = load i32*, i32** %keyvals, align 8
  %arrayidx245 = getelementptr inbounds i32, i32* %198, i64 %idxprom244
  %199 = load i32, i32* %arrayidx245, align 4
  %cmp246 = icmp eq i32 %199, 65307
  br i1 %cmp246, label %if.then.248, label %if.end.249

if.then.248:                                      ; preds = %for.body.243
  store i32 1, i32* %cancel, align 4
  br label %if.end.249

if.end.249:                                       ; preds = %if.then.248, %for.body.243
  br label %for.inc.250

for.inc.250:                                      ; preds = %if.end.249
  %200 = load i32, i32* %i236, align 4
  %inc251 = add nsw i32 %200, 1
  store i32 %inc251, i32* %i236, align 4
  br label %for.cond.237

for.end.252:                                      ; preds = %land.end.242
  %201 = load i32*, i32** %keyvals, align 8
  %202 = bitcast i32* %201 to i8*
  call void @g_free(i8* %202)
  br label %if.end.253

if.end.253:                                       ; preds = %for.end.252, %sw.bb.231
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.253, %if.end.230, %if.end.142, %if.end.92
  br label %while.cond

while.end:                                        ; preds = %land.end
  %203 = load %struct._GdkKeymapKey*, %struct._GdkKeymapKey** %keys, align 8
  %tobool254 = icmp ne %struct._GdkKeymapKey* %203, null
  br i1 %tobool254, label %if.then.255, label %if.end.295

if.then.255:                                      ; preds = %while.end
  store i32 0, i32* %i, align 4
  br label %for.cond.256

for.cond.256:                                     ; preds = %for.inc.292, %if.then.255
  %204 = load i32, i32* %i, align 4
  %205 = load i32, i32* %num_keys, align 4
  %cmp257 = icmp slt i32 %204, %205
  br i1 %cmp257, label %for.body.259, label %for.end.294

for.body.259:                                     ; preds = %for.cond.256
  %206 = load %struct._XDisplay*, %struct._XDisplay** %x_dpy, align 8
  %207 = load i32, i32* %i, align 4
  %idxprom260 = sext i32 %207 to i64
  %208 = load %struct._GdkKeymapKey*, %struct._GdkKeymapKey** %keys, align 8
  %arrayidx261 = getelementptr inbounds %struct._GdkKeymapKey, %struct._GdkKeymapKey* %208, i64 %idxprom260
  %keycode262 = getelementptr inbounds %struct._GdkKeymapKey, %struct._GdkKeymapKey* %arrayidx261, i32 0, i32 0
  %209 = load i32, i32* %keycode262, align 4
  %210 = load i64, i64* %x_root, align 8
  %call263 = call i32 @XUngrabKey(%struct._XDisplay* %206, i32 %209, i32 0, i64 %210)
  %211 = load %struct._XDisplay*, %struct._XDisplay** %x_dpy, align 8
  %212 = load i32, i32* %i, align 4
  %idxprom264 = sext i32 %212 to i64
  %213 = load %struct._GdkKeymapKey*, %struct._GdkKeymapKey** %keys, align 8
  %arrayidx265 = getelementptr inbounds %struct._GdkKeymapKey, %struct._GdkKeymapKey* %213, i64 %idxprom264
  %keycode266 = getelementptr inbounds %struct._GdkKeymapKey, %struct._GdkKeymapKey* %arrayidx265, i32 0, i32 0
  %214 = load i32, i32* %keycode266, align 4
  %215 = load i64, i64* %x_root, align 8
  %call267 = call i32 @XUngrabKey(%struct._XDisplay* %211, i32 %214, i32 2, i64 %215)
  %216 = load %struct._XDisplay*, %struct._XDisplay** %x_dpy, align 8
  %217 = load i32, i32* %i, align 4
  %idxprom268 = sext i32 %217 to i64
  %218 = load %struct._GdkKeymapKey*, %struct._GdkKeymapKey** %keys, align 8
  %arrayidx269 = getelementptr inbounds %struct._GdkKeymapKey, %struct._GdkKeymapKey* %218, i64 %idxprom268
  %keycode270 = getelementptr inbounds %struct._GdkKeymapKey, %struct._GdkKeymapKey* %arrayidx269, i32 0, i32 0
  %219 = load i32, i32* %keycode270, align 4
  %220 = load i64, i64* %x_root, align 8
  %call271 = call i32 @XUngrabKey(%struct._XDisplay* %216, i32 %219, i32 16, i64 %220)
  %221 = load %struct._XDisplay*, %struct._XDisplay** %x_dpy, align 8
  %222 = load i32, i32* %i, align 4
  %idxprom272 = sext i32 %222 to i64
  %223 = load %struct._GdkKeymapKey*, %struct._GdkKeymapKey** %keys, align 8
  %arrayidx273 = getelementptr inbounds %struct._GdkKeymapKey, %struct._GdkKeymapKey* %223, i64 %idxprom272
  %keycode274 = getelementptr inbounds %struct._GdkKeymapKey, %struct._GdkKeymapKey* %arrayidx273, i32 0, i32 0
  %224 = load i32, i32* %keycode274, align 4
  %225 = load i64, i64* %x_root, align 8
  %call275 = call i32 @XUngrabKey(%struct._XDisplay* %221, i32 %224, i32 128, i64 %225)
  %226 = load %struct._XDisplay*, %struct._XDisplay** %x_dpy, align 8
  %227 = load i32, i32* %i, align 4
  %idxprom276 = sext i32 %227 to i64
  %228 = load %struct._GdkKeymapKey*, %struct._GdkKeymapKey** %keys, align 8
  %arrayidx277 = getelementptr inbounds %struct._GdkKeymapKey, %struct._GdkKeymapKey* %228, i64 %idxprom276
  %keycode278 = getelementptr inbounds %struct._GdkKeymapKey, %struct._GdkKeymapKey* %arrayidx277, i32 0, i32 0
  %229 = load i32, i32* %keycode278, align 4
  %230 = load i64, i64* %x_root, align 8
  %call279 = call i32 @XUngrabKey(%struct._XDisplay* %226, i32 %229, i32 18, i64 %230)
  %231 = load %struct._XDisplay*, %struct._XDisplay** %x_dpy, align 8
  %232 = load i32, i32* %i, align 4
  %idxprom280 = sext i32 %232 to i64
  %233 = load %struct._GdkKeymapKey*, %struct._GdkKeymapKey** %keys, align 8
  %arrayidx281 = getelementptr inbounds %struct._GdkKeymapKey, %struct._GdkKeymapKey* %233, i64 %idxprom280
  %keycode282 = getelementptr inbounds %struct._GdkKeymapKey, %struct._GdkKeymapKey* %arrayidx281, i32 0, i32 0
  %234 = load i32, i32* %keycode282, align 4
  %235 = load i64, i64* %x_root, align 8
  %call283 = call i32 @XUngrabKey(%struct._XDisplay* %231, i32 %234, i32 130, i64 %235)
  %236 = load %struct._XDisplay*, %struct._XDisplay** %x_dpy, align 8
  %237 = load i32, i32* %i, align 4
  %idxprom284 = sext i32 %237 to i64
  %238 = load %struct._GdkKeymapKey*, %struct._GdkKeymapKey** %keys, align 8
  %arrayidx285 = getelementptr inbounds %struct._GdkKeymapKey, %struct._GdkKeymapKey* %238, i64 %idxprom284
  %keycode286 = getelementptr inbounds %struct._GdkKeymapKey, %struct._GdkKeymapKey* %arrayidx285, i32 0, i32 0
  %239 = load i32, i32* %keycode286, align 4
  %240 = load i64, i64* %x_root, align 8
  %call287 = call i32 @XUngrabKey(%struct._XDisplay* %236, i32 %239, i32 144, i64 %240)
  %241 = load %struct._XDisplay*, %struct._XDisplay** %x_dpy, align 8
  %242 = load i32, i32* %i, align 4
  %idxprom288 = sext i32 %242 to i64
  %243 = load %struct._GdkKeymapKey*, %struct._GdkKeymapKey** %keys, align 8
  %arrayidx289 = getelementptr inbounds %struct._GdkKeymapKey, %struct._GdkKeymapKey* %243, i64 %idxprom288
  %keycode290 = getelementptr inbounds %struct._GdkKeymapKey, %struct._GdkKeymapKey* %arrayidx289, i32 0, i32 0
  %244 = load i32, i32* %keycode290, align 4
  %245 = load i64, i64* %x_root, align 8
  %call291 = call i32 @XUngrabKey(%struct._XDisplay* %241, i32 %244, i32 146, i64 %245)
  br label %for.inc.292

for.inc.292:                                      ; preds = %for.body.259
  %246 = load i32, i32* %i, align 4
  %inc293 = add nsw i32 %246, 1
  store i32 %inc293, i32* %i, align 4
  br label %for.cond.256

for.end.294:                                      ; preds = %for.cond.256
  %247 = load %struct._GdkKeymapKey*, %struct._GdkKeymapKey** %keys, align 8
  %248 = bitcast %struct._GdkKeymapKey* %247 to i8*
  call void @g_free(i8* %248)
  br label %if.end.295

if.end.295:                                       ; preds = %for.end.294, %while.end
  %249 = load i32, i32* %status, align 4
  %cmp296 = icmp eq i32 %249, 0
  br i1 %cmp296, label %if.then.298, label %if.end.300

if.then.298:                                      ; preds = %if.end.295
  %250 = load %struct._XDisplay*, %struct._XDisplay** %x_dpy, align 8
  %call299 = call i32 @XUngrabPointer(%struct._XDisplay* %250, i64 0)
  br label %if.end.300

if.end.300:                                       ; preds = %if.then.298, %if.end.295
  %251 = load %struct._XDisplay*, %struct._XDisplay** %x_dpy, align 8
  %252 = load i64, i64* %x_cursor, align 8
  %call301 = call i32 @XFreeCursor(%struct._XDisplay* %251, i64 %252)
  %253 = load %struct._XGC*, %struct._XGC** %x_gc, align 8
  %cmp302 = icmp ne %struct._XGC* %253, null
  br i1 %cmp302, label %if.then.304, label %if.end.306

if.then.304:                                      ; preds = %if.end.300
  %254 = load %struct._XDisplay*, %struct._XDisplay** %x_dpy, align 8
  %255 = load %struct._XGC*, %struct._XGC** %x_gc, align 8
  %call305 = call i32 @XFreeGC(%struct._XDisplay* %254, %struct._XGC* %255)
  br label %if.end.306

if.end.306:                                       ; preds = %if.then.304, %if.end.300
  %256 = load i64, i64* %x_win, align 8
  %conv307 = trunc i64 %256 to i32
  ret i32 %conv307
}

declare %struct._XDisplay* @gdk_x11_display_get_xdisplay(%struct._GdkDisplay*) #1

declare %struct._GdkDisplay* @gdk_screen_get_display(%struct._GdkScreen*) #1

declare i32 @gdk_x11_screen_get_screen_number(%struct._GdkScreen*) #1

declare i64 @XCreateFontCursor(%struct._XDisplay*, i32) #1

declare i32 @XGrabPointer(%struct._XDisplay*, i64, i32, i32, i32, i32, i64, i64, i64) #1

declare i32 @XQueryPointer(%struct._XDisplay*, i64, i64*, i64*, i32*, i32*, i32*, i32*, i32*) #1

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

declare %struct._XGC* @XCreateGC(%struct._XDisplay*, i64, i64, %struct.XGCValues*) #1

declare %struct._GdkKeymap* @gdk_keymap_get_for_display(%struct._GdkDisplay*) #1

declare i32 @gdk_keymap_get_entries_for_keyval(%struct._GdkKeymap*, i32, %struct._GdkKeymapKey**, i32*) #1

declare void @gdk_error_trap_push() #1

declare i32 @XGrabKey(%struct._XDisplay*, i32, i32, i64, i32, i32, i32) #1

declare void @gdk_flush() #1

declare i32 @gdk_error_trap_pop() #1

declare i32 @XAllowEvents(%struct._XDisplay*, i32, i64) #1

declare i32 @XWindowEvent(%struct._XDisplay*, i64, i64, %union._XEvent*) #1

declare i32 @XDrawRectangle(%struct._XDisplay*, i64, %struct._XGC*, i32, i32, i32, i32) #1

declare i32 @gdk_keymap_get_entries_for_keycode(%struct._GdkKeymap*, i32, %struct._GdkKeymapKey**, i32**, i32*) #1

declare void @g_free(i8*) #1

declare i32 @XUngrabKey(%struct._XDisplay*, i32, i32, i64) #1

declare i32 @XUngrabPointer(%struct._XDisplay*, i64) #1

declare i32 @XFreeCursor(%struct._XDisplay*, i64) #1

declare i32 @XFreeGC(%struct._XDisplay*, %struct._XGC*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: nounwind uwtable
define internal i32 @shoot_main(%struct._GdkScreen* %screen) #0 {
entry:
  %retval = alloca i32, align 4
  %screen.addr = alloca %struct._GdkScreen*, align 8
  %display = alloca %struct._GdkDisplay*, align 8
  %window = alloca %struct._GdkDrawable*, align 8
  %screenshot = alloca %struct._cairo_surface*, align 8
  %shape = alloca %struct._cairo_region*, align 8
  %cr = alloca %struct._cairo*, align 8
  %rect = alloca %struct._GdkRectangle, align 4
  %screen_rect = alloca %struct._GdkRectangle, align 4
  %name = alloca i8*, align 8
  %image = alloca i32, align 4
  %screen_x = alloca i32, align 4
  %screen_y = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store %struct._GdkScreen* %screen, %struct._GdkScreen** %screen.addr, align 8
  store %struct._cairo_region* null, %struct._cairo_region** %shape, align 8
  store i8* null, i8** %name, align 8
  %0 = load %struct._GdkScreen*, %struct._GdkScreen** %screen.addr, align 8
  %cmp = icmp eq %struct._GdkScreen* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._GdkScreen* @gdk_screen_get_default()
  store %struct._GdkScreen* %call, %struct._GdkScreen** %screen.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct._GdkScreen*, %struct._GdkScreen** %screen.addr, align 8
  %call1 = call %struct._GdkDisplay* @gdk_screen_get_display(%struct._GdkScreen* %1)
  store %struct._GdkDisplay* %call1, %struct._GdkDisplay** %display, align 8
  %x2 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %screen_rect, i32 0, i32 0
  store i32 0, i32* %x2, align 4
  %y3 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %screen_rect, i32 0, i32 1
  store i32 0, i32* %y3, align 4
  %2 = load %struct._GdkScreen*, %struct._GdkScreen** %screen.addr, align 8
  %call4 = call i32 @gdk_screen_get_width(%struct._GdkScreen* %2)
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %screen_rect, i32 0, i32 2
  store i32 %call4, i32* %width, align 4
  %3 = load %struct._GdkScreen*, %struct._GdkScreen** %screen.addr, align 8
  %call5 = call i32 @gdk_screen_get_height(%struct._GdkScreen* %3)
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %screen_rect, i32 0, i32 3
  store i32 %call5, i32* %height, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 0), align 4
  %cmp6 = icmp eq i32 %4, 1
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end
  %5 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 4), align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 6), align 4
  %cmp8 = icmp slt i32 %5, %6
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.7
  %7 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 4), align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.7
  %8 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 6), align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ %8, %cond.false ]
  %x9 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 0
  store i32 %cond, i32* %x9, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 5), align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 7), align 4
  %cmp10 = icmp slt i32 %9, %10
  br i1 %cmp10, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %cond.end
  %11 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 5), align 4
  br label %cond.end.13

cond.false.12:                                    ; preds = %cond.end
  %12 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 7), align 4
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.12, %cond.true.11
  %cond14 = phi i32 [ %11, %cond.true.11 ], [ %12, %cond.false.12 ]
  %y15 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 1
  store i32 %cond14, i32* %y15, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 6), align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 4), align 4
  %sub = sub nsw i32 %13, %14
  %cmp16 = icmp slt i32 %sub, 0
  br i1 %cmp16, label %cond.true.17, label %cond.false.20

cond.true.17:                                     ; preds = %cond.end.13
  %15 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 6), align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 4), align 4
  %sub18 = sub nsw i32 %15, %16
  %sub19 = sub nsw i32 0, %sub18
  br label %cond.end.22

cond.false.20:                                    ; preds = %cond.end.13
  %17 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 6), align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 4), align 4
  %sub21 = sub nsw i32 %17, %18
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.20, %cond.true.17
  %cond23 = phi i32 [ %sub19, %cond.true.17 ], [ %sub21, %cond.false.20 ]
  %width24 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 2
  store i32 %cond23, i32* %width24, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 7), align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 5), align 4
  %sub25 = sub nsw i32 %19, %20
  %cmp26 = icmp slt i32 %sub25, 0
  br i1 %cmp26, label %cond.true.27, label %cond.false.30

cond.true.27:                                     ; preds = %cond.end.22
  %21 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 7), align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 5), align 4
  %sub28 = sub nsw i32 %21, %22
  %sub29 = sub nsw i32 0, %sub28
  br label %cond.end.32

cond.false.30:                                    ; preds = %cond.end.22
  %23 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 7), align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 5), align 4
  %sub31 = sub nsw i32 %23, %24
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.30, %cond.true.27
  %cond33 = phi i32 [ %sub29, %cond.true.27 ], [ %sub31, %cond.false.30 ]
  %height34 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 3
  store i32 %cond33, i32* %height34, align 4
  br label %if.end.51

if.else:                                          ; preds = %if.end
  %25 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 0), align 4
  %cmp35 = icmp eq i32 %25, 0
  br i1 %cmp35, label %if.then.36, label %if.else.38

if.then.36:                                       ; preds = %if.else
  %26 = load %struct._GdkScreen*, %struct._GdkScreen** %screen.addr, align 8
  %call37 = call %struct._GdkDrawable* @gdk_screen_get_root_window(%struct._GdkScreen* %26)
  store %struct._GdkDrawable* %call37, %struct._GdkDrawable** %window, align 8
  br label %if.end.40

if.else.38:                                       ; preds = %if.else
  %27 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %28 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 2), align 4
  %call39 = call %struct._GdkDrawable* @get_foreign_window(%struct._GdkDisplay* %27, i32 %28)
  store %struct._GdkDrawable* %call39, %struct._GdkDrawable** %window, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.38, %if.then.36
  %29 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %tobool = icmp ne %struct._GdkDrawable* %29, null
  br i1 %tobool, label %if.end.43, label %if.then.41

if.then.41:                                       ; preds = %if.end.40
  %call42 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.54, i32 0, i32 0)) #4
  call void (i8*, ...) @g_message(i8* %call42)
  store i32 -1, i32* %retval
  br label %return

if.end.43:                                        ; preds = %if.end.40
  %30 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %call44 = call i32 @gdk_window_get_width(%struct._GdkDrawable* %30)
  %width45 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 2
  store i32 %call44, i32* %width45, align 4
  %31 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %call46 = call i32 @gdk_window_get_height(%struct._GdkDrawable* %31)
  %height47 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 3
  store i32 %call46, i32* %height47, align 4
  %32 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %call48 = call i32 @gdk_window_get_origin(%struct._GdkDrawable* %32, i32* %x, i32* %y)
  %33 = load i32, i32* %x, align 4
  %x49 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 0
  store i32 %33, i32* %x49, align 4
  %34 = load i32, i32* %y, align 4
  %y50 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 1
  store i32 %34, i32* %y50, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.43, %cond.end.32
  %call52 = call i32 @gdk_rectangle_intersect(%struct._GdkRectangle* %rect, %struct._GdkRectangle* %screen_rect, %struct._GdkRectangle* %rect)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.end.55, label %if.then.54

if.then.54:                                       ; preds = %if.end.51
  store i32 -1, i32* %retval
  br label %return

if.end.55:                                        ; preds = %if.end.51
  %35 = load %struct._GdkScreen*, %struct._GdkScreen** %screen.addr, align 8
  %call56 = call %struct._GdkDrawable* @gdk_screen_get_root_window(%struct._GdkScreen* %35)
  store %struct._GdkDrawable* %call56, %struct._GdkDrawable** %window, align 8
  %36 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %call57 = call i32 @gdk_window_get_origin(%struct._GdkDrawable* %36, i32* %screen_x, i32* %screen_y)
  %width58 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 2
  %37 = load i32, i32* %width58, align 4
  %height59 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 3
  %38 = load i32, i32* %height59, align 4
  %call60 = call %struct._cairo_surface* @cairo_image_surface_create(i32 1, i32 %37, i32 %38)
  store %struct._cairo_surface* %call60, %struct._cairo_surface** %screenshot, align 8
  %39 = load %struct._cairo_surface*, %struct._cairo_surface** %screenshot, align 8
  %call61 = call %struct._cairo* @cairo_create(%struct._cairo_surface* %39)
  store %struct._cairo* %call61, %struct._cairo** %cr, align 8
  %40 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %41 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %x62 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 0
  %42 = load i32, i32* %x62, align 4
  %43 = load i32, i32* %screen_x, align 4
  %sub63 = sub nsw i32 %42, %43
  %sub64 = sub nsw i32 0, %sub63
  %conv = sitofp i32 %sub64 to double
  %y65 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 1
  %44 = load i32, i32* %y65, align 4
  %45 = load i32, i32* %screen_y, align 4
  %sub66 = sub nsw i32 %44, %45
  %sub67 = sub nsw i32 0, %sub66
  %conv68 = sitofp i32 %sub67 to double
  call void @gdk_cairo_set_source_window(%struct._cairo* %40, %struct._GdkDrawable* %41, double %conv, double %conv68)
  %46 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_paint(%struct._cairo* %46)
  %47 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %47)
  %48 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  call void @gdk_display_beep(%struct._GdkDisplay* %48)
  %49 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 0), align 4
  %cmp69 = icmp eq i32 %49, 2
  br i1 %cmp69, label %if.then.71, label %if.end.81

if.then.71:                                       ; preds = %if.end.55
  %50 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %51 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 2), align 4
  %call72 = call i8* @window_get_title(%struct._GdkDisplay* %50, i32 %51)
  store i8* %call72, i8** %name, align 8
  %52 = load %struct._GdkScreen*, %struct._GdkScreen** %screen.addr, align 8
  %53 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 2), align 4
  %call73 = call %struct._cairo_region* @window_get_shape(%struct._GdkScreen* %52, i32 %53)
  store %struct._cairo_region* %call73, %struct._cairo_region** %shape, align 8
  %54 = load %struct._cairo_region*, %struct._cairo_region** %shape, align 8
  %tobool74 = icmp ne %struct._cairo_region* %54, null
  br i1 %tobool74, label %if.then.75, label %if.end.80

if.then.75:                                       ; preds = %if.then.71
  %55 = load %struct._cairo_region*, %struct._cairo_region** %shape, align 8
  %56 = load i32, i32* %x, align 4
  %x76 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 0
  %57 = load i32, i32* %x76, align 4
  %sub77 = sub nsw i32 %56, %57
  %58 = load i32, i32* %y, align 4
  %y78 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 1
  %59 = load i32, i32* %y78, align 4
  %sub79 = sub nsw i32 %58, %59
  call void @cairo_region_translate(%struct._cairo_region* %55, i32 %sub77, i32 %sub79)
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.75, %if.then.71
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.end.55
  %60 = load %struct._cairo_surface*, %struct._cairo_surface** %screenshot, align 8
  %61 = load %struct._cairo_region*, %struct._cairo_region** %shape, align 8
  %62 = load i8*, i8** %name, align 8
  %call82 = call i32 @create_image(%struct._cairo_surface* %60, %struct._cairo_region* %61, i8* %62)
  store i32 %call82, i32* %image, align 4
  %63 = load %struct._cairo_surface*, %struct._cairo_surface** %screenshot, align 8
  call void @cairo_surface_destroy(%struct._cairo_surface* %63)
  %64 = load %struct._cairo_region*, %struct._cairo_region** %shape, align 8
  %tobool83 = icmp ne %struct._cairo_region* %64, null
  br i1 %tobool83, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.end.81
  %65 = load %struct._cairo_region*, %struct._cairo_region** %shape, align 8
  call void @cairo_region_destroy(%struct._cairo_region* %65)
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.84, %if.end.81
  %66 = load i8*, i8** %name, align 8
  call void @g_free(i8* %66)
  %67 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 0), align 4
  %cmp86 = icmp eq i32 %67, 0
  br i1 %cmp86, label %land.lhs.true, label %if.end.90

land.lhs.true:                                    ; preds = %if.end.85
  %68 = load i32, i32* getelementptr inbounds (%struct.ScreenshotValues, %struct.ScreenshotValues* @shootvals, i32 0, i32 8), align 4
  %tobool88 = icmp ne i32 %68, 0
  br i1 %tobool88, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %land.lhs.true
  %69 = load i32, i32* %image, align 4
  %70 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  call void @add_cursor_image(i32 %69, %struct._GdkDisplay* %70)
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.89, %land.lhs.true, %if.end.85
  %71 = load i32, i32* %image, align 4
  store i32 %71, i32* %retval
  br label %return

return:                                           ; preds = %if.end.90, %if.then.54, %if.then.41
  %72 = load i32, i32* %retval
  ret i32 %72
}

declare %struct._GdkScreen* @gdk_screen_get_default() #1

declare i32 @gdk_screen_get_width(%struct._GdkScreen*) #1

declare i32 @gdk_screen_get_height(%struct._GdkScreen*) #1

declare %struct._GdkDrawable* @gdk_screen_get_root_window(%struct._GdkScreen*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GdkDrawable* @get_foreign_window(%struct._GdkDisplay* %display, i32 %window) #0 {
entry:
  %display.addr = alloca %struct._GdkDisplay*, align 8
  %window.addr = alloca i32, align 4
  store %struct._GdkDisplay* %display, %struct._GdkDisplay** %display.addr, align 8
  store i32 %window, i32* %window.addr, align 4
  %0 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display.addr, align 8
  %1 = load i32, i32* %window.addr, align 4
  %conv = zext i32 %1 to i64
  %call = call %struct._GdkDrawable* @gdk_x11_window_foreign_new_for_display(%struct._GdkDisplay* %0, i64 %conv)
  ret %struct._GdkDrawable* %call
}

declare i32 @gdk_window_get_width(%struct._GdkDrawable*) #1

declare i32 @gdk_window_get_height(%struct._GdkDrawable*) #1

declare i32 @gdk_window_get_origin(%struct._GdkDrawable*, i32*, i32*) #1

declare i32 @gdk_rectangle_intersect(%struct._GdkRectangle*, %struct._GdkRectangle*, %struct._GdkRectangle*) #1

declare %struct._cairo_surface* @cairo_image_surface_create(i32, i32, i32) #1

declare %struct._cairo* @cairo_create(%struct._cairo_surface*) #1

declare void @gdk_cairo_set_source_window(%struct._cairo*, %struct._GdkDrawable*, double, double) #1

declare void @cairo_paint(%struct._cairo*) #1

declare void @cairo_destroy(%struct._cairo*) #1

declare void @gdk_display_beep(%struct._GdkDisplay*) #1

; Function Attrs: nounwind uwtable
define internal i8* @window_get_title(%struct._GdkDisplay* %display, i32 %window) #0 {
entry:
  %display.addr = alloca %struct._GdkDisplay*, align 8
  %window.addr = alloca i32, align 4
  store %struct._GdkDisplay* %display, %struct._GdkDisplay** %display.addr, align 8
  store i32 %window, i32* %window.addr, align 4
  %0 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display.addr, align 8
  %1 = load i32, i32* %window.addr, align 4
  %call = call i8* @window_get_utf8_property(%struct._GdkDisplay* %0, i32 %1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.55, i32 0, i32 0))
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._cairo_region* @window_get_shape(%struct._GdkScreen* %screen, i32 %window) #0 {
entry:
  %screen.addr = alloca %struct._GdkScreen*, align 8
  %window.addr = alloca i32, align 4
  %shape = alloca %struct._cairo_region*, align 8
  %rects = alloca %struct.XRectangle*, align 8
  %rect_count = alloca i32, align 4
  %rect_order = alloca i32, align 4
  %i = alloca i32, align 4
  %rect = alloca %struct._cairo_rectangle_int, align 4
  store %struct._GdkScreen* %screen, %struct._GdkScreen** %screen.addr, align 8
  store i32 %window, i32* %window.addr, align 4
  store %struct._cairo_region* null, %struct._cairo_region** %shape, align 8
  %0 = load %struct._GdkScreen*, %struct._GdkScreen** %screen.addr, align 8
  %call = call %struct._GdkDisplay* @gdk_screen_get_display(%struct._GdkScreen* %0)
  %call1 = call %struct._XDisplay* @gdk_x11_display_get_xdisplay(%struct._GdkDisplay* %call)
  %1 = load i32, i32* %window.addr, align 4
  %conv = zext i32 %1 to i64
  %call2 = call %struct.XRectangle* @XShapeGetRectangles(%struct._XDisplay* %call1, i64 %conv, i32 0, i32* %rect_count, i32* %rect_order)
  store %struct.XRectangle* %call2, %struct.XRectangle** %rects, align 8
  %2 = load %struct.XRectangle*, %struct.XRectangle** %rects, align 8
  %tobool = icmp ne %struct.XRectangle* %2, null
  br i1 %tobool, label %if.then, label %if.end.24

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %rect_count, align 4
  %cmp = icmp sgt i32 %3, 1
  br i1 %cmp, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %call5 = call %struct._cairo_region* @cairo_region_create()
  store %struct._cairo_region* %call5, %struct._cairo_region** %shape, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.4
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %rect_count, align 4
  %cmp6 = icmp slt i32 %4, %5
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %x = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rect, i32 0, i32 0
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.XRectangle*, %struct.XRectangle** %rects, align 8
  %arrayidx = getelementptr inbounds %struct.XRectangle, %struct.XRectangle* %7, i64 %idxprom
  %x8 = getelementptr inbounds %struct.XRectangle, %struct.XRectangle* %arrayidx, i32 0, i32 0
  %8 = load i16, i16* %x8, align 2
  %conv9 = sext i16 %8 to i32
  store i32 %conv9, i32* %x, align 4
  %y = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rect, i32 0, i32 1
  %9 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %9 to i64
  %10 = load %struct.XRectangle*, %struct.XRectangle** %rects, align 8
  %arrayidx11 = getelementptr inbounds %struct.XRectangle, %struct.XRectangle* %10, i64 %idxprom10
  %y12 = getelementptr inbounds %struct.XRectangle, %struct.XRectangle* %arrayidx11, i32 0, i32 1
  %11 = load i16, i16* %y12, align 2
  %conv13 = sext i16 %11 to i32
  store i32 %conv13, i32* %y, align 4
  %width = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rect, i32 0, i32 2
  %12 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %12 to i64
  %13 = load %struct.XRectangle*, %struct.XRectangle** %rects, align 8
  %arrayidx15 = getelementptr inbounds %struct.XRectangle, %struct.XRectangle* %13, i64 %idxprom14
  %width16 = getelementptr inbounds %struct.XRectangle, %struct.XRectangle* %arrayidx15, i32 0, i32 2
  %14 = load i16, i16* %width16, align 2
  %conv17 = zext i16 %14 to i32
  store i32 %conv17, i32* %width, align 4
  %height = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rect, i32 0, i32 3
  %15 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %15 to i64
  %16 = load %struct.XRectangle*, %struct.XRectangle** %rects, align 8
  %arrayidx19 = getelementptr inbounds %struct.XRectangle, %struct.XRectangle* %16, i64 %idxprom18
  %height20 = getelementptr inbounds %struct.XRectangle, %struct.XRectangle* %arrayidx19, i32 0, i32 3
  %17 = load i16, i16* %height20, align 2
  %conv21 = zext i16 %17 to i32
  store i32 %conv21, i32* %height, align 4
  %18 = load %struct._cairo_region*, %struct._cairo_region** %shape, align 8
  %call22 = call i32 @cairo_region_union_rectangle(%struct._cairo_region* %18, %struct._cairo_rectangle_int* %rect)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %20 = load %struct.XRectangle*, %struct.XRectangle** %rects, align 8
  %21 = bitcast %struct.XRectangle* %20 to i8*
  %call23 = call i32 @XFree(i8* %21)
  br label %if.end.24

if.end.24:                                        ; preds = %if.end, %entry
  %22 = load %struct._cairo_region*, %struct._cairo_region** %shape, align 8
  ret %struct._cairo_region* %22
}

declare void @cairo_region_translate(%struct._cairo_region*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @create_image(%struct._cairo_surface* %surface, %struct._cairo_region* %shape, i8* %name) #0 {
entry:
  %surface.addr = alloca %struct._cairo_surface*, align 8
  %shape.addr = alloca %struct._cairo_region*, align 8
  %name.addr = alloca i8*, align 8
  %image = alloca i32, align 4
  %layer = alloca i32, align 4
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %comment = alloca i8*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %parasite = alloca %struct._GimpParasite*, align 8
  store %struct._cairo_surface* %surface, %struct._cairo_surface** %surface.addr, align 8
  store %struct._cairo_region* %shape, %struct._cairo_region** %shape.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.57, i32 0, i32 0)) #4
  %call1 = call i32 @gimp_progress_init(i8* %call)
  %0 = load %struct._cairo_surface*, %struct._cairo_surface** %surface.addr, align 8
  %call2 = call i32 @cairo_image_surface_get_width(%struct._cairo_surface* %0)
  store i32 %call2, i32* %width, align 4
  %1 = load %struct._cairo_surface*, %struct._cairo_surface** %surface.addr, align 8
  %call3 = call i32 @cairo_image_surface_get_height(%struct._cairo_surface* %1)
  store i32 %call3, i32* %height, align 4
  %2 = load i32, i32* %width, align 4
  %3 = load i32, i32* %height, align 4
  %call4 = call i32 @gimp_image_new(i32 %2, i32 %3, i32 0)
  store i32 %call4, i32* %image, align 4
  %4 = load i32, i32* %image, align 4
  %call5 = call i32 @gimp_image_undo_disable(i32 %4)
  %call6 = call i32 @gimp_get_monitor_resolution(double* %xres, double* %yres)
  %5 = load i32, i32* %image, align 4
  %6 = load double, double* %xres, align 8
  %7 = load double, double* %yres, align 8
  %call7 = call i32 @gimp_image_set_resolution(i32 %5, double %6, double %7)
  %call8 = call i8* @gimp_get_default_comment()
  store i8* %call8, i8** %comment, align 8
  %8 = load i8*, i8** %comment, align 8
  %tobool = icmp ne i8* %8, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i8*, i8** %comment, align 8
  %call9 = call i64 @strlen(i8* %9) #7
  %add = add i64 %call9, 1
  %conv = trunc i64 %add to i32
  %10 = load i8*, i8** %comment, align 8
  %call10 = call %struct._GimpParasite* @gimp_parasite_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i32 0, i32 0), i32 1, i32 %conv, i8* %10)
  store %struct._GimpParasite* %call10, %struct._GimpParasite** %parasite, align 8
  %11 = load i32, i32* %image, align 4
  %12 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %call11 = call i32 @gimp_image_attach_parasite(i32 %11, %struct._GimpParasite* %12)
  %13 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %13)
  %14 = load i8*, i8** %comment, align 8
  call void @g_free(i8* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load i32, i32* %image, align 4
  %16 = load i8*, i8** %name.addr, align 8
  %tobool12 = icmp ne i8* %16, null
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %17 = load i8*, i8** %name.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0)) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %17, %cond.true ], [ %call13, %cond.false ]
  %18 = load %struct._cairo_surface*, %struct._cairo_surface** %surface.addr, align 8
  %call14 = call i32 @gimp_layer_new_from_surface(i32 %15, i8* %cond, %struct._cairo_surface* %18, double 0.000000e+00, double 1.000000e+00)
  store i32 %call14, i32* %layer, align 4
  %19 = load i32, i32* %image, align 4
  %20 = load i32, i32* %layer, align 4
  %call15 = call i32 @gimp_image_insert_layer(i32 %19, i32 %20, i32 -1, i32 0)
  %21 = load %struct._cairo_region*, %struct._cairo_region** %shape.addr, align 8
  %tobool16 = icmp ne %struct._cairo_region* %21, null
  br i1 %tobool16, label %land.lhs.true, label %if.end.27

land.lhs.true:                                    ; preds = %cond.end
  %22 = load %struct._cairo_region*, %struct._cairo_region** %shape.addr, align 8
  %call17 = call i32 @cairo_region_is_empty(%struct._cairo_region* %22)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end.27, label %if.then.19

if.then.19:                                       ; preds = %land.lhs.true
  %23 = load i32, i32* %image, align 4
  %24 = load %struct._cairo_region*, %struct._cairo_region** %shape.addr, align 8
  call void @image_select_shape(i32 %23, %struct._cairo_region* %24)
  %25 = load i32, i32* %image, align 4
  %call20 = call i32 @gimp_selection_is_empty(i32 %25)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.end.26, label %if.then.22

if.then.22:                                       ; preds = %if.then.19
  %26 = load i32, i32* %layer, align 4
  %call23 = call i32 @gimp_layer_add_alpha(i32 %26)
  %27 = load i32, i32* %layer, align 4
  %call24 = call i32 @gimp_edit_clear(i32 %27)
  %28 = load i32, i32* %image, align 4
  %call25 = call i32 @gimp_selection_none(i32 %28)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.22, %if.then.19
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %land.lhs.true, %cond.end
  %29 = load i32, i32* %image, align 4
  %call28 = call i32 @gimp_image_undo_enable(i32 %29)
  %30 = load i32, i32* %image, align 4
  ret i32 %30
}

declare void @cairo_surface_destroy(%struct._cairo_surface*) #1

declare void @cairo_region_destroy(%struct._cairo_region*) #1

; Function Attrs: nounwind uwtable
define internal void @add_cursor_image(i32 %image, %struct._GdkDisplay* %display) #0 {
entry:
  %image.addr = alloca i32, align 4
  %display.addr = alloca %struct._GdkDisplay*, align 8
  %cursor = alloca %struct.XFixesCursorImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %rgn = alloca %struct._GimpPixelRgn, align 8
  %pr = alloca i8*, align 8
  %layer = alloca i32, align 4
  %active = alloca i32, align 4
  %src = alloca i64*, align 8
  %dest = alloca i8*, align 8
  %x15 = alloca i32, align 4
  %y16 = alloca i32, align 4
  %s = alloca i64*, align 8
  %d = alloca i8*, align 8
  %a = alloca i32, align 4
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  store i32 %image, i32* %image.addr, align 4
  store %struct._GdkDisplay* %display, %struct._GdkDisplay** %display.addr, align 8
  %0 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display.addr, align 8
  %call = call %struct._XDisplay* @gdk_x11_display_get_xdisplay(%struct._GdkDisplay* %0)
  %call1 = call %struct.XFixesCursorImage* @XFixesGetCursorImage(%struct._XDisplay* %call)
  store %struct.XFixesCursorImage* %call1, %struct.XFixesCursorImage** %cursor, align 8
  %1 = load %struct.XFixesCursorImage*, %struct.XFixesCursorImage** %cursor, align 8
  %tobool = icmp ne %struct.XFixesCursorImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %image.addr, align 4
  %call2 = call i32 @gimp_image_get_active_layer(i32 %2)
  store i32 %call2, i32* %active, align 4
  %3 = load i32, i32* %image.addr, align 4
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.59, i32 0, i32 0)) #4
  %4 = load %struct.XFixesCursorImage*, %struct.XFixesCursorImage** %cursor, align 8
  %width = getelementptr inbounds %struct.XFixesCursorImage, %struct.XFixesCursorImage* %4, i32 0, i32 2
  %5 = load i16, i16* %width, align 2
  %conv = zext i16 %5 to i32
  %6 = load %struct.XFixesCursorImage*, %struct.XFixesCursorImage** %cursor, align 8
  %height = getelementptr inbounds %struct.XFixesCursorImage, %struct.XFixesCursorImage* %6, i32 0, i32 3
  %7 = load i16, i16* %height, align 2
  %conv4 = zext i16 %7 to i32
  %call5 = call i32 @gimp_layer_new(i32 %3, i8* %call3, i32 %conv, i32 %conv4, i32 1, double 1.000000e+02, i32 0)
  store i32 %call5, i32* %layer, align 4
  %8 = load i32, i32* %layer, align 4
  %call6 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %8)
  store %struct._GimpDrawable* %call6, %struct._GimpDrawable** %drawable, align 8
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width7 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %10, i32 0, i32 1
  %11 = load i32, i32* %width7, align 4
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height8 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %12, i32 0, i32 2
  %13 = load i32, i32* %height8, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %rgn, %struct._GimpDrawable* %9, i32 0, i32 0, i32 %11, i32 %13, i32 1, i32 0)
  %call9 = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 1, %struct._GimpPixelRgn* %rgn)
  store i8* %call9, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.68, %if.end
  %14 = load i8*, i8** %pr, align 8
  %cmp = icmp ne i8* %14, null
  br i1 %cmp, label %for.body, label %for.end.70

for.body:                                         ; preds = %for.cond
  %15 = load %struct.XFixesCursorImage*, %struct.XFixesCursorImage** %cursor, align 8
  %pixels = getelementptr inbounds %struct.XFixesCursorImage, %struct.XFixesCursorImage* %15, i32 0, i32 7
  %16 = load i64*, i64** %pixels, align 8
  %y = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %rgn, i32 0, i32 5
  %17 = load i32, i32* %y, align 4
  %18 = load %struct.XFixesCursorImage*, %struct.XFixesCursorImage** %cursor, align 8
  %width11 = getelementptr inbounds %struct.XFixesCursorImage, %struct.XFixesCursorImage* %18, i32 0, i32 2
  %19 = load i16, i16* %width11, align 2
  %conv12 = zext i16 %19 to i32
  %mul = mul nsw i32 %17, %conv12
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i64, i64* %16, i64 %idx.ext
  %x = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %rgn, i32 0, i32 4
  %20 = load i32, i32* %x, align 4
  %idx.ext13 = sext i32 %20 to i64
  %add.ptr14 = getelementptr inbounds i64, i64* %add.ptr, i64 %idx.ext13
  store i64* %add.ptr14, i64** %src, align 8
  %data = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %rgn, i32 0, i32 0
  %21 = load i8*, i8** %data, align 8
  store i8* %21, i8** %dest, align 8
  store i32 0, i32* %y16, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.65, %for.body
  %22 = load i32, i32* %y16, align 4
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %rgn, i32 0, i32 7
  %23 = load i32, i32* %h, align 4
  %cmp18 = icmp slt i32 %22, %23
  br i1 %cmp18, label %for.body.20, label %for.end.67

for.body.20:                                      ; preds = %for.cond.17
  %24 = load i64*, i64** %src, align 8
  store i64* %24, i64** %s, align 8
  %25 = load i8*, i8** %dest, align 8
  store i8* %25, i8** %d, align 8
  store i32 0, i32* %x15, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc, %for.body.20
  %26 = load i32, i32* %x15, align 4
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %rgn, i32 0, i32 6
  %27 = load i32, i32* %w, align 4
  %cmp22 = icmp slt i32 %26, %27
  br i1 %cmp22, label %for.body.24, label %for.end

for.body.24:                                      ; preds = %for.cond.21
  %28 = load i64*, i64** %s, align 8
  %29 = load i64, i64* %28, align 8
  %shr = lshr i64 %29, 24
  %and = and i64 %shr, 255
  %conv25 = trunc i64 %and to i32
  store i32 %conv25, i32* %a, align 4
  %30 = load i64*, i64** %s, align 8
  %31 = load i64, i64* %30, align 8
  %shr26 = lshr i64 %31, 16
  %and27 = and i64 %shr26, 255
  %conv28 = trunc i64 %and27 to i32
  store i32 %conv28, i32* %r, align 4
  %32 = load i64*, i64** %s, align 8
  %33 = load i64, i64* %32, align 8
  %shr29 = lshr i64 %33, 8
  %and30 = and i64 %shr29, 255
  %conv31 = trunc i64 %and30 to i32
  store i32 %conv31, i32* %g, align 4
  %34 = load i64*, i64** %s, align 8
  %35 = load i64, i64* %34, align 8
  %shr32 = lshr i64 %35, 0
  %and33 = and i64 %shr32, 255
  %conv34 = trunc i64 %and33 to i32
  store i32 %conv34, i32* %b, align 4
  %36 = load i32, i32* %a, align 4
  %tobool35 = icmp ne i32 %36, 0
  br i1 %tobool35, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.24
  %37 = load i32, i32* %r, align 4
  %mul36 = mul i32 %37, 255
  %38 = load i32, i32* %a, align 4
  %div = udiv i32 %mul36, %38
  br label %cond.end

cond.false:                                       ; preds = %for.body.24
  %39 = load i32, i32* %r, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div, %cond.true ], [ %39, %cond.false ]
  %conv37 = trunc i32 %cond to i8
  %40 = load i8*, i8** %d, align 8
  %arrayidx = getelementptr inbounds i8, i8* %40, i64 0
  store i8 %conv37, i8* %arrayidx, align 1
  %41 = load i32, i32* %a, align 4
  %tobool38 = icmp ne i32 %41, 0
  br i1 %tobool38, label %cond.true.39, label %cond.false.42

cond.true.39:                                     ; preds = %cond.end
  %42 = load i32, i32* %g, align 4
  %mul40 = mul i32 %42, 255
  %43 = load i32, i32* %a, align 4
  %div41 = udiv i32 %mul40, %43
  br label %cond.end.43

cond.false.42:                                    ; preds = %cond.end
  %44 = load i32, i32* %g, align 4
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.42, %cond.true.39
  %cond44 = phi i32 [ %div41, %cond.true.39 ], [ %44, %cond.false.42 ]
  %conv45 = trunc i32 %cond44 to i8
  %45 = load i8*, i8** %d, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %45, i64 1
  store i8 %conv45, i8* %arrayidx46, align 1
  %46 = load i32, i32* %a, align 4
  %tobool47 = icmp ne i32 %46, 0
  br i1 %tobool47, label %cond.true.48, label %cond.false.51

cond.true.48:                                     ; preds = %cond.end.43
  %47 = load i32, i32* %b, align 4
  %mul49 = mul i32 %47, 255
  %48 = load i32, i32* %a, align 4
  %div50 = udiv i32 %mul49, %48
  br label %cond.end.52

cond.false.51:                                    ; preds = %cond.end.43
  %49 = load i32, i32* %b, align 4
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.51, %cond.true.48
  %cond53 = phi i32 [ %div50, %cond.true.48 ], [ %49, %cond.false.51 ]
  %conv54 = trunc i32 %cond53 to i8
  %50 = load i8*, i8** %d, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %50, i64 2
  store i8 %conv54, i8* %arrayidx55, align 1
  %51 = load i32, i32* %a, align 4
  %conv56 = trunc i32 %51 to i8
  %52 = load i8*, i8** %d, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %52, i64 3
  store i8 %conv56, i8* %arrayidx57, align 1
  %53 = load i64*, i64** %s, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %53, i32 1
  store i64* %incdec.ptr, i64** %s, align 8
  %54 = load i8*, i8** %d, align 8
  %add.ptr58 = getelementptr inbounds i8, i8* %54, i64 4
  store i8* %add.ptr58, i8** %d, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end.52
  %55 = load i32, i32* %x15, align 4
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %x15, align 4
  br label %for.cond.21

for.end:                                          ; preds = %for.cond.21
  %56 = load %struct.XFixesCursorImage*, %struct.XFixesCursorImage** %cursor, align 8
  %width59 = getelementptr inbounds %struct.XFixesCursorImage, %struct.XFixesCursorImage* %56, i32 0, i32 2
  %57 = load i16, i16* %width59, align 2
  %conv60 = zext i16 %57 to i32
  %58 = load i64*, i64** %src, align 8
  %idx.ext61 = sext i32 %conv60 to i64
  %add.ptr62 = getelementptr inbounds i64, i64* %58, i64 %idx.ext61
  store i64* %add.ptr62, i64** %src, align 8
  %rowstride = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %rgn, i32 0, i32 3
  %59 = load i32, i32* %rowstride, align 4
  %60 = load i8*, i8** %dest, align 8
  %idx.ext63 = sext i32 %59 to i64
  %add.ptr64 = getelementptr inbounds i8, i8* %60, i64 %idx.ext63
  store i8* %add.ptr64, i8** %dest, align 8
  br label %for.inc.65

for.inc.65:                                       ; preds = %for.end
  %61 = load i32, i32* %y16, align 4
  %inc66 = add nsw i32 %61, 1
  store i32 %inc66, i32* %y16, align 4
  br label %for.cond.17

for.end.67:                                       ; preds = %for.cond.17
  br label %for.inc.68

for.inc.68:                                       ; preds = %for.end.67
  %62 = load i8*, i8** %pr, align 8
  %call69 = call i8* @gimp_pixel_rgns_process(i8* %62)
  store i8* %call69, i8** %pr, align 8
  br label %for.cond

for.end.70:                                       ; preds = %for.cond
  %63 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %63)
  %64 = load i32, i32* %image.addr, align 4
  %65 = load i32, i32* %layer, align 4
  %call71 = call i32 @gimp_image_insert_layer(i32 %64, i32 %65, i32 -1, i32 -1)
  %66 = load i32, i32* %layer, align 4
  %67 = load %struct.XFixesCursorImage*, %struct.XFixesCursorImage** %cursor, align 8
  %x72 = getelementptr inbounds %struct.XFixesCursorImage, %struct.XFixesCursorImage* %67, i32 0, i32 0
  %68 = load i16, i16* %x72, align 2
  %conv73 = sext i16 %68 to i32
  %69 = load %struct.XFixesCursorImage*, %struct.XFixesCursorImage** %cursor, align 8
  %xhot = getelementptr inbounds %struct.XFixesCursorImage, %struct.XFixesCursorImage* %69, i32 0, i32 4
  %70 = load i16, i16* %xhot, align 2
  %conv74 = zext i16 %70 to i32
  %sub = sub nsw i32 %conv73, %conv74
  %71 = load %struct.XFixesCursorImage*, %struct.XFixesCursorImage** %cursor, align 8
  %y75 = getelementptr inbounds %struct.XFixesCursorImage, %struct.XFixesCursorImage* %71, i32 0, i32 1
  %72 = load i16, i16* %y75, align 2
  %conv76 = sext i16 %72 to i32
  %73 = load %struct.XFixesCursorImage*, %struct.XFixesCursorImage** %cursor, align 8
  %yhot = getelementptr inbounds %struct.XFixesCursorImage, %struct.XFixesCursorImage* %73, i32 0, i32 5
  %74 = load i16, i16* %yhot, align 2
  %conv77 = zext i16 %74 to i32
  %sub78 = sub nsw i32 %conv76, %conv77
  %call79 = call i32 @gimp_layer_set_offsets(i32 %66, i32 %sub, i32 %sub78)
  %75 = load i32, i32* %image.addr, align 4
  %76 = load i32, i32* %active, align 4
  %call80 = call i32 @gimp_image_set_active_layer(i32 %75, i32 %76)
  br label %return

return:                                           ; preds = %for.end.70, %if.then
  ret void
}

declare %struct._GdkDrawable* @gdk_x11_window_foreign_new_for_display(%struct._GdkDisplay*, i64) #1

; Function Attrs: nounwind uwtable
define internal i8* @window_get_utf8_property(%struct._GdkDisplay* %display, i32 %window, i8* %name) #0 {
entry:
  %retval = alloca i8*, align 8
  %display.addr = alloca %struct._GdkDisplay*, align 8
  %window.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %retval1 = alloca i8*, align 8
  %utf8_string = alloca i64, align 8
  %type = alloca i64, align 8
  %val = alloca i8*, align 8
  %nitems = alloca i64, align 8
  %after = alloca i64, align 8
  %format = alloca i32, align 4
  store %struct._GdkDisplay* %display, %struct._GdkDisplay** %display.addr, align 8
  store i32 %window, i32* %window.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  store i8* null, i8** %retval1, align 8
  store i64 0, i64* %type, align 8
  store i8* null, i8** %val, align 8
  store i64 0, i64* %nitems, align 8
  store i64 0, i64* %after, align 8
  store i32 0, i32* %format, align 4
  %0 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display.addr, align 8
  %call = call i64 @gdk_x11_get_xatom_by_name_for_display(%struct._GdkDisplay* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i32 0, i32 0))
  store i64 %call, i64* %utf8_string, align 8
  %1 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display.addr, align 8
  %call2 = call %struct._XDisplay* @gdk_x11_display_get_xdisplay(%struct._GdkDisplay* %1)
  %2 = load i32, i32* %window.addr, align 4
  %conv = zext i32 %2 to i64
  %3 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display.addr, align 8
  %4 = load i8*, i8** %name.addr, align 8
  %call3 = call i64 @gdk_x11_get_xatom_by_name_for_display(%struct._GdkDisplay* %3, i8* %4)
  %5 = load i64, i64* %utf8_string, align 8
  %call4 = call i32 @XGetWindowProperty(%struct._XDisplay* %call2, i64 %conv, i64 %call3, i64 0, i64 9223372036854775807, i32 0, i64 %5, i64* %type, i32* %format, i64* %nitems, i64* %after, i8** %val)
  %6 = load i64, i64* %type, align 8
  %7 = load i64, i64* %utf8_string, align 8
  %cmp = icmp ne i64 %6, %7
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load i32, i32* %format, align 4
  %cmp6 = icmp ne i32 %8, 8
  br i1 %cmp6, label %if.then, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false
  %9 = load i64, i64* %nitems, align 8
  %cmp9 = icmp eq i64 %9, 0
  br i1 %cmp9, label %if.then, label %if.end.13

if.then:                                          ; preds = %lor.lhs.false.8, %lor.lhs.false, %entry
  %10 = load i8*, i8** %val, align 8
  %tobool = icmp ne i8* %10, null
  br i1 %tobool, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then
  %11 = load i8*, i8** %val, align 8
  %call12 = call i32 @XFree(i8* %11)
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.then
  store i8* null, i8** %retval
  br label %return

if.end.13:                                        ; preds = %lor.lhs.false.8
  %12 = load i8*, i8** %val, align 8
  %13 = load i64, i64* %nitems, align 8
  %call14 = call i32 @g_utf8_validate(i8* %12, i64 %13, i8** null)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.13
  %14 = load i8*, i8** %val, align 8
  %15 = load i64, i64* %nitems, align 8
  %call17 = call noalias i8* @g_strndup(i8* %14, i64 %15)
  store i8* %call17, i8** %retval1, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.end.13
  %16 = load i8*, i8** %val, align 8
  %call19 = call i32 @XFree(i8* %16)
  %17 = load i8*, i8** %retval1, align 8
  store i8* %17, i8** %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.end
  %18 = load i8*, i8** %retval
  ret i8* %18
}

declare i64 @gdk_x11_get_xatom_by_name_for_display(%struct._GdkDisplay*, i8*) #1

declare i32 @XGetWindowProperty(%struct._XDisplay*, i64, i64, i64, i64, i32, i64, i64*, i32*, i64*, i64*, i8**) #1

declare i32 @XFree(i8*) #1

declare i32 @g_utf8_validate(i8*, i64, i8**) #1

declare noalias i8* @g_strndup(i8*, i64) #1

declare %struct.XRectangle* @XShapeGetRectangles(%struct._XDisplay*, i64, i32, i32*, i32*) #1

declare %struct._cairo_region* @cairo_region_create() #1

declare i32 @cairo_region_union_rectangle(%struct._cairo_region*, %struct._cairo_rectangle_int*) #1

declare i32 @gimp_progress_init(i8*) #1

declare i32 @cairo_image_surface_get_width(%struct._cairo_surface*) #1

declare i32 @cairo_image_surface_get_height(%struct._cairo_surface*) #1

declare i32 @gimp_image_new(i32, i32, i32) #1

declare i32 @gimp_image_undo_disable(i32) #1

declare i32 @gimp_get_monitor_resolution(double*, double*) #1

declare i32 @gimp_image_set_resolution(i32, double, double) #1

declare i8* @gimp_get_default_comment() #1

declare %struct._GimpParasite* @gimp_parasite_new(i8*, i32, i32, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare i32 @gimp_image_attach_parasite(i32, %struct._GimpParasite*) #1

declare void @gimp_parasite_free(%struct._GimpParasite*) #1

declare i32 @gimp_layer_new_from_surface(i32, i8*, %struct._cairo_surface*, double, double) #1

declare i32 @gimp_image_insert_layer(i32, i32, i32, i32) #1

declare i32 @cairo_region_is_empty(%struct._cairo_region*) #1

; Function Attrs: nounwind uwtable
define internal void @image_select_shape(i32 %image, %struct._cairo_region* %shape) #0 {
entry:
  %image.addr = alloca i32, align 4
  %shape.addr = alloca %struct._cairo_region*, align 8
  %num_rects = alloca i32, align 4
  %i = alloca i32, align 4
  %rect = alloca %struct._cairo_rectangle_int, align 4
  store i32 %image, i32* %image.addr, align 4
  store %struct._cairo_region* %shape, %struct._cairo_region** %shape.addr, align 8
  %0 = load i32, i32* %image.addr, align 4
  %call = call i32 @gimp_selection_none(i32 %0)
  %1 = load %struct._cairo_region*, %struct._cairo_region** %shape.addr, align 8
  %call1 = call i32 @cairo_region_num_rectangles(%struct._cairo_region* %1)
  store i32 %call1, i32* %num_rects, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %num_rects, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct._cairo_region*, %struct._cairo_region** %shape.addr, align 8
  %5 = load i32, i32* %i, align 4
  call void @cairo_region_get_rectangle(%struct._cairo_region* %4, i32 %5, %struct._cairo_rectangle_int* %rect)
  %6 = load i32, i32* %image.addr, align 4
  %x = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rect, i32 0, i32 0
  %7 = load i32, i32* %x, align 4
  %conv = sitofp i32 %7 to double
  %y = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rect, i32 0, i32 1
  %8 = load i32, i32* %y, align 4
  %conv2 = sitofp i32 %8 to double
  %width = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rect, i32 0, i32 2
  %9 = load i32, i32* %width, align 4
  %conv3 = sitofp i32 %9 to double
  %height = getelementptr inbounds %struct._cairo_rectangle_int, %struct._cairo_rectangle_int* %rect, i32 0, i32 3
  %10 = load i32, i32* %height, align 4
  %conv4 = sitofp i32 %10 to double
  %call5 = call i32 @gimp_image_select_rectangle(i32 %6, i32 0, double %conv, double %conv2, double %conv3, double %conv4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %image.addr, align 4
  %call6 = call i32 @gimp_selection_invert(i32 %12)
  ret void
}

declare i32 @gimp_selection_is_empty(i32) #1

declare i32 @gimp_layer_add_alpha(i32) #1

declare i32 @gimp_edit_clear(i32) #1

declare i32 @gimp_selection_none(i32) #1

declare i32 @gimp_image_undo_enable(i32) #1

declare i32 @cairo_region_num_rectangles(%struct._cairo_region*) #1

declare void @cairo_region_get_rectangle(%struct._cairo_region*, i32, %struct._cairo_rectangle_int*) #1

declare i32 @gimp_image_select_rectangle(i32, i32, double, double, double, double) #1

declare i32 @gimp_selection_invert(i32) #1

declare %struct.XFixesCursorImage* @XFixesGetCursorImage(%struct._XDisplay*) #1

declare i32 @gimp_image_get_active_layer(i32) #1

declare i32 @gimp_layer_new(i32, i8*, i32, i32, i32, double, i32) #1

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare i8* @gimp_pixel_rgns_register(i32, ...) #1

declare i8* @gimp_pixel_rgns_process(i8*) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare i32 @gimp_layer_set_offsets(i32, i32, i32) #1

declare i32 @gimp_image_set_active_layer(i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
