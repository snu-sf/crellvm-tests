; ModuleID = './plug-ins/common/video.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.VideoValues = type { i32, i32, i32 }
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
%struct._GtkRadioButton = type { %struct._GtkCheckButton, %struct._GSList* }
%struct._GtkCheckButton = type { %struct._GtkToggleButton }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpRgnIterator = type opaque
%struct._GimpPreviewArea = type { %struct._GtkDrawingArea, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [6 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.11, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"pattern-number\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Type of RGB pattern to use\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"additive\00", align 1
@.str.9 = private unnamed_addr constant [59 x i8] c"Whether the function adds the result to the original image\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"rotated\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"Whether to rotate the RGB pattern by ninety degrees\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"plug-in-video\00", align 1
@.str.13 = private unnamed_addr constant [59 x i8] c"Simulate distortion produced by a fuzzy or low-res monitor\00", align 1
@.str.14 = private unnamed_addr constant [117 x i8] c"This function simulates the degradation of being on an old low-dotpitch RGB video monitor to the specified drawable.\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"Adam D. Moss (adam@foxbox.org)\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"2nd March 1997\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"Vi_deo...\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"RGB*\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"<Image>/Filters/Distorts\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.20 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@vvals = internal global %struct.VideoValues { i32 2, i32 1, i32 0 }, align 4
@.str.22 = private unnamed_addr constant [6 x i8] c"Video\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"video\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"gimp-video\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"Video Pattern\00", align 1
@pattern_name = internal global [9 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0)], align 16
@.str.28 = private unnamed_addr constant [15 x i8] c"gimp-item-data\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@preview = internal global %struct._GtkWidget* null, align 8
@.str.30 = private unnamed_addr constant [10 x i8] c"_Additive\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"_Rotated\00", align 1
@in_main_loop = internal global i32 0, align 4
@.str.32 = private unnamed_addr constant [11 x i8] c"_Staggered\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"_Large staggered\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"S_triped\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"_Wide-striped\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"Lo_ng-staggered\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"_3x3\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"Larg_e 3x3\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"_Hex\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"_Dots\00", align 1
@preview_raw = internal constant [30000 x i8] c"\DF\E9\F2\DF\E9\F2\DB\E5\EE\DC\E6\EF\E0\EA\F3\E1\EB\F4\E1\EB\F4\E2\EC\F5\E2\E8\F3\E4\EA\F5\E3\E9\F4\E2\E7\F2\E6\EC\F7\E4\EA\F5\E4\EA\F5\E3\E9\F4\E4\EA\F5\E8\EE\F9\E8\EE\F9\E4\EA\F5\E8\EE\F9\E7\ED\F8\E6\EC\F7\E6\EC\F7\E3\E9\F4\E6\EC\F7\E7\ED\F8\E7\ED\F8\E4\EA\F5\DE\E4\EE\D1\D8\E3\CC\D1\DB\C4\C5\CA\B5\B4\B4\A9\A1\9A\9F\91\81\9F\8Cv\A3\8Bs\9F\85k\9A~f\91w]\8BpU\91sU\8ClM\8BkJ\80dF{dG{_D\80_D\87fK\8EoQ\90rQ\8ErO\8DrK\8BqI\8DmH\8DkJ\8AnR\90|e\94\84q\92\81k\93~f\8CqV\85iJ\84gE\82gG\87kO\86lR\8CqZ\91xb\96|h\96\7Fk\96\82n\9D\8Av\9D\8Cy\A2\94\82\A8\9E\8C\AA\A3\91\B2\AD\9B\C1\B9\A8\D4\C7\B9\DC\D0\C4\E2\D9\D0\E9\E1\D9\F1\EC\E8\EF\EC\EB\F2\F0\F0\FB\F9\FB\FD\FA\FF\FC\FA\FF\FB\FA\FF\FA\FA\FF\F8\F8\FF\F8\F8\FF\F5\F7\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\DC\E5\EF\DE\E7\F1\DE\E7\F1\DE\E7\F1\DE\E7\F1\DE\E7\F1\DC\E5\EF\E2\E8\F2\E2\E8\F3\E3\E9\F4\E6\EB\F7\E4\E9\F2\E9\ED\F7\EA\EE\F8\E7\EC\F5\E6\EB\F7\E7\EE\F8\E7\EE\F8\E4\EA\F5\E3\EA\F4\E4\EA\F5\E6\ED\F7\E2\E9\F3\E8\EE\F9\E6\EB\F7\E4\E9\F5\E4\EB\F7\E6\EE\F9\E5\EB\F8\DB\E2\ED\D3\D9\E2\C6\CB\D2\B8\B8\B8\AF\AA\A7\A6\9A\91\A3\90\80\A0\88p\A3\89o\9C\7Fg\94v_\91uZ\8CqV\8EoT\8ClM\87fH\7FaC~_A}_A\82cE\85fG\88hG\8BmJ\8CnI\8DqJ\8CpF\8BkE\88iF\85hJ\88pS\8Dx^\8Ey`\8Bu[\80fL\7FdCz^;{`?~eG\85kR\8As\5C\8Bu`\94}k\96\80o\93~l\97\84r\99\89x\99\8Ay\99\8F~\A2\9B\8A\AB\A5\95\BA\B2\A2\C7\BF\B2\D3\CB\C1\DD\D5\CC\E8\E2\DD\EF\E8\E6\F1\EA\EA\F5\F1\F2\F4\F1\F5\F5\F5\F9\F6\F6\FB\F5\F5\F9\FA\FA\FF\FA\FA\FF\FA\FA\FF\F8\F9\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\E1\E6\F1\E1\E6\F1\E1\E6\F1\E1\E6\F1\E2\E8\F3\E2\E8\F3\E1\E6\F1\E3\E9\F4\E4\E8\F2\E6\EA\F4\E7\EB\F5\E6\EA\F4\E9\ED\F7\EA\EE\F8\E7\EB\F5\EA\EE\F8\E2\E9\F2\E6\ED\F7\E6\ED\F7\E3\EB\F4\E4\EC\F5\E3\EB\F4\E7\EE\F8\E3\EB\F4\E9\EB\F5\E7\EC\F8\E6\ED\FA\E1\EA\F9\D7\E1\EE\D0\D9\E2\CA\D0\D6\B9\BD\C0\AF\AF\AE\AB\A5\A0\A5\98\8D\A3\8D|\9A\80k\9D\7Fg\97ya\92u^\8EpW\8CmS\8AkQ\85eJ\85cG\87dG\85aC\82aA\82bC\87hG\8AkH\87gD\88iC\8AkC\8BlC\88iC\82fC~a?\81cE\86jM\86lP\80fLw^Ft[<oT2rX7lU8{cJ\84oY\85p_\8Awh\90{k\90{k\8D{j\8E~n\90\83t\90\86w\96\8E\80\9C\96\88\A8\A3\96\B1\AD\A2\C8\C3\BA\D3\CF\C9\E1\DC\D8\EB\E4\E4\EE\EA\EB\F7\F3\F5\F3\F1\F5\F5\F6\FA\F8\F9\FD\F6\F7\FB\FA\FB\FF\FA\FB\FF\FA\FB\FF\FA\FB\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\DF\E4\EF\DF\E4\EF\E1\E6\F1\E2\E7\F2\E2\E7\F2\E2\E8\F3\E2\E7\F2\E4\EA\F5\E3\E7\F1\E9\ED\F7\E4\E8\F2\E7\EB\F5\E7\EB\F5\EA\EE\F8\E6\EA\F4\E9\ED\F7\E6\EB\F4\E7\ED\F5\E7\ED\F5\E6\EC\F4\EC\F1\FB\EA\EE\F8\EA\EE\F8\E5\EA\F3\E5\E9\F3\E7\EC\F8\E5\EC\F8\DC\E4\F1\D9\E2\EB\CB\D0\D7\BB\BD\C0\A8\A9\A9\A8\A6\A2\A9\A1\99\A4\97\8A\A0\8C|\9F\86q\96zc\8Er[\87lV\8BnT\8AlR\85gN\82bG}\5C@\7F]@\84cD\86fF\84dE\87hG\8AkH\87hE\86gB\86gB\87hA\86gC}a>{_>x]>rV9sX=oV>hP9gP4fM/gO3kT9wbIzgP\81p\5C\86ub\88vd\8Dxg\91\7Fo\8E}o\86{m\7Fwj\81zm\8A\85z\96\94\89\9F\9F\96\BC\BC\B5\C9\C9\C3\D9\D7\D5\E5\E3\E3\EB\EB\EB\F3\F2\F4\F5\F5\F9\F4\F4\F8\F8\F9\FD\FA\FB\FF\F9\FA\FE\FA\FB\FF\FA\FB\FF\FA\FB\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\DE\E4\EE\DF\E4\EF\E1\E6\F1\E2\E8\F3\E1\E6\F1\E2\E8\F3\E2\E7\F2\E6\EC\F7\E4\E8\F2\E6\EA\F4\E7\EB\F5\E6\EA\F4\E6\EA\F4\E9\ED\F7\E6\EA\F4\E7\EB\F5\E9\ED\F7\E6\EA\F4\E6\EA\F4\E6\EA\F4\EB\F0\FA\EA\EE\F8\EB\F0\FA\EB\EF\F9\E9\ED\F7\E4\EA\F5\DE\E6\F1\D6\DD\E8\CA\D1\D9\BE\C0\C3\AB\AB\AB\A3\A0\9D\A2\9B\92\A0\97\8C\9F\90\81\9F\8Ay\98\82l\8Eu`\8Cr]\84jT\82gL\81dJ}`Fz\5C@\7FaC\82bC\88gG\8ClL\87gH\86fF\87hE\85fC\85fC\88iG\87gD\80c@{_=x[;qT7kP5mS:oV>hP:bJ3fN5cK4cN7fT=hYBteOxiS\85ub\86te\87vh~pcsi^ng]rme}zr\91\91\89\A1\A3\9D\B9\BB\B6\C7\C9\C5\DA\DA\DA\E7\E7\E7\EC\EE\EE\F3\F4\F7\F5\F5\F9\F5\F6\FA\F9\FA\FE\FA\FB\FF\F9\FA\FE\FA\FB\FF\FA\FB\FF\FA\FB\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\DE\E4\EE\DF\E4\EF\DF\E4\EF\E1\E6\F1\E2\E7\F2\E2\E8\F3\E2\E8\F3\E3\E9\F4\E7\EB\F5\E7\EB\F5\E9\ED\F7\E9\ED\F7\E6\EA\F4\EB\EF\F9\E7\EB\F5\E9\ED\F7\E5\E8\F3\EB\EE\F7\EB\EE\F7\E6\E9\F4\ED\F0\F9\EE\F1\FA\F3\F6\FF\EB\F0\FA\E8\EE\F9\E1\E6\F1\DC\E3\EC\D2\D7\DF\C0\C3\C7\B0\AF\AF\9E\97\92\98\90\88\9D\8D\81\9C\8D\7F\9A\89y\9A\89w\90|h\8Au`\81jV~eO\84iN{aGy^Cz^B{]?\86gH\8AjJ\88hG\87hG\84dD\84cB\80`@\85eD\8ClK\88hG\80a@w[;mQ3iN3gL2fM5fN7eL7\5CE/[E0YE0YG2WH4[M8eXCbVArcQsbTteYqeZkcZmhbrpk\84\82~\96\96\93\A9\AC\AA\C0\C3\C1\D0\D2\D2\DC\DF\E0\E8\EB\EC\EC\EF\F3\F4\F6\F8\F4\F5\F8\F6\F7\FB\F9\FA\FE\FA\FB\FF\FA\FB\FF\FA\FB\FF\FA\FB\FF\FA\FB\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\DE\E4\EE\DF\E4\EF\DF\E4\EF\E1\E6\F1\E4\EA\F5\E2\E7\F2\E1\E6\F1\E8\EE\F9\E4\E8\F2\E6\EA\F4\E5\E9\F3\E9\ED\F7\E9\ED\F7\E6\EA\F4\EA\EE\F8\E7\EB\F5\EC\EE\F8\EC\ED\F8\ED\EE\F9\EE\EF\FA\F2\F3\FE\F3\F4\FF\F3\F4\FF\F2\F4\FE\E8\EE\F9\DA\E2\EC\D1\DA\E3\BE\C4\CA\AC\AC\AC\9E\99\95\8E\85{\8C\7Fr\8Byg\91\7Fl\8B|i\88xf\81p]\85s^xdPxbLzaGw]CtY?w\5C@{^@\84eF\8AkK\87hG\85fC\82cA\81aA\82bC\84dE\87gH\88iJ\81bDwZ<lO3aF,_D,mR;hP:bJ6[F1SA,N=)K<)H<)G;*NC3NC3WJ=_QEZODf\5CTwoj\87\83\7F\8A\89\88\9C\9C\9C\AF\B0\B2\C4\C8\CC\D3\D6\D9\E1\E4\E7\E4\E7\EB\EA\ED\F1\F0\F3\F7\F3\F6\FA\F6\F8\FB\F9\FA\FE\F8\F9\FD\F8\F9\FD\FA\FB\FF\F8\F9\FD\F6\F7\FB\F9\FA\FE\F5\F5\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\DE\E4\EE\E1\E6\F1\E2\E8\F3\E3\E9\F4\DE\E4\EE\E7\ED\F8\E3\E9\F4\E4\EA\F5\E6\EA\F4\E9\ED\F7\E9\ED\F7\E7\EB\F5\EB\F0\FA\EA\EE\F8\E9\ED\F7\EB\F0\FA\EE\EE\FA\F1\F1\FD\F5\F5\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\F1\F1\FD\F2\F3\FE\E4\EC\F7\D7\DF\E9\C8\CE\D6\B0\B5\B7\9D\9C\9A\92\8A\82\86vj\84r`\82lV\80mVzjV\7Fo]\85vd\81r_udOwdMs[At[@rY?u]?y\5C?\7FbC\82eE\86fF\85fC\82cA\82bA\81bD~_A\86eJ\8AiO}_AwZ<oS7fK0`G.aH1aH4[D1P>(I8#E7#B6#?3#A7)C:.D<1D;/NC8UKAskc\92\8D\8A\A4\A1\A1\A3\A3\A4\B5\B6\BA\CF\D0\D5\DF\E0\E8\E5\E5\EC\EE\EE\F5\EE\EE\F5\F0\F0\F7\F1\F2\FB\F4\F4\FB\F5\F6\FA\F8\F9\FD\F6\F7\FB\F8\F9\FD\F9\FA\FE\F8\F9\FD\F6\F7\FB\FA\FB\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\E2\E7\F2\E2\E8\F3\E3\E9\F4\E3\E9\F4\E3\E9\F4\E4\EA\F5\E6\EC\F7\DF\E4\EF\D9\DC\E6\E0\E4\EE\EB\F0\FA\EB\F0\FA\EA\EE\F8\EE\F2\FD\EB\F0\FA\EF\F3\FE\F5\F5\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\F4\F4\FE\EF\F0\FB\DB\E4\ED\CF\D8\E1\BA\C1\C8\A5\A6\A8\8C\8A\87\84zqwgWxbMy`GwbItcM{lZ~rb}n\5CweQs`Jr[@nW<sZ@nW:uY<z]?y]=~a>{\5C:xZ8xY9{\5C>\7F`C\85eJ\82bIz[Ax[>sW;oT9nR;]C/[C0W@-Q>'G9 C6\1FA5\22=2$ND8TKB\5CTM`VMaVKe\5CS\80xq\9E\9A\98\B5\B4\B5\BF\BF\C2\D4\D6\DC\E5\E7\F1\EF\EE\FA\EF\EE\FA\F6\F5\FF\F5\F4\FE\F4\F3\FD\F5\F4\FE\F4\F3\FD\F5\F5\F9\F6\F7\FB\F6\F7\FB\F6\F7\FB\F8\F9\FD\F6\F7\FB\FA\FB\FF\FA\FB\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\E4\EA\F2\E2\EA\F3\E0\E9\F3\E0\E9\F3\E8\EF\F9\E9\EC\F2\E0\E0\E0\96\92\92ljg}}|\AB\AE\B0\DE\E5\EC\E6\EE\F7\EA\F3\FB\F3\F7\FF\F0\F3\F9\F3\F5\FA\F8\F8\FF\F4\F3\FF\F4\F1\FD\F5\F3\FF\F3\F3\FF\F3\F5\FF\E5\EA\F3\D9\E0\EB\C7\CB\D5\B1\B3\B8\97\96\97\86~z}mcs_QqZHt\5CEw`IwbN~jW~lZ~lZ\81jXwbMrZ>rW<uY=mQ5tW9xY;wY;xY:wZ7rT3rS4uY=tXA\81fT\85o`\8Aq]\8BoU\80eLy_EuYBtZAcK4[B-VA(M; I:!H:%SG6yoa\91\8A\80\96\91\89\A0\96\8A\93\84s\85vf\97\89{\A9\9C\92\BB\B4\B2\CE\CC\CE\E0\E3\E9\EB\ED\F7\EF\EF\FB\EE\EE\FA\F5\F5\FF\F5\F5\FF\F6\F5\FF\F5\F4\FE\F6\F6\FB\F1\F2\F8\F4\F9\FB\E9\ED\EC\E5\E9\E7\E6\EB\ED\FA\FB\FF\F8\F8\FF\FB\FA\FF\F8\F8\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\E6\EA\ED\E4\EA\F2\E5\EE\F8\E3\F0\F9\E3\EA\F1\F1\F1\F1\D7\CC\C8\A4\94\8A\84xfQK=GF@\5C``\85\8E\92\C0\C9\CE\E3\E9\EE\F3\F7\FA\F5\F7\F9\F1\F1\F5\F6\F4\FE\F4\F0\FF\F2\EE\FF\F3\F3\FF\E7\EC\F5\D8\E2\E8\D0\D4\DD\B7\B8\C0\A2\A0\A4\8B\85\85\85yt}mbtaTnXJlU>s[Cu^F{dM\7FgR\7FgSu]Jx_LsY=uZ=rV9sV:uU;wV;yX=xZ;w[8tV5qR4wZ@\85kW\94\80r\97\8A\82\9F\8A}\9D\82m\93xb\8BpX\85iP\93w\5C\82fKsW<gN0hO0fQ3bP6wfQ\9F\93\80\B6\AD\9F\AA\A4\98\AC\9F\8E\A8\90x\A4\8Br\AE\94|\B7\A0\8C\CC\BA\AE\D9\D0\CC\DE\DE\E0\E5\E5\EC\E4\E2\E8\EA\EA\F1\F2\F2\F9\F5\F6\FF\F4\F4\F8\F1\F1\F5\DF\DF\E1\B3\B5\B8\8F\96\96sypmrf\89\8B\86\E4\E4\E8\F8\F5\FF\FC\FA\FF\F8\F8\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\E8\EC\F1\E5\EB\F3\E5\EE\F8\E6\F0\F9\EE\F7\FD\EA\EA\EC\E2\DA\D7\A9\9A\90\98\84nwgTB;/C@:<=<GMNrz}\CA\CF\D2\ED\F2\F4\F4\F6\FB\F1\F1\FB\F4\F3\FF\F2\F0\FF\E6\E8\F4\DE\E6\EE\D2\DB\DF\C0\C0\C3\A7\A7\A8\90\8E\8E}xu\84|u\85yo{m`qaQgU6lY8oZ<o[>nY?oZBoZDq[EqZ?r[?nU;qV<uY@{^Cy[BuX<uW:tU7oQ4uW=\94{d\A9\93\81\AB\9C\8D\AB\95\84\A2\86o\9E\81i\97x^\90sW\99z\5C\97wX\8DnN\87fE\8EnL\8AkK\86jL\8CqW\A3\8Bs\B0\99\83\A8\93~\A8\8Ev\A3\86i\A6\87i\B7\95w\BC\9B\80\C2\A7\92\CA\B8\AA\CC\C0\BA\CC\C3\C0\DF\D7\D7\DD\D9\DA\F1\F0\F2\E4\E5\E6\C7\C8\C9\96\96\96__^FGH@CBMODYVD\87\7Fs\D0\C8\C8\F8\F4\FB\F8\FA\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\E9\EC\F2\E6\EB\F4\E7\EE\F8\E7\EE\F8\EB\F1\F7\F3\F3\F5\EB\E4\E2\C0\B1\AB\B4\99\80\88oVhWBD:+=7/330588JQS\91\96\97\D3\D6\D9\F4\F5\FE\F2\F4\FE\EE\EF\FD\DB\E0\EB\D7\E0\E7\C3\CB\CF\AB\AA\A8\94\91\8D\82}y}wp\87\80w\91\88}\85|owl[iY8`O-bQ1hV;hV<q^G~jUyfRzcKzaHs\5CCt[C~cK\88kS\80dL}^E{\5CBzZA{]Cz]E\8Bs[\9C\86q\AC\99\87\A6\8Ez\99|d\9F\81h\9E~d\A0\7Fb\9D{Z\9AwU\9AwT\9DxT\A9\81]\A3~Y\9DvU\9CuU\9FzZ\9DwW\9CvX\9ExY\A4\80\5C\B0\87e\B2\88d\B4\8Ag\B5\91s\B4\96~\B8\A2\90\BE\AB\9E\D0\C4\BA\C2\B9\B3\A6\A5\A2\82\82\80MNKAA=?>8;;9GGCE?/l^E\A6\94}\DC\CB\C6\FF\FA\FF\F0\F5\FF\F5\F6\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\E9\EC\F2\EB\EF\F7\EA\EF\F8\EE\F4\FD\ED\F1\F9\F0\F0\F4\FA\F5\F7\DA\D0\CD\CD\AE\96\B2\94v\84iMbO5A4\22<6,33/577132RUU\92\95\99\D6\DB\E1\D5\DA\E2\D5\DB\E2\C0\C9\CC\AB\B2\B2\9A\95\8E\86\7Fvxqh{ti\80ym\88\81s\82{lldU`P5_M2fU;r^G\7FkW\8Cwe\94\7Fn\96\80q\94\80g\90x`\86nV\86mU\8BrY\8Et[\8BqX\8EqY\86fP\8BmX\8AoY\88oY\93|f\88s]\97\81l\97~i\8ErZ\9E\80f\9D}b\9E}^\9CyV\9DyU\9FyS\A0vR\A6zW\A2uQ\9DqM\9FpK\A0sL\98iC\9DmF\AC\7FZ\B8\8Dh\AE\7FW\AF~V\B0\80X\B2\88d\B1\90r\D2\B7\9E\C6\B0\9D\90\82t`XO873:;8/0-99274+>93C<3YJ4\97\81a\CA\B1\98\F4\DF\D7\FE\F9\FD\F0\F6\FF\F5\F6\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\EE\F0\FA\EE\F1\FA\EB\EF\F7\EF\F3\FB\F0\F1\FA\F4\F4\F8\F7\F5\F9\E5\E1\E1\D6\BD\AC\C9\AD\93\B5\95t\90tPfP1=1\1E5/&,+'873664788SWW\89\8E\91\B4\BB\BB\A7\AC\AB\95\98\95\8C\83y~titi^ti]uk]tk[ogWeZK`L7lVA}dP\92zh\98\7Fn\99\80r\98\7Fr\A3\89{\A4\8Bs\9E\86l\97~d\90v]\92x^\9A}e\9E\83i\96yb\91u`\86kY\9A\82q\9C\84u\A2\8Cz\85p_\81l\5C\88q]\A6\8Bu\A9\8Du\A0\82g\9F}`\A0}\5C\A5~Z\A5~X\A2vQ\A0tP\9DpL\9AmI\9CnH\9EoH\9DkB\9Cj@\A3tM\B8\8Cf\AE\7FW\AE}T\A8yQ\A5\80[\9C\7Fa\99\84jl]KA7-84.TUPGJGHJF0/(?9,A6)[J9\85qS\B8\A1~\E0\C8\B1\FF\EF\EB\FE\FA\FF\F0\F5\FF\F5\F6\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\ED\F0\F9\EE\F0\FA\F0\F1\F9\F4\F6\FE\F4\F4\FB\F4\F4\F8\F6\F6\FB\EF\EE\F2\DF\D0\C9\C6\B0\9D\CA\AF\8E\B5\93i\99zP]G(?1 1) (%\1E)(\2222-563*-*BDAjkg\85\84~\82xnwk`reYrdVoaRi[Jn^LrbOyaM\7FfQ\8Ds^\9D\81k\A4\88r\94yd\8Bp[\8Dr[\91wZ\8BtW\8CqV\93w\5C\94v\5C\9A|b\9D}b\8DpY\8Ar^\A8\92\80\9C\8B|\84uj\A6\95\8A\B0\9E\93\91}p\8Cxg\BD\A4\90\B1\97\82\AA\8Ev\AC\8Cp\A4\83c\A0|X\A0zU\9EtQ\9ErO\98mI\91gC\92jB\99pG\A5zP\9FuJ\93iC\9DqM\97kF\98mF\98rL\8BmNubJ>5&-'\1E0-'qqm\AF\B6\B5\88\91\92^a^10(A8)M:'\81eJ\AF\97t\CC\B9\99\E8\DC\CA\FF\FA\FA\FA\F8\FF\F5\F8\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\EA\EE\F8\ED\EF\F9\F0\F0\FA\F3\F3\FA\F4\F4\FB\F3\F3\FA\F7\F7\FE\F4\F5\FB\E7\E5\E5\C7\BA\B0\C8\B0\92\C7\A4x\BB\99g\9A{TaK16)\1B/(\1E($\1C0/(893 \22\1D\1A\1A\17<<5>:3[PGn_Uxh\5C\86tf\80kZ\8Bwb\87q[\8Ew`\94w_\8CoS\8DqT\90rT\8ErQ\8BoL\90tP\8DrM\92vW\88kN\84gJ\AA\8Bl\99y[\98vY\96sW\92x^\8Eze\C2\B2\A2\AF\A3\97\A9\9E\97\BC\B0\AA\BA\A9\A4\AA\98\91\BD\A8\9D\B4\A0\8F\A4\8D{\A4\8Au\9F\83h\97xZ\9AxW\A2}X\A3~Y\A0wU\94pL\91lH\94oJ\9AuO\A3\7FW\9F|R\92lG\92iG\90eA\87c?tU6H6\1F1*\1D\1F\1E\17&&!  \1Ex~~]im~\8A\8D7;:0-%9. sU<\B8\92o\CD\B1\8E\CF\C3\A8\E8\E4\DB\F8\F8\FD\F5\F5\FF\F9\F9\FE\F8\F8\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\EE\F0\F5\EE\F0\F5\F0\F1\F7\F1\F3\F8\F1\F4\FB\F2\F4\F9\F1\F4\F8\F0\F4\FA\E5\E7\EC\D0\CA\C4\C3\B3\9B\CA\B0\84\C9\A7s\BC\9Ah\9A}R`H+<-\1D,#\17% \17\1C\1C\14\1D\1D\15\18\18\11\22 \15\22\1D\13#\1B\10C9*g[K\82sa\8E{g\A8\8Ex\94w^\99y_\9C|a\90rU\90uS\8DpM\94uO\96uM\92qI\93pJ\96sQ\92nN\8BiG\AA\86c\93pM\90mJ\97sO\96wW\91z`\C0\AD\9A\C2\B1\A7\CD\C0\B9\D2\C4\BD\C6\B3\A7\93|m\B4\97\80\A2\85h\97v[\96vW\96sT\96sP\A2{X\A2zU\A2|V\A5~Z\9CtS\9AtR\9F|X\9D{W\9AyU\9AyU\91pP\8ElPwZ>O7\1F;*\182(\1B3/&\1C\1D\18\17\17\15BDCu|}isuU\5C\5C13-7/#`M7\A2\7F[\D7\B0\84\D3\BA\98\CE\C3\B2\E7\E7\E7\F3\F6\FF\F3\F4\FF\FA\F8\FD\F8\F8\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\E8\EA\EF\E8\EA\EF\E9\EC\F2\E9\ED\F5\EB\F0\F7\EE\F1\F7\EB\EE\F4\EE\F1\F5\EF\F0\F8\DB\D8\D7\C7\BB\AA\CA\B6\90\CD\AF\80\CA\A9x\C2\9Do\9F|S[B*9*\17+$\15$\22\15\1A\1A\0F \1E\12\1C\19\0C\22\1C\0D\1F\19\0B \1B\0C*$\16E>.zm\5C\96\83n\9A\80k\A3\86n\B0\8Es\99z\5C\94uS\96vP\9C{R\96qJ\96oH\94jH\91gF\91gF\8Dc@\97mI\92kD\8De=\94lE\9EyT\8BmN\9D\84m\9F\8C}\C2\AE\A3\B8\A5\96\9F\85p\85fH\96pJ\99mG\9CnH\9AmG\99mG\96iD\9DpJ\99mG\9EtN\A2zU\9DtR\9DvR\9FyV\9AvT\9DyX\99wV\87kOr[DG4!- \12/$\18$\1C\14,'\1F&#\1D\1E\1D\19'(%|\7F|\99\9C\99ttl61%QB,\87nO\CE\AA~\DC\B7\89\D7\C0\A2\DD\D2\C7\ED\ED\EF\F2\F5\FE\F5\F5\FF\F9\F6\FD\F8\F8\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\E7\E9\F5\E4\E6\F2\E4\E5\F2\E6\E7\F2\E6\E6\EF\EA\EA\F3\E8\E6\EF\E9\E8\EF\E6\E2\ED\E1\DB\DC\D3\C4\B8\CA\B2\98\C7\A9\84\D0\AD\86\CE\A8\82\C2\9Dy\A4\83cbJ/E5\1E2*\18($\14#\1E\0F\1A\15\08#\1B\0C\1E\17\09$\1D\10 \1C\12-(\1FGA9\97\8D\82\A3\95\8B\98\87y\A3\85g\A2\80^\A2\7FZ\97tI\90i@\91i?\97mD\97kF\97iD\98jE\93fA\94f@\92f>\90d9\90e:\8Ee<\8CgB\90pQ\9F\83k\A2\88p\99}d\88iJ\91lF\9ApF\A4tL\A0pH\9ClD\9DnF\9EnF\9ClD\99jB\A0sL\9FtN\A3{T\AA\83\5C\A4~Y\A5\80[\A2~Z\8CiFoS7S=(H4\1F<,\1A9+\1B5(\191'\1A2'\1B3,!3.&sofqnd<8-SH6wbI\C1\A4\80\D6\B0\87\DF\BC\94\D3\BC\A5\DA\D0\C9\E8\E8\EC\EF\F3\FB\F3\F6\FF\F9\F8\FD\F7\F7\FE\F5\F5\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\DC\DE\EC\DA\DA\E5\D6\D5\DD\D5\D1\D7\DB\D5\D8\E0\D8\DB\DB\D3\D6\D9\D1\D3\DA\D0\D3\D7\C9\C6\D0\BD\AF\C7\AF\96\C6\A9\89\CA\A9\86\CD\A8\84\C9\A2\7F\CA\A3|\B1\8EigO/C2\19=1\1A+!\0E5(\14=.\197'\14?0\1D;. I@4\A0\97\8D\C4\BC\B5\C0\BA\B5\A6\9C\94\A4\82c\9FzV\A4{R\A4yL\9DpB\99l?\9EmC\9EmD\9ClD\9Ai@\99h>\98h=\97i;\98i:\91b3\87Z,\7FT(\7FY1\84a<{Y7\88d@\94lB\9AnA\A2rC\A2pE\A3pE\A4rE\A4rG\A5rG\A0oB\A6sH\A3sJ\AB\80V\B2\87_\AF\85[\AE\85]\B4\8Ce\A0zT\87c?\80aChO7kT:`I0W@*T>(P;$G3\1DQ?+K=,I<,WK:TH5o\5CC\C2\A7\86\D9\BA\92\DF\BC\94\D9\B7\96\D5\BE\AB\E2\D8\D3\EC\EC\EE\EE\F3\FA\F1\F5\FD\F5\F7\FA\F8\F8\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\D4\D4\D4\CA\C8\C6\C6\C0\BB\C2\B5\AD\BC\AB\A0\B7\A7\9C\B1\A2\97\AB\9C\90\B2\9E\91\AC\98\85\B4\9E\86\C1\A9\8A\C4\A8\84\C4\A5~\C9\A7\7F\C8\A2|\D0\A6}\C9\A1w\B5\92iuZ6M8\1AJ7\1BYD)\5CF+aB$lK/W<$y`J\A0\8Ax\8Bzm\A4\97\8C\9E\91\84\9D{X\A2yQ\AB\7FS\9Cl=\9Fo?\9Cl<\9Fo@\A2rC\9Fk?\9Af;\99e9\9Cl<\99i9\9Dl;\93b1\8C[)\81R!\84W(\87[.\8C`4\8Eb5\9Ep@\A0o<\A5sA\A0o?\AAyH\A6uE\A5tD\A3rB\A3rB\AAyH\A2sE\C3\95h\BE\91e\AE\82W\B8\8Ed\BB\91g\AB\82Y\9EvN\98uQ\8EpQ\A0\81b\8AkK\80`@qR2\7F^<\84c@uX9cI/hQ6[F-~gJ\C3\AA\87\DF\C0\9A\DC\B9\8F\DD\B9\92\DA\BA\9B\D5\BE\AB\E5\D9\D3\EB\EA\EC\EE\F0\F5\F1\F6\FB\F4\F8\FB\F8\F8\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\F5\F5\FF\D4\CC\BD\C6\BC\A9\BB\AB\94\AF\98~\A8\90t\96\7Fc\98\83i\90{b\92yZ\91vW\9D\85b\B2\9At\C1\A7~\C4\A7|\C7\A9|\CD\AA~\D0\A9\7F\CF\AA}\C9\A5y\BB\98mxY3cF$rS4{[:~T.{O*{P,~V5\9Ez[\82dK}dN\93{d\90lH\9FvN\9FrE\A0l@\A0l=\9Ag8\A2qA\9Eo@\99g9\9Ah;\9Ah;\94c3\9Em=\9El;\99g5\93a.\8E]-\94b1\91a/\9Cm9\A2q>\A4q?\A8vD\A2q@\A5tD\A5tD\A4tD\A8wG\A9xG\A0p@\A2qA\A8xI\AB|M\B1\82T\AE\80R\BB\8D`\BE\91e\B8\8Db\B0\86\5C\A2{S\9CvP\9CuN\97qI\97oG\91h@\9AqG\98nC\94lE\8AfA\81_<\85gB\C3\A3}\E2\C2\9A\E1\BF\97\DC\BC\94\DA\B8\90\D9\B8\98\CF\B8\A2\E0\D1\C8\EB\E4\E4\ED\ED\F1\F3\F5\FA\F2\F6\F9\F8\F8\FF\F5\F5\FF\F4\F4\FE\F1\F1\FB\F4\F4\FE\C2\AE\94\B7\A0\84\B4\95u\AC\89f\A2\7F[\9A|X\A9\8En\99\80b\94sO\8EoJ\93wS\9E\83a\BC\A0~\C1\A5~\C1\A3z\CC\AB\81\CC\AC\83\CF\AD\83\CC\A9}\CC\A7y\C0\9Bn\82^6fB\1E\88b<\84Z3\8A\5C5\85T,\84V-\91e<\85\5C7\A2\7F[\AF\8Dk\97uO\8Dg@\97j@\9Ch<\A6n@\94a3\9Fo@\A3vG\9Eo@\9Aj;\A3rE\9Fo?\9En=\9Fo=\99i8\99i9\99j<\97g7\97g5\9Ck9\AAyF\AAyH\B1\81R\A4uG\A4uG\9FqB\AB|M\AA{M\A9{K\9DoA\A5vG\AE~O\A5tD\B2\82Q\AF\80O\B4\84U\B0\82S\B2\86X\B6\89[\B2\86X\A9|M\9DpA\AC~P\A0sE\A3uG\A5wI\9Do?\AE\80R\AE\83W\B6\8B_\C0\99n\D6\B1\85\DA\B7\8C\D7\B6\8E\DB\BD\95\DA\B9\90\D2\B0\8B\CD\B0\94\D7\C3\B5\E3\D9\D6\EC\E8\EB\F4\F4\F8\F4\F6\FE\F5\F5\FF\F4\F4\FE\F3\F3\FD\F1\F1\FB\F0\F0\FA\B5\97}\AC\8Bo\AA\81a\A3vR\A2uQ\A2{Z\AC\8Bp\9F\82h\93nJ\90lH\92sT\9A\7Fe\B5\9A\7F\BE\A2\85\BB\9C|\C1\A0~\C2\A5\82\C9\AB\85\D3\B5\88\D5\B0\82\D3\AB{\C3\97j\8Ed;yN*\B7\91k\91jC\90f<\80T(\87Z.\85[/}W/\82`8\A8\87`\A5\7FX\8B^7\9Di>\A5oA\9Fm?\A2tF\A9~N\AF\81S\99j>\A2sE\9Dn?\A0p@\A0p@\9Ak;\9DpD\9FqJ\97j=\9Fp@\A0p@\AC}L\AE\81T\A9zS\A6|R\9AnA\A0tH\A6zM\AC\80S\AA}P\AC\7FQ\B1\85W\AB|L\B6\83Q\B4\82P\AF~L\AC}L\AB|M\A9|M\AA}O\AF~L\A9vA\A9t?\ABwC\A9wD\B1\80M\AE}K\AF~L\A2sC\BA\8C\5C\D0\A2s\D7\AB}\D9\B1\83\E1\BF\93\D9\BC\92\D5\BB\93\D0\B1\86\C1\9Er\C1\A3\82\C9\B4\9F\D9\C9\C2\E8\DF\E1\EF\EA\F1\F7\F5\FF\F5\F5\FF\F4\F4\FE\F1\F1\FB\F0\F0\FA\F1\F1\FB\AA\85f\A4|\5C\A4yV\9AnJ\9DpL\96lK\96sT\90qQ\8Be?\8EhE\96sW\9C}d\A9\8Dw\BD\A2\89\BD\A2\87\BD\A2\83\BE\A7\84\C2\A7\82\CA\AF\86\D4\B2\88\D3\AE\7F\D3\AAy\C8\9Ah\93f8\8DhC\A4}V\A3xM\9Aj=\92_4\8CZ/\84V-{R)yS.\86^7\98jC\A6xK\A6xJ\AF\81S\AF\85V\B0\88X\AC\7FS\9DnF\A8{O\A6zM\AF\82S\A2tE\A2rC\A2pF\99iA\96g<\A9|P\9CqG\A4zN\A3yO\A6|S\A4zQ\90g<\B4\87Z\B7\8A\5C\BC\90`\B0\84W\B4\87Z\B2\86Y\B4\87Z\BA\8C]\B0\82S\B8\8A[\AA|M\A9{K\A2rC\A5vF\A8vD\A8t?\AFzC\AEzC\B6\80I\C4\8EW\B4\85L\AF\81J\AA|H\D2\A2p\D3\A8w\D5\AC~\DF\BA\8D\DB\BA\91\D7\BB\91\D5\B9\91\D0\B0\84\C7\A1r\C4\A3~\C8\AE\92\D6\C4\B6\E5\DC\D8\EB\E7\EA\ED\EC\F5\F3\F3\FA\F1\F1\F8\F1\F1\F8\F1\F1\F8\F2\F2\F9\A9\81Z\A3xT\9DqM\99lH\99nJ\8EhB\82_:}]6\84`7\7F[7\84cB\86iM\90u[\B0\96|\BE\A6\89\BB\A2\83\C7\AC\8A\C4\A9\86\C7\AB\88\C6\AA\81\CF\AD\83\CF\ABy\D2\A6p\BA\8DV\A0wL\98mB\ACyN\AExJ\A8n@\9Ac6\8EY.\85S*\82S-\8C^7\97k@\AF\83X\A6\7FP\A4}O\B5\8F`\AA\83U\A8zS\A6xR\A5{P\AF\84X\AF\82T\A3uH\A6sH\B4~Q\A5pD\94f<\B5\8A`\B1\88`\A2|U\97qG\9FxM\96mD\A0vL\B7\8B`\BE\92a\B1\87U\C0\93b\AE\83V\BC\91f\C3\99p\AB\82Y\B0\87\5C\B0\84X\AB\80S\AB|M\A4tD\A2p>\99i8\A0o<\B1}F\BD\86N\C8\8FT\B7\83H\AAy?\C1\91W\D5\A4m\D7\AAw\D5\ACz\D9\B4\87\DF\BF\96\DA\BD\95\D6\BA\90\CE\B2\88\C4\A1v\BC\93h\C0\9Et\C8\AD\8C\D4\C0\AA\DB\D0\C6\E5\E1\E1\E9\E8\EF\EA\EB\F1\EA\EB\EE\ED\ED\F1\F0\F0\F4\F4\F4\F8\A6\7FX\9EsO\93gD\97jF\9AnJ\93lF\82_:\81`9\84`8\80\5C8\7F^<{]@\86kP\AB\90u\C4\AD\90\C3\AD\8D\C8\AD\8E\CA\B0\90\CD\B2\92\CA\AE\8A\D3\B2\8A\CF\AB\7F\CE\A5r\CF\A3n\BE\92e\9AnA\98g7\B0|I\B0vE\A4k:\9Ad6\93_4\99g?\A0pH\A4xL\A0vL\B2\89[\A3}O\BB\96g\AE\88[\A9{U\AB\80V\AA\80U\AB\83V\9EtH\A9{N\AE{O\B7\82U\9Fk?\98j@\AA~W\B2\8Bd\A8\82Z\9DuM\9DuM\A0vM\A4zQ\AC\80U\B1\85W\B8\8E\5C\A9}P\AB\80T\BE\93i\AB\82Y\AE\86]\AB\84X\AE\83W\B0\83U\B1\82T\A0p@\A0n=\A2p>\ABzG\BD\87P\C8\90V\C7\8FV\B7\84J\CF\9Fd\D6\A7n\D9\ACv\D4\A7u\D6\AF\7F\DC\B8\8B\DA\B9\90\D4\B6\8F\C8\AA\82\B7\99p\B5\91f\B8\8Fd\BD\98n\C4\A7\84\CE\B9\9F\D3\C7\B8\DC\D6\D4\E3\E2\E8\E8\E9\EC\ED\ED\F1\EE\EE\F2\F3\F3\F7\F4\F4\F8\A2yQ\97kF\92fA\8Ea<\8Ec>\8Eg@\8DgA\8Ah@\88d;\82]8~\5C9tU6}_C\97{`\B7\9F\81\C3\AC\8D\CA\AE\92\C7\AC\90\C6\AD\8F\C3\A8\8B\C0\A3\81\C2\A0y\C7\A1t\C8\9Fn\C7\9Dj\C1\94a\9Dl9\A0l7\AEwA\A3l6\9Af3\94b1\9FmC\A4sJ\B1\82W\A9~R\9FuK\96qD\A2}Q\9AtI\9EsL\A8|T\9DuL\9AtI\97nC\98l@\A2pF\A3oC\97e;\9DnF\9FvN\96pJ\A5\80Z\A4~V\9CuM\A5}U\98oF\AB\80V\B4\89Z\AC\82S\B1\86W\B4\89^\A3yP\9DuM\AA\83[\9EuL\B2\87[\A9|N\B1\82T\B6\85T\B0~L\A8vD\B1~K\C3\8DV\C6\90X\BA\83K\C4\93W\D5\A6m\D5\A9t\D4\AAw\D5\AE|\DD\B9\8C\DF\BC\91\D6\B7\90\D4\B6\8F\CE\AF\88\C0\9Fv\B5\8Fd\B2\87]\B8\92h\C0\A0y\CC\B3\95\D3\C2\B2\D7\D0\CB\DF\DE\E0\EA\EB\EE\F3\F3\F7\F0\F0\F4\F5\F5\F9\F1\F1\F5\9CqJ\93hC\93f@\8A[6\8A^8\8Ca;\92lE\91nC\8Ei@\85b:}X4wS4{[<\8BnQ\AC\94w\C3\AD\8F\C4\A8\8C\BD\A3\89\C0\A7\8B\C0\A8\8B\C2\A8\88\C7\A9\84\C8\A6~\BE\99m\C4\9Bh\D3\A6p\C3\91Z\A2m6\9Fh0\9Eh0\9Fk5\98f3\AByL\A9{M\9CoB\AC\80S\9AqF\9AtI\A3~T\90iA\93hC\BC\92h\BE\96m\AC\86\5C\A3zP\9FsH\A8wN\98f=\8E`6\8A`6\9CtM\84a=\A8\84_\A6\80Z\99wM\AF\88_\AB\82Y\96nD\B6\8F_\B6\8E]\B5\8D_\93mC\A0xP\97pI\9DuM\B2\8B_\AA\7FR\AE\82T\B7\87X\BB\89X\AF|J\B1\7FK\C0\8BU\CC\96^\BC\86N\C0\8DS\D4\A1h\D5\A8q\D4\ABw\CE\A9v\D3\B0\81\D6\B4\87\DA\BE\93\D4\B7\8F\C8\AA\84\C3\A2{\B5\92i\AE\86]\B2\87]\B8\90f\BE\9Bt\C6\AA\89\CE\BA\A5\D6\CC\C3\DF\DF\DF\E8\E9\EC\EE\EE\F2\F0\F0\F4\F1\F1\F5\F3\F3\F7\93jA\8Ea<\91b=\8AZ6\8C]8\8C`;\92jB\93oF\90mD\8Cg?\80Z5{U3\80Z;\8BlM\A2\89k\C1\AB\8D\C4\AB\8C\BB\A0\85\B4\9A\80\B2\9B\7F\B5\9F\7F\BD\A1\7F\C0\A1{\BC\9Ao\BE\96c\C7\9Bf\C8\96^\B8\82J\A5n5\9Fh2\9Af0\9Cj6\96g8\A8yJ\9FrC\9CqD\9EtI\96qG\A2}S\91lE\91gC\A9\80X\BD\95l\94pH\92jB\A2wM\A0pH\92a9\8D^6\8Da<\93nI\84b?\A6\82]\A0\7FW\99uM\B2\8Bd\99rK\9CtK\B2\8D_\B2\8B]\AA\84W\AA\82Y\A5}V\98qK\A8\81X\AC\84X\AF\84X\B7\8A\5C\B6\87X\C0\8E]\B2\7FM\C3\8FZ\C6\91Z\C1\8BS\BC\86N\D4\9Ef\D5\A7o\D3\A9u\CF\A7v\CD\AC{\D5\B6\87\D7\BB\91\D2\B7\8F\C4\A8\82\C1\A2|\B7\94n\AE\87`\AC\84Z\B1\86[\B7\8B`\BD\96j\C2\A2}\CC\B6\9C\D6\CA\BD\DD\DB\D9\EB\EC\EF\E8\E9\EC\ED\ED\F1\EF\EF\F3\F1\F1\F5\8Ea<\8D`:\90`:\8D]7\90c<\97jD\9ArI\8Ei@\87e=\88b;\84\5C4\82W4zT3\94sS\A8\8Fq\B6\A2\85\C2\A9\8A\B6\9E\80\B2\9C\7F\AF\9B}\B1\9E~\B7\A0}\B8\9Dv\B8\99o\BE\96e\C1\94a\C7\94`\C4\8EW\B0x@\A9r<\A8s?\9Fl:\A6vF\A4uE\9An@\9AoC\88`7\A2zQ\8EiB\A9\83\5C\9EsO\92lG\91lF\9CxN\9FxN\AC\81V\98kB\9AkC\93e>\94iE\90jD\93pM\9E}Y\A2\82Z\A0|U\B4\8Dg\9ExS\A2{Q\B0\8B^\B1\8B^\B2\8Ea\BE\96m\9CvP\97qL\AA\83[\99qG\A8}Q\B1\85W\BC\8C]\C0\8E]\B6\83Q\C1\8DY\C1\8CU\C0\8AS\C4\8EW\D7\A2l\D6\A9r\CE\A6t\CC\A9y\D0\B2\84\D4\BC\8F\CD\B3\8A\C8\AE\86\C1\A6\80\BE\9Ex\B2\90j\A5~V\9FtM\A6|R\B5\89[\C0\94f\C3\9Cu\C8\AE\8E\D0\C2\B1\D6\D3\D0\E4\E5\E8\E9\EA\ED\ED\ED\F1\EE\EE\F2\EE\EE\F2\8Ed;\8D^7\8C]6\90`9\90`:\97jA\99pG\8Ei?}\5C5\80[4\7FW/\7FS/{R0~^>\98\80b\B0\9D\7F\C3\AB\8B\BA\A4\81\B1\9C|\AF\9B}\AB\98x\AF\9Av\B4\9Cu\BB\9Et\BC\95f\C2\94e\C7\94b\C0\8BU\C2\8AR\AFyC\AAvC\B5\81N\A9wF\A6wF\A3vG\9CqD\9AqF\96oG\A6\7FX\BB\94m\AB\81]\A5~X\8DiC\9F|S\A6\7FW\B2\87]\A2tM\A3sK\9EoH\9EuL\A3~Y\9F}Z\9D{X\9E}Y\A6\83]\B7\92k\A5\80Z\9FyR\A0|P\BC\97h\BA\95g\B5\8Ef\9DxR\9DwQ\9DuM\92lA\B4\88\5C\B8\8A\5C\B8\89[\BE\8D\5C\C3\8F\5C\BE\8AT\BE\89R\C9\93[\CF\99b\D4\A2j\D5\A9t\CE\A7v\CD\AC{\CA\B1\82\D0\B9\8C\D2\BB\91\C9\B1\8B\C1\A7\80\BD\9Ey\AE\89d\9FwP\9DsJ\A9~S\B1\83U\B8\8A\5C\BD\98l\C1\A6\84\CC\BE\A8\D2\D0\CA\DD\DE\E1\E9\EA\ED\ED\ED\F1\ED\ED\F1\EE\EE\F2\8A_4\86W/\87X1\85V/\88Z4\84Z3\87^6\8Bc<}X2\80Y2\7FX1yQ-oK*tW9\96|b\AC\97|\C4\AC\88\C1\A9\86\C2\AC\8C\C8\B2\92\C0\AB\8B\BC\A5\84\B8\A0|\B5\98t\B8\96o\BB\91g\C3\93d\C3\8DX\C3\8BT\BB\84M\B1}I\B5\82P\BB\8EX\9Cp@\AA}P\99qG\A0yR\97rN\9DyU\B5\90k\AE\88b\A0{U\9CvP\B4\8Eg\A6\7FW\AF\88_\A9\80X\A4wQ\9EqI\AC\83Z\BA\93l\A2\7FZ\9DyU\9AyT\A3\7FZ\BD\9Ar\9F|V\AB\88b\9AxO\BC\9Ao\B1\8Fd\AB\88b\A5\83]\A3\7FY\AA\83\5C\A2zQ\A5zP\B6\89[\BE\8F^\C1\8E[\C6\92^\C3\8FZ\C4\90[\CD\99c\D2\A4l\CF\A3n\D0\A9y\D2\AE\81\CD\AF\82\CD\B3\8A\CA\B2\8E\C9\B1\8D\CC\B3\91\C1\A5\84\B7\96t\9EwQ\98mF\A0pH\A5vK\AC\80U\B6\8Fc\BA\96k\BE\9D|\CA\B5\A0\D4\CD\C6\DF\DF\E1\E4\E5\E8\E6\E8\ED\E8\EB\EF\EE\F0\F5\8C^4\8A\5C2\86X1\85[2\81U0}T/{R-~W0yP-{S/zR0sP.sS4}cI\98\82l\AF\9C\85\C3\AA\87\BC\A4\80\BA\A5\85\B4\A0\82\B1\9C\82\B7\9F\82\BA\A1\83\BB\9F\82\B4\95t\BB\98q\C1\95g\CD\98c\CA\91Y\C1\8AS\B0|I\AE~O\BB\8FX\BB\92^\9FyJ\A6\7FX\9F|X\A6\84a\A8\88d\AB\8Be\AB\86`\9FyS\AF\89a\BC\96n\AE\87`\B0\8Ac\AE\87`\AA\83[\A8\7FV\B5\8Bb\B4\8Bc\AB\85]\A9\83]\9FzV\9AvR\B7\94n\BC\9Bs\AE\8Eg\B1\90i\AC\8Bd\B4\93l\AF\8Fh\B6\96n\AB\88d\A3\7FZ\98rK\B4\8Cb\C3\97j\C2\92a\C4\92_\C4\90[\C1\8EY\C7\98d\C9\9Ei\CD\A3q\CE\AA|\C6\A4y\CA\AD\84\C6\AB\83\C8\AF\8A\D0\B7\98\CC\B3\95\C6\AC\8D\B6\9Bz\AB\89g\A4zV\98kE\A0l@\A4pD\AA\80W\B2\8Dd\B6\8Fh\BB\97t\C7\AB\94\D4\C9\C1\DD\DB\DD\E2\E2\E6\E8\E9\EF\E7\EB\F3\E9\ED\F5\8A\5C2\88Z0\8C]6\8A`6\8Ea<\85\5C6{R-tN({R0zR0qK+tS2\8CmR\A3\8Bt\9F\8E}\AE\9F\8D\C1\A9\88\BA\A1\81\B6\A2\84\B2\9F\84\B4\A0\87\B5\A0\85\AF\96{\AB\8Fs\A8\8Ci\B1\8Fi\BE\93g\CA\96c\CF\99d\CE\98c\C2\91^\B8\8A[\BB\91\5C\C3\99f\BD\96h\B0\89a\AA\87c\9AyW\B4\94n\B1\91k\B6\92l\AC\86_\AB\86_\B5\8Fh\AB\86_\A6\80Z\C2\9Cu\9AtL\AB\82Y\B8\8Ff\A6~W\B2\8Bd\B1\8Bd\A4\80[\A2\7FZ\B5\93m\B1\90i\B4\93l\B0\8Fh\A9\8Ac\BA\99r\BD\9Ct\BE\9Dv\8DlH\99uR\B5\8Eh\CD\A3y\CC\A0s\CA\9Cl\C8\99d\C6\96`\C0\90_\C9\9Bk\DB\AE\80\D5\AA~\C4\A1v\C1\A0x\C3\A5\7F\C8\AA\86\CA\B1\8E\CE\B5\95\C7\AF\90\BE\A4\85\B0\92s\9E{Y\A0wR\93e>\A3pB\A4sB\A9~S\B1\8Cb\B7\92e\BA\94n\BC\A0\84\C9\BC\AF\D6\D2\D3\E0\E0\E2\E2\E3\E8\E6\EA\F2\E7\EB\F5\87Z0\86X/\91b:\8Dc9\90c=\8A`9\84Z4}V/sK*qI)rM.xU9\99{b\B0\9A\84\A0\92\84\98\8B\7F\BD\A5\87\B6\A1\80\B4\9F\80\A9\98~\A2\91w\A4\90w\AF\96}\AB\92v\AB\8Ek\B2\92j\C4\9Cp\CD\9Em\CC\99f\CA\97e\C7\98h\C4\96h\CA\A1n\C3\9Cj\BB\96i\B7\92k\B5\91m\B5\95q\9E\81\5C\B0\91j\B5\92i\B8\93k\AF\8Ab\B4\90g\9E{T\AC\89a\B2\8Ef\A3|T\B0\88^\B7\8Ee\A6~W\B5\8Fh\B7\92k\B1\8Fi\97uQ\AC\8Ad\C0\A0x\AC\8Bd\BA\99r\B2\92j\C0\A0x\BB\9Bs\BC\9Bs\A0\7FZ\B2\8Ej\C2\9Cu\BD\94l\C1\97k\C8\9Bn\CF\A0p\CF\A1n\CF\A1r\C9\9Dq\C8\9Dr\C3\9Br\BC\98q\C4\A3~\C0\A2\7F\C7\AB\88\CA\AF\8E\CE\B5\93\C7\AE\8E\BE\A4\84\B4\95t\A6\83_\97pI\92c<\9El=\A4r@\A9\80R\AF\8A[\B5\8E`\B8\94h\B8\9A|\C2\B2\A3\D2\CE\CE\D9\D7\D9\E1\E1\E5\E3\E6\EE\E7\EC\F5\81T+\84V-\88Z3\88^4\85X3\81X2\84Z4\82[4\80V5wO/xS3rP4\90sZ\A4\8Fz\B6\A7\99\A8\9B\8E\B4\9D}\BA\A3\81\BA\A5\86\B2\A0\84\B5\A2\86\B7\A1\86\B7\9F\82\B2\99z\AB\8Ek\B7\95l\C0\9Cp\CA\A2t\D4\A8w\D7\AA{\C0\96h\C1\98i\C0\97f\C3\9Dn\CC\A6{\BE\99t\B6\94p\B1\92n\AB\8Dg\A8\8Cb\B6\95l\BA\97n\B1\8Ee\B2\90f\A2\80X\B5\92i\BC\9Aq\A5\82X\B7\8Ee\B8\91h\A8\82Z\AC\89a\C0\9Bt\BB\98q\99vS\B6\95p\B7\96n\BB\9Bs\B4\93l\BD\9Ct\C4\A3|\BD\9Ct\B4\93l\BD\99t\C4\9Fz\BD\98r\CC\A5}\D3\AA\7F\DB\B3\86\D6\AF\7F\CA\A1r\C9\9Fs\C9\A0w\C9\A1y\C4\9Ex\C0\9Ex\BD\9Dy\BE\A1~\CE\AF\8F\D0\B3\92\CF\B3\91\C7\AD\8C\B8\9D|\A2\82b\99uR\91f@\91a9\98f4\A3r@\A9\82R\B0\8AZ\B5\8D]\B7\90a\BA\9Bx\C3\B1\9E\CE\C8\C6\D7\D3\D4\E1\E1\E5\E1\E5\EC\E2\EA\F3\85X.\87Z0\8C]6\86\5C2\81U0{R-~U/{T.\84\5C8~Y4yR1mK,wW<~fO\9A\89t\9E\8Dy\BC\A0~\BB\9F|\B4\9B{\B2\9B}\AB\93v\A3\8Bn\AE\91s\AB\8Cl\AC\8Ei\B6\96n\C4\A2x\D0\AC\81\CA\A6x\C3\9Cp\CC\A7y\C2\9Co\C6\9Fq\C2\9Cq\C6\A0y\BB\98s\C0\9Ey\BA\9Cx\B6\99q\B5\9Aq\B4\94k\B4\93i\A8\88_\B5\93i\B1\90g\B7\96l\AF\8Ff\B0\8Dc\A3|T\AB\87[\A6\83Z\AE\8Cb\BA\97n\B5\93k\AC\8Cf\B4\93l\AF\8Fh\B8\98q\B8\98q\C0\A0x\BE\9Dv\B5\94m\C1\A0x\C3\9Ey\B6\93n\B5\90k\BB\96o\BE\98q\CC\A7}\CF\AA}\CF\AA}\D9\B2\87\DB\B5\8D\DB\B6\8F\D5\B2\8B\CC\AA\85\C4\A5\80\C3\A5\81\CD\AF\8A\D0\B3\90\CF\B3\91\CC\AE\8D\C6\A9\87\AB\8Ci\9CwS\9CqJ\97f=\99h8\A2r@\A8\81Q\AC\86X\B4\8BZ\B6\8A]\B5\93o\BD\AA\96\C9\C0\BD\D7\D1\D2\E0\DF\E1\E4\E6\ED\E4\E9\F2\8A\5C2\8B]3\8B\5C5\85[2}Q,yP+yP+{T.uQ-xS.sN)nJ&hG&hJ,\8DuW\A8\8Fq\C0\A0x\C6\A5}\BC\9F{\B8\9E|\B7\9B{\BE\A2\82\B6\95s\BA\98t\B6\97p\B7\99p\C1\A1x\CD\AD\84\CE\AC\82\CF\AD\81\C9\A5y\CA\A7z\CF\A8}\CD\A4{\C2\9Ey\C8\A4\80\C0\A1{\BA\9Dx\B7\9Ct\BB\A0v\B8\99o\B8\98o\B2\91h\B7\96l\B2\91h\B2\91h\A8\88_\AC\89_\9DzO\A9\86\5C\9F|S\B4\92i\A8\87_\B5\93k\B5\94m\B7\97p\B1\90i\B1\90i\B5\94m\B8\98q\B8\98q\B2\92j\B7\96n\C0\9Ex\C1\9Dx\CD\A9\84\C6\A2}\D0\AD\86\CE\AB\82\CD\AB\82\C9\A7}\CE\AB\82\D7\B4\8A\D9\B5\8B\D3\B1\88\C9\A7\7F\C0\A0y\C1\A2|\CA\AB\84\CA\AC\88\CC\AE\8B\BE\A0~\AE\91n\9AyW\98rL\A3wO\98f<\96b6\9FpB\A3zO\A6\80U\B2\86Y\B6\8B_\B2\8Ek\BA\A3\90\CA\BE\BA\D6\D0\D0\DB\D9\DD\DD\E0\E6\DE\E4\EE\85X.\88Z0\85V/\82X/\7FS.zQ,{R-\88a:zW0sP(rK#nG\1FsM&qP(z[7\90qK\B8\94i\C9\A5y\BA\99r\AB\8Di\A9\89f\9D|Z\AC\88d\AF\8Bf\AC\8Cd\B1\94k\BB\9Ev\C3\A6\7F\C3\A4}\C3\A2y\D0\B0\84\D2\AF\83\CF\AB\7F\CE\A7\80\C4\A0|\CF\AC\89\CC\AE\89\BE\A0z\B4\9Br\B6\9Bp\B6\98n\B6\95l\B6\95l\B2\91h\B5\94k\AC\8Cc\9AzR\A9\86\5C\9AwM\B6\93h\9F~U\B4\92i\9AzT\AE\8Eg\AB\8Be\B2\93m\AF\8Fh\AC\8Bd\C0\A0x\BE\9Dv\B1\90i\B4\93l\C3\A1y\CE\AC\86\CC\A8\83\CC\A8\83\CC\A8\83\D3\B1\8A\C9\A8\81\CD\AD\86\D5\B4\8D\CD\AD\84\CC\AA\7F\C8\A5z\C1\A0t\BC\9Bq\BE\9Ev\BC\9Eu\BD\9Fv\C3\A5\7F\C8\AA\86\B5\97t\9E\81_\90oM\92kG\A2sK\9Af;\97c8\9EkA\A0wO\A6\7FW\B0\86\5C\B6\88_\B6\90p\BB\A1\90\C8\BB\B6\D4\CC\CC\DA\D8\DA\DC\DF\E5\E3\E8\F1\81P&\84T+\82V/\80W1~W0yS-}U-\92jA\8BgBxT/sN(mG oH\22uQ,xT/\8DjF\A8\85Z\C3\A0t\BA\96i\B0\8C`\A6\7FW\AE\88^\AB\83[\AB\83[\BA\97l\C4\A1v\C9\A7}\C6\A5{\C2\A2y\C2\A2y\B8\98o\C8\A8|\CA\A7|\C7\A5|\CD\AA\82\C0\9Ey\BB\9Cv\BC\9Dw\B6\99q\B5\9Aq\B4\98n\AB\8Fe\B6\99q\B2\94o\B2\91o\B5\93m\9CyV\B1\8Cg\97uQ\B6\94n\A6\83]\B4\93k\97xQ\A8\88`\A5\88_\B7\99p\B4\95n\A9\8Bf\B7\99t\BB\9Dx\BA\9Cx\C4\A6\80\BA\9Bt\C6\A5}\C8\A6~\CA\A9\80\CD\AB\84\C3\A0y\C3\A2}\CC\AC\85\CF\AF\89\C7\A4|\CD\A9~\CD\A9~\D0\B0\84\CF\AF\83\CD\AD\80\C6\A4y\C1\9Ft\C4\A2z\C1\9Fz\A6\85a\96sP\90kF\91h@\98h@\97e;\96c9\98h@\9DrG\A6|P\AA\80U\B0\88`\B2\91q\B8\9F\8A\C0\B3\AB\D2\C9\C6\DA\D8\D9\E2\E3\E6\DD\E0\E8\85Q(\84Q)\82T.}Q-{U/tN)uO)\84^7\80\5C9wS0uP+sH%rJ#wN)zT.\85_:\94rI\BA\96i\BC\95f\BB\90`\B4\87Y\B2\86Y\B6\8Dc\BB\94i\C2\9Co\C7\A1r\C3\A0t\CF\AC\7F\D2\AF\83\D0\B0\84\C9\A7}\C7\A6|\C9\A7}\C7\A5|\C6\A4{\BE\9Dv\C7\A9\82\BB\9Dx\B4\99t\B2\98q\AB\95i\AA\93j\B1\96t\AB\8Ep\AF\8Co\B5\93q\99vS\AC\89f\93qP\B4\91n\A5\83`\AE\8Di\96vQ\B2\94k\AA\8Dc\B8\9Cs\AB\8Fk\AC\90m\B6\98y\BB\9D\80\C3\A5\87\B1\95r\CD\AF\8A\CD\AE\86\BE\9Dt\C7\A7~\C6\A5}\C7\A6~\CC\AB\83\C6\A5}\CF\AE\87\D4\AE\88\D0\A7}\C8\A4x\CF\AD\81\CF\AE\81\CF\AD\81\C7\A2v\C3\9Br\C2\9Ds\C3\9Eu\B4\8Eg\A5~V\9AqI\90d<\8B\5C4\92a8\91a8\96f>\9AmA\A2vH\A8\82S\AB\8Ab\A9\8Dn\B6\A1\89\C1\B5\AC\CF\C8\C3\D5\D2\D1\DF\DE\E0\E3\E3\E9~O*\7FO)\81Q*}M&yK%rI'lK*mN/sS1wS0wL(tF uG\1D}L#\86X-~R*\8Ae=\AE\89]\BC\94d\B8\8A\5C\B2\85V\B8\8D^\C3\99n\CA\A3x\CF\A9{\D7\B2\84\D5\B2\85\CC\A8}\D0\AD\81\CD\AC\82\C7\A6|\C7\A6~\CD\AE\86\CC\AD\87\BD\9Ey\B5\98t\A8\8Ci\B7\9By\AB\92p\B8\9E~\AF\96p\AC\94p\A9\8En\AB\8Ep\B1\8Fn\9D{W\A2~X\A5\82]\8ElJ\A3\80]\9F}[\AA\89e\9C}X\AE\90k\AE\90k\AC\8Fk\AF\92p\A0\83d\C8\AA\8C\A8\8Ao\AE\91u\C4\A6\88\BD\A0}\C1\A3~\D0\AF\8A\D6\B4\8E\C9\A8\81\C9\A8\81\CC\AA\81\C9\A7\7F\C8\A8|\D0\AC\81\DA\B2\88\D6\B1\85\D5\B3\87\CE\AD\80\D3\AF\83\D6\B1\85\D3\AA\7F\CC\A4{\C7\A2x\B5\8Fd\A2zP\91g=\94f?\93c:\8E^5\91b:\97h@\99mA\9FsF\A5}Q\A3\83\5C\A5\8Al\B1\9C\87\C4\B9\B1\CD\C4\C1\D0\CE\CE\DE\DD\DF\E3\E3\E9uJ-xJ(}I#zG\1E\7FO)oI*\8DnUt\5CH\84jQ}_AqO-sK$sD\1CwH!zM%tI#\88`8\A2xM\B6\89[\B4\85U\B4\88W\BA\90a\C1\9Ak\C4\A0t\C9\A2w\C9\A2w\CE\AA~\C9\A5y\C3\A0w\C9\A7\7F\C8\A7~\C8\A7\80\C4\A7\84\C0\A5\83\BC\A0~\BE\A4\84\A4\8Cm\AF\96w\AE\96w\B6\9E\80\B6\9D~\AF\96v\A8\8Eo\9E\82a\AF\8Ci\9C{S\A4\81W\9CzP\9C{S\91pL\97xR\91rO\AC\8Bi\B2\93t\AE\8Fp\B4\95u\A9\8Cn\B8\9B~\9F\81h\B0\92z\B2\94z\B4\97{\C0\A2\83\C6\A6\87\CF\AE\8D\C4\A2\80\CA\A9\84\C9\A8\81\CC\AB\81\D2\B2\83\CA\AAz\D2\AE\81\DC\B3\89\D9\B4\87\D7\B4\88\D0\B0\84\D3\AF\83\D4\B0\84\CA\A3z\C2\9Bo\C4\9Cp\BB\91g\A9\80U\98mB\93d=\94d<\94c:\93c;\97h@\98l@\9CqG\9FwN\97vU\9D\84k\B0\9E\8D\C1\B7\B2\CC\C5\C4\CF\CD\CF\DC\DD\E0\DF\E2\E8yQ1zO,~O*\81R.{P0\80_F\AF\96\82\A6\94\85\9A\8Bz\85q\5CiO5lJ(qL'nJ&hG&yX7\8Ee<\A9|P\B6\87V\B5\85T\BC\8E[\C8\9Dj\CA\A4t\CD\A8y\D0\A9\7F\D4\AD\82\CD\A9~\CC\A8\7F\C8\A6~\C7\A6~\C1\9Fz\B7\99t\B1\96t\BA\9F}\BB\A1\82\BA\A1\81\A9\90s\9E\86i\B0\99|\A6\8Fs\B0\96z\B5\9B}\B2\98x\AE\91n\A0\80Z\A9\86_\9CzP\91pH\9DyU\97uR\8EnL\92rQ\A6\87f\A4\86h\BA\9A}\B8\9A|\A8\8Al\9E\81f\93v_\A4\86p\B6\98\80\A5\88l\9D\80c\C8\A8\88\B5\93t\B4\93r\C4\A3~\C1\A1z\BD\9Cr\C2\A3u\C9\AAy\CD\A8{\D4\AC\82\D5\B1\85\D6\B3\87\DB\BA\8D\D4\B1\86\D5\B1\85\D3\AA\81\CA\A0t\C4\97j\C6\99k\B2\85X\A2uI\96j>\94e=\A5tL\96f?\93d=\94f?\97mC\97rL\96xZ\9D\87p\B5\A6\99\C4\BB\BB\CE\C8\CA\D3\D2\D6\D9\DC\E2\DD\E0\E8zR*~S0yR1zX;rU>\92we\85qb\AC\9A\8C\97\89y\92}hrW<kI(\8EhB\8CiE\87hI\9E\80b\94iB\AA{M\B7\87W\BD\8D[\C2\94a\CE\A4p\CF\A9v\CC\A9y\D3\AC\81\D5\AE\85\CA\A6~\D2\AD\87\D3\B1\88\D0\AF\8A\CC\AA\85\C4\A3~\BA\9Ay\AB\8Dn\A8\89j\AE\93u\B7\9E\7F\97}a\B0\98z\A3\8An\AC\93w\BC\A2\82\B2\96t\A8\8Bg\A3\82\5C\A0}Z\9F{X\98uS\94rP\9CzX\98wV\91pP\98yY\A3\85f\A9\8Ak\BC\9D}\AA\8Cm\8DqT\8BnT\A9\8Ap\B6\97|\B0\92u\B2\93t\A9\89h\B1\90n\B1\90l\B1\90k\BE\9Dv\C6\A5{\CD\AD\80\C7\A7z\C6\A1u\D3\AA\7F\D5\B1\85\D0\AD\81\D2\B2\85\D5\B3\87\D4\B0\84\CE\A6|\D3\A6y\C9\9Ai\C8\98h\B7\87X\A0rE\94d<\93d=\99jB\8E_8\8E_9\91b:\92iA\94pL\97{^\9D\8Av\B6\A9\9F\C4\BD\BE\CC\C8\CC\D1\D1\D5\D6\DA\E1\DC\DF\E7\81T'\81Y2z[=\8Eyd\96\85u\80rd\88xi\AA\96\83\9A\84l\8ErVwS0yO%uG!iB\1E\A6\83a\B6\96w\98iB\AE~O\BC\8AY\BD\8BW\CC\9Ef\D2\A7r\CE\ABv\CA\A9x\D0\A8\7F\D0\A9\81\C6\A1y\C9\A3}\C6\A2}\C3\A2}\C1\A0|\C0\9Ey\B7\96t\BC\9By\B5\95s\B7\97w\B0\92s\A5\89lu\5C@\88oS\AE\95u\C8\B0\8C\AF\95o\A3\89a\97vQ\90nM\A8\83e\94pU\90mQ\98uY\98vY\93sS\92rR\9E\80_\9F\81^\B4\96r\9A~[\94vX\88lQ\B4\97{\B5\97z\A3\85f\A4\88e\AB\8Dg\B7\97p\C2\A1y\CC\AB\83\C6\A5}\BB\9Bs\BB\9Bs\C3\A2y\C9\A6{\CA\A3z\CD\A8{\D3\AF\83\D3\B2\85\D3\AF\83\D3\AE\81\CF\A7}\D4\A5w\C8\97d\C9\99g\C0\90`\AB}O\99iA\96f>\8E`9\8E_9\96b>\96hA\97nF\96rN\98}b\A3\90~\B6\AB\A2\C7\C0\C3\CD\CA\CE\D1\D1\D7\D6\DA\E1\D7\DD\E7\81Q\22xQ(x]A\AC\9E\8A\AE\A4\98~tg}m\5C\8Ct]~^?\81[5\84V+~L\1AxC\16}N#}U0\A2zX\A8vL\B4\7FS\BD\87W\C4\91_\C8\99d\CC\A2o\CD\A7w\D4\B1\82\D2\AE\81\CD\A6~\C9\A3}\BE\99t\BA\96r\B6\94p\B5\94q\B5\93o\B4\90l\A8\84`\B1\8Fk\AF\8Ci\A9\87f\B7\97w\A8\89j\84hL\9D\85e\BE\A5\80\A2\87`\9C\81X\98xS\98vV\9Ez_\9Dx_\91mU\8DlR\90oT\99yY\94vR\99|X\A3\85a\B2\95q\9D\82`\8BqP\A3\88i\94x[\91tU\9A}Z\9F\83]\AB\8Ab\B2\91h\BB\99o\BC\9Aq\B8\97o\B2\92j\B7\97p\C0\9Ey\C4\9Fz\C9\A1w\CF\AC\81\D3\B0\85\CF\AD\83\CA\A8~\CD\A8{\CD\A3y\CA\9Dn\C4\91_\C2\91`\BB\8AZ\B5\86W\A3uH\9AjA\8E`9\92c;\93d=\94f@\97kF\94rP\9D\83j\AF\9C\8C\BB\B2\AB\CA\C4\C7\D1\CD\D3\D3\D3\D9\D7\DA\E2\D5\DC\E5yL&uK)qQ2\B5\97}\A2\86kw[AkI-kE&rJ\22zN#\7FM yH\17\80M\1E}M \85X+\8Da6\A2qA\B4\82P\BD\89V\C3\92`\C1\95g\C1\9Ao\CA\A9\82\CE\B0\8B\D4\B0\84\C9\A2w\C2\9Cq\C3\9Ct\BB\94m\C1\99r\B6\8Ej\BB\91m\C0\96h\B1\87[\9CuJ\9DwO\A5\82]\9E}\5C\B6\98z\9C\80d\AC\92u\B1\97w\AE\90l\8DlJ\90nK\97xW\90rT\8DpR\97z]\8BmT\93u\5C\8AlJ\85f?\A0\80W\AC\89f\AA\8Ft\A3\8Fw\AB\96|\9E\84l\9D}csS4\93oJ\9E{O\AF\84Z\B2\83]\B6\87_\B5\8A_\BD\93h\BA\96i\BA\98n\B5\97k\BE\9Er\C4\A2x\CA\AB\86\D2\B3\91\D3\B4\92\CC\AC\85\CC\A9}\CD\A7s\CE\A0p\CC\9Bm\C4\93b\C0\8E]\B7\87U\A8yI\9Al>\97g;\92e8\90c7\90f<\92iG\97tX\9F\85q\AC\9A\91\BB\B0\AE\C6\BF\BF\CF\CD\CE\D2\D2\D6\D2\D5\DD\D4\DA\E3zL%xM*qM.{Z?{Z?iJ-lG(oF$oE\1BqD\18uD\17zI\18wF\15zK\1D\84V(\90b4\A0n=\B1~K\BA\87T\C0\90_\CD\A0q\CA\A3z\DA\B9\93\C4\A4\84\C1\9Fv\C1\9Et\C0\9Bt\C0\9Ar\C2\9As\C8\9Ct\C0\95n\AF\81[\BB\92d\AF\87[\A9\82X\A2|U\88fB\A0\7F\5C\B5\94t\AB\8Dn\BC\9D~\AB\8Cl\A5\83`\87dA\8CiE\94rP\8EoO\8DoO\8EpQ\90qX\AE\8Dr\AC\8Ah\93tI\96tJ\A2\7FZ\9D}]\9A|]\A2\82c\B8\95x\82^AuR0\9CuM\A8\82T\A5|S\A8yV\A9yS\9EoH\A2qI\AF\83X\B7\8Dc\B7\8Ee\C1\9Dr\C3\A1y\C2\A4\7F\C7\A9\8A\D0\B1\92\CA\AB\86\C2\A0u\C7\A3n\CF\A0p\CA\99l\C6\94c\BC\8BY\B0\7FL\A6wF\9EoA\99j>\93e8\90c7\90f<\94lH\96uT\A5\8Bt\A8\97\89\BD\B3\AC\C8\C1\BE\CD\C9\CB\D1\D1\D5\D8\D9\E0\D9\DE\E9\7FM${N(uN-nL0nM1kH*{Q/oD oD\1AsD\19sC\14rA\10tC\13xH\18\80P$\94e7\A4r@\B4\81N\BB\88U\C0\90_\BA\8Ea\BD\96n\C3\A2}\C3\A5\83\BD\9Ey\BD\9Dx\B8\95q\B6\90j\BA\91i\AA\7FU\99kD\A2tK\A9\84Z\AA\85^\9DyU\92oL\82`?\8AgE\AB\88e\A2\80]\A3\81_\9EzW\91lF\87b;\91jC\8AgC\8BkI\94uO\98wV\9F|`\B4\91t\8DjF\81_4\94qE\A2|U\A3{T\94kC\91jC\A6\7F\5C}[9\88eC\A2\80Z\A3\82Y\A4\81^\B2\8Aj\AA\7F\5C\93e@\8C]6\8AY2\A3rK\B6\86_\BA\92k\BB\99t\B5\96t\B4\96w\BE\9F\80\BE\9Fz\C6\A3w\C4\9En\C2\94e\C8\96h\C7\96f\BD\8D[\B0\7FL\A5uD\9FpB\98h=\92e8\92e8\91e:\97oG\9E|Y\AF\93w\AB\99\84\BA\B1\A2\C0\BA\B7\C8\C4\C5\D0\D0\D4\D9\DB\E2\DC\E2\EC{I\1FxH\22\8A_<tO0gG(\7FX7\A4wQ}N'qE\19sE\17uE\16yF\14yF\14\87T%\8C\5C,\97g8\A2p>\B2\7FM\B7\84Q\BC\8C[\BE\92e\B8\91i\B6\95q\B8\99z\BC\9F\80\B0\92s\AB\8Bg\B0\8Be\A4|T\90f<\93e8\A2tF\A9\84_\AB\89g\AE\8Dk\9C|[\8BlLuU5\9CxS\9CvP\93nI\93mF\96mD\8Cc;\8Cd=\86b=\A0~X\98uQ\98vS\9AwZ\A8\83d\82]8zU)\8Ad6\98pH\99pG\8Cb8xS.yX7O6\1C{dG}fIkV8cP4iR6fK*rM(qI!rF\1F\82V1\93hD\A4~[\A6\84b\A5\86g\AF\90p\B5\97v\BB\9Cv\C2\A0u\C3\9Ep\C3\95h\C2\90c\C2\91a\BE\8E\5C\B6\85R\AB{J\A0rD\99j>\96f;\93c8\93f=\9AqI\9F{V\A0\86g\A8\96{\B0\A5\91\B8\B1\AD\C9\C5\C6\D6\D6\DA\DE\E0\E7\DC\E1\EC\80N$tE\1F\90dAxS4iI)tN.tJ'qD\1EyJ\1EwE\18xG\16~H\16\85N\1C\8AU$\94`1\9Fo?\AAwD\B4\81N\B8\84Q\BA\8BZ\B8\8B^\B4\8De\BD\9Dx\B4\95u\B2\98x\AF\91r\A4\83a\94pL\85^8{Q(wJ\1E\81R(yY6lQ3_H,_I.s\5C?Y@\22lO,\86a;\90hA\99nG\91g=\91e:\91h?\96qK\8DlJ\97uQ\98vS\99uX\92mO\87b=\85a3\96pA\9AqI\9CuN\91mI[@$N9 7*\16$\1C\0D\1A\13\07\18\12\06\1E\18\08\1F\18\05#\16\00<%\04I,\07iH }Z6\91qP\92rR\A4\82c\A6\87g\AF\90p\B5\97t\B8\99t\BE\9Br\BB\95k\B7\8B`\BC\8B]\B5\85V\B5\84R\ABzH\AAzJ\A4uG\9EmA\99j>\98j<\99l?\9CrH\A6\80Z\9A\7F^\9F\8Cp\A8\9D\89\C0\B9\B5\D6\D4\D5\D9\D9\DD\DE\E0\E7\DC\E1\EC~L#sG!qI(}Y<\B4\90r\80\5C=qH&uI$xJ\1CxG\17{H\15\80K\16\86P\1B\8BW#\8D\5C+\8E\5C.\9Fm;\B0}J\B7\84Q\B5\85T\B7\8B^\BB\97k\BC\9Bw\B6\97w\AB\8Cn\9F\7F`\9F}[\94oJzT/`:\14U.\07?\1C\001\1A\02+\1A\04*\1D\08 \15\05\1C\13\03 \15\033#\07[C\1F{U/\8Dd<\8Ec9\96kA\94lE\9F{V\96uT\97xT\94sR\9D{_\96sW\84b?\8Bh<\82_4\97qL\91pO\94wYmX>(\1E\0E\0D\0B\03\13\11\07\16\12\07\18\12\07\1C\16\07\19\12\017(\0BZ?\17]>\17gJ$lT2o\5C?\84iN\8CkP\9A|^\B7\98w\B6\99u\AF\90k\B6\93l\BA\93l\B6\87_\B5\84W\B1\81R\B7\87U\B1\80M\AB{J\A6wH\A3sG\9FoB\9Aj;\9Al>\97mC\A2}X\A8\8Al\9E\8Ar\B4\A7\98\C8\C1\BE\CD\C9\CA\D2\D2\D6\D9\DB\E2\DB\E1\EBwI#oE\22hE'\91oS\C7\A4\86\A3\82a\A4|[\88\5C8yH\1E{J\19\81M\1A\86N\1B\8DT \8EY$\99e5\A6rC\ACyG\AF|J\B0}J\B2\83R\BB\8Fb\B8\94i\B6\95q\BC\9D}\B7\95t\9EzY\8ElI~Y5rM(kE\1EhA\19iF\1CV<\19(\18\02\1F\15\04\16\11\03\11\0E\03\16\11\02\12\0B\00;*\0B\87b;\8Ef>\8Aa9\92iA\9CvP\94sR\8DpR\93vV\9D\7F_\98x_\96uZ\9AyW\9CzPsR+wV4nQ4_G/\A5\92v) \0F\0E\0B\02\10\0C\02\13\0C\00#\16\04=*\13bI-\7F]:\7FW/uM&hE#w\5C@\9E\8At\9D\83m\9Ay^\9A|^\A8\8Cj\BD\A0{\BA\9Bt\BD\9Bt\BD\97r\BC\8Df\B5\84W\AF\7FO\AC|J\AC{I\AE}M\A9zK\A4sG\A4tD\9Fn=\9Ak=\92h>\97pN\A8\88o\A8\92\80\BE\B0\A6\C9\C1\BF\D0\CE\CF\D5\D5\D9\D4\D6\DF\D9\E0\E9yM(mD!hD&mN2y[=\85aC\87`?zO,sA\17zH\16\80L\18\85J\18\90W#\94]*\9Ci6\A2n>\A5r?\A9vD\AF~L\BA\8BZ\B7\8C`\B6\8Ef\B8\98s\B8\97v\AB\86e\9CxU\8BgE\80\5C9~X3~W0~W/zU,\84h?gP-2%\0D\18\13\04\0E\0C\02\0E\0B\00\10\0B\00$\1A\03nL'wP*zS,\91jC\A3\7FY\9D\7F]\98|`\8ErT\A4\86h\98y`\97x^\A6\85d\92sK\9E}T\8EnL`D)?)\131!\10 \16\06$\19\06/!\08O8\19sU0\81^<\82Z<\82T1\81N(\7FM'\84W8\80\5CD\A4\8Ax\98{h\87fK\84fH\96yW\A8\8Ae\B6\97q\BB\98t\B7\92n\C0\92l\B8\89[\B5\85V\AC|J\AByG\B0\80N\AE}M\A2sE\A0p@\9Cj9\99j;\99jB\A0xW\A6\86p\AA\92\85\B8\A9\A2\C1\BA\B8\CD\CB\CC\CF\CF\D3\D8\DA\E3\D8\DF\E8xM)uI%wH\22zH \80L \7FK }J {H\1D\80H\16\7FJ\15\81G\16\82K\19\84N\1C\8CV%\93`-\97c/\A3p:\AAzD\AC\7FQ\B0\85Z\AE\87`\BB\97q\B5\90k\AB\88e\99xX\82aAhH(nK(zR.\86Z6\7FR,~S)\81]0\87d8\84_9eC J-\0F;\22\07-\19\03-\19\00S1\10e@\1EyU0\90lG\9F\7F[\AC\8Ek\99~\5C\93uV\A5\83g\97vZ\9D{]\9D{Z\94rO\90oKtU2O6\187#\0B;#\0BG-\11Y:\1Ba?\1C{S,\81V+uL$oE!tF ~L#\90[4\98eB~R5gC+kH+qN+\8AgC\92pK\9E~W\B2\90k\B7\94p\C0\9Dy\B7\90i\B4\88\5C\AB|M\AByG\A8t?\ACwB\ACyD\ACyE\A3tC\A3tE\9Al>\9AmA\A0wR\A5\83g\A9\95\81\B2\A7\9D\BD\B9\B6\C6\C5\C6\CF\CF\D3\D6\DA\E1\DC\DF\E9qI$oC\1EwF\1EuA\17{D\18{D\18{E\1A{F\19\81I\15~D\13\80F\15\85N\1B\84P\1C\88R!\88V$\9Af2\A2p8\A2p<\A2uF\A9\80U\A5\7FX\B7\92l\C2\9Bu\B7\91l\96tS\85dCrQ0uQ-\8Aa<\85Y4{N(yO%kD\19g?\17qH uJ&uK'c?\1CY:\18I-\0CH'\07T2\11\85`<\87fD\A3\83_\A9\8Ch\99}[\9A{[\9Dy]\9Cy[\9E}\5C\9E|[\94rOkL*`C D,\10K5\1AfI,qR2hG%mG\22mE\1Dh?\16f;\17g<\18m@\1AxI\22\90`7\8D`:\91gF\99sU\97tR\8CjD\99uP\A6\83]\A9\88c\A4\84`\9E\80\5C\AA\8Ch\AC\88c\AC\81V\A6xK\A8vE\A8s?\ABv@\A8s=\A9vA\A0p@\9EoA\9Cm?\A0pE\A4|T\A8\87i\AC\97\83\B7\AD\A2\C0\BC\B9\CA\CA\CA\D1\D2\D5\D4\D8\DF\D9\DC\E6lD nB\1DuC\1BxD\18{D\18}E\18}G\19~H\1B~F\12\81G\16\82H\17~H\16{G\14\86P\1F\87T\22\93_+\9Dh1\A3p;\9Cn?\93l@\9CuN\A8\84_\B4\8Dg\AF\89d\97vT\A9\86c\AE\87d\A4}W\9FtN\A3yO\99nD\7FU,kC\1Bg>\16k=\17oB\1CtG!oE!nH#a?\1BV5\14\5C9\1BuQ0\97uQ\A8\85b\AC\8Ci\A8\8Ci\9D}]\A2\7Fb\AE\8Ck\AC\8Ai\9E|[\90oM}\5C:uU4[?\22YA%\A4\87f\B0\8FlqP.qL(c>\19iB\1BzN)yP*\80T-\88Z4\90g>\9FxP\AA\87a\A9\88f\AB\8Bg\AE\8Cg\B0\8Fj\AA\8Af\AB\8Cg\9E\81^\96yW\91vU\90oM\92kD\97mC\9FpB\A2p>\A5q>\A3p;\A5s?\9Fo?\9Al>\99j<\9AmA\9CtM\9F~`\A2\8Dx\AE\A4\98\BD\B9\B6\C9\C9\C9\D5\D6\D9\D8\DC\E3\DD\E1\EBsJ%yK%qA\18uB\16{C\15{C\15zE\18zF\16\81I\15\80F\15\7FE\14{E\14\7FK\17\84O\1E\8CY&\93_+\9Ae0\93`.\8Eb4\96nE\A4\80Y\A6\85]\A4\83^\B0\8Ch\B5\93o\B6\93n\B7\93n\B7\91l\AF\89a\9EvO\9ArJ\8De=}S,xL'sE uF\1E\81P(\81R+zO+tK(`=\1F\9DvU\9CyV\A3\80]\AB\89g\AE\8Ek\AF\91o\9D}]\AC\8Ai\9D{Z\A9\86d\AA\88e\9F}[\9AyW\87fD~_A_D)iM0rT5\81_=wT0mH$oI#oG#{Q.\91h@\9AsL\A4\82Y\AA\89a\B5\9Bs\B5\9Bt\B7\9Cv\B8\99t\C0\A2\7F\BC\A0}\BA\9E{\B8\9E~\BC\A2\82\BC\A3\84\BA\9C{\B0\8Ch\A6}U\9EqD\97g8\9Fm:\A3p;\A5s?\9Eo>\99j<\9Al>\9CoB\99qJ\9E}_\A5\90|\B7\AE\A2\C3\BF\BC\CA\CA\CA\D3\D4\D7\DA\DE\E5\DD\E1\EB\88_7oC\1B{I\1FxE\16wA\10{E\14xD\14yC\15~F\12x?\0Ez@\10\80J\18\80L\19\85P\1F\8AW$\8AW$\8DZ(\9Cm<\A4yL\AE\87`\AE\8Di\B5\97s\B1\95r\BE\9Fz\C4\A5\80\BE\9Fz\BD\9By\C2\A0}\C6\A2}\B8\97q\AF\8Bf\97sN\81[9\82Y6\7FU.wI\22\84U-\7FQ*}S/xP/zW9\92mO\A3~_\A9\87f\A8\86d\B1\8Fk\A8\88d\AB\88e\B2\90m\A6\84a\A3\80]\A5\83`\A3\81_\9E}\5C\93rQ\87hIoS7bF*nQ1\84cA\84b?uR/zU1zW3wU4\85c@\9E\80[\A8\8Bg\AF\95o\B7\A0y\A8\92j\B8\A0|\BB\A0\80\B7\9D}\C1\A7\86\BD\A4\85\C6\AD\8F\C3\AC\8D\C1\AB\8D\C7\AD\8E\BC\9By\B8\92m\B8\8Db\B1\82R\A4s@\A3q=\9El9\9Fp?\9Dn?\99j<\9AkA\9AsL\9D~_\A8\93~\BC\B2\A6\C6\C2\BF\CE\CE\CE\D6\D7\DA\D8\DC\E3\DE\E2\ECxO'lB\18xG\1B{G\18~H\16~H\16{G\17\80M\1A\81I\15\82H\17\84I\18\84M\1B\84P\1C\84O\1E\84R \8AX'\96d6\A4wJ\AF\87_\B8\99s\BE\A3\82\C7\AF\8E\CE\B7\95\C9\B1\91\C4\AA\88\BE\A3\82\B7\9C{\B6\9Bz\BA\9F}\BB\A1\80\B7\9C{\B6\9By\99z\5C\97uT\93oI\8De=yQ*\81Z4\87c?{X8\94qU\9Aw[\A4\81e\A4\81c\AB\89g\B0\8Dj\B2\90m\AC\89f\9E|Y\A5\83_\AB\88e\A0~]\A4\82a\9AvX\93pS\8BlM{]?lP1oR2\7F^=\8AiG\86dB\96rN\98vT\97zZ\A9\8En\B8\9F\81\B5\A0\83\AF\98{\AC\96u\BA\A2\7F\BC\A3\82\BD\A5\87\BC\A3\84\B7\9F\82\C7\B0\94\C6\B2\95\C6\B2\95\C0\AC\92\C4\AE\92\C8\A9\8A\C6\A3\7F\C0\98n\B2\86X\AA{J\A5tA\9Em;\9Cm<\9Al>\97i;\98j?\98pI\A6\85g\B0\9B\86\B8\AD\A2\C4\C0\BD\D6\D6\D6\DF\E0\E3\DC\E0\E7\DE\E2\ECnF\1ErG\1CsD\16wE\14\80H\16\80K\16}I\16\81M\1A\80H\14}C\12\7FE\14\84M\1B\82N\1A\85P\1F\86T\22\93`.\9DmD\AA}W\B0\8Bg\B6\9By\BC\A7\8A\BD\A9\8C\CA\BA\9C\CC\BC\9E\C9\B2\95\C0\A9\8B\BA\A3\86\BC\A7\88\BD\A7\8A\C2\AC\8E\BD\A9\8C\BB\A5\89\A9\91w\A3\89j\97zW\86f>\8CjA\8DmF\85eD\8BjN\8EmS\98vZ\A2\7Fc\A8\85g\A3\81_\B1\8Ek\A4\81^\9CyV\A2\82Z\9F|X\A3\80]\9E|[\A2\81`\98vY\9Aw[\8EoP\86iIy]=~_?}^>\85fC\85dC\94rP\9D\81b\AA\94w\BA\A6\8C\B4\A3\8B\AA\98\83\B5\A3\8A\B2\9B\81\BD\A0\83\B7\9F\81\B8\A2\85\AF\9A}\C6\B1\95\BD\AA\8E\BC\AA\8F\BD\AD\94\BA\AA\92\B5\A0\86\B2\97{\B6\95s\BA\93l\B7\8B^\B1\82R\A9xG\A6uC\9Ep@\9Al>\97i;\98j?\9CtM\A4\85f\B2\9D\88\BD\B4\A9\C4\C0\BD\CD\CD\CD\D7\D8\DB\DC\E0\E7\DE\E2\EC\8Eb6\82U)qC\15zG\15{E\13\7FJ\16}I\16~H\17\7FJ\15\82I\18\85J\18\82I\1A\81M\1A\86R\22\84S#\90^/\94iB\A4\7F[\B0\8Fo\BC\A3\86\C1\B0\95\C3\B5\9B\C7\BB\A0\C9\BB\A1\C1\AF\93\C3\B1\95\C1\AE\91\BC\A9\8D\BB\A9\8F\B1\9F\85\BB\A9\90\C0\AE\96\C8\B4\9E\BB\A8\8B\AB\93q\99~X\97xQ\86jF\8AoN\8AoS\8ClS\9F~c\9E|a\A9\87h\A6\84b\AC\89f\A2\7F]\99vS\A4\81^\A5\83_\A4\83`\9E}\5C\A4\81c\99uY\9Aw[\8ClO\8AkLy[=\80bC\80`@\90pP\90qP\9D~\5C\AC\94w\BA\AC\93\C1\B4\9B\BB\AE\9A\B8\A9\97\BA\A8\93\BD\A5\8E\BE\A1\87\BA\A0\85\B5\A0\86\B6\A3\87\BE\AA\91\C3\B3\9B\C3\B3\9C\BB\AB\94\B5\A5\8F\BA\A8\90\C1\A8\8B\C4\A4\84\C1\9Bt\BB\90d\B5\86V\A4tB\A4tB\9Dn>\9Dn?\99j<\9AkA\9EvO\A6\85g\A9\93~\B7\AC\A0\C9\C4\C1\D0\D0\D0\D6\D7\DA\DD\E0\E6\DD\E1\EB\86T)yH\1Es?\14{E\18{E\14\82H\17\81K\15\82J\17}F\18\81J\1C~F\17~H\1A\80K\1E~M#\84U-\93fA\A2~[\B4\94t\BE\A5\89\C0\AD\96\C8\BA\A6\CA\BE\AC\C6\BB\A9\C4\B8\A5\BA\AC\97\B7\A8\91\B2\A2\88\AF\9F\82\C0\AD\90\C2\AD\94\C7\B0\9C\C2\AD\9C\C7\B6\A4\CC\BA\A4\C7\AE\94\B0\95u\9A}[\8ApO\7FiI\87oQ\8EkY\9C|f\9C\7Fc\98\7F]\A9\8Fi\AA\8Bf\A8\85b\A2\80^\A4\83e\9C{^\A6\85g\9Ay[\96uY\97vZ\98vZ\8BpUzaH}cI\85iL\80bD\8CnP\97z^\AC\91u\BC\AA\97\C9\BE\B3\CD\C2\B7\C3\B7\AA\C0\B5\A4\C0\B3\A0\B8\AA\94\B6\A6\8E\B5\A4\8C\B5\A4\8C\BC\AB\97\C4\B3\A3\C7\B8\AA\C2\B4\A7\C0\B3\A4\BC\B1\A0\BD\AF\98\BC\A8\8A\BA\9E\7F\B1\90k\BD\94j\BD\91c\B8\89[\AE\7FO\AA{K\A2rC\9Al>\9AjA\98lH\A3\7Fb\AF\96~\B7\A9\98\C7\BF\BA\D4\CF\CC\D4\D4\D4\DB\DD\E1\DC\DF\E7wD\1ByE\1C}G\1C\81M\1D\80H\19\85J\18\82I\15\81K\16\82K\1D\82K\1D\82I\1A\86N\1E\88R$\98f9\A8{N\B2\87]\AF\8Ah\BD\9D}\C7\AC\92\D0\BB\A5\CC\BD\A8\C4\B5\A3\C7\BA\A8\C2\B5\A3\BE\B3\A2\C1\B5\A1\BA\AD\95\AF\A1\87\9E\8Eu\B4\A3\8D\C9\B6\A3\CC\B8\AA\C6\B9\A9\D0\C1\AF\CE\BA\A3\B8\9E\83\A8\8Eo\8EuW\8DvX\8AqV\94q^\93pZ\A2\85g\B7\9Cw\A9\8Eh\9E\80\5C\A0}Z\9AwX\A8\85g\9Dz]\9Dz]\9F{^\99vY\94rU\93pS\8AoS{cJx_E\84iM\8BoS\90uZ\90x`\A5\8Ew\C3\B4\A6\D2\CC\C4\C9\C1\B7\C0\B8\AD\C1\B9\AA\C4\BA\AB\C1\B7\A5\BB\B1\9E\BC\AF\9B\BD\AF\9A\C0\B2\A0\C3\B6\A6\C6\B8\AD\C4\B6\A9\B7\AA\9A\AE\A1\8F\AF\9F\87\B7\A1\84\B7\9C{\B8\97o\B0\88\5C\B4\87Y\B2\82R\AC|L\A3tC\9Ep@\9Cl=\9DkB\9FrN\A4\81c\A6\8Cu\B1\A2\90\C2\B9\B3\CE\C8\C6\D2\D2\D2\D8\D9\DC\D8\DB\E3yE\1C}J }G\1C}F\18\80H\19\86K\1A\82I\15\82K\15\85P\1B\84O\1B\8AT\1F\8CW\22\90['\90_-\88\5C0\84Z0\94mI\A8\86d\A9\8Cp\AA\93{\BA\A8\92\BE\AD\9A\C0\AF\9C\C8\B8\A6\BE\B6\A6\C0\B8\A8\BD\B6\A3\BC\B3\9E\B7\AC\98\A6\9C\8A\B2\A4\96\C8\BB\AE\CA\C3\B6\D9\D0\C2\DB\CB\B8\C7\B2\9C\AB\93|\90w`\96{e\8BoX\A4\7Fi\A3\7Fg\99y[\A9\8Ch\A3\84_\99xU\A9\86c\A2~]\9Ez[\9CwX\9Fz[\A2}^\A0{]\98tV\93oP\8EqT\81kPxaF~eK\86lR\88qZ\A2\8Cz\C8\B7\A6\D4\C9\BF\CE\CC\C6\C2\BF\B9\BD\B9\B0\B8\B3\AA\B5\AE\A3\AF\A7\9A\AE\A7\98\B4\AD\9D\B5\AD\9E\B7\AF\A0\BD\B3\A7\BD\B1\A5\B6\A8\98\BB\AB\98\B7\A7\8F\B0\9D\83\B6\9E\80\B5\97t\BC\97o\B4\88\5C\AC}L\A3sB\A4r@\A2rA\A0p@\9EoA\9DmD\9ErN\A3\7Fa\A6\8Cu\A6\97\85\B5\AC\A7\C1\BC\BA\CC\CA\CB\D3\D4\D7\DA\DD\E5zG\1D{H\1E}G\1C\84O\1F\84K\1C\8BP\1E\8AP\1B\8AS\1C\86P\1B\82M\18\84N\18{E\10}I\16zK\1A\81U'\92g;\A2zS\A3~\5C\A4\85f\BD\A3\89\C2\AE\96\C3\B1\9C\C6\B4\9F\C1\B0\9B\BC\B7\AA\C2\BE\B1\C3\BE\B2\BB\B7\A7\B6\B1\A1\B6\B1\A2\B8\B3\A6\B5\AE\A3\AA\A9\9F\C2\BF\B5\D7\CE\C2\D5\C7\B8\BA\A6\95\8Due\8Ap^\8Bo\5C\A0|e\9F{c\A3\7Fb\AA\88f\A3\80]\AC\89f\B7\94r\9Ez[\A2\80^\A4\82`\9AvW\99tV\9Fz[\98vV\92mO\8DrT\82mP\7FiM~hM\7FiS\A0\8Dz\CC\BD\AE\D6\CB\C1\CA\C6\C0\B8\B8\B3\AC\AC\A9\AB\AB\A5\9E\9C\95\A4\A2\99\AA\A6\9D\AE\AB\A1\B5\B3\A7\B6\B5\A8\B6\B2\A8\B7\B1\A7\BC\B3\A6\BB\AE\9E\BD\AD\98\C3\B1\97\BD\A9\8C\AF\96w\B7\99t\B6\92f\BC\8E`\BB\8BZ\AF|J\A0n<\9Aj9\98i:\9Al>\9DkB\9DqM\9F{^\AA\90y\B2\A3\91\B8\B0\AA\C0\BB\B9\CA\C8\C8\CE\CF\D2\D6\D9\E1zG\1D{H\1E\81K\1F\81M\1D\88P \8AO\1D\88N\1A\87P\1A\84O\1A\84P\1A~H\13\84N\18\80M\1A\87W&\88[-\92g;\9EvO\AC\85d\BE\9E~\C0\A6\8B\BC\A6\8F\BC\AA\95\B8\A7\92\B7\A7\93\B6\B2\A6\B1\AF\A3\A4\A2\97\AB\A9\9E\B0\AF\A4\A8\A7\9D\A8\A7\9D\BC\BC\B1\C1\C1\BA\BE\BE\B7\B6\B4\AC\CA\C2\B8\CC\BF\B4\90}q\82l^\8Aq`\93t\5C\9D{`\A8\84g\A9\87f\A0~]\A4\82c\A3\82f\9C}`\99y[\9Ay[\90oT\97wZ\96uW\98wZ\94sV\88nS\81mTzeLcP:\7FmY\B4\A7\98\C9\C1\B7\B0\AD\A8\AF\B0\AD\BA\BE\B9\B4\B6\B3\A8\AA\A4\9E\9E\9A\90\90\8B\A3\A3\9D\A6\A6\A0\A7\A8\A0\A8\AA\9F\A9\AA\A0\A9\A5\9C\A5\9D\92\B1\A5\95\B8\A9\92\BA\A8\8E\B7\A4\86\B0\98z\9F\82`\A8\85]\B1\87[\AC}L\AC|J\A3q@\A3sB\9Fp@\9Cl=\9DkB\9FrN\A4\81c\AA\90y\B2\A3\91\BE\B6\AF\CC\C6\C4\CC\CA\CA\D2\D3\D6\D4\D7\DFtA\18wD\1B\7FJ\1E\81K\1D\84K\1C\86K\1A\87N\19\87P\1A\7FK\17}H\14\81L\18\85P\1B\88T!\85U&\8B_3\92h>\A4{W\C3\A0}\BA\9C\7F\B6\9E\85\AA\98\83\AC\9B\88\B6\A6\92\C7\B8\A6\BE\B8\AB\BA\B7\AC\B4\B2\AA\A8\A7\A0\A8\A8\A0\B5\B6\AC\AE\AF\A3\9E\9F\93\94\94\8D\AE\AE\A8\CD\CD\C5\C2\C0\B9\BE\B6\AD\96\8A~xhY\8Aud\93xb\9E\81i\A2\81g\A6\84g\A5\83g\9D}c\92w^\92v^\97y`\90uZ\93w\5C\90uZ\8DrW\8DqX\92v[\8Ct]\87s_q^JfVCoaR\90\88|\A9\A9\A1\BF\C2\BD\C7\CC\C6\B5\B8\B3\9B\9E\98\92\94\8F\9D\9E\98\A5\A5\A1\A6\A6\A2\A2\A1\9E\AD\AE\A6\B2\B6\AC\B7\B7\AE\C3\C1\B8\C3\BD\B2\C0\B8\A8\B6\AA\96\BC\AD\93\B7\A6\8C\B5\9E\83\BD\A2\81\B6\95p\AE\85]\AB~Q\A3vH\9FrC\9Do?\9Ak=\99j<\99h?\9DqM\A6\82d\AC\93{\B6\A8\96\BE\B5\AF\C9\C3\C1\C9\C7\C8\CE\CF\D2\D3\D7\E0zG\1DzG\1D\80J\1E\7FJ\1A\84K\1C\86K\1A\87N\19\87N\1B\86N\1F\82K\1D\86N\1E\88P \86R\22\92_5\A4wJ\AE\83Y\B2\8Ej\A3\83d\A9\8Fu\A2\8Dx\B5\A5\91\C6\B9\A7\C7\BA\A8\BC\AE\9E\BB\B5\A7\AF\AB\A0\AF\AC\A5\AA\A8\A4\AC\AB\A6\A9\AA\A0\95\98\8B\98\9A\8D\99\98\8F\9E\9E\98\AE\AE\A9\AA\AB\A5\BE\BD\B5\9A\94\88`VG\94\86q\A0\8At\A2\89p\9F\81i\99za\9C~f\99\7Fi\8Bs`\87o[\8Cs]\85lV\8Cs]\8Br[\8Br[\8Br[\96|e\9A\82o\86pb\85rbM>1VL@\B0\AD\A1\B7\BB\B2\9D\A8\A0\A6\AC\A6\9D\9F\98\8A\8B\83\7F\7Fy\8B\8B\85\91\90\8C\98\96\92\9D\9A\96\9F\9F\96\8F\92\85\A1\A2\97\9E\9D\92\A9\A5\9A\B1\AA\9C\BB\B2\9F\BE\B3\9C\BA\AD\93\BE\AE\95\B1\99|\A5\87c\B0\8Be\B7\8Dc\B4\88\5C\A8|O\99m?\9Eo@\9Eo@\9DkB\9CoK\9F{^\A4\8Bs\AB\9C\8B\BA\B3\AC\C2\BD\BB\CA\C8\C8\D2\D3\D6\D6\DA\E1xE\1BzG\1D\81K\1E\82K\1D\88P\1E\88P\1D\87P\1A\86P\1B\81K\1D\86P\22\86N!\91W)\98b4\97e:\90a:\94lE\9AxW\B1\92t\B4\9A\80\B7\A3\8D\B5\A6\93\B1\A5\95\AF\A2\93\B2\A7\96\B6\AF\A1\B4\AD\A2\B4\B0\A8\B5\B3\AE\AB\AB\A5\9B\9C\93\9C\9D\91\9A\9C\8D\93\92\89\98\98\91\9D\9E\98\B4\B6\AF\B4\B5\AB\91\91\83kfT\9A\90z\A2\90z\AF\99\82\94ze\9A\7Fi\9E\84n\7FiXhVHl[J\5CK9o\5CI\85p\5C\90{g\88t`\90ze\9E\89t\9D\88v\9D\87{\94\82tgZMVOC\92\90\85\91\97\8D\8C\98\90\98\A0\98\9F\A0\97\A8\A9\9F\98\99\8F\A8\A8\A0\AC\AB\A6\A5\A4\9D\AF\AC\A7\A9\A9\9F\B0\B1\A5\A8\A8\9D\B8\B7\AC\B5\B2\A7\BC\B8\AA\B2\AC\9B\B6\AF\99\B8\AD\97\B2\A2\8B\BA\A5\8A\BC\A1\80\AA\89e\9FzP\97oF\9FuK\98l@\9Ak=\97i;\98h@\9CqM\A0}_\A2\8Ar\A6\97\85\BA\B1\AA\B8\B2\AF\C1\C0\C0\CC\CC\D0\D1\D4\DBwD\1BzE\1B\80H\1B\87L\1B\84N\18\85O\1A\85R\1E\82R\1D\85R\1F\87R!\94[+\8BS&\8AV*\8D]2\92i>\97sG\A6\8Af\B6\9Bz\B6\9C\82\B7\A0\8A\B8\A5\92\B1\A0\8E\BB\AC\9A\C3\B5\A4\BC\B6\A8\B8\B7\A8\B5\B6\A8\B2\B6\A8\A0\A4\96\94\98\8C\A0\A3\98\94\96\8C\A4\AB\A0\AF\B5\A9\AD\B1\A7\A2\A4\97\8E\8E\80ywjwrb\93\8C{\A6\98\80\AC\9D\85\93\83m\85vczm]73&\16\16\0E\17\16\0E\1E\1C\13,'\1CSH;\81rcyiZ\A3\93\80\A5\94\81\A2\91}\9D\8Cx~p_\84zka[Q\88\87\80\97\9A\96\8B\90\8F\96\9A\96\8C\8E\86\9E\A0\98\A1\A3\9B\97\98\91\A8\A9\A1\A3\A4\9C\A8\A9\A1\A6\A8\A0\A2\A3\9D\A3\A3\9D\9F\9E\96\AC\A9\9F\B1\AD\A2\B0\A9\9D\BB\B3\A5\B4\A9\98\C1\B0\9F\B5\A1\8C\AC\92y\B2\93t\B1\8Ei\AB\83[\9CrH\9DqF\99j?\98mB\98mF\96qM\98{]\9A\84l\A6\97\85\B1\A8\9C\BC\B6\AD\BD\BB\B8\C8\C8\CA\CD\D0\D5}K\22~J\1F\80I\1B\85J\18\88R\1C\88S\1D\87U \84U \84T\1E\85Q\1E\85M\1E\80H\1B\80K\1F\91_2\94f9\A8}Q\9D\7FZ\97|[\9D\83j\A6\90z\AA\96\85\C3\B2\A2\BB\AD\9E\BC\AF\A0\B8\B2\A8\B6\B4\AA\B3\B4\A8\AC\B0\A4\95\9A\90\A0\A5\9C\90\92\8A\98\99\93\A2\A9\A1\A9\B0\A8\AA\AF\A7\A4\A6\9D\9C\9C\92trg\9D\9A\8E\9A\94\86\B4\AC\98\BD\B2\9F\B0\A4\93zpaB;/\12\11\0A\13\14\0C\14\17\0E\0D\0E\08\11\11\0B$ \17I@6th]\AE\A3\96\BD\B3\A5\B6\AC\9D\9F\94\84\A3\9B\8Dzthge\5C\8A\8A\84{~{\8E\92\8F\AD\AF\AC\A0\A2\9A\9B\9D\96\90\92\8B\91\93\8C\90\92\8B\A3\A5\9D\A6\A8\A0\A6\A8\A2\AB\AC\A7\A7\A8\A2\B7\B6\B0\AC\A9\A0\B7\B2\A9\B1\AA\A0\B0\A8\9B\B6\AB\9D\BE\AE\9E\BA\A6\93\B6\9F\89\B1\95y\AB\89g\9CwR\A3zR\98nE\97iC\99mG\9FvP\A0}Z\9A\7Fb\9A\87q\A6\99\89\AE\A6\9A\B8\B3\AA\BD\BC\BA\C6\C8\CA\CD\D0\D5}K#~M#\85O\22\8AS \8DW\22\8CW\22\88U!\85U \84T\1F\85S\1F\86R\1E\8BU#\94\5C.\91[0\A2mA\92a8\91mH\93vS\A2\88k\AC\94\80\B5\A1\91\B4\A7\98\B4\AB\9D\AE\A7\9A\AA\A5\9D\AF\AE\A7\AD\AE\A6\A3\A6\A0\A3\A8\A0\99\9D\97\9E\A0\9C\9F\9F\9C\9F\A3\9F\A4\AA\A4\A1\A5\A1\96\98\92{{t\8C\8B\85\9C\9A\93\B8\B5\AD\BC\B7\AD\CD\C7\BD\A8\A2\98a\5CR\1F\1E\17\17\18\10\11\14\0C\10\14\0B\0C\10\08\15\18\0F\14\14\0E\19\18\13SQI\AE\AC\A4\B8\B6\B1\B4\B1\AB\B1\AF\A7\97\96\8E\87\87\81\8A\8B\86z{x\82\85\80\A5\A8\A5\AD\B0\AB\B2\B4\AF\B5\B7\B2\B0\B2\AD\B4\B6\B1\A3\A5\9F\AF\B1\AC\A9\AB\A5\A4\A6\A0\98\99\95\9E\9E\98\9C\9B\95\A9\A6\9E\B5\B0\A5\BE\B7\AB\BE\B7\AA\B2\A9\9B\B6\A8\9B\BA\AA\9B\C2\AD\98\B8\A0\85\BD\9D}\B1\8Ei\A6\7FX\98pH\93iC\91jC\98tP\9E~^\A0\86l\A4\93\7F\A2\98\89\B0\A8\9F\B7\B4\AD\BE\BE\BD\C4\C7\CA\CC\D0\D6}N'\7FN%\85P$\8BW#\90W$\8DW\22\88U!\85S \82R\1D\7FO\1A\86T!\8DZ(\91Z,\98b6\90[/\9Cg=\9AtM\A3\84_\A9\8Cp\B5\9E\88\BB\A9\9A\B1\A7\9C\B2\AC\A1\BE\BB\B1\C0\BB\B7\B0\AD\AB\A6\A6\A2\A6\A9\A4\AB\AE\AB\A9\AC\A9\AF\B0\AF\A8\A8\A8\A8\AB\AA\A2\A6\A5\9C\A0\9C\9C\9D\9C\A8\A8\A7\9D\9D\9A\A0\A0\9F\A4\A4\A3\C8\CA\C8\C6\C6\C6\B4\B3\B1>>:\19\19\14\13\16\10\0C\10\09\0C\12\09\0A\11\08\0F\14\0C\13\17\10\1A\1D\19@B?\AB\AE\AD\AD\B2\B2\B9\BE\BE\A2\A6\A6\A6\AC\A9\A8\AB\A9\99\9D\99\8C\90\8C\AD\B1\AC\AA\AE\A8\B3\B6\B1\AF\B2\AD\AD\B0\AB\AA\AE\A8\A7\AB\A5\A2\A6\A0\A5\A9\A3\B4\B7\B2\B1\B4\AF\B0\B1\AC\9F\9F\99\9F\9E\96\A6\A2\99\AA\A5\9B\AC\A6\9A\B6\AF\A1\B4\AB\9F\BA\AF\A2\B2\A4\96\AF\9C\89\B1\99\80\A9\8Bn\AE\8Ci\A6\82\5C\A3}W\9AsM\92lG\96rN\98yZ\9F\89p\A5\96\83\AA\A1\93\B6\B0\A8\BA\B7\B3\C1\C1\C1\C2\C6\CA\CD\D0\D7\7FU,zO%\85R&\8AV#\92](\8DX$\84R \84R \88W$\91_,\9Fn;\85V&\88X+\85Q(\98b:\9Ci@\97rL\AE\8Ek\BD\A1\85\BB\A3\90\BB\AC\9E\BB\B1\A7\BD\B7\AE\B0\AD\A4\AF\A9\A5\BB\B9\B6\B5\B5\B2\B1\B2\B1\B2\B5\B2\AC\AF\AE\A3\A4\A3\AB\AB\AB\AA\AB\AB\AB\AE\AD\9F\A2\A1\A8\AB\AA\9E\9F\9E\A3\A4\A4\C3\C4\C4\BA\BA\BB\BB\BF\C2\CA\CD\D0\BB\BC\BECDC\18\19\16\13\17\11\0A\0E\09\11\19\10\0B\12\0A\10\17\0F\13\18\13\1A\1F\1BAIG\BC\C6\C7\B5\C1\C4\A4\AF\B2\B6\BF\C1\BB\C4\C6\AC\B5\B5\A3\A9\A8\A0\A4\A0\A3\A8\A2\9F\A2\9C\99\9E\98\92\98\92\8C\91\8C\8E\93\8E\8C\91\8C\93\99\93\93\99\93\AD\B2\AD\AF\B2\AD\A5\A6\A2\B0\B0\AB\A5\A4\9D\A6\A2\99\A3\9E\95\A9\A3\97\B1\AA\9C\AB\A2\95\A4\99\8C\A3\94\86\A3\91~\A2\8Bt\96z]\99yX\9DyT\97qJ\90jD\8Be@\91mJ\93tV\9D\86m\A0\90}\AF\A6\99\B4\AD\A8\C0\BD\BB\C2\C2\C3\C8\CC\D0\C8\CE\D7\81X0\7FU,\8BZ-\88T%\88T!\84P\1C\8AW$\8AV'\82R\22\94f6\94f7yO$zR(\8C`8\94e?\A8xQ\B1\91k\BB\9C|\B5\9C\83\B6\A2\8E\B8\A9\9B\B5\AA\9E\A9\A3\97\B6\B1\A8\BB\B6\B2\BB\B9\B6\AE\AE\A9\A7\A9\A6\B3\B6\B3\A2\A5\A2\AD\AE\AD\A6\A6\A6\A1\A4\A1\9C\A0\9C\8E\92\8E\9F\A2\A1\9C\A0\A0\AD\B0\B0\C8\CC\CE\C8\CC\CE\C1\CA\CD\BF\C7\C9\C1\C7\C9TVV\19\1C\19\15\18\14\0F\13\0F\11\17\10\0D\13\0C\11\16\10\10\14\10\19\1C\19[ba\C4\CD\CE\B1\BD\C0\B9\C5\C9\B4\BC\C1\B7\C0\C2\B9\C1\C2\9C\A2\A0\8B\90\8B\96\9C\95\A5\AB\A3\A4\AA\A4\96\9A\97\9C\A0\9D\9B\9F\9C\9E\A2\9F\A0\A4\A1\8E\92\8F\90\94\91\96\9A\94\A1\A2\9E\A3\A3\9D\AC\AB\A4\B0\AD\A4\A0\9B\92\A2\9B\8F\A5\9D\90\A4\9C\8E\A4\97\8A\A2\92\82\9E\89u\93|b\96xY\90nK\8CgA\90hA\92jB\91jC\93nJ\9AzZ\9F\85k\A2\91|\A9\A0\92\AB\A6\A3\B6\B5\B5\BD\BD\C0\BE\C3\CA\C6\D0\D7\9FwN\81Y/\7FQ$\80N \87R!\91[)\8AV'\87T%\82P&\94e9\9CqE\A0zM\B4\8Dc\8Af@\96pJ\9FyS\A2\88g\9F\8Ak\AA\94}\AE\9C\8A\BA\AA\9B\AC\A0\93\B0\A7\9A\BC\B4\A8\B6\B0\AA\B1\AF\A9\9D\9D\96\AF\B1\AC\A5\A9\A3\A7\AB\A6\9E\9F\9B\A5\A5\A4\99\9C\98\96\99\95\A0\A4\A0\9B\9F\9B\94\98\96\8F\93\93\C1\C7\C9\C6\CC\CE\C0\CC\CC\C2\CB\CC\CE\D4\D4\90\91\91&(&\15\18\15\16\1A\16\14\19\13\13\19\12\14\18\13\17\18\15453\A0\A4\A3\C5\CD\CD\C0\CB\CC\B5\BC\BE\BA\BF\C1\C1\C5\C6\B2\B7\B6\9C\A0\9E\93\99\93\82\87\81x}v\95\9C\95\9E\A6\A1\88\90\8B\95\9C\98\8F\96\92\96\9D\99\98\A0\9B\9E\A6\A1\9F\A4\9E\9B\9C\98\96\96\90\9D\9C\96\A3\9F\96\A6\A1\98\A3\9C\92\A3\9A\8E\A6\9B\8C\A0\90\80\9E\8Cz\A2\8Bt\9C\80d\97vU\97rN\91i@\8Aa8\92e?\93fA\94lH\9DzX\9F\83h\A5\91{\AA\9D\8E\B6\B0\AF\B6\B5\B6\BC\BD\C1\C2\C8\CE\C4\CD\D5\8Eg>{S)\84V)\86V&\8BV&\87R\22\88T$\86R&~L#}N'zR*\80\5C4\80`8\84e?\8DkH\9F|X\92{\5C\9F\89m\A3\8Fw\A8\95\82\A2\92\82\A3\94\86\AB\9F\90\AF\A6\99\AF\A8\A0\A8\A5\9D\A8\A9\9F\B1\B5\AC\A7\AA\A5\9C\9F\9B\A7\A9\A6\9F\A0\9D\A2\A6\A0\9B\9F\99\95\98\94\AA\AE\A9\9E\A2\9F\92\96\94\9E\A6\A4\BF\C6\C6\C3\CD\CC\C2\CA\C8\C1\C6\C5\CA\CC\CC}~}#%$\19\1C\1B\16\1A\16\16\19\14$&\22WWU\9F\9F\9E\C3\C4\C3\BD\C2\C1\B5\BE\BD\BD\C2\C2\B5\B7\B8\B3\B6\B6\A5\A8\A7\8F\93\90\85\8A\85\88\90\88\8A\92\8Bx\81zt{w\80\88\83\85\8D\88\8D\94\90\93\9A\96\92\99\95\9C\A2\9E\A9\AC\A9\9E\A0\9A\A0\A0\9C\94\94\8D\A9\A6\9E\A0\9B\92\9F\98\8E\A2\9B\8F\A2\96\87\AA\99\87\A6\92}\9A\82i\9A}`\98vS\90iC\8Cc;\88^4\8A]4\8Ec<\99nJ\99wU\94y^\A2\8Du\AA\9B\8C\AB\A7\A6\B6\B6\B7\C3\C5\C9\C2\C7\CE\C4\CC\D4{M\1F{M\1F\81S%\82S$\84T$\85S&}M\1E\81P#}P#\85X,\97l@\BB\8Fd\99qH\81[5\92lG\92mI\9AyX\97wX\96{\5C\8Dw[\8Bw`\99\88v\9D\8F\81\A3\97\8E\A5\9C\95\A4\9D\96\B1\AC\A7\B0\AE\AB\A5\A5\A2\9F\A2\9F\9B\9F\9E\9A\A0\9E\9A\9E\9A\8D\92\8D\A7\AC\A8\B3\B8\B4\8E\92\8F\7F\84\80\92\96\93\A5\AA\A8\BF\C6\C6\BC\C1\C3\C1\C7\C9\BE\C2\C3\C6\CB\CC\A6\AB\AC\89\8E\8Eost\89\8D\8D\A9\AD\AE\BF\C1\C2\C0\C2\C3\B8\BC\BD\BC\BF\C1\AD\B0\B2\B2\B7\B6\AD\B2\B0\A0\A6\A4\91\98\95\92\99\96\90\97\94\85\8D\89\8C\93\90\9E\A6\A2y\82}x\81|\82\8A\85\87\8C\89\8B\90\8C\94\98\94\94\98\94\9F\A3\9F\9E\A2\9E\9E\A0\9C\A3\A3\9D\9A\98\91\A4\A0\97\9C\97\8D\9D\98\8B\96\8B{\96\86q\9F\8Cu\AB\91v\A5\87h\97tR\90jD\86^6\8Cb8\8Cc;\8Ae@\8EmL\93x]\9E\89t\9D\8F}\A2\98\8C\AA\A9\A4\AE\AE\AE\BC\BC\BD\C5\C6\CD\C3\C5\CD\7FP\22\7FP\22\82S$\81R#\84T%\82S$\7FP\22\87W(\87Z-\81T(\8E`6\82X/\82Y1\82Z3\80Y2~X3\86dB\88gF\8AkK\82iI\8Ew[\9C\8At\A8\99\8A\B0\A0\96\B1\A7\9E\A5\9C\93\AF\A9\A1\9F\9E\98\A2\A2\9E\A0\A3\9F\A2\A8\A3\96\9D\9A\87\8C\88\9C\A0\9D\9A\9E\9B\8C\91\8D\95\99\96\82\87\83\92\96\93\9F\A3\A0\AB\B0\B0\A5\AA\AA\B1\B6\B6\B0\B5\B5\AC\B1\B1\B2\B7\B7\A1\A5\A5\8C\90\90\83\87\87\A2\A5\A5\9B\9F\9F\94\98\98\9B\9F\9F\99\9D\9D\9E\A2\A2\95\99\98\8C\93\90\8D\94\91\92\99\96\84\8C\89\7F\87\84\8C\93\90\8C\93\90\83\8B\88~\87\82x\81|\83\8B\86\80\86\82\89\8E\8A\8A\8E\8A\93\97\93\9B\9F\9B\A5\A8\A5\9A\9D\99\A1\A2\9C\9E\9C\95\9D\9A\91\9F\9B\90\A0\9A\8F\9C\92\82\99\8Bu\8E{e\91y_\A3\85g\98vT\99sM\91f@\86^6\8Ce=\8EjF\92rR\92y_\9E\8Bw\9D\8F\81\A5\9C\92\9F\9F\99\A6\A6\A5\B2\B2\B5\B9\BA\BE\BD\BD\C6zK\1D~O!\81S%~O!\85V'\85U&\85U&\88Y+\8C^1\80S'\81T(\82V+~T+}T+\7FW/\8Ee<\87a<\8ChD\8ElJ\90sP\99\7Fa\A0\8Ar\9A\85t\A2\90\84\9F\95\88\9D\95\89\A2\9C\92\99\97\8D\9F\9F\96\9D\9F\98\97\9D\96\8C\91\8C\9B\9F\9C\9A\9E\9B\88\8D\89\85\8A\86{\80|\87\8C\88\82\87\83\C2\C8\C3\B2\B7\B6\89\8E\8E\90\94\94\81\86\86sww\5C``:>>),,(**;>>KNNimm|\7F\7Fx{{\7F\82\82u{yz\81\7Fy\80}\AB\B4\B0w~{w~{~\86\83~\85\83~\87\83\86\90\8A\80\88\83\84\8C\87\82\87\84\90\94\91\8E\92\8E\8C\90\8C\96\9A\96\9C\A0\9C\99\9C\96\98\98\92\97\96\8E\96\92\89\9F\9B\90\A3\9D\92\A0\96\87\97\87r\94\83k\87rW\91uW\9C{X\91lF\88a:\84\5C5\8Ac=\8EkG\91tU\98\80h\9F\8D{\9E\91\84\A9\A1\97\A7\A8\A2\B1\B1\B0\BC\BC\BD\BD\BE\C2\BA\BA\C3tH\1C}Q%\82U)\7FR%\84W+\85X,\87Z.\84V+\85T,\7FR)\82T+yK%\8A\5C2\81S,\8A\5C5\87Y2\82Y3\86_9\8Af@\96uQ\8DpR\90w^\A2\8Bx\A4\90\80\98\8D\7F\96\8D~\A8\A1\93\9E\9A\8D\98\98\8C\99\9C\90\8E\93\89\95\9A\93\92\98\92\90\94\91\92\96\93\83\88\84}\82~\88\8D\89\85\8A\86\C1\C6\C2\AA\AF\AD\83\88\86\85\8A\88\8F\93\91\9B\9F\9E\95\99\97\8B\90\8Evzyy~|}\82\80\8E\92\90\90\94\92\8C\91\8F}\82\80diglqomupv}y\8C\93\8Fowrjqmx\7F{\84\8C\87\89\91\8D~\87\82\84\8C\88\84\8C\87\96\9D\98\8E\92\8F\9B\9F\9B\8D\91\8D\98\9C\98\9C\A0\9C\9B\9E\98\9B\9C\95\92\91\8A\82\7Fw\8D\88\7F\94\8E\83\A0\97\87\98\8Bw\94\85n\86rY\8CqT\8EnM\8CiD\92kD\87a;\8BgC\8EnL\91tW\98\83k\96\85u\A4\9A\8E\A3\9D\95\A9\A9\A4\B5\B5\B4\BF\BF\C0\BC\BC\C1\BF\BF\C9yQ(zR*~V.\81X/\82Y1\82Y1~U-~V.\7FU.zP*{P,{P,\82U/}P*~P*zN(}S/}V/\86a;\80_=\8CoP\97}c\8Ewd\92}n\A2\96\85\A4\9A\8A\A0\99\88\91\8E\7F\91\91\84\95\96\8A\91\94\8A\97\9C\93\95\99\95\98\9C\99\94\98\95\83\88\84\83\88\84\89\8E\8A\85\8A\86\9F\A3\A0\80\85\83x}{}\82\80|\81\7F\A3\A8\A6\AB\B0\AE\9E\A2\A1\9D\A3\A0\9E\A6\A3\98\A0\9D\93\9A\98\88\90\8Dqxu\5CcaX_\5Caheahdryuowry\80|owrqxtryu}\86\80r{v|\85\7F\7F\87\82\9D\A3\9F\9A\9E\9A\90\94\90\9B\9F\9B\99\9D\99\99\9D\99\97\9A\96\9D\9E\98\9A\99\91\90\8D\85\85\80w\8B\84y\90\87x\94\87t\8A{e\8Bw_\88oS\8EoP\8CiE\87b<\85`;\8CiF\8DnO\8CtY\98\83o\9E\90\80\9E\97\8C\9F\9C\96\AC\AC\A7\B4\B4\B3\B9\B9\BC\BF\BF\C4\BF\BF\C9xT0{X3\7F[6\80[6zW3{X3zW3\7F[6zT1wP/xP.wO-uK(\7FS/zO*{P,zS,tN(wT0\8CjH\86jL~eM\94\7Fj\A8\94\85\A9\9B\8D\99\8D\7F\91\8A|\90\8B~\92\90\85\96\96\8C\97\99\8F\9A\9E\97\99\9D\99\90\94\91\87\8C\88\8E\92\8F\94\98\95\86\8B\87\8C\91\8D\87\8C\88\86\8B\87fkg|\81}x}y\90\94\91\8C\91\8Duyvszu\80\88\83x\7F{ltoszvbie\5Cc_U\5CX[b]`hadle{\84|s{tpxqx\80ypxqy\82{v\80zu}x\83\8B\86\85\8C\87\98\9C\99\95\99\95\96\9A\96\9B\9F\9B\99\9D\99\97\9A\96\97\98\91\99\97\90\97\93\8A\88\84z\80zp\7Fyi\97\8By\8D\7Fj\84sZ\82jP~`B\8BiG\8EjE\85a>\82bA\8AmO\91{`\90\7Fk\97\8C~\9D\96\8C\A2\A0\9C\AE\AE\A9\B1\B1\B0\B5\B5\B8\BF\BF\C4\B7\B7\C0xY9wW8uV7uV6xY9{\5C=z[;zZ;uS7rQ2sP2rM/wP0xO.zQ/{R/zQ/\82]8\88fB}a>\81fJ\92{d\9E\8Ay\9F\8D~\94\86z\87{o\8B\82w\93\8C\83\94\90\87\94\94\8D\99\9A\94\96\99\95\93\97\93\8F\93\90\87\8C\88\8C\91\8D\94\98\95\86\8B\87\9A\9E\9B\83\88\84swt{\80|y~zy~zjnk\86\8B\87\7F\84\80\8B\92\8Ebkfv\80zdmhqzujsnjsnclgT]V_g`aibx\81yqyru}v{\84|qyru}w~\87\82x\81|\83\8B\86\88\8D\8A\92\96\92\95\99\95\96\9A\96\98\9C\98\9C\A0\9C\9A\9D\97\92\92\8D\92\91\8A\98\95\8C\93\8E\83\8E\88}}ugzn^\87zf\94\83k\86oU\80dG\82a?\8BgC\8CiF\8ClL\88mQ\86pY\91\82o\9C\93\85\A0\9C\94\A6\A6\A2\A9\A9\A4\AB\AB\AA\B0\B0\B1\B8\B8\BD\B8\B8\C1\93{_\8ApV\81gN\80gM\84kQ~dK\9C\82g\82iPqV?\82eL\8BmS\7F_EtS7\7F\5C?tP2tO1xT0uR0rQ0~bA\96~`\99\83m\80o^\A6\95\87\93\86{\91\84z\94\8A\81\94\8C\84\96\92\8A\94\92\8D\98\98\94\91\92\8E\90\94\91\88\8D\89\8B\90\8C\8B\90\8C\8C\91\8D\83\88\84\92\96\93uyvx~x|\82|{\81{z\80zqxq|\82||\82|x\80zs}vu\7Fxqzty\82|qztirmbke[c]]e^gohw\7Fwltlqyry\82yy\82yy\82|qzu\82\8A\86\83\8B\86\86\8D\88\90\94\91\90\94\90\98\9C\98\99\9D\99\9A\9E\9A\9C\9F\9B\97\98\91\90\8F\88\90\8D\84\8C\87}\8B\84y\82yk\8E\81r{lY\7FlW\8Du[\82fI}\5C;\82a>\88fD\8BnN\8ApV\88t]\91\85r\99\92\87\99\97\90\9D\9D\9A\A6\A6\A3\AC\AC\AC\AF\AF\B2\B3\B4\B8\B7\B8\C0\9E\97\90\A2\9B\94\9F\97\91\98\91\8B\9A\94\8D\9F\97\91\99\92\8C\92\8A\85\82zs\A6\9D\96\A2\97\92\A0\92\8D\9D\8B\84\91\7Fs\81m_eQ>qT6y];\80fF\8AsU~kOnaH\98\88r\96\88u\93\89{\91\87z\91\88}\8A\83z\96\92\89\96\95\8D\94\94\8F\91\91\8D\92\99\95\85\8D\8A\8D\94\91\7F\87\84\8B\92\8F\8B\92\8F\89\91\8E~\86\83|\85\81\82\8B\87\80\88\84{\84\80r{xowsltp\82\8B\88|\86\84t~|\7F\8A\88\85\90\90r}}nxzisu^ff_ca`ebvzxw{ymqoz\7F||\81~{\81}{\84|\80\88\81\86\8E\86\8C\91\8C\89\8D\88\95\98\94\94\96\92\96\9A\96\93\99\95\98\9C\98\9A\9A\94\94\93\8A\96\91\86\91\89z\8B\7Fq\90\81r\80n_\96\82q\80kV{cLsY?z[?sT5tX<~hM\86u]\88~k\91\8C\7F\98\95\91\99\98\98\9F\9F\A3\A5\A5\A6\A8\A8\AB\B9\B9\BC\B3\B5\B8\B0\B3\B7\AA\AA\A9\B1\B0\B0\B0\AF\AF\B0\AF\AF\AF\AF\AE\AF\AE\AE\B6\B5\B5\AB\AB\AA\B0\AF\AD\B7\B4\B4\B7\B2\B2\B6\AF\B0\AC\A1\A0\AC\9F\9B\B0\A2\98\94\85ws`GhT<iV>gU?l^I\7Fq]\A0\93\80\94\88w\84xk\8C\83v\8C\84y\9D\97\8E\92\90\8A\88\88\83\8F\91\8D\95\96\95\96\9A\97\A1\A5\A2\85\8A\86\90\94\91\92\96\93\8B\90\8C\90\94\91\81\86\82\85\8D\88\85\8D\88\89\91\8C~\86\81owr~\86\81}\84\80oxtkuqp{x\7F\8A\87\8A\94\93\85\90\90{\86\87t~\7Fw~}fkghmi\81\86\82txuswtvzw}\82~qxsy\82|\8A\92\8C\89\91\8A\86\8B\86\8C\91\8C\89\8D\88\9C\9F\9B\93\97\93\90\97\93\90\94\90\92\94\8D\93\92\89\90\8B\7F\93\8B}\8C\83s\91\82s\84qa~jW\85oZ\82jR\7FdJsW:\7FbCx^Br^F}nX\85|j\87\82v\99\97\92\A4\A4\A4\A3\A3\A6\A7\A8\AA\AC\AD\AF\B4\B5\B7\C0\C3\C7\BC\BF\C3\B2\B5\B7\B3\B6\B8\B6\B9\BB\BE\C1\C3\B7\BA\BC\B9\BA\BC\BE\BF\C1\B3\B4\B6\B7\B9\BA\B1\B3\B4\B7\B7\BA\B9\B7\BA\B6\B3\B6\B6\B1\B1\AB\A5\A1\A4\9C\94\A5\99\8E\A0\94\88\8B\80t\7Fui\9D\92\86\A0\95\88\92\87{\84zn\87}q\81wm\8C\84z~zs}}z\94\97\95\A9\AE\AE\A8\AF\AF\8E\92\8F\8E\92\8E\82\86\82\8F\93\8F\8E\92\8E\89\8D\89\90\94\90\82\87\83\8C\91\8D\8B\90\8C\8E\92\8F\80\85\81\83\88\84vzw\93\97\94x\81{itny\84\7F\7F\8A\86|\86\84u\7F}\81\8C\8C|\86\86u}|Za]`gc\84\8C\87v}yx\7F{w~z~\85\81ltpy\82}\89\93\8E\89\91\8E\91\98\95\82\87\85\8C\90\8E\8C\90\8E\95\99\97\93\99\94\91\96\90\8F\92\8B\96\96\8D\91\8E\83\91\8B}\84}n\8A~n\86tbtaN}iT{eM\80hL~eG\80fFs[@s_JzjW\85|k\8B\85y\94\92\8D\A2\A1\A1\A1\A0\A3\AC\AD\AF\B5\B6\B8\B3\B6\BA\C4\C8\CC\C6\CB\D0\B2\BA\BD\B5\BC\C0\BD\C5\C9\B7\BE\C2\B9\BF\C4\C0\C8\CC\C1\C9\CD\BE\C4\CA\B9\BE\C2\B6\BC\C1\B9\BD\C4\B9\BB\C4\B9\BA\C2\B5\B6\BA\B4\B4\B4\AC\AC\AB\B0\AF\AF\A9\A8\A8\A4\A2\A1\9E\9A\9A\98\94\91\82|y\80zvohc{si\86}uwpj\7F~z\93\94\93\AC\B4\B5\B3\BD\C0\B6\C0\C3\A2\A5\A3\87\88\86\85\86\84\87\88\86\8C\8D\8B\8F\90\8E\94\94\93\8C\8E\8C\8C\90\8C\8E\92\8E\88\8C\88\7F\82\7F\82\85\82}\80}\89\8D\89\86\8E\88myq\86\91\8B\88\92\8D\81\8C\88|\86\84~\88\86gqpV_\5C[b^ahdowrw~zw~zy\80|x\7F{r{xr}{\91\9A\99\97\A0\9F\95\9C\9B\92\98\98\89\8E\8E\90\94\94\8F\96\93\92\99\95\90\97\91\8D\91\8A\8C\8D\85\85\85|\8B\89~\87\85y\86|m\80p`xiVeUBo]Ho\5CEq\5CCmX>ydNtcQxjZ\82|n\8B\87|\90\8E\89\99\98\98\A2\A1\A2\A4\A6\AA\B7\BA\BE\BD\C0\C4\C8\CD\D2\C5\CA\CF\B7\C1\C9\BE\C8\D0\BE\C8\D0\C4\CD\D4\C4\CE\D5\C2\CB\D2\C2\CB\D2\BE\C7\CE\C0\C8\CE\B8\C1\CA\BD\C5\CF\C1\C8\D4\BD\C2\CD\BA\C0\CA\B9\BD\C2\B5\B9\BC\B5\BC\C2\AF\B6\BE\AE\B5\BB\AE\B0\B5\A8\A9\AB\A7\A7\A8\B7\B6\B7\9A\97\98\8C\88\83\90\8B\88\7F~}\8C\8D\8C\A6\AA\AC\B8\BF\C3\BC\C7\CE\B6\C2\C8\B2\B5\B5\96\99\98|~~\85\87\87\90\92\92\8B\8D\8D\91\93\93\8C\90\8F\88\8D\8C\8C\91\90\86\8B\89\82\87\85\88\8D\8C|\81\80u{yv~zitn|\86\82\86\91\8D\85\90\8Ex\82\80v\80\7Fhrrjsrfnliroqzww\81}x\81~y\82\7Fy\82\7Ft~}\8B\96\97\B6\C0\C1\BE\C9\CA\AB\B3\B5\9B\A2\A4\93\9A\9C\95\9A\9E\96\9C\9D\96\9D\9B\98\9E\9D\93\97\95\8F\91\8F\87\88\84\8A\8A\85\81\81{\82|s\81vjrh[rfXbVGfZI_R?]Q?cVGnaUwmc{vn\81\81{\96\96\93\A0\A0\A0\B0\AF\B0\AF\B2\B6\BA\BD\C1\C2\C7\CC\C3\C7\CF\C1\C8\CF\BF\CC\D4\C4\D1\D9\C4\D1\D9\C2\CF\D7\C0\CD\D5\BF\CC\D4\C1\CE\D6\BF\CC\D4\BE\C9\CE\C4\CD\D4\C2\CB\D5\C5\CC\DA\C0\C7\D7\C1\C9\D3\BF\C7\CF\BA\C4\CA\B8\C2\CC\BA\C4\CE\BF\C6\CF\B9\C0\C9\BB\BF\C6\BE\C2\C8\C0\C2\C7\B9\BB\C0\AE\B2\B5\9D\A1\A3\A0\A5\A8\BB\C0\C4\C2\C9\CE\C0\C8\CE\BE\C8\D0\B9\C3\C9\B2\BA\BD\A1\A7\A9\8D\94\97\9A\A0\A3\95\9B\9E\91\98\9A\8E\94\97\8E\95\97\8A\93\94\88\92\93\81\8B\8C\82\8C\8D\88\91\92u\7F\80mxymwwjtspzy{\85\85{\86\87x\83\85{\85\88\8D\98\9C\85\8F\92ktuclmw\81\82\89\92\93\7F\89\8A\89\92\93\AB\B4\B5\AC\B7\BA\B5\C1\C6\C5\D1\D6\C6\D1\D7\C4\CE\D4\C4\CC\D2\BD\C4\CD\C4\CA\D2\C7\CD\D3\C8\D1\D4\C8\CF\D4\B3\B9\BC\A2\A8\AA\A4\A9\AA\B2\B5\B5\98\9C\9C\88\88\87zvs\86\82~\82\7F{\82\7Fy\88\85\7F{xpcaYid_uomwus|}|\8A\8C\8C\A4\A9\A9\AD\B0\B2\BA\BD\C1\C7\CB\CF\C2\C7\CC\C2\C8\CE\C8\CE\D6\C5\CE\D6\C2\CF\D7\C0\CD\D5\C6\D1\D9\C8\D3\DB\C2\CF\D7\C2\CD\D5\C4\D1\D9\C3\CE\D6\CB\D2\D7\C8\D0\D6\CB\D3\DC\C5\CD\DA\C3\CD\DB\C5\CF\DA\C3\CD\D6\C1\CC\D4\C4\CD\D5\C3\CC\D3\C4\CE\D5\C0\C9\D0\BA\C4\CA\BD\C5\CD\C2\C9\D0\BC\C5\CC\BC\C7\D0\C4\D0\D9\C7\D2\DA\CB\D4\DC\D0\D8\DF\CD\D5\DC\C8\CF\D4\CA\D3\D9\C9\D4\DA\C6\D1\D9\B3\BE\C4\AD\B8\BE\BC\C7\CE\B0\BB\C1\9F\AA\B0\A8\B2\B8\9F\AC\B2\A1\AE\B4\9A\A7\AC\97\A5\AB\9A\A9\AF\91\9E\A4\8C\99\9E\82\8D\91oy{r|~\89\94\98\99\A4\A9\8F\9A\A0\92\9B\A3\BC\C5\CE\B7\C1\C9\AA\B3\BA\B0\BB\C1\BF\C8\CF\C8\D2\D9\C3\CC\D3\B6\C0\C8\C2\CC\D2\C9\D5\DC\CD\DA\E3\CD\DA\E3\D3\DF\E7\D7\E1\E9\D7\E0\E9\D7\DF\E9\D9\E0\EB\DC\E3\EC\DD\E4\ED\DC\E3\EC\D9\E0\E9\D7\DE\E7\D2\D8\E1\DB\E0\E8\D6\DB\E3\CC\CF\D6\B6\B8\BB\C1\C2\C6\CA\CC\D0\D2\D7\DA\D9\DD\DF\C8\CD\CE\CA\CF\D0\A5\A7\AA\BF\BF\C4\C2\C4\C7\AC\B3\B6\B6\BF\C1\C8\D2\D7\D3\DB\E0\D5\DB\E2\D8\DD\E3\D3\D9\E0\D4\DA\E1\D7\DF\E7\D6\DF\E8\C6\D1\D9\CA\D3\DD\CC\D6\E0\CB\D5\DF\C3\CD\D6\C2\CD\D7\CA\D3\DD\CD\D7\E1\C9\D3\DA\CB\D4\DC\C9\D2\DC\CD\D6\E1\C7\D0\DD\C9\D3\DF\CA\D3\DD\C9\D3\DC\C6\CF\D7\C8\D2\D9\CA\D3\DB\C8\D2\D9\C8\D1\D9\CC\D5\DD\CB\D4\DC\CC\D5\DD\C7\D3\DD\CA\D5\E0\CD\D8\E3\D1\DB\E5\D5\DE\E7\CF\D8\E0\D2\DA\E1\D2\DA\E1\D2\DD\E6\D3\DF\E7\CC\D7\E0\C9\D4\DC\CA\D5\DD\BF\CC\D4\BE\C8\D0\BE\C8\D0\BE\CB\D3\C8\D3\DB\C2\CF\D7\C4\D1\D9\CB\D7\DF\C9\D4\DC\C7\D3\DA\BD\C7\CF\B6\C0\C8\BB\C5\CD\C1\CD\D4\C8\D2\DB\C9\D3\DC\CC\D6\E0\D6\DF\E8\D7\E0\E9\D7\E1\E9\D9\E3\EB\D1\DB\E3\D3\DD\E5\D7\E1\E9\CF\D9\E1\CE\D7\DF\D1\DC\E5\D5\E1\E9\D6\E3\EB\DA\E4\EC\DB\E4\ED\DA\E3\EC\DB\E5\EE\DB\E4\EE\DB\E4\EE\DB\E4\EE\DA\E2\EC\DB\E3\ED\DB\E4\EE\DA\E2\EC\DC\E5\EF\DB\E3\ED\DF\E4\EF\D8\DD\E8\DC\E1\EC\DD\E2\ED\D7\DE\E7\DB\E2\EB\D7\DE\E7\D8\E0\E8\D9\E0\E9\D8\DD\E5\D8\DF\E8\D4\DE\E6\CF\DA\E1\D3\DE\E7\D7\E0\E9\D7\E0\E9\D8\DF\E8\D7\DE\E7\D9\E0\E9\DC\E4\EC\D9\E1\EB\C9\D3\DF\CB\D5\E1\CA\D4\E0\CD\D7\E3\C6\D0\DC\C7\D1\DD\CB\D5\E1\D2\DB\E6\D2\DB\E6\CD\D7\E3\CC\D6\E2\CC\D6\E2\CD\D7\E3\CD\D7\E3\CC\D6\E2\CB\D5\E1\CA\D4\DD\CB\D5\DF\CD\D7\E1\CC\D6\E0\CB\D5\DF\CC\D6\E0\CD\D7\E1\CD\D7\E1\CC\D6\E0\CF\D9\E3\D1\DB\E5\CE\D8\E2\D1\DB\E5\D2\DC\E6\D6\DF\E8\D7\E0\E9\DA\E3\EC\D7\E0\E9\D7\E0\E9\CF\D9\E3\CD\D7\E1\CB\D5\DF\CA\D4\DD\CE\D8\E2\CD\D7\E1\D7\E0\E9\D1\DB\E5\D6\DF\E8\D6\DF\E8\D6\DF\E8\D6\DF\E8\D9\E2\EB\DB\E5\EE\DC\E6\EF\D7\E0\E9\D2\DC\E6\D6\DF\E8\DB\E4\ED\DB\E5\EE\DC\E6\EF\DF\E9\F2\DE\E8\F1\DE\E8\F1\DB\E4\ED\D9\E2\EB\D9\E2\EB\DA\E3\EC\D9\E2\EB\DB\E5\EE\DC\E6\EF\DB\E5\EE\DC\E6\EF\DB\E5\EE\DC\E6\EF\DF\E9\F2\DE\E8\F1\DB\E4\ED\DA\E3\EC\DB\E4\ED\DC\E6\EF\DC\E6\EF\DC\E6\EF\DC\E6\EF\DE\E7\F1\DF\E4\EF\DE\E4\EE\DF\E4\EF\DF\E4\EF\DF\E4\EF\DD\E3\ED\DE\E4\EE\DB\E3\ED\DA\E3\EC\DA\E3\EC\DA\E3\EC\DA\E3\EC\D7\E0\E9\DA\E3\EC\DB\E4\ED\D8\DF\E8\D8\DF\E8\DB\E2\EB\DB\E2\EB\DB\E2\EB\C9\D3\DF\CC\D6\E2\CB\D5\E1\CB\D5\E1\CB\D5\E1\CC\D6\E2\CF\D9\E5\D2\DB\E6\CD\D7\E3\CC\D6\E2\CC\D6\E2\CF\D9\E5\C6\CF\DB\C6\D0\DC\CA\D4\E0\CF\D9\E5\CE\D8\E2\CD\D7\E1\CD\D7\E1\CE\D8\E2\CE\D8\E2\CE\D8\E2\CF\D9\E3\D1\DB\E5\D2\DC\E6\D6\DF\E8\CC\D6\E0\CE\D8\E2\CC\D6\E0\D1\DB\E5\D3\DD\E7\D2\DC\E6\D9\E2\EB\D6\DF\E8\D6\DF\E8\D1\DB\E5\CE\D8\E2\D1\DB\E5\D1\DB\E5\D7\E0\E9\D6\DF\E8\D9\E2\EB\D9\E2\EB\DB\E4\ED\DA\E3\EC\DB\E5\EE\DC\E6\EF\DB\E4\ED\DB\E4\ED\DE\E8\F1\DE\E8\F1\DC\E6\EF\DB\E5\EE\DC\E6\EF\DE\E8\F1\DE\E8\F1\DE\E8\F1\DF\E9\F2\DF\E9\F2\DC\E6\EF\DC\E6\EF\DF\E9\F2\DC\E6\EF\DB\E4\ED\DF\E9\F2\E0\EA\F3\DC\E6\EF\DB\E5\EE\DB\E4\ED\DB\E5\EE\DE\E8\F1\DE\E8\F1\DC\E6\EF\DC\E6\EF\DC\E6\EF\DB\E5\EE\DB\E5\EE\DC\E6\EF\DC\E6\EF\DC\E5\EF\DD\E3\ED\DE\E4\EE\E2\E7\F2\E1\E6\F1\E1\E6\F1\DE\E4\EE\DE\E4\EE\DB\E4\EE\DB\E4\ED\DB\E4\ED\DB\E4\ED\DB\E4\ED\DB\E4\ED\DB\E4\ED\DC\E6\EF\DC\E3\EC\DE\E5\EE\DE\E5\EE\DC\E3\EC\D9\E0\E9\CB\D5\E1\CC\D6\E2\C9\D3\DF\CB\D5\E1\CC\D6\E2\CF\D9\E5\CF\D9\E5\CC\D6\E2\CB\D5\E1\CA\D4\E0\CA\D4\E0\CB\D5\E1\CA\D4\E0\C6\D0\DC\C7\D1\DD\CC\D6\E2\D1\DB\E5\D2\DC\E6\D1\DB\E5\CE\D8\E2\D1\DB\E5\D1\DB\E5\D2\DC\E6\D3\DD\E7\D9\E2\EB\D2\DC\E6\CF\D9\E3\CF\D9\E3\CF\D9\E3\CF\D9\E3\CF\D9\E3\CF\D9\E3\D7\E0\E9\D1\DB\E5\D3\DD\E7\D2\DC\E6\D2\DC\E6\D7\E0\E9\D6\DF\E8\D9\E2\EB\DB\E4\ED\DB\E4\ED\DC\E6\EF\DF\E9\F2\DE\E8\F1\DE\E8\F1\DE\E8\F1\DF\E9\F2\E0\EA\F3\E0\EA\F3\DF\E9\F2\DF\E9\F2\DE\E8\F1\DC\E6\EF\DC\E6\EF\E0\EA\F3\E2\EC\F5\E1\EB\F4\E1\EB\F4\DF\E9\F2\DE\E8\F1\DB\E5\EE\DA\E3\EC\DB\E4\ED\DF\E9\F2\DF\E9\F2\DB\E5\EE\DB\E5\EE\DA\E3\EC\DB\E4\ED\DE\E8\F1\DE\E8\F1\DE\E8\F1\DF\E9\F2\DE\E8\F1\DE\E8\F1\DE\E8\F1\DC\E6\EF\DB\E4\ED\DB\E3\ED\D7\DD\E9\D9\DF\EB\DE\E4\EE\DE\E4\EE\DE\E4\EE\DC\E2\EC\DC\E2\EC\DA\E2\EC\DA\E3\EC\DA\E3\EC\DA\E3\EC\D9\E2\EB\DB\E5\EE\DB\E4\ED\DB\E5\EE\DE\E5\EE\DD\E4\ED\DD\E4\ED\DC\E3\EC\D9\E0\E9", align 16
@pattern_width = internal constant [9 x i32] [i32 2, i32 4, i32 1, i32 1, i32 2, i32 3, i32 6, i32 6, i32 5], align 16
@pattern_height = internal constant [9 x i32] [i32 6, i32 12, i32 3, i32 6, i32 12, i32 3, i32 6, i32 18, i32 15], align 16
@pattern = internal constant [9 x [108 x i32]] [[108 x i32] [i32 0, i32 1, i32 0, i32 2, i32 1, i32 2, i32 1, i32 0, i32 2, i32 0, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [108 x i32] [i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 2, i32 2, i32 0, i32 0, i32 2, i32 2, i32 1, i32 1, i32 2, i32 2, i32 1, i32 1, i32 2, i32 2, i32 1, i32 1, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 2, i32 2, i32 0, i32 0, i32 2, i32 2, i32 0, i32 0, i32 2, i32 2, i32 1, i32 1, i32 2, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [108 x i32] [i32 0, i32 1, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [108 x i32] [i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [108 x i32] [i32 0, i32 1, i32 0, i32 1, i32 0, i32 2, i32 0, i32 2, i32 1, i32 2, i32 1, i32 2, i32 1, i32 0, i32 1, i32 0, i32 2, i32 0, i32 2, i32 0, i32 2, i32 1, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [108 x i32] [i32 0, i32 1, i32 2, i32 2, i32 0, i32 1, i32 1, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [108 x i32] [i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [108 x i32] [i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 1, i32 1, i32 2, i32 2, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 1, i32 1, i32 1, i32 2, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [108 x i32] [i32 0, i32 1, i32 2, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 0, i32 0, i32 1, i32 2, i32 2, i32 2, i32 0, i32 0, i32 1, i32 2, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2, i32 0, i32 1, i32 2, i32 2, i32 0, i32 0, i32 0, i32 1, i32 2, i32 2, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2, i32 0, i32 1, i32 2, i32 2, i32 0, i32 0, i32 0, i32 1, i32 1, i32 2, i32 0, i32 1, i32 1, i32 2, i32 2, i32 2, i32 0, i32 1, i32 1, i32 2, i32 0, i32 0, i32 0, i32 1, i32 1, i32 2, i32 0, i32 1, i32 1, i32 2, i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]], align 16

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i32 1, i32 6, i32 0, %struct._GimpParamDef* getelementptr inbounds ([6 x %struct._GimpParamDef], [6 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i32 0, i32 0))
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
  %call = call i8* @gimp_locale_directory() #4
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0), i8* %call) #5
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0)) #5
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0)) #5
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %2, align 4
  %3 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %3, align 8
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %4 = load i32, i32* %status, align 4
  store i32 %4, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %5 = load i32, i32* %run_mode, align 4
  switch i32 %5, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.6
    i32 2, label %sw.bb.21
  ]

sw.bb:                                            ; preds = %do.end
  %call4 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* bitcast (%struct.VideoValues* @vvals to i8*))
  %call5 = call i32 @video_dialog()
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.6:                                          ; preds = %do.end
  %6 = load i32, i32* %nparams.addr, align 4
  %cmp = icmp ne i32 %6, 6
  br i1 %cmp, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %sw.bb.6
  store i32 1, i32* %status, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %sw.bb.6
  %7 = load i32, i32* %status, align 4
  %cmp9 = icmp eq i32 %7, 3
  br i1 %cmp9, label %if.then.10, label %if.end.20

if.then.10:                                       ; preds = %if.end.8
  %8 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %8, i64 3
  %data12 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx11, i32 0, i32 1
  %d_int3213 = bitcast %union._GimpParamData* %data12 to i32*
  %9 = load i32, i32* %d_int3213, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.VideoValues, %struct.VideoValues* @vvals, i32 0, i32 0), align 4
  %10 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %10, i64 4
  %data15 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx14, i32 0, i32 1
  %d_int3216 = bitcast %union._GimpParamData* %data15 to i32*
  %11 = load i32, i32* %d_int3216, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.VideoValues, %struct.VideoValues* @vvals, i32 0, i32 1), align 4
  %12 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %12, i64 5
  %data18 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx17, i32 0, i32 1
  %d_int3219 = bitcast %union._GimpParamData* %data18 to i32*
  %13 = load i32, i32* %d_int3219, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.VideoValues, %struct.VideoValues* @vvals, i32 0, i32 2), align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.10, %if.end.8
  br label %sw.epilog

sw.bb.21:                                         ; preds = %do.end
  %call22 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* bitcast (%struct.VideoValues* @vvals to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.21, %if.end.20, %if.end
  %14 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx23 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %14, i64 2
  %data24 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx23, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data24 to i32*
  %15 = load i32, i32* %d_drawable, align 4
  %call25 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %15)
  store %struct._GimpDrawable* %call25, %struct._GimpDrawable** %drawable, align 8
  %16 = load i32, i32* %status, align 4
  %cmp26 = icmp eq i32 %16, 3
  br i1 %cmp26, label %if.then.27, label %if.end.45

if.then.27:                                       ; preds = %sw.epilog
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %17, i32 0, i32 0
  %18 = load i32, i32* %drawable_id, align 4
  %call28 = call i32 @gimp_drawable_is_rgb(i32 %18)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %if.then.27
  %call31 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0)) #5
  %call32 = call i32 @gimp_progress_init(i8* %call31)
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %19, i32 0, i32 1
  %20 = load i32, i32* %width, align 4
  %call33 = call i32 @gimp_tile_width() #4
  %div = udiv i32 %20, %call33
  %add = add i32 %div, 1
  %mul = mul i32 2, %add
  %conv = zext i32 %mul to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @video(%struct._GimpDrawable* %21)
  %22 = load i32, i32* %run_mode, align 4
  %cmp34 = icmp ne i32 %22, 1
  br i1 %cmp34, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %if.then.30
  %call37 = call i32 @gimp_displays_flush()
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %if.then.30
  %23 = load i32, i32* %run_mode, align 4
  %cmp39 = icmp eq i32 %23, 0
  br i1 %cmp39, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %if.end.38
  %call42 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* bitcast (%struct.VideoValues* @vvals to i8*), i32 12)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %if.end.38
  br label %if.end.44

if.else:                                          ; preds = %if.then.27
  store i32 0, i32* %status, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.else, %if.end.43
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %sw.epilog
  %24 = load i32, i32* %status, align 4
  store i32 %24, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %25)
  br label %return

return:                                           ; preds = %if.end.45, %if.then
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

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @video_dialog() #0 {
entry:
  %dlg = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  %group = alloca %struct._GSList*, align 8
  %y = alloca i32, align 4
  %run = alloca i32, align 4
  store %struct._GSList* null, %struct._GSList** %group, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 1)
  %call = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0)) #5
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %dlg, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_dialog_get_type() #4
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call2)
  %2 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %2, i32 -5, i32 -6, i32 -1)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_window_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call4)
  %5 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %5)
  %call6 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %hbox, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_container_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call7)
  %8 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %8, i32 12)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_dialog_get_type() #4
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call9)
  %11 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkDialog*
  %call11 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %11)
  %12 = bitcast %struct._GtkWidget* %call11 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_box_get_type() #4
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call12)
  %13 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkBox*
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %13, %struct._GtkWidget* %14, i32 1, i32 1, i32 0)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %15)
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0)) #5
  %call15 = call %struct._GtkWidget* @gimp_frame_new(i8* %call14)
  store %struct._GtkWidget* %call15, %struct._GtkWidget** %frame, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_box_get_type() #4
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call16)
  %18 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkBox*
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %18, %struct._GtkWidget* %19, i32 0, i32 0, i32 0)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %20)
  %call18 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 2)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %vbox, align 8
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_container_get_type() #4
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call19)
  %23 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkContainer*
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %23, %struct._GtkWidget* %24)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %25)
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %26 = load i32, i32* %y, align 4
  %cmp = icmp slt i32 %26, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load %struct._GSList*, %struct._GSList** %group, align 8
  %28 = load i32, i32* %y, align 4
  %idxprom = sext i32 %28 to i64
  %arrayidx = getelementptr inbounds [9 x i8*], [9 x i8*]* @pattern_name, i32 0, i64 %idxprom
  %29 = load i8*, i8** %arrayidx, align 8
  %call21 = call i8* @gettext(i8* %29) #5
  %call22 = call %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic(%struct._GSList* %27, i8* %call21)
  store %struct._GtkWidget* %call22, %struct._GtkWidget** %toggle, align 8
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_radio_button_get_type() #4
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call23)
  %32 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkRadioButton*
  %call25 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %32)
  store %struct._GSList* %call25, %struct._GSList** %group, align 8
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_box_get_type() #4
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call26)
  %35 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkBox*
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %35, %struct._GtkWidget* %36, i32 0, i32 0, i32 0)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %37)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 80)
  %40 = bitcast %struct._GTypeInstance* %call28 to %struct._GObject*
  %41 = load i32, i32* %y, align 4
  %conv = sext i32 %41 to i64
  %42 = inttoptr i64 %conv to i8*
  call void @g_object_set_data(%struct._GObject* %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0), i8* %42)
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %44 = bitcast %struct._GtkWidget* %43 to i8*
  %call29 = call i64 @g_signal_connect_data(i8* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @video_radio_update to void ()*), i8* bitcast (%struct.VideoValues* @vvals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_toggle_button_get_type() #4
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call30)
  %47 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkToggleButton*
  %48 = load i32, i32* getelementptr inbounds (%struct.VideoValues, %struct.VideoValues* @vvals, i32 0, i32 0), align 4
  %49 = load i32, i32* %y, align 4
  %cmp32 = icmp eq i32 %48, %49
  %conv33 = zext i1 %cmp32 to i32
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %47, i32 %conv33)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %50 = load i32, i32* %y, align 4
  %inc = add nsw i32 %50, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call34 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call34, %struct._GtkWidget** %vbox, align 8
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %52 = bitcast %struct._GtkWidget* %51 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_box_get_type() #4
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call35)
  %53 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkBox*
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %53, %struct._GtkWidget* %54, i32 0, i32 0, i32 0)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %55)
  %call37 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call37, %struct._GtkWidget** %frame, align 8
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %57 = bitcast %struct._GtkWidget* %56 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_frame_get_type() #4
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call38)
  %58 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %58, i32 1)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %60 = bitcast %struct._GtkWidget* %59 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_box_get_type() #4
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call40)
  %61 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkBox*
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %61, %struct._GtkWidget* %62, i32 0, i32 0, i32 0)
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %63)
  %call42 = call %struct._GtkWidget* @gimp_preview_area_new()
  store %struct._GtkWidget* %call42, %struct._GtkWidget** @preview, align 8
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %64, i32 100, i32 100)
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %66 = bitcast %struct._GtkWidget* %65 to %struct._GTypeInstance*
  %call43 = call i64 @gtk_container_get_type() #4
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call43)
  %67 = bitcast %struct._GTypeInstance* %call44 to %struct._GtkContainer*
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  call void @gtk_container_add(%struct._GtkContainer* %67, %struct._GtkWidget* %68)
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %69)
  %call45 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0)) #5
  %call46 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call45)
  store %struct._GtkWidget* %call46, %struct._GtkWidget** %toggle, align 8
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %71 = bitcast %struct._GtkWidget* %70 to %struct._GTypeInstance*
  %call47 = call i64 @gtk_box_get_type() #4
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call47)
  %72 = bitcast %struct._GTypeInstance* %call48 to %struct._GtkBox*
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %72, %struct._GtkWidget* %73, i32 0, i32 0, i32 0)
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %74)
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %76 = bitcast %struct._GtkWidget* %75 to i8*
  %call49 = call i64 @g_signal_connect_data(i8* %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @video_toggle_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.VideoValues, %struct.VideoValues* @vvals, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %78 = bitcast %struct._GtkWidget* %77 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_toggle_button_get_type() #4
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call50)
  %79 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkToggleButton*
  %80 = load i32, i32* getelementptr inbounds (%struct.VideoValues, %struct.VideoValues* @vvals, i32 0, i32 1), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %79, i32 %80)
  %call52 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0)) #5
  %call53 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call52)
  store %struct._GtkWidget* %call53, %struct._GtkWidget** %toggle, align 8
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %82 = bitcast %struct._GtkWidget* %81 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_box_get_type() #4
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %82, i64 %call54)
  %83 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkBox*
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %83, %struct._GtkWidget* %84, i32 0, i32 0, i32 0)
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %85)
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %87 = bitcast %struct._GtkWidget* %86 to i8*
  %call56 = call i64 @g_signal_connect_data(i8* %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @video_toggle_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.VideoValues, %struct.VideoValues* @vvals, i32 0, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %89 = bitcast %struct._GtkWidget* %88 to %struct._GTypeInstance*
  %call57 = call i64 @gtk_toggle_button_get_type() #4
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %89, i64 %call57)
  %90 = bitcast %struct._GTypeInstance* %call58 to %struct._GtkToggleButton*
  %91 = load i32, i32* getelementptr inbounds (%struct.VideoValues, %struct.VideoValues* @vvals, i32 0, i32 2), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %90, i32 %91)
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %92)
  call void @video_render_preview(i32 0)
  store i32 1, i32* @in_main_loop, align 4
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %94 = bitcast %struct._GtkWidget* %93 to %struct._GTypeInstance*
  %call59 = call i64 @gimp_dialog_get_type() #4
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %94, i64 %call59)
  %95 = bitcast %struct._GTypeInstance* %call60 to %struct._GimpDialog*
  %call61 = call i32 @gimp_dialog_run(%struct._GimpDialog* %95)
  %cmp62 = icmp eq i32 %call61, -5
  %conv63 = zext i1 %cmp62 to i32
  store i32 %conv63, i32* %run, align 4
  store i32 0, i32* @in_main_loop, align 4
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %96)
  %97 = load i32, i32* %run, align 4
  ret i32 %97
}

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #3

; Function Attrs: nounwind uwtable
define internal void @video(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %iter = alloca %struct._GimpRgnIterator*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call = call %struct._GimpRgnIterator* @gimp_rgn_iterator_new(%struct._GimpDrawable* %0, i32 0)
  store %struct._GimpRgnIterator* %call, %struct._GimpRgnIterator** %iter, align 8
  %1 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter, align 8
  call void @gimp_rgn_iterator_src_dest(%struct._GimpRgnIterator* %1, void (i32, i32, i8*, i8*, i32, i8*)* @video_func, i8* null)
  %2 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter, align 8
  call void @gimp_rgn_iterator_free(%struct._GimpRgnIterator* %2)
  ret void
}

declare i32 @gimp_displays_flush() #1

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare void @gimp_ui_init(i8*, i32) #1

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

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic(%struct._GSList*, i8*) #1

declare %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_radio_button_get_type() #3

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @video_radio_update(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = load i8*, i8** %data.addr, align 8
  call void @gimp_radio_button_update(%struct._GtkWidget* %0, i8* %1)
  %2 = load i32, i32* @in_main_loop, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @video_render_preview(i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare %struct._GtkWidget* @gtk_frame_new(i8*) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #3

declare %struct._GtkWidget* @gimp_preview_area_new() #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @video_toggle_update(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = load i8*, i8** %data.addr, align 8
  call void @gimp_toggle_button_update(%struct._GtkWidget* %0, i8* %1)
  %2 = load i32, i32* @in_main_loop, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @video_render_preview(i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @video_render_preview(i32 %raw) #0 {
entry:
  %raw.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %preview_row = alloca [30000 x i8], align 16
  store i32 %raw, i32* %raw.addr, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.VideoValues, %struct.VideoValues* @vvals, i32 0, i32 0), align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* getelementptr inbounds (%struct.VideoValues, %struct.VideoValues* @vvals, i32 0, i32 0), align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.51, %if.end
  %1 = load i32, i32* %y, align 4
  %cmp1 = icmp slt i32 %1, 100
  br i1 %cmp1, label %for.body, label %for.end.53

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %x, align 4
  %cmp3 = icmp slt i32 %2, 100
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %3 = load i32, i32* %raw.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %for.body.4
  %4 = load i32, i32* %x, align 4
  %mul = mul nsw i32 %4, 3
  %add = add nsw i32 %mul, 0
  %5 = load i32, i32* %y, align 4
  %mul6 = mul nsw i32 %5, 100
  %mul7 = mul nsw i32 %mul6, 3
  %add8 = add nsw i32 %add, %mul7
  %idxprom = sext i32 %add8 to i64
  %arrayidx = getelementptr inbounds [30000 x i8], [30000 x i8]* @preview_raw, i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %7 = load i32, i32* %y, align 4
  %mul9 = mul nsw i32 %7, 100
  %8 = load i32, i32* %x, align 4
  %add10 = add nsw i32 %mul9, %8
  %mul11 = mul nsw i32 %add10, 3
  %add12 = add nsw i32 %mul11, 0
  %idxprom13 = sext i32 %add12 to i64
  %arrayidx14 = getelementptr inbounds [30000 x i8], [30000 x i8]* %preview_row, i32 0, i64 %idxprom13
  store i8 %6, i8* %arrayidx14, align 1
  %9 = load i32, i32* %x, align 4
  %mul15 = mul nsw i32 %9, 3
  %add16 = add nsw i32 %mul15, 1
  %10 = load i32, i32* %y, align 4
  %mul17 = mul nsw i32 %10, 100
  %mul18 = mul nsw i32 %mul17, 3
  %add19 = add nsw i32 %add16, %mul18
  %idxprom20 = sext i32 %add19 to i64
  %arrayidx21 = getelementptr inbounds [30000 x i8], [30000 x i8]* @preview_raw, i32 0, i64 %idxprom20
  %11 = load i8, i8* %arrayidx21, align 1
  %12 = load i32, i32* %y, align 4
  %mul22 = mul nsw i32 %12, 100
  %13 = load i32, i32* %x, align 4
  %add23 = add nsw i32 %mul22, %13
  %mul24 = mul nsw i32 %add23, 3
  %add25 = add nsw i32 %mul24, 1
  %idxprom26 = sext i32 %add25 to i64
  %arrayidx27 = getelementptr inbounds [30000 x i8], [30000 x i8]* %preview_row, i32 0, i64 %idxprom26
  store i8 %11, i8* %arrayidx27, align 1
  %14 = load i32, i32* %x, align 4
  %mul28 = mul nsw i32 %14, 3
  %add29 = add nsw i32 %mul28, 2
  %15 = load i32, i32* %y, align 4
  %mul30 = mul nsw i32 %15, 100
  %mul31 = mul nsw i32 %mul30, 3
  %add32 = add nsw i32 %add29, %mul31
  %idxprom33 = sext i32 %add32 to i64
  %arrayidx34 = getelementptr inbounds [30000 x i8], [30000 x i8]* @preview_raw, i32 0, i64 %idxprom33
  %16 = load i8, i8* %arrayidx34, align 1
  %17 = load i32, i32* %y, align 4
  %mul35 = mul nsw i32 %17, 100
  %18 = load i32, i32* %x, align 4
  %add36 = add nsw i32 %mul35, %18
  %mul37 = mul nsw i32 %add36, 3
  %add38 = add nsw i32 %mul37, 2
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds [30000 x i8], [30000 x i8]* %preview_row, i32 0, i64 %idxprom39
  store i8 %16, i8* %arrayidx40, align 1
  br label %if.end.50

if.else:                                          ; preds = %for.body.4
  %19 = load i32, i32* %x, align 4
  %20 = load i32, i32* %y, align 4
  %21 = load i32, i32* %y, align 4
  %mul41 = mul nsw i32 %21, 100
  %mul42 = mul nsw i32 %mul41, 3
  %22 = load i32, i32* %x, align 4
  %mul43 = mul nsw i32 %22, 3
  %add44 = add nsw i32 %mul42, %mul43
  %idxprom45 = sext i32 %add44 to i64
  %arrayidx46 = getelementptr inbounds [30000 x i8], [30000 x i8]* @preview_raw, i32 0, i64 %idxprom45
  %arraydecay = getelementptr inbounds [30000 x i8], [30000 x i8]* %preview_row, i32 0, i32 0
  %23 = load i32, i32* %y, align 4
  %mul47 = mul nsw i32 %23, 100
  %24 = load i32, i32* %x, align 4
  %add48 = add nsw i32 %mul47, %24
  %mul49 = mul nsw i32 %add48, 3
  %idx.ext = sext i32 %mul49 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext
  call void @video_func(i32 %19, i32 %20, i8* %arrayidx46, i8* %add.ptr, i32 3, i8* null)
  br label %if.end.50

if.end.50:                                        ; preds = %if.else, %if.then.5
  br label %for.inc

for.inc:                                          ; preds = %if.end.50
  %25 = load i32, i32* %x, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.end
  %26 = load i32, i32* %y, align 4
  %inc52 = add nsw i32 %26, 1
  store i32 %inc52, i32* %y, align 4
  br label %for.cond

for.end.53:                                       ; preds = %for.cond
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call = call i64 @gimp_preview_area_get_type() #4
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call)
  %29 = bitcast %struct._GTypeInstance* %call54 to %struct._GimpPreviewArea*
  %arraydecay55 = getelementptr inbounds [30000 x i8], [30000 x i8]* %preview_row, i32 0, i32 0
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %29, i32 0, i32 0, i32 100, i32 100, i32 0, i8* %arraydecay55, i32 300)
  br label %return

return:                                           ; preds = %for.end.53, %if.then
  ret void
}

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare void @gimp_radio_button_update(%struct._GtkWidget*, i8*) #1

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @video_func(i32 %x, i32 %y, i8* %src, i8* %dest, i32 %bpp, i8* %data) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %src.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %b = alloca i32, align 4
  %sel_b = alloca i32, align 4
  %temp = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i8* %src, i8** %src.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.VideoValues, %struct.VideoValues* @vvals, i32 0, i32 2), align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.VideoValues, %struct.VideoValues* @vvals, i32 0, i32 0), align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [9 x i32], [9 x i32]* @pattern_width, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %x.addr, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.VideoValues, %struct.VideoValues* @vvals, i32 0, i32 0), align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [9 x i32], [9 x i32]* @pattern_height, i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %rem = srem i32 %3, %5
  %mul = mul nsw i32 %2, %rem
  %6 = load i32, i32* %y.addr, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.VideoValues, %struct.VideoValues* @vvals, i32 0, i32 0), align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds [9 x i32], [9 x i32]* @pattern_width, i32 0, i64 %idxprom3
  %8 = load i32, i32* %arrayidx4, align 4
  %rem5 = srem i32 %6, %8
  %add = add nsw i32 %mul, %rem5
  %idxprom6 = sext i32 %add to i64
  %9 = load i32, i32* getelementptr inbounds (%struct.VideoValues, %struct.VideoValues* @vvals, i32 0, i32 0), align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [9 x [108 x i32]], [9 x [108 x i32]]* @pattern, i32 0, i64 %idxprom7
  %arrayidx9 = getelementptr inbounds [108 x i32], [108 x i32]* %arrayidx8, i32 0, i64 %idxprom6
  %10 = load i32, i32* %arrayidx9, align 4
  store i32 %10, i32* %sel_b, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load i32, i32* getelementptr inbounds (%struct.VideoValues, %struct.VideoValues* @vvals, i32 0, i32 0), align 4
  %idxprom10 = sext i32 %11 to i64
  %arrayidx11 = getelementptr inbounds [9 x i32], [9 x i32]* @pattern_width, i32 0, i64 %idxprom10
  %12 = load i32, i32* %arrayidx11, align 4
  %13 = load i32, i32* %y.addr, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.VideoValues, %struct.VideoValues* @vvals, i32 0, i32 0), align 4
  %idxprom12 = sext i32 %14 to i64
  %arrayidx13 = getelementptr inbounds [9 x i32], [9 x i32]* @pattern_height, i32 0, i64 %idxprom12
  %15 = load i32, i32* %arrayidx13, align 4
  %rem14 = srem i32 %13, %15
  %mul15 = mul nsw i32 %12, %rem14
  %16 = load i32, i32* %x.addr, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.VideoValues, %struct.VideoValues* @vvals, i32 0, i32 0), align 4
  %idxprom16 = sext i32 %17 to i64
  %arrayidx17 = getelementptr inbounds [9 x i32], [9 x i32]* @pattern_width, i32 0, i64 %idxprom16
  %18 = load i32, i32* %arrayidx17, align 4
  %rem18 = srem i32 %16, %18
  %add19 = add nsw i32 %mul15, %rem18
  %idxprom20 = sext i32 %add19 to i64
  %19 = load i32, i32* getelementptr inbounds (%struct.VideoValues, %struct.VideoValues* @vvals, i32 0, i32 0), align 4
  %idxprom21 = sext i32 %19 to i64
  %arrayidx22 = getelementptr inbounds [9 x [108 x i32]], [9 x [108 x i32]]* @pattern, i32 0, i64 %idxprom21
  %arrayidx23 = getelementptr inbounds [108 x i32], [108 x i32]* %arrayidx22, i32 0, i64 %idxprom20
  %20 = load i32, i32* %arrayidx23, align 4
  store i32 %20, i32* %sel_b, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %21 = load i32, i32* %b, align 4
  %22 = load i32, i32* %bpp.addr, align 4
  %cmp = icmp slt i32 %21, %22
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %b, align 4
  %cmp24 = icmp slt i32 %23, 3
  br i1 %cmp24, label %if.then.25, label %if.else.51

if.then.25:                                       ; preds = %for.body
  %24 = load i32, i32* %sel_b, align 4
  %25 = load i32, i32* %b, align 4
  %cmp26 = icmp eq i32 %24, %25
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.25
  %26 = load i32, i32* %b, align 4
  %idxprom27 = sext i32 %26 to i64
  %27 = load i8*, i8** %src.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %27, i64 %idxprom27
  %28 = load i8, i8* %arrayidx28, align 1
  %conv = zext i8 %28 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then.25
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ 0, %cond.false ]
  %conv29 = trunc i32 %cond to i8
  %29 = load i32, i32* %b, align 4
  %idxprom30 = sext i32 %29 to i64
  %30 = load i8*, i8** %dest.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %30, i64 %idxprom30
  store i8 %conv29, i8* %arrayidx31, align 1
  %31 = load i32, i32* getelementptr inbounds (%struct.VideoValues, %struct.VideoValues* @vvals, i32 0, i32 1), align 4
  %tobool32 = icmp ne i32 %31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.50

if.then.33:                                       ; preds = %cond.end
  %32 = load i32, i32* %b, align 4
  %idxprom34 = sext i32 %32 to i64
  %33 = load i8*, i8** %dest.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %33, i64 %idxprom34
  %34 = load i8, i8* %arrayidx35, align 1
  %conv36 = zext i8 %34 to i32
  %35 = load i32, i32* %b, align 4
  %idxprom37 = sext i32 %35 to i64
  %36 = load i8*, i8** %src.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %36, i64 %idxprom37
  %37 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %37 to i32
  %add40 = add nsw i32 %conv36, %conv39
  store i32 %add40, i32* %temp, align 4
  %38 = load i32, i32* %temp, align 4
  %cmp41 = icmp slt i32 %38, 255
  br i1 %cmp41, label %cond.true.43, label %cond.false.44

cond.true.43:                                     ; preds = %if.then.33
  %39 = load i32, i32* %temp, align 4
  br label %cond.end.45

cond.false.44:                                    ; preds = %if.then.33
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.44, %cond.true.43
  %cond46 = phi i32 [ %39, %cond.true.43 ], [ 255, %cond.false.44 ]
  %conv47 = trunc i32 %cond46 to i8
  %40 = load i32, i32* %b, align 4
  %idxprom48 = sext i32 %40 to i64
  %41 = load i8*, i8** %dest.addr, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %41, i64 %idxprom48
  store i8 %conv47, i8* %arrayidx49, align 1
  br label %if.end.50

if.end.50:                                        ; preds = %cond.end.45, %cond.end
  br label %if.end.56

if.else.51:                                       ; preds = %for.body
  %42 = load i32, i32* %b, align 4
  %idxprom52 = sext i32 %42 to i64
  %43 = load i8*, i8** %src.addr, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %43, i64 %idxprom52
  %44 = load i8, i8* %arrayidx53, align 1
  %45 = load i32, i32* %b, align 4
  %idxprom54 = sext i32 %45 to i64
  %46 = load i8*, i8** %dest.addr, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %46, i64 %idxprom54
  store i8 %44, i8* %arrayidx55, align 1
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.51, %if.end.50
  br label %for.inc

for.inc:                                          ; preds = %if.end.56
  %47 = load i32, i32* %b, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @gimp_preview_area_draw(%struct._GimpPreviewArea*, i32, i32, i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_area_get_type() #3

declare %struct._GimpRgnIterator* @gimp_rgn_iterator_new(%struct._GimpDrawable*, i32) #1

declare void @gimp_rgn_iterator_src_dest(%struct._GimpRgnIterator*, void (i32, i32, i8*, i8*, i32, i8*)*, i8*) #1

declare void @gimp_rgn_iterator_free(%struct._GimpRgnIterator*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
